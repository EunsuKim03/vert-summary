# LLVM IR Feature Guide

이 문서는 `llvm/` 아래에 생성된 `SUMMARY.md`, suite별 `README.md`, `TOTAL.md`에서 사용하는 feature 이름이 무엇을 뜻하는지 설명한다. 분류는 엄밀한 LLVM formal taxonomy가 아니라, VERT benchmark의 LLVM IR을 빠르게 읽고 “이 벤치마크가 어떤 종류의 IR 기능을 쓰는지” 이해하기 위한 실용적 분류다.

각 feature는 `scripts/generate_llvm_feature_summaries.py`가 LLVM IR 텍스트에서 instruction, type, attribute, metadata 등을 정규식/휴리스틱으로 감지해서 붙인다. 따라서 feature가 있다는 것은 “해당 IR에 관련 신호가 등장했다”는 뜻이고, 프로그램 의미 전체를 완전히 증명했다는 뜻은 아니다.

## Integer arithmetic

정수 산술 연산을 뜻한다. C/C++의 `+`, `-`, `*`, `/`, `%` 같은 정수 연산이 LLVM IR에서는 보통 아래 instruction으로 나타난다.

감지 대상:

- `add`: 정수 덧셈
- `sub`: 정수 뺄셈
- `mul`: 정수 곱셈
- `sdiv`: signed integer division
- `udiv`: unsigned integer division
- `srem`: signed remainder
- `urem`: unsigned remainder

예시:

```llvm
%3 = add nsw i32 %1, %2
%4 = sdiv i32 %3, 10
%5 = srem i32 %4, 2
```

`nsw`나 `nuw`가 같이 붙으면 UB-related feature에도 잡힌다. 예를 들어 `add nsw i32`는 signed overflow가 발생하지 않는다고 컴파일러가 가정한다는 뜻이다.

## Bitwise/shift

비트 단위 연산과 shift 연산을 뜻한다. 비트마스크, XOR trick, power-of-two 검사, 수동 덧셈/곱셈 구현 같은 benchmark에서 자주 나타난다.

감지 대상:

- `and`: bitwise AND
- `or`: bitwise OR
- `xor`: bitwise XOR
- `shl`: left shift
- `lshr`: logical right shift
- `ashr`: arithmetic right shift

예시:

```llvm
%2 = and i32 %x, 1
%3 = xor i32 %x, %mask
%4 = shl i32 %carry, 1
```

`lshr`는 빈 비트를 0으로 채우는 unsigned-style right shift이고, `ashr`는 sign bit를 유지하는 signed-style right shift다.

## Floating-point arithmetic

부동소수점 산술 연산을 뜻한다. `float`, `double`, 수학 함수 주변 계산에서 나타난다.

감지 대상:

- `fadd`: floating-point addition
- `fsub`: floating-point subtraction
- `fmul`: floating-point multiplication
- `fdiv`: floating-point division
- `frem`: floating-point remainder

예시:

```llvm
%2 = fsub double 1.000000e+00, %p
%3 = fdiv double 1.000000e+00, %2
%4 = fmul double %3, 7.300000e+02
```

`sqrt`, `log`, `ceil` 같은 수학 함수 호출 자체는 `calls/intrinsics`로 분류되고, 그 결과값을 이용한 `fadd`/`fmul` 등이 floating-point arithmetic으로 분류된다.

## Comparisons

비교 연산을 뜻한다. 조건문, 루프 조건, min/max, null check 등에 쓰인다.

감지 대상:

- `icmp`: integer, pointer, boolean 비교
- `fcmp`: floating-point 비교

예시:

```llvm
%is_null = icmp eq %struct.Node* %node, null
%lt = icmp slt i32 %a, %b
%ok = fcmp olt double %x, 1.000000e+00
```

`icmp`는 정수뿐 아니라 pointer 비교에도 쓰인다. 예를 들어 C의 `p == NULL`은 보통 `icmp eq ptr, null` 형태가 된다.

## Control flow

함수 내부 제어 흐름을 구성하는 기본 instruction을 뜻한다.

감지 대상:

- `br`: branch. 조건부/무조건 분기
- `switch`: switch/case 분기
- `ret`: 함수 반환
- `phi`: SSA control-flow merge
- `select`: branch 없이 값을 고르는 conditional expression

예시:

```llvm
br i1 %cond, label %then, label %else

then:
  br label %merge

else:
  br label %merge

merge:
  %r = phi i32 [ %a, %then ], [ %b, %else ]
  ret i32 %r
```

최적화가 켜지면 작은 `if` 문은 branch 대신 `select`로 바뀔 수 있다.

```llvm
%r = select i1 %cond, i32 %a, i32 %b
```

## Loop

루프 구조가 있음을 뜻한다. LLVM IR에는 “loop instruction” 하나가 따로 있는 것이 아니라, back-edge branch나 loop metadata로 루프가 표현된다.

감지 방식:

- `llvm.loop` metadata가 있으면 loop로 분류
- 또는 숫자 label 기준으로 이전 basic block으로 되돌아가는 branch가 있으면 loop로 분류

예시:

```llvm
loop:
  %i.next = add nsw i32 %i, 1
  %cond = icmp slt i32 %i.next, %n
  br i1 %cond, label %loop, label %exit, !llvm.loop !6
```

주의: 이 감지는 휴리스틱이다. 최적화 후 루프가 완전히 unroll되거나 closed-form 계산으로 바뀌면 loop feature가 사라질 수 있다. 반대로 복잡한 control-flow가 loop처럼 보일 수도 있다.

## Recursion

함수가 자기 자신을 직접 호출하는 경우를 뜻한다. 직접 재귀만 감지한다.

예시:

```llvm
define dso_local i32 @fact(i32 %n) {
  %n1 = sub nsw i32 %n, 1
  %rec = call i32 @fact(i32 %n1)
  %r = mul nsw i32 %n, %rec
  ret i32 %r
}
```

`A -> B -> A` 같은 상호 재귀는 현재 feature 추출기에서 별도로 분석하지 않는다.

## Unreachable

`unreachable` instruction이 있음을 뜻한다. LLVM에서 `unreachable`은 “여기로 제어가 도달하면 안 된다”고 컴파일러가 가정하는 지점이다.

예시:

```llvm
call void @llvm.trap()
unreachable
```

`unreachable`은 UB-related feature에도 포함된다. C/C++에서 컴파일러가 undefined behavior라고 판단한 경로나, `abort`/`trap` 뒤, impossible branch 뒤에 나타날 수 있다.

## Memory/pointer

스택 할당, 메모리 load/store, 포인터 연산, pointer-typed parameter/return 등을 뜻한다. C/C++ 원본의 포인터, 배열, struct field 접근, local variable 등이 이 feature로 나타난다.

감지 대상 예시:

- `alloca`: stack slot 생성
- `load`: 메모리에서 값 읽기
- `store`: 메모리에 값 쓰기
- `getelementptr`: aggregate/array/pointer 주소 계산
- pointer type이 함수 인자나 반환 타입에 등장

예시:

```llvm
%slot = alloca i32, align 4
store i32 %x, i32* %slot, align 4
%v = load i32, i32* %slot, align 4
```

struct field 접근 예시:

```llvm
%height_ptr = getelementptr inbounds %struct.Node, %struct.Node* %node, i32 0, i32 3
%height = load i32, i32* %height_ptr, align 4
```

`getelementptr inbounds`는 UB-related에도 잡힌다. `inbounds`는 계산된 pointer가 같은 allocated object 안에 있어야 한다는 의미의 강한 가정이다.

## Casts/conversions

타입 변환 instruction을 뜻한다. 정수 폭 변환, float/int 변환, pointer/int 변환, bit-level reinterpretation 등이 포함된다.

감지 대상:

- 정수 폭 변환: `trunc`, `zext`, `sext`
- floating 변환: `fptrunc`, `fpext`
- float/int 변환: `fptoui`, `fptosi`, `uitofp`, `sitofp`
- pointer/int 변환: `ptrtoint`, `inttoptr`
- bit reinterpretation: `bitcast`
- address space 변환: `addrspacecast`

예시:

```llvm
%wide = sext i32 %x to i64
%narrow = trunc i64 %wide to i32
%i = fptosi double %d to i32
%p = bitcast i8* %raw to %struct.Node*
```

`ptrtoint`와 `inttoptr`는 포인터 provenance, aliasing, target-dependent behavior와 관련된 위험 신호가 될 수 있어서 UB-related에도 포함된다.

## Calls/intrinsics

함수 호출이나 LLVM intrinsic 호출을 뜻한다.

감지 대상:

- `call`: 일반 함수 호출
- `tail call`: tail-call 형태 호출
- `llvm.*` intrinsic 호출. 예: `llvm.ceil.f64`, `llvm.memcpy.*`, `llvm.assume`

예시:

```llvm
%r = call i32 @max(i32 %a, i32 %b)
%x = tail call double @sqrt(double %v)
%y = call double @llvm.ceil.f64(double %x)
```

외부 함수의 선언은 `external declarations`로도 잡힌다. 예를 들어 `declare double @sqrt(double)`는 external declaration이고, 실제 `call double @sqrt(...)`는 calls/intrinsics다.

## Aggregates

struct, array 같은 aggregate type이나 aggregate value 조작을 뜻한다.

감지 대상:

- LLVM struct type definition
- LLVM array type이 포함된 type/global
- `insertvalue`, `extractvalue`

예시:

```llvm
%struct.Node = type { i32, %struct.Node*, %struct.Node*, i32 }
@table = private constant [4 x i32] [i32 1, i32 2, i32 3, i32 4]
```

aggregate field의 주소 계산은 보통 `getelementptr`로 나타나므로 memory/pointer와 함께 등장하는 경우가 많다.

## Vector/SIMD

LLVM vector type이나 vector instruction을 뜻한다. 명시적 SIMD 코드뿐 아니라 최적화 단계에서 loop vectorization이 일어나면 `O2`에서만 나타날 수 있다.

감지 대상:

- `<N x T>` 형태 vector type
- `insertelement`
- `extractelement`
- `shufflevector`

예시:

```llvm
%v = load <4 x i32>, <4 x i32>* %ptr, align 16
%sum = add <4 x i32> %v1, %v2
%x = extractelement <4 x i32> %sum, i32 0
```

`TOTAL.md`에서 `O2`에만 `vector/SIMD`가 보이는 경우는 최적화가 vectorization을 만든 신호일 수 있다.

## C++/exception

C++ exception handling 또는 exception-capable control-flow 관련 IR을 뜻한다.

감지 대상:

- `invoke`: 예외를 던질 수 있는 호출. normal label과 unwind label을 가진다.
- `landingpad`: exception landing pad
- `resume`: exception propagation
- `personality`: exception personality function
- `catchswitch`, `catchpad`, `cleanuppad`

예시:

```llvm
invoke void @_Z3foov()
        to label %normal unwind label %lpad

lpad:
  %exn = landingpad { i8*, i32 }
          cleanup
  resume { i8*, i32 } %exn
```

단순 C++ benchmark라도 `#include <bits/stdc++.h>`나 iostream 초기화 때문에 C++ runtime 관련 global/init 함수가 생길 수 있다. 생성 스크립트는 source-level 함수 분석에서 internal startup function은 최대한 제외하지만, module-level type/global/declaration에는 C++ runtime 흔적이 일부 남을 수 있다.

## Atomics/volatile

원자적 메모리 연산이나 volatile 메모리 접근을 뜻한다.

감지 대상:

- `atomicrmw`
- `cmpxchg`
- `fence`
- `volatile load/store`

예시:

```llvm
%old = atomicrmw add i32* %ptr, i32 1 seq_cst
%ok = cmpxchg i32* %ptr, i32 %expected, i32 %new seq_cst seq_cst
fence seq_cst
%v = load volatile i32, i32* %mmio
```

현재 benchmark들에서는 흔하지 않지만, concurrent/low-level code를 분석할 때 중요한 feature다.

## UB-related

LLVM IR에서 undefined behavior 또는 compiler assumption과 관련된 신호를 뜻한다. 이 feature가 있다고 해서 원본 프로그램이 반드시 UB를 실행한다는 뜻은 아니다. “컴파일러가 특정 동작을 UB로 취급할 수 있는 가정 또는 위험한 construct가 IR에 있다”는 신호에 가깝다.

감지 대상:

- `nsw`: signed overflow가 없다고 가정
- `nuw`: unsigned overflow가 없다고 가정
- `inbounds getelementptr`: pointer가 같은 allocated object 안에 있다고 가정
- `undef`, `poison`: 정의되지 않은/poison value
- `nonnull`, `dereferenceable`, `noundef`: parameter/return/value attribute
- `unreachable`: 도달 불가능하다고 가정되는 지점
- `llvm.assume`, `llvm.trap`, `llvm.ubsantrap`
- `ptrtoint`, `inttoptr`: pointer/integer round-trip 위험 신호

예시:

```llvm
%3 = add nsw i32 %1, %2
%p = getelementptr inbounds %struct.Node, %struct.Node* %node, i32 0, i32 1
define dso_local i32 @f(i32 noundef %x)
unreachable
```

해석할 때 주의할 점:

- `noundef`는 LLVM 14 clang이 함수 인자에 흔히 붙인다. 그래서 많은 C/C++ 함수가 UB-related로 잡힐 수 있다.
- `nsw`/`nuw`는 최적화에 영향을 줄 수 있다. 예를 들어 signed overflow가 실제로 발생하면 LLVM 관점에서 UB가 될 수 있다.
- `inbounds` GEP는 C pointer arithmetic의 object boundary 가정과 연결된다.
- `unreachable`은 optimizer가 이후 코드를 과감히 지울 수 있게 하는 강한 신호다.

## Globals

LLVM module-level global variable이나 constant가 있음을 뜻한다.

예시:

```llvm
@lookup = private constant [4 x i32] [i32 1, i32 2, i32 3, i32 4]
@counter = global i32 0, align 4
```

C++에서는 iostream 초기화용 global이 생길 수 있다.

```llvm
@_ZStL8__ioinit = internal global %"class.std::ios_base::Init" zeroinitializer, align 1
```

이런 global은 benchmark source function의 알고리즘과 직접 무관할 수 있으므로, C++ 결과를 읽을 때는 evidence를 확인하는 편이 좋다.

## External declarations

현재 module 안에 정의는 없지만 호출하거나 참조할 수 있는 외부 함수/심볼 선언을 뜻한다.

예시:

```llvm
declare double @sqrt(double noundef)
declare i32 @max(i32 noundef, i32 noundef)
declare void @llvm.memcpy.p0i8.p0i8.i64(i8*, i8*, i64, i1)
```

C의 `sqrt`, `log`, `malloc`, `printf`, C++ runtime 함수, 선언만 있고 정의가 없는 helper 함수가 여기에 포함된다.

## Inline asm

LLVM IR 안에 inline assembly가 있음을 뜻한다.

예시:

```llvm
call void asm sideeffect "mfence", ""()
```

현재 benchmark들에서는 거의 기대하지 않는 feature지만, low-level C/C++ 코드에서는 중요한 분류다.

## Optimization Level Differences

각 benchmark는 `O0`, `O1`, `O2`별로 따로 분석된다. 최적화 옵션에 따라 feature가 달라질 수 있다.

대표적인 변화:

- `O0`는 local variable을 `alloca`/`load`/`store`로 많이 표현하므로 memory/pointer가 더 자주 보인다.
- `O1`/`O2`는 mem2reg, simplification으로 `alloca`가 사라지고 `phi`/`select`가 늘 수 있다.
- `O2`는 loop vectorization, inlining, dead code elimination 때문에 vector/SIMD가 새로 생기거나 loop/call이 사라질 수 있다.
- tail call optimization 때문에 `call`이 `tail call`로 바뀔 수 있다.
- UB-related attribute나 `nsw`/`nuw`/`inbounds`는 최적화가 강해질수록 더 의미 있게 작용할 수 있다.

예시: `BIRTHDAY_PARADOX`는 `O0`에서 argument를 stack slot에 저장했다가 다시 읽기 때문에 memory/pointer가 보이지만, `O1/O2`에서는 그 stack traffic이 사라진다.

```llvm
; O0 style
%2 = alloca double, align 8
store double %0, double* %2, align 8
%3 = load double, double* %2, align 8

; O2 style
%2 = fsub double 1.000000e+00, %0
```

## Status Fields

각 `SUMMARY.md`의 optimization section에는 status가 있다.

- `ok`: LLVM IR emit에 성공했고 feature를 추출했다.
- `failed: clang emit error`: clang/clang++이 해당 processed source를 LLVM IR로 emit하지 못했다. compiler messages가 함께 기록된다.
- `unsupported: missing Go/TinyGo LLVM emitter`: Go source는 복사했지만 현재 환경에 Go LLVM emitter가 없어 `.ll`을 생성하지 않았다.

suite별 `README.md`와 `TOTAL.md`의 status count는 이 status를 optimization level별로 집계한 것이다.

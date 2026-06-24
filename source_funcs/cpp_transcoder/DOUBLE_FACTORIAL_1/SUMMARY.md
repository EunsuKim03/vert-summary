# cpp_transcoder/DOUBLE_FACTORIAL_1

- Source: `DOUBLE_FACTORIAL_1_processed.cpp`
- Source note: processed source

## O0

- Status: ok
- Features:
  - integer arithmetic
  - comparisons
  - control flow
  - loop
  - unreachable
  - memory/pointer
  - calls/intrinsics
  - aggregates
  - UB-related
  - globals
  - external declarations
- Compiler messages:
  - `benchmark/cpp_transcoder/DOUBLE_FACTORIAL_1/DOUBLE_FACTORIAL_1_processed.cpp:18:1: warning: non-void function does not return a value in all control paths [-Wreturn-type]`
  - `}`
  - `^`
  - `1 warning generated.`
- Evidence:
  - integer arithmetic: `%20 = mul nsw i32 %19, %18`
  - comparisons: `%8 = icmp sge i32 %7, 0`
  - control flow: `br label %6`
  - loop: `llvm.loop metadata`
  - unreachable: `unreachable`
  - memory/pointer: `%2 = alloca i32, align 4`
  - calls/intrinsics: `call void @llvm.trap()`
  - aggregates: `%"class.std::ios_base::Init" = type { i8 }`
  - UB-related: `define dso_local noundef i32 @_Z6f_goldj(i32 noundef %0) #4 {`
  - globals: `@_ZStL8__ioinit = internal global %"class.std::ios_base::Init" zeroinitializer, align 1`
  - external declarations: `declare void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1)) unnamed_addr #1`

## O1

- Status: ok
- Features:
  - integer arithmetic
  - comparisons
  - control flow
  - loop
  - calls/intrinsics
  - aggregates
  - UB-related
  - globals
  - external declarations
- Compiler messages:
  - `benchmark/cpp_transcoder/DOUBLE_FACTORIAL_1/DOUBLE_FACTORIAL_1_processed.cpp:18:1: warning: non-void function does not return a value in all control paths [-Wreturn-type]`
  - `}`
  - `^`
  - `1 warning generated.`
- Evidence:
  - integer arithmetic: `%6 = mul nsw i32 %4, %5`
  - comparisons: `%2 = icmp sgt i32 %0, 1`
  - control flow: `br i1 %2, label %3, label %9`
  - loop: `llvm.loop metadata`
  - calls/intrinsics: `call void @llvm.assume(i1 %12)`
  - aggregates: `%"class.std::ios_base::Init" = type { i8 }`
  - UB-related: `define dso_local noundef i32 @_Z6f_goldj(i32 noundef %0) local_unnamed_addr #3 {`
  - globals: `@_ZStL8__ioinit = internal global %"class.std::ios_base::Init" zeroinitializer, align 1`
  - external declarations: `declare void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1)) unnamed_addr #0`

## O2

- Status: ok
- Features:
  - integer arithmetic
  - bitwise/shift
  - comparisons
  - control flow
  - loop
  - calls/intrinsics
  - aggregates
  - vector/SIMD
  - UB-related
  - globals
  - external declarations
- Compiler messages:
  - `benchmark/cpp_transcoder/DOUBLE_FACTORIAL_1/DOUBLE_FACTORIAL_1_processed.cpp:18:1: warning: non-void function does not return a value in all control paths [-Wreturn-type]`
  - `}`
  - `^`
  - `1 warning generated.`
- Evidence:
  - integer arithmetic: `%4 = add i32 %0, 1`
  - bitwise/shift: `%7 = lshr i32 %6, 1`
  - comparisons: `%2 = icmp sgt i32 %0, 1`
  - control flow: `br i1 %2, label %3, label %80`
  - loop: `llvm.loop metadata`
  - calls/intrinsics: `%5 = call i32 @llvm.umin.i32(i32 %0, i32 3)`
  - aggregates: `%"class.std::ios_base::Init" = type { i8 }`
  - vector/SIMD: `%14 = insertelement <4 x i32> poison, i32 %0, i64 0`
  - UB-related: `define dso_local noundef i32 @_Z6f_goldj(i32 noundef %0) local_unnamed_addr #3 {`
  - globals: `@_ZStL8__ioinit = internal global %"class.std::ios_base::Init" zeroinitializer, align 1`
  - external declarations: `declare void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1)) unnamed_addr #0`

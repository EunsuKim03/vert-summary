# cpp_transcoder/C_PROGRAM_FACTORIAL_NUMBER

- Source: `C_PROGRAM_FACTORIAL_NUMBER_processed.cpp`
- Source note: processed source

## O0

- Status: ok
- Features: integer arithmetic, comparisons, control flow, recursion, memory/pointer, calls/intrinsics, aggregates, UB-related, globals, external declarations
- Evidence:
  - integer arithmetic: `%10 = sub i32 %9, 1`
  - comparisons: `%5 = icmp eq i32 %4, 0`
  - control flow: `br i1 %5, label %6, label %7`
  - recursion: `_Z6f_goldj calls itself`
  - memory/pointer: `%2 = alloca i32, align 4`
  - calls/intrinsics: `%11 = call noundef i32 @_Z6f_goldj(i32 noundef %10)`
  - aggregates: `%"class.std::ios_base::Init" = type { i8 }`
  - UB-related: `define dso_local noundef i32 @_Z6f_goldj(i32 noundef %0) #4 {`
  - globals: `@_ZStL8__ioinit = internal global %"class.std::ios_base::Init" zeroinitializer, align 1`
  - external declarations: `declare void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1)) unnamed_addr #1`

## O1

- Status: ok
- Features: integer arithmetic, comparisons, control flow, recursion, calls/intrinsics, aggregates, UB-related, globals, external declarations
- Evidence:
  - integer arithmetic: `%4 = add i32 %0, -1`
  - comparisons: `%2 = icmp eq i32 %0, 0`
  - control flow: `br i1 %2, label %7, label %3`
  - recursion: `_Z6f_goldj calls itself`
  - calls/intrinsics: `%5 = call noundef i32 @_Z6f_goldj(i32 noundef %4)`
  - aggregates: `%"class.std::ios_base::Init" = type { i8 }`
  - UB-related: `define dso_local noundef i32 @_Z6f_goldj(i32 noundef %0) local_unnamed_addr #3 {`
  - globals: `@_ZStL8__ioinit = internal global %"class.std::ios_base::Init" zeroinitializer, align 1`
  - external declarations: `declare void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1)) unnamed_addr #0`

## O2

- Status: ok
- Features: integer arithmetic, bitwise/shift, comparisons, control flow, loop, calls/intrinsics, aggregates, vector/SIMD, UB-related, globals, external declarations
- Evidence:
  - integer arithmetic: `%10 = add <4 x i32> %9, <i32 0, i32 -1, i32 -2, i32 -3>`
  - bitwise/shift: `%6 = and i32 %0, -8`
  - comparisons: `%2 = icmp eq i32 %0, 0`
  - control flow: `br i1 %2, label %74, label %3`
  - loop: `llvm.loop metadata`
  - calls/intrinsics: `%63 = call i32 @llvm.vector.reduce.mul.v4i32(<4 x i32> %62)`
  - aggregates: `%"class.std::ios_base::Init" = type { i8 }`
  - vector/SIMD: `%8 = insertelement <4 x i32> poison, i32 %0, i64 0`
  - UB-related: `define dso_local noundef i32 @_Z6f_goldj(i32 noundef %0) local_unnamed_addr #3 {`
  - globals: `@_ZStL8__ioinit = internal global %"class.std::ios_base::Init" zeroinitializer, align 1`
  - external declarations: `declare void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1)) unnamed_addr #0`

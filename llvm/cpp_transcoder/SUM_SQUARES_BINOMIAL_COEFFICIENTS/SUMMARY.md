# cpp_transcoder/SUM_SQUARES_BINOMIAL_COEFFICIENTS

- Source: `SUM_SQUARES_BINOMIAL_COEFFICIENTS_processed.cpp`
- Source note: processed source

## O0

- Status: ok
- Features: integer arithmetic, comparisons, control flow, loop, memory/pointer, casts/conversions, calls/intrinsics, aggregates, UB-related, globals, external declarations
- Evidence:
  - integer arithmetic: `%11 = add nsw i32 %10, 1`
  - comparisons: `%22 = icmp sle i32 %20, %21`
  - control flow: `br label %19`
  - loop: `llvm.loop metadata`
  - memory/pointer: `%2 = alloca i32, align 4`
  - casts/conversions: `%12 = zext i32 %11 to i64`
  - calls/intrinsics: `%16 = call i8* @llvm.stacksave()`
  - aggregates: `%"class.std::ios_base::Init" = type { i8 }`
  - UB-related: `define dso_local noundef i32 @_Z6f_goldi(i32 noundef %0) #4 {`
  - globals: `@_ZStL8__ioinit = internal global %"class.std::ios_base::Init" zeroinitializer, align 1`
  - external declarations: `declare void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1)) unnamed_addr #1`

## O1

- Status: ok
- Features: integer arithmetic, comparisons, control flow, loop, memory/pointer, casts/conversions, aggregates, UB-related, globals, external declarations
- Evidence:
  - integer arithmetic: `%2 = add i32 %0, 1`
  - comparisons: `%6 = icmp slt i32 %0, 0`
  - control flow: `br i1 %6, label %17, label %7`
  - loop: `llvm.loop metadata`
  - memory/pointer: `%5 = alloca i32, i64 %4, align 16`
  - casts/conversions: `%3 = zext i32 %2 to i64`
  - aggregates: `%"class.std::ios_base::Init" = type { i8 }`
  - UB-related: `define dso_local noundef i32 @_Z6f_goldi(i32 noundef %0) local_unnamed_addr #3 {`
  - globals: `@_ZStL8__ioinit = internal global %"class.std::ios_base::Init" zeroinitializer, align 1`
  - external declarations: `declare void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1)) unnamed_addr #0`

## O2

- Status: ok
- Features: integer arithmetic, bitwise/shift, comparisons, control flow, loop, memory/pointer, casts/conversions, calls/intrinsics, aggregates, vector/SIMD, UB-related, globals, external declarations
- Evidence:
  - integer arithmetic: `%2 = add i32 %0, 1`
  - bitwise/shift: `%15 = and i64 %9, 1`
  - comparisons: `%6 = icmp slt i32 %0, 0`
  - control flow: `br i1 %6, label %141, label %7`
  - loop: `llvm.loop metadata`
  - memory/pointer: `%5 = alloca i32, i64 %4, align 16`
  - casts/conversions: `%3 = zext i32 %2 to i64`
  - calls/intrinsics: `%85 = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %84)`
  - aggregates: `%"class.std::ios_base::Init" = type { i8 }`
  - vector/SIMD: `%36 = phi <4 x i32> [ zeroinitializer, %32 ], [ %58, %34 ]`
  - UB-related: `define dso_local noundef i32 @_Z6f_goldi(i32 noundef %0) local_unnamed_addr #3 {`
  - globals: `@_ZStL8__ioinit = internal global %"class.std::ios_base::Init" zeroinitializer, align 1`
  - external declarations: `declare void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1)) unnamed_addr #0`

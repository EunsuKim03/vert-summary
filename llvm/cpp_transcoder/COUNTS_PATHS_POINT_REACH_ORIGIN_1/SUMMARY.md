# cpp_transcoder/COUNTS_PATHS_POINT_REACH_ORIGIN_1

- Source: `COUNTS_PATHS_POINT_REACH_ORIGIN_1_processed.cpp`
- Source note: processed source

## O0

- Status: ok
- Features: integer arithmetic, comparisons, control flow, loop, memory/pointer, casts/conversions, calls/intrinsics, aggregates, UB-related, globals, external declarations
- Evidence:
  - integer arithmetic: `%13 = add nsw i32 %12, 1`
  - comparisons: `%24 = icmp sle i32 %22, %23`
  - control flow: `br label %21`
  - loop: `llvm.loop metadata`
  - memory/pointer: `%3 = alloca i32, align 4`
  - casts/conversions: `%14 = zext i32 %13 to i64`
  - calls/intrinsics: `%18 = call i8* @llvm.stacksave()`
  - aggregates: `%"class.std::ios_base::Init" = type { i8 }`
  - UB-related: `define dso_local noundef i32 @_Z6f_goldii(i32 noundef %0, i32 noundef %1) #4 {`
  - globals: `@_ZStL8__ioinit = internal global %"class.std::ios_base::Init" zeroinitializer, align 1`
  - external declarations: `declare void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1)) unnamed_addr #1`

## O1

- Status: ok
- Features: integer arithmetic, comparisons, control flow, loop, memory/pointer, casts/conversions, aggregates, UB-related, globals, external declarations
- Evidence:
  - integer arithmetic: `%3 = add nsw i32 %0, 1`
  - comparisons: `%9 = icmp slt i32 %0, 0`
  - control flow: `br i1 %9, label %13, label %10`
  - loop: `llvm.loop metadata`
  - memory/pointer: `%8 = alloca i32, i64 %7, align 16`
  - casts/conversions: `%4 = zext i32 %3 to i64`
  - aggregates: `%"class.std::ios_base::Init" = type { i8 }`
  - UB-related: `define dso_local noundef i32 @_Z6f_goldii(i32 noundef %0, i32 noundef %1) local_unnamed_addr #3 {`
  - globals: `@_ZStL8__ioinit = internal global %"class.std::ios_base::Init" zeroinitializer, align 1`
  - external declarations: `declare void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1)) unnamed_addr #0`

## O2

- Status: ok
- Features: integer arithmetic, bitwise/shift, comparisons, control flow, loop, memory/pointer, casts/conversions, aggregates, vector/SIMD, UB-related, globals, external declarations
- Evidence:
  - integer arithmetic: `%3 = add i32 %0, 1`
  - bitwise/shift: `%12 = and i64 %4, 3`
  - comparisons: `%9 = icmp slt i32 %0, 0`
  - control flow: `br i1 %9, label %27, label %10`
  - loop: `llvm.loop metadata`
  - memory/pointer: `%8 = alloca i32, i64 %7, align 16`
  - casts/conversions: `%4 = zext i32 %3 to i64`
  - aggregates: `%"class.std::ios_base::Init" = type { i8 }`
  - vector/SIMD: `%44 = bitcast i32* %43 to <4 x i32>*`
  - UB-related: `define dso_local noundef i32 @_Z6f_goldii(i32 noundef %0, i32 noundef %1) local_unnamed_addr #3 {`
  - globals: `@_ZStL8__ioinit = internal global %"class.std::ios_base::Init" zeroinitializer, align 1`
  - external declarations: `declare void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1)) unnamed_addr #0`

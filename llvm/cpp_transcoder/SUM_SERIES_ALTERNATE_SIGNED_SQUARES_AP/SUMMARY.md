# cpp_transcoder/SUM_SERIES_ALTERNATE_SIGNED_SQUARES_AP

- Source: `SUM_SERIES_ALTERNATE_SIGNED_SQUARES_AP_processed.cpp`
- Source note: processed source

## O0

- Status: ok
- Features: integer arithmetic, comparisons, control flow, loop, memory/pointer, casts/conversions, aggregates, UB-related, globals, external declarations
- Evidence:
  - integer arithmetic: `%10 = mul nsw i32 2, %9`
  - comparisons: `%11 = icmp slt i32 %8, %10`
  - control flow: `br label %7`
  - loop: `llvm.loop metadata`
  - memory/pointer: `define dso_local noundef i32 @_Z6f_goldiPi(i32 noundef %0, i32* noundef %1) #4 {`
  - casts/conversions: `%19 = sext i32 %18 to i64`
  - aggregates: `%"class.std::ios_base::Init" = type { i8 }`
  - UB-related: `define dso_local noundef i32 @_Z6f_goldiPi(i32 noundef %0, i32* noundef %1) #4 {`
  - globals: `@_ZStL8__ioinit = internal global %"class.std::ios_base::Init" zeroinitializer, align 1`
  - external declarations: `declare void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1)) unnamed_addr #1`

## O1

- Status: ok
- Features: integer arithmetic, bitwise/shift, comparisons, control flow, loop, memory/pointer, casts/conversions, calls/intrinsics, aggregates, UB-related, globals, external declarations
- Evidence:
  - integer arithmetic: `%17 = mul nsw i32 %16, %16`
  - bitwise/shift: `%5 = shl i32 %0, 1`
  - comparisons: `%3 = icmp sgt i32 %0, 0`
  - control flow: `br i1 %3, label %4, label %8`
  - loop: `llvm.loop metadata`
  - memory/pointer: `define dso_local noundef i32 @_Z6f_goldiPi(i32 noundef %0, i32* nocapture noundef readonly %1) local_unnamed_addr #3 {`
  - casts/conversions: `%7 = zext i32 %6 to i64`
  - calls/intrinsics: `%6 = call i32 @llvm.smax.i32(i32 %5, i32 1)`
  - aggregates: `%"class.std::ios_base::Init" = type { i8 }`
  - UB-related: `define dso_local noundef i32 @_Z6f_goldiPi(i32 noundef %0, i32* nocapture noundef readonly %1) local_unnamed_addr #3 {`
  - globals: `@_ZStL8__ioinit = internal global %"class.std::ios_base::Init" zeroinitializer, align 1`
  - external declarations: `declare void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1)) unnamed_addr #0`

## O2

- Status: ok
- Features: integer arithmetic, bitwise/shift, comparisons, control flow, loop, memory/pointer, casts/conversions, calls/intrinsics, aggregates, vector/SIMD, UB-related, globals, external declarations
- Evidence:
  - integer arithmetic: `%26 = mul nsw <4 x i32> %22, %22`
  - bitwise/shift: `%5 = shl nuw i32 %0, 1`
  - comparisons: `%3 = icmp sgt i32 %0, 0`
  - control flow: `br i1 %3, label %4, label %44`
  - loop: `llvm.loop metadata`
  - memory/pointer: `define dso_local noundef i32 @_Z6f_goldiPi(i32 noundef %0, i32* nocapture noundef readonly %1) local_unnamed_addr #3 {`
  - casts/conversions: `%7 = zext i32 %6 to i64`
  - calls/intrinsics: `%6 = call i32 @llvm.smax.i32(i32 %5, i32 1)`
  - aggregates: `%"class.std::ios_base::Init" = type { i8 }`
  - vector/SIMD: `%13 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %9 ], [ %35, %11 ]`
  - UB-related: `define dso_local noundef i32 @_Z6f_goldiPi(i32 noundef %0, i32* nocapture noundef readonly %1) local_unnamed_addr #3 {`
  - globals: `@_ZStL8__ioinit = internal global %"class.std::ios_base::Init" zeroinitializer, align 1`
  - external declarations: `declare void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1)) unnamed_addr #0`

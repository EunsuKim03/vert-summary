# cpp_transcoder/SUM_MANHATTAN_DISTANCES_PAIRS_POINTS

- Source: `SUM_MANHATTAN_DISTANCES_PAIRS_POINTS_processed.cpp`
- Source note: processed source

## O0

- Status: ok
- Features: integer arithmetic, comparisons, control flow, loop, memory/pointer, casts/conversions, calls/intrinsics, aggregates, UB-related, globals, external declarations
- Evidence:
  - integer arithmetic: `%16 = add nsw i32 %15, 1`
  - comparisons: `%13 = icmp slt i32 %11, %12`
  - control flow: `br label %10`
  - loop: `llvm.loop metadata`
  - memory/pointer: `define dso_local noundef i32 @_Z6f_goldPiS_i(i32* noundef %0, i32* noundef %1, i32 noundef %2) #4 {`
  - casts/conversions: `%24 = sext i32 %23 to i64`
  - calls/intrinsics: `%33 = call i32 @abs(i32 noundef %32) #6`
  - aggregates: `%"class.std::ios_base::Init" = type { i8 }`
  - UB-related: `define dso_local noundef i32 @_Z6f_goldPiS_i(i32* noundef %0, i32* noundef %1, i32 noundef %2) #4 {`
  - globals: `@_ZStL8__ioinit = internal global %"class.std::ios_base::Init" zeroinitializer, align 1`
  - external declarations: `declare void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1)) unnamed_addr #1`

## O1

- Status: ok
- Features: integer arithmetic, comparisons, control flow, loop, memory/pointer, casts/conversions, calls/intrinsics, aggregates, UB-related, globals, external declarations
- Evidence:
  - integer arithmetic: `%11 = add nuw nsw i64 %17, 1`
  - comparisons: `%4 = icmp sgt i32 %2, 0`
  - control flow: `br i1 %4, label %5, label %13`
  - loop: `llvm.loop metadata`
  - memory/pointer: `define dso_local noundef i32 @_Z6f_goldPiS_i(i32* nocapture noundef readonly %0, i32* nocapture noundef readonly %1, i32 noundef %2) local_unnamed_addr #3 {`
  - casts/conversions: `%6 = sext i32 %2 to i64`
  - calls/intrinsics: `%32 = call i32 @llvm.abs.i32(i32 %31, i1 true)`
  - aggregates: `%"class.std::ios_base::Init" = type { i8 }`
  - UB-related: `define dso_local noundef i32 @_Z6f_goldPiS_i(i32* nocapture noundef readonly %0, i32* nocapture noundef readonly %1, i32 noundef %2) local_unnamed_addr #3 {`
  - globals: `@_ZStL8__ioinit = internal global %"class.std::ios_base::Init" zeroinitializer, align 1`
  - external declarations: `declare void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1)) unnamed_addr #0`

## O2

- Status: ok
- Features: integer arithmetic, bitwise/shift, comparisons, control flow, loop, memory/pointer, casts/conversions, calls/intrinsics, aggregates, vector/SIMD, UB-related, globals, external declarations
- Evidence:
  - integer arithmetic: `%10 = add nuw nsw i64 %16, 1`
  - bitwise/shift: `%18 = xor i64 %15, -1`
  - comparisons: `%4 = icmp sgt i32 %2, 0`
  - control flow: `br i1 %4, label %5, label %12`
  - loop: `llvm.loop metadata`
  - memory/pointer: `define dso_local noundef i32 @_Z6f_goldPiS_i(i32* nocapture noundef readonly %0, i32* nocapture noundef readonly %1, i32 noundef %2) local_unnamed_addr #3 {`
  - casts/conversions: `%6 = zext i32 %2 to i64`
  - calls/intrinsics: `%53 = call <4 x i32> @llvm.abs.v4i32(<4 x i32> %51, i1 true)`
  - aggregates: `%"class.std::ios_base::Init" = type { i8 }`
  - vector/SIMD: `%31 = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %17, i64 0`
  - UB-related: `define dso_local noundef i32 @_Z6f_goldPiS_i(i32* nocapture noundef readonly %0, i32* nocapture noundef readonly %1, i32 noundef %2) local_unnamed_addr #3 {`
  - globals: `@_ZStL8__ioinit = internal global %"class.std::ios_base::Init" zeroinitializer, align 1`
  - external declarations: `declare void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1)) unnamed_addr #0`

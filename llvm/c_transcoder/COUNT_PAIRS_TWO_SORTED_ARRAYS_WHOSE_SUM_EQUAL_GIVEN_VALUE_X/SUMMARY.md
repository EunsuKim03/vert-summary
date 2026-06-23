# c_transcoder/COUNT_PAIRS_TWO_SORTED_ARRAYS_WHOSE_SUM_EQUAL_GIVEN_VALUE_X

- Source: `COUNT_PAIRS_TWO_SORTED_ARRAYS_WHOSE_SUM_EQUAL_GIVEN_VALUE_X_processed.c`
- Source note: processed source

## O0

- Status: ok
- Features: integer arithmetic, comparisons, control flow, loop, memory/pointer, casts/conversions, UB-related
- Evidence:
  - integer arithmetic: `%34 = add nsw i32 %28, %33`
  - comparisons: `%17 = icmp slt i32 %15, %16`
  - control flow: `br label %14`
  - loop: `llvm.loop metadata`
  - memory/pointer: `define dso_local i32 @f_gold(i32* noundef %0, i32* noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) #0 {`
  - casts/conversions: `%26 = sext i32 %25 to i64`
  - UB-related: `define dso_local i32 @f_gold(i32* noundef %0, i32* noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) #0 {`

## O1

- Status: ok
- Features: integer arithmetic, comparisons, control flow, loop, memory/pointer, casts/conversions, UB-related
- Evidence:
  - integer arithmetic: `%21 = add nuw nsw i64 %12, 1`
  - comparisons: `%6 = icmp sgt i32 %2, 0`
  - control flow: `br i1 %6, label %7, label %17`
  - loop: `llvm.loop metadata`
  - memory/pointer: `define dso_local i32 @f_gold(i32* nocapture noundef readonly %0, i32* nocapture noundef readonly %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #0 {`
  - casts/conversions: `%9 = zext i32 %2 to i64`
  - UB-related: `define dso_local i32 @f_gold(i32* nocapture noundef readonly %0, i32* nocapture noundef readonly %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #0 {`

## O2

- Status: ok
- Features: integer arithmetic, bitwise/shift, comparisons, control flow, loop, memory/pointer, casts/conversions, calls/intrinsics, vector/SIMD, UB-related, external declarations
- Evidence:
  - integer arithmetic: `%12 = add nsw i64 %11, -8`
  - bitwise/shift: `%11 = and i64 %10, 4294967288`
  - comparisons: `%6 = icmp sgt i32 %2, 0`
  - control flow: `br i1 %6, label %7, label %104`
  - loop: `llvm.loop metadata`
  - memory/pointer: `define dso_local i32 @f_gold(i32* nocapture noundef readonly %0, i32* nocapture noundef readonly %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #0 {`
  - casts/conversions: `%9 = zext i32 %2 to i64`
  - calls/intrinsics: `%100 = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %99)`
  - vector/SIMD: `%17 = insertelement <4 x i32> poison, i32 %4, i64 0`
  - UB-related: `define dso_local i32 @f_gold(i32* nocapture noundef readonly %0, i32* nocapture noundef readonly %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #0 {`
  - external declarations: `declare i32 @llvm.vector.reduce.add.v4i32(<4 x i32>) #1`

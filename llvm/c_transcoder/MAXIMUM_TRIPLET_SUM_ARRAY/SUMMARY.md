# c_transcoder/MAXIMUM_TRIPLET_SUM_ARRAY

- Source: `MAXIMUM_TRIPLET_SUM_ARRAY_processed.c`
- Source note: processed source

## O0

- Status: ok
- Features: integer arithmetic, comparisons, control flow, loop, memory/pointer, casts/conversions, UB-related
- Evidence:
  - integer arithmetic: `%15 = add nsw i32 %14, 1`
  - comparisons: `%12 = icmp slt i32 %10, %11`
  - control flow: `br label %9`
  - loop: `llvm.loop metadata`
  - memory/pointer: `define dso_local i32 @f_gold(i32* noundef %0, i32 noundef %1) #0 {`
  - casts/conversions: `%31 = sext i32 %30 to i64`
  - UB-related: `define dso_local i32 @f_gold(i32* noundef %0, i32 noundef %1) #0 {`

## O1

- Status: ok
- Features: integer arithmetic, comparisons, control flow, loop, memory/pointer, casts/conversions, UB-related
- Evidence:
  - integer arithmetic: `%10 = add nuw nsw i64 %18, 1`
  - comparisons: `%3 = icmp sgt i32 %1, 0`
  - control flow: `br i1 %3, label %4, label %13`
  - loop: `llvm.loop metadata`
  - memory/pointer: `define dso_local i32 @f_gold(i32* nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #0 {`
  - casts/conversions: `%5 = sext i32 %1 to i64`
  - UB-related: `define dso_local i32 @f_gold(i32* nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #0 {`

## O2

- Status: ok
- Features: integer arithmetic, bitwise/shift, comparisons, control flow, loop, memory/pointer, casts/conversions, calls/intrinsics, vector/SIMD, UB-related, external declarations
- Evidence:
  - integer arithmetic: `%7 = add i32 %1, -3`
  - bitwise/shift: `%40 = and i64 %39, 8589934584`
  - comparisons: `%3 = icmp sgt i32 %1, 0`
  - control flow: `br i1 %3, label %4, label %13`
  - loop: `llvm.loop metadata`
  - memory/pointer: `define dso_local i32 @f_gold(i32* nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #0 {`
  - casts/conversions: `%5 = zext i32 %1 to i64`
  - calls/intrinsics: `%131 = call i32 @llvm.vector.reduce.smax.v4i32(<4 x i32> %130)`
  - vector/SIMD: `%60 = insertelement <4 x i32> poison, i32 %35, i64 0`
  - UB-related: `define dso_local i32 @f_gold(i32* nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #0 {`
  - external declarations: `declare i32 @llvm.vector.reduce.smax.v4i32(<4 x i32>) #1`

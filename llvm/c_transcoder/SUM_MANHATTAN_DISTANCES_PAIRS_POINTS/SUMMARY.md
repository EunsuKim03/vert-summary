# c_transcoder/SUM_MANHATTAN_DISTANCES_PAIRS_POINTS

- Source: `SUM_MANHATTAN_DISTANCES_PAIRS_POINTS_processed.c`
- Source note: processed source

## O0

- Status: ok
- Features: integer arithmetic, comparisons, control flow, loop, memory/pointer, casts/conversions, calls/intrinsics, UB-related, external declarations
- Evidence:
  - integer arithmetic: `%16 = add nsw i32 %15, 1`
  - comparisons: `%13 = icmp slt i32 %11, %12`
  - control flow: `br label %10`
  - loop: `llvm.loop metadata`
  - memory/pointer: `define dso_local i32 @f_gold(i32* noundef %0, i32* noundef %1, i32 noundef %2) #0 {`
  - casts/conversions: `%24 = sext i32 %23 to i64`
  - calls/intrinsics: `%33 = call i32 @abs(i32 noundef %32) #2`
  - UB-related: `define dso_local i32 @f_gold(i32* noundef %0, i32* noundef %1, i32 noundef %2) #0 {`
  - external declarations: `declare i32 @abs(i32 noundef) #1`

## O1

- Status: ok
- Features: integer arithmetic, comparisons, control flow, loop, memory/pointer, casts/conversions, calls/intrinsics, UB-related, external declarations
- Evidence:
  - integer arithmetic: `%11 = add nuw nsw i64 %17, 1`
  - comparisons: `%4 = icmp sgt i32 %2, 0`
  - control flow: `br i1 %4, label %5, label %13`
  - loop: `llvm.loop metadata`
  - memory/pointer: `define dso_local i32 @f_gold(i32* nocapture noundef readonly %0, i32* nocapture noundef readonly %1, i32 noundef %2) local_unnamed_addr #0 {`
  - casts/conversions: `%6 = sext i32 %2 to i64`
  - calls/intrinsics: `%32 = call i32 @llvm.abs.i32(i32 %31, i1 true)`
  - UB-related: `define dso_local i32 @f_gold(i32* nocapture noundef readonly %0, i32* nocapture noundef readonly %1, i32 noundef %2) local_unnamed_addr #0 {`
  - external declarations: `declare i32 @llvm.abs.i32(i32, i1 immarg) #1`

## O2

- Status: ok
- Features: integer arithmetic, bitwise/shift, comparisons, control flow, loop, memory/pointer, casts/conversions, calls/intrinsics, vector/SIMD, UB-related, external declarations
- Evidence:
  - integer arithmetic: `%10 = add nuw nsw i64 %16, 1`
  - bitwise/shift: `%18 = xor i64 %15, -1`
  - comparisons: `%4 = icmp sgt i32 %2, 0`
  - control flow: `br i1 %4, label %5, label %12`
  - loop: `llvm.loop metadata`
  - memory/pointer: `define dso_local i32 @f_gold(i32* nocapture noundef readonly %0, i32* nocapture noundef readonly %1, i32 noundef %2) local_unnamed_addr #0 {`
  - casts/conversions: `%6 = zext i32 %2 to i64`
  - calls/intrinsics: `%53 = call <4 x i32> @llvm.abs.v4i32(<4 x i32> %51, i1 true)`
  - vector/SIMD: `%31 = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %17, i64 0`
  - UB-related: `define dso_local i32 @f_gold(i32* nocapture noundef readonly %0, i32* nocapture noundef readonly %1, i32 noundef %2) local_unnamed_addr #0 {`
  - external declarations: `declare i32 @llvm.abs.i32(i32, i1 immarg) #1`

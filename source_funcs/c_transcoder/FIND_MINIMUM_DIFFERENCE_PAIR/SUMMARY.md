# c_transcoder/FIND_MINIMUM_DIFFERENCE_PAIR

- Source: `FIND_MINIMUM_DIFFERENCE_PAIR_processed.c`
- Source note: processed source

## O0

- Status: ok
- Features:
  - integer arithmetic
  - comparisons
  - control flow
  - loop
  - memory/pointer
  - casts/conversions
  - calls/intrinsics
  - UB-related
  - external declarations
- Evidence:
  - integer arithmetic: `%11 = sub nsw i32 %10, 1`
  - comparisons: `%12 = icmp slt i32 %9, %11`
  - control flow: `br label %8`
  - loop: `llvm.loop metadata`
  - memory/pointer: `define dso_local i32 @f_gold(i32* noundef %0, i32 noundef %1) #0 {`
  - casts/conversions: `%23 = sext i32 %22 to i64`
  - calls/intrinsics: `%32 = call i32 @abs(i32 noundef %31) #2`
  - UB-related: `define dso_local i32 @f_gold(i32* noundef %0, i32 noundef %1) #0 {`
  - external declarations: `declare i32 @abs(i32 noundef) #1`

## O1

- Status: ok
- Features:
  - integer arithmetic
  - comparisons
  - control flow
  - loop
  - memory/pointer
  - casts/conversions
  - calls/intrinsics
  - UB-related
  - external declarations
- Evidence:
  - integer arithmetic: `%5 = add i32 %1, -1`
  - comparisons: `%3 = icmp sgt i32 %1, 1`
  - control flow: `br i1 %3, label %4, label %13`
  - loop: `llvm.loop metadata`
  - memory/pointer: `define dso_local i32 @f_gold(i32* nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #0 {`
  - casts/conversions: `%6 = sext i32 %1 to i64`
  - calls/intrinsics: `%30 = call i32 @llvm.abs.i32(i32 %29, i1 true)`
  - UB-related: `define dso_local i32 @f_gold(i32* nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #0 {`
  - external declarations: `declare i32 @llvm.abs.i32(i32, i1 immarg) #1`

## O2

- Status: ok
- Features:
  - integer arithmetic
  - bitwise/shift
  - comparisons
  - control flow
  - loop
  - memory/pointer
  - casts/conversions
  - calls/intrinsics
  - vector/SIMD
  - UB-related
  - external declarations
- Evidence:
  - integer arithmetic: `%5 = add nsw i32 %1, -1`
  - bitwise/shift: `%19 = xor i64 %16, -1`
  - comparisons: `%3 = icmp sgt i32 %1, 1`
  - control flow: `br i1 %3, label %4, label %13`
  - loop: `llvm.loop metadata`
  - memory/pointer: `define dso_local i32 @f_gold(i32* nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #0 {`
  - casts/conversions: `%6 = zext i32 %1 to i64`
  - calls/intrinsics: `%49 = call <4 x i32> @llvm.abs.v4i32(<4 x i32> %47, i1 true)`
  - vector/SIMD: `%30 = insertelement <4 x i32> poison, i32 %18, i64 0`
  - UB-related: `define dso_local i32 @f_gold(i32* nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #0 {`
  - external declarations: `declare i32 @llvm.abs.i32(i32, i1 immarg) #1`

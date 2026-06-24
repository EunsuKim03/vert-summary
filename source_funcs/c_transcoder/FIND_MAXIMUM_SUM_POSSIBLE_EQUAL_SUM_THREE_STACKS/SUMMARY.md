# c_transcoder/FIND_MAXIMUM_SUM_POSSIBLE_EQUAL_SUM_THREE_STACKS

- Source: `FIND_MAXIMUM_SUM_POSSIBLE_EQUAL_SUM_THREE_STACKS_processed.c`
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
  - UB-related
- Evidence:
  - integer arithmetic: `%35 = add nsw i32 %34, %33`
  - comparisons: `%27 = icmp slt i32 %25, %26`
  - control flow: `br label %24`
  - loop: `llvm.loop metadata`
  - memory/pointer: `define dso_local i32 @f_gold(i32* noundef %0, i32* noundef %1, i32* noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5) #0 {`
  - casts/conversions: `%31 = sext i32 %30 to i64`
  - UB-related: `define dso_local i32 @f_gold(i32* noundef %0, i32* noundef %1, i32* noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5) #0 {`

## O1

- Status: ok
- Features:
  - integer arithmetic
  - bitwise/shift
  - comparisons
  - control flow
  - loop
  - memory/pointer
  - casts/conversions
  - UB-related
- Evidence:
  - integer arithmetic: `%20 = add nsw i32 %19, %17`
  - bitwise/shift: `%40 = or i1 %38, %39`
  - comparisons: `%7 = icmp sgt i32 %3, 0`
  - control flow: `br i1 %7, label %8, label %10`
  - loop: `llvm.loop metadata`
  - memory/pointer: `define dso_local i32 @f_gold(i32* nocapture noundef readonly %0, i32* nocapture noundef readonly %1, i32* nocapture noundef readonly %2, i32 noundef %3, i32 noundef %4, i32 noundef`
  - casts/conversions: `%9 = zext i32 %3 to i64`
  - UB-related: `define dso_local i32 @f_gold(i32* nocapture noundef readonly %0, i32* nocapture noundef readonly %1, i32* nocapture noundef readonly %2, i32 noundef %3, i32 noundef %4, i32 noundef`

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
  - integer arithmetic: `%13 = add nsw i64 %12, -8`
  - bitwise/shift: `%12 = and i64 %9, 4294967288`
  - comparisons: `%7 = icmp sgt i32 %3, 0`
  - control flow: `br i1 %7, label %8, label %95`
  - loop: `llvm.loop metadata`
  - memory/pointer: `define dso_local i32 @f_gold(i32* nocapture noundef readonly %0, i32* nocapture noundef readonly %1, i32* nocapture noundef readonly %2, i32 noundef %3, i32 noundef %4, i32 noundef`
  - casts/conversions: `%9 = zext i32 %3 to i64`
  - calls/intrinsics: `%90 = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %89)`
  - vector/SIMD: `%22 = phi <4 x i32> [ zeroinitializer, %18 ], [ %58, %20 ]`
  - UB-related: `define dso_local i32 @f_gold(i32* nocapture noundef readonly %0, i32* nocapture noundef readonly %1, i32* nocapture noundef readonly %2, i32 noundef %3, i32 noundef %4, i32 noundef`
  - external declarations: `declare i32 @llvm.vector.reduce.add.v4i32(<4 x i32>) #1`

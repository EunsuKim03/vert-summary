# c_transcoder/FIND_MAXIMUM_AVERAGE_SUBARRAY_OF_K_LENGTH_1

- Source: `FIND_MAXIMUM_AVERAGE_SUBARRAY_OF_K_LENGTH_1_processed.c`
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
  - integer arithmetic: `%33 = add nsw i32 %32, %31`
  - comparisons: `%16 = icmp sgt i32 %14, %15`
  - control flow: `br i1 %16, label %17, label %18`
  - loop: `llvm.loop metadata`
  - memory/pointer: `define dso_local i32 @f_gold(i32* noundef %0, i32 noundef %1, i32 noundef %2) #0 {`
  - casts/conversions: `%29 = sext i32 %28 to i64`
  - UB-related: `define dso_local i32 @f_gold(i32* noundef %0, i32 noundef %1, i32 noundef %2) #0 {`

## O1

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
  - integer arithmetic: `%12 = add nsw i32 %2, -1`
  - comparisons: `%4 = icmp sgt i32 %2, %1`
  - control flow: `br i1 %4, label %48, label %5`
  - loop: `llvm.loop metadata`
  - memory/pointer: `define dso_local i32 @f_gold(i32* nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {`
  - casts/conversions: `%9 = zext i32 %2 to i64`
  - UB-related: `define dso_local i32 @f_gold(i32* nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {`

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
  - integer arithmetic: `%10 = add nsw i64 %9, -1`
  - bitwise/shift: `%13 = and i64 %10, -8`
  - comparisons: `%4 = icmp sgt i32 %2, %1`
  - control flow: `br i1 %4, label %157, label %5`
  - loop: `llvm.loop metadata`
  - memory/pointer: `define dso_local i32 @f_gold(i32* nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {`
  - casts/conversions: `%9 = zext i32 %2 to i64`
  - calls/intrinsics: `%95 = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %94)`
  - vector/SIMD: `%15 = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %6, i64 0`
  - UB-related: `define dso_local i32 @f_gold(i32* nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {`
  - external declarations: `declare i32 @llvm.vector.reduce.add.v4i32(<4 x i32>) #1`

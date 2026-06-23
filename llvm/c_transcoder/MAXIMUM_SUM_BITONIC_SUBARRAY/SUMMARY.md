# c_transcoder/MAXIMUM_SUM_BITONIC_SUBARRAY

- Source: `MAXIMUM_SUM_BITONIC_SUBARRAY_processed.c`
- Source note: processed source

## O0

- Status: ok
- Features: integer arithmetic, comparisons, control flow, loop, memory/pointer, casts/conversions, calls/intrinsics, UB-related, external declarations
- Evidence:
  - integer arithmetic: `%35 = sub nsw i32 %34, 1`
  - comparisons: `%26 = icmp slt i32 %24, %25`
  - control flow: `br label %23`
  - loop: `llvm.loop metadata`
  - memory/pointer: `define dso_local i32 @f_gold(i32* noundef %0, i32 noundef %1) #0 {`
  - casts/conversions: `%13 = zext i32 %12 to i64`
  - calls/intrinsics: `%14 = call i8* @llvm.stacksave()`
  - UB-related: `define dso_local i32 @f_gold(i32* noundef %0, i32 noundef %1) #0 {`
  - external declarations: `declare i8* @llvm.stacksave() #1`

## O1

- Status: ok
- Features: integer arithmetic, comparisons, control flow, loop, memory/pointer, casts/conversions, UB-related
- Evidence:
  - integer arithmetic: `%11 = add nsw i32 %1, -1`
  - comparisons: `%7 = icmp sgt i32 %1, 1`
  - control flow: `br i1 %7, label %8, label %10`
  - loop: `llvm.loop metadata`
  - memory/pointer: `define dso_local i32 @f_gold(i32* nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #0 {`
  - casts/conversions: `%3 = zext i32 %1 to i64`
  - UB-related: `define dso_local i32 @f_gold(i32* nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #0 {`

## O2

- Status: ok
- Features: integer arithmetic, bitwise/shift, comparisons, control flow, loop, memory/pointer, casts/conversions, calls/intrinsics, vector/SIMD, UB-related, external declarations
- Evidence:
  - integer arithmetic: `%9 = add nsw i64 %3, -1`
  - bitwise/shift: `%10 = and i64 %9, 1`
  - comparisons: `%7 = icmp sgt i32 %1, 1`
  - control flow: `br i1 %7, label %8, label %14`
  - loop: `llvm.loop metadata`
  - memory/pointer: `define dso_local i32 @f_gold(i32* nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #0 {`
  - casts/conversions: `%3 = zext i32 %1 to i64`
  - calls/intrinsics: `%131 = call i32 @llvm.vector.reduce.smax.v4i32(<4 x i32> %130)`
  - vector/SIMD: `%93 = insertelement <4 x i32> poison, i32 %85, i64 0`
  - UB-related: `define dso_local i32 @f_gold(i32* nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #0 {`
  - external declarations: `declare i32 @llvm.vector.reduce.smax.v4i32(<4 x i32>) #1`

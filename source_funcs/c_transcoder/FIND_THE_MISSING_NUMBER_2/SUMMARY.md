# c_transcoder/FIND_THE_MISSING_NUMBER_2

- Source: `FIND_THE_MISSING_NUMBER_2_processed.c`
- Source note: processed source

## O0

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
  - integer arithmetic: `%26 = add nsw i32 %25, 1`
  - bitwise/shift: `%23 = xor i32 %17, %22`
  - comparisons: `%15 = icmp slt i32 %13, %14`
  - control flow: `br label %12`
  - loop: `llvm.loop metadata`
  - memory/pointer: `define dso_local i32 @f_gold(i32* noundef %0, i32 noundef %1) #0 {`
  - casts/conversions: `%20 = sext i32 %19 to i64`
  - UB-related: `define dso_local i32 @f_gold(i32* noundef %0, i32 noundef %1) #0 {`

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
  - integer arithmetic: `%11 = add i32 %1, 1`
  - bitwise/shift: `%17 = xor i32 %16, %14`
  - comparisons: `%4 = icmp sgt i32 %1, 1`
  - control flow: `br i1 %4, label %5, label %7`
  - loop: `llvm.loop metadata`
  - memory/pointer: `define dso_local i32 @f_gold(i32* nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #0 {`
  - casts/conversions: `%6 = zext i32 %1 to i64`
  - UB-related: `define dso_local i32 @f_gold(i32* nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #0 {`

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
  - integer arithmetic: `%7 = add nsw i64 %6, -1`
  - bitwise/shift: `%10 = and i64 %7, -8`
  - comparisons: `%4 = icmp sgt i32 %1, 1`
  - control flow: `br i1 %4, label %5, label %97`
  - loop: `llvm.loop metadata`
  - memory/pointer: `define dso_local i32 @f_gold(i32* nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #0 {`
  - casts/conversions: `%6 = zext i32 %1 to i64`
  - calls/intrinsics: `%92 = call i32 @llvm.vector.reduce.xor.v4i32(<4 x i32> %91)`
  - vector/SIMD: `%12 = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %3, i64 0`
  - UB-related: `define dso_local i32 @f_gold(i32* nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #0 {`
  - external declarations: `declare i32 @llvm.vector.reduce.xor.v4i32(<4 x i32>) #1`

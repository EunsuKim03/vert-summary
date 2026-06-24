# c_transcoder/FIND_REPETITIVE_ELEMENT_1_N_1_2

- Source: `FIND_REPETITIVE_ELEMENT_1_N_1_2_processed.c`
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
  - integer arithmetic: `%10 = sub nsw i32 %9, 1`
  - bitwise/shift: `%16 = xor i32 %13, %15`
  - comparisons: `%11 = icmp slt i32 %8, %10`
  - control flow: `br label %7`
  - loop: `llvm.loop metadata`
  - memory/pointer: `define dso_local i32 @f_gold(i32* noundef %0, i32 noundef %1) #0 {`
  - casts/conversions: `%19 = sext i32 %18 to i64`
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
  - integer arithmetic: `%3 = add i32 %1, -1`
  - bitwise/shift: `%12 = xor i32 %11, %8`
  - comparisons: `%4 = icmp sgt i32 %1, 1`
  - control flow: `br i1 %4, label %5, label %7`
  - loop: `llvm.loop metadata`
  - memory/pointer: `define dso_local i32 @f_gold(i32* nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #0 {`
  - casts/conversions: `%6 = zext i32 %3 to i64`
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
  - integer arithmetic: `%3 = add i32 %1, -1`
  - bitwise/shift: `%9 = and i64 %6, 4294967288`
  - comparisons: `%4 = icmp sgt i32 %1, 1`
  - control flow: `br i1 %4, label %5, label %89`
  - loop: `llvm.loop metadata`
  - memory/pointer: `define dso_local i32 @f_gold(i32* nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #0 {`
  - casts/conversions: `%6 = zext i32 %3 to i64`
  - calls/intrinsics: `%84 = call i32 @llvm.vector.reduce.xor.v4i32(<4 x i32> %83)`
  - vector/SIMD: `%19 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %15 ], [ %54, %17 ]`
  - UB-related: `define dso_local i32 @f_gold(i32* nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #0 {`
  - external declarations: `declare i32 @llvm.vector.reduce.xor.v4i32(<4 x i32>) #1`

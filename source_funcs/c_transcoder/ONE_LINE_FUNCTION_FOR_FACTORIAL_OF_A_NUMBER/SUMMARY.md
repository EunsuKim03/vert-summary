# c_transcoder/ONE_LINE_FUNCTION_FOR_FACTORIAL_OF_A_NUMBER

- Source: `ONE_LINE_FUNCTION_FOR_FACTORIAL_OF_A_NUMBER_processed.c`
- Source note: processed source

## O0

- Status: ok
- Features:
  - integer arithmetic
  - comparisons
  - control flow
  - recursion
  - memory/pointer
  - calls/intrinsics
  - UB-related
- Evidence:
  - integer arithmetic: `%12 = sub nsw i32 %11, 1`
  - comparisons: `%4 = icmp eq i32 %3, 1`
  - control flow: `br i1 %4, label %8, label %5`
  - recursion: `f_gold calls itself`
  - memory/pointer: `%2 = alloca i32, align 4`
  - calls/intrinsics: `%13 = call i32 @f_gold(i32 noundef %12)`
  - UB-related: `define dso_local i32 @f_gold(i32 noundef %0) #0 {`

## O1

- Status: ok
- Features:
  - integer arithmetic
  - comparisons
  - control flow
  - recursion
  - calls/intrinsics
  - UB-related
- Evidence:
  - integer arithmetic: `%4 = add nsw i32 %0, -1`
  - comparisons: `%2 = icmp ult i32 %0, 2`
  - control flow: `br i1 %2, label %7, label %3`
  - recursion: `f_gold calls itself`
  - calls/intrinsics: `%5 = call i32 @f_gold(i32 noundef %4)`
  - UB-related: `define dso_local i32 @f_gold(i32 noundef %0) local_unnamed_addr #0 {`

## O2

- Status: ok
- Features:
  - integer arithmetic
  - bitwise/shift
  - comparisons
  - control flow
  - loop
  - calls/intrinsics
  - vector/SIMD
  - UB-related
  - external declarations
- Evidence:
  - integer arithmetic: `%4 = add i32 %0, -1`
  - bitwise/shift: `%7 = and i32 %4, -8`
  - comparisons: `%2 = icmp ult i32 %0, 2`
  - control flow: `br i1 %2, label %75, label %3`
  - loop: `llvm.loop metadata`
  - calls/intrinsics: `%64 = call i32 @llvm.vector.reduce.mul.v4i32(<4 x i32> %63)`
  - vector/SIMD: `%9 = insertelement <4 x i32> poison, i32 %0, i64 0`
  - UB-related: `define dso_local i32 @f_gold(i32 noundef %0) local_unnamed_addr #0 {`
  - external declarations: `declare i32 @llvm.vector.reduce.mul.v4i32(<4 x i32>) #1`

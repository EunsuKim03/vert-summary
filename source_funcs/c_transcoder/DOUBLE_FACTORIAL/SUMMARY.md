# c_transcoder/DOUBLE_FACTORIAL

- Source: `DOUBLE_FACTORIAL_processed.c`
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
  - integer arithmetic: `%13 = sub i32 %12, 2`
  - comparisons: `%5 = icmp eq i32 %4, 0`
  - control flow: `br i1 %5, label %9, label %6`
  - recursion: `f_gold calls itself`
  - memory/pointer: `%2 = alloca i32, align 4`
  - calls/intrinsics: `%14 = call i32 @f_gold(i32 noundef %13)`
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
  - integer arithmetic: `%4 = add i32 %0, -2`
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
  - integer arithmetic: `%4 = add i32 %0, -2`
  - bitwise/shift: `%5 = lshr i32 %4, 1`
  - comparisons: `%2 = icmp ult i32 %0, 2`
  - control flow: `br i1 %2, label %78, label %3`
  - loop: `llvm.loop metadata`
  - calls/intrinsics: `%67 = call i32 @llvm.vector.reduce.mul.v4i32(<4 x i32> %66)`
  - vector/SIMD: `%12 = insertelement <4 x i32> poison, i32 %0, i64 0`
  - UB-related: `define dso_local i32 @f_gold(i32 noundef %0) local_unnamed_addr #0 {`
  - external declarations: `declare i32 @llvm.vector.reduce.mul.v4i32(<4 x i32>) #1`

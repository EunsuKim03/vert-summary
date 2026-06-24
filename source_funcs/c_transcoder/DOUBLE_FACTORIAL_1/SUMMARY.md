# c_transcoder/DOUBLE_FACTORIAL_1

- Source: `DOUBLE_FACTORIAL_1_processed.c`
- Source note: processed source

## O0

- Status: ok
- Features:
  - integer arithmetic
  - comparisons
  - control flow
  - loop
  - memory/pointer
  - UB-related
- Evidence:
  - integer arithmetic: `%21 = mul nsw i32 %20, %19`
  - comparisons: `%9 = icmp sge i32 %8, 0`
  - control flow: `br label %7`
  - loop: `llvm.loop metadata`
  - memory/pointer: `%2 = alloca i32, align 4`
  - UB-related: `define dso_local i32 @f_gold(i32 noundef %0) #0 {`

## O1

- Status: ok
- Features:
  - integer arithmetic
  - comparisons
  - control flow
  - loop
  - UB-related
- Evidence:
  - integer arithmetic: `%6 = mul nsw i32 %4, %5`
  - comparisons: `%2 = icmp slt i32 %0, 2`
  - control flow: `br i1 %2, label %9, label %3`
  - loop: `llvm.loop metadata`
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
  - integer arithmetic: `%4 = add i32 %0, 1`
  - bitwise/shift: `%7 = lshr i32 %6, 1`
  - comparisons: `%2 = icmp slt i32 %0, 2`
  - control flow: `br i1 %2, label %80, label %3`
  - loop: `llvm.loop metadata`
  - calls/intrinsics: `%5 = call i32 @llvm.umin.i32(i32 %0, i32 3)`
  - vector/SIMD: `%14 = insertelement <4 x i32> poison, i32 %0, i64 0`
  - UB-related: `define dso_local i32 @f_gold(i32 noundef %0) local_unnamed_addr #0 {`
  - external declarations: `declare i32 @llvm.umin.i32(i32, i32) #1`

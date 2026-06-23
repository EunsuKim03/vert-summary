# c_transcoder/PROGRAM_FOR_FACTORIAL_OF_A_NUMBER_1

- Source: `PROGRAM_FOR_FACTORIAL_OF_A_NUMBER_1_processed.c`
- Source note: processed source

## O0

- Status: ok
- Features: integer arithmetic, comparisons, control flow, loop, memory/pointer, UB-related
- Evidence:
  - integer arithmetic: `%12 = mul nsw i32 %11, %10`
  - comparisons: `%8 = icmp ule i32 %6, %7`
  - control flow: `br label %5`
  - loop: `llvm.loop metadata`
  - memory/pointer: `%2 = alloca i32, align 4`
  - UB-related: `define dso_local i32 @f_gold(i32 noundef %0) #0 {`

## O1

- Status: ok
- Features: integer arithmetic, comparisons, control flow, loop, UB-related
- Evidence:
  - integer arithmetic: `%6 = mul nsw i32 %4, %5`
  - comparisons: `%2 = icmp ult i32 %0, 2`
  - control flow: `br i1 %2, label %9, label %3`
  - loop: `llvm.loop metadata`
  - UB-related: `define dso_local i32 @f_gold(i32 noundef %0) local_unnamed_addr #0 {`

## O2

- Status: ok
- Features: integer arithmetic, bitwise/shift, comparisons, control flow, loop, calls/intrinsics, vector/SIMD, UB-related, external declarations
- Evidence:
  - integer arithmetic: `%4 = add i32 %0, -1`
  - bitwise/shift: `%7 = and i32 %4, -8`
  - comparisons: `%2 = icmp ult i32 %0, 2`
  - control flow: `br i1 %2, label %72, label %3`
  - loop: `llvm.loop metadata`
  - calls/intrinsics: `%61 = call i32 @llvm.vector.reduce.mul.v4i32(<4 x i32> %60)`
  - vector/SIMD: `%17 = phi <4 x i32> [ <i32 2, i32 3, i32 4, i32 5>, %14 ], [ %36, %16 ]`
  - UB-related: `define dso_local i32 @f_gold(i32 noundef %0) local_unnamed_addr #0 {`
  - external declarations: `declare i32 @llvm.vector.reduce.mul.v4i32(<4 x i32>) #1`

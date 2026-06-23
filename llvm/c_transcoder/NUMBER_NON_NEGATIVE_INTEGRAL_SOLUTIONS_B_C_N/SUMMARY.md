# c_transcoder/NUMBER_NON_NEGATIVE_INTEGRAL_SOLUTIONS_B_C_N

- Source: `NUMBER_NON_NEGATIVE_INTEGRAL_SOLUTIONS_B_C_N_processed.c`
- Source note: processed source

## O0

- Status: ok
- Features: integer arithmetic, comparisons, control flow, loop, memory/pointer, UB-related
- Evidence:
  - integer arithmetic: `%16 = sub nsw i32 %14, %15`
  - comparisons: `%10 = icmp sle i32 %8, %9`
  - control flow: `br label %7`
  - loop: `llvm.loop metadata`
  - memory/pointer: `%2 = alloca i32, align 4`
  - UB-related: `define dso_local i32 @f_gold(i32 noundef %0) #0 {`

## O1

- Status: ok
- Features: integer arithmetic, comparisons, control flow, loop, casts/conversions, UB-related
- Evidence:
  - integer arithmetic: `%4 = add i32 %0, 1`
  - comparisons: `%2 = icmp slt i32 %0, 0`
  - control flow: `br i1 %2, label %11, label %3`
  - loop: `llvm.loop metadata`
  - casts/conversions: `%35 = zext i1 %34 to i32`
  - UB-related: `define dso_local i32 @f_gold(i32 noundef %0) local_unnamed_addr #0 {`

## O2

- Status: ok
- Features: integer arithmetic, bitwise/shift, comparisons, control flow, loop, casts/conversions, calls/intrinsics, vector/SIMD, UB-related, external declarations
- Evidence:
  - integer arithmetic: `%4 = add i32 %0, 1`
  - bitwise/shift: `%28 = and i32 %22, -8`
  - comparisons: `%2 = icmp slt i32 %0, 0`
  - control flow: `br i1 %2, label %15, label %3`
  - loop: `llvm.loop metadata`
  - casts/conversions: `%44 = zext <4 x i1> %42 to <4 x i32>`
  - calls/intrinsics: `%53 = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %52)`
  - vector/SIMD: `%5 = insertelement <4 x i32> poison, i32 %0, i64 0`
  - UB-related: `define dso_local i32 @f_gold(i32 noundef %0) local_unnamed_addr #0 {`
  - external declarations: `declare i32 @llvm.vector.reduce.add.v4i32(<4 x i32>) #1`

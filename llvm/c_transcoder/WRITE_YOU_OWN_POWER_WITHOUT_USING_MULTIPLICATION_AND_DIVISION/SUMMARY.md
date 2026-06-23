# c_transcoder/WRITE_YOU_OWN_POWER_WITHOUT_USING_MULTIPLICATION_AND_DIVISION

- Source: `WRITE_YOU_OWN_POWER_WITHOUT_USING_MULTIPLICATION_AND_DIVISION_processed.c`
- Source note: processed source

## O0

- Status: ok
- Features: integer arithmetic, comparisons, control flow, loop, memory/pointer, UB-related
- Evidence:
  - integer arithmetic: `%28 = add nsw i32 %27, %26`
  - comparisons: `%11 = icmp eq i32 %10, 0`
  - control flow: `br i1 %11, label %12, label %13`
  - loop: `llvm.loop metadata`
  - memory/pointer: `%3 = alloca i32, align 4`
  - UB-related: `define dso_local i32 @f_gold(i32 noundef %0, i32 noundef %1) #0 {`

## O1

- Status: ok
- Features: integer arithmetic, comparisons, control flow, loop, UB-related
- Evidence:
  - integer arithmetic: `%12 = mul i32 %11, %8`
  - comparisons: `%3 = icmp eq i32 %1, 0`
  - control flow: `br i1 %3, label %15, label %4`
  - loop: `llvm.loop metadata`
  - UB-related: `define dso_local i32 @f_gold(i32 noundef %0, i32 noundef %1) local_unnamed_addr #0 {`

## O2

- Status: ok
- Features: integer arithmetic, bitwise/shift, comparisons, control flow, loop, calls/intrinsics, vector/SIMD, UB-related, external declarations
- Evidence:
  - integer arithmetic: `%8 = add i32 %1, -1`
  - bitwise/shift: `%11 = and i32 %8, -8`
  - comparisons: `%3 = icmp eq i32 %1, 0`
  - control flow: `br i1 %3, label %80, label %4`
  - loop: `llvm.loop metadata`
  - calls/intrinsics: `%68 = call i32 @llvm.vector.reduce.mul.v4i32(<4 x i32> %67)`
  - vector/SIMD: `%13 = insertelement <4 x i32> <i32 poison, i32 1, i32 1, i32 1>, i32 %0, i64 0`
  - UB-related: `define dso_local i32 @f_gold(i32 noundef %0, i32 noundef %1) local_unnamed_addr #0 {`
  - external declarations: `declare i32 @llvm.vector.reduce.mul.v4i32(<4 x i32>) #1`

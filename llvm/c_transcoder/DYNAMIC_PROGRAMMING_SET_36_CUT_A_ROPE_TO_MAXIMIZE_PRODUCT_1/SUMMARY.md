# c_transcoder/DYNAMIC_PROGRAMMING_SET_36_CUT_A_ROPE_TO_MAXIMIZE_PRODUCT_1

- Source: `DYNAMIC_PROGRAMMING_SET_36_CUT_A_ROPE_TO_MAXIMIZE_PRODUCT_1_processed.c`
- Source note: processed source

## O0

- Status: ok
- Features: integer arithmetic, comparisons, control flow, loop, memory/pointer, UB-related
- Evidence:
  - integer arithmetic: `%12 = sub nsw i32 %11, 1`
  - comparisons: `%6 = icmp eq i32 %5, 2`
  - control flow: `br i1 %6, label %10, label %7`
  - loop: `llvm.loop metadata`
  - memory/pointer: `%2 = alloca i32, align 4`
  - UB-related: `define dso_local i32 @f_gold(i32 noundef %0) #0 {`

## O1

- Status: ok
- Features: integer arithmetic, bitwise/shift, comparisons, control flow, loop, UB-related
- Evidence:
  - integer arithmetic: `%7 = add nsw i32 %0, -1`
  - bitwise/shift: `%2 = and i32 %0, -2`
  - comparisons: `%3 = icmp eq i32 %2, 2`
  - control flow: `br i1 %3, label %6, label %4`
  - loop: `llvm.loop metadata`
  - UB-related: `define dso_local i32 @f_gold(i32 noundef %0) local_unnamed_addr #0 {`

## O2

- Status: ok
- Features: integer arithmetic, bitwise/shift, comparisons, control flow, loop, calls/intrinsics, vector/SIMD, UB-related, external declarations
- Evidence:
  - integer arithmetic: `%7 = add i32 %0, 2`
  - bitwise/shift: `%2 = and i32 %0, -2`
  - comparisons: `%3 = icmp eq i32 %2, 2`
  - control flow: `br i1 %3, label %55, label %4`
  - loop: `llvm.loop metadata`
  - calls/intrinsics: `%8 = call i32 @llvm.umin.i32(i32 %0, i32 7)`
  - vector/SIMD: `%25 = phi <4 x i32> [ <i32 1, i32 1, i32 1, i32 1>, %22 ], [ %28, %24 ]`
  - UB-related: `define dso_local i32 @f_gold(i32 noundef %0) local_unnamed_addr #0 {`
  - external declarations: `declare i32 @llvm.umin.i32(i32, i32) #1`

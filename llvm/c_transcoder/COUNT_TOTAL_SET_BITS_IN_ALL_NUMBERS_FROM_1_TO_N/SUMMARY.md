# c_transcoder/COUNT_TOTAL_SET_BITS_IN_ALL_NUMBERS_FROM_1_TO_N

- Source: `COUNT_TOTAL_SET_BITS_IN_ALL_NUMBERS_FROM_1_TO_N_processed.c`
- Source note: processed source

## O0

- Status: ok
- Features: integer arithmetic, bitwise/shift, comparisons, control flow, loop, memory/pointer, casts/conversions, UB-related
- Evidence:
  - integer arithmetic: `%25 = add nsw i32 %24, %23`
  - bitwise/shift: `%10 = shl i32 1, %9`
  - comparisons: `%12 = icmp sle i32 %10, %11`
  - control flow: `br label %8`
  - loop: `llvm.loop metadata`
  - memory/pointer: `%2 = alloca i32, align 4`
  - casts/conversions: `%22 = trunc i8 %21 to i1`
  - UB-related: `define dso_local i32 @f_gold(i32 noundef %0) #0 {`

## O1

- Status: ok
- Features: integer arithmetic, bitwise/shift, comparisons, control flow, loop, casts/conversions, UB-related
- Evidence:
  - integer arithmetic: `%8 = add nuw nsw i32 %6, 1`
  - bitwise/shift: `%9 = shl i32 2, %6`
  - comparisons: `%2 = icmp slt i32 %0, 1`
  - control flow: `br i1 %2, label %26, label %3`
  - loop: `llvm.loop metadata`
  - casts/conversions: `%17 = zext i8 %16 to i32`
  - UB-related: `define dso_local i32 @f_gold(i32 noundef %0) local_unnamed_addr #0 {`

## O2

- Status: ok
- Features: integer arithmetic, bitwise/shift, comparisons, control flow, loop, casts/conversions, UB-related
- Evidence:
  - integer arithmetic: `%4 = add i32 %0, 1`
  - bitwise/shift: `%5 = and i32 %4, 1`
  - comparisons: `%2 = icmp slt i32 %0, 1`
  - control flow: `br i1 %2, label %43, label %3`
  - loop: `llvm.loop metadata`
  - casts/conversions: `%14 = zext i8 %13 to i32`
  - UB-related: `define dso_local i32 @f_gold(i32 noundef %0) local_unnamed_addr #0 {`

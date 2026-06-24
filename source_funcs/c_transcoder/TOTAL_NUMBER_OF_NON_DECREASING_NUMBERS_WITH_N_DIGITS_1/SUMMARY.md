# c_transcoder/TOTAL_NUMBER_OF_NON_DECREASING_NUMBERS_WITH_N_DIGITS_1

- Source: `TOTAL_NUMBER_OF_NON_DECREASING_NUMBERS_WITH_N_DIGITS_1_processed.c`
- Source note: processed source

## O0

- Status: ok
- Features:
  - integer arithmetic
  - comparisons
  - control flow
  - loop
  - memory/pointer
  - casts/conversions
  - UB-related
- Evidence:
  - integer arithmetic: `%13 = add nsw i32 %11, %12`
  - comparisons: `%9 = icmp sle i32 %7, %8`
  - control flow: `br label %6`
  - loop: `llvm.loop metadata`
  - memory/pointer: `%2 = alloca i32, align 4`
  - casts/conversions: `%15 = sext i32 %14 to i64`
  - UB-related: `define dso_local i32 @f_gold(i32 noundef %0) #0 {`

## O1

- Status: ok
- Features:
  - integer arithmetic
  - comparisons
  - control flow
  - loop
  - casts/conversions
  - UB-related
- Evidence:
  - integer arithmetic: `%4 = add i32 %0, 1`
  - comparisons: `%2 = icmp slt i32 %0, 1`
  - control flow: `br i1 %2, label %8, label %3`
  - loop: `llvm.loop metadata`
  - casts/conversions: `%5 = zext i32 %4 to i64`
  - UB-related: `define dso_local i32 @f_gold(i32 noundef %0) local_unnamed_addr #0 {`

## O2

- Status: ok
- Features:
  - integer arithmetic
  - bitwise/shift
  - comparisons
  - control flow
  - loop
  - casts/conversions
  - UB-related
- Evidence:
  - integer arithmetic: `%15 = add nuw nsw i64 %11, 9`
  - bitwise/shift: `%5 = and i64 %4, 1`
  - comparisons: `%2 = icmp slt i32 %0, 1`
  - control flow: `br i1 %2, label %21, label %3`
  - loop: `llvm.loop metadata`
  - casts/conversions: `%4 = zext i32 %0 to i64`
  - UB-related: `define dso_local i32 @f_gold(i32 noundef %0) local_unnamed_addr #0 {`

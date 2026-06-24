# c_transcoder/HOW_TO_TURN_OFF_A_PARTICULAR_BIT_IN_A_NUMBER

- Source: `HOW_TO_TURN_OFF_A_PARTICULAR_BIT_IN_A_NUMBER_processed.c`
- Source note: processed source

## O0

- Status: ok
- Features:
  - integer arithmetic
  - bitwise/shift
  - comparisons
  - control flow
  - memory/pointer
  - UB-related
- Evidence:
  - integer arithmetic: `%13 = sub nsw i32 %12, 1`
  - bitwise/shift: `%14 = shl i32 1, %13`
  - comparisons: `%7 = icmp sle i32 %6, 0`
  - control flow: `br i1 %7, label %8, label %10`
  - memory/pointer: `%3 = alloca i32, align 4`
  - UB-related: `define dso_local i32 @f_gold(i32 noundef %0, i32 noundef %1) #0 {`

## O1

- Status: ok
- Features:
  - integer arithmetic
  - bitwise/shift
  - comparisons
  - control flow
  - UB-related
- Evidence:
  - integer arithmetic: `%4 = add nsw i32 %1, -1`
  - bitwise/shift: `%5 = shl i32 1, %4`
  - comparisons: `%3 = icmp slt i32 %1, 1`
  - control flow: `%7 = select i1 %3, i32 -1, i32 %6`
  - UB-related: `define dso_local i32 @f_gold(i32 noundef %0, i32 noundef %1) local_unnamed_addr #0 {`

## O2

- Status: ok
- Features:
  - integer arithmetic
  - bitwise/shift
  - comparisons
  - control flow
  - UB-related
- Evidence:
  - integer arithmetic: `%4 = add nsw i32 %1, -1`
  - bitwise/shift: `%5 = shl nuw i32 1, %4`
  - comparisons: `%3 = icmp slt i32 %1, 1`
  - control flow: `%7 = select i1 %3, i32 -1, i32 %6`
  - UB-related: `define dso_local i32 @f_gold(i32 noundef %0, i32 noundef %1) local_unnamed_addr #0 {`

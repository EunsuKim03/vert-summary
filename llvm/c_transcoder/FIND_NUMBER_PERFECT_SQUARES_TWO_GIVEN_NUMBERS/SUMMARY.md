# c_transcoder/FIND_NUMBER_PERFECT_SQUARES_TWO_GIVEN_NUMBERS

- Source: `FIND_NUMBER_PERFECT_SQUARES_TWO_GIVEN_NUMBERS_processed.c`
- Source note: processed source

## O0

- Status: ok
- Features: integer arithmetic, comparisons, control flow, loop, memory/pointer, UB-related
- Evidence:
  - integer arithmetic: `%17 = mul nsw i32 %15, %16`
  - comparisons: `%12 = icmp sle i32 %10, %11`
  - control flow: `br label %9`
  - loop: `llvm.loop metadata`
  - memory/pointer: `%3 = alloca i32, align 4`
  - UB-related: `define dso_local i32 @f_gold(i32 noundef %0, i32 noundef %1) #0 {`

## O1

- Status: ok
- Features: integer arithmetic, comparisons, control flow, loop, casts/conversions, UB-related
- Evidence:
  - integer arithmetic: `%12 = add nsw i32 %5, 1`
  - comparisons: `%3 = icmp sgt i32 %0, %1`
  - control flow: `br i1 %3, label %8, label %4`
  - loop: `llvm.loop metadata`
  - casts/conversions: `%19 = zext i1 %18 to i32`
  - UB-related: `define dso_local i32 @f_gold(i32 noundef %0, i32 noundef %1) local_unnamed_addr #0 {`

## O2

- Status: ok
- Features: integer arithmetic, bitwise/shift, comparisons, control flow, loop, casts/conversions, UB-related
- Evidence:
  - integer arithmetic: `%5 = add i32 %1, 1`
  - bitwise/shift: `%7 = and i32 %6, 1`
  - comparisons: `%3 = icmp slt i32 %1, %0`
  - control flow: `br i1 %3, label %33, label %4`
  - loop: `llvm.loop metadata`
  - casts/conversions: `%28 = zext i1 %27 to i32`
  - UB-related: `define dso_local i32 @f_gold(i32 noundef %0, i32 noundef %1) local_unnamed_addr #0 {`

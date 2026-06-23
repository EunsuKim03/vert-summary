# c_transcoder/SUM_MATRIX_ELEMENT_ABSOLUTE_DIFFERENCE_ROW_COLUMN_NUMBERS_1

- Source: `SUM_MATRIX_ELEMENT_ABSOLUTE_DIFFERENCE_ROW_COLUMN_NUMBERS_1_processed.c`
- Source note: processed source

## O0

- Status: ok
- Features: integer arithmetic, comparisons, control flow, loop, memory/pointer, UB-related
- Evidence:
  - integer arithmetic: `%13 = sub nsw i32 %11, %12`
  - comparisons: `%8 = icmp slt i32 %6, %7`
  - control flow: `br label %5`
  - loop: `llvm.loop metadata`
  - memory/pointer: `%2 = alloca i32, align 4`
  - UB-related: `define dso_local i32 @f_gold(i32 noundef %0) #0 {`

## O1

- Status: ok
- Features: integer arithmetic, bitwise/shift, comparisons, control flow, casts/conversions, UB-related
- Evidence:
  - integer arithmetic: `%4 = add i32 %0, -1`
  - bitwise/shift: `%12 = lshr i33 %11, 1`
  - comparisons: `%2 = icmp sgt i32 %0, 0`
  - control flow: `br i1 %2, label %3, label %22`
  - casts/conversions: `%6 = zext i32 %4 to i33`
  - UB-related: `define dso_local i32 @f_gold(i32 noundef %0) local_unnamed_addr #0 {`

## O2

- Status: ok
- Features: integer arithmetic, bitwise/shift, comparisons, control flow, casts/conversions, UB-related
- Evidence:
  - integer arithmetic: `%4 = add nsw i32 %0, -1`
  - bitwise/shift: `%10 = lshr i33 %9, 1`
  - comparisons: `%2 = icmp sgt i32 %0, 0`
  - control flow: `br i1 %2, label %3, label %22`
  - casts/conversions: `%6 = zext i32 %4 to i33`
  - UB-related: `define dso_local i32 @f_gold(i32 noundef %0) local_unnamed_addr #0 {`

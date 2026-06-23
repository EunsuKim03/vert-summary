# c_transcoder/SUM_MATRIX_ELEMENT_ELEMENT_INTEGER_DIVISION_ROW_COLUMN

- Source: `SUM_MATRIX_ELEMENT_ELEMENT_INTEGER_DIVISION_ROW_COLUMN_processed.c`
- Source note: processed source

## O0

- Status: ok
- Features: integer arithmetic, comparisons, control flow, loop, memory/pointer, UB-related
- Evidence:
  - integer arithmetic: `%18 = sdiv i32 %16, %17`
  - comparisons: `%9 = icmp sle i32 %7, %8`
  - control flow: `br label %6`
  - loop: `llvm.loop metadata`
  - memory/pointer: `%2 = alloca i32, align 4`
  - UB-related: `define dso_local i32 @f_gold(i32 noundef %0) #0 {`

## O1

- Status: ok
- Features: integer arithmetic, comparisons, control flow, loop, UB-related
- Evidence:
  - integer arithmetic: `%9 = add nuw i32 %4, 1`
  - comparisons: `%2 = icmp slt i32 %0, 1`
  - control flow: `br i1 %2, label %6, label %3`
  - loop: `llvm.loop metadata`
  - UB-related: `define dso_local i32 @f_gold(i32 noundef %0) local_unnamed_addr #0 {`

## O2

- Status: ok
- Features: integer arithmetic, bitwise/shift, comparisons, control flow, loop, UB-related
- Evidence:
  - integer arithmetic: `%4 = add i32 %0, -1`
  - bitwise/shift: `%5 = and i32 %0, 3`
  - comparisons: `%2 = icmp slt i32 %0, 1`
  - control flow: `br i1 %2, label %12, label %3`
  - loop: `llvm.loop metadata`
  - UB-related: `define dso_local i32 @f_gold(i32 noundef %0) local_unnamed_addr #0 {`

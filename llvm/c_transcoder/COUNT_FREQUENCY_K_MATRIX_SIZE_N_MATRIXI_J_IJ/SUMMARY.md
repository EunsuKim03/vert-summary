# c_transcoder/COUNT_FREQUENCY_K_MATRIX_SIZE_N_MATRIXI_J_IJ

- Source: `COUNT_FREQUENCY_K_MATRIX_SIZE_N_MATRIXI_J_IJ_processed.c`
- Source note: processed source

## O0

- Status: ok
- Features: integer arithmetic, comparisons, control flow, memory/pointer, UB-related
- Evidence:
  - integer arithmetic: `%7 = add nsw i32 %6, 1`
  - comparisons: `%9 = icmp sge i32 %7, %8`
  - control flow: `br i1 %9, label %10, label %13`
  - memory/pointer: `%3 = alloca i32, align 4`
  - UB-related: `define dso_local i32 @f_gold(i32 noundef %0, i32 noundef %1) #0 {`

## O1

- Status: ok
- Features: integer arithmetic, bitwise/shift, comparisons, control flow, UB-related
- Evidence:
  - integer arithmetic: `%3 = add nsw i32 %0, 1`
  - bitwise/shift: `%6 = shl nsw i32 %0, 1`
  - comparisons: `%4 = icmp slt i32 %3, %1`
  - control flow: `%9 = select i1 %4, i32 %8, i32 %5`
  - UB-related: `define dso_local i32 @f_gold(i32 noundef %0, i32 noundef %1) local_unnamed_addr #0 {`

## O2

- Status: ok
- Features: integer arithmetic, bitwise/shift, comparisons, control flow, UB-related
- Evidence:
  - integer arithmetic: `%3 = add nsw i32 %0, 1`
  - bitwise/shift: `%6 = shl nsw i32 %0, 1`
  - comparisons: `%4 = icmp slt i32 %3, %1`
  - control flow: `%9 = select i1 %4, i32 %8, i32 %5`
  - UB-related: `define dso_local i32 @f_gold(i32 noundef %0, i32 noundef %1) local_unnamed_addr #0 {`

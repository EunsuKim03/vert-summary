# c_transcoder/SPLIT_N_MAXIMUM_COMPOSITE_NUMBERS

- Source: `SPLIT_N_MAXIMUM_COMPOSITE_NUMBERS_processed.c`
- Source note: processed source

## O0

- Status: ok
- Features: integer arithmetic, comparisons, control flow, memory/pointer, UB-related
- Evidence:
  - integer arithmetic: `%10 = srem i32 %9, 4`
  - comparisons: `%6 = icmp slt i32 %5, 4`
  - control flow: `br i1 %6, label %7, label %8`
  - memory/pointer: `%2 = alloca i32, align 4`
  - UB-related: `define dso_local i32 @f_gold(i32 noundef %0) #0 {`

## O1

- Status: ok
- Features: integer arithmetic, comparisons, control flow, UB-related
- Evidence:
  - integer arithmetic: `%4 = srem i32 %0, 4`
  - comparisons: `%2 = icmp slt i32 %0, 4`
  - control flow: `br i1 %2, label %22, label %3`
  - UB-related: `define dso_local i32 @f_gold(i32 noundef %0) local_unnamed_addr #0 {`

## O2

- Status: ok
- Features: integer arithmetic, bitwise/shift, comparisons, control flow, UB-related
- Evidence:
  - integer arithmetic: `%10 = add nsw i32 %0, -9`
  - bitwise/shift: `%4 = and i32 %0, 3`
  - comparisons: `%2 = icmp slt i32 %0, 4`
  - control flow: `br i1 %2, label %23, label %3`
  - UB-related: `define dso_local i32 @f_gold(i32 noundef %0) local_unnamed_addr #0 {`

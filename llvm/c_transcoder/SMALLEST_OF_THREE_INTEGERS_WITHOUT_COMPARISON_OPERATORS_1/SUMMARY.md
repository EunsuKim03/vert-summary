# c_transcoder/SMALLEST_OF_THREE_INTEGERS_WITHOUT_COMPARISON_OPERATORS_1

- Source: `SMALLEST_OF_THREE_INTEGERS_WITHOUT_COMPARISON_OPERATORS_1_processed.c`
- Source note: processed source

## O0

- Status: ok
- Features: integer arithmetic, comparisons, control flow, memory/pointer, UB-related
- Evidence:
  - integer arithmetic: `%10 = sdiv i32 %8, %9`
  - comparisons: `%11 = icmp ne i32 %10, 0`
  - control flow: `br i1 %11, label %23, label %12`
  - memory/pointer: `%4 = alloca i32, align 4`
  - UB-related: `define dso_local i32 @f_gold(i32 noundef %0, i32 noundef %1, i32 noundef %2) #0 {`

## O1

- Status: ok
- Features: integer arithmetic, comparisons, control flow, UB-related
- Evidence:
  - integer arithmetic: `%4 = sdiv i32 %1, %0`
  - comparisons: `%5 = icmp eq i32 %4, 0`
  - control flow: `%6 = select i1 %5, i32 %1, i32 %0`
  - UB-related: `define dso_local i32 @f_gold(i32 noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {`

## O2

- Status: ok
- Features: integer arithmetic, comparisons, control flow, UB-related
- Evidence:
  - integer arithmetic: `%4 = sdiv i32 %1, %0`
  - comparisons: `%5 = icmp eq i32 %4, 0`
  - control flow: `%6 = select i1 %5, i32 %1, i32 %0`
  - UB-related: `define dso_local i32 @f_gold(i32 noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {`

# c_transcoder/MIDDLE_OF_THREE_USING_MINIMUM_COMPARISONS_2

- Source: `MIDDLE_OF_THREE_USING_MINIMUM_COMPARISONS_2_processed.c`
- Source note: processed source

## O0

- Status: ok
- Features: integer arithmetic, comparisons, control flow, memory/pointer, UB-related
- Evidence:
  - integer arithmetic: `%13 = sub nsw i32 %11, %12`
  - comparisons: `%23 = icmp sgt i32 %22, 0`
  - control flow: `br i1 %23, label %24, label %26`
  - memory/pointer: `%4 = alloca i32, align 4`
  - UB-related: `define dso_local i32 @f_gold(i32 noundef %0, i32 noundef %1, i32 noundef %2) #0 {`

## O1

- Status: ok
- Features: integer arithmetic, comparisons, control flow, UB-related
- Evidence:
  - integer arithmetic: `%4 = sub nsw i32 %0, %1`
  - comparisons: `%7 = icmp sgt i32 %6, 0`
  - control flow: `%11 = select i1 %10, i32 %2, i32 %0`
  - UB-related: `define dso_local i32 @f_gold(i32 noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {`

## O2

- Status: ok
- Features: integer arithmetic, comparisons, control flow, UB-related
- Evidence:
  - integer arithmetic: `%4 = sub nsw i32 %0, %1`
  - comparisons: `%7 = icmp sgt i32 %6, 0`
  - control flow: `%11 = select i1 %10, i32 %2, i32 %0`
  - UB-related: `define dso_local i32 @f_gold(i32 noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {`

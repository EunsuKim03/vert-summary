# c_transcoder/MIDDLE_OF_THREE_USING_MINIMUM_COMPARISONS_1

- Source: `MIDDLE_OF_THREE_USING_MINIMUM_COMPARISONS_1_processed.c`
- Source note: processed source

## O0

- Status: ok
- Features:
  - comparisons
  - control flow
  - memory/pointer
  - UB-related
- Evidence:
  - comparisons: `%10 = icmp sgt i32 %8, %9`
  - control flow: `br i1 %10, label %11, label %25`
  - memory/pointer: `%4 = alloca i32, align 4`
  - UB-related: `define dso_local i32 @f_gold(i32 noundef %0, i32 noundef %1, i32 noundef %2) #0 {`

## O1

- Status: ok
- Features:
  - comparisons
  - control flow
  - UB-related
- Evidence:
  - comparisons: `%4 = icmp sgt i32 %0, %1`
  - control flow: `br i1 %4, label %5, label %10`
  - UB-related: `define dso_local i32 @f_gold(i32 noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {`

## O2

- Status: ok
- Features:
  - comparisons
  - control flow
  - UB-related
- Evidence:
  - comparisons: `%4 = icmp sgt i32 %0, %1`
  - control flow: `br i1 %4, label %5, label %10`
  - UB-related: `define dso_local i32 @f_gold(i32 noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {`

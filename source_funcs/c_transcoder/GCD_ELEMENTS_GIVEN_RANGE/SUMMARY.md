# c_transcoder/GCD_ELEMENTS_GIVEN_RANGE

- Source: `GCD_ELEMENTS_GIVEN_RANGE_processed.c`
- Source note: processed source

## O0

- Status: ok
- Features:
  - comparisons
  - control flow
  - memory/pointer
  - UB-related
- Evidence:
  - comparisons: `%7 = icmp eq i32 %5, %6`
  - control flow: `br i1 %7, label %8, label %10`
  - memory/pointer: `%3 = alloca i32, align 4`
  - UB-related: `define dso_local i32 @f_gold(i32 noundef %0, i32 noundef %1) #0 {`

## O1

- Status: ok
- Features:
  - comparisons
  - control flow
  - UB-related
- Evidence:
  - comparisons: `%3 = icmp eq i32 %0, %1`
  - control flow: `%4 = select i1 %3, i32 %0, i32 1`
  - UB-related: `define dso_local i32 @f_gold(i32 noundef %0, i32 noundef %1) local_unnamed_addr #0 {`

## O2

- Status: ok
- Features:
  - comparisons
  - control flow
  - UB-related
- Evidence:
  - comparisons: `%3 = icmp eq i32 %0, %1`
  - control flow: `%4 = select i1 %3, i32 %0, i32 1`
  - UB-related: `define dso_local i32 @f_gold(i32 noundef %0, i32 noundef %1) local_unnamed_addr #0 {`

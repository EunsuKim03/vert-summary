# c_transcoder/ROUND_THE_GIVEN_NUMBER_TO_NEAREST_MULTIPLE_OF_10

- Source: `ROUND_THE_GIVEN_NUMBER_TO_NEAREST_MULTIPLE_OF_10_processed.c`
- Source note: processed source

## O0

- Status: ok
- Features:
  - integer arithmetic
  - comparisons
  - control flow
  - memory/pointer
  - UB-related
- Evidence:
  - integer arithmetic: `%6 = sdiv i32 %5, 10`
  - comparisons: `%16 = icmp sgt i32 %12, %15`
  - control flow: `br i1 %16, label %17, label %19`
  - memory/pointer: `%2 = alloca i32, align 4`
  - UB-related: `define dso_local i32 @f_gold(i32 noundef %0) #0 {`

## O1

- Status: ok
- Features:
  - integer arithmetic
  - comparisons
  - control flow
  - UB-related
- Evidence:
  - integer arithmetic: `%2 = srem i32 %0, 10`
  - comparisons: `%6 = icmp sgt i32 %2, %5`
  - control flow: `%7 = select i1 %6, i32 %4, i32 %3`
  - UB-related: `define dso_local i32 @f_gold(i32 noundef %0) local_unnamed_addr #0 {`

## O2

- Status: ok
- Features:
  - integer arithmetic
  - comparisons
  - control flow
  - UB-related
- Evidence:
  - integer arithmetic: `%2 = srem i32 %0, 10`
  - comparisons: `%6 = icmp sgt i32 %2, %5`
  - control flow: `%7 = select i1 %6, i32 %4, i32 %3`
  - UB-related: `define dso_local i32 @f_gold(i32 noundef %0) local_unnamed_addr #0 {`

# c_transcoder/CHECK_WHETHER_TRIANGLE_VALID_NOT_SIDES_GIVEN

- Source: `CHECK_WHETHER_TRIANGLE_VALID_NOT_SIDES_GIVEN_processed.c`
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
  - integer arithmetic: `%10 = add nsw i32 %8, %9`
  - comparisons: `%12 = icmp sle i32 %10, %11`
  - control flow: `br i1 %12, label %25, label %13`
  - memory/pointer: `%4 = alloca i32, align 4`
  - UB-related: `define dso_local i32 @f_gold(i32 noundef %0, i32 noundef %1, i32 noundef %2) #0 {`

## O1

- Status: ok
- Features:
  - integer arithmetic
  - comparisons
  - control flow
  - casts/conversions
  - UB-related
- Evidence:
  - integer arithmetic: `%4 = add nsw i32 %1, %0`
  - comparisons: `%5 = icmp sgt i32 %4, %2`
  - control flow: `%8 = select i1 %5, i1 %7, i1 false`
  - casts/conversions: `%12 = zext i1 %11 to i32`
  - UB-related: `define dso_local i32 @f_gold(i32 noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {`

## O2

- Status: ok
- Features:
  - integer arithmetic
  - comparisons
  - control flow
  - casts/conversions
  - UB-related
- Evidence:
  - integer arithmetic: `%4 = add nsw i32 %1, %0`
  - comparisons: `%5 = icmp sgt i32 %4, %2`
  - control flow: `%8 = select i1 %5, i1 %7, i1 false`
  - casts/conversions: `%12 = zext i1 %11 to i32`
  - UB-related: `define dso_local i32 @f_gold(i32 noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {`

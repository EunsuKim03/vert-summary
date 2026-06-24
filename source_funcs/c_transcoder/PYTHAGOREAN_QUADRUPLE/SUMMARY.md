# c_transcoder/PYTHAGOREAN_QUADRUPLE

- Source: `PYTHAGOREAN_QUADRUPLE_processed.c`
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
  - integer arithmetic: `%13 = mul nsw i32 %11, %12`
  - comparisons: `%26 = icmp eq i32 %24, %25`
  - control flow: `br i1 %26, label %27, label %28`
  - memory/pointer: `%5 = alloca i32, align 4`
  - UB-related: `define dso_local i32 @f_gold(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) #0 {`

## O1

- Status: ok
- Features:
  - integer arithmetic
  - comparisons
  - control flow
  - casts/conversions
  - UB-related
- Evidence:
  - integer arithmetic: `%5 = mul nsw i32 %0, %0`
  - comparisons: `%11 = icmp eq i32 %10, %9`
  - control flow: `ret i32 %12`
  - casts/conversions: `%12 = zext i1 %11 to i32`
  - UB-related: `define dso_local i32 @f_gold(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #0 {`

## O2

- Status: ok
- Features:
  - integer arithmetic
  - comparisons
  - control flow
  - casts/conversions
  - UB-related
- Evidence:
  - integer arithmetic: `%5 = mul nsw i32 %0, %0`
  - comparisons: `%11 = icmp eq i32 %10, %9`
  - control flow: `ret i32 %12`
  - casts/conversions: `%12 = zext i1 %11 to i32`
  - UB-related: `define dso_local i32 @f_gold(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #0 {`

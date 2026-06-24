# c_transcoder/FIND_MINIMUM_SUM_FACTORS_NUMBER

- Source: `FIND_MINIMUM_SUM_FACTORS_NUMBER_processed.c`
- Source note: processed source

## O0

- Status: ok
- Features:
  - integer arithmetic
  - comparisons
  - control flow
  - loop
  - memory/pointer
  - UB-related
- Evidence:
  - integer arithmetic: `%8 = mul nsw i32 %6, %7`
  - comparisons: `%10 = icmp sle i32 %8, %9`
  - control flow: `br label %5`
  - loop: `llvm.loop metadata`
  - memory/pointer: `%2 = alloca i32, align 4`
  - UB-related: `define dso_local i32 @f_gold(i32 noundef %0) #0 {`

## O1

- Status: ok
- Features:
  - integer arithmetic
  - comparisons
  - control flow
  - loop
  - UB-related
- Evidence:
  - integer arithmetic: `%7 = srem i32 %6, %4`
  - comparisons: `%2 = icmp slt i32 %0, 4`
  - control flow: `br i1 %2, label %9, label %3`
  - loop: `llvm.loop metadata`
  - UB-related: `define dso_local i32 @f_gold(i32 noundef %0) local_unnamed_addr #0 {`

## O2

- Status: ok
- Features:
  - integer arithmetic
  - comparisons
  - control flow
  - loop
  - UB-related
- Evidence:
  - integer arithmetic: `%7 = srem i32 %6, %4`
  - comparisons: `%2 = icmp slt i32 %0, 4`
  - control flow: `br i1 %2, label %9, label %3`
  - loop: `llvm.loop metadata`
  - UB-related: `define dso_local i32 @f_gold(i32 noundef %0) local_unnamed_addr #0 {`

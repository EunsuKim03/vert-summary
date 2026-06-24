# c_transcoder/COUNT_FIBONACCI_NUMBERS_GIVEN_RANGE_LOG_TIME

- Source: `COUNT_FIBONACCI_NUMBERS_GIVEN_RANGE_LOG_TIME_processed.c`
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
  - integer arithmetic: `%19 = add nsw i32 %18, 1`
  - comparisons: `%12 = icmp sle i32 %10, %11`
  - control flow: `br label %9`
  - loop: `llvm.loop metadata`
  - memory/pointer: `%3 = alloca i32, align 4`
  - UB-related: `define dso_local i32 @f_gold(i32 noundef %0, i32 noundef %1) #0 {`

## O1

- Status: ok
- Features:
  - integer arithmetic
  - comparisons
  - control flow
  - loop
  - casts/conversions
  - UB-related
- Evidence:
  - integer arithmetic: `%11 = add nuw nsw i32 %5, %10`
  - comparisons: `%3 = icmp slt i32 %1, 0`
  - control flow: `br i1 %3, label %14, label %4`
  - loop: `llvm.loop metadata`
  - casts/conversions: `%10 = zext i1 %9 to i32`
  - UB-related: `define dso_local i32 @f_gold(i32 noundef %0, i32 noundef %1) local_unnamed_addr #0 {`

## O2

- Status: ok
- Features:
  - integer arithmetic
  - comparisons
  - control flow
  - loop
  - casts/conversions
  - UB-related
- Evidence:
  - integer arithmetic: `%11 = add nuw nsw i32 %5, %10`
  - comparisons: `%3 = icmp slt i32 %1, 0`
  - control flow: `br i1 %3, label %14, label %4`
  - loop: `llvm.loop metadata`
  - casts/conversions: `%10 = zext i1 %9 to i32`
  - UB-related: `define dso_local i32 @f_gold(i32 noundef %0, i32 noundef %1) local_unnamed_addr #0 {`

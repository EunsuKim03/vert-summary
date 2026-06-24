# c_transcoder/DYNAMIC_PROGRAMMING_SET_10_0_1_KNAPSACK_PROBLEM

- Source: `DYNAMIC_PROGRAMMING_SET_10_0_1_KNAPSACK_PROBLEM_processed.c`
- Source note: processed source

## O0

- Status: ok
- Features:
  - integer arithmetic
  - comparisons
  - control flow
  - recursion
  - memory/pointer
  - casts/conversions
  - calls/intrinsics
  - UB-related
  - external declarations
- Evidence:
  - integer arithmetic: `%19 = sub nsw i32 %18, 1`
  - comparisons: `%11 = icmp eq i32 %10, 0`
  - control flow: `br i1 %11, label %15, label %12`
  - recursion: `f_gold calls itself`
  - memory/pointer: `define dso_local i32 @f_gold(i32 noundef %0, i32* noundef %1, i32* noundef %2, i32 noundef %3) #0 {`
  - casts/conversions: `%20 = sext i32 %19 to i64`
  - calls/intrinsics: `%31 = call i32 @f_gold(i32 noundef %26, i32* noundef %27, i32* noundef %28, i32 noundef %30)`
  - UB-related: `define dso_local i32 @f_gold(i32 noundef %0, i32* noundef %1, i32* noundef %2, i32 noundef %3) #0 {`
  - external declarations: `declare i32 @max(...) #1`

## O1

- Status: ok
- Features:
  - integer arithmetic
  - bitwise/shift
  - comparisons
  - control flow
  - recursion
  - memory/pointer
  - casts/conversions
  - calls/intrinsics
  - UB-related
  - external declarations
- Evidence:
  - integer arithmetic: `%9 = add nsw i32 %3, -1`
  - bitwise/shift: `%7 = or i1 %6, %5`
  - comparisons: `%5 = icmp eq i32 %3, 0`
  - control flow: `br i1 %7, label %24, label %8`
  - recursion: `f_gold calls itself`
  - memory/pointer: `define dso_local i32 @f_gold(i32 noundef %0, i32* noundef %1, i32* noundef %2, i32 noundef %3) local_unnamed_addr #0 {`
  - casts/conversions: `%10 = sext i32 %9 to i64`
  - calls/intrinsics: `%15 = call i32 @f_gold(i32 noundef %0, i32* noundef %1, i32* noundef %2, i32 noundef %9)`
  - UB-related: `define dso_local i32 @f_gold(i32 noundef %0, i32* noundef %1, i32* noundef %2, i32 noundef %3) local_unnamed_addr #0 {`
  - external declarations: `declare i32 @max(...) local_unnamed_addr #1`

## O2

- Status: ok
- Features:
  - integer arithmetic
  - comparisons
  - control flow
  - loop
  - recursion
  - memory/pointer
  - casts/conversions
  - calls/intrinsics
  - UB-related
  - external declarations
- Evidence:
  - integer arithmetic: `%12 = add nsw i64 %9, -1`
  - comparisons: `%5 = icmp eq i32 %0, 0`
  - control flow: `br i1 %5, label %16, label %6`
  - loop: `br i1 %15, label %8, label %18`
  - recursion: `f_gold calls itself`
  - memory/pointer: `define dso_local i32 @f_gold(i32 noundef %0, i32* noundef %1, i32* noundef %2, i32 noundef %3) local_unnamed_addr #0 {`
  - casts/conversions: `%7 = sext i32 %3 to i64`
  - calls/intrinsics: `%23 = tail call i32 @f_gold(i32 noundef %22, i32* noundef nonnull %1, i32* noundef %2, i32 noundef %19)`
  - UB-related: `define dso_local i32 @f_gold(i32 noundef %0, i32* noundef %1, i32* noundef %2, i32 noundef %3) local_unnamed_addr #0 {`
  - external declarations: `declare i32 @max(...) local_unnamed_addr #1`

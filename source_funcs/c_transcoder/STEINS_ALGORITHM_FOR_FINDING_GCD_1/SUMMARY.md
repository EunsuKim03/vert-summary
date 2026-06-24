# c_transcoder/STEINS_ALGORITHM_FOR_FINDING_GCD_1

- Source: `STEINS_ALGORITHM_FOR_FINDING_GCD_1_processed.c`
- Source note: processed source

## O0

- Status: ok
- Features:
  - integer arithmetic
  - bitwise/shift
  - comparisons
  - control flow
  - recursion
  - memory/pointer
  - calls/intrinsics
  - UB-related
- Evidence:
  - integer arithmetic: `%59 = sub nsw i32 %57, %58`
  - bitwise/shift: `%23 = xor i32 %22, -1`
  - comparisons: `%8 = icmp eq i32 %6, %7`
  - control flow: `br i1 %8, label %9, label %11`
  - recursion: `f_gold calls itself`
  - memory/pointer: `%3 = alloca i32, align 4`
  - calls/intrinsics: `%34 = call i32 @f_gold(i32 noundef %32, i32 noundef %33)`
  - UB-related: `define dso_local i32 @f_gold(i32 noundef %0, i32 noundef %1) #0 {`

## O1

- Status: ok
- Features:
  - integer arithmetic
  - bitwise/shift
  - comparisons
  - control flow
  - recursion
  - calls/intrinsics
  - UB-related
- Evidence:
  - integer arithmetic: `%28 = sub nsw i32 %0, %1`
  - bitwise/shift: `%9 = and i32 %0, 1`
  - comparisons: `%3 = icmp eq i32 %0, %1`
  - control flow: `br i1 %3, label %35, label %4`
  - recursion: `f_gold calls itself`
  - calls/intrinsics: `%16 = call i32 @f_gold(i32 noundef %14, i32 noundef %1)`
  - UB-related: `define dso_local i32 @f_gold(i32 noundef %0, i32 noundef %1) local_unnamed_addr #0 {`

## O2

- Status: ok
- Features:
  - integer arithmetic
  - bitwise/shift
  - comparisons
  - control flow
  - loop
  - recursion
  - calls/intrinsics
  - UB-related
- Evidence:
  - integer arithmetic: `%39 = sub nsw i32 %6, %11`
  - bitwise/shift: `%8 = and i32 %6, 1`
  - comparisons: `%3 = icmp eq i32 %0, %1`
  - control flow: `br i1 %3, label %23, label %4`
  - loop: `br i1 %22, label %23, label %4`
  - recursion: `f_gold calls itself`
  - calls/intrinsics: `%28 = tail call i32 @f_gold(i32 noundef %26, i32 noundef %27)`
  - UB-related: `define dso_local i32 @f_gold(i32 noundef %0, i32 noundef %1) local_unnamed_addr #0 {`

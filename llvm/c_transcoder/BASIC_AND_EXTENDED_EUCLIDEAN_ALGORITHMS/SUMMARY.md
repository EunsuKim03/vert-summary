# c_transcoder/BASIC_AND_EXTENDED_EUCLIDEAN_ALGORITHMS

- Source: `BASIC_AND_EXTENDED_EUCLIDEAN_ALGORITHMS_processed.c`
- Source note: processed source

## O0

- Status: ok
- Features: integer arithmetic, comparisons, control flow, recursion, memory/pointer, calls/intrinsics, UB-related
- Evidence:
  - integer arithmetic: `%13 = srem i32 %11, %12`
  - comparisons: `%7 = icmp eq i32 %6, 0`
  - control flow: `br i1 %7, label %8, label %10`
  - recursion: `f_gold calls itself`
  - memory/pointer: `%3 = alloca i32, align 4`
  - calls/intrinsics: `%15 = call i32 @f_gold(i32 noundef %13, i32 noundef %14)`
  - UB-related: `define dso_local i32 @f_gold(i32 noundef %0, i32 noundef %1) #0 {`

## O1

- Status: ok
- Features: integer arithmetic, comparisons, control flow, recursion, calls/intrinsics, UB-related
- Evidence:
  - integer arithmetic: `%5 = srem i32 %1, %0`
  - comparisons: `%3 = icmp eq i32 %0, 0`
  - control flow: `br i1 %3, label %7, label %4`
  - recursion: `f_gold calls itself`
  - calls/intrinsics: `%6 = call i32 @f_gold(i32 noundef %5, i32 noundef %0)`
  - UB-related: `define dso_local i32 @f_gold(i32 noundef %0, i32 noundef %1) local_unnamed_addr #0 {`

## O2

- Status: ok
- Features: integer arithmetic, comparisons, control flow, loop, UB-related
- Evidence:
  - integer arithmetic: `%7 = srem i32 %5, %6`
  - comparisons: `%3 = icmp eq i32 %0, 0`
  - control flow: `br i1 %3, label %9, label %4`
  - loop: `br i1 %8, label %9, label %4`
  - UB-related: `define dso_local i32 @f_gold(i32 noundef %0, i32 noundef %1) local_unnamed_addr #0 {`

# c_transcoder/HYPERCUBE_GRAPH

- Source: `HYPERCUBE_GRAPH_processed.c`
- Source note: processed source

## O0

- Status: ok
- Features:
  - integer arithmetic
  - comparisons
  - control flow
  - recursion
  - memory/pointer
  - calls/intrinsics
  - UB-related
- Evidence:
  - integer arithmetic: `%9 = sub nsw i32 %8, 1`
  - comparisons: `%5 = icmp eq i32 %4, 1`
  - control flow: `br i1 %5, label %6, label %7`
  - recursion: `f_gold calls itself`
  - memory/pointer: `%2 = alloca i32, align 4`
  - calls/intrinsics: `%10 = call i32 @f_gold(i32 noundef %9)`
  - UB-related: `define dso_local i32 @f_gold(i32 noundef %0) #0 {`

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
  - integer arithmetic: `%4 = add nsw i32 %0, -1`
  - bitwise/shift: `%6 = shl nsw i32 %5, 1`
  - comparisons: `%2 = icmp eq i32 %0, 1`
  - control flow: `br i1 %2, label %7, label %3`
  - recursion: `f_gold calls itself`
  - calls/intrinsics: `%5 = call i32 @f_gold(i32 noundef %4)`
  - UB-related: `define dso_local i32 @f_gold(i32 noundef %0) local_unnamed_addr #0 {`

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
  - integer arithmetic: `%6 = add nsw i32 %0, -1`
  - bitwise/shift: `%8 = shl nsw i32 %7, 1`
  - comparisons: `%2 = icmp eq i32 %0, 1`
  - control flow: `br i1 %2, label %3, label %5`
  - loop: `br label %3`
  - recursion: `f_gold calls itself`
  - calls/intrinsics: `%7 = tail call i32 @f_gold(i32 noundef %6)`
  - UB-related: `define dso_local i32 @f_gold(i32 noundef %0) local_unnamed_addr #0 {`

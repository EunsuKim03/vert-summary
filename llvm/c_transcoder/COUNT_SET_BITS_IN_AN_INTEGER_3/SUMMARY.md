# c_transcoder/COUNT_SET_BITS_IN_AN_INTEGER_3

- Source: `COUNT_SET_BITS_IN_AN_INTEGER_3_processed.c`
- Source note: processed source

## O0

- Status: ok
- Features: integer arithmetic, bitwise/shift, comparisons, control flow, recursion, memory/pointer, calls/intrinsics, UB-related
- Evidence:
  - integer arithmetic: `%10 = sub nsw i32 %9, 1`
  - bitwise/shift: `%11 = and i32 %8, %10`
  - comparisons: `%5 = icmp eq i32 %4, 0`
  - control flow: `br i1 %5, label %6, label %7`
  - recursion: `f_gold calls itself`
  - memory/pointer: `%2 = alloca i32, align 4`
  - calls/intrinsics: `%12 = call i32 @f_gold(i32 noundef %11)`
  - UB-related: `define dso_local i32 @f_gold(i32 noundef %0) #0 {`

## O1

- Status: ok
- Features: integer arithmetic, bitwise/shift, comparisons, control flow, recursion, calls/intrinsics, UB-related
- Evidence:
  - integer arithmetic: `%4 = add nsw i32 %0, -1`
  - bitwise/shift: `%5 = and i32 %4, %0`
  - comparisons: `%2 = icmp eq i32 %0, 0`
  - control flow: `br i1 %2, label %8, label %3`
  - recursion: `f_gold calls itself`
  - calls/intrinsics: `%6 = call i32 @f_gold(i32 noundef %5)`
  - UB-related: `define dso_local i32 @f_gold(i32 noundef %0) local_unnamed_addr #0 {`

## O2

- Status: ok
- Features: integer arithmetic, bitwise/shift, comparisons, control flow, loop, UB-related
- Evidence:
  - integer arithmetic: `%6 = add nsw i32 %4, -1`
  - bitwise/shift: `%7 = and i32 %6, %4`
  - comparisons: `%2 = icmp eq i32 %0, 0`
  - control flow: `br i1 %2, label %10, label %3`
  - loop: `br i1 %9, label %10, label %3`
  - UB-related: `define dso_local i32 @f_gold(i32 noundef %0) local_unnamed_addr #0 {`

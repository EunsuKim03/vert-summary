# c_transcoder/DIVISIBILITY_9_USING_BITWISE_OPERATORS

- Source: `DIVISIBILITY_9_USING_BITWISE_OPERATORS_processed.c`
- Source note: processed source

## O0

- Status: ok
- Features: integer arithmetic, bitwise/shift, comparisons, control flow, recursion, memory/pointer, calls/intrinsics, UB-related
- Evidence:
  - integer arithmetic: `%19 = sub nsw i32 %16, %18`
  - bitwise/shift: `%16 = ashr i32 %15, 3`
  - comparisons: `%5 = icmp eq i32 %4, 0`
  - control flow: `br i1 %5, label %9, label %6`
  - recursion: `f_gold calls itself`
  - memory/pointer: `%2 = alloca i32, align 4`
  - calls/intrinsics: `%20 = call i32 @f_gold(i32 noundef %19)`
  - UB-related: `define dso_local i32 @f_gold(i32 noundef %0) #0 {`

## O1

- Status: ok
- Features: integer arithmetic, bitwise/shift, comparisons, control flow, recursion, calls/intrinsics, UB-related
- Evidence:
  - integer arithmetic: `%7 = sub nsw i32 %5, %6`
  - bitwise/shift: `%5 = ashr i32 %0, 3`
  - comparisons: `%3 = icmp slt i32 %0, 9`
  - control flow: `switch i32 %0, label %2 [`
  - recursion: `f_gold calls itself`
  - calls/intrinsics: `%8 = call i32 @f_gold(i32 noundef %7)`
  - UB-related: `define dso_local i32 @f_gold(i32 noundef %0) local_unnamed_addr #0 {`

## O2

- Status: ok
- Features: integer arithmetic, bitwise/shift, comparisons, control flow, loop, UB-related
- Evidence:
  - integer arithmetic: `%9 = sub nsw i32 %7, %8`
  - bitwise/shift: `%7 = lshr i32 %3, 3`
  - comparisons: `%5 = icmp slt i32 %3, 9`
  - control flow: `br label %2`
  - loop: `br label %2`
  - UB-related: `define dso_local i32 @f_gold(i32 noundef %0) local_unnamed_addr #0 {`

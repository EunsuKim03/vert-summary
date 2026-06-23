# c_transcoder/FRIENDS_PAIRING_PROBLEM_2

- Source: `FRIENDS_PAIRING_PROBLEM_2_processed.c`
- Source note: processed source

## O0

- Status: ok
- Features: integer arithmetic, comparisons, control flow, loop, memory/pointer, UB-related
- Evidence:
  - integer arithmetic: `%20 = sub nsw i32 %19, 1`
  - comparisons: `%9 = icmp sle i32 %8, 2`
  - control flow: `br i1 %9, label %10, label %12`
  - loop: `llvm.loop metadata`
  - memory/pointer: `%2 = alloca i32, align 4`
  - UB-related: `define dso_local i32 @f_gold(i32 noundef %0) #0 {`

## O1

- Status: ok
- Features: integer arithmetic, comparisons, control flow, loop, UB-related
- Evidence:
  - integer arithmetic: `%7 = add nsw i32 %4, -1`
  - comparisons: `%2 = icmp slt i32 %0, 3`
  - control flow: `br i1 %2, label %12, label %3`
  - loop: `llvm.loop metadata`
  - UB-related: `define dso_local i32 @f_gold(i32 noundef %0) local_unnamed_addr #0 {`

## O2

- Status: ok
- Features: integer arithmetic, bitwise/shift, comparisons, control flow, loop, UB-related
- Evidence:
  - integer arithmetic: `%4 = add i32 %0, -2`
  - bitwise/shift: `%6 = and i32 %4, 3`
  - comparisons: `%2 = icmp slt i32 %0, 3`
  - control flow: `br i1 %2, label %46, label %3`
  - loop: `llvm.loop metadata`
  - UB-related: `define dso_local i32 @f_gold(i32 noundef %0) local_unnamed_addr #0 {`

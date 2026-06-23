# c_transcoder/PADOVAN_SEQUENCE

- Source: `PADOVAN_SEQUENCE_processed.c`
- Source note: processed source

## O0

- Status: ok
- Features: integer arithmetic, comparisons, control flow, loop, memory/pointer, UB-related
- Evidence:
  - integer arithmetic: `%15 = add nsw i32 %13, %14`
  - comparisons: `%11 = icmp sle i32 %9, %10`
  - control flow: `br label %8`
  - loop: `llvm.loop metadata`
  - memory/pointer: `%2 = alloca i32, align 4`
  - UB-related: `define dso_local i32 @f_gold(i32 noundef %0) #0 {`

## O1

- Status: ok
- Features: integer arithmetic, comparisons, control flow, loop, UB-related
- Evidence:
  - integer arithmetic: `%10 = add nsw i32 %8, %9`
  - comparisons: `%2 = icmp slt i32 %0, 3`
  - control flow: `br i1 %2, label %3, label %5`
  - loop: `llvm.loop metadata`
  - UB-related: `define dso_local i32 @f_gold(i32 noundef %0) local_unnamed_addr #0 {`

## O2

- Status: ok
- Features: integer arithmetic, bitwise/shift, comparisons, control flow, loop, UB-related
- Evidence:
  - integer arithmetic: `%4 = add i32 %0, -2`
  - bitwise/shift: `%6 = and i32 %4, 7`
  - comparisons: `%2 = icmp slt i32 %0, 3`
  - control flow: `br i1 %2, label %24, label %3`
  - loop: `llvm.loop metadata`
  - UB-related: `define dso_local i32 @f_gold(i32 noundef %0) local_unnamed_addr #0 {`

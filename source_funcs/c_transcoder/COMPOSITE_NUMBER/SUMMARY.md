# c_transcoder/COMPOSITE_NUMBER

- Source: `COMPOSITE_NUMBER_processed.c`
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
  - integer arithmetic: `%14 = srem i32 %13, 2`
  - comparisons: `%6 = icmp sle i32 %5, 1`
  - control flow: `br i1 %6, label %7, label %8`
  - loop: `llvm.loop metadata`
  - memory/pointer: `%2 = alloca i32, align 4`
  - UB-related: `define dso_local i32 @f_gold(i32 noundef %0) #0 {`

## O1

- Status: ok
- Features:
  - integer arithmetic
  - bitwise/shift
  - comparisons
  - control flow
  - loop
  - UB-related
- Evidence:
  - integer arithmetic: `%6 = srem i32 %0, 3`
  - bitwise/shift: `%4 = and i32 %0, 1`
  - comparisons: `%2 = icmp slt i32 %0, 4`
  - control flow: `br i1 %2, label %23, label %3`
  - loop: `llvm.loop metadata`
  - UB-related: `define dso_local i32 @f_gold(i32 noundef %0) local_unnamed_addr #0 {`

## O2

- Status: ok
- Features:
  - integer arithmetic
  - bitwise/shift
  - comparisons
  - control flow
  - loop
  - UB-related
- Evidence:
  - integer arithmetic: `%6 = urem i32 %0, 3`
  - bitwise/shift: `%4 = and i32 %0, 1`
  - comparisons: `%2 = icmp slt i32 %0, 4`
  - control flow: `br i1 %2, label %23, label %3`
  - loop: `llvm.loop metadata`
  - UB-related: `define dso_local i32 @f_gold(i32 noundef %0) local_unnamed_addr #0 {`

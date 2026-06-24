# c_transcoder/FIND_SUM_MODULO_K_FIRST_N_NATURAL_NUMBER

- Source: `FIND_SUM_MODULO_K_FIRST_N_NATURAL_NUMBER_processed.c`
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
  - integer arithmetic: `%14 = srem i32 %12, %13`
  - comparisons: `%10 = icmp sle i32 %8, %9`
  - control flow: `br label %7`
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
  - UB-related
- Evidence:
  - integer arithmetic: `%9 = srem i32 %7, %1`
  - comparisons: `%3 = icmp slt i32 %0, 1`
  - control flow: `br i1 %3, label %4, label %6`
  - loop: `llvm.loop metadata`
  - UB-related: `define dso_local i32 @f_gold(i32 noundef %0, i32 noundef %1) local_unnamed_addr #0 {`

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
  - integer arithmetic: `%5 = add i32 %0, -1`
  - bitwise/shift: `%6 = and i32 %0, 3`
  - comparisons: `%3 = icmp slt i32 %0, 1`
  - control flow: `br i1 %3, label %24, label %4`
  - loop: `llvm.loop metadata`
  - UB-related: `define dso_local i32 @f_gold(i32 noundef %0, i32 noundef %1) local_unnamed_addr #0 {`

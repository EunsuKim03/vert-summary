# c_transcoder/SUM_DIVISORS_1_N_1

- Source: `SUM_DIVISORS_1_N_1_processed.c`
- Source note: processed source

## O0

- Status: ok
- Features: integer arithmetic, comparisons, control flow, loop, memory/pointer, UB-related
- Evidence:
  - integer arithmetic: `%12 = sdiv i32 %10, %11`
  - comparisons: `%8 = icmp sle i32 %6, %7`
  - control flow: `br label %5`
  - loop: `llvm.loop metadata`
  - memory/pointer: `%2 = alloca i32, align 4`
  - UB-related: `define dso_local i32 @f_gold(i32 noundef %0) #0 {`

## O1

- Status: ok
- Features: integer arithmetic, comparisons, control flow, loop, UB-related
- Evidence:
  - integer arithmetic: `%8 = srem i32 %0, %6`
  - comparisons: `%2 = icmp slt i32 %0, 1`
  - control flow: `br i1 %2, label %3, label %5`
  - loop: `llvm.loop metadata`
  - UB-related: `define dso_local i32 @f_gold(i32 noundef %0) local_unnamed_addr #0 {`

## O2

- Status: ok
- Features: integer arithmetic, bitwise/shift, comparisons, control flow, loop, UB-related
- Evidence:
  - integer arithmetic: `%15 = srem i32 %0, %11`
  - bitwise/shift: `%4 = and i32 %0, 1`
  - comparisons: `%2 = icmp slt i32 %0, 1`
  - control flow: `br i1 %2, label %18, label %3`
  - loop: `llvm.loop metadata`
  - UB-related: `define dso_local i32 @f_gold(i32 noundef %0) local_unnamed_addr #0 {`

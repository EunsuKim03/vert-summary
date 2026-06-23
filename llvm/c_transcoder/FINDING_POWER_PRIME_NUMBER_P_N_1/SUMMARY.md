# c_transcoder/FINDING_POWER_PRIME_NUMBER_P_N_1

- Source: `FINDING_POWER_PRIME_NUMBER_P_N_1_processed.c`
- Source note: processed source

## O0

- Status: ok
- Features: integer arithmetic, comparisons, control flow, loop, memory/pointer, UB-related
- Evidence:
  - integer arithmetic: `%15 = sdiv i32 %13, %14`
  - comparisons: `%11 = icmp sle i32 %9, %10`
  - control flow: `br label %8`
  - loop: `llvm.loop metadata`
  - memory/pointer: `%3 = alloca i32, align 4`
  - UB-related: `define dso_local i32 @f_gold(i32 noundef %0, i32 noundef %1) #0 {`

## O1

- Status: ok
- Features: integer arithmetic, comparisons, control flow, loop, UB-related
- Evidence:
  - integer arithmetic: `%7 = sdiv i32 %0, %5`
  - comparisons: `%3 = icmp sgt i32 %1, %0`
  - control flow: `br i1 %3, label %11, label %4`
  - loop: `llvm.loop metadata`
  - UB-related: `define dso_local i32 @f_gold(i32 noundef %0, i32 noundef %1) local_unnamed_addr #0 {`

## O2

- Status: ok
- Features: integer arithmetic, comparisons, control flow, loop, UB-related
- Evidence:
  - integer arithmetic: `%7 = sdiv i32 %0, %5`
  - comparisons: `%3 = icmp sgt i32 %1, %0`
  - control flow: `br i1 %3, label %11, label %4`
  - loop: `llvm.loop metadata`
  - UB-related: `define dso_local i32 @f_gold(i32 noundef %0, i32 noundef %1) local_unnamed_addr #0 {`

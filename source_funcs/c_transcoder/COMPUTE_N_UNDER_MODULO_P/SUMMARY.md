# c_transcoder/COMPUTE_N_UNDER_MODULO_P

- Source: `COMPUTE_N_UNDER_MODULO_P_processed.c`
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
  - integer arithmetic: `%20 = mul nsw i32 %18, %19`
  - comparisons: `%10 = icmp sge i32 %8, %9`
  - control flow: `br i1 %10, label %11, label %12`
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
  - integer arithmetic: `%9 = mul nsw i32 %7, %8`
  - comparisons: `%3 = icmp slt i32 %0, %1`
  - control flow: `br i1 %3, label %4, label %13`
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
  - integer arithmetic: `%7 = add i32 %0, -1`
  - bitwise/shift: `%8 = and i32 %0, 3`
  - comparisons: `%3 = icmp slt i32 %0, %1`
  - control flow: `br i1 %3, label %4, label %44`
  - loop: `llvm.loop metadata`
  - UB-related: `define dso_local i32 @f_gold(i32 noundef %0, i32 noundef %1) local_unnamed_addr #0 {`

# c_transcoder/COUNT_FACTORIAL_NUMBERS_IN_A_GIVEN_RANGE

- Source: `COUNT_FACTORIAL_NUMBERS_IN_A_GIVEN_RANGE_processed.c`
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
  - integer arithmetic: `%15 = mul nsw i32 %13, %14`
  - comparisons: `%11 = icmp slt i32 %9, %10`
  - control flow: `br label %8`
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
  - integer arithmetic: `%11 = mul nsw i32 %9, %10`
  - comparisons: `%3 = icmp sgt i32 %0, 1`
  - control flow: `br i1 %3, label %8, label %4`
  - loop: `llvm.loop metadata`
  - UB-related: `define dso_local i32 @f_gold(i32 noundef %0, i32 noundef %1) local_unnamed_addr #0 {`

## O2

- Status: ok
- Features:
  - integer arithmetic
  - comparisons
  - control flow
  - loop
  - UB-related
- Evidence:
  - integer arithmetic: `%11 = mul nsw i32 %9, %10`
  - comparisons: `%3 = icmp sgt i32 %0, 1`
  - control flow: `br i1 %3, label %8, label %4`
  - loop: `llvm.loop metadata`
  - UB-related: `define dso_local i32 @f_gold(i32 noundef %0, i32 noundef %1) local_unnamed_addr #0 {`

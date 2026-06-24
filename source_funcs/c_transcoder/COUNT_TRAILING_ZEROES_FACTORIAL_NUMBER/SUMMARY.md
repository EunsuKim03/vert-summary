# c_transcoder/COUNT_TRAILING_ZEROES_FACTORIAL_NUMBER

- Source: `COUNT_TRAILING_ZEROES_FACTORIAL_NUMBER_processed.c`
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
  - integer arithmetic: `%8 = sdiv i32 %6, %7`
  - comparisons: `%9 = icmp sge i32 %8, 1`
  - control flow: `br label %5`
  - loop: `llvm.loop metadata`
  - memory/pointer: `%2 = alloca i32, align 4`
  - UB-related: `define dso_local i32 @f_gold(i32 noundef %0) #0 {`

## O1

- Status: ok
- Features:
  - integer arithmetic
  - comparisons
  - control flow
  - loop
  - UB-related
- Evidence:
  - integer arithmetic: `%4 = sdiv i32 %0, 5`
  - comparisons: `%2 = icmp sgt i32 %0, 4`
  - control flow: `br i1 %2, label %3, label %5`
  - loop: `llvm.loop metadata`
  - UB-related: `define dso_local i32 @f_gold(i32 noundef %0) local_unnamed_addr #0 {`

## O2

- Status: ok
- Features:
  - integer arithmetic
  - comparisons
  - control flow
  - loop
  - UB-related
- Evidence:
  - integer arithmetic: `%4 = udiv i32 %0, 5`
  - comparisons: `%2 = icmp sgt i32 %0, 4`
  - control flow: `br i1 %2, label %3, label %5`
  - loop: `llvm.loop metadata`
  - UB-related: `define dso_local i32 @f_gold(i32 noundef %0) local_unnamed_addr #0 {`

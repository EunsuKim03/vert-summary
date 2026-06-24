# c_transcoder/MULTIPLY_LARGE_INTEGERS_UNDER_LARGE_MODULO

- Source: `MULTIPLY_LARGE_INTEGERS_UNDER_LARGE_MODULO_processed.c`
- Source note: processed source

## O0

- Status: ok
- Features:
  - integer arithmetic
  - bitwise/shift
  - comparisons
  - control flow
  - loop
  - memory/pointer
  - UB-related
- Evidence:
  - integer arithmetic: `%10 = srem i64 %9, %8`
  - bitwise/shift: `%16 = and i64 %15, 1`
  - comparisons: `%13 = icmp ne i64 %12, 0`
  - control flow: `br label %11`
  - loop: `llvm.loop metadata`
  - memory/pointer: `%4 = alloca i64, align 8`
  - UB-related: `define dso_local i64 @f_gold(i64 noundef %0, i64 noundef %1, i64 noundef %2) #0 {`

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
  - integer arithmetic: `%9 = srem i64 %6, %2`
  - bitwise/shift: `%10 = and i64 %8, 1`
  - comparisons: `%4 = icmp eq i64 %1, 0`
  - control flow: `br i1 %4, label %20, label %5`
  - loop: `llvm.loop metadata`
  - UB-related: `define dso_local i64 @f_gold(i64 noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #0 {`

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
  - integer arithmetic: `%9 = srem i64 %6, %2`
  - bitwise/shift: `%10 = and i64 %8, 1`
  - comparisons: `%4 = icmp eq i64 %1, 0`
  - control flow: `br i1 %4, label %20, label %5`
  - loop: `llvm.loop metadata`
  - UB-related: `define dso_local i64 @f_gold(i64 noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #0 {`

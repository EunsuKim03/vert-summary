# c_transcoder/MODULAR_EXPONENTIATION_POWER_IN_MODULAR_ARITHMETIC

- Source: `MODULAR_EXPONENTIATION_POWER_IN_MODULAR_ARITHMETIC_processed.c`
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
  - integer arithmetic: `%10 = srem i32 %8, %9`
  - bitwise/shift: `%16 = and i32 %15, 1`
  - comparisons: `%13 = icmp ugt i32 %12, 0`
  - control flow: `br label %11`
  - loop: `llvm.loop metadata`
  - memory/pointer: `%4 = alloca i32, align 4`
  - UB-related: `define dso_local i32 @f_gold(i32 noundef %0, i32 noundef %1, i32 noundef %2) #0 {`

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
  - integer arithmetic: `%9 = srem i32 %6, %2`
  - bitwise/shift: `%10 = and i32 %8, 1`
  - comparisons: `%4 = icmp eq i32 %1, 0`
  - control flow: `br i1 %4, label %20, label %5`
  - loop: `llvm.loop metadata`
  - UB-related: `define dso_local i32 @f_gold(i32 noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {`

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
  - integer arithmetic: `%9 = srem i32 %6, %2`
  - bitwise/shift: `%10 = and i32 %8, 1`
  - comparisons: `%4 = icmp eq i32 %1, 0`
  - control flow: `br i1 %4, label %20, label %5`
  - loop: `llvm.loop metadata`
  - UB-related: `define dso_local i32 @f_gold(i32 noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {`

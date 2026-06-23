# c_transcoder/CHECK_NUMBER_POWER_K_USING_BASE_CHANGING_METHOD

- Source: `CHECK_NUMBER_POWER_K_USING_BASE_CHANGING_METHOD_processed.c`
- Source note: processed source

## O0

- Status: ok
- Features: integer arithmetic, comparisons, control flow, loop, memory/pointer, casts/conversions, UB-related
- Evidence:
  - integer arithmetic: `%14 = urem i32 %12, %13`
  - comparisons: `%10 = icmp ugt i32 %9, 0`
  - control flow: `br label %8`
  - loop: `llvm.loop metadata`
  - memory/pointer: `%3 = alloca i32, align 4`
  - casts/conversions: `%23 = trunc i8 %22 to i1`
  - UB-related: `define dso_local i32 @f_gold(i32 noundef %0, i32 noundef %1) #0 {`

## O1

- Status: ok
- Features: integer arithmetic, bitwise/shift, comparisons, control flow, loop, UB-related
- Evidence:
  - integer arithmetic: `%8 = urem i32 %4, %1`
  - bitwise/shift: `%14 = and i8 %5, 1`
  - comparisons: `%6 = icmp eq i32 %4, 0`
  - control flow: `br label %3`
  - loop: `llvm.loop metadata`
  - UB-related: `define dso_local i32 @f_gold(i32 noundef %0, i32 noundef %1) local_unnamed_addr #0 {`

## O2

- Status: ok
- Features: integer arithmetic, bitwise/shift, comparisons, control flow, loop, UB-related
- Evidence:
  - integer arithmetic: `%7 = urem i32 %6, %1`
  - bitwise/shift: `%13 = and i8 %5, 1`
  - comparisons: `%3 = icmp eq i32 %0, 0`
  - control flow: `br i1 %3, label %18, label %4`
  - loop: `llvm.loop metadata`
  - UB-related: `define dso_local i32 @f_gold(i32 noundef %0, i32 noundef %1) local_unnamed_addr #0 {`

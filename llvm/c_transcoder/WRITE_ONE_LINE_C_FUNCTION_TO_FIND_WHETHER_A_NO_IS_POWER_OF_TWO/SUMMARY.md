# c_transcoder/WRITE_ONE_LINE_C_FUNCTION_TO_FIND_WHETHER_A_NO_IS_POWER_OF_TWO

- Source: `WRITE_ONE_LINE_C_FUNCTION_TO_FIND_WHETHER_A_NO_IS_POWER_OF_TWO_processed.c`
- Source note: processed source

## O0

- Status: ok
- Features: integer arithmetic, comparisons, control flow, loop, memory/pointer, UB-related
- Evidence:
  - integer arithmetic: `%13 = srem i32 %12, 2`
  - comparisons: `%5 = icmp eq i32 %4, 0`
  - control flow: `br i1 %5, label %6, label %7`
  - loop: `llvm.loop metadata`
  - memory/pointer: `%2 = alloca i32, align 4`
  - UB-related: `define dso_local i32 @f_gold(i32 noundef %0) #0 {`

## O1

- Status: ok
- Features: integer arithmetic, bitwise/shift, comparisons, control flow, loop, UB-related
- Evidence:
  - integer arithmetic: `%8 = sdiv i32 %4, 2`
  - bitwise/shift: `%5 = and i32 %4, 1`
  - comparisons: `%2 = icmp ult i32 %0, 2`
  - control flow: `br i1 %2, label %11, label %3`
  - loop: `llvm.loop metadata`
  - UB-related: `define dso_local i32 @f_gold(i32 noundef %0) local_unnamed_addr #0 {`

## O2

- Status: ok
- Features: integer arithmetic, bitwise/shift, comparisons, control flow, loop, UB-related
- Evidence:
  - integer arithmetic: `%8 = sdiv i32 %4, 2`
  - bitwise/shift: `%5 = and i32 %4, 1`
  - comparisons: `%2 = icmp ult i32 %0, 2`
  - control flow: `br i1 %2, label %11, label %3`
  - loop: `llvm.loop metadata`
  - UB-related: `define dso_local i32 @f_gold(i32 noundef %0) local_unnamed_addr #0 {`

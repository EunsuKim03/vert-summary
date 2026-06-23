# c_transcoder/COUNT_SET_BITS_IN_AN_INTEGER

- Source: `COUNT_SET_BITS_IN_AN_INTEGER_processed.c`
- Source note: processed source

## O0

- Status: ok
- Features: integer arithmetic, bitwise/shift, comparisons, control flow, loop, memory/pointer, UB-related
- Evidence:
  - integer arithmetic: `%11 = add i32 %10, %9`
  - bitwise/shift: `%9 = and i32 %8, 1`
  - comparisons: `%6 = icmp ne i32 %5, 0`
  - control flow: `br label %4`
  - loop: `llvm.loop metadata`
  - memory/pointer: `%2 = alloca i32, align 4`
  - UB-related: `define dso_local i32 @f_gold(i32 noundef %0) #0 {`

## O1

- Status: ok
- Features: integer arithmetic, bitwise/shift, comparisons, control flow, loop, UB-related
- Evidence:
  - integer arithmetic: `%7 = add i32 %4, %6`
  - bitwise/shift: `%6 = and i32 %5, 1`
  - comparisons: `%2 = icmp eq i32 %0, 0`
  - control flow: `br i1 %2, label %10, label %3`
  - loop: `llvm.loop metadata`
  - UB-related: `define dso_local i32 @f_gold(i32 noundef %0) local_unnamed_addr #0 {`

## O2

- Status: ok
- Features: integer arithmetic, bitwise/shift, comparisons, control flow, loop, UB-related
- Evidence:
  - integer arithmetic: `%7 = add i32 %4, %6`
  - bitwise/shift: `%6 = and i32 %5, 1`
  - comparisons: `%2 = icmp eq i32 %0, 0`
  - control flow: `br i1 %2, label %10, label %3`
  - loop: `llvm.loop metadata`
  - UB-related: `define dso_local i32 @f_gold(i32 noundef %0) local_unnamed_addr #0 {`

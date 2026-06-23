# c_transcoder/TRIANGULAR_NUMBERS

- Source: `TRIANGULAR_NUMBERS_processed.c`
- Source note: processed source

## O0

- Status: ok
- Features: integer arithmetic, comparisons, control flow, loop, memory/pointer, UB-related
- Evidence:
  - integer arithmetic: `%17 = add nsw i32 %15, %16`
  - comparisons: `%7 = icmp slt i32 %6, 0`
  - control flow: `br i1 %7, label %8, label %9`
  - loop: `llvm.loop metadata`
  - memory/pointer: `%2 = alloca i32, align 4`
  - UB-related: `define dso_local i32 @f_gold(i32 noundef %0) #0 {`

## O1

- Status: ok
- Features: integer arithmetic, bitwise/shift, comparisons, control flow, loop, casts/conversions, UB-related
- Evidence:
  - integer arithmetic: `%8 = add nuw nsw i32 %7, 1`
  - bitwise/shift: `%14 = xor i1 %9, true`
  - comparisons: `%2 = icmp slt i32 %0, 0`
  - control flow: `br i1 %2, label %16, label %3`
  - loop: `llvm.loop metadata`
  - casts/conversions: `%15 = zext i1 %14 to i32`
  - UB-related: `define dso_local i32 @f_gold(i32 noundef %0) local_unnamed_addr #0 {`

## O2

- Status: ok
- Features: integer arithmetic, comparisons, control flow, loop, casts/conversions, UB-related
- Evidence:
  - integer arithmetic: `%6 = add nuw nsw i32 %4, %5`
  - comparisons: `%2 = icmp slt i32 %0, 0`
  - control flow: `br i1 %2, label %12, label %3`
  - loop: `llvm.loop metadata`
  - casts/conversions: `%11 = zext i1 %10 to i32`
  - UB-related: `define dso_local i32 @f_gold(i32 noundef %0) local_unnamed_addr #0 {`

# c_transcoder/FIND_LAST_DIGIT_FACTORIAL_DIVIDES_FACTORIAL_B

- Source: `FIND_LAST_DIGIT_FACTORIAL_DIVIDES_FACTORIAL_B_processed.c`
- Source note: processed source

## O0

- Status: ok
- Features: integer arithmetic, comparisons, control flow, loop, memory/pointer, casts/conversions, UB-related
- Evidence:
  - integer arithmetic: `%15 = sub nsw i64 %13, %14`
  - comparisons: `%10 = icmp eq i64 %8, %9`
  - control flow: `br i1 %10, label %11, label %12`
  - loop: `llvm.loop metadata`
  - memory/pointer: `%3 = alloca i32, align 4`
  - casts/conversions: `%27 = sext i32 %26 to i64`
  - UB-related: `define dso_local i32 @f_gold(i64 noundef %0, i64 noundef %1) #0 {`

## O1

- Status: ok
- Features: integer arithmetic, comparisons, control flow, loop, casts/conversions, UB-related
- Evidence:
  - integer arithmetic: `%5 = sub nsw i64 %1, %0`
  - comparisons: `%3 = icmp eq i64 %1, %0`
  - control flow: `br i1 %3, label %20, label %4`
  - loop: `llvm.loop metadata`
  - casts/conversions: `%10 = trunc i64 %18 to i32`
  - UB-related: `define dso_local i32 @f_gold(i64 noundef %0, i64 noundef %1) local_unnamed_addr #0 {`

## O2

- Status: ok
- Features: integer arithmetic, bitwise/shift, comparisons, control flow, loop, casts/conversions, UB-related
- Evidence:
  - integer arithmetic: `%5 = sub i64 %1, %0`
  - bitwise/shift: `%10 = xor i64 %0, -1`
  - comparisons: `%3 = icmp eq i64 %1, %0`
  - control flow: `br i1 %3, label %45, label %4`
  - loop: `llvm.loop metadata`
  - casts/conversions: `%28 = trunc i64 %27 to i8`
  - UB-related: `define dso_local i32 @f_gold(i64 noundef %0, i64 noundef %1) local_unnamed_addr #0 {`

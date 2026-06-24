# c_transcoder/WRITE_A_C_PROGRAM_TO_FIND_THE_PARITY_OF_AN_UNSIGNED_INTEGER

- Source: `WRITE_A_C_PROGRAM_TO_FIND_THE_PARITY_OF_AN_UNSIGNED_INTEGER_processed.c`
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
  - casts/conversions
  - UB-related
- Evidence:
  - integer arithmetic: `%14 = sub i32 %13, 1`
  - bitwise/shift: `%10 = xor i1 %9, true`
  - comparisons: `%6 = icmp ne i32 %5, 0`
  - control flow: `br label %4`
  - loop: `llvm.loop metadata`
  - memory/pointer: `%2 = alloca i32, align 4`
  - casts/conversions: `%9 = trunc i8 %8 to i1`
  - UB-related: `define dso_local i32 @f_gold(i32 noundef %0) #0 {`

## O1

- Status: ok
- Features:
  - integer arithmetic
  - bitwise/shift
  - comparisons
  - control flow
  - loop
  - casts/conversions
  - UB-related
- Evidence:
  - integer arithmetic: `%7 = add i32 %5, -1`
  - bitwise/shift: `%6 = xor i1 %4, true`
  - comparisons: `%2 = icmp eq i32 %0, 0`
  - control flow: `br i1 %2, label %12, label %3`
  - loop: `llvm.loop metadata`
  - casts/conversions: `%11 = zext i1 %6 to i32`
  - UB-related: `define dso_local i32 @f_gold(i32 noundef %0) local_unnamed_addr #0 {`

## O2

- Status: ok
- Features:
  - integer arithmetic
  - bitwise/shift
  - comparisons
  - control flow
  - loop
  - casts/conversions
  - UB-related
- Evidence:
  - integer arithmetic: `%7 = add i32 %5, -1`
  - bitwise/shift: `%6 = xor i1 %4, true`
  - comparisons: `%2 = icmp eq i32 %0, 0`
  - control flow: `br i1 %2, label %12, label %3`
  - loop: `llvm.loop metadata`
  - casts/conversions: `%11 = zext i1 %6 to i32`
  - UB-related: `define dso_local i32 @f_gold(i32 noundef %0) local_unnamed_addr #0 {`

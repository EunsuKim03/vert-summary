# c_transcoder/NUMBER_IS_DIVISIBLE_BY_29_OR_NOT

- Source: `NUMBER_IS_DIVISIBLE_BY_29_OR_NOT_processed.c`
- Source note: processed source

## O0

- Status: ok
- Features:
  - integer arithmetic
  - comparisons
  - control flow
  - loop
  - memory/pointer
  - casts/conversions
  - UB-related
- Evidence:
  - integer arithmetic: `%6 = sdiv i64 %5, 100`
  - comparisons: `%7 = icmp ne i64 %6, 0`
  - control flow: `br label %4`
  - loop: `llvm.loop metadata`
  - memory/pointer: `%2 = alloca i64, align 8`
  - casts/conversions: `%11 = trunc i64 %10 to i32`
  - UB-related: `define dso_local i32 @f_gold(i64 noundef %0) #0 {`

## O1

- Status: ok
- Features:
  - integer arithmetic
  - comparisons
  - control flow
  - loop
  - casts/conversions
  - UB-related
- Evidence:
  - integer arithmetic: `%2 = add i64 %0, 99`
  - comparisons: `%3 = icmp ult i64 %2, 199`
  - control flow: `br i1 %3, label %12, label %4`
  - loop: `llvm.loop metadata`
  - casts/conversions: `%16 = zext i1 %15 to i32`
  - UB-related: `define dso_local i32 @f_gold(i64 noundef %0) local_unnamed_addr #0 {`

## O2

- Status: ok
- Features:
  - integer arithmetic
  - comparisons
  - control flow
  - loop
  - casts/conversions
  - UB-related
- Evidence:
  - integer arithmetic: `%2 = add i64 %0, 99`
  - comparisons: `%3 = icmp ult i64 %2, 199`
  - control flow: `br i1 %3, label %12, label %4`
  - loop: `llvm.loop metadata`
  - casts/conversions: `%14 = trunc i64 %13 to i8`
  - UB-related: `define dso_local i32 @f_gold(i64 noundef %0) local_unnamed_addr #0 {`

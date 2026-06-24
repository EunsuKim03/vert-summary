# c_transcoder/PROGRAM_PRINT_SUM_GIVEN_NTH_TERM

- Source: `PROGRAM_PRINT_SUM_GIVEN_NTH_TERM_processed.c`
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
  - integer arithmetic: `%13 = mul nsw i32 %11, %12`
  - comparisons: `%9 = icmp sle i64 %7, %8`
  - control flow: `br label %5`
  - loop: `llvm.loop metadata`
  - memory/pointer: `%2 = alloca i64, align 8`
  - casts/conversions: `%7 = sext i32 %6 to i64`
  - UB-related: `define dso_local i32 @f_gold(i64 noundef %0) #0 {`

## O1

- Status: ok
- Features:
  - integer arithmetic
  - bitwise/shift
  - comparisons
  - control flow
  - casts/conversions
  - UB-related
- Evidence:
  - integer arithmetic: `%4 = add nsw i64 %0, 1`
  - bitwise/shift: `%12 = and i32 %11, -2`
  - comparisons: `%2 = icmp slt i64 %0, 1`
  - control flow: `br i1 %2, label %15, label %3`
  - casts/conversions: `%5 = trunc i64 %4 to i33`
  - UB-related: `define dso_local i32 @f_gold(i64 noundef %0) local_unnamed_addr #0 {`

## O2

- Status: ok
- Features:
  - integer arithmetic
  - bitwise/shift
  - comparisons
  - control flow
  - casts/conversions
  - UB-related
- Evidence:
  - integer arithmetic: `%4 = add nuw nsw i64 %0, 1`
  - bitwise/shift: `%12 = and i32 %11, -2`
  - comparisons: `%2 = icmp slt i64 %0, 1`
  - control flow: `br i1 %2, label %15, label %3`
  - casts/conversions: `%5 = trunc i64 %4 to i32`
  - UB-related: `define dso_local i32 @f_gold(i64 noundef %0) local_unnamed_addr #0 {`

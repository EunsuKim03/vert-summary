# c_transcoder/FIND_LARGEST_PRIME_FACTOR_NUMBER

- Source: `FIND_LARGEST_PRIME_FACTOR_NUMBER_processed.c`
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
  - calls/intrinsics
  - UB-related
  - external declarations
- Evidence:
  - integer arithmetic: `%7 = srem i64 %6, 2`
  - bitwise/shift: `%11 = ashr i64 %10, 1`
  - comparisons: `%8 = icmp eq i64 %7, 0`
  - control flow: `br label %5`
  - loop: `llvm.loop metadata`
  - memory/pointer: `%2 = alloca i64, align 8`
  - casts/conversions: `%15 = sitofp i32 %14 to double`
  - calls/intrinsics: `%18 = call double @sqrt(double noundef %17) #2`
  - UB-related: `define dso_local i64 @f_gold(i64 noundef %0) #0 {`
  - external declarations: `declare double @sqrt(double noundef) #1`

## O1

- Status: ok
- Features:
  - integer arithmetic
  - bitwise/shift
  - comparisons
  - control flow
  - loop
  - casts/conversions
  - calls/intrinsics
  - UB-related
  - external declarations
- Evidence:
  - integer arithmetic: `%16 = srem i64 %15, %13`
  - bitwise/shift: `%5 = and i64 %3, 1`
  - comparisons: `%6 = icmp eq i64 %5, 0`
  - control flow: `br label %2`
  - loop: `llvm.loop metadata`
  - casts/conversions: `%9 = sitofp i64 %3 to double`
  - calls/intrinsics: `%10 = call double @sqrt(double noundef %9) #2`
  - UB-related: `define dso_local i64 @f_gold(i64 noundef %0) local_unnamed_addr #0 {`
  - external declarations: `declare double @sqrt(double noundef) local_unnamed_addr #1`

## O2

- Status: ok
- Features:
  - integer arithmetic
  - bitwise/shift
  - comparisons
  - control flow
  - loop
  - casts/conversions
  - calls/intrinsics
  - UB-related
  - external declarations
- Evidence:
  - integer arithmetic: `%19 = srem i64 %18, %16`
  - bitwise/shift: `%2 = and i64 %0, 1`
  - comparisons: `%3 = icmp eq i64 %2, 0`
  - control flow: `br i1 %3, label %4, label %9`
  - loop: `llvm.loop metadata`
  - casts/conversions: `%12 = sitofp i64 %10 to double`
  - calls/intrinsics: `%13 = tail call double @sqrt(double noundef %12) #2`
  - UB-related: `define dso_local i64 @f_gold(i64 noundef %0) local_unnamed_addr #0 {`
  - external declarations: `declare double @sqrt(double noundef) local_unnamed_addr #1`

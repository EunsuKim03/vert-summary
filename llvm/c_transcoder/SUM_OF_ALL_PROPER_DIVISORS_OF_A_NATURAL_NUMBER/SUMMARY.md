# c_transcoder/SUM_OF_ALL_PROPER_DIVISORS_OF_A_NATURAL_NUMBER

- Source: `SUM_OF_ALL_PROPER_DIVISORS_OF_A_NATURAL_NUMBER_processed.c`
- Source note: processed source

## O0

- Status: ok
- Features: integer arithmetic, comparisons, control flow, loop, memory/pointer, casts/conversions, calls/intrinsics, UB-related, external declarations
- Evidence:
  - integer arithmetic: `%15 = srem i32 %13, %14`
  - comparisons: `%11 = fcmp ole double %7, %10`
  - control flow: `br label %5`
  - loop: `llvm.loop metadata`
  - memory/pointer: `%2 = alloca i32, align 4`
  - casts/conversions: `%7 = sitofp i32 %6 to double`
  - calls/intrinsics: `%10 = call double @sqrt(double noundef %9) #2`
  - UB-related: `define dso_local i32 @f_gold(i32 noundef %0) #0 {`
  - external declarations: `declare double @sqrt(double noundef) #1`

## O1

- Status: ok
- Features: integer arithmetic, comparisons, control flow, loop, casts/conversions, calls/intrinsics, UB-related, external declarations
- Evidence:
  - integer arithmetic: `%7 = add nsw i32 %6, 1`
  - comparisons: `%4 = fcmp ult double %3, 2.000000e+00`
  - control flow: `br i1 %4, label %5, label %8`
  - loop: `llvm.loop metadata`
  - casts/conversions: `%2 = sitofp i32 %0 to double`
  - calls/intrinsics: `%3 = call double @sqrt(double noundef %2) #2`
  - UB-related: `define dso_local i32 @f_gold(i32 noundef %0) local_unnamed_addr #0 {`
  - external declarations: `declare double @sqrt(double noundef) local_unnamed_addr #1`

## O2

- Status: ok
- Features: integer arithmetic, comparisons, control flow, loop, casts/conversions, calls/intrinsics, UB-related, external declarations
- Evidence:
  - integer arithmetic: `%7 = add nsw i32 %6, 1`
  - comparisons: `%4 = fcmp ult double %3, 2.000000e+00`
  - control flow: `br i1 %4, label %5, label %8`
  - loop: `llvm.loop metadata`
  - casts/conversions: `%2 = sitofp i32 %0 to double`
  - calls/intrinsics: `%3 = tail call double @sqrt(double noundef %2) #2`
  - UB-related: `define dso_local i32 @f_gold(i32 noundef %0) local_unnamed_addr #0 {`
  - external declarations: `declare double @sqrt(double noundef) local_unnamed_addr #1`

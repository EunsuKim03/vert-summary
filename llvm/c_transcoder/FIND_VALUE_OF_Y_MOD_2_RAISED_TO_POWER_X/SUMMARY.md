# c_transcoder/FIND_VALUE_OF_Y_MOD_2_RAISED_TO_POWER_X

- Source: `FIND_VALUE_OF_Y_MOD_2_RAISED_TO_POWER_X_processed.c`
- Source note: processed source

## O0

- Status: ok
- Features: integer arithmetic, bitwise/shift, comparisons, control flow, memory/pointer, casts/conversions, calls/intrinsics, UB-related, external declarations
- Evidence:
  - integer arithmetic: `%27 = srem i64 %22, %26`
  - bitwise/shift: `%25 = shl i32 1, %24`
  - comparisons: `%11 = fcmp olt double %8, %10`
  - control flow: `br i1 %11, label %12, label %15`
  - memory/pointer: `%3 = alloca i32, align 4`
  - casts/conversions: `%7 = sitofp i64 %6 to double`
  - calls/intrinsics: `%8 = call double @log2(double noundef %7) #2`
  - UB-related: `define dso_local i32 @f_gold(i64 noundef %0, i64 noundef %1) #0 {`
  - external declarations: `declare double @log2(double noundef) #1`

## O1

- Status: ok
- Features: integer arithmetic, bitwise/shift, comparisons, control flow, casts/conversions, calls/intrinsics, UB-related, external declarations
- Evidence:
  - integer arithmetic: `%13 = srem i64 %0, %12`
  - bitwise/shift: `%8 = or i1 %7, %6`
  - comparisons: `%6 = fcmp olt double %4, %5`
  - control flow: `br i1 %8, label %14, label %9`
  - casts/conversions: `%3 = sitofp i64 %0 to double`
  - calls/intrinsics: `%4 = call double @log2(double noundef %3) #2`
  - UB-related: `define dso_local i32 @f_gold(i64 noundef %0, i64 noundef %1) local_unnamed_addr #0 {`
  - external declarations: `declare double @log2(double noundef) local_unnamed_addr #1`

## O2

- Status: ok
- Features: integer arithmetic, bitwise/shift, comparisons, control flow, casts/conversions, calls/intrinsics, UB-related, external declarations
- Evidence:
  - integer arithmetic: `%13 = srem i64 %0, %12`
  - bitwise/shift: `%8 = or i1 %7, %6`
  - comparisons: `%6 = fcmp olt double %4, %5`
  - control flow: `br i1 %8, label %14, label %9`
  - casts/conversions: `%3 = sitofp i64 %0 to double`
  - calls/intrinsics: `%4 = tail call double @log2(double noundef %3) #2`
  - UB-related: `define dso_local i32 @f_gold(i64 noundef %0, i64 noundef %1) local_unnamed_addr #0 {`
  - external declarations: `declare double @log2(double noundef) local_unnamed_addr #1`

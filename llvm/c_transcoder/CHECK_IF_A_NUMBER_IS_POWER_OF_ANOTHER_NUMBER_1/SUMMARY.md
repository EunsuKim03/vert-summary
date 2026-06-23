# c_transcoder/CHECK_IF_A_NUMBER_IS_POWER_OF_ANOTHER_NUMBER_1

- Source: `CHECK_IF_A_NUMBER_IS_POWER_OF_ANOTHER_NUMBER_1_processed.c`
- Source note: processed source

## O0

- Status: ok
- Features: floating-point arithmetic, comparisons, control flow, memory/pointer, casts/conversions, calls/intrinsics, UB-related, external declarations
- Evidence:
  - floating-point arithmetic: `%13 = fdiv double %9, %12`
  - comparisons: `%25 = fcmp oeq double %23, %24`
  - control flow: `ret i32 %26`
  - memory/pointer: `%3 = alloca i32, align 4`
  - casts/conversions: `%8 = sitofp i32 %7 to double`
  - calls/intrinsics: `%9 = call double @log(double noundef %8) #2`
  - UB-related: `define dso_local i32 @f_gold(i32 noundef %0, i32 noundef %1) #0 {`
  - external declarations: `declare double @log(double noundef) #1`

## O1

- Status: ok
- Features: floating-point arithmetic, comparisons, control flow, casts/conversions, calls/intrinsics, UB-related, external declarations
- Evidence:
  - floating-point arithmetic: `%7 = fdiv double %4, %6`
  - comparisons: `%13 = fcmp oeq double %11, %12`
  - control flow: `ret i32 %14`
  - casts/conversions: `%3 = sitofp i32 %1 to double`
  - calls/intrinsics: `%4 = call double @log(double noundef %3) #2`
  - UB-related: `define dso_local i32 @f_gold(i32 noundef %0, i32 noundef %1) local_unnamed_addr #0 {`
  - external declarations: `declare double @log(double noundef) local_unnamed_addr #1`

## O2

- Status: ok
- Features: floating-point arithmetic, comparisons, control flow, casts/conversions, calls/intrinsics, UB-related, external declarations
- Evidence:
  - floating-point arithmetic: `%7 = fdiv double %4, %6`
  - comparisons: `%13 = fcmp oeq double %11, %12`
  - control flow: `ret i32 %14`
  - casts/conversions: `%3 = sitofp i32 %1 to double`
  - calls/intrinsics: `%4 = tail call double @log(double noundef %3) #2`
  - UB-related: `define dso_local i32 @f_gold(i32 noundef %0, i32 noundef %1) local_unnamed_addr #0 {`
  - external declarations: `declare double @log(double noundef) local_unnamed_addr #1`

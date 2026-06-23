# c_transcoder/PROGRAM_PRINT_SUM_GIVEN_NTH_TERM_1

- Source: `PROGRAM_PRINT_SUM_GIVEN_NTH_TERM_1_processed.c`
- Source note: processed source

## O0

- Status: ok
- Features: control flow, memory/pointer, casts/conversions, calls/intrinsics, UB-related, external declarations
- Evidence:
  - control flow: `ret i32 %6`
  - memory/pointer: `%2 = alloca i64, align 8`
  - casts/conversions: `%4 = sitofp i64 %3 to double`
  - calls/intrinsics: `%5 = call double @pow(double noundef %4, double noundef 2.000000e+00) #2`
  - UB-related: `define dso_local i32 @f_gold(i64 noundef %0) #0 {`
  - external declarations: `declare double @pow(double noundef, double noundef) #1`

## O1

- Status: ok
- Features: floating-point arithmetic, control flow, casts/conversions, UB-related
- Evidence:
  - floating-point arithmetic: `%3 = fmul double %2, %2`
  - control flow: `ret i32 %4`
  - casts/conversions: `%2 = sitofp i64 %0 to double`
  - UB-related: `define dso_local i32 @f_gold(i64 noundef %0) local_unnamed_addr #0 {`

## O2

- Status: ok
- Features: floating-point arithmetic, control flow, casts/conversions, UB-related
- Evidence:
  - floating-point arithmetic: `%3 = fmul double %2, %2`
  - control flow: `ret i32 %4`
  - casts/conversions: `%2 = sitofp i64 %0 to double`
  - UB-related: `define dso_local i32 @f_gold(i64 noundef %0) local_unnamed_addr #0 {`

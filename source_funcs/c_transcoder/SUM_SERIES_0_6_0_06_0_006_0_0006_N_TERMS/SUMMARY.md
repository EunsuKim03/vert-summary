# c_transcoder/SUM_SERIES_0_6_0_06_0_006_0_0006_N_TERMS

- Source: `SUM_SERIES_0_6_0_06_0_006_0_0006_N_TERMS_processed.c`
- Source note: processed source

## O0

- Status: ok
- Features:
  - floating-point arithmetic
  - control flow
  - memory/pointer
  - casts/conversions
  - calls/intrinsics
  - UB-related
  - external declarations
- Evidence:
  - floating-point arithmetic: `%6 = fdiv double 1.000000e+00, %5`
  - control flow: `ret float %9`
  - memory/pointer: `%2 = alloca i32, align 4`
  - casts/conversions: `%4 = sitofp i32 %3 to double`
  - calls/intrinsics: `%5 = call double @pow(double noundef 1.000000e+01, double noundef %4) #2`
  - UB-related: `define dso_local float @f_gold(i32 noundef %0) #0 {`
  - external declarations: `declare double @pow(double noundef, double noundef) #1`

## O1

- Status: ok
- Features:
  - floating-point arithmetic
  - control flow
  - casts/conversions
  - calls/intrinsics
  - UB-related
  - external declarations
- Evidence:
  - floating-point arithmetic: `%4 = fdiv double 1.000000e+00, %3`
  - control flow: `ret float %7`
  - casts/conversions: `%2 = sitofp i32 %0 to double`
  - calls/intrinsics: `%3 = call double @pow(double noundef 1.000000e+01, double noundef %2) #2`
  - UB-related: `define dso_local float @f_gold(i32 noundef %0) local_unnamed_addr #0 {`
  - external declarations: `declare double @pow(double noundef, double noundef) local_unnamed_addr #1`

## O2

- Status: ok
- Features:
  - floating-point arithmetic
  - control flow
  - casts/conversions
  - calls/intrinsics
  - UB-related
  - external declarations
- Evidence:
  - floating-point arithmetic: `%4 = fdiv double 1.000000e+00, %3`
  - control flow: `ret float %7`
  - casts/conversions: `%2 = sitofp i32 %0 to double`
  - calls/intrinsics: `%3 = tail call double @pow(double noundef 1.000000e+01, double noundef %2) #2`
  - UB-related: `define dso_local float @f_gold(i32 noundef %0) local_unnamed_addr #0 {`
  - external declarations: `declare double @pow(double noundef, double noundef) local_unnamed_addr #1`

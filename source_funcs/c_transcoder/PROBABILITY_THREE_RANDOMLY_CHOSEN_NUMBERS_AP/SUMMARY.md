# c_transcoder/PROBABILITY_THREE_RANDOMLY_CHOSEN_NUMBERS_AP

- Source: `PROBABILITY_THREE_RANDOMLY_CHOSEN_NUMBERS_AP_processed.c`
- Source note: processed source

## O0

- Status: ok
- Features:
  - integer arithmetic
  - floating-point arithmetic
  - control flow
  - memory/pointer
  - casts/conversions
  - calls/intrinsics
  - UB-related
  - external declarations
- Evidence:
  - integer arithmetic: `%8 = mul nsw i32 %6, %7`
  - floating-point arithmetic: `%5 = fmul double 3.000000e+00, %4`
  - control flow: `ret float %12`
  - memory/pointer: `%2 = alloca i32, align 4`
  - casts/conversions: `%4 = sitofp i32 %3 to double`
  - calls/intrinsics: `%10 = call double @llvm.fmuladd.f64(double 4.000000e+00, double %9, double -1.000000e+00)`
  - UB-related: `define dso_local float @f_gold(i32 noundef %0) #0 {`
  - external declarations: `declare double @llvm.fmuladd.f64(double, double, double) #1`

## O1

- Status: ok
- Features:
  - integer arithmetic
  - floating-point arithmetic
  - control flow
  - casts/conversions
  - calls/intrinsics
  - UB-related
  - external declarations
- Evidence:
  - integer arithmetic: `%4 = mul nsw i32 %0, %0`
  - floating-point arithmetic: `%3 = fmul double %2, 3.000000e+00`
  - control flow: `ret float %8`
  - casts/conversions: `%2 = sitofp i32 %0 to double`
  - calls/intrinsics: `%6 = call double @llvm.fmuladd.f64(double %5, double 4.000000e+00, double -1.000000e+00)`
  - UB-related: `define dso_local float @f_gold(i32 noundef %0) local_unnamed_addr #0 {`
  - external declarations: `declare double @llvm.fmuladd.f64(double, double, double) #1`

## O2

- Status: ok
- Features:
  - integer arithmetic
  - floating-point arithmetic
  - control flow
  - casts/conversions
  - calls/intrinsics
  - UB-related
  - external declarations
- Evidence:
  - integer arithmetic: `%4 = mul nsw i32 %0, %0`
  - floating-point arithmetic: `%3 = fmul double %2, 3.000000e+00`
  - control flow: `ret float %8`
  - casts/conversions: `%2 = sitofp i32 %0 to double`
  - calls/intrinsics: `%6 = tail call double @llvm.fmuladd.f64(double %5, double 4.000000e+00, double -1.000000e+00)`
  - UB-related: `define dso_local float @f_gold(i32 noundef %0) local_unnamed_addr #0 {`
  - external declarations: `declare double @llvm.fmuladd.f64(double, double, double) #1`

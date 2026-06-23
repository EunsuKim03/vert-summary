# c_transcoder/AREA_OF_A_HEXAGON

- Source: `AREA_OF_A_HEXAGON_processed.c`
- Source note: processed source

## O0

- Status: ok
- Features: floating-point arithmetic, control flow, memory/pointer, casts/conversions, calls/intrinsics, UB-related, external declarations
- Evidence:
  - floating-point arithmetic: `%4 = fmul double 3.000000e+00, %3`
  - control flow: `ret float %10`
  - memory/pointer: `%2 = alloca double, align 8`
  - casts/conversions: `%10 = fptrunc double %9 to float`
  - calls/intrinsics: `%3 = call double @sqrt(double noundef 3.000000e+00) #2`
  - UB-related: `define dso_local float @f_gold(double noundef %0) #0 {`
  - external declarations: `declare double @sqrt(double noundef) #1`

## O1

- Status: ok
- Features: floating-point arithmetic, control flow, casts/conversions, UB-related
- Evidence:
  - floating-point arithmetic: `%2 = fmul double %0, %0`
  - control flow: `ret float %5`
  - casts/conversions: `%5 = fptrunc double %4 to float`
  - UB-related: `define dso_local float @f_gold(double noundef %0) local_unnamed_addr #0 {`

## O2

- Status: ok
- Features: floating-point arithmetic, control flow, casts/conversions, UB-related
- Evidence:
  - floating-point arithmetic: `%2 = fmul double %0, %0`
  - control flow: `ret float %5`
  - casts/conversions: `%5 = fptrunc double %4 to float`
  - UB-related: `define dso_local float @f_gold(double noundef %0) local_unnamed_addr #0 {`

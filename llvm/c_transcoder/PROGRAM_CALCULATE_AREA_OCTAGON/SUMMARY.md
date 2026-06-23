# c_transcoder/PROGRAM_CALCULATE_AREA_OCTAGON

- Source: `PROGRAM_CALCULATE_AREA_OCTAGON_processed.c`
- Source note: processed source

## O0

- Status: ok
- Features: floating-point arithmetic, control flow, memory/pointer, casts/conversions, calls/intrinsics, UB-related, external declarations
- Evidence:
  - floating-point arithmetic: `%4 = fadd double 1.000000e+00, %3`
  - control flow: `ret float %10`
  - memory/pointer: `%2 = alloca double, align 8`
  - casts/conversions: `%10 = fptrunc double %9 to float`
  - calls/intrinsics: `%3 = call double @sqrt(double noundef 2.000000e+00) #2`
  - UB-related: `define dso_local float @f_gold(double noundef %0) #0 {`
  - external declarations: `declare double @sqrt(double noundef) #1`

## O1

- Status: ok
- Features: floating-point arithmetic, control flow, casts/conversions, UB-related
- Evidence:
  - floating-point arithmetic: `%2 = fmul double %0, 0x4013504F333F9DE6`
  - control flow: `ret float %4`
  - casts/conversions: `%4 = fptrunc double %3 to float`
  - UB-related: `define dso_local float @f_gold(double noundef %0) local_unnamed_addr #0 {`

## O2

- Status: ok
- Features: floating-point arithmetic, control flow, casts/conversions, UB-related
- Evidence:
  - floating-point arithmetic: `%2 = fmul double %0, 0x4013504F333F9DE6`
  - control flow: `ret float %4`
  - casts/conversions: `%4 = fptrunc double %3 to float`
  - UB-related: `define dso_local float @f_gold(double noundef %0) local_unnamed_addr #0 {`

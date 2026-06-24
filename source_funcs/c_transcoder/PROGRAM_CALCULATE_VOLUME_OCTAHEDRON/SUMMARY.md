# c_transcoder/PROGRAM_CALCULATE_VOLUME_OCTAHEDRON

- Source: `PROGRAM_CALCULATE_VOLUME_OCTAHEDRON_processed.c`
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
  - floating-point arithmetic: `%5 = fmul double %3, %4`
  - control flow: `ret float %11`
  - memory/pointer: `%2 = alloca double, align 8`
  - casts/conversions: `%11 = fptrunc double %10 to float`
  - calls/intrinsics: `%8 = call double @sqrt(double noundef 2.000000e+00) #2`
  - UB-related: `define dso_local float @f_gold(double noundef %0) #0 {`
  - external declarations: `declare double @sqrt(double noundef) #1`

## O1

- Status: ok
- Features:
  - floating-point arithmetic
  - control flow
  - casts/conversions
  - UB-related
- Evidence:
  - floating-point arithmetic: `%2 = fmul double %0, %0`
  - control flow: `ret float %5`
  - casts/conversions: `%5 = fptrunc double %4 to float`
  - UB-related: `define dso_local float @f_gold(double noundef %0) local_unnamed_addr #0 {`

## O2

- Status: ok
- Features:
  - floating-point arithmetic
  - control flow
  - casts/conversions
  - UB-related
- Evidence:
  - floating-point arithmetic: `%2 = fmul double %0, %0`
  - control flow: `ret float %5`
  - casts/conversions: `%5 = fptrunc double %4 to float`
  - UB-related: `define dso_local float @f_gold(double noundef %0) local_unnamed_addr #0 {`

# c_transcoder/PROGRAM_CALCULATE_VOLUME_ELLIPSOID

- Source: `PROGRAM_CALCULATE_VOLUME_ELLIPSOID_processed.c`
- Source note: processed source

## O0

- Status: ok
- Features: floating-point arithmetic, control flow, memory/pointer, casts/conversions, UB-related
- Evidence:
  - floating-point arithmetic: `%10 = fmul double 1.330000e+00, %9`
  - control flow: `ret float %20`
  - memory/pointer: `%4 = alloca float, align 4`
  - casts/conversions: `%9 = fpext float %8 to double`
  - UB-related: `define dso_local float @f_gold(float noundef %0, float noundef %1, float noundef %2) #0 {`

## O1

- Status: ok
- Features: floating-point arithmetic, control flow, casts/conversions, UB-related
- Evidence:
  - floating-point arithmetic: `%5 = fmul double %4, 0x4010B46DCF333333`
  - control flow: `ret float %10`
  - casts/conversions: `%4 = fpext float %0 to double`
  - UB-related: `define dso_local float @f_gold(float noundef %0, float noundef %1, float noundef %2) local_unnamed_addr #0 {`

## O2

- Status: ok
- Features: floating-point arithmetic, control flow, casts/conversions, UB-related
- Evidence:
  - floating-point arithmetic: `%5 = fmul double %4, 0x4010B46DCF333333`
  - control flow: `ret float %10`
  - casts/conversions: `%4 = fpext float %0 to double`
  - UB-related: `define dso_local float @f_gold(float noundef %0, float noundef %1, float noundef %2) local_unnamed_addr #0 {`

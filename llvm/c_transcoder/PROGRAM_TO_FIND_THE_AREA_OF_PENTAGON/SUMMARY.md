# c_transcoder/PROGRAM_TO_FIND_THE_AREA_OF_PENTAGON

- Source: `PROGRAM_TO_FIND_THE_AREA_OF_PENTAGON_processed.c`
- Source note: processed source

## O0

- Status: ok
- Features: floating-point arithmetic, control flow, memory/pointer, casts/conversions, calls/intrinsics, UB-related, external declarations
- Evidence:
  - floating-point arithmetic: `%6 = fmul double 5.000000e+00, %5`
  - control flow: `ret float %16`
  - memory/pointer: `%2 = alloca float, align 4`
  - casts/conversions: `%9 = fpext float %8 to double`
  - calls/intrinsics: `%4 = call double @sqrt(double noundef 5.000000e+00) #3`
  - UB-related: `define dso_local float @f_gold(float noundef %0) #0 {`
  - external declarations: `declare double @sqrt(double noundef) #1`

## O1

- Status: ok
- Features: floating-point arithmetic, control flow, casts/conversions, UB-related
- Evidence:
  - floating-point arithmetic: `%3 = fmul double %2, 0x401B87134F909657`
  - control flow: `ret float %6`
  - casts/conversions: `%2 = fpext float %0 to double`
  - UB-related: `define dso_local float @f_gold(float noundef %0) local_unnamed_addr #0 {`

## O2

- Status: ok
- Features: floating-point arithmetic, control flow, casts/conversions, UB-related
- Evidence:
  - floating-point arithmetic: `%3 = fmul double %2, 0x401B87134F909657`
  - control flow: `ret float %6`
  - casts/conversions: `%2 = fpext float %0 to double`
  - UB-related: `define dso_local float @f_gold(float noundef %0) local_unnamed_addr #0 {`

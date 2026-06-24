# c_transcoder/AREA_OF_THE_CIRCLE_THAT_HAS_A_SQUARE_AND_A_CIRCLE_INSCRIBED_IN_IT

- Source: `AREA_OF_THE_CIRCLE_THAT_HAS_A_SQUARE_AND_A_CIRCLE_INSCRIBED_IN_IT_processed.c`
- Source note: processed source

## O0

- Status: ok
- Features:
  - floating-point arithmetic
  - control flow
  - memory/pointer
  - casts/conversions
  - UB-related
- Evidence:
  - floating-point arithmetic: `%6 = fmul double 0x400921FB54442D18, %5`
  - control flow: `ret float %12`
  - memory/pointer: `%2 = alloca i32, align 4`
  - casts/conversions: `%5 = sitofp i32 %4 to double`
  - UB-related: `define dso_local float @f_gold(i32 noundef %0) #0 {`

## O1

- Status: ok
- Features:
  - floating-point arithmetic
  - control flow
  - casts/conversions
  - UB-related
- Evidence:
  - floating-point arithmetic: `%3 = fmul double %2, 0x400921FB54442D18`
  - control flow: `ret float %6`
  - casts/conversions: `%2 = sitofp i32 %0 to double`
  - UB-related: `define dso_local float @f_gold(i32 noundef %0) local_unnamed_addr #0 {`

## O2

- Status: ok
- Features:
  - floating-point arithmetic
  - control flow
  - casts/conversions
  - UB-related
- Evidence:
  - floating-point arithmetic: `%3 = fmul double %2, 0x400921FB54442D18`
  - control flow: `ret float %6`
  - casts/conversions: `%2 = sitofp i32 %0 to double`
  - UB-related: `define dso_local float @f_gold(i32 noundef %0) local_unnamed_addr #0 {`

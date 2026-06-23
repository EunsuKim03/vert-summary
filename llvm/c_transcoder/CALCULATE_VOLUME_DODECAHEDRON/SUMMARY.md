# c_transcoder/CALCULATE_VOLUME_DODECAHEDRON

- Source: `CALCULATE_VOLUME_DODECAHEDRON_processed.c`
- Source note: processed source

## O0

- Status: ok
- Features: floating-point arithmetic, control flow, memory/pointer, casts/conversions, calls/intrinsics, UB-related, external declarations
- Evidence:
  - floating-point arithmetic: `%5 = fdiv double %4, 4.000000e+00`
  - control flow: `ret float %10`
  - memory/pointer: `%2 = alloca i32, align 4`
  - casts/conversions: `%7 = sitofp i32 %6 to double`
  - calls/intrinsics: `%3 = call double @sqrt(double noundef 5.000000e+00) #3`
  - UB-related: `define dso_local float @f_gold(i32 noundef %0) #0 {`
  - external declarations: `declare double @sqrt(double noundef) #1`

## O1

- Status: ok
- Features: floating-point arithmetic, control flow, casts/conversions, calls/intrinsics, UB-related, external declarations
- Evidence:
  - floating-point arithmetic: `%4 = fmul double %3, 0x401EA708A824F613`
  - control flow: `ret float %5`
  - casts/conversions: `%2 = sitofp i32 %0 to double`
  - calls/intrinsics: `%3 = call double @pow(double noundef %2, double noundef 3.000000e+00) #2`
  - UB-related: `define dso_local float @f_gold(i32 noundef %0) local_unnamed_addr #0 {`
  - external declarations: `declare double @pow(double noundef, double noundef) local_unnamed_addr #1`

## O2

- Status: ok
- Features: floating-point arithmetic, control flow, casts/conversions, calls/intrinsics, UB-related, external declarations
- Evidence:
  - floating-point arithmetic: `%4 = fmul double %3, 0x401EA708A824F613`
  - control flow: `ret float %5`
  - casts/conversions: `%2 = sitofp i32 %0 to double`
  - calls/intrinsics: `%3 = tail call double @pow(double noundef %2, double noundef 3.000000e+00) #2`
  - UB-related: `define dso_local float @f_gold(i32 noundef %0) local_unnamed_addr #0 {`
  - external declarations: `declare double @pow(double noundef, double noundef) local_unnamed_addr #1`

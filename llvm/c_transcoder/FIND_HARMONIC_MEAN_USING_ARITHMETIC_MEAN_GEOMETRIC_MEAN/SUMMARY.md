# c_transcoder/FIND_HARMONIC_MEAN_USING_ARITHMETIC_MEAN_GEOMETRIC_MEAN

- Source: `FIND_HARMONIC_MEAN_USING_ARITHMETIC_MEAN_GEOMETRIC_MEAN_processed.c`
- Source note: processed source

## O0

- Status: ok
- Features: integer arithmetic, floating-point arithmetic, control flow, memory/pointer, casts/conversions, calls/intrinsics, UB-related, external declarations
- Evidence:
  - integer arithmetic: `%10 = add nsw i32 %8, %9`
  - floating-point arithmetic: `%20 = fmul double %18, %19`
  - control flow: `ret float %24`
  - memory/pointer: `%3 = alloca i32, align 4`
  - casts/conversions: `%12 = sitofp i32 %11 to double`
  - calls/intrinsics: `%17 = call double @sqrt(double noundef %16) #2`
  - UB-related: `define dso_local float @f_gold(i32 noundef %0, i32 noundef %1) #0 {`
  - external declarations: `declare double @sqrt(double noundef) #1`

## O1

- Status: ok
- Features: integer arithmetic, floating-point arithmetic, control flow, casts/conversions, calls/intrinsics, UB-related, external declarations
- Evidence:
  - integer arithmetic: `%3 = add nsw i32 %1, %0`
  - floating-point arithmetic: `%9 = fmul double %8, %8`
  - control flow: `ret float %11`
  - casts/conversions: `%5 = sitofp i32 %4 to double`
  - calls/intrinsics: `%8 = call double @sqrt(double noundef %7) #2`
  - UB-related: `define dso_local float @f_gold(i32 noundef %0, i32 noundef %1) local_unnamed_addr #0 {`
  - external declarations: `declare double @sqrt(double noundef) local_unnamed_addr #1`

## O2

- Status: ok
- Features: integer arithmetic, floating-point arithmetic, control flow, casts/conversions, calls/intrinsics, UB-related, external declarations
- Evidence:
  - integer arithmetic: `%3 = add nsw i32 %1, %0`
  - floating-point arithmetic: `%9 = fmul double %8, %8`
  - control flow: `ret float %11`
  - casts/conversions: `%5 = sitofp i32 %4 to double`
  - calls/intrinsics: `%8 = tail call double @sqrt(double noundef %7) #2`
  - UB-related: `define dso_local float @f_gold(i32 noundef %0, i32 noundef %1) local_unnamed_addr #0 {`
  - external declarations: `declare double @sqrt(double noundef) local_unnamed_addr #1`

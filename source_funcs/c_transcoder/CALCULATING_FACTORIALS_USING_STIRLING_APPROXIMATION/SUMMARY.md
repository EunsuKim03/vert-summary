# c_transcoder/CALCULATING_FACTORIALS_USING_STIRLING_APPROXIMATION

- Source: `CALCULATING_FACTORIALS_USING_STIRLING_APPROXIMATION_processed.c`
- Source note: processed source

## O0

- Status: ok
- Features:
  - floating-point arithmetic
  - comparisons
  - control flow
  - memory/pointer
  - casts/conversions
  - calls/intrinsics
  - UB-related
  - external declarations
- Evidence:
  - floating-point arithmetic: `%12 = fmul double 6.280000e+00, %11`
  - comparisons: `%7 = icmp eq i32 %6, 1`
  - control flow: `br i1 %7, label %8, label %9`
  - memory/pointer: `%2 = alloca i32, align 4`
  - casts/conversions: `%11 = sitofp i32 %10 to double`
  - calls/intrinsics: `%13 = call double @sqrt(double noundef %12) #2`
  - UB-related: `define dso_local i32 @f_gold(i32 noundef %0) #0 {`
  - external declarations: `declare double @sqrt(double noundef) #1`

## O1

- Status: ok
- Features:
  - floating-point arithmetic
  - comparisons
  - control flow
  - casts/conversions
  - calls/intrinsics
  - UB-related
  - external declarations
- Evidence:
  - floating-point arithmetic: `%5 = fmul double %4, 6.280000e+00`
  - comparisons: `%2 = icmp eq i32 %0, 1`
  - control flow: `br i1 %2, label %13, label %3`
  - casts/conversions: `%4 = sitofp i32 %0 to double`
  - calls/intrinsics: `%6 = call double @sqrt(double noundef %5) #2`
  - UB-related: `define dso_local i32 @f_gold(i32 noundef %0) local_unnamed_addr #0 {`
  - external declarations: `declare double @sqrt(double noundef) local_unnamed_addr #1`

## O2

- Status: ok
- Features:
  - floating-point arithmetic
  - comparisons
  - control flow
  - casts/conversions
  - calls/intrinsics
  - UB-related
  - external declarations
- Evidence:
  - floating-point arithmetic: `%5 = fmul double %4, 6.280000e+00`
  - comparisons: `%2 = icmp eq i32 %0, 1`
  - control flow: `br i1 %2, label %13, label %3`
  - casts/conversions: `%4 = sitofp i32 %0 to double`
  - calls/intrinsics: `%6 = tail call double @sqrt(double noundef %5) #2`
  - UB-related: `define dso_local i32 @f_gold(i32 noundef %0) local_unnamed_addr #0 {`
  - external declarations: `declare double @sqrt(double noundef) local_unnamed_addr #1`

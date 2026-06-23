# c_transcoder/TRIANGULAR_NUMBERS_1

- Source: `TRIANGULAR_NUMBERS_1_processed.c`
- Source note: processed source

## O0

- Status: ok
- Features: integer arithmetic, floating-point arithmetic, comparisons, control flow, memory/pointer, casts/conversions, calls/intrinsics, UB-related, external declarations
- Evidence:
  - integer arithmetic: `%15 = mul nsw i32 -2, %14`
  - floating-point arithmetic: `%34 = fadd double %30, %33`
  - comparisons: `%11 = icmp slt i32 %10, 0`
  - control flow: `br i1 %11, label %12, label %13`
  - memory/pointer: `%2 = alloca i32, align 4`
  - casts/conversions: `%30 = sitofp i32 %29 to double`
  - calls/intrinsics: `%33 = call double @sqrt(double noundef %32) #3`
  - UB-related: `define dso_local i32 @f_gold(i32 noundef %0) #0 {`
  - external declarations: `declare double @sqrt(double noundef) #1`

## O1

- Status: ok
- Features: bitwise/shift, floating-point arithmetic, comparisons, control flow, casts/conversions, calls/intrinsics, UB-related, external declarations
- Evidence:
  - bitwise/shift: `%4 = shl i32 %0, 3`
  - floating-point arithmetic: `%10 = fadd double %9, -1.000000e+00`
  - comparisons: `%2 = icmp slt i32 %0, 0`
  - control flow: `br i1 %2, label %29, label %3`
  - casts/conversions: `%8 = sitofp i32 %5 to double`
  - calls/intrinsics: `%9 = call double @sqrt(double noundef %8) #3`
  - UB-related: `define dso_local i32 @f_gold(i32 noundef %0) local_unnamed_addr #0 {`
  - external declarations: `declare double @sqrt(double noundef) local_unnamed_addr #1`

## O2

- Status: ok
- Features: bitwise/shift, floating-point arithmetic, comparisons, control flow, casts/conversions, calls/intrinsics, UB-related, external declarations
- Evidence:
  - bitwise/shift: `%4 = shl i32 %0, 3`
  - floating-point arithmetic: `%10 = fadd double %9, -1.000000e+00`
  - comparisons: `%2 = icmp slt i32 %0, 0`
  - control flow: `br i1 %2, label %29, label %3`
  - casts/conversions: `%8 = sitofp i32 %5 to double`
  - calls/intrinsics: `%9 = tail call double @sqrt(double noundef %8) #3`
  - UB-related: `define dso_local i32 @f_gold(i32 noundef %0) local_unnamed_addr #0 {`
  - external declarations: `declare double @sqrt(double noundef) local_unnamed_addr #1`

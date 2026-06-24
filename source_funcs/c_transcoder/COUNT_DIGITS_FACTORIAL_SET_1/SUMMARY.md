# c_transcoder/COUNT_DIGITS_FACTORIAL_SET_1

- Source: `COUNT_DIGITS_FACTORIAL_SET_1_processed.c`
- Source note: processed source

## O0

- Status: ok
- Features:
  - integer arithmetic
  - floating-point arithmetic
  - comparisons
  - control flow
  - loop
  - memory/pointer
  - casts/conversions
  - calls/intrinsics
  - UB-related
  - external declarations
- Evidence:
  - integer arithmetic: `%26 = add nsw i32 %25, 1`
  - floating-point arithmetic: `%23 = fadd double %22, %21`
  - comparisons: `%7 = icmp slt i32 %6, 0`
  - control flow: `br i1 %7, label %8, label %9`
  - loop: `llvm.loop metadata`
  - memory/pointer: `%2 = alloca i32, align 4`
  - casts/conversions: `%20 = sitofp i32 %19 to double`
  - calls/intrinsics: `%21 = call double @log10(double noundef %20) #3`
  - UB-related: `define dso_local i32 @f_gold(i32 noundef %0) #0 {`
  - external declarations: `declare double @log10(double noundef) #1`

## O1

- Status: ok
- Features:
  - integer arithmetic
  - floating-point arithmetic
  - comparisons
  - control flow
  - loop
  - casts/conversions
  - calls/intrinsics
  - UB-related
  - external declarations
- Evidence:
  - integer arithmetic: `%15 = add nuw i32 %10, 1`
  - floating-point arithmetic: `%7 = fadd double %6, 1.000000e+00`
  - comparisons: `%2 = icmp slt i32 %0, 0`
  - control flow: `br i1 %2, label %17, label %3`
  - loop: `llvm.loop metadata`
  - casts/conversions: `%8 = fptosi double %7 to i32`
  - calls/intrinsics: `%6 = call double @llvm.floor.f64(double %14)`
  - UB-related: `define dso_local i32 @f_gold(i32 noundef %0) local_unnamed_addr #0 {`
  - external declarations: `declare double @log10(double noundef) local_unnamed_addr #1`

## O2

- Status: ok
- Features:
  - integer arithmetic
  - floating-point arithmetic
  - comparisons
  - control flow
  - loop
  - casts/conversions
  - calls/intrinsics
  - UB-related
  - external declarations
- Evidence:
  - integer arithmetic: `%15 = add nuw i32 %10, 1`
  - floating-point arithmetic: `%7 = fadd double %6, 1.000000e+00`
  - comparisons: `%2 = icmp slt i32 %0, 0`
  - control flow: `br i1 %2, label %17, label %3`
  - loop: `llvm.loop metadata`
  - casts/conversions: `%8 = fptosi double %7 to i32`
  - calls/intrinsics: `%6 = tail call double @llvm.floor.f64(double %14)`
  - UB-related: `define dso_local i32 @f_gold(i32 noundef %0) local_unnamed_addr #0 {`
  - external declarations: `declare double @log10(double noundef) local_unnamed_addr #1`

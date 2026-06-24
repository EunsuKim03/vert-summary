# c_transcoder/PRIMALITY_TEST_SET_5USING_LUCAS_LEHMER_SERIES

- Source: `PRIMALITY_TEST_SET_5USING_LUCAS_LEHMER_SERIES_processed.c`
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
  - integer arithmetic: `%13 = srem i64 4, %12`
  - floating-point arithmetic: `%10 = fsub double %9, 1.000000e+00`
  - comparisons: `%18 = icmp slt i32 %15, %17`
  - control flow: `br label %14`
  - loop: `llvm.loop metadata`
  - memory/pointer: `%2 = alloca i32, align 4`
  - casts/conversions: `%8 = sitofp i32 %7 to double`
  - calls/intrinsics: `%9 = call double @pow(double noundef 2.000000e+00, double noundef %8) #2`
  - UB-related: `define dso_local i32 @f_gold(i32 noundef %0) #0 {`
  - external declarations: `declare double @pow(double noundef, double noundef) #1`

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
  - integer arithmetic: `%5 = add i32 %0, -1`
  - floating-point arithmetic: `%3 = fadd double %2, -1.000000e+00`
  - comparisons: `%7 = icmp sgt i32 %0, 2`
  - control flow: `br i1 %7, label %12, label %8`
  - loop: `llvm.loop metadata`
  - casts/conversions: `%4 = fptosi double %3 to i64`
  - calls/intrinsics: `%2 = call double @ldexp(double 1.000000e+00, i32 %0) #2`
  - UB-related: `define dso_local i32 @f_gold(i32 noundef %0) local_unnamed_addr #0 {`
  - external declarations: `declare double @ldexp(double, i32 signext) local_unnamed_addr #1`

## O2

- Status: ok
- Features:
  - integer arithmetic
  - bitwise/shift
  - floating-point arithmetic
  - comparisons
  - control flow
  - loop
  - casts/conversions
  - calls/intrinsics
  - UB-related
  - external declarations
- Evidence:
  - integer arithmetic: `%5 = srem i64 4, %4`
  - bitwise/shift: `%8 = and i32 %0, 1`
  - floating-point arithmetic: `%3 = fadd double %2, -1.000000e+00`
  - comparisons: `%6 = icmp sgt i32 %0, 2`
  - control flow: `br i1 %6, label %7, label %21`
  - loop: `llvm.loop metadata`
  - casts/conversions: `%4 = fptosi double %3 to i64`
  - calls/intrinsics: `%2 = tail call double @ldexp(double 1.000000e+00, i32 %0) #2`
  - UB-related: `define dso_local i32 @f_gold(i32 noundef %0) local_unnamed_addr #0 {`
  - external declarations: `declare double @ldexp(double, i32 signext) local_unnamed_addr #1`

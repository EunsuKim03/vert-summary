# c_transcoder/PROGRAM_CHECK_PLUS_PERFECT_NUMBER

- Source: `PROGRAM_CHECK_PLUS_PERFECT_NUMBER_processed.c`
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
  - integer arithmetic: `%12 = sdiv i32 %11, 10`
  - floating-point arithmetic: `%29 = fadd double %28, %26`
  - comparisons: `%9 = icmp ne i32 %8, 0`
  - control flow: `br label %7`
  - loop: `llvm.loop metadata`
  - memory/pointer: `%2 = alloca i32, align 4`
  - casts/conversions: `%23 = sitofp i32 %22 to double`
  - calls/intrinsics: `%26 = call double @pow(double noundef %23, double noundef %25) #2`
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
  - integer arithmetic: `%11 = sdiv i32 %10, 10`
  - floating-point arithmetic: `%22 = fadd double %20, %21`
  - comparisons: `%2 = icmp eq i32 %0, 0`
  - control flow: `br i1 %2, label %5, label %8`
  - loop: `llvm.loop metadata`
  - casts/conversions: `%4 = sitofp i32 %12 to double`
  - calls/intrinsics: `%20 = call double @pow(double noundef %19, double noundef %6) #2`
  - UB-related: `define dso_local i32 @f_gold(i32 noundef %0) local_unnamed_addr #0 {`
  - external declarations: `declare double @pow(double noundef, double noundef) local_unnamed_addr #1`

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
  - integer arithmetic: `%8 = sdiv i32 %7, 10`
  - floating-point arithmetic: `%19 = fadd double %17, %18`
  - comparisons: `%2 = icmp eq i32 %0, 0`
  - control flow: `br i1 %2, label %24, label %5`
  - loop: `llvm.loop metadata`
  - casts/conversions: `%4 = sitofp i32 %9 to double`
  - calls/intrinsics: `%17 = tail call double @pow(double noundef %16, double noundef %4) #2`
  - UB-related: `define dso_local i32 @f_gold(i32 noundef %0) local_unnamed_addr #0 {`
  - external declarations: `declare double @pow(double noundef, double noundef) local_unnamed_addr #1`

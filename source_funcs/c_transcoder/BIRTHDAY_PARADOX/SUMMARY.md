# c_transcoder/BIRTHDAY_PARADOX

- Source: `BIRTHDAY_PARADOX_processed.c`
- Source note: processed source

## O0

- Status: ok
- Features:
  - floating-point arithmetic
  - control flow
  - memory/pointer
  - casts/conversions
  - calls/intrinsics
  - UB-related
  - external declarations
- Evidence:
  - floating-point arithmetic: `%4 = fsub double 1.000000e+00, %3`
  - control flow: `ret i32 %10`
  - memory/pointer: `%2 = alloca double, align 8`
  - casts/conversions: `%10 = fptosi double %9 to i32`
  - calls/intrinsics: `%6 = call double @log(double noundef %5) #3`
  - UB-related: `define dso_local i32 @f_gold(double noundef %0) #0 {`
  - external declarations: `declare double @sqrt(double noundef) #1`

## O1

- Status: ok
- Features:
  - floating-point arithmetic
  - control flow
  - casts/conversions
  - calls/intrinsics
  - UB-related
  - external declarations
- Evidence:
  - floating-point arithmetic: `%2 = fsub double 1.000000e+00, %0`
  - control flow: `ret i32 %8`
  - casts/conversions: `%8 = fptosi double %7 to i32`
  - calls/intrinsics: `%4 = call double @log(double noundef %3) #3`
  - UB-related: `define dso_local i32 @f_gold(double noundef %0) local_unnamed_addr #0 {`
  - external declarations: `declare double @sqrt(double noundef) local_unnamed_addr #1`

## O2

- Status: ok
- Features:
  - floating-point arithmetic
  - control flow
  - casts/conversions
  - calls/intrinsics
  - UB-related
  - external declarations
- Evidence:
  - floating-point arithmetic: `%2 = fsub double 1.000000e+00, %0`
  - control flow: `ret i32 %8`
  - casts/conversions: `%8 = fptosi double %7 to i32`
  - calls/intrinsics: `%4 = tail call double @log(double noundef %3) #3`
  - UB-related: `define dso_local i32 @f_gold(double noundef %0) local_unnamed_addr #0 {`
  - external declarations: `declare double @sqrt(double noundef) local_unnamed_addr #1`

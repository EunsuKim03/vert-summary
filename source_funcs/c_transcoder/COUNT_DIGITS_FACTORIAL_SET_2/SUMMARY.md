# c_transcoder/COUNT_DIGITS_FACTORIAL_SET_2

- Source: `COUNT_DIGITS_FACTORIAL_SET_2_processed.c`
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
  - floating-point arithmetic: `%17 = fdiv double %16, 0x4005BF0A8B145769`
  - comparisons: `%6 = icmp slt i32 %5, 0`
  - control flow: `br i1 %6, label %7, label %8`
  - memory/pointer: `%2 = alloca i64, align 8`
  - casts/conversions: `%14 = sitofp i32 %13 to double`
  - calls/intrinsics: `%18 = call double @log10(double noundef %17) #3`
  - UB-related: `define dso_local i64 @f_gold(i32 noundef %0) #0 {`
  - external declarations: `declare double @log10(double noundef) #1`

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
  - floating-point arithmetic: `%7 = fdiv double %6, 0x4005BF0A8B145769`
  - comparisons: `%2 = icmp slt i32 %0, 0`
  - control flow: `br i1 %2, label %16, label %3`
  - casts/conversions: `%6 = sitofp i32 %0 to double`
  - calls/intrinsics: `%8 = call double @log10(double noundef %7) #3`
  - UB-related: `define dso_local i64 @f_gold(i32 noundef %0) local_unnamed_addr #0 {`
  - external declarations: `declare double @log10(double noundef) local_unnamed_addr #1`

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
  - floating-point arithmetic: `%7 = fdiv double %6, 0x4005BF0A8B145769`
  - comparisons: `%2 = icmp slt i32 %0, 0`
  - control flow: `br i1 %2, label %16, label %3`
  - casts/conversions: `%6 = sitofp i32 %0 to double`
  - calls/intrinsics: `%8 = tail call double @log10(double noundef %7) #3`
  - UB-related: `define dso_local i64 @f_gold(i32 noundef %0) local_unnamed_addr #0 {`
  - external declarations: `declare double @log10(double noundef) local_unnamed_addr #1`

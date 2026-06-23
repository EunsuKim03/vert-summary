# c_transcoder/NUMBER_DIGITS_PRODUCT_TWO_NUMBERS_1

- Source: `NUMBER_DIGITS_PRODUCT_TWO_NUMBERS_1_processed.c`
- Source note: processed source

## O0

- Status: ok
- Features: floating-point arithmetic, comparisons, control flow, memory/pointer, casts/conversions, calls/intrinsics, UB-related, external declarations
- Evidence:
  - floating-point arithmetic: `%21 = fadd double %16, %20`
  - comparisons: `%7 = icmp eq i32 %6, 0`
  - control flow: `br i1 %7, label %11, label %8`
  - memory/pointer: `%3 = alloca i32, align 4`
  - casts/conversions: `%15 = sitofp i32 %14 to double`
  - calls/intrinsics: `%14 = call i32 @abs(i32 noundef %13) #4`
  - UB-related: `define dso_local i32 @f_gold(i32 noundef %0, i32 noundef %1) #0 {`
  - external declarations: `declare double @log10(double noundef) #1`

## O1

- Status: ok
- Features: bitwise/shift, floating-point arithmetic, comparisons, control flow, casts/conversions, calls/intrinsics, UB-related, external declarations
- Evidence:
  - bitwise/shift: `%5 = or i1 %3, %4`
  - floating-point arithmetic: `%13 = fadd double %9, %12`
  - comparisons: `%3 = icmp eq i32 %0, 0`
  - control flow: `br i1 %5, label %17, label %6`
  - casts/conversions: `%8 = sitofp i32 %7 to double`
  - calls/intrinsics: `%7 = call i32 @llvm.abs.i32(i32 %0, i1 true)`
  - UB-related: `define dso_local i32 @f_gold(i32 noundef %0, i32 noundef %1) local_unnamed_addr #0 {`
  - external declarations: `declare double @log10(double noundef) local_unnamed_addr #1`

## O2

- Status: ok
- Features: bitwise/shift, floating-point arithmetic, comparisons, control flow, casts/conversions, calls/intrinsics, UB-related, external declarations
- Evidence:
  - bitwise/shift: `%5 = or i1 %3, %4`
  - floating-point arithmetic: `%13 = fadd double %9, %12`
  - comparisons: `%3 = icmp eq i32 %0, 0`
  - control flow: `br i1 %5, label %17, label %6`
  - casts/conversions: `%8 = sitofp i32 %7 to double`
  - calls/intrinsics: `%7 = tail call i32 @llvm.abs.i32(i32 %0, i1 true)`
  - UB-related: `define dso_local i32 @f_gold(i32 noundef %0, i32 noundef %1) local_unnamed_addr #0 {`
  - external declarations: `declare double @log10(double noundef) local_unnamed_addr #1`

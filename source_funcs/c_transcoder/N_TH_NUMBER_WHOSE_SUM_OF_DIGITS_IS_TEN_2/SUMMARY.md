# c_transcoder/N_TH_NUMBER_WHOSE_SUM_OF_DIGITS_IS_TEN_2

- Source: `N_TH_NUMBER_WHOSE_SUM_OF_DIGITS_IS_TEN_2_processed.c`
- Source note: processed source

## O0

- Status: ok
- Features:
  - integer arithmetic
  - control flow
  - memory/pointer
  - casts/conversions
  - calls/intrinsics
  - UB-related
  - external declarations
- Evidence:
  - integer arithmetic: `%6 = sub nsw i32 %5, 1`
  - control flow: `ret i32 %18`
  - memory/pointer: `%2 = alloca i32, align 4`
  - casts/conversions: `%10 = sitofp i32 %9 to double`
  - calls/intrinsics: `%11 = call double @log10(double noundef %10) #2`
  - UB-related: `define dso_local i32 @f_gold(i32 noundef %0) #0 {`
  - external declarations: `declare double @log10(double noundef) #1`

## O1

- Status: ok
- Features:
  - integer arithmetic
  - control flow
  - casts/conversions
  - calls/intrinsics
  - UB-related
  - external declarations
- Evidence:
  - integer arithmetic: `%2 = mul i32 %0, 9`
  - control flow: `ret i32 %9`
  - casts/conversions: `%4 = sitofp i32 %3 to double`
  - calls/intrinsics: `%5 = call double @log10(double noundef %4) #2`
  - UB-related: `define dso_local i32 @f_gold(i32 noundef %0) local_unnamed_addr #0 {`
  - external declarations: `declare double @log10(double noundef) local_unnamed_addr #1`

## O2

- Status: ok
- Features:
  - integer arithmetic
  - control flow
  - casts/conversions
  - calls/intrinsics
  - UB-related
  - external declarations
- Evidence:
  - integer arithmetic: `%2 = mul i32 %0, 9`
  - control flow: `ret i32 %9`
  - casts/conversions: `%4 = sitofp i32 %3 to double`
  - calls/intrinsics: `%5 = tail call double @log10(double noundef %4) #2`
  - UB-related: `define dso_local i32 @f_gold(i32 noundef %0) local_unnamed_addr #0 {`
  - external declarations: `declare double @log10(double noundef) local_unnamed_addr #1`

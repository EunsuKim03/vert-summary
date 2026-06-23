# c_transcoder/SUM_FACTORS_NUMBER_1

- Source: `SUM_FACTORS_NUMBER_1_processed.c`
- Source note: processed source

## O0

- Status: ok
- Features: integer arithmetic, comparisons, control flow, loop, memory/pointer, casts/conversions, calls/intrinsics, UB-related, external declarations
- Evidence:
  - integer arithmetic: `%18 = srem i32 %16, %17`
  - comparisons: `%13 = fcmp ole double %9, %12`
  - control flow: `br label %7`
  - loop: `llvm.loop metadata`
  - memory/pointer: `%2 = alloca i32, align 4`
  - casts/conversions: `%9 = sitofp i32 %8 to double`
  - calls/intrinsics: `%12 = call double @sqrt(double noundef %11) #2`
  - UB-related: `define dso_local i32 @f_gold(i32 noundef %0) #0 {`
  - external declarations: `declare double @sqrt(double noundef) #1`

## O1

- Status: ok
- Features: integer arithmetic, comparisons, control flow, loop, casts/conversions, calls/intrinsics, UB-related, external declarations
- Evidence:
  - integer arithmetic: `%9 = srem i32 %8, %6`
  - comparisons: `%4 = fcmp ult double %3, 2.000000e+00`
  - control flow: `br i1 %4, label %11, label %5`
  - loop: `llvm.loop metadata`
  - casts/conversions: `%2 = sitofp i32 %0 to double`
  - calls/intrinsics: `%3 = call double @sqrt(double noundef %2) #2`
  - UB-related: `define dso_local i32 @f_gold(i32 noundef %0) local_unnamed_addr #0 {`
  - external declarations: `declare double @sqrt(double noundef) local_unnamed_addr #1`

## O2

- Status: ok
- Features: integer arithmetic, comparisons, control flow, loop, casts/conversions, calls/intrinsics, UB-related, external declarations
- Evidence:
  - integer arithmetic: `%9 = srem i32 %8, %6`
  - comparisons: `%4 = fcmp ult double %3, 2.000000e+00`
  - control flow: `br i1 %4, label %11, label %5`
  - loop: `llvm.loop metadata`
  - casts/conversions: `%2 = sitofp i32 %0 to double`
  - calls/intrinsics: `%3 = tail call double @sqrt(double noundef %2) #2`
  - UB-related: `define dso_local i32 @f_gold(i32 noundef %0) local_unnamed_addr #0 {`
  - external declarations: `declare double @sqrt(double noundef) local_unnamed_addr #1`

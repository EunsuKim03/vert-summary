# c_transcoder/NUMBER_UNIQUE_RECTANGLES_FORMED_USING_N_UNIT_SQUARES

- Source: `NUMBER_UNIQUE_RECTANGLES_FORMED_USING_N_UNIT_SQUARES_processed.c`
- Source note: processed source

## O0

- Status: ok
- Features: integer arithmetic, comparisons, control flow, loop, memory/pointer, casts/conversions, calls/intrinsics, UB-related, external declarations
- Evidence:
  - integer arithmetic: `%18 = mul nsw i32 %16, %17`
  - comparisons: `%12 = fcmp ole double %8, %11`
  - control flow: `br label %6`
  - loop: `llvm.loop metadata`
  - memory/pointer: `%2 = alloca i32, align 4`
  - casts/conversions: `%8 = sitofp i32 %7 to double`
  - calls/intrinsics: `%11 = call double @sqrt(double noundef %10) #2`
  - UB-related: `define dso_local i32 @f_gold(i32 noundef %0) #0 {`
  - external declarations: `declare double @sqrt(double noundef) #1`

## O1

- Status: ok
- Features: integer arithmetic, comparisons, control flow, loop, casts/conversions, calls/intrinsics, UB-related, external declarations
- Evidence:
  - integer arithmetic: `%8 = mul nsw i32 %6, %6`
  - comparisons: `%4 = fcmp ult double %3, 1.000000e+00`
  - control flow: `br i1 %4, label %10, label %5`
  - loop: `llvm.loop metadata`
  - casts/conversions: `%2 = sitofp i32 %0 to double`
  - calls/intrinsics: `%3 = call double @sqrt(double noundef %2) #2`
  - UB-related: `define dso_local i32 @f_gold(i32 noundef %0) local_unnamed_addr #0 {`
  - external declarations: `declare double @sqrt(double noundef) local_unnamed_addr #1`

## O2

- Status: ok
- Features: integer arithmetic, comparisons, control flow, loop, casts/conversions, calls/intrinsics, UB-related, external declarations
- Evidence:
  - integer arithmetic: `%8 = mul nsw i32 %6, %6`
  - comparisons: `%4 = fcmp ult double %3, 1.000000e+00`
  - control flow: `br i1 %4, label %10, label %5`
  - loop: `llvm.loop metadata`
  - casts/conversions: `%2 = sitofp i32 %0 to double`
  - calls/intrinsics: `%3 = tail call double @sqrt(double noundef %2) #2`
  - UB-related: `define dso_local i32 @f_gold(i32 noundef %0) local_unnamed_addr #0 {`
  - external declarations: `declare double @sqrt(double noundef) local_unnamed_addr #1`

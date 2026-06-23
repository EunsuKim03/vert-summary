# c_transcoder/MODULUS_TWO_FLOAT_DOUBLE_NUMBERS

- Source: `MODULUS_TWO_FLOAT_DOUBLE_NUMBERS_processed.c`
- Source note: processed source

## O0

- Status: ok
- Features: floating-point arithmetic, comparisons, control flow, loop, memory/pointer, casts/conversions, UB-related
- Evidence:
  - floating-point arithmetic: `%28 = fsub double %26, %27`
  - comparisons: `%8 = fcmp olt double %7, 0.000000e+00`
  - control flow: `br i1 %8, label %9, label %12`
  - loop: `llvm.loop metadata`
  - memory/pointer: `%3 = alloca float, align 4`
  - casts/conversions: `%35 = fptrunc double %34 to float`
  - UB-related: `define dso_local float @f_gold(double noundef %0, double noundef %1) #0 {`

## O1

- Status: ok
- Features: floating-point arithmetic, comparisons, control flow, loop, casts/conversions, UB-related
- Evidence:
  - floating-point arithmetic: `%12 = fsub double %11, %8`
  - comparisons: `%3 = fcmp olt double %0, 0.000000e+00`
  - control flow: `%5 = select i1 %3, double %4, double %0`
  - loop: `llvm.loop metadata`
  - casts/conversions: `%18 = fptrunc double %17 to float`
  - UB-related: `define dso_local float @f_gold(double noundef %0, double noundef %1) local_unnamed_addr #0 {`

## O2

- Status: ok
- Features: floating-point arithmetic, comparisons, control flow, loop, casts/conversions, UB-related
- Evidence:
  - floating-point arithmetic: `%12 = fsub double %11, %8`
  - comparisons: `%3 = fcmp olt double %0, 0.000000e+00`
  - control flow: `%5 = select i1 %3, double %4, double %0`
  - loop: `llvm.loop metadata`
  - casts/conversions: `%18 = fptrunc double %17 to float`
  - UB-related: `define dso_local float @f_gold(double noundef %0, double noundef %1) local_unnamed_addr #0 {`

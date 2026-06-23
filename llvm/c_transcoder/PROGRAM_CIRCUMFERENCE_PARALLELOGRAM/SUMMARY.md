# c_transcoder/PROGRAM_CIRCUMFERENCE_PARALLELOGRAM

- Source: `PROGRAM_CIRCUMFERENCE_PARALLELOGRAM_processed.c`
- Source note: processed source

## O0

- Status: ok
- Features: floating-point arithmetic, control flow, memory/pointer, calls/intrinsics, UB-related, external declarations
- Evidence:
  - floating-point arithmetic: `%7 = fmul float 2.000000e+00, %6`
  - control flow: `ret float %8`
  - memory/pointer: `%3 = alloca float, align 4`
  - calls/intrinsics: `%8 = call float @llvm.fmuladd.f32(float 2.000000e+00, float %5, float %7)`
  - UB-related: `define dso_local float @f_gold(float noundef %0, float noundef %1) #0 {`
  - external declarations: `declare float @llvm.fmuladd.f32(float, float, float) #1`

## O1

- Status: ok
- Features: floating-point arithmetic, control flow, calls/intrinsics, UB-related, external declarations
- Evidence:
  - floating-point arithmetic: `%3 = fmul float %1, 2.000000e+00`
  - control flow: `ret float %4`
  - calls/intrinsics: `%4 = call float @llvm.fmuladd.f32(float %0, float 2.000000e+00, float %3)`
  - UB-related: `define dso_local float @f_gold(float noundef %0, float noundef %1) local_unnamed_addr #0 {`
  - external declarations: `declare float @llvm.fmuladd.f32(float, float, float) #1`

## O2

- Status: ok
- Features: floating-point arithmetic, control flow, calls/intrinsics, UB-related, external declarations
- Evidence:
  - floating-point arithmetic: `%3 = fmul float %1, 2.000000e+00`
  - control flow: `ret float %4`
  - calls/intrinsics: `%4 = tail call float @llvm.fmuladd.f32(float %0, float 2.000000e+00, float %3)`
  - UB-related: `define dso_local float @f_gold(float noundef %0, float noundef %1) local_unnamed_addr #0 {`
  - external declarations: `declare float @llvm.fmuladd.f32(float, float, float) #1`

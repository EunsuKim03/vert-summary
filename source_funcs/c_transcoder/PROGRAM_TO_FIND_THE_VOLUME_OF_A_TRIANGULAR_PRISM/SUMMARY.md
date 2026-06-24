# c_transcoder/PROGRAM_TO_FIND_THE_VOLUME_OF_A_TRIANGULAR_PRISM

- Source: `PROGRAM_TO_FIND_THE_VOLUME_OF_A_TRIANGULAR_PRISM_processed.c`
- Source note: processed source

## O0

- Status: ok
- Features:
  - floating-point arithmetic
  - control flow
  - memory/pointer
  - UB-related
- Evidence:
  - floating-point arithmetic: `%10 = fmul float %8, %9`
  - control flow: `ret float %14`
  - memory/pointer: `%4 = alloca float, align 4`
  - UB-related: `define dso_local float @f_gold(float noundef %0, float noundef %1, float noundef %2) #0 {`

## O1

- Status: ok
- Features:
  - floating-point arithmetic
  - control flow
  - UB-related
- Evidence:
  - floating-point arithmetic: `%4 = fmul float %0, %1`
  - control flow: `ret float %6`
  - UB-related: `define dso_local float @f_gold(float noundef %0, float noundef %1, float noundef %2) local_unnamed_addr #0 {`

## O2

- Status: ok
- Features:
  - floating-point arithmetic
  - control flow
  - UB-related
- Evidence:
  - floating-point arithmetic: `%4 = fmul float %0, %1`
  - control flow: `ret float %6`
  - UB-related: `define dso_local float @f_gold(float noundef %0, float noundef %1, float noundef %2) local_unnamed_addr #0 {`

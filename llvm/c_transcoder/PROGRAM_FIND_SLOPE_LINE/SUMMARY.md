# c_transcoder/PROGRAM_FIND_SLOPE_LINE

- Source: `PROGRAM_FIND_SLOPE_LINE_processed.c`
- Source note: processed source

## O0

- Status: ok
- Features: floating-point arithmetic, control flow, memory/pointer, UB-related
- Evidence:
  - floating-point arithmetic: `%11 = fsub float %9, %10`
  - control flow: `ret float %15`
  - memory/pointer: `%5 = alloca float, align 4`
  - UB-related: `define dso_local float @f_gold(float noundef %0, float noundef %1, float noundef %2, float noundef %3) #0 {`

## O1

- Status: ok
- Features: floating-point arithmetic, control flow, UB-related
- Evidence:
  - floating-point arithmetic: `%5 = fsub float %3, %1`
  - control flow: `ret float %7`
  - UB-related: `define dso_local float @f_gold(float noundef %0, float noundef %1, float noundef %2, float noundef %3) local_unnamed_addr #0 {`

## O2

- Status: ok
- Features: floating-point arithmetic, control flow, UB-related
- Evidence:
  - floating-point arithmetic: `%5 = fsub float %3, %1`
  - control flow: `ret float %7`
  - UB-related: `define dso_local float @f_gold(float noundef %0, float noundef %1, float noundef %2, float noundef %3) local_unnamed_addr #0 {`

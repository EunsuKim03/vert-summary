# c_transcoder/FIND_SUM_MODULO_K_FIRST_N_NATURAL_NUMBER_1

- Source: `FIND_SUM_MODULO_K_FIRST_N_NATURAL_NUMBER_1_processed.c`
- Source note: processed source

## O0

- Status: ok
- Features:
  - integer arithmetic
  - control flow
  - memory/pointer
  - UB-related
- Evidence:
  - integer arithmetic: `%10 = sdiv i32 %8, %9`
  - control flow: `ret i32 %27`
  - memory/pointer: `%3 = alloca i32, align 4`
  - UB-related: `define dso_local i32 @f_gold(i32 noundef %0, i32 noundef %1) #0 {`

## O1

- Status: ok
- Features:
  - integer arithmetic
  - control flow
  - UB-related
- Evidence:
  - integer arithmetic: `%3 = sdiv i32 %0, %1`
  - control flow: `ret i32 %12`
  - UB-related: `define dso_local i32 @f_gold(i32 noundef %0, i32 noundef %1) local_unnamed_addr #0 {`

## O2

- Status: ok
- Features:
  - integer arithmetic
  - control flow
  - UB-related
- Evidence:
  - integer arithmetic: `%3 = sdiv i32 %0, %1`
  - control flow: `ret i32 %12`
  - UB-related: `define dso_local i32 @f_gold(i32 noundef %0, i32 noundef %1) local_unnamed_addr #0 {`

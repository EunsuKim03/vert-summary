# c_transcoder/SUM_BINOMIAL_COEFFICIENTS_1

- Source: `SUM_BINOMIAL_COEFFICIENTS_1_processed.c`
- Source note: processed source

## O0

- Status: ok
- Features:
  - bitwise/shift
  - control flow
  - memory/pointer
  - UB-related
- Evidence:
  - bitwise/shift: `%4 = shl i32 1, %3`
  - control flow: `ret i32 %4`
  - memory/pointer: `%2 = alloca i32, align 4`
  - UB-related: `define dso_local i32 @f_gold(i32 noundef %0) #0 {`

## O1

- Status: ok
- Features:
  - bitwise/shift
  - control flow
  - UB-related
- Evidence:
  - bitwise/shift: `%2 = shl i32 1, %0`
  - control flow: `ret i32 %2`
  - UB-related: `define dso_local i32 @f_gold(i32 noundef %0) local_unnamed_addr #0 {`

## O2

- Status: ok
- Features:
  - bitwise/shift
  - control flow
  - UB-related
- Evidence:
  - bitwise/shift: `%2 = shl nuw i32 1, %0`
  - control flow: `ret i32 %2`
  - UB-related: `define dso_local i32 @f_gold(i32 noundef %0) local_unnamed_addr #0 {`

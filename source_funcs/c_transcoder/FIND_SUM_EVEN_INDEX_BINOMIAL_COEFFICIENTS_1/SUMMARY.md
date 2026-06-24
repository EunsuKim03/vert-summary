# c_transcoder/FIND_SUM_EVEN_INDEX_BINOMIAL_COEFFICIENTS_1

- Source: `FIND_SUM_EVEN_INDEX_BINOMIAL_COEFFICIENTS_1_processed.c`
- Source note: processed source

## O0

- Status: ok
- Features:
  - integer arithmetic
  - bitwise/shift
  - control flow
  - memory/pointer
  - UB-related
- Evidence:
  - integer arithmetic: `%4 = sub nsw i32 %3, 1`
  - bitwise/shift: `%5 = shl i32 1, %4`
  - control flow: `ret i32 %5`
  - memory/pointer: `%2 = alloca i32, align 4`
  - UB-related: `define dso_local i32 @f_gold(i32 noundef %0) #0 {`

## O1

- Status: ok
- Features:
  - integer arithmetic
  - bitwise/shift
  - control flow
  - UB-related
- Evidence:
  - integer arithmetic: `%2 = add nsw i32 %0, -1`
  - bitwise/shift: `%3 = shl i32 1, %2`
  - control flow: `ret i32 %3`
  - UB-related: `define dso_local i32 @f_gold(i32 noundef %0) local_unnamed_addr #0 {`

## O2

- Status: ok
- Features:
  - integer arithmetic
  - bitwise/shift
  - control flow
  - UB-related
- Evidence:
  - integer arithmetic: `%2 = add nsw i32 %0, -1`
  - bitwise/shift: `%3 = shl nuw i32 1, %2`
  - control flow: `ret i32 %3`
  - UB-related: `define dso_local i32 @f_gold(i32 noundef %0) local_unnamed_addr #0 {`

# c_transcoder/MULTIPLY_AN_INTEGER_WITH_3_5

- Source: `MULTIPLY_AN_INTEGER_WITH_3_5_processed.c`
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
  - integer arithmetic: `%6 = add nsw i32 %4, %5`
  - bitwise/shift: `%4 = shl i32 %3, 1`
  - control flow: `ret i32 %9`
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
  - integer arithmetic: `%2 = mul i32 %0, 3`
  - bitwise/shift: `%3 = ashr i32 %0, 1`
  - control flow: `ret i32 %4`
  - UB-related: `define dso_local i32 @f_gold(i32 noundef %0) local_unnamed_addr #0 {`

## O2

- Status: ok
- Features:
  - integer arithmetic
  - bitwise/shift
  - control flow
  - UB-related
- Evidence:
  - integer arithmetic: `%2 = mul i32 %0, 3`
  - bitwise/shift: `%3 = ashr i32 %0, 1`
  - control flow: `ret i32 %4`
  - UB-related: `define dso_local i32 @f_gold(i32 noundef %0) local_unnamed_addr #0 {`

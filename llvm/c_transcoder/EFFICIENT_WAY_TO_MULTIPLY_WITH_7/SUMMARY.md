# c_transcoder/EFFICIENT_WAY_TO_MULTIPLY_WITH_7

- Source: `EFFICIENT_WAY_TO_MULTIPLY_WITH_7_processed.c`
- Source note: processed source

## O0

- Status: ok
- Features: integer arithmetic, bitwise/shift, control flow, memory/pointer, UB-related
- Evidence:
  - integer arithmetic: `%6 = sub nsw i64 %4, %5`
  - bitwise/shift: `%4 = shl i64 %3, 3`
  - control flow: `ret i64 %6`
  - memory/pointer: `%2 = alloca i64, align 8`
  - UB-related: `define dso_local i64 @f_gold(i64 noundef %0) #0 {`

## O1

- Status: ok
- Features: integer arithmetic, control flow, UB-related
- Evidence:
  - integer arithmetic: `%2 = mul i64 %0, 7`
  - control flow: `ret i64 %2`
  - UB-related: `define dso_local i64 @f_gold(i64 noundef %0) local_unnamed_addr #0 {`

## O2

- Status: ok
- Features: integer arithmetic, control flow, UB-related
- Evidence:
  - integer arithmetic: `%2 = mul i64 %0, 7`
  - control flow: `ret i64 %2`
  - UB-related: `define dso_local i64 @f_gold(i64 noundef %0) local_unnamed_addr #0 {`

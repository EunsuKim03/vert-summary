# c_transcoder/COMPUTE_MODULUS_DIVISION_BY_A_POWER_OF_2_NUMBER

- Source: `COMPUTE_MODULUS_DIVISION_BY_A_POWER_OF_2_NUMBER_processed.c`
- Source note: processed source

## O0

- Status: ok
- Features: integer arithmetic, bitwise/shift, control flow, memory/pointer, UB-related
- Evidence:
  - integer arithmetic: `%7 = sub i32 %6, 1`
  - bitwise/shift: `%8 = and i32 %5, %7`
  - control flow: `ret i32 %8`
  - memory/pointer: `%3 = alloca i32, align 4`
  - UB-related: `define dso_local i32 @f_gold(i32 noundef %0, i32 noundef %1) #0 {`

## O1

- Status: ok
- Features: integer arithmetic, bitwise/shift, control flow, UB-related
- Evidence:
  - integer arithmetic: `%3 = add i32 %1, -1`
  - bitwise/shift: `%4 = and i32 %3, %0`
  - control flow: `ret i32 %4`
  - UB-related: `define dso_local i32 @f_gold(i32 noundef %0, i32 noundef %1) local_unnamed_addr #0 {`

## O2

- Status: ok
- Features: integer arithmetic, bitwise/shift, control flow, UB-related
- Evidence:
  - integer arithmetic: `%3 = add i32 %1, -1`
  - bitwise/shift: `%4 = and i32 %3, %0`
  - control flow: `ret i32 %4`
  - UB-related: `define dso_local i32 @f_gold(i32 noundef %0, i32 noundef %1) local_unnamed_addr #0 {`

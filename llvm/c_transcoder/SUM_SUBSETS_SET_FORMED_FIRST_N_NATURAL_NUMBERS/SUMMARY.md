# c_transcoder/SUM_SUBSETS_SET_FORMED_FIRST_N_NATURAL_NUMBERS

- Source: `SUM_SUBSETS_SET_FORMED_FIRST_N_NATURAL_NUMBERS_processed.c`
- Source note: processed source

## O0

- Status: ok
- Features: integer arithmetic, bitwise/shift, control flow, memory/pointer, casts/conversions, UB-related
- Evidence:
  - integer arithmetic: `%5 = add nsw i32 %4, 1`
  - bitwise/shift: `%10 = shl i32 1, %9`
  - control flow: `ret i64 %12`
  - memory/pointer: `%2 = alloca i32, align 4`
  - casts/conversions: `%12 = sext i32 %11 to i64`
  - UB-related: `define dso_local i64 @f_gold(i32 noundef %0) #0 {`

## O1

- Status: ok
- Features: integer arithmetic, bitwise/shift, control flow, casts/conversions, UB-related
- Evidence:
  - integer arithmetic: `%2 = add nsw i32 %0, 1`
  - bitwise/shift: `%6 = shl i32 %4, %5`
  - control flow: `ret i64 %7`
  - casts/conversions: `%7 = sext i32 %6 to i64`
  - UB-related: `define dso_local i64 @f_gold(i32 noundef %0) local_unnamed_addr #0 {`

## O2

- Status: ok
- Features: integer arithmetic, bitwise/shift, control flow, casts/conversions, UB-related
- Evidence:
  - integer arithmetic: `%2 = add nsw i32 %0, 1`
  - bitwise/shift: `%6 = shl i32 %4, %5`
  - control flow: `ret i64 %7`
  - casts/conversions: `%7 = sext i32 %6 to i64`
  - UB-related: `define dso_local i64 @f_gold(i32 noundef %0) local_unnamed_addr #0 {`

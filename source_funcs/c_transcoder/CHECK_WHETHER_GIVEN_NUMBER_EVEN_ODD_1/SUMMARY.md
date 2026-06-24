# c_transcoder/CHECK_WHETHER_GIVEN_NUMBER_EVEN_ODD_1

- Source: `CHECK_WHETHER_GIVEN_NUMBER_EVEN_ODD_1_processed.c`
- Source note: processed source

## O0

- Status: ok
- Features:
  - bitwise/shift
  - comparisons
  - control flow
  - memory/pointer
  - casts/conversions
  - UB-related
- Evidence:
  - bitwise/shift: `%4 = and i32 %3, 1`
  - comparisons: `%5 = icmp ne i32 %4, 0`
  - control flow: `ret i32 %7`
  - memory/pointer: `%2 = alloca i32, align 4`
  - casts/conversions: `%7 = zext i1 %6 to i32`
  - UB-related: `define dso_local i32 @f_gold(i32 noundef %0) #0 {`

## O1

- Status: ok
- Features:
  - bitwise/shift
  - control flow
  - UB-related
- Evidence:
  - bitwise/shift: `%2 = and i32 %0, 1`
  - control flow: `ret i32 %3`
  - UB-related: `define dso_local i32 @f_gold(i32 noundef %0) local_unnamed_addr #0 {`

## O2

- Status: ok
- Features:
  - bitwise/shift
  - control flow
  - UB-related
- Evidence:
  - bitwise/shift: `%2 = and i32 %0, 1`
  - control flow: `ret i32 %3`
  - UB-related: `define dso_local i32 @f_gold(i32 noundef %0) local_unnamed_addr #0 {`

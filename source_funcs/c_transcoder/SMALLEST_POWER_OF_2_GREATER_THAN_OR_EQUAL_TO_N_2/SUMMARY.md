# c_transcoder/SMALLEST_POWER_OF_2_GREATER_THAN_OR_EQUAL_TO_N_2

- Source: `SMALLEST_POWER_OF_2_GREATER_THAN_OR_EQUAL_TO_N_2_processed.c`
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
  - integer arithmetic: `%4 = add i32 %3, -1`
  - bitwise/shift: `%6 = lshr i32 %5, 1`
  - control flow: `ret i32 %27`
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
  - integer arithmetic: `%2 = add i32 %0, -1`
  - bitwise/shift: `%3 = lshr i32 %2, 1`
  - control flow: `ret i32 %13`
  - UB-related: `define dso_local i32 @f_gold(i32 noundef %0) local_unnamed_addr #0 {`

## O2

- Status: ok
- Features:
  - integer arithmetic
  - bitwise/shift
  - control flow
  - UB-related
- Evidence:
  - integer arithmetic: `%2 = add i32 %0, -1`
  - bitwise/shift: `%3 = lshr i32 %2, 1`
  - control flow: `ret i32 %13`
  - UB-related: `define dso_local i32 @f_gold(i32 noundef %0) local_unnamed_addr #0 {`

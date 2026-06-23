# c_transcoder/TURN_OFF_THE_RIGHTMOST_SET_BIT

- Source: `TURN_OFF_THE_RIGHTMOST_SET_BIT_processed.c`
- Source note: processed source

## O0

- Status: ok
- Features: integer arithmetic, bitwise/shift, control flow, memory/pointer, UB-related
- Evidence:
  - integer arithmetic: `%5 = sub i32 %4, 1`
  - bitwise/shift: `%6 = and i32 %3, %5`
  - control flow: `ret i32 %6`
  - memory/pointer: `%2 = alloca i32, align 4`
  - UB-related: `define dso_local i32 @f_gold(i32 noundef %0) #0 {`

## O1

- Status: ok
- Features: integer arithmetic, bitwise/shift, control flow, UB-related
- Evidence:
  - integer arithmetic: `%2 = add i32 %0, -1`
  - bitwise/shift: `%3 = and i32 %2, %0`
  - control flow: `ret i32 %3`
  - UB-related: `define dso_local i32 @f_gold(i32 noundef %0) local_unnamed_addr #0 {`

## O2

- Status: ok
- Features: integer arithmetic, bitwise/shift, control flow, UB-related
- Evidence:
  - integer arithmetic: `%2 = add i32 %0, -1`
  - bitwise/shift: `%3 = and i32 %2, %0`
  - control flow: `ret i32 %3`
  - UB-related: `define dso_local i32 @f_gold(i32 noundef %0) local_unnamed_addr #0 {`

# c_transcoder/ADD_1_TO_A_GIVEN_NUMBER_1

- Source: `ADD_1_TO_A_GIVEN_NUMBER_1_processed.c`
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
  - integer arithmetic: `%5 = sub nsw i32 0, %4`
  - bitwise/shift: `%4 = xor i32 %3, -1`
  - control flow: `ret i32 %5`
  - memory/pointer: `%2 = alloca i32, align 4`
  - UB-related: `define dso_local i32 @f_gold(i32 noundef %0) #0 {`

## O1

- Status: ok
- Features:
  - integer arithmetic
  - control flow
  - UB-related
- Evidence:
  - integer arithmetic: `%2 = add i32 %0, 1`
  - control flow: `ret i32 %2`
  - UB-related: `define dso_local i32 @f_gold(i32 noundef %0) local_unnamed_addr #0 {`

## O2

- Status: ok
- Features:
  - integer arithmetic
  - control flow
  - UB-related
- Evidence:
  - integer arithmetic: `%2 = add i32 %0, 1`
  - control flow: `ret i32 %2`
  - UB-related: `define dso_local i32 @f_gold(i32 noundef %0) local_unnamed_addr #0 {`

# c_transcoder/MAXIMUM_NUMBER_2X2_SQUARES_CAN_FIT_INSIDE_RIGHT_ISOSCELES_TRIANGLE

- Source: `MAXIMUM_NUMBER_2X2_SQUARES_CAN_FIT_INSIDE_RIGHT_ISOSCELES_TRIANGLE_processed.c`
- Source note: processed source

## O0

- Status: ok
- Features: integer arithmetic, control flow, memory/pointer, UB-related
- Evidence:
  - integer arithmetic: `%4 = sub nsw i32 %3, 2`
  - control flow: `ret i32 %11`
  - memory/pointer: `%2 = alloca i32, align 4`
  - UB-related: `define dso_local i32 @f_gold(i32 noundef %0) #0 {`

## O1

- Status: ok
- Features: integer arithmetic, control flow, UB-related
- Evidence:
  - integer arithmetic: `%2 = add nsw i32 %0, -2`
  - control flow: `ret i32 %6`
  - UB-related: `define dso_local i32 @f_gold(i32 noundef %0) local_unnamed_addr #0 {`

## O2

- Status: ok
- Features: integer arithmetic, control flow, UB-related
- Evidence:
  - integer arithmetic: `%2 = add nsw i32 %0, -2`
  - control flow: `ret i32 %6`
  - UB-related: `define dso_local i32 @f_gold(i32 noundef %0) local_unnamed_addr #0 {`

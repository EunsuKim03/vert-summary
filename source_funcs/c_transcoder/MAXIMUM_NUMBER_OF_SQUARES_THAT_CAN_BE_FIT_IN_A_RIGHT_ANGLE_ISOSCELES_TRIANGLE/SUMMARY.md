# c_transcoder/MAXIMUM_NUMBER_OF_SQUARES_THAT_CAN_BE_FIT_IN_A_RIGHT_ANGLE_ISOSCELES_TRIANGLE

- Source: `MAXIMUM_NUMBER_OF_SQUARES_THAT_CAN_BE_FIT_IN_A_RIGHT_ANGLE_ISOSCELES_TRIANGLE_processed.c`
- Source note: processed source

## O0

- Status: ok
- Features:
  - integer arithmetic
  - control flow
  - memory/pointer
  - UB-related
- Evidence:
  - integer arithmetic: `%7 = sdiv i32 %5, %6`
  - control flow: `ret i32 %13`
  - memory/pointer: `%3 = alloca i32, align 4`
  - UB-related: `define dso_local i32 @f_gold(i32 noundef %0, i32 noundef %1) #0 {`

## O1

- Status: ok
- Features:
  - integer arithmetic
  - control flow
  - UB-related
- Evidence:
  - integer arithmetic: `%3 = sdiv i32 %0, %1`
  - control flow: `ret i32 %6`
  - UB-related: `define dso_local i32 @f_gold(i32 noundef %0, i32 noundef %1) local_unnamed_addr #0 {`

## O2

- Status: ok
- Features:
  - integer arithmetic
  - control flow
  - UB-related
- Evidence:
  - integer arithmetic: `%3 = sdiv i32 %0, %1`
  - control flow: `ret i32 %6`
  - UB-related: `define dso_local i32 @f_gold(i32 noundef %0, i32 noundef %1) local_unnamed_addr #0 {`

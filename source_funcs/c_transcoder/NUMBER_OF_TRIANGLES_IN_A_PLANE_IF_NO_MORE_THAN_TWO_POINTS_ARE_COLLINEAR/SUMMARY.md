# c_transcoder/NUMBER_OF_TRIANGLES_IN_A_PLANE_IF_NO_MORE_THAN_TWO_POINTS_ARE_COLLINEAR

- Source: `NUMBER_OF_TRIANGLES_IN_A_PLANE_IF_NO_MORE_THAN_TWO_POINTS_ARE_COLLINEAR_processed.c`
- Source note: processed source

## O0

- Status: ok
- Features:
  - integer arithmetic
  - control flow
  - memory/pointer
  - UB-related
- Evidence:
  - integer arithmetic: `%5 = sub nsw i32 %4, 1`
  - control flow: `ret i32 %10`
  - memory/pointer: `%2 = alloca i32, align 4`
  - UB-related: `define dso_local i32 @f_gold(i32 noundef %0) #0 {`

## O1

- Status: ok
- Features:
  - integer arithmetic
  - control flow
  - UB-related
- Evidence:
  - integer arithmetic: `%2 = add nsw i32 %0, -1`
  - control flow: `ret i32 %6`
  - UB-related: `define dso_local i32 @f_gold(i32 noundef %0) local_unnamed_addr #0 {`

## O2

- Status: ok
- Features:
  - integer arithmetic
  - control flow
  - UB-related
- Evidence:
  - integer arithmetic: `%2 = add nsw i32 %0, -1`
  - control flow: `ret i32 %6`
  - UB-related: `define dso_local i32 @f_gold(i32 noundef %0) local_unnamed_addr #0 {`

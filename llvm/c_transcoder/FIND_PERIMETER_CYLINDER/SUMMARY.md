# c_transcoder/FIND_PERIMETER_CYLINDER

- Source: `FIND_PERIMETER_CYLINDER_processed.c`
- Source note: processed source

## O0

- Status: ok
- Features: integer arithmetic, control flow, memory/pointer, UB-related
- Evidence:
  - integer arithmetic: `%7 = add nsw i32 %5, %6`
  - control flow: `ret i32 %8`
  - memory/pointer: `%3 = alloca i32, align 4`
  - UB-related: `define dso_local i32 @f_gold(i32 noundef %0, i32 noundef %1) #0 {`

## O1

- Status: ok
- Features: integer arithmetic, bitwise/shift, control flow, UB-related
- Evidence:
  - integer arithmetic: `%3 = add nsw i32 %1, %0`
  - bitwise/shift: `%4 = shl nsw i32 %3, 1`
  - control flow: `ret i32 %4`
  - UB-related: `define dso_local i32 @f_gold(i32 noundef %0, i32 noundef %1) local_unnamed_addr #0 {`

## O2

- Status: ok
- Features: integer arithmetic, bitwise/shift, control flow, UB-related
- Evidence:
  - integer arithmetic: `%3 = add nsw i32 %1, %0`
  - bitwise/shift: `%4 = shl nsw i32 %3, 1`
  - control flow: `ret i32 %4`
  - UB-related: `define dso_local i32 @f_gold(i32 noundef %0, i32 noundef %1) local_unnamed_addr #0 {`

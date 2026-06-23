# c_transcoder/HEXAGONAL_NUMBER

- Source: `HEXAGONAL_NUMBER_processed.c`
- Source note: processed source

## O0

- Status: ok
- Features: integer arithmetic, control flow, memory/pointer, UB-related
- Evidence:
  - integer arithmetic: `%5 = mul nsw i32 2, %4`
  - control flow: `ret i32 %7`
  - memory/pointer: `%2 = alloca i32, align 4`
  - UB-related: `define dso_local i32 @f_gold(i32 noundef %0) #0 {`

## O1

- Status: ok
- Features: integer arithmetic, bitwise/shift, control flow, UB-related
- Evidence:
  - integer arithmetic: `%3 = add nsw i32 %2, -1`
  - bitwise/shift: `%2 = shl nsw i32 %0, 1`
  - control flow: `ret i32 %4`
  - UB-related: `define dso_local i32 @f_gold(i32 noundef %0) local_unnamed_addr #0 {`

## O2

- Status: ok
- Features: integer arithmetic, bitwise/shift, control flow, UB-related
- Evidence:
  - integer arithmetic: `%3 = add nsw i32 %2, -1`
  - bitwise/shift: `%2 = shl nsw i32 %0, 1`
  - control flow: `ret i32 %4`
  - UB-related: `define dso_local i32 @f_gold(i32 noundef %0) local_unnamed_addr #0 {`

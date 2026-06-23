# c_transcoder/TRIANGULAR_MATCHSTICK_NUMBER

- Source: `TRIANGULAR_MATCHSTICK_NUMBER_processed.c`
- Source note: processed source

## O0

- Status: ok
- Features: integer arithmetic, control flow, memory/pointer, UB-related
- Evidence:
  - integer arithmetic: `%4 = mul nsw i32 3, %3`
  - control flow: `ret i32 %8`
  - memory/pointer: `%2 = alloca i32, align 4`
  - UB-related: `define dso_local i32 @f_gold(i32 noundef %0) #0 {`

## O1

- Status: ok
- Features: integer arithmetic, control flow, UB-related
- Evidence:
  - integer arithmetic: `%2 = mul nsw i32 %0, 3`
  - control flow: `ret i32 %5`
  - UB-related: `define dso_local i32 @f_gold(i32 noundef %0) local_unnamed_addr #0 {`

## O2

- Status: ok
- Features: integer arithmetic, control flow, UB-related
- Evidence:
  - integer arithmetic: `%2 = mul nsw i32 %0, 3`
  - control flow: `ret i32 %5`
  - UB-related: `define dso_local i32 @f_gold(i32 noundef %0) local_unnamed_addr #0 {`

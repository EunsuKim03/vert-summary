# c_transcoder/SWAP_BITS_IN_A_GIVEN_NUMBER

- Source: `SWAP_BITS_IN_A_GIVEN_NUMBER_processed.c`
- Source note: processed source

## O0

- Status: ok
- Features: integer arithmetic, bitwise/shift, control flow, memory/pointer, UB-related
- Evidence:
  - integer arithmetic: `%18 = sub i32 %17, 1`
  - bitwise/shift: `%15 = lshr i32 %13, %14`
  - control flow: `ret i32 %40`
  - memory/pointer: `%5 = alloca i32, align 4`
  - UB-related: `define dso_local i32 @f_gold(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) #0 {`

## O1

- Status: ok
- Features: bitwise/shift, control flow, UB-related
- Evidence:
  - bitwise/shift: `%5 = lshr i32 %0, %1`
  - control flow: `ret i32 %14`
  - UB-related: `define dso_local i32 @f_gold(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #0 {`

## O2

- Status: ok
- Features: bitwise/shift, control flow, UB-related
- Evidence:
  - bitwise/shift: `%5 = lshr i32 %0, %1`
  - control flow: `ret i32 %14`
  - UB-related: `define dso_local i32 @f_gold(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #0 {`

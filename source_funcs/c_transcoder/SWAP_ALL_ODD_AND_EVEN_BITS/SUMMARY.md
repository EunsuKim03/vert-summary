# c_transcoder/SWAP_ALL_ODD_AND_EVEN_BITS

- Source: `SWAP_ALL_ODD_AND_EVEN_BITS_processed.c`
- Source note: processed source

## O0

- Status: ok
- Features:
  - bitwise/shift
  - control flow
  - memory/pointer
  - UB-related
- Evidence:
  - bitwise/shift: `%6 = and i32 %5, -1431655766`
  - control flow: `ret i32 %15`
  - memory/pointer: `%2 = alloca i32, align 4`
  - UB-related: `define dso_local i32 @f_gold(i32 noundef %0) #0 {`

## O1

- Status: ok
- Features:
  - bitwise/shift
  - control flow
  - UB-related
- Evidence:
  - bitwise/shift: `%2 = lshr i32 %0, 1`
  - control flow: `ret i32 %6`
  - UB-related: `define dso_local i32 @f_gold(i32 noundef %0) local_unnamed_addr #0 {`

## O2

- Status: ok
- Features:
  - bitwise/shift
  - control flow
  - UB-related
- Evidence:
  - bitwise/shift: `%2 = lshr i32 %0, 1`
  - control flow: `ret i32 %6`
  - UB-related: `define dso_local i32 @f_gold(i32 noundef %0) local_unnamed_addr #0 {`

# c_transcoder/SWAP_TWO_NIBBLES_BYTE

- Source: `SWAP_TWO_NIBBLES_BYTE_processed.c`
- Source note: processed source

## O0

- Status: ok
- Features: bitwise/shift, control flow, memory/pointer, UB-related
- Evidence:
  - bitwise/shift: `%4 = and i32 %3, 15`
  - control flow: `ret i32 %9`
  - memory/pointer: `%2 = alloca i32, align 4`
  - UB-related: `define dso_local i32 @f_gold(i32 noundef %0) #0 {`

## O1

- Status: ok
- Features: bitwise/shift, control flow, UB-related
- Evidence:
  - bitwise/shift: `%2 = shl i32 %0, 4`
  - control flow: `ret i32 %6`
  - UB-related: `define dso_local i32 @f_gold(i32 noundef %0) local_unnamed_addr #0 {`

## O2

- Status: ok
- Features: bitwise/shift, control flow, UB-related
- Evidence:
  - bitwise/shift: `%2 = shl i32 %0, 4`
  - control flow: `ret i32 %6`
  - UB-related: `define dso_local i32 @f_gold(i32 noundef %0) local_unnamed_addr #0 {`

# c_transcoder/ADD_1_TO_A_GIVEN_NUMBER

- Source: `ADD_1_TO_A_GIVEN_NUMBER_processed.c`
- Source note: processed source

## O0

- Status: ok
- Features: bitwise/shift, comparisons, control flow, loop, memory/pointer, UB-related
- Evidence:
  - bitwise/shift: `%7 = and i32 %5, %6`
  - comparisons: `%8 = icmp ne i32 %7, 0`
  - control flow: `br label %4`
  - loop: `llvm.loop metadata`
  - memory/pointer: `%2 = alloca i32, align 4`
  - UB-related: `define dso_local i32 @f_gold(i32 noundef %0) #0 {`

## O1

- Status: ok
- Features: bitwise/shift, comparisons, control flow, loop, UB-related
- Evidence:
  - bitwise/shift: `%2 = and i32 %0, 1`
  - comparisons: `%3 = icmp eq i32 %2, 0`
  - control flow: `br i1 %3, label %11, label %4`
  - loop: `llvm.loop metadata`
  - UB-related: `define dso_local i32 @f_gold(i32 noundef %0) local_unnamed_addr #0 {`

## O2

- Status: ok
- Features: bitwise/shift, comparisons, control flow, loop, UB-related
- Evidence:
  - bitwise/shift: `%2 = and i32 %0, 1`
  - comparisons: `%3 = icmp eq i32 %2, 0`
  - control flow: `br i1 %3, label %11, label %4`
  - loop: `llvm.loop metadata`
  - UB-related: `define dso_local i32 @f_gold(i32 noundef %0) local_unnamed_addr #0 {`

# c_transcoder/DETECT_IF_TWO_INTEGERS_HAVE_OPPOSITE_SIGNS

- Source: `DETECT_IF_TWO_INTEGERS_HAVE_OPPOSITE_SIGNS_processed.c`
- Source note: processed source

## O0

- Status: ok
- Features:
  - bitwise/shift
  - comparisons
  - control flow
  - memory/pointer
  - casts/conversions
  - UB-related
- Evidence:
  - bitwise/shift: `%7 = xor i32 %5, %6`
  - comparisons: `%8 = icmp slt i32 %7, 0`
  - control flow: `ret i32 %9`
  - memory/pointer: `%3 = alloca i32, align 4`
  - casts/conversions: `%9 = zext i1 %8 to i32`
  - UB-related: `define dso_local i32 @f_gold(i32 noundef %0, i32 noundef %1) #0 {`

## O1

- Status: ok
- Features:
  - bitwise/shift
  - control flow
  - UB-related
- Evidence:
  - bitwise/shift: `%3 = xor i32 %1, %0`
  - control flow: `ret i32 %4`
  - UB-related: `define dso_local i32 @f_gold(i32 noundef %0, i32 noundef %1) local_unnamed_addr #0 {`

## O2

- Status: ok
- Features:
  - bitwise/shift
  - control flow
  - UB-related
- Evidence:
  - bitwise/shift: `%3 = xor i32 %1, %0`
  - control flow: `ret i32 %4`
  - UB-related: `define dso_local i32 @f_gold(i32 noundef %0, i32 noundef %1) local_unnamed_addr #0 {`

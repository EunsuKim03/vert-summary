# c_transcoder/CHECK_NUMBER_IS_PERFECT_SQUARE_USING_ADDITIONSUBTRACTION

- Source: `CHECK_NUMBER_IS_PERFECT_SQUARE_USING_ADDITIONSUBTRACTION_processed.c`
- Source note: processed source

## O0

- Status: ok
- Features:
  - integer arithmetic
  - comparisons
  - control flow
  - loop
  - memory/pointer
  - UB-related
- Evidence:
  - integer arithmetic: `%13 = add nsw i32 %12, %11`
  - comparisons: `%9 = icmp slt i32 %7, %8`
  - control flow: `br label %6`
  - loop: `llvm.loop metadata`
  - memory/pointer: `%2 = alloca i32, align 4`
  - UB-related: `define dso_local i32 @f_gold(i32 noundef %0) #0 {`

## O1

- Status: ok
- Features:
  - integer arithmetic
  - bitwise/shift
  - comparisons
  - control flow
  - loop
  - casts/conversions
  - UB-related
- Evidence:
  - integer arithmetic: `%7 = add nuw nsw i32 %6, 2`
  - bitwise/shift: `%9 = xor i1 %8, true`
  - comparisons: `%2 = icmp sgt i32 %0, 0`
  - control flow: `br i1 %3, label %4, label %13`
  - loop: `llvm.loop metadata`
  - casts/conversions: `%15 = zext i1 %14 to i32`
  - UB-related: `define dso_local i32 @f_gold(i32 noundef %0) local_unnamed_addr #0 {`

## O2

- Status: ok
- Features:
  - integer arithmetic
  - comparisons
  - control flow
  - loop
  - UB-related
- Evidence:
  - integer arithmetic: `%4 = add nuw nsw i32 %7, 2`
  - comparisons: `%2 = icmp sgt i32 %0, 0`
  - control flow: `br i1 %2, label %6, label %11`
  - loop: `llvm.loop metadata`
  - UB-related: `define dso_local i32 @f_gold(i32 noundef %0) local_unnamed_addr #0 {`

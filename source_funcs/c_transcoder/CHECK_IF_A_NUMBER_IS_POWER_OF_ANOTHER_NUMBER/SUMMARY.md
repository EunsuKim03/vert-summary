# c_transcoder/CHECK_IF_A_NUMBER_IS_POWER_OF_ANOTHER_NUMBER

- Source: `CHECK_IF_A_NUMBER_IS_POWER_OF_ANOTHER_NUMBER_processed.c`
- Source note: processed source

## O0

- Status: ok
- Features:
  - integer arithmetic
  - comparisons
  - control flow
  - loop
  - memory/pointer
  - casts/conversions
  - UB-related
- Evidence:
  - integer arithmetic: `%21 = mul nsw i32 %20, %19`
  - comparisons: `%8 = icmp eq i32 %7, 1`
  - control flow: `br i1 %8, label %9, label %13`
  - loop: `llvm.loop metadata`
  - memory/pointer: `%3 = alloca i32, align 4`
  - casts/conversions: `%12 = zext i1 %11 to i32`
  - UB-related: `define dso_local i32 @f_gold(i32 noundef %0, i32 noundef %1) #0 {`

## O1

- Status: ok
- Features:
  - integer arithmetic
  - comparisons
  - control flow
  - loop
  - casts/conversions
  - UB-related
- Evidence:
  - integer arithmetic: `%10 = mul nsw i32 %9, %0`
  - comparisons: `%3 = icmp eq i32 %0, 1`
  - control flow: `br i1 %3, label %6, label %4`
  - loop: `llvm.loop metadata`
  - casts/conversions: `%17 = zext i1 %16 to i32`
  - UB-related: `define dso_local i32 @f_gold(i32 noundef %0, i32 noundef %1) local_unnamed_addr #0 {`

## O2

- Status: ok
- Features:
  - integer arithmetic
  - comparisons
  - control flow
  - loop
  - casts/conversions
  - UB-related
- Evidence:
  - integer arithmetic: `%10 = mul nsw i32 %9, %0`
  - comparisons: `%3 = icmp eq i32 %0, 1`
  - control flow: `br i1 %3, label %6, label %4`
  - loop: `llvm.loop metadata`
  - casts/conversions: `%17 = zext i1 %16 to i32`
  - UB-related: `define dso_local i32 @f_gold(i32 noundef %0, i32 noundef %1) local_unnamed_addr #0 {`

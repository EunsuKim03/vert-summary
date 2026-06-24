# c_transcoder/PAINTING_FENCE_ALGORITHM

- Source: `PAINTING_FENCE_ALGORITHM_processed.c`
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
  - integer arithmetic: `%21 = sub nsw i32 %20, 1`
  - comparisons: `%16 = icmp sle i32 %14, %15`
  - control flow: `br label %13`
  - loop: `llvm.loop metadata`
  - memory/pointer: `%3 = alloca i32, align 4`
  - casts/conversions: `%11 = sext i32 %10 to i64`
  - UB-related: `define dso_local i64 @f_gold(i32 noundef %0, i32 noundef %1) #0 {`

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
  - integer arithmetic: `%5 = add nsw i32 %1, -1`
  - comparisons: `%3 = icmp slt i32 %0, 2`
  - control flow: `br i1 %3, label %6, label %4`
  - loop: `llvm.loop metadata`
  - casts/conversions: `%8 = sext i32 %7 to i64`
  - UB-related: `define dso_local i64 @f_gold(i32 noundef %0, i32 noundef %1) local_unnamed_addr #0 {`

## O2

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
  - integer arithmetic: `%5 = add nsw i32 %1, -1`
  - bitwise/shift: `%7 = and i32 %6, 1`
  - comparisons: `%3 = icmp slt i32 %0, 2`
  - control flow: `br i1 %3, label %21, label %4`
  - loop: `llvm.loop metadata`
  - casts/conversions: `%23 = sext i32 %22 to i64`
  - UB-related: `define dso_local i64 @f_gold(i32 noundef %0, i32 noundef %1) local_unnamed_addr #0 {`

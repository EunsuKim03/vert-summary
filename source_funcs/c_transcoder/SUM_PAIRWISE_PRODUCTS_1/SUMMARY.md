# c_transcoder/SUM_PAIRWISE_PRODUCTS_1

- Source: `SUM_PAIRWISE_PRODUCTS_1_processed.c`
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
  - integer arithmetic: `%8 = add nsw i32 %7, 1`
  - comparisons: `%16 = icmp sle i32 %14, %15`
  - control flow: `br label %13`
  - loop: `llvm.loop metadata`
  - memory/pointer: `%2 = alloca i32, align 4`
  - casts/conversions: `%11 = sext i32 %10 to i64`
  - UB-related: `define dso_local i32 @f_gold(i32 noundef %0) #0 {`

## O1

- Status: ok
- Features:
  - integer arithmetic
  - bitwise/shift
  - comparisons
  - control flow
  - casts/conversions
  - UB-related
- Evidence:
  - integer arithmetic: `%2 = add nsw i32 %0, 1`
  - bitwise/shift: `%17 = lshr i65 %16, 1`
  - comparisons: `%6 = icmp slt i32 %0, 2`
  - control flow: `br i1 %6, label %43, label %7`
  - casts/conversions: `%5 = zext i32 %4 to i64`
  - UB-related: `define dso_local i32 @f_gold(i32 noundef %0) local_unnamed_addr #0 {`

## O2

- Status: ok
- Features:
  - integer arithmetic
  - bitwise/shift
  - comparisons
  - control flow
  - casts/conversions
  - UB-related
- Evidence:
  - integer arithmetic: `%2 = add nsw i32 %0, 1`
  - bitwise/shift: `%18 = lshr i65 %17, 1`
  - comparisons: `%6 = icmp slt i32 %0, 2`
  - control flow: `br i1 %6, label %42, label %7`
  - casts/conversions: `%5 = zext i32 %4 to i64`
  - UB-related: `define dso_local i32 @f_gold(i32 noundef %0) local_unnamed_addr #0 {`

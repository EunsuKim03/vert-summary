# c_transcoder/SUM_PAIRWISE_PRODUCTS

- Source: `SUM_PAIRWISE_PRODUCTS_processed.c`
- Source note: processed source

## O0

- Status: ok
- Features: integer arithmetic, comparisons, control flow, loop, memory/pointer, casts/conversions, UB-related
- Evidence:
  - integer arithmetic: `%20 = mul nsw i32 %18, %19`
  - comparisons: `%9 = icmp sle i32 %7, %8`
  - control flow: `br label %6`
  - loop: `llvm.loop metadata`
  - memory/pointer: `%2 = alloca i32, align 4`
  - casts/conversions: `%21 = sext i32 %20 to i64`
  - UB-related: `define dso_local i32 @f_gold(i32 noundef %0) #0 {`

## O1

- Status: ok
- Features: integer arithmetic, bitwise/shift, comparisons, control flow, loop, casts/conversions, UB-related
- Evidence:
  - integer arithmetic: `%4 = add i32 %0, 1`
  - bitwise/shift: `%21 = and i64 %20, 4294967295`
  - comparisons: `%2 = icmp slt i32 %0, 1`
  - control flow: `br i1 %2, label %12, label %3`
  - loop: `llvm.loop metadata`
  - casts/conversions: `%5 = zext i32 %4 to i64`
  - UB-related: `define dso_local i32 @f_gold(i32 noundef %0) local_unnamed_addr #0 {`

## O2

- Status: ok
- Features: integer arithmetic, bitwise/shift, comparisons, control flow, loop, casts/conversions, UB-related
- Evidence:
  - integer arithmetic: `%4 = add nuw i32 %0, 1`
  - bitwise/shift: `%7 = and i64 %6, 1`
  - comparisons: `%2 = icmp slt i32 %0, 1`
  - control flow: `br i1 %2, label %31, label %3`
  - loop: `llvm.loop metadata`
  - casts/conversions: `%5 = zext i32 %4 to i64`
  - UB-related: `define dso_local i32 @f_gold(i32 noundef %0) local_unnamed_addr #0 {`

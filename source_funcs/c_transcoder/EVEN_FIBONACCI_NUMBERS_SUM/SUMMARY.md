# c_transcoder/EVEN_FIBONACCI_NUMBERS_SUM

- Source: `EVEN_FIBONACCI_NUMBERS_SUM_processed.c`
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
  - integer arithmetic: `%14 = add nsw i64 %12, %13`
  - comparisons: `%9 = icmp slt i32 %8, 2`
  - control flow: `br i1 %9, label %10, label %11`
  - loop: `llvm.loop metadata`
  - memory/pointer: `%2 = alloca i32, align 4`
  - casts/conversions: `%18 = sext i32 %17 to i64`
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
  - integer arithmetic: `%12 = add nsw i64 %11, %6`
  - bitwise/shift: `%11 = shl nsw i64 %7, 2`
  - comparisons: `%2 = icmp slt i32 %0, 2`
  - control flow: `br i1 %2, label %21, label %3`
  - loop: `br i1 %13, label %18, label %5`
  - casts/conversions: `%4 = sext i32 %0 to i64`
  - UB-related: `define dso_local i32 @f_gold(i32 noundef %0) local_unnamed_addr #0 {`

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
  - integer arithmetic: `%10 = add nsw i64 %9, %8`
  - bitwise/shift: `%9 = shl nsw i64 %7, 2`
  - comparisons: `%2 = icmp slt i32 %0, 2`
  - control flow: `br i1 %2, label %15, label %3`
  - loop: `br i1 %11, label %13, label %5`
  - casts/conversions: `%4 = zext i32 %0 to i64`
  - UB-related: `define dso_local i32 @f_gold(i32 noundef %0) local_unnamed_addr #0 {`

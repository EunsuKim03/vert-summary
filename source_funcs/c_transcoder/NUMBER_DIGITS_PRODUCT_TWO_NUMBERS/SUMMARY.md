# c_transcoder/NUMBER_DIGITS_PRODUCT_TWO_NUMBERS

- Source: `NUMBER_DIGITS_PRODUCT_TWO_NUMBERS_processed.c`
- Source note: processed source

## O0

- Status: ok
- Features:
  - integer arithmetic
  - comparisons
  - control flow
  - loop
  - memory/pointer
  - calls/intrinsics
  - UB-related
  - external declarations
- Evidence:
  - integer arithmetic: `%10 = mul nsw i32 %8, %9`
  - comparisons: `%13 = icmp eq i32 %12, 0`
  - control flow: `br i1 %13, label %14, label %15`
  - loop: `llvm.loop metadata`
  - memory/pointer: `%3 = alloca i32, align 4`
  - calls/intrinsics: `%11 = call i32 @abs(i32 noundef %10) #2`
  - UB-related: `define dso_local i32 @f_gold(i32 noundef %0, i32 noundef %1) #0 {`
  - external declarations: `declare i32 @abs(i32 noundef) #1`

## O1

- Status: ok
- Features:
  - integer arithmetic
  - comparisons
  - control flow
  - loop
  - calls/intrinsics
  - UB-related
  - external declarations
- Evidence:
  - integer arithmetic: `%3 = mul nsw i32 %1, %0`
  - comparisons: `%4 = icmp eq i32 %3, 0`
  - control flow: `br i1 %4, label %13, label %5`
  - loop: `llvm.loop metadata`
  - calls/intrinsics: `%6 = call i32 @llvm.abs.i32(i32 %3, i1 true)`
  - UB-related: `define dso_local i32 @f_gold(i32 noundef %0, i32 noundef %1) local_unnamed_addr #0 {`
  - external declarations: `declare i32 @llvm.abs.i32(i32, i1 immarg) #1`

## O2

- Status: ok
- Features:
  - integer arithmetic
  - comparisons
  - control flow
  - loop
  - calls/intrinsics
  - UB-related
  - external declarations
- Evidence:
  - integer arithmetic: `%3 = mul nsw i32 %1, %0`
  - comparisons: `%4 = icmp eq i32 %3, 0`
  - control flow: `br i1 %4, label %13, label %5`
  - loop: `llvm.loop metadata`
  - calls/intrinsics: `%6 = tail call i32 @llvm.abs.i32(i32 %3, i1 true)`
  - UB-related: `define dso_local i32 @f_gold(i32 noundef %0, i32 noundef %1) local_unnamed_addr #0 {`
  - external declarations: `declare i32 @llvm.abs.i32(i32, i1 immarg) #1`

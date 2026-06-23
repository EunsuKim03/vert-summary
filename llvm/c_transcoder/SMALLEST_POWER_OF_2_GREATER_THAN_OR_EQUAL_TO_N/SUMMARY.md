# c_transcoder/SMALLEST_POWER_OF_2_GREATER_THAN_OR_EQUAL_TO_N

- Source: `SMALLEST_POWER_OF_2_GREATER_THAN_OR_EQUAL_TO_N_processed.c`
- Source note: processed source

## O0

- Status: ok
- Features: integer arithmetic, bitwise/shift, comparisons, control flow, loop, memory/pointer, UB-related
- Evidence:
  - integer arithmetic: `%10 = sub i32 %9, 1`
  - bitwise/shift: `%11 = and i32 %8, %10`
  - comparisons: `%6 = icmp ne i32 %5, 0`
  - control flow: `br i1 %6, label %7, label %15`
  - loop: `llvm.loop metadata`
  - memory/pointer: `%2 = alloca i32, align 4`
  - UB-related: `define dso_local i32 @f_gold(i32 noundef %0) #0 {`

## O1

- Status: ok
- Features: integer arithmetic, bitwise/shift, comparisons, control flow, loop, calls/intrinsics, UB-related, external declarations
- Evidence:
  - integer arithmetic: `%10 = add nuw nsw i32 %7, 1`
  - bitwise/shift: `%9 = lshr i32 %8, 1`
  - comparisons: `%3 = icmp eq i32 %2, 1`
  - control flow: `br i1 %3, label %15, label %4`
  - loop: `llvm.loop metadata`
  - calls/intrinsics: `%2 = call i32 @llvm.ctpop.i32(i32 %0), !range !5`
  - UB-related: `define dso_local i32 @f_gold(i32 noundef %0) local_unnamed_addr #0 {`
  - external declarations: `declare i32 @llvm.ctpop.i32(i32) #1`

## O2

- Status: ok
- Features: integer arithmetic, bitwise/shift, comparisons, control flow, loop, calls/intrinsics, UB-related, external declarations
- Evidence:
  - integer arithmetic: `%10 = add nuw nsw i32 %7, 1`
  - bitwise/shift: `%9 = lshr i32 %8, 1`
  - comparisons: `%3 = icmp eq i32 %2, 1`
  - control flow: `br i1 %3, label %15, label %4`
  - loop: `llvm.loop metadata`
  - calls/intrinsics: `%2 = tail call i32 @llvm.ctpop.i32(i32 %0), !range !5`
  - UB-related: `define dso_local i32 @f_gold(i32 noundef %0) local_unnamed_addr #0 {`
  - external declarations: `declare i32 @llvm.ctpop.i32(i32) #1`

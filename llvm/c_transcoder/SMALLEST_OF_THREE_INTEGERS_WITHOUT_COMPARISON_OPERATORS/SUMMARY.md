# c_transcoder/SMALLEST_OF_THREE_INTEGERS_WITHOUT_COMPARISON_OPERATORS

- Source: `SMALLEST_OF_THREE_INTEGERS_WITHOUT_COMPARISON_OPERATORS_processed.c`
- Source note: processed source

## O0

- Status: ok
- Features: integer arithmetic, comparisons, control flow, loop, memory/pointer, UB-related
- Evidence:
  - integer arithmetic: `%21 = add nsw i32 %20, -1`
  - comparisons: `%10 = icmp ne i32 %9, 0`
  - control flow: `br label %8`
  - loop: `llvm.loop metadata`
  - memory/pointer: `%4 = alloca i32, align 4`
  - UB-related: `define dso_local i32 @f_gold(i32 noundef %0, i32 noundef %1, i32 noundef %2) #0 {`

## O1

- Status: ok
- Features: integer arithmetic, bitwise/shift, comparisons, control flow, calls/intrinsics, UB-related, external declarations
- Evidence:
  - integer arithmetic: `%10 = add i32 %0, -1`
  - bitwise/shift: `%6 = and i1 %4, %5`
  - comparisons: `%4 = icmp ne i32 %0, 0`
  - control flow: `br i1 %8, label %9, label %20`
  - calls/intrinsics: `%16 = call i32 @llvm.umin.i32(i32 %15, i32 %11)`
  - UB-related: `define dso_local i32 @f_gold(i32 noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {`
  - external declarations: `declare i32 @llvm.umin.i32(i32, i32) #1`

## O2

- Status: ok
- Features: integer arithmetic, bitwise/shift, comparisons, control flow, calls/intrinsics, UB-related, external declarations
- Evidence:
  - integer arithmetic: `%10 = add i32 %0, -1`
  - bitwise/shift: `%6 = and i1 %4, %5`
  - comparisons: `%4 = icmp ne i32 %0, 0`
  - control flow: `br i1 %8, label %9, label %20`
  - calls/intrinsics: `%16 = call i32 @llvm.umin.i32(i32 %12, i32 %11)`
  - UB-related: `define dso_local i32 @f_gold(i32 noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {`
  - external declarations: `declare i32 @llvm.umin.i32(i32, i32) #1`

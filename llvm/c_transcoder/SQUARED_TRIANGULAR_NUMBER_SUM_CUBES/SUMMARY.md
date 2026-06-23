# c_transcoder/SQUARED_TRIANGULAR_NUMBER_SUM_CUBES

- Source: `SQUARED_TRIANGULAR_NUMBER_SUM_CUBES_processed.c`
- Source note: processed source

## O0

- Status: ok
- Features: integer arithmetic, comparisons, control flow, loop, memory/pointer, UB-related
- Evidence:
  - integer arithmetic: `%13 = mul nsw i32 %11, %12`
  - comparisons: `%9 = icmp slt i32 %7, %8`
  - control flow: `br label %6`
  - loop: `llvm.loop metadata`
  - memory/pointer: `%2 = alloca i32, align 4`
  - UB-related: `define dso_local i32 @f_gold(i32 noundef %0) #0 {`

## O1

- Status: ok
- Features: integer arithmetic, comparisons, control flow, loop, UB-related
- Evidence:
  - integer arithmetic: `%6 = mul nsw i32 %4, %4`
  - comparisons: `%2 = icmp sgt i32 %0, 0`
  - control flow: `br i1 %2, label %3, label %13`
  - loop: `llvm.loop metadata`
  - UB-related: `define dso_local i32 @f_gold(i32 noundef %0) local_unnamed_addr #0 {`

## O2

- Status: ok
- Features: integer arithmetic, comparisons, control flow, loop, UB-related
- Evidence:
  - integer arithmetic: `%6 = mul nsw i32 %4, %4`
  - comparisons: `%2 = icmp sgt i32 %0, 0`
  - control flow: `br i1 %2, label %3, label %13`
  - loop: `llvm.loop metadata`
  - UB-related: `define dso_local i32 @f_gold(i32 noundef %0) local_unnamed_addr #0 {`

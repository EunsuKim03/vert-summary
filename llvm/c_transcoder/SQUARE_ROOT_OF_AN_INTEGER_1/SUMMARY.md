# c_transcoder/SQUARE_ROOT_OF_AN_INTEGER_1

- Source: `SQUARE_ROOT_OF_AN_INTEGER_1_processed.c`
- Source note: processed source

## O0

- Status: ok
- Features: integer arithmetic, comparisons, control flow, loop, memory/pointer, UB-related
- Evidence:
  - integer arithmetic: `%24 = add nsw i32 %22, %23`
  - comparisons: `%9 = icmp eq i32 %8, 0`
  - control flow: `br i1 %9, label %13, label %10`
  - loop: `llvm.loop metadata`
  - memory/pointer: `%2 = alloca i32, align 4`
  - UB-related: `define dso_local i32 @f_gold(i32 noundef %0) #0 {`

## O1

- Status: ok
- Features: integer arithmetic, comparisons, control flow, loop, UB-related
- Evidence:
  - integer arithmetic: `%10 = add nsw i32 %5, %4`
  - comparisons: `%2 = icmp ult i32 %0, 2`
  - control flow: `br i1 %2, label %26, label %3`
  - loop: `llvm.loop metadata`
  - UB-related: `define dso_local i32 @f_gold(i32 noundef %0) local_unnamed_addr #0 {`

## O2

- Status: ok
- Features: integer arithmetic, comparisons, control flow, loop, UB-related
- Evidence:
  - integer arithmetic: `%9 = add nsw i32 %7, %8`
  - comparisons: `%2 = icmp ult i32 %0, 2`
  - control flow: `br i1 %2, label %21, label %3`
  - loop: `br i1 %20, label %21, label %5`
  - UB-related: `define dso_local i32 @f_gold(i32 noundef %0) local_unnamed_addr #0 {`

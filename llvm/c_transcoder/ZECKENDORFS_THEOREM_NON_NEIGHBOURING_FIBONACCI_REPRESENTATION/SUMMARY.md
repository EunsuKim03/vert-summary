# c_transcoder/ZECKENDORFS_THEOREM_NON_NEIGHBOURING_FIBONACCI_REPRESENTATION

- Source: `ZECKENDORFS_THEOREM_NON_NEIGHBOURING_FIBONACCI_REPRESENTATION_processed.c`
- Source note: processed source

## O0

- Status: ok
- Features: integer arithmetic, comparisons, control flow, loop, memory/pointer, UB-related
- Evidence:
  - integer arithmetic: `%24 = add nsw i32 %22, %23`
  - comparisons: `%8 = icmp eq i32 %7, 0`
  - control flow: `br i1 %8, label %12, label %9`
  - loop: `llvm.loop metadata`
  - memory/pointer: `%2 = alloca i32, align 4`
  - UB-related: `define dso_local i32 @f_gold(i32 noundef %0) #0 {`

## O1

- Status: ok
- Features: integer arithmetic, comparisons, control flow, loop, UB-related
- Evidence:
  - integer arithmetic: `%7 = add nsw i32 %5, %4`
  - comparisons: `%2 = icmp ult i32 %0, 2`
  - control flow: `br i1 %2, label %8, label %3`
  - loop: `llvm.loop metadata`
  - UB-related: `define dso_local i32 @f_gold(i32 noundef %0) local_unnamed_addr #0 {`

## O2

- Status: ok
- Features: integer arithmetic, comparisons, control flow, loop, UB-related
- Evidence:
  - integer arithmetic: `%7 = add nsw i32 %5, %4`
  - comparisons: `%2 = icmp ult i32 %0, 2`
  - control flow: `br i1 %2, label %8, label %3`
  - loop: `llvm.loop metadata`
  - UB-related: `define dso_local i32 @f_gold(i32 noundef %0) local_unnamed_addr #0 {`

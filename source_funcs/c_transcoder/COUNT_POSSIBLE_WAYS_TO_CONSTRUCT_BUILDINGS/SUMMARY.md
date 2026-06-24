# c_transcoder/COUNT_POSSIBLE_WAYS_TO_CONSTRUCT_BUILDINGS

- Source: `COUNT_POSSIBLE_WAYS_TO_CONSTRUCT_BUILDINGS_processed.c`
- Source note: processed source

## O0

- Status: ok
- Features:
  - integer arithmetic
  - comparisons
  - control flow
  - loop
  - memory/pointer
  - UB-related
- Evidence:
  - integer arithmetic: `%23 = add nsw i32 %21, %22`
  - comparisons: `%11 = icmp eq i32 %10, 1`
  - control flow: `br i1 %11, label %12, label %13`
  - loop: `llvm.loop metadata`
  - memory/pointer: `%2 = alloca i32, align 4`
  - UB-related: `define dso_local i32 @f_gold(i32 noundef %0) #0 {`

## O1

- Status: ok
- Features:
  - integer arithmetic
  - comparisons
  - control flow
  - loop
  - UB-related
- Evidence:
  - integer arithmetic: `%6 = add nsw i32 %13, %14`
  - comparisons: `%2 = icmp eq i32 %0, 1`
  - control flow: `br i1 %2, label %17, label %3`
  - loop: `llvm.loop metadata`
  - UB-related: `define dso_local i32 @f_gold(i32 noundef %0) local_unnamed_addr #0 {`

## O2

- Status: ok
- Features:
  - integer arithmetic
  - bitwise/shift
  - comparisons
  - control flow
  - loop
  - UB-related
- Evidence:
  - integer arithmetic: `%6 = add i32 %0, -1`
  - bitwise/shift: `%8 = and i32 %6, 7`
  - comparisons: `%2 = icmp eq i32 %0, 1`
  - control flow: `br i1 %2, label %46, label %3`
  - loop: `llvm.loop metadata`
  - UB-related: `define dso_local i32 @f_gold(i32 noundef %0) local_unnamed_addr #0 {`

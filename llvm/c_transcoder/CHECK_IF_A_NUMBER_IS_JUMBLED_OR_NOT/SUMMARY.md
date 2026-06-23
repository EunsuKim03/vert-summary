# c_transcoder/CHECK_IF_A_NUMBER_IS_JUMBLED_OR_NOT

- Source: `CHECK_IF_A_NUMBER_IS_JUMBLED_OR_NOT_processed.c`
- Source note: processed source

## O0

- Status: ok
- Features: integer arithmetic, comparisons, control flow, loop, memory/pointer, calls/intrinsics, UB-related, external declarations
- Evidence:
  - integer arithmetic: `%7 = sdiv i32 %6, 10`
  - comparisons: `%8 = icmp eq i32 %7, 0`
  - control flow: `br i1 %8, label %9, label %10`
  - loop: `llvm.loop metadata`
  - memory/pointer: `%2 = alloca i32, align 4`
  - calls/intrinsics: `%28 = call i32 @abs(i32 noundef %27) #2`
  - UB-related: `define dso_local i32 @f_gold(i32 noundef %0) #0 {`
  - external declarations: `declare i32 @abs(i32 noundef) #1`

## O1

- Status: ok
- Features: integer arithmetic, comparisons, control flow, loop, calls/intrinsics, UB-related, external declarations
- Evidence:
  - integer arithmetic: `%2 = add i32 %0, 9`
  - comparisons: `%3 = icmp ult i32 %2, 19`
  - control flow: `br i1 %3, label %18, label %4`
  - loop: `br i1 %16, label %18, label %4`
  - calls/intrinsics: `%15 = call i32 @llvm.abs.i32(i32 %14, i1 true)`
  - UB-related: `define dso_local i32 @f_gold(i32 noundef %0) local_unnamed_addr #0 {`
  - external declarations: `declare i32 @llvm.abs.i32(i32, i1 immarg) #1`

## O2

- Status: ok
- Features: integer arithmetic, comparisons, control flow, loop, calls/intrinsics, UB-related, external declarations
- Evidence:
  - integer arithmetic: `%2 = add i32 %0, 9`
  - comparisons: `%3 = icmp ult i32 %2, 19`
  - control flow: `br i1 %3, label %17, label %4`
  - loop: `br i1 %16, label %4, label %17`
  - calls/intrinsics: `%15 = tail call i32 @llvm.abs.i32(i32 %14, i1 true)`
  - UB-related: `define dso_local i32 @f_gold(i32 noundef %0) local_unnamed_addr #0 {`
  - external declarations: `declare i32 @llvm.abs.i32(i32, i1 immarg) #1`

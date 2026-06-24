# c_transcoder/COUNT_NUMBERS_THAT_DONT_CONTAIN_3

- Source: `COUNT_NUMBERS_THAT_DONT_CONTAIN_3_processed.c`
- Source note: processed source

## O0

- Status: ok
- Features:
  - integer arithmetic
  - comparisons
  - control flow
  - loop
  - recursion
  - memory/pointer
  - calls/intrinsics
  - UB-related
- Evidence:
  - integer arithmetic: `%18 = sub nsw i32 %17, 1`
  - comparisons: `%7 = icmp slt i32 %6, 3`
  - control flow: `br i1 %7, label %8, label %10`
  - loop: `llvm.loop metadata`
  - recursion: `f_gold calls itself`
  - memory/pointer: `%2 = alloca i32, align 4`
  - calls/intrinsics: `%36 = call i32 @f_gold(i32 noundef %35)`
  - UB-related: `define dso_local i32 @f_gold(i32 noundef %0) #0 {`

## O1

- Status: ok
- Features:
  - integer arithmetic
  - comparisons
  - control flow
  - loop
  - recursion
  - calls/intrinsics
  - UB-related
- Evidence:
  - integer arithmetic: `%6 = add nsw i32 %0, -1`
  - comparisons: `%2 = icmp slt i32 %0, 3`
  - control flow: `br i1 %2, label %27, label %3`
  - loop: `llvm.loop metadata`
  - recursion: `f_gold calls itself`
  - calls/intrinsics: `%16 = call i32 @f_gold(i32 noundef %10)`
  - UB-related: `define dso_local i32 @f_gold(i32 noundef %0) local_unnamed_addr #0 {`

## O2

- Status: ok
- Features:
  - integer arithmetic
  - comparisons
  - control flow
  - loop
  - recursion
  - calls/intrinsics
  - UB-related
- Evidence:
  - integer arithmetic: `%12 = add nsw i32 %7, -1`
  - comparisons: `%2 = icmp slt i32 %0, 3`
  - control flow: `br i1 %2, label %35, label %3`
  - loop: `llvm.loop metadata`
  - recursion: `f_gold calls itself`
  - calls/intrinsics: `%23 = tail call i32 @f_gold(i32 noundef %21)`
  - UB-related: `define dso_local i32 @f_gold(i32 noundef %0) local_unnamed_addr #0 {`

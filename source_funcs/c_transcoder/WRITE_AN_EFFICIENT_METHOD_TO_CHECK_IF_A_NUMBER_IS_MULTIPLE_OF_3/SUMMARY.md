# c_transcoder/WRITE_AN_EFFICIENT_METHOD_TO_CHECK_IF_A_NUMBER_IS_MULTIPLE_OF_3

- Source: `WRITE_AN_EFFICIENT_METHOD_TO_CHECK_IF_A_NUMBER_IS_MULTIPLE_OF_3_processed.c`
- Source note: processed source

## O0

- Status: ok
- Features:
  - integer arithmetic
  - bitwise/shift
  - comparisons
  - control flow
  - loop
  - recursion
  - memory/pointer
  - calls/intrinsics
  - UB-related
  - external declarations
- Evidence:
  - integer arithmetic: `%10 = sub nsw i32 0, %9`
  - bitwise/shift: `%25 = and i32 %24, 1`
  - comparisons: `%7 = icmp slt i32 %6, 0`
  - control flow: `br i1 %7, label %8, label %11`
  - loop: `llvm.loop metadata`
  - recursion: `f_gold calls itself`
  - memory/pointer: `%2 = alloca i32, align 4`
  - calls/intrinsics: `%44 = call i32 @abs(i32 noundef %43) #2`
  - UB-related: `define dso_local i32 @f_gold(i32 noundef %0) #0 {`
  - external declarations: `declare i32 @abs(i32 noundef) #1`

## O1

- Status: ok
- Features:
  - integer arithmetic
  - bitwise/shift
  - comparisons
  - control flow
  - loop
  - recursion
  - calls/intrinsics
  - UB-related
  - external declarations
- Evidence:
  - integer arithmetic: `%9 = add nuw nsw i32 %6, %8`
  - bitwise/shift: `%8 = and i32 %7, 1`
  - comparisons: `%14 = icmp ult i32 %7, 4`
  - control flow: `switch i32 %2, label %4 [`
  - loop: `llvm.loop metadata`
  - recursion: `f_gold calls itself`
  - calls/intrinsics: `%2 = call i32 @llvm.abs.i32(i32 %0, i1 true)`
  - UB-related: `define dso_local i32 @f_gold(i32 noundef %0) local_unnamed_addr #0 {`
  - external declarations: `declare i32 @llvm.abs.i32(i32, i1 immarg) #1`

## O2

- Status: ok
- Features:
  - integer arithmetic
  - bitwise/shift
  - comparisons
  - control flow
  - loop
  - calls/intrinsics
  - UB-related
  - external declarations
- Evidence:
  - integer arithmetic: `%10 = add nuw nsw i32 %7, %9`
  - bitwise/shift: `%9 = and i32 %8, 1`
  - comparisons: `%15 = icmp ult i32 %8, 4`
  - control flow: `br label %2`
  - loop: `llvm.loop metadata`
  - calls/intrinsics: `%4 = tail call i32 @llvm.abs.i32(i32 %3, i1 true)`
  - UB-related: `define dso_local i32 @f_gold(i32 noundef %0) local_unnamed_addr #0 {`
  - external declarations: `declare i32 @llvm.abs.i32(i32, i1 immarg) #1`

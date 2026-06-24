# c_transcoder/MAXIMUM_SUM_ALTERNATING_SUBSEQUENCE_SUM

- Source: `MAXIMUM_SUM_ALTERNATING_SUBSEQUENCE_SUM_processed.c`
- Source note: processed source

## O0

- Status: ok
- Features:
  - integer arithmetic
  - comparisons
  - control flow
  - loop
  - memory/pointer
  - casts/conversions
  - calls/intrinsics
  - UB-related
  - external declarations
- Evidence:
  - integer arithmetic: `%26 = mul nuw i64 4, %22`
  - comparisons: `%15 = icmp eq i32 %14, 1`
  - control flow: `br i1 %15, label %16, label %20`
  - loop: `llvm.loop metadata`
  - memory/pointer: `define dso_local i32 @f_gold(i32* noundef %0, i32 noundef %1) #0 {`
  - casts/conversions: `%22 = zext i32 %21 to i64`
  - calls/intrinsics: `%23 = call i8* @llvm.stacksave()`
  - UB-related: `define dso_local i32 @f_gold(i32* noundef %0, i32 noundef %1) #0 {`
  - external declarations: `declare i8* @llvm.stacksave() #1`

## O1

- Status: ok
- Features:
  - integer arithmetic
  - bitwise/shift
  - comparisons
  - control flow
  - loop
  - memory/pointer
  - casts/conversions
  - calls/intrinsics
  - UB-related
  - external declarations
- Evidence:
  - integer arithmetic: `%27 = add nuw nsw i64 %19, 1`
  - bitwise/shift: `%11 = shl nuw nsw i64 %7, 2`
  - comparisons: `%3 = icmp eq i32 %1, 1`
  - control flow: `br i1 %3, label %4, label %6`
  - loop: `llvm.loop metadata`
  - memory/pointer: `define dso_local i32 @f_gold(i32* nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #0 {`
  - casts/conversions: `%7 = zext i32 %1 to i64`
  - calls/intrinsics: `%8 = call i8* @llvm.stacksave()`
  - UB-related: `define dso_local i32 @f_gold(i32* nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #0 {`
  - external declarations: `declare i8* @llvm.stacksave() #1`

## O2

- Status: ok
- Features:
  - integer arithmetic
  - bitwise/shift
  - comparisons
  - control flow
  - loop
  - memory/pointer
  - casts/conversions
  - calls/intrinsics
  - UB-related
  - external declarations
- Evidence:
  - integer arithmetic: `%28 = add nuw nsw i64 %17, 1`
  - bitwise/shift: `%11 = shl nuw nsw i64 %7, 2`
  - comparisons: `%3 = icmp eq i32 %1, 1`
  - control flow: `br i1 %3, label %4, label %6`
  - loop: `llvm.loop metadata`
  - memory/pointer: `define dso_local i32 @f_gold(i32* nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #0 {`
  - casts/conversions: `%7 = zext i32 %1 to i64`
  - calls/intrinsics: `%8 = tail call i8* @llvm.stacksave()`
  - UB-related: `define dso_local i32 @f_gold(i32* nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #0 {`
  - external declarations: `declare i8* @llvm.stacksave() #1`

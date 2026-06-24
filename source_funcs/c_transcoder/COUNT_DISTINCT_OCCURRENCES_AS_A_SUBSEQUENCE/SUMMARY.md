# c_transcoder/COUNT_DISTINCT_OCCURRENCES_AS_A_SUBSEQUENCE

- Source: `COUNT_DISTINCT_OCCURRENCES_AS_A_SUBSEQUENCE_processed.c`
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
  - integer arithmetic: `%27 = add nsw i32 %26, 1`
  - comparisons: `%23 = icmp sgt i32 %21, %22`
  - control flow: `br i1 %23, label %24, label %25`
  - loop: `llvm.loop metadata`
  - memory/pointer: `define dso_local i32 @f_gold(i8* noundef %0, i8* noundef %1) #0 {`
  - casts/conversions: `%17 = trunc i64 %16 to i32`
  - calls/intrinsics: `%16 = call i64 @strlen(i8* noundef %15)`
  - UB-related: `define dso_local i32 @f_gold(i8* noundef %0, i8* noundef %1) #0 {`
  - external declarations: `declare i64 @strlen(i8* noundef) #1`

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
  - integer arithmetic: `%9 = add i64 %3, 1`
  - bitwise/shift: `%10 = and i64 %9, 4294967295`
  - comparisons: `%7 = icmp sgt i32 %4, %6`
  - control flow: `br i1 %7, label %90, label %8`
  - loop: `llvm.loop metadata`
  - memory/pointer: `define dso_local i32 @f_gold(i8* nocapture noundef readonly %0, i8* nocapture noundef readonly %1) local_unnamed_addr #0 {`
  - casts/conversions: `%4 = trunc i64 %3 to i32`
  - calls/intrinsics: `%3 = call i64 @strlen(i8* noundef nonnull dereferenceable(1) %1)`
  - UB-related: `define dso_local i32 @f_gold(i8* nocapture noundef readonly %0, i8* nocapture noundef readonly %1) local_unnamed_addr #0 {`
  - external declarations: `declare i64 @strlen(i8* nocapture noundef) local_unnamed_addr #1`

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
  - vector/SIMD
  - UB-related
  - external declarations
- Evidence:
  - integer arithmetic: `%9 = add i64 %3, 1`
  - bitwise/shift: `%10 = and i64 %9, 4294967295`
  - comparisons: `%7 = icmp sgt i32 %4, %6`
  - control flow: `br i1 %7, label %164, label %8`
  - loop: `llvm.loop metadata`
  - memory/pointer: `define dso_local i32 @f_gold(i8* nocapture noundef readonly %0, i8* nocapture noundef readonly %1) local_unnamed_addr #0 {`
  - casts/conversions: `%4 = trunc i64 %3 to i32`
  - calls/intrinsics: `%3 = tail call i64 @strlen(i8* noundef nonnull dereferenceable(1) %1)`
  - vector/SIMD: `%49 = bitcast i32* %48 to <4 x i32>*`
  - UB-related: `define dso_local i32 @f_gold(i8* nocapture noundef readonly %0, i8* nocapture noundef readonly %1) local_unnamed_addr #0 {`
  - external declarations: `declare i64 @strlen(i8* nocapture noundef) local_unnamed_addr #1`

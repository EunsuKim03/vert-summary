# c_transcoder/LCS_FORMED_CONSECUTIVE_SEGMENTS_LEAST_LENGTH_K

- Source: `LCS_FORMED_CONSECUTIVE_SEGMENTS_LEAST_LENGTH_K_processed.c`
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
  - integer arithmetic: `%24 = add nsw i32 %23, 1`
  - comparisons: `%49 = icmp sle i32 %47, %48`
  - control flow: `br label %46`
  - loop: `llvm.loop metadata`
  - memory/pointer: `define dso_local i32 @f_gold(i32 noundef %0, i8* noundef %1, i8* noundef %2) #0 {`
  - casts/conversions: `%19 = trunc i64 %18 to i32`
  - calls/intrinsics: `%18 = call i64 @strlen(i8* noundef %17)`
  - UB-related: `define dso_local i32 @f_gold(i32 noundef %0, i8* noundef %1, i8* noundef %2) #0 {`
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
  - integer arithmetic: `%7 = add i64 %4, 1`
  - bitwise/shift: `%8 = and i64 %7, 4294967295`
  - comparisons: `%17 = icmp slt i32 %5, 1`
  - control flow: `br i1 %17, label %38, label %18`
  - loop: `llvm.loop metadata`
  - memory/pointer: `define dso_local i32 @f_gold(i32 noundef %0, i8* nocapture noundef readonly %1, i8* nocapture noundef readonly %2) local_unnamed_addr #0 {`
  - casts/conversions: `%5 = trunc i64 %4 to i32`
  - calls/intrinsics: `%4 = call i64 @strlen(i8* noundef nonnull dereferenceable(1) %1)`
  - UB-related: `define dso_local i32 @f_gold(i32 noundef %0, i8* nocapture noundef readonly %1, i8* nocapture noundef readonly %2) local_unnamed_addr #0 {`
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
  - UB-related
  - external declarations
- Evidence:
  - integer arithmetic: `%7 = add i64 %4, 1`
  - bitwise/shift: `%8 = and i64 %7, 4294967295`
  - comparisons: `%17 = icmp slt i32 %5, 1`
  - control flow: `br i1 %17, label %38, label %18`
  - loop: `llvm.loop metadata`
  - memory/pointer: `define dso_local i32 @f_gold(i32 noundef %0, i8* nocapture noundef readonly %1, i8* nocapture noundef readonly %2) local_unnamed_addr #0 {`
  - casts/conversions: `%5 = trunc i64 %4 to i32`
  - calls/intrinsics: `%4 = tail call i64 @strlen(i8* noundef nonnull dereferenceable(1) %1)`
  - UB-related: `define dso_local i32 @f_gold(i32 noundef %0, i8* nocapture noundef readonly %1, i8* nocapture noundef readonly %2) local_unnamed_addr #0 {`
  - external declarations: `declare i64 @strlen(i8* nocapture noundef) local_unnamed_addr #1`

# c_transcoder/MAXIMUM_CONSECUTIVE_REPEATING_CHARACTER_STRING

- Source: `MAXIMUM_CONSECUTIVE_REPEATING_CHARACTER_STRING_processed.c`
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
  - integer arithmetic: `%21 = add nsw i32 %20, 1`
  - comparisons: `%18 = icmp slt i32 %16, %17`
  - control flow: `br label %15`
  - loop: `llvm.loop metadata`
  - memory/pointer: `define dso_local signext i8 @f_gold(i8* noundef %0) #0 {`
  - casts/conversions: `%11 = trunc i64 %10 to i32`
  - calls/intrinsics: `%10 = call i64 @strlen(i8* noundef %9)`
  - UB-related: `define dso_local signext i8 @f_gold(i8* noundef %0) #0 {`
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
  - integer arithmetic: `%19 = add nuw nsw i64 %14, 1`
  - bitwise/shift: `%7 = shl i64 %2, 32`
  - comparisons: `%5 = icmp sgt i32 %3, 0`
  - control flow: `br i1 %5, label %6, label %11`
  - loop: `llvm.loop metadata`
  - memory/pointer: `define dso_local signext i8 @f_gold(i8* nocapture noundef readonly %0) local_unnamed_addr #0 {`
  - casts/conversions: `%3 = trunc i64 %2 to i32`
  - calls/intrinsics: `%2 = call i64 @strlen(i8* noundef nonnull dereferenceable(1) %0)`
  - UB-related: `define dso_local signext i8 @f_gold(i8* nocapture noundef readonly %0) local_unnamed_addr #0 {`
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
  - integer arithmetic: `%18 = add nuw nsw i64 %13, 1`
  - bitwise/shift: `%7 = shl i64 %2, 32`
  - comparisons: `%5 = icmp sgt i32 %3, 0`
  - control flow: `br i1 %5, label %6, label %10`
  - loop: `llvm.loop metadata`
  - memory/pointer: `define dso_local signext i8 @f_gold(i8* nocapture noundef readonly %0) local_unnamed_addr #0 {`
  - casts/conversions: `%3 = trunc i64 %2 to i32`
  - calls/intrinsics: `%2 = tail call i64 @strlen(i8* noundef nonnull dereferenceable(1) %0)`
  - UB-related: `define dso_local signext i8 @f_gold(i8* nocapture noundef readonly %0) local_unnamed_addr #0 {`
  - external declarations: `declare i64 @strlen(i8* nocapture noundef) local_unnamed_addr #1`

# c_transcoder/LONGEST_REPEATING_SUBSEQUENCE

- Source: `LONGEST_REPEATING_SUBSEQUENCE_processed.c`
- Source note: processed source

## O0

- Status: ok
- Features: integer arithmetic, comparisons, control flow, loop, memory/pointer, casts/conversions, calls/intrinsics, UB-related, external declarations
- Evidence:
  - integer arithmetic: `%15 = add nsw i32 %14, 1`
  - comparisons: `%26 = icmp sle i32 %24, %25`
  - control flow: `br label %23`
  - loop: `llvm.loop metadata`
  - memory/pointer: `define dso_local i32 @f_gold(i8* noundef %0) #0 {`
  - casts/conversions: `%13 = trunc i64 %12 to i32`
  - calls/intrinsics: `%12 = call i64 @strlen(i8* noundef %11)`
  - UB-related: `define dso_local i32 @f_gold(i8* noundef %0) #0 {`
  - external declarations: `declare i64 @strlen(i8* noundef) #1`

## O1

- Status: ok
- Features: integer arithmetic, bitwise/shift, comparisons, control flow, loop, memory/pointer, casts/conversions, calls/intrinsics, UB-related, external declarations
- Evidence:
  - integer arithmetic: `%4 = add i64 %2, 1`
  - bitwise/shift: `%5 = and i64 %4, 4294967295`
  - comparisons: `%8 = icmp slt i32 %3, 0`
  - control flow: `br i1 %8, label %20, label %9`
  - loop: `llvm.loop metadata`
  - memory/pointer: `define dso_local i32 @f_gold(i8* nocapture noundef readonly %0) local_unnamed_addr #0 {`
  - casts/conversions: `%3 = trunc i64 %2 to i32`
  - calls/intrinsics: `%2 = call i64 @strlen(i8* noundef nonnull dereferenceable(1) %0)`
  - UB-related: `define dso_local i32 @f_gold(i8* nocapture noundef readonly %0) local_unnamed_addr #0 {`
  - external declarations: `declare i64 @strlen(i8* nocapture noundef) local_unnamed_addr #1`

## O2

- Status: ok
- Features: integer arithmetic, bitwise/shift, comparisons, control flow, loop, memory/pointer, casts/conversions, calls/intrinsics, UB-related, external declarations
- Evidence:
  - integer arithmetic: `%4 = add i64 %2, 1`
  - bitwise/shift: `%5 = and i64 %4, 4294967295`
  - comparisons: `%8 = icmp slt i32 %3, 0`
  - control flow: `br i1 %8, label %80, label %9`
  - loop: `llvm.loop metadata`
  - memory/pointer: `define dso_local i32 @f_gold(i8* nocapture noundef readonly %0) local_unnamed_addr #0 {`
  - casts/conversions: `%3 = trunc i64 %2 to i32`
  - calls/intrinsics: `%2 = tail call i64 @strlen(i8* noundef nonnull dereferenceable(1) %0)`
  - UB-related: `define dso_local i32 @f_gold(i8* nocapture noundef readonly %0) local_unnamed_addr #0 {`
  - external declarations: `declare i64 @strlen(i8* nocapture noundef) local_unnamed_addr #1`

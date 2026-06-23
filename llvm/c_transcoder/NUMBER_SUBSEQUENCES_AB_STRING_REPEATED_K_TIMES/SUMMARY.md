# c_transcoder/NUMBER_SUBSEQUENCES_AB_STRING_REPEATED_K_TIMES

- Source: `NUMBER_SUBSEQUENCES_AB_STRING_REPEATED_K_TIMES_processed.c`
- Source note: processed source

## O0

- Status: ok
- Features: integer arithmetic, comparisons, control flow, loop, memory/pointer, casts/conversions, calls/intrinsics, UB-related, external declarations
- Evidence:
  - integer arithmetic: `%27 = add nsw i32 %26, 1`
  - comparisons: `%16 = icmp slt i32 %14, %15`
  - control flow: `br label %13`
  - loop: `llvm.loop metadata`
  - memory/pointer: `define dso_local i32 @f_gold(i8* noundef %0, i32 noundef %1) #0 {`
  - casts/conversions: `%12 = trunc i64 %11 to i32`
  - calls/intrinsics: `%11 = call i64 @strlen(i8* noundef %10)`
  - UB-related: `define dso_local i32 @f_gold(i8* noundef %0, i32 noundef %1) #0 {`
  - external declarations: `declare i64 @strlen(i8* noundef) #1`

## O1

- Status: ok
- Features: integer arithmetic, bitwise/shift, comparisons, control flow, loop, memory/pointer, casts/conversions, calls/intrinsics, UB-related, external declarations
- Evidence:
  - integer arithmetic: `%12 = mul nsw i32 %9, %1`
  - bitwise/shift: `%7 = and i64 %3, 4294967295`
  - comparisons: `%5 = icmp sgt i32 %4, 0`
  - control flow: `br i1 %5, label %6, label %8`
  - loop: `llvm.loop metadata`
  - memory/pointer: `define dso_local i32 @f_gold(i8* nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #0 {`
  - casts/conversions: `%4 = trunc i64 %3 to i32`
  - calls/intrinsics: `%3 = call i64 @strlen(i8* noundef nonnull dereferenceable(1) %0)`
  - UB-related: `define dso_local i32 @f_gold(i8* nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #0 {`
  - external declarations: `declare i64 @strlen(i8* nocapture noundef) local_unnamed_addr #1`

## O2

- Status: ok
- Features: integer arithmetic, bitwise/shift, comparisons, control flow, loop, memory/pointer, casts/conversions, calls/intrinsics, UB-related, external declarations
- Evidence:
  - integer arithmetic: `%11 = sub nsw i64 %7, %8`
  - bitwise/shift: `%7 = and i64 %3, 4294967295`
  - comparisons: `%5 = icmp sgt i32 %4, 0`
  - control flow: `br i1 %5, label %6, label %31`
  - loop: `llvm.loop metadata`
  - memory/pointer: `define dso_local i32 @f_gold(i8* nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #0 {`
  - casts/conversions: `%4 = trunc i64 %3 to i32`
  - calls/intrinsics: `%3 = tail call i64 @strlen(i8* noundef nonnull dereferenceable(1) %0)`
  - UB-related: `define dso_local i32 @f_gold(i8* nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #0 {`
  - external declarations: `declare i64 @strlen(i8* nocapture noundef) local_unnamed_addr #1`

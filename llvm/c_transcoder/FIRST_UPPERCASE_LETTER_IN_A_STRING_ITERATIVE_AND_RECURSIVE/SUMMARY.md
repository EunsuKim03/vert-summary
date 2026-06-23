# c_transcoder/FIRST_UPPERCASE_LETTER_IN_A_STRING_ITERATIVE_AND_RECURSIVE

- Source: `FIRST_UPPERCASE_LETTER_IN_A_STRING_ITERATIVE_AND_RECURSIVE_processed.c`
- Source note: processed source

## O0

- Status: ok
- Features: integer arithmetic, comparisons, control flow, loop, memory/pointer, casts/conversions, calls/intrinsics, UB-related, external declarations
- Evidence:
  - integer arithmetic: `%29 = add nsw i32 %28, 1`
  - comparisons: `%10 = icmp ult i64 %7, %9`
  - control flow: `br label %5`
  - loop: `llvm.loop metadata`
  - memory/pointer: `define dso_local signext i8 @f_gold(i8* noundef %0) #0 {`
  - casts/conversions: `%7 = sext i32 %6 to i64`
  - calls/intrinsics: `%9 = call i64 @strlen(i8* noundef %8)`
  - UB-related: `define dso_local signext i8 @f_gold(i8* noundef %0) #0 {`
  - external declarations: `declare i64 @strlen(i8* noundef) #1`

## O1

- Status: ok
- Features: integer arithmetic, comparisons, control flow, loop, memory/pointer, casts/conversions, calls/intrinsics, UB-related, external declarations
- Evidence:
  - integer arithmetic: `%13 = add nuw i64 %7, 1`
  - comparisons: `%3 = icmp eq i64 %2, 0`
  - control flow: `br i1 %3, label %14, label %6`
  - loop: `llvm.loop metadata`
  - memory/pointer: `define dso_local signext i8 @f_gold(i8* nocapture noundef readonly %0) local_unnamed_addr #0 {`
  - casts/conversions: `%10 = sext i8 %9 to i32`
  - calls/intrinsics: `%2 = call i64 @strlen(i8* noundef nonnull dereferenceable(1) %0)`
  - UB-related: `define dso_local signext i8 @f_gold(i8* nocapture noundef readonly %0) local_unnamed_addr #0 {`
  - external declarations: `declare i64 @strlen(i8* nocapture noundef) local_unnamed_addr #1`

## O2

- Status: ok
- Features: integer arithmetic, comparisons, control flow, loop, memory/pointer, casts/conversions, calls/intrinsics, UB-related, external declarations
- Evidence:
  - integer arithmetic: `%13 = add nuw i64 %7, 1`
  - comparisons: `%3 = icmp eq i64 %2, 0`
  - control flow: `br i1 %3, label %14, label %6`
  - loop: `llvm.loop metadata`
  - memory/pointer: `define dso_local signext i8 @f_gold(i8* nocapture noundef readonly %0) local_unnamed_addr #0 {`
  - casts/conversions: `%10 = sext i8 %9 to i32`
  - calls/intrinsics: `%2 = tail call i64 @strlen(i8* noundef nonnull dereferenceable(1) %0)`
  - UB-related: `define dso_local signext i8 @f_gold(i8* nocapture noundef readonly %0) local_unnamed_addr #0 {`
  - external declarations: `declare i64 @strlen(i8* nocapture noundef) local_unnamed_addr #1`

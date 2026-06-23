# c_transcoder/CHECK_IF_STRING_REMAINS_PALINDROME_AFTER_REMOVING_GIVEN_NUMBER_OF_CHARACTERS

- Source: `CHECK_IF_STRING_REMAINS_PALINDROME_AFTER_REMOVING_GIVEN_NUMBER_OF_CHARACTERS_processed.c`
- Source note: processed source

## O0

- Status: ok
- Features: comparisons, control flow, memory/pointer, casts/conversions, calls/intrinsics, UB-related, external declarations
- Evidence:
  - comparisons: `%12 = icmp sge i32 %10, %11`
  - control flow: `br i1 %12, label %13, label %14`
  - memory/pointer: `define dso_local i32 @f_gold(i8* noundef %0, i32 noundef %1) #0 {`
  - casts/conversions: `%9 = trunc i64 %8 to i32`
  - calls/intrinsics: `%8 = call i64 @strlen(i8* noundef %7)`
  - UB-related: `define dso_local i32 @f_gold(i8* noundef %0, i32 noundef %1) #0 {`
  - external declarations: `declare i64 @strlen(i8* noundef) #1`

## O1

- Status: ok
- Features: comparisons, control flow, memory/pointer, casts/conversions, calls/intrinsics, UB-related, external declarations
- Evidence:
  - comparisons: `%5 = icmp sge i32 %4, %1`
  - control flow: `ret i32 %6`
  - memory/pointer: `define dso_local i32 @f_gold(i8* nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #0 {`
  - casts/conversions: `%4 = trunc i64 %3 to i32`
  - calls/intrinsics: `%3 = call i64 @strlen(i8* noundef nonnull dereferenceable(1) %0)`
  - UB-related: `define dso_local i32 @f_gold(i8* nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #0 {`
  - external declarations: `declare i64 @strlen(i8* nocapture noundef) local_unnamed_addr #1`

## O2

- Status: ok
- Features: comparisons, control flow, memory/pointer, casts/conversions, calls/intrinsics, UB-related, external declarations
- Evidence:
  - comparisons: `%5 = icmp sge i32 %4, %1`
  - control flow: `ret i32 %6`
  - memory/pointer: `define dso_local i32 @f_gold(i8* nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #0 {`
  - casts/conversions: `%4 = trunc i64 %3 to i32`
  - calls/intrinsics: `%3 = tail call i64 @strlen(i8* noundef nonnull dereferenceable(1) %0)`
  - UB-related: `define dso_local i32 @f_gold(i8* nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #0 {`
  - external declarations: `declare i64 @strlen(i8* nocapture noundef) local_unnamed_addr #1`

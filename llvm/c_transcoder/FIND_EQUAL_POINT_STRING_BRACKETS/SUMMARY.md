# c_transcoder/FIND_EQUAL_POINT_STRING_BRACKETS

- Source: `FIND_EQUAL_POINT_STRING_BRACKETS_processed.c`
- Source note: processed source

## O0

- Status: ok
- Features: integer arithmetic, comparisons, control flow, loop, memory/pointer, casts/conversions, calls/intrinsics, UB-related, external declarations
- Evidence:
  - integer arithmetic: `%17 = add nsw i32 %16, 1`
  - comparisons: `%37 = icmp eq i32 %36, 40`
  - control flow: `br i1 %37, label %38, label %40`
  - loop: `llvm.loop metadata`
  - memory/pointer: `define dso_local i32 @f_gold(i8* noundef %0) #0 {`
  - casts/conversions: `%15 = trunc i64 %14 to i32`
  - calls/intrinsics: `%14 = call i64 @strlen(i8* noundef %13)`
  - UB-related: `define dso_local i32 @f_gold(i8* noundef %0) #0 {`
  - external declarations: `declare i64 @strlen(i8* noundef) #1`

## O1

- Status: ok
- Features: integer arithmetic, bitwise/shift, comparisons, control flow, loop, memory/pointer, casts/conversions, calls/intrinsics, UB-related, external declarations
- Evidence:
  - integer arithmetic: `%4 = add i64 %2, 1`
  - bitwise/shift: `%5 = and i64 %4, 4294967295`
  - comparisons: `%15 = icmp eq i8 %14, 40`
  - control flow: `br i1 %15, label %16, label %18`
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
  - comparisons: `%15 = icmp eq i8 %14, 40`
  - control flow: `br i1 %15, label %16, label %18`
  - loop: `llvm.loop metadata`
  - memory/pointer: `define dso_local i32 @f_gold(i8* nocapture noundef readonly %0) local_unnamed_addr #0 {`
  - casts/conversions: `%3 = trunc i64 %2 to i32`
  - calls/intrinsics: `%2 = tail call i64 @strlen(i8* noundef nonnull dereferenceable(1) %0)`
  - UB-related: `define dso_local i32 @f_gold(i8* nocapture noundef readonly %0) local_unnamed_addr #0 {`
  - external declarations: `declare i64 @strlen(i8* nocapture noundef) local_unnamed_addr #1`

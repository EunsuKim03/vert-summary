# c_transcoder/CHECK_POSSIBLE_TRANSFORM_ONE_STRING_ANOTHER

- Source: `CHECK_POSSIBLE_TRANSFORM_ONE_STRING_ANOTHER_processed.c`
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
  - comparisons: `%32 = icmp sle i32 %30, %31`
  - control flow: `br label %29`
  - loop: `llvm.loop metadata`
  - memory/pointer: `define dso_local i32 @f_gold(i8* noundef %0, i8* noundef %1) #0 {`
  - casts/conversions: `%16 = trunc i64 %15 to i32`
  - calls/intrinsics: `%15 = call i64 @strlen(i8* noundef %14)`
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
  - integer arithmetic: `%5 = add i64 %3, 1`
  - bitwise/shift: `%6 = and i64 %5, 4294967295`
  - comparisons: `%12 = icmp eq i64 %11, 0`
  - control flow: `br i1 %12, label %13, label %23`
  - loop: `llvm.loop metadata`
  - memory/pointer: `define dso_local i32 @f_gold(i8* nocapture noundef readonly %0, i8* nocapture noundef readonly %1) local_unnamed_addr #0 {`
  - casts/conversions: `%48 = zext i8 %47 to i32`
  - calls/intrinsics: `%3 = call i64 @strlen(i8* noundef nonnull dereferenceable(1) %0)`
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
  - UB-related
  - external declarations
- Evidence:
  - integer arithmetic: `%5 = add i64 %3, 1`
  - bitwise/shift: `%6 = and i64 %5, 4294967295`
  - comparisons: `%12 = icmp eq i64 %11, 0`
  - control flow: `br i1 %12, label %14, label %13`
  - loop: `llvm.loop metadata`
  - memory/pointer: `define dso_local i32 @f_gold(i8* nocapture noundef readonly %0, i8* nocapture noundef readonly %1) local_unnamed_addr #0 {`
  - casts/conversions: `%76 = zext i8 %75 to i32`
  - calls/intrinsics: `%3 = tail call i64 @strlen(i8* noundef nonnull dereferenceable(1) %0)`
  - UB-related: `define dso_local i32 @f_gold(i8* nocapture noundef readonly %0, i8* nocapture noundef readonly %1) local_unnamed_addr #0 {`
  - external declarations: `declare i64 @strlen(i8* nocapture noundef) local_unnamed_addr #1`

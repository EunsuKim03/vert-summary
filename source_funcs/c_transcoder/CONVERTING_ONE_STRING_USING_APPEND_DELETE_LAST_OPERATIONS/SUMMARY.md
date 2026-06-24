# c_transcoder/CONVERTING_ONE_STRING_USING_APPEND_DELETE_LAST_OPERATIONS

- Source: `CONVERTING_ONE_STRING_USING_APPEND_DELETE_LAST_OPERATIONS_processed.c`
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
  - integer arithmetic: `%14 = add i64 %11, %13`
  - comparisons: `%17 = icmp ult i64 %14, %16`
  - control flow: `br i1 %17, label %18, label %19`
  - loop: `llvm.loop metadata`
  - memory/pointer: `define dso_local i32 @f_gold(i8* noundef %0, i8* noundef %1, i32 noundef %2) #0 {`
  - casts/conversions: `%16 = sext i32 %15 to i64`
  - calls/intrinsics: `%11 = call i64 @strlen(i8* noundef %10)`
  - UB-related: `define dso_local i32 @f_gold(i8* noundef %0, i8* noundef %1, i32 noundef %2) #0 {`
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
  - integer arithmetic: `%6 = add i64 %5, %4`
  - bitwise/shift: `%34 = and i32 %33, 1`
  - comparisons: `%8 = icmp ult i64 %6, %7`
  - control flow: `br i1 %8, label %36, label %9`
  - loop: `llvm.loop metadata`
  - memory/pointer: `define dso_local i32 @f_gold(i8* nocapture noundef readonly %0, i8* nocapture noundef readonly %1, i32 noundef %2) local_unnamed_addr #0 {`
  - casts/conversions: `%7 = sext i32 %2 to i64`
  - calls/intrinsics: `%4 = call i64 @strlen(i8* noundef nonnull dereferenceable(1) %0)`
  - UB-related: `define dso_local i32 @f_gold(i8* nocapture noundef readonly %0, i8* nocapture noundef readonly %1, i32 noundef %2) local_unnamed_addr #0 {`
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
  - integer arithmetic: `%6 = add i64 %5, %4`
  - bitwise/shift: `%32 = and i32 %31, 1`
  - comparisons: `%8 = icmp ult i64 %6, %7`
  - control flow: `br i1 %8, label %34, label %9`
  - loop: `llvm.loop metadata`
  - memory/pointer: `define dso_local i32 @f_gold(i8* nocapture noundef readonly %0, i8* nocapture noundef readonly %1, i32 noundef %2) local_unnamed_addr #0 {`
  - casts/conversions: `%7 = sext i32 %2 to i64`
  - calls/intrinsics: `%4 = tail call i64 @strlen(i8* noundef nonnull dereferenceable(1) %0)`
  - UB-related: `define dso_local i32 @f_gold(i8* nocapture noundef readonly %0, i8* nocapture noundef readonly %1, i32 noundef %2) local_unnamed_addr #0 {`
  - external declarations: `declare i64 @strlen(i8* nocapture noundef) local_unnamed_addr #1`

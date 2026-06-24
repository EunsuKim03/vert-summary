# c_transcoder/CALCULATE_MAXIMUM_VALUE_USING_SIGN_TWO_NUMBERS_STRING

- Source: `CALCULATE_MAXIMUM_VALUE_USING_SIGN_TWO_NUMBERS_STRING_processed.c`
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
  - integer arithmetic: `%9 = sub nsw i32 %8, 48`
  - comparisons: `%15 = icmp ult i64 %12, %14`
  - control flow: `br label %10`
  - loop: `llvm.loop metadata`
  - memory/pointer: `define dso_local i32 @f_gold(i8* noundef %0) #0 {`
  - casts/conversions: `%8 = sext i8 %7 to i32`
  - calls/intrinsics: `%14 = call i64 @strlen(i8* noundef %13)`
  - UB-related: `define dso_local i32 @f_gold(i8* noundef %0) #0 {`
  - external declarations: `declare i64 @strlen(i8* noundef) #1`

## O1

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
  - integer arithmetic: `%4 = add nsw i32 %3, -48`
  - comparisons: `%6 = icmp ugt i64 %5, 1`
  - control flow: `br i1 %6, label %9, label %7`
  - loop: `llvm.loop metadata`
  - memory/pointer: `define dso_local i32 @f_gold(i8* nocapture noundef readonly %0) local_unnamed_addr #0 {`
  - casts/conversions: `%3 = sext i8 %2 to i32`
  - calls/intrinsics: `%5 = call i64 @strlen(i8* noundef nonnull %0)`
  - UB-related: `define dso_local i32 @f_gold(i8* nocapture noundef readonly %0) local_unnamed_addr #0 {`
  - external declarations: `declare i64 @strlen(i8* nocapture noundef) local_unnamed_addr #1`

## O2

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
  - integer arithmetic: `%4 = add nsw i32 %3, -48`
  - comparisons: `%6 = icmp ugt i64 %5, 1`
  - control flow: `br i1 %6, label %9, label %7`
  - loop: `llvm.loop metadata`
  - memory/pointer: `define dso_local i32 @f_gold(i8* nocapture noundef readonly %0) local_unnamed_addr #0 {`
  - casts/conversions: `%3 = sext i8 %2 to i32`
  - calls/intrinsics: `%5 = tail call i64 @strlen(i8* noundef nonnull %0)`
  - UB-related: `define dso_local i32 @f_gold(i8* nocapture noundef readonly %0) local_unnamed_addr #0 {`
  - external declarations: `declare i64 @strlen(i8* nocapture noundef) local_unnamed_addr #1`

# c_transcoder/CHECK_LARGE_NUMBER_DIVISIBLE_4_NOT

- Source: `CHECK_LARGE_NUMBER_DIVISIBLE_4_NOT_processed.c`
- Source note: processed source

## O0

- Status: ok
- Features:
  - integer arithmetic
  - comparisons
  - control flow
  - memory/pointer
  - casts/conversions
  - calls/intrinsics
  - UB-related
  - external declarations
- Evidence:
  - integer arithmetic: `%21 = sub nsw i32 %20, 48`
  - comparisons: `%11 = icmp eq i32 %10, 0`
  - control flow: `br i1 %11, label %12, label %13`
  - memory/pointer: `define dso_local i32 @f_gold(i8* noundef %0) #0 {`
  - casts/conversions: `%9 = trunc i64 %8 to i32`
  - calls/intrinsics: `%8 = call i64 @strlen(i8* noundef %7)`
  - UB-related: `define dso_local i32 @f_gold(i8* noundef %0) #0 {`
  - external declarations: `declare i64 @strlen(i8* noundef) #1`

## O1

- Status: ok
- Features:
  - integer arithmetic
  - bitwise/shift
  - comparisons
  - control flow
  - memory/pointer
  - casts/conversions
  - calls/intrinsics
  - UB-related
  - external declarations
- Evidence:
  - integer arithmetic: `%10 = add i64 %9, -4294967296`
  - bitwise/shift: `%6 = and i8 %5, 3`
  - comparisons: `%7 = icmp eq i8 %6, 0`
  - control flow: `switch i32 %3, label %8 [`
  - memory/pointer: `define dso_local i32 @f_gold(i8* nocapture noundef readonly %0) local_unnamed_addr #0 {`
  - casts/conversions: `%3 = trunc i64 %2 to i32`
  - calls/intrinsics: `%2 = call i64 @strlen(i8* noundef nonnull dereferenceable(1) %0)`
  - UB-related: `define dso_local i32 @f_gold(i8* nocapture noundef readonly %0) local_unnamed_addr #0 {`
  - external declarations: `declare i64 @strlen(i8* nocapture noundef) local_unnamed_addr #1`

## O2

- Status: ok
- Features:
  - integer arithmetic
  - bitwise/shift
  - comparisons
  - control flow
  - memory/pointer
  - casts/conversions
  - calls/intrinsics
  - UB-related
  - external declarations
- Evidence:
  - integer arithmetic: `%10 = add i64 %9, -4294967296`
  - bitwise/shift: `%6 = and i8 %5, 3`
  - comparisons: `%7 = icmp eq i8 %6, 0`
  - control flow: `switch i32 %3, label %8 [`
  - memory/pointer: `define dso_local i32 @f_gold(i8* nocapture noundef readonly %0) local_unnamed_addr #0 {`
  - casts/conversions: `%3 = trunc i64 %2 to i32`
  - calls/intrinsics: `%2 = tail call i64 @strlen(i8* noundef nonnull dereferenceable(1) %0)`
  - UB-related: `define dso_local i32 @f_gold(i8* nocapture noundef readonly %0) local_unnamed_addr #0 {`
  - external declarations: `declare i64 @strlen(i8* nocapture noundef) local_unnamed_addr #1`

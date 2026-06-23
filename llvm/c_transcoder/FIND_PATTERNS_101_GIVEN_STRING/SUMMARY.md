# c_transcoder/FIND_PATTERNS_101_GIVEN_STRING

- Source: `FIND_PATTERNS_101_GIVEN_STRING_processed.c`
- Source note: processed source

## O0

- Status: ok
- Features: integer arithmetic, comparisons, control flow, loop, memory/pointer, casts/conversions, calls/intrinsics, UB-related, external declarations
- Evidence:
  - integer arithmetic: `%37 = add nsw i32 %36, 1`
  - comparisons: `%13 = icmp slt i32 %10, %12`
  - control flow: `br label %9`
  - loop: `llvm.loop metadata`
  - memory/pointer: `define dso_local i32 @f_gold(i8* noundef %0) #0 {`
  - casts/conversions: `%12 = call i32 (i8*, ...) bitcast (i32 (...)* @len to i32 (i8*, ...)*)(i8* noundef %11)`
  - calls/intrinsics: `%12 = call i32 (i8*, ...) bitcast (i32 (...)* @len to i32 (i8*, ...)*)(i8* noundef %11)`
  - UB-related: `define dso_local i32 @f_gold(i8* noundef %0) #0 {`
  - external declarations: `declare i32 @len(...) #1`

## O1

- Status: ok
- Features: integer arithmetic, comparisons, control flow, loop, memory/pointer, casts/conversions, calls/intrinsics, UB-related, external declarations
- Evidence:
  - integer arithmetic: `%22 = add i64 %18, 1`
  - comparisons: `%4 = icmp sgt i32 %3, 1`
  - control flow: `br i1 %4, label %5, label %37`
  - loop: `llvm.loop metadata`
  - memory/pointer: `define dso_local i32 @f_gold(i8* noundef %0) local_unnamed_addr #0 {`
  - casts/conversions: `%3 = call i32 (i8*, ...) bitcast (i32 (...)* @len to i32 (i8*, ...)*)(i8* noundef nonnull %0) #2`
  - calls/intrinsics: `%3 = call i32 (i8*, ...) bitcast (i32 (...)* @len to i32 (i8*, ...)*)(i8* noundef nonnull %0) #2`
  - UB-related: `define dso_local i32 @f_gold(i8* noundef %0) local_unnamed_addr #0 {`
  - external declarations: `declare i32 @len(...) local_unnamed_addr #1`

## O2

- Status: ok
- Features: integer arithmetic, comparisons, control flow, loop, memory/pointer, casts/conversions, calls/intrinsics, UB-related, external declarations
- Evidence:
  - integer arithmetic: `%19 = add i64 %17, 1`
  - comparisons: `%4 = icmp sgt i32 %3, 1`
  - control flow: `br i1 %4, label %5, label %36`
  - loop: `llvm.loop metadata`
  - memory/pointer: `define dso_local i32 @f_gold(i8* noundef %0) local_unnamed_addr #0 {`
  - casts/conversions: `%3 = tail call i32 (i8*, ...) bitcast (i32 (...)* @len to i32 (i8*, ...)*)(i8* noundef nonnull %0) #2`
  - calls/intrinsics: `%3 = tail call i32 (i8*, ...) bitcast (i32 (...)* @len to i32 (i8*, ...)*)(i8* noundef nonnull %0) #2`
  - UB-related: `define dso_local i32 @f_gold(i8* noundef %0) local_unnamed_addr #0 {`
  - external declarations: `declare i32 @len(...) local_unnamed_addr #1`

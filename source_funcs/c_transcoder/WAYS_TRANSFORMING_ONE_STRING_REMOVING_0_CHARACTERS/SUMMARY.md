# c_transcoder/WAYS_TRANSFORMING_ONE_STRING_REMOVING_0_CHARACTERS

- Source: `WAYS_TRANSFORMING_ONE_STRING_REMOVING_0_CHARACTERS_processed.c`
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
  - integer arithmetic: `%22 = add nsw i32 %21, 1`
  - comparisons: `%18 = icmp eq i32 %17, 0`
  - control flow: `br i1 %18, label %19, label %20`
  - loop: `llvm.loop metadata`
  - memory/pointer: `define dso_local i32 @f_gold(i8* noundef %0, i8* noundef %1) #0 {`
  - casts/conversions: `%14 = call i32 (i8*, ...) bitcast (i32 (...)* @len to i32 (i8*, ...)*)(i8* noundef %13)`
  - calls/intrinsics: `%14 = call i32 (i8*, ...) bitcast (i32 (...)* @len to i32 (i8*, ...)*)(i8* noundef %13)`
  - UB-related: `define dso_local i32 @f_gold(i8* noundef %0, i8* noundef %1) #0 {`
  - external declarations: `declare i32 @len(...) #1`

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
  - integer arithmetic: `%7 = add nsw i32 %4, 1`
  - bitwise/shift: `%15 = shl nuw i64 %12, 2`
  - comparisons: `%5 = icmp eq i32 %4, 0`
  - control flow: `br i1 %5, label %88, label %6`
  - loop: `llvm.loop metadata`
  - memory/pointer: `define dso_local i32 @f_gold(i8* noundef %0, i8* noundef %1) local_unnamed_addr #0 {`
  - casts/conversions: `%3 = call i32 (i8*, ...) bitcast (i32 (...)* @len to i32 (i8*, ...)*)(i8* noundef %0) #4`
  - calls/intrinsics: `%3 = call i32 (i8*, ...) bitcast (i32 (...)* @len to i32 (i8*, ...)*)(i8* noundef %0) #4`
  - UB-related: `define dso_local i32 @f_gold(i8* noundef %0, i8* noundef %1) local_unnamed_addr #0 {`
  - external declarations: `declare i32 @len(...) local_unnamed_addr #1`

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
  - integer arithmetic: `%7 = add nsw i32 %4, 1`
  - bitwise/shift: `%15 = shl nuw i64 %12, 2`
  - comparisons: `%5 = icmp eq i32 %4, 0`
  - control flow: `br i1 %5, label %84, label %6`
  - loop: `llvm.loop metadata`
  - memory/pointer: `define dso_local i32 @f_gold(i8* noundef %0, i8* noundef %1) local_unnamed_addr #0 {`
  - casts/conversions: `%3 = tail call i32 (i8*, ...) bitcast (i32 (...)* @len to i32 (i8*, ...)*)(i8* noundef %0) #4`
  - calls/intrinsics: `%3 = tail call i32 (i8*, ...) bitcast (i32 (...)* @len to i32 (i8*, ...)*)(i8* noundef %0) #4`
  - UB-related: `define dso_local i32 @f_gold(i8* noundef %0, i8* noundef %1) local_unnamed_addr #0 {`
  - external declarations: `declare i32 @len(...) local_unnamed_addr #1`

# c_transcoder/COUNT_CHARACTERS_POSITION_ENGLISH_ALPHABETS

- Source: `COUNT_CHARACTERS_POSITION_ENGLISH_ALPHABETS_processed.c`
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
  - integer arithmetic: `%18 = sub nsw i32 %17, 97`
  - comparisons: `%9 = icmp slt i32 %6, %8`
  - control flow: `br label %5`
  - loop: `llvm.loop metadata`
  - memory/pointer: `define dso_local i32 @f_gold(i8* noundef %0) #0 {`
  - casts/conversions: `%8 = call i32 (i8*, ...) bitcast (i32 (...)* @len to i32 (i8*, ...)*)(i8* noundef %7)`
  - calls/intrinsics: `%8 = call i32 (i8*, ...) bitcast (i32 (...)* @len to i32 (i8*, ...)*)(i8* noundef %7)`
  - UB-related: `define dso_local i32 @f_gold(i8* noundef %0) #0 {`
  - external declarations: `declare i32 @len(...) #1`

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
  - integer arithmetic: `%12 = add nsw i32 %11, -97`
  - comparisons: `%3 = icmp sgt i32 %2, 0`
  - control flow: `br i1 %3, label %6, label %4`
  - loop: `llvm.loop metadata`
  - memory/pointer: `define dso_local i32 @f_gold(i8* noundef %0) local_unnamed_addr #0 {`
  - casts/conversions: `%2 = call i32 (i8*, ...) bitcast (i32 (...)* @len to i32 (i8*, ...)*)(i8* noundef %0) #2`
  - calls/intrinsics: `%2 = call i32 (i8*, ...) bitcast (i32 (...)* @len to i32 (i8*, ...)*)(i8* noundef %0) #2`
  - UB-related: `define dso_local i32 @f_gold(i8* noundef %0) local_unnamed_addr #0 {`
  - external declarations: `declare i32 @len(...) local_unnamed_addr #1`

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
  - integer arithmetic: `%12 = add nsw i32 %11, -97`
  - comparisons: `%3 = icmp sgt i32 %2, 0`
  - control flow: `br i1 %3, label %6, label %4`
  - loop: `llvm.loop metadata`
  - memory/pointer: `define dso_local i32 @f_gold(i8* noundef %0) local_unnamed_addr #0 {`
  - casts/conversions: `%2 = tail call i32 (i8*, ...) bitcast (i32 (...)* @len to i32 (i8*, ...)*)(i8* noundef %0) #2`
  - calls/intrinsics: `%2 = tail call i32 (i8*, ...) bitcast (i32 (...)* @len to i32 (i8*, ...)*)(i8* noundef %0) #2`
  - UB-related: `define dso_local i32 @f_gold(i8* noundef %0) local_unnamed_addr #0 {`
  - external declarations: `declare i32 @len(...) local_unnamed_addr #1`

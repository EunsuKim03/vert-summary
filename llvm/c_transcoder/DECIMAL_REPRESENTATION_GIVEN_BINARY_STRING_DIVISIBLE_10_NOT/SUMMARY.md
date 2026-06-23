# c_transcoder/DECIMAL_REPRESENTATION_GIVEN_BINARY_STRING_DIVISIBLE_10_NOT

- Source: `DECIMAL_REPRESENTATION_GIVEN_BINARY_STRING_DIVISIBLE_10_NOT_processed.c`
- Source note: processed source

## O0

- Status: ok
- Features: integer arithmetic, comparisons, control flow, loop, memory/pointer, casts/conversions, calls/intrinsics, UB-related, external declarations
- Evidence:
  - integer arithmetic: `%12 = sub nsw i32 %11, 1`
  - comparisons: `%17 = icmp eq i32 %16, 49`
  - control flow: `br i1 %17, label %18, label %19`
  - loop: `llvm.loop metadata`
  - memory/pointer: `define dso_local i32 @f_gold(i8* noundef %0) #0 {`
  - casts/conversions: `%9 = call i32 (i8*, ...) bitcast (i32 (...)* @len to i32 (i8*, ...)*)(i8* noundef %8)`
  - calls/intrinsics: `%9 = call i32 (i8*, ...) bitcast (i32 (...)* @len to i32 (i8*, ...)*)(i8* noundef %8)`
  - UB-related: `define dso_local i32 @f_gold(i8* noundef %0) #0 {`
  - external declarations: `declare i32 @len(...) #1`

## O1

- Status: ok
- Features: integer arithmetic, bitwise/shift, comparisons, control flow, loop, memory/pointer, casts/conversions, calls/intrinsics, UB-related, external declarations
- Evidence:
  - integer arithmetic: `%3 = add nsw i32 %2, -1`
  - bitwise/shift: `%26 = xor i32 %25, -1`
  - comparisons: `%7 = icmp eq i8 %6, 49`
  - control flow: `br i1 %7, label %41, label %8`
  - loop: `llvm.loop metadata`
  - memory/pointer: `define dso_local i32 @f_gold(i8* noundef %0) local_unnamed_addr #0 {`
  - casts/conversions: `%2 = call i32 (i8*, ...) bitcast (i32 (...)* @len to i32 (i8*, ...)*)(i8* noundef %0) #2`
  - calls/intrinsics: `%2 = call i32 (i8*, ...) bitcast (i32 (...)* @len to i32 (i8*, ...)*)(i8* noundef %0) #2`
  - UB-related: `define dso_local i32 @f_gold(i8* noundef %0) local_unnamed_addr #0 {`
  - external declarations: `declare i32 @len(...) local_unnamed_addr #1`

## O2

- Status: ok
- Features: integer arithmetic, bitwise/shift, comparisons, control flow, loop, memory/pointer, casts/conversions, calls/intrinsics, UB-related, external declarations
- Evidence:
  - integer arithmetic: `%3 = add nsw i32 %2, -1`
  - bitwise/shift: `%26 = xor i32 %25, -1`
  - comparisons: `%7 = icmp eq i8 %6, 49`
  - control flow: `br i1 %7, label %41, label %8`
  - loop: `llvm.loop metadata`
  - memory/pointer: `define dso_local i32 @f_gold(i8* noundef %0) local_unnamed_addr #0 {`
  - casts/conversions: `%2 = tail call i32 (i8*, ...) bitcast (i32 (...)* @len to i32 (i8*, ...)*)(i8* noundef %0) #2`
  - calls/intrinsics: `%2 = tail call i32 (i8*, ...) bitcast (i32 (...)* @len to i32 (i8*, ...)*)(i8* noundef %0) #2`
  - UB-related: `define dso_local i32 @f_gold(i8* noundef %0) local_unnamed_addr #0 {`
  - external declarations: `declare i32 @len(...) local_unnamed_addr #1`

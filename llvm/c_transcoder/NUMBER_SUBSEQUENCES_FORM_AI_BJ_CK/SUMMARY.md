# c_transcoder/NUMBER_SUBSEQUENCES_FORM_AI_BJ_CK

- Source: `NUMBER_SUBSEQUENCES_FORM_AI_BJ_CK_processed.c`
- Source note: processed source

## O0

- Status: ok
- Features: integer arithmetic, comparisons, control flow, loop, memory/pointer, casts/conversions, calls/intrinsics, UB-related, external declarations
- Evidence:
  - integer arithmetic: `%22 = mul nsw i32 2, %21`
  - comparisons: `%11 = icmp ult i32 %8, %10`
  - control flow: `br label %7`
  - loop: `llvm.loop metadata`
  - memory/pointer: `define dso_local i32 @f_gold(i8* noundef %0) #0 {`
  - casts/conversions: `%10 = call i32 (i8*, ...) bitcast (i32 (...)* @len to i32 (i8*, ...)*)(i8* noundef %9)`
  - calls/intrinsics: `%10 = call i32 (i8*, ...) bitcast (i32 (...)* @len to i32 (i8*, ...)*)(i8* noundef %9)`
  - UB-related: `define dso_local i32 @f_gold(i8* noundef %0) #0 {`
  - external declarations: `declare i32 @len(...) #1`

## O1

- Status: ok
- Features: integer arithmetic, bitwise/shift, comparisons, control flow, loop, memory/pointer, casts/conversions, calls/intrinsics, UB-related, external declarations
- Evidence:
  - integer arithmetic: `%18 = add nsw i32 %17, %10`
  - bitwise/shift: `%14 = shl nsw i32 %10, 1`
  - comparisons: `%3 = icmp eq i32 %2, 0`
  - control flow: `br i1 %3, label %4, label %6`
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
  - integer arithmetic: `%18 = add nsw i32 %17, %10`
  - bitwise/shift: `%14 = shl nsw i32 %10, 1`
  - comparisons: `%3 = icmp eq i32 %2, 0`
  - control flow: `br i1 %3, label %4, label %6`
  - loop: `llvm.loop metadata`
  - memory/pointer: `define dso_local i32 @f_gold(i8* noundef %0) local_unnamed_addr #0 {`
  - casts/conversions: `%2 = tail call i32 (i8*, ...) bitcast (i32 (...)* @len to i32 (i8*, ...)*)(i8* noundef %0) #2`
  - calls/intrinsics: `%2 = tail call i32 (i8*, ...) bitcast (i32 (...)* @len to i32 (i8*, ...)*)(i8* noundef %0) #2`
  - UB-related: `define dso_local i32 @f_gold(i8* noundef %0) local_unnamed_addr #0 {`
  - external declarations: `declare i32 @len(...) local_unnamed_addr #1`

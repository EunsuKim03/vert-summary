# c_transcoder/CHECK_WHETHER_ARITHMETIC_PROGRESSION_CAN_FORMED_GIVEN_ARRAY

- Source: `CHECK_WHETHER_ARITHMETIC_PROGRESSION_CAN_FORMED_GIVEN_ARRAY_processed.c`
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
  - integer arithmetic: `%24 = sub nsw i32 %20, %23`
  - comparisons: `%9 = icmp eq i32 %8, 1`
  - control flow: `br i1 %9, label %10, label %11`
  - loop: `llvm.loop metadata`
  - memory/pointer: `define dso_local i32 @f_gold(i32* noundef %0, i32 noundef %1) #0 {`
  - casts/conversions: `%15 = sext i32 %14 to i64`
  - calls/intrinsics: `%17 = call i32 (i32*, i32*, ...) bitcast (i32 (...)* @sort to i32 (i32*, i32*, ...)*)(i32* noundef %12, i32* noundef %16)`
  - UB-related: `define dso_local i32 @f_gold(i32* noundef %0, i32 noundef %1) #0 {`
  - external declarations: `declare i32 @sort(...) #1`

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
  - integer arithmetic: `%11 = sub nsw i32 %9, %10`
  - bitwise/shift: `%38 = xor i1 %37, true`
  - comparisons: `%3 = icmp eq i32 %1, 1`
  - control flow: `br i1 %3, label %40, label %4`
  - loop: `llvm.loop metadata`
  - memory/pointer: `define dso_local i32 @f_gold(i32* noundef %0, i32 noundef %1) local_unnamed_addr #0 {`
  - casts/conversions: `%5 = sext i32 %1 to i64`
  - calls/intrinsics: `%7 = call i32 (i32*, i32*, ...) bitcast (i32 (...)* @sort to i32 (i32*, i32*, ...)*)(i32* noundef %0, i32* noundef %6) #2`
  - UB-related: `define dso_local i32 @f_gold(i32* noundef %0, i32 noundef %1) local_unnamed_addr #0 {`
  - external declarations: `declare i32 @sort(...) local_unnamed_addr #1`

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
  - integer arithmetic: `%11 = sub nsw i32 %9, %10`
  - comparisons: `%3 = icmp eq i32 %1, 1`
  - control flow: `br i1 %3, label %32, label %4`
  - loop: `llvm.loop metadata`
  - memory/pointer: `define dso_local i32 @f_gold(i32* noundef %0, i32 noundef %1) local_unnamed_addr #0 {`
  - casts/conversions: `%5 = sext i32 %1 to i64`
  - calls/intrinsics: `%7 = tail call i32 (i32*, i32*, ...) bitcast (i32 (...)* @sort to i32 (i32*, i32*, ...)*)(i32* noundef %0, i32* noundef %6) #2`
  - UB-related: `define dso_local i32 @f_gold(i32* noundef %0, i32 noundef %1) local_unnamed_addr #0 {`
  - external declarations: `declare i32 @sort(...) local_unnamed_addr #1`

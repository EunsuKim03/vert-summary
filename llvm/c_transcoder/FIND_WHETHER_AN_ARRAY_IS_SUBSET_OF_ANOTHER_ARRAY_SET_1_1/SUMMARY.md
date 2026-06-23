# c_transcoder/FIND_WHETHER_AN_ARRAY_IS_SUBSET_OF_ANOTHER_ARRAY_SET_1_1

- Source: `FIND_WHETHER_AN_ARRAY_IS_SUBSET_OF_ANOTHER_ARRAY_SET_1_1_processed.c`
- Source note: processed source

## O0

- Status: ok
- Features: integer arithmetic, comparisons, control flow, loop, memory/pointer, casts/conversions, calls/intrinsics, UB-related, external declarations
- Evidence:
  - integer arithmetic: `%53 = add nsw i32 %52, 1`
  - comparisons: `%14 = icmp slt i32 %12, %13`
  - control flow: `br i1 %14, label %15, label %16`
  - loop: `llvm.loop metadata`
  - memory/pointer: `define dso_local i32 @f_gold(i32* noundef %0, i32* noundef %1, i32 noundef %2, i32 noundef %3) #0 {`
  - casts/conversions: `%20 = sext i32 %19 to i64`
  - calls/intrinsics: `%22 = call i32 (i32*, i32*, ...) bitcast (i32 (...)* @sort to i32 (i32*, i32*, ...)*)(i32* noundef %17, i32* noundef %21)`
  - UB-related: `define dso_local i32 @f_gold(i32* noundef %0, i32* noundef %1, i32 noundef %2, i32 noundef %3) #0 {`
  - external declarations: `declare i32 @sort(...) #1`

## O1

- Status: ok
- Features: integer arithmetic, bitwise/shift, comparisons, control flow, loop, memory/pointer, casts/conversions, calls/intrinsics, UB-related, external declarations
- Evidence:
  - integer arithmetic: `%27 = add nsw i32 %17, 1`
  - bitwise/shift: `%15 = and i1 %13, %14`
  - comparisons: `%5 = icmp slt i32 %2, %3`
  - control flow: `br i1 %5, label %45, label %6`
  - loop: `llvm.loop metadata`
  - memory/pointer: `define dso_local i32 @f_gold(i32* noundef %0, i32* noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #0 {`
  - casts/conversions: `%7 = sext i32 %2 to i64`
  - calls/intrinsics: `%9 = call i32 (i32*, i32*, ...) bitcast (i32 (...)* @sort to i32 (i32*, i32*, ...)*)(i32* noundef %0, i32* noundef %8) #2`
  - UB-related: `define dso_local i32 @f_gold(i32* noundef %0, i32* noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #0 {`
  - external declarations: `declare i32 @sort(...) local_unnamed_addr #1`

## O2

- Status: ok
- Features: integer arithmetic, bitwise/shift, comparisons, control flow, loop, memory/pointer, casts/conversions, calls/intrinsics, UB-related, external declarations
- Evidence:
  - integer arithmetic: `%27 = add nsw i32 %17, 1`
  - bitwise/shift: `%15 = and i1 %13, %14`
  - comparisons: `%5 = icmp slt i32 %2, %3`
  - control flow: `br i1 %5, label %45, label %6`
  - loop: `llvm.loop metadata`
  - memory/pointer: `define dso_local i32 @f_gold(i32* noundef %0, i32* noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #0 {`
  - casts/conversions: `%7 = sext i32 %2 to i64`
  - calls/intrinsics: `%9 = tail call i32 (i32*, i32*, ...) bitcast (i32 (...)* @sort to i32 (i32*, i32*, ...)*)(i32* noundef %0, i32* noundef %8) #2`
  - UB-related: `define dso_local i32 @f_gold(i32* noundef %0, i32* noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #0 {`
  - external declarations: `declare i32 @sort(...) local_unnamed_addr #1`

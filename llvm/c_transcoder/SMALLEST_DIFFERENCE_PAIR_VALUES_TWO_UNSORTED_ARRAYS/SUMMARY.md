# c_transcoder/SMALLEST_DIFFERENCE_PAIR_VALUES_TWO_UNSORTED_ARRAYS

- Source: `SMALLEST_DIFFERENCE_PAIR_VALUES_TWO_UNSORTED_ARRAYS_processed.c`
- Source note: processed source

## O0

- Status: ok
- Features: integer arithmetic, comparisons, control flow, loop, memory/pointer, casts/conversions, calls/intrinsics, UB-related, external declarations
- Evidence:
  - integer arithmetic: `%45 = sub nsw i32 %39, %44`
  - comparisons: `%27 = icmp slt i32 %25, %26`
  - control flow: `br label %24`
  - loop: `llvm.loop metadata`
  - memory/pointer: `define dso_local i32 @f_gold(i32* noundef %0, i32* noundef %1, i32 noundef %2, i32 noundef %3) #0 {`
  - casts/conversions: `%15 = sext i32 %14 to i64`
  - calls/intrinsics: `%17 = call i32 (i32*, i32*, ...) bitcast (i32 (...)* @sort to i32 (i32*, i32*, ...)*)(i32* noundef %12, i32* noundef %16)`
  - UB-related: `define dso_local i32 @f_gold(i32* noundef %0, i32* noundef %1, i32 noundef %2, i32 noundef %3) #0 {`
  - external declarations: `declare i32 @sort(...) #1`

## O1

- Status: ok
- Features: integer arithmetic, bitwise/shift, comparisons, control flow, loop, memory/pointer, casts/conversions, calls/intrinsics, UB-related, external declarations
- Evidence:
  - integer arithmetic: `%24 = sub nsw i32 %20, %23`
  - bitwise/shift: `%13 = and i1 %11, %12`
  - comparisons: `%11 = icmp sgt i32 %2, 0`
  - control flow: `br i1 %13, label %14, label %37`
  - loop: `llvm.loop metadata`
  - memory/pointer: `define dso_local i32 @f_gold(i32* noundef %0, i32* noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #0 {`
  - casts/conversions: `%5 = sext i32 %2 to i64`
  - calls/intrinsics: `%7 = call i32 (i32*, i32*, ...) bitcast (i32 (...)* @sort to i32 (i32*, i32*, ...)*)(i32* noundef %0, i32* noundef %6) #3`
  - UB-related: `define dso_local i32 @f_gold(i32* noundef %0, i32* noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #0 {`
  - external declarations: `declare i32 @sort(...) local_unnamed_addr #1`

## O2

- Status: ok
- Features: integer arithmetic, bitwise/shift, comparisons, control flow, loop, memory/pointer, casts/conversions, calls/intrinsics, UB-related, external declarations
- Evidence:
  - integer arithmetic: `%24 = sub nsw i32 %20, %23`
  - bitwise/shift: `%13 = and i1 %11, %12`
  - comparisons: `%11 = icmp sgt i32 %2, 0`
  - control flow: `br i1 %13, label %14, label %37`
  - loop: `llvm.loop metadata`
  - memory/pointer: `define dso_local i32 @f_gold(i32* noundef %0, i32* noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #0 {`
  - casts/conversions: `%5 = sext i32 %2 to i64`
  - calls/intrinsics: `%7 = tail call i32 (i32*, i32*, ...) bitcast (i32 (...)* @sort to i32 (i32*, i32*, ...)*)(i32* noundef %0, i32* noundef %6) #3`
  - UB-related: `define dso_local i32 @f_gold(i32* noundef %0, i32* noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #0 {`
  - external declarations: `declare i32 @sort(...) local_unnamed_addr #1`

# c_transcoder/MINIMUM_SUM_TWO_NUMBERS_FORMED_DIGITS_ARRAY_2

- Source: `MINIMUM_SUM_TWO_NUMBERS_FORMED_DIGITS_ARRAY_2_processed.c`
- Source note: processed source

## O0

- Status: ok
- Features: integer arithmetic, comparisons, control flow, loop, memory/pointer, casts/conversions, calls/intrinsics, UB-related, external declarations
- Evidence:
  - integer arithmetic: `%20 = srem i32 %19, 2`
  - comparisons: `%17 = icmp slt i32 %15, %16`
  - control flow: `br label %14`
  - loop: `llvm.loop metadata`
  - memory/pointer: `define dso_local i32 @f_gold(i32* noundef %0, i32 noundef %1) #0 {`
  - casts/conversions: `%11 = sext i32 %10 to i64`
  - calls/intrinsics: `%13 = call i32 (i32*, i32*, ...) bitcast (i32 (...)* @sort to i32 (i32*, i32*, ...)*)(i32* noundef %8, i32* noundef %12)`
  - UB-related: `define dso_local i32 @f_gold(i32* noundef %0, i32 noundef %1) #0 {`
  - external declarations: `declare i32 @sort(...) #1`

## O1

- Status: ok
- Features: integer arithmetic, bitwise/shift, comparisons, control flow, loop, memory/pointer, casts/conversions, calls/intrinsics, UB-related, external declarations
- Evidence:
  - integer arithmetic: `%10 = add nsw i32 %31, %30`
  - bitwise/shift: `%17 = and i64 %14, 1`
  - comparisons: `%6 = icmp sgt i32 %1, 0`
  - control flow: `br i1 %6, label %7, label %11`
  - loop: `llvm.loop metadata`
  - memory/pointer: `define dso_local i32 @f_gold(i32* noundef %0, i32 noundef %1) local_unnamed_addr #0 {`
  - casts/conversions: `%3 = sext i32 %1 to i64`
  - calls/intrinsics: `%5 = call i32 (i32*, i32*, ...) bitcast (i32 (...)* @sort to i32 (i32*, i32*, ...)*)(i32* noundef %0, i32* noundef %4) #2`
  - UB-related: `define dso_local i32 @f_gold(i32* noundef %0, i32 noundef %1) local_unnamed_addr #0 {`
  - external declarations: `declare i32 @sort(...) local_unnamed_addr #1`

## O2

- Status: ok
- Features: integer arithmetic, bitwise/shift, comparisons, control flow, loop, memory/pointer, casts/conversions, calls/intrinsics, UB-related, external declarations
- Evidence:
  - integer arithmetic: `%24 = mul nsw i32 %17, 10`
  - bitwise/shift: `%9 = and i64 %8, 1`
  - comparisons: `%6 = icmp sgt i32 %1, 0`
  - control flow: `br i1 %6, label %7, label %37`
  - loop: `llvm.loop metadata`
  - memory/pointer: `define dso_local i32 @f_gold(i32* noundef %0, i32 noundef %1) local_unnamed_addr #0 {`
  - casts/conversions: `%3 = sext i32 %1 to i64`
  - calls/intrinsics: `%5 = tail call i32 (i32*, i32*, ...) bitcast (i32 (...)* @sort to i32 (i32*, i32*, ...)*)(i32* noundef %0, i32* noundef %4) #2`
  - UB-related: `define dso_local i32 @f_gold(i32* noundef %0, i32 noundef %1) local_unnamed_addr #0 {`
  - external declarations: `declare i32 @sort(...) local_unnamed_addr #1`

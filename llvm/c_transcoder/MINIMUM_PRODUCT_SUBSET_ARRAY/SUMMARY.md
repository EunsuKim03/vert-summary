# c_transcoder/MINIMUM_PRODUCT_SUBSET_ARRAY

- Source: `MINIMUM_PRODUCT_SUBSET_ARRAY_processed.c`
- Source note: processed source

## O0

- Status: ok
- Features: integer arithmetic, bitwise/shift, comparisons, control flow, loop, memory/pointer, casts/conversions, calls/intrinsics, UB-related, external declarations
- Evidence:
  - integer arithmetic: `%32 = add nsw i32 %31, 1`
  - bitwise/shift: `%94 = and i32 %93, 1`
  - comparisons: `%13 = icmp eq i32 %12, 1`
  - control flow: `br i1 %13, label %14, label %18`
  - loop: `llvm.loop metadata`
  - memory/pointer: `define dso_local i32 @f_gold(i32* noundef %0, i32 noundef %1) #0 {`
  - casts/conversions: `%26 = sext i32 %25 to i64`
  - calls/intrinsics: `%49 = call i32 (i32, i32, ...) bitcast (i32 (...)* @max to i32 (i32, i32, ...)*)(i32 noundef %43, i32 noundef %48)`
  - UB-related: `define dso_local i32 @f_gold(i32* noundef %0, i32 noundef %1) #0 {`
  - external declarations: `declare i32 @max(...) #1`

## O1

- Status: ok
- Features: integer arithmetic, bitwise/shift, comparisons, control flow, loop, memory/pointer, casts/conversions, calls/intrinsics, UB-related, external declarations
- Evidence:
  - integer arithmetic: `%28 = add nsw i32 %20, 1`
  - bitwise/shift: `%59 = and i32 %13, 1`
  - comparisons: `%3 = icmp eq i32 %1, 1`
  - control flow: `br i1 %3, label %8, label %4`
  - loop: `llvm.loop metadata`
  - memory/pointer: `define dso_local i32 @f_gold(i32* nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #0 {`
  - casts/conversions: `%7 = zext i32 %1 to i64`
  - calls/intrinsics: `%33 = call i32 (i32, i32, ...) bitcast (i32 (...)* @max to i32 (i32, i32, ...)*)(i32 noundef %23, i32 noundef %25) #2`
  - UB-related: `define dso_local i32 @f_gold(i32* nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #0 {`
  - external declarations: `declare i32 @max(...) local_unnamed_addr #1`

## O2

- Status: ok
- Features: integer arithmetic, bitwise/shift, comparisons, control flow, loop, memory/pointer, casts/conversions, calls/intrinsics, UB-related, external declarations
- Evidence:
  - integer arithmetic: `%26 = add nsw i32 %18, 1`
  - bitwise/shift: `%60 = and i32 %49, 1`
  - comparisons: `%3 = icmp eq i32 %1, 1`
  - control flow: `br i1 %3, label %8, label %4`
  - loop: `llvm.loop metadata`
  - memory/pointer: `define dso_local i32 @f_gold(i32* nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #0 {`
  - casts/conversions: `%7 = zext i32 %1 to i64`
  - calls/intrinsics: `%31 = tail call i32 (i32, i32, ...) bitcast (i32 (...)* @max to i32 (i32, i32, ...)*)(i32 noundef %21, i32 noundef %23) #2`
  - UB-related: `define dso_local i32 @f_gold(i32* nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #0 {`
  - external declarations: `declare i32 @max(...) local_unnamed_addr #1`

# c_transcoder/EFFICIENT_SEARCH_IN_AN_ARRAY_WHERE_DIFFERENCE_BETWEEN_ADJACENT_IS_1

- Source: `EFFICIENT_SEARCH_IN_AN_ARRAY_WHERE_DIFFERENCE_BETWEEN_ADJACENT_IS_1_processed.c`
- Source note: processed source

## O0

- Status: ok
- Features: integer arithmetic, comparisons, control flow, loop, memory/pointer, casts/conversions, calls/intrinsics, UB-related, external declarations
- Evidence:
  - integer arithmetic: `%12 = sub nsw i32 %11, 1`
  - comparisons: `%13 = icmp sle i32 %10, %12`
  - control flow: `br label %9`
  - loop: `llvm.loop metadata`
  - memory/pointer: `define dso_local i32 @f_gold(i32* noundef %0, i32 noundef %1, i32 noundef %2) #0 {`
  - casts/conversions: `%17 = sext i32 %16 to i64`
  - calls/intrinsics: `%32 = call i32 @abs(i32 noundef %31) #2`
  - UB-related: `define dso_local i32 @f_gold(i32* noundef %0, i32 noundef %1, i32 noundef %2) #0 {`
  - external declarations: `declare i32 @abs(i32 noundef) #1`

## O1

- Status: ok
- Features: integer arithmetic, comparisons, control flow, loop, memory/pointer, casts/conversions, calls/intrinsics, UB-related, external declarations
- Evidence:
  - integer arithmetic: `%12 = sub nsw i32 %9, %2`
  - comparisons: `%4 = icmp sgt i32 %1, 0`
  - control flow: `br i1 %4, label %5, label %16`
  - loop: `llvm.loop metadata`
  - memory/pointer: `define dso_local i32 @f_gold(i32* nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {`
  - casts/conversions: `%7 = zext i32 %6 to i64`
  - calls/intrinsics: `%13 = call i32 @llvm.abs.i32(i32 %12, i1 true)`
  - UB-related: `define dso_local i32 @f_gold(i32* nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {`
  - external declarations: `declare i32 @llvm.abs.i32(i32, i1 immarg) #1`

## O2

- Status: ok
- Features: integer arithmetic, comparisons, control flow, loop, memory/pointer, casts/conversions, calls/intrinsics, UB-related, external declarations
- Evidence:
  - integer arithmetic: `%12 = sub nsw i32 %9, %2`
  - comparisons: `%4 = icmp sgt i32 %1, 0`
  - control flow: `br i1 %4, label %5, label %16`
  - loop: `llvm.loop metadata`
  - memory/pointer: `define dso_local i32 @f_gold(i32* nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {`
  - casts/conversions: `%7 = zext i32 %6 to i64`
  - calls/intrinsics: `%13 = tail call i32 @llvm.abs.i32(i32 %12, i1 true)`
  - UB-related: `define dso_local i32 @f_gold(i32* nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {`
  - external declarations: `declare i32 @llvm.abs.i32(i32, i1 immarg) #1`

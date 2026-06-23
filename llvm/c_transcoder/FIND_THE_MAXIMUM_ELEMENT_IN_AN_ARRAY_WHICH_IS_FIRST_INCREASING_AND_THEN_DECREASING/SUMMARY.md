# c_transcoder/FIND_THE_MAXIMUM_ELEMENT_IN_AN_ARRAY_WHICH_IS_FIRST_INCREASING_AND_THEN_DECREASING

- Source: `FIND_THE_MAXIMUM_ELEMENT_IN_AN_ARRAY_WHICH_IS_FIRST_INCREASING_AND_THEN_DECREASING_processed.c`
- Source note: processed source

## O0

- Status: ok
- Features: integer arithmetic, comparisons, control flow, loop, memory/pointer, casts/conversions, UB-related
- Evidence:
  - integer arithmetic: `%15 = add nsw i32 %14, 1`
  - comparisons: `%19 = icmp sle i32 %17, %18`
  - control flow: `br label %16`
  - loop: `llvm.loop metadata`
  - memory/pointer: `define dso_local i32 @f_gold(i32* noundef %0, i32 noundef %1, i32 noundef %2) #0 {`
  - casts/conversions: `%11 = sext i32 %10 to i64`
  - UB-related: `define dso_local i32 @f_gold(i32* noundef %0, i32 noundef %1, i32 noundef %2) #0 {`

## O1

- Status: ok
- Features: integer arithmetic, comparisons, control flow, loop, memory/pointer, casts/conversions, calls/intrinsics, UB-related, external declarations
- Evidence:
  - integer arithmetic: `%13 = add nsw i64 %11, 1`
  - comparisons: `%14 = icmp eq i64 %11, %9`
  - control flow: `br label %10`
  - loop: `llvm.loop metadata`
  - memory/pointer: `define dso_local i32 @f_gold(i32* nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {`
  - casts/conversions: `%4 = sext i32 %1 to i64`
  - calls/intrinsics: `%8 = call i32 @llvm.smax.i32(i32 %2, i32 %1)`
  - UB-related: `define dso_local i32 @f_gold(i32* nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {`
  - external declarations: `declare i32 @llvm.smax.i32(i32, i32) #1`

## O2

- Status: ok
- Features: integer arithmetic, comparisons, control flow, loop, memory/pointer, casts/conversions, calls/intrinsics, UB-related, external declarations
- Evidence:
  - integer arithmetic: `%12 = add nsw i64 %10, 1`
  - comparisons: `%13 = icmp eq i64 %10, %8`
  - control flow: `br label %9`
  - loop: `llvm.loop metadata`
  - memory/pointer: `define dso_local i32 @f_gold(i32* nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {`
  - casts/conversions: `%4 = sext i32 %1 to i64`
  - calls/intrinsics: `%7 = call i32 @llvm.smax.i32(i32 %2, i32 %1)`
  - UB-related: `define dso_local i32 @f_gold(i32* nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {`
  - external declarations: `declare i32 @llvm.smax.i32(i32, i32) #1`

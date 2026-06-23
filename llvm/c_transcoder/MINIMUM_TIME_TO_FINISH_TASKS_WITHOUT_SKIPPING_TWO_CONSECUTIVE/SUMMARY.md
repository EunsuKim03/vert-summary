# c_transcoder/MINIMUM_TIME_TO_FINISH_TASKS_WITHOUT_SKIPPING_TWO_CONSECUTIVE

- Source: `MINIMUM_TIME_TO_FINISH_TASKS_WITHOUT_SKIPPING_TWO_CONSECUTIVE_processed.c`
- Source note: processed source

## O0

- Status: ok
- Features: integer arithmetic, comparisons, control flow, loop, memory/pointer, casts/conversions, calls/intrinsics, UB-related, external declarations
- Evidence:
  - integer arithmetic: `%31 = add nsw i32 %27, %30`
  - comparisons: `%12 = icmp sle i32 %11, 0`
  - control flow: `br i1 %12, label %13, label %14`
  - loop: `llvm.loop metadata`
  - memory/pointer: `define dso_local i32 @f_gold(i32* noundef %0, i32 noundef %1) #0 {`
  - casts/conversions: `%25 = sext i32 %24 to i64`
  - calls/intrinsics: `%30 = call i32 (i32, i32, ...) bitcast (i32 (...)* @min to i32 (i32, i32, ...)*)(i32 noundef %28, i32 noundef %29)`
  - UB-related: `define dso_local i32 @f_gold(i32* noundef %0, i32 noundef %1) #0 {`
  - external declarations: `declare i32 @min(...) #1`

## O1

- Status: ok
- Features: integer arithmetic, comparisons, control flow, loop, memory/pointer, casts/conversions, calls/intrinsics, UB-related, external declarations
- Evidence:
  - integer arithmetic: `%20 = add nsw i32 %19, %18`
  - comparisons: `%3 = icmp slt i32 %1, 1`
  - control flow: `br i1 %3, label %23, label %4`
  - loop: `llvm.loop metadata`
  - memory/pointer: `define dso_local i32 @f_gold(i32* nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #0 {`
  - casts/conversions: `%8 = zext i32 %1 to i64`
  - calls/intrinsics: `%12 = call i32 (i32, i32, ...) bitcast (i32 (...)* @min to i32 (i32, i32, ...)*)(i32 noundef %11, i32 noundef %10) #2`
  - UB-related: `define dso_local i32 @f_gold(i32* nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #0 {`
  - external declarations: `declare i32 @min(...) local_unnamed_addr #1`

## O2

- Status: ok
- Features: integer arithmetic, comparisons, control flow, loop, memory/pointer, casts/conversions, calls/intrinsics, UB-related, external declarations
- Evidence:
  - integer arithmetic: `%20 = add nsw i32 %19, %18`
  - comparisons: `%3 = icmp slt i32 %1, 1`
  - control flow: `br i1 %3, label %23, label %4`
  - loop: `llvm.loop metadata`
  - memory/pointer: `define dso_local i32 @f_gold(i32* nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #0 {`
  - casts/conversions: `%8 = zext i32 %1 to i64`
  - calls/intrinsics: `%12 = tail call i32 (i32, i32, ...) bitcast (i32 (...)* @min to i32 (i32, i32, ...)*)(i32 noundef %11, i32 noundef %10) #2`
  - UB-related: `define dso_local i32 @f_gold(i32* nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #0 {`
  - external declarations: `declare i32 @min(...) local_unnamed_addr #1`

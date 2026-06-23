# c_transcoder/FIND_THE_LARGEST_SUBARRAY_WITH_0_SUM

- Source: `FIND_THE_LARGEST_SUBARRAY_WITH_0_SUM_processed.c`
- Source note: processed source

## O0

- Status: ok
- Features: integer arithmetic, comparisons, control flow, loop, memory/pointer, casts/conversions, calls/intrinsics, UB-related, external declarations
- Evidence:
  - integer arithmetic: `%26 = add nsw i32 %25, %24`
  - comparisons: `%12 = icmp slt i32 %10, %11`
  - control flow: `br label %9`
  - loop: `llvm.loop metadata`
  - memory/pointer: `define dso_local i32 @f_gold(i32* noundef %0, i32 noundef %1) #0 {`
  - casts/conversions: `%22 = sext i32 %21 to i64`
  - calls/intrinsics: `%35 = call i32 (i32, i32, ...) bitcast (i32 (...)* @max to i32 (i32, i32, ...)*)(i32 noundef %30, i32 noundef %34)`
  - UB-related: `define dso_local i32 @f_gold(i32* noundef %0, i32 noundef %1) #0 {`
  - external declarations: `declare i32 @max(...) #1`

## O1

- Status: ok
- Features: integer arithmetic, comparisons, control flow, loop, memory/pointer, casts/conversions, calls/intrinsics, UB-related, external declarations
- Evidence:
  - integer arithmetic: `%10 = sub nsw i64 1, %8`
  - comparisons: `%3 = icmp sgt i32 %1, 0`
  - control flow: `br i1 %3, label %4, label %11`
  - loop: `llvm.loop metadata`
  - memory/pointer: `define dso_local i32 @f_gold(i32* nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #0 {`
  - casts/conversions: `%5 = zext i32 %1 to i64`
  - calls/intrinsics: `%27 = call i32 (i32, i32, ...) bitcast (i32 (...)* @max to i32 (i32, i32, ...)*)(i32 noundef %19, i32 noundef %26) #2`
  - UB-related: `define dso_local i32 @f_gold(i32* nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #0 {`
  - external declarations: `declare i32 @max(...) local_unnamed_addr #1`

## O2

- Status: ok
- Features: integer arithmetic, comparisons, control flow, loop, memory/pointer, casts/conversions, calls/intrinsics, UB-related, external declarations
- Evidence:
  - integer arithmetic: `%9 = sub nsw i64 1, %7`
  - comparisons: `%3 = icmp sgt i32 %1, 0`
  - control flow: `br i1 %3, label %4, label %10`
  - loop: `llvm.loop metadata`
  - memory/pointer: `define dso_local i32 @f_gold(i32* nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #0 {`
  - casts/conversions: `%5 = zext i32 %1 to i64`
  - calls/intrinsics: `%26 = tail call i32 (i32, i32, ...) bitcast (i32 (...)* @max to i32 (i32, i32, ...)*)(i32 noundef %18, i32 noundef %25) #2`
  - UB-related: `define dso_local i32 @f_gold(i32* nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #0 {`
  - external declarations: `declare i32 @max(...) local_unnamed_addr #1`

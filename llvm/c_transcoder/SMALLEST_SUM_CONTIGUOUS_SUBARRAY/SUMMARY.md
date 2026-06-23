# c_transcoder/SMALLEST_SUM_CONTIGUOUS_SUBARRAY

- Source: `SMALLEST_SUM_CONTIGUOUS_SUBARRAY_processed.c`
- Source note: processed source

## O0

- Status: ok
- Features: integer arithmetic, comparisons, control flow, loop, memory/pointer, casts/conversions, calls/intrinsics, UB-related, external declarations
- Evidence:
  - integer arithmetic: `%28 = add nsw i32 %27, %26`
  - comparisons: `%11 = icmp slt i32 %9, %10`
  - control flow: `br label %8`
  - loop: `llvm.loop metadata`
  - memory/pointer: `define dso_local i32 @f_gold(i32* noundef %0, i32 noundef %1) #0 {`
  - casts/conversions: `%18 = sext i32 %17 to i64`
  - calls/intrinsics: `%32 = call i32 (i32, i32, ...) bitcast (i32 (...)* @min to i32 (i32, i32, ...)*)(i32 noundef %30, i32 noundef %31)`
  - UB-related: `define dso_local i32 @f_gold(i32* noundef %0, i32 noundef %1) #0 {`
  - external declarations: `declare i32 @min(...) #1`

## O1

- Status: ok
- Features: integer arithmetic, comparisons, control flow, loop, memory/pointer, casts/conversions, calls/intrinsics, UB-related, external declarations
- Evidence:
  - integer arithmetic: `%16 = add nsw i32 %13, %15`
  - comparisons: `%3 = icmp sgt i32 %1, 0`
  - control flow: `br i1 %3, label %4, label %6`
  - loop: `llvm.loop metadata`
  - memory/pointer: `define dso_local i32 @f_gold(i32* nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #0 {`
  - casts/conversions: `%5 = zext i32 %1 to i64`
  - calls/intrinsics: `%17 = call i32 (i32, i32, ...) bitcast (i32 (...)* @min to i32 (i32, i32, ...)*)(i32 noundef %10, i32 noundef %16) #2`
  - UB-related: `define dso_local i32 @f_gold(i32* nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #0 {`
  - external declarations: `declare i32 @min(...) local_unnamed_addr #1`

## O2

- Status: ok
- Features: integer arithmetic, comparisons, control flow, loop, memory/pointer, casts/conversions, calls/intrinsics, UB-related, external declarations
- Evidence:
  - integer arithmetic: `%16 = add nsw i32 %13, %15`
  - comparisons: `%3 = icmp sgt i32 %1, 0`
  - control flow: `br i1 %3, label %4, label %6`
  - loop: `llvm.loop metadata`
  - memory/pointer: `define dso_local i32 @f_gold(i32* nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #0 {`
  - casts/conversions: `%5 = zext i32 %1 to i64`
  - calls/intrinsics: `%17 = tail call i32 (i32, i32, ...) bitcast (i32 (...)* @min to i32 (i32, i32, ...)*)(i32 noundef %10, i32 noundef %16) #2`
  - UB-related: `define dso_local i32 @f_gold(i32* nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #0 {`
  - external declarations: `declare i32 @min(...) local_unnamed_addr #1`

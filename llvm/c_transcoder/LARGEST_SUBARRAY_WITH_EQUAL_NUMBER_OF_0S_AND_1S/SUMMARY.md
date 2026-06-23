# c_transcoder/LARGEST_SUBARRAY_WITH_EQUAL_NUMBER_OF_0S_AND_1S

- Source: `LARGEST_SUBARRAY_WITH_EQUAL_NUMBER_OF_0S_AND_1S_processed.c`
- Source note: processed source

## O0

- Status: ok
- Features: integer arithmetic, comparisons, control flow, loop, memory/pointer, casts/conversions, calls/intrinsics, UB-related, globals, external declarations
- Evidence:
  - integer arithmetic: `%13 = sub nsw i32 %12, 1`
  - comparisons: `%14 = icmp slt i32 %11, %13`
  - control flow: `br label %10`
  - loop: `llvm.loop metadata`
  - memory/pointer: `define dso_local i32 @f_gold(i32* noundef %0, i32 noundef %1) #0 {`
  - casts/conversions: `%18 = sext i32 %17 to i64`
  - calls/intrinsics: `%72 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))`
  - UB-related: `define dso_local i32 @f_gold(i32* noundef %0, i32 noundef %1) #0 {`
  - globals: `@.str = private unnamed_addr constant [17 x i8] c"No such subarray\00", align 1`
  - external declarations: `declare i32 @printf(i8* noundef, ...) #1`

## O1

- Status: ok
- Features: integer arithmetic, comparisons, control flow, loop, memory/pointer, casts/conversions, calls/intrinsics, UB-related, globals, external declarations
- Evidence:
  - integer arithmetic: `%5 = add i32 %1, -1`
  - comparisons: `%3 = icmp sgt i32 %1, 1`
  - control flow: `br i1 %3, label %4, label %13`
  - loop: `llvm.loop metadata`
  - memory/pointer: `define dso_local i32 @f_gold(i32* nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #0 {`
  - casts/conversions: `%6 = sext i32 %1 to i64`
  - calls/intrinsics: `%15 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))`
  - UB-related: `define dso_local i32 @f_gold(i32* nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #0 {`
  - globals: `@.str = private unnamed_addr constant [17 x i8] c"No such subarray\00", align 1`
  - external declarations: `declare noundef i32 @printf(i8* nocapture noundef readonly, ...) local_unnamed_addr #1`

## O2

- Status: ok
- Features: integer arithmetic, comparisons, control flow, loop, memory/pointer, casts/conversions, calls/intrinsics, UB-related, globals, external declarations
- Evidence:
  - integer arithmetic: `%5 = add nsw i32 %1, -1`
  - comparisons: `%3 = icmp sgt i32 %1, 1`
  - control flow: `br i1 %3, label %4, label %43`
  - loop: `llvm.loop metadata`
  - memory/pointer: `define dso_local i32 @f_gold(i32* nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #0 {`
  - casts/conversions: `%6 = zext i32 %1 to i64`
  - calls/intrinsics: `%45 = tail call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))`
  - UB-related: `define dso_local i32 @f_gold(i32* nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #0 {`
  - globals: `@.str = private unnamed_addr constant [17 x i8] c"No such subarray\00", align 1`
  - external declarations: `declare noundef i32 @printf(i8* nocapture noundef readonly, ...) local_unnamed_addr #1`

# c_transcoder/MAXIMUM_PROFIT_BY_BUYING_AND_SELLING_A_SHARE_AT_MOST_K_TIMES

- Source: `MAXIMUM_PROFIT_BY_BUYING_AND_SELLING_A_SHARE_AT_MOST_K_TIMES_processed.c`
- Source note: processed source

## O0

- Status: ok
- Features: integer arithmetic, comparisons, control flow, loop, memory/pointer, casts/conversions, calls/intrinsics, UB-related, external declarations
- Evidence:
  - integer arithmetic: `%17 = add nsw i32 %16, 1`
  - comparisons: `%28 = icmp sle i32 %26, %27`
  - control flow: `br label %25`
  - loop: `llvm.loop metadata`
  - memory/pointer: `define dso_local i32 @f_gold(i32* noundef %0, i32 noundef %1, i32 noundef %2) #0 {`
  - casts/conversions: `%18 = zext i32 %17 to i64`
  - calls/intrinsics: `%22 = call i8* @llvm.stacksave()`
  - UB-related: `define dso_local i32 @f_gold(i32* noundef %0, i32 noundef %1, i32 noundef %2) #0 {`
  - external declarations: `declare i8* @llvm.stacksave() #1`

## O1

- Status: ok
- Features: integer arithmetic, bitwise/shift, comparisons, control flow, loop, memory/pointer, casts/conversions, calls/intrinsics, UB-related, external declarations
- Evidence:
  - integer arithmetic: `%4 = add nsw i32 %2, 1`
  - bitwise/shift: `%18 = shl nuw nsw i64 %7, 2`
  - comparisons: `%11 = icmp slt i32 %2, 0`
  - control flow: `br i1 %11, label %15, label %12`
  - loop: `llvm.loop metadata`
  - memory/pointer: `define dso_local i32 @f_gold(i32* nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {`
  - casts/conversions: `%5 = zext i32 %4 to i64`
  - calls/intrinsics: `call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %10, i8 0, i64 %18, i1 false), !tbaa !5`
  - UB-related: `define dso_local i32 @f_gold(i32* nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {`
  - external declarations: `declare i32 @max(...) local_unnamed_addr #1`

## O2

- Status: ok
- Features: integer arithmetic, bitwise/shift, comparisons, control flow, loop, memory/pointer, casts/conversions, calls/intrinsics, UB-related, external declarations
- Evidence:
  - integer arithmetic: `%4 = add i32 %2, 1`
  - bitwise/shift: `%14 = and i64 %5, 3`
  - comparisons: `%11 = icmp slt i32 %2, 0`
  - control flow: `br i1 %11, label %29, label %12`
  - loop: `llvm.loop metadata`
  - memory/pointer: `define dso_local i32 @f_gold(i32* nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {`
  - casts/conversions: `%5 = zext i32 %4 to i64`
  - calls/intrinsics: `call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %10, i8 0, i64 %32, i1 false), !tbaa !5`
  - UB-related: `define dso_local i32 @f_gold(i32* nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {`
  - external declarations: `declare i32 @max(...) local_unnamed_addr #1`

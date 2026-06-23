# c_transcoder/SPACE_OPTIMIZED_DP_SOLUTION_0_1_KNAPSACK_PROBLEM

- Source: `SPACE_OPTIMIZED_DP_SOLUTION_0_1_KNAPSACK_PROBLEM_processed.c`
- Source note: processed source

## O0

- Status: ok
- Features: integer arithmetic, comparisons, control flow, loop, memory/pointer, casts/conversions, calls/intrinsics, UB-related, external declarations
- Evidence:
  - integer arithmetic: `%14 = add nsw i32 %13, 1`
  - comparisons: `%25 = icmp slt i32 %23, %24`
  - control flow: `br label %22`
  - loop: `llvm.loop metadata`
  - memory/pointer: `define dso_local i32 @f_gold(i32* noundef %0, i32* noundef %1, i32 noundef %2, i32 noundef %3) #0 {`
  - casts/conversions: `%15 = zext i32 %14 to i64`
  - calls/intrinsics: `%16 = call i8* @llvm.stacksave()`
  - UB-related: `define dso_local i32 @f_gold(i32* noundef %0, i32* noundef %1, i32 noundef %2, i32 noundef %3) #0 {`
  - external declarations: `declare i8* @llvm.stacksave() #1`

## O1

- Status: ok
- Features: integer arithmetic, bitwise/shift, comparisons, control flow, loop, memory/pointer, casts/conversions, calls/intrinsics, UB-related, external declarations
- Evidence:
  - integer arithmetic: `%5 = add i32 %3, 1`
  - bitwise/shift: `%7 = shl nuw nsw i64 %6, 1`
  - comparisons: `%11 = icmp sgt i32 %2, 0`
  - control flow: `br i1 %11, label %12, label %84`
  - loop: `llvm.loop metadata`
  - memory/pointer: `define dso_local i32 @f_gold(i32* nocapture noundef readonly %0, i32* nocapture noundef readonly %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #0 {`
  - casts/conversions: `%6 = zext i32 %5 to i64`
  - calls/intrinsics: `call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %9, i8 0, i64 %10, i1 false)`
  - UB-related: `define dso_local i32 @f_gold(i32* nocapture noundef readonly %0, i32* nocapture noundef readonly %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #0 {`
  - external declarations: `declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1`

## O2

- Status: ok
- Features: integer arithmetic, bitwise/shift, comparisons, control flow, loop, memory/pointer, casts/conversions, calls/intrinsics, UB-related, external declarations
- Evidence:
  - integer arithmetic: `%5 = add i32 %3, 1`
  - bitwise/shift: `%7 = shl nuw nsw i64 %6, 1`
  - comparisons: `%11 = icmp sgt i32 %2, 0`
  - control flow: `br i1 %11, label %12, label %79`
  - loop: `llvm.loop metadata`
  - memory/pointer: `define dso_local i32 @f_gold(i32* nocapture noundef readonly %0, i32* nocapture noundef readonly %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #0 {`
  - casts/conversions: `%6 = zext i32 %5 to i64`
  - calls/intrinsics: `call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %9, i8 0, i64 %10, i1 false)`
  - UB-related: `define dso_local i32 @f_gold(i32* nocapture noundef readonly %0, i32* nocapture noundef readonly %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #0 {`
  - external declarations: `declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1`

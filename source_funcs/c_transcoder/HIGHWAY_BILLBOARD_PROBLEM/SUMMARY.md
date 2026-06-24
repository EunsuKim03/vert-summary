# c_transcoder/HIGHWAY_BILLBOARD_PROBLEM

- Source: `HIGHWAY_BILLBOARD_PROBLEM_processed.c`
- Source note: processed source

## O0

- Status: ok
- Features:
  - integer arithmetic
  - comparisons
  - control flow
  - loop
  - memory/pointer
  - casts/conversions
  - calls/intrinsics
  - UB-related
  - external declarations
- Evidence:
  - integer arithmetic: `%16 = add nsw i32 %15, 1`
  - comparisons: `%25 = icmp sle i32 %23, %24`
  - control flow: `br label %22`
  - loop: `llvm.loop metadata`
  - memory/pointer: `define dso_local i32 @f_gold(i32 noundef %0, i32* noundef %1, i32* noundef %2, i32 noundef %3, i32 noundef %4) #0 {`
  - casts/conversions: `%17 = zext i32 %16 to i64`
  - calls/intrinsics: `%18 = call i8* @llvm.stacksave()`
  - UB-related: `define dso_local i32 @f_gold(i32 noundef %0, i32* noundef %1, i32* noundef %2, i32 noundef %3, i32 noundef %4) #0 {`
  - external declarations: `declare i8* @llvm.stacksave() #1`

## O1

- Status: ok
- Features:
  - integer arithmetic
  - bitwise/shift
  - comparisons
  - control flow
  - loop
  - memory/pointer
  - casts/conversions
  - calls/intrinsics
  - UB-related
  - external declarations
- Evidence:
  - integer arithmetic: `%6 = add nsw i32 %0, 1`
  - bitwise/shift: `%10 = shl nuw nsw i64 %7, 2`
  - comparisons: `%11 = icmp slt i32 %0, 1`
  - control flow: `br i1 %11, label %17, label %12`
  - loop: `llvm.loop metadata`
  - memory/pointer: `define dso_local i32 @f_gold(i32 noundef %0, i32* nocapture noundef readonly %1, i32* nocapture noundef readonly %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #0 {`
  - casts/conversions: `%7 = zext i32 %6 to i64`
  - calls/intrinsics: `call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %9, i8 0, i64 %10, i1 false)`
  - UB-related: `define dso_local i32 @f_gold(i32 noundef %0, i32* nocapture noundef readonly %1, i32* nocapture noundef readonly %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #0 {`
  - external declarations: `declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1`

## O2

- Status: ok
- Features:
  - integer arithmetic
  - bitwise/shift
  - comparisons
  - control flow
  - loop
  - memory/pointer
  - casts/conversions
  - calls/intrinsics
  - UB-related
  - external declarations
- Evidence:
  - integer arithmetic: `%6 = add i32 %0, 1`
  - bitwise/shift: `%10 = shl nuw nsw i64 %7, 2`
  - comparisons: `%11 = icmp slt i32 %0, 1`
  - control flow: `br i1 %11, label %15, label %12`
  - loop: `llvm.loop metadata`
  - memory/pointer: `define dso_local i32 @f_gold(i32 noundef %0, i32* nocapture noundef readonly %1, i32* nocapture noundef readonly %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #0 {`
  - casts/conversions: `%7 = zext i32 %6 to i64`
  - calls/intrinsics: `call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %9, i8 0, i64 %10, i1 false)`
  - UB-related: `define dso_local i32 @f_gold(i32 noundef %0, i32* nocapture noundef readonly %1, i32* nocapture noundef readonly %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #0 {`
  - external declarations: `declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1`

# c_transcoder/LONGEST_COMMON_INCREASING_SUBSEQUENCE_LCS_LIS

- Source: `LONGEST_COMMON_INCREASING_SUBSEQUENCE_LCS_LIS_processed.c`
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
  - integer arithmetic: `%31 = add nsw i32 %30, 1`
  - comparisons: `%24 = icmp slt i32 %22, %23`
  - control flow: `br label %21`
  - loop: `llvm.loop metadata`
  - memory/pointer: `define dso_local i32 @f_gold(i32* noundef %0, i32 noundef %1, i32* noundef %2, i32 noundef %3) #0 {`
  - casts/conversions: `%18 = zext i32 %17 to i64`
  - calls/intrinsics: `%19 = call i8* @llvm.stacksave()`
  - UB-related: `define dso_local i32 @f_gold(i32* noundef %0, i32 noundef %1, i32* noundef %2, i32 noundef %3) #0 {`
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
  - integer arithmetic: `%28 = add nuw nsw i64 %19, 1`
  - bitwise/shift: `%11 = shl nuw nsw i64 %10, 2`
  - comparisons: `%7 = icmp sgt i32 %3, 0`
  - control flow: `br i1 %7, label %8, label %12`
  - loop: `llvm.loop metadata`
  - memory/pointer: `define dso_local i32 @f_gold(i32* nocapture noundef readonly %0, i32 noundef %1, i32* nocapture noundef readonly %2, i32 noundef %3) local_unnamed_addr #0 {`
  - casts/conversions: `%5 = zext i32 %3 to i64`
  - calls/intrinsics: `call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %9, i8 0, i64 %11, i1 false), !tbaa !5`
  - UB-related: `define dso_local i32 @f_gold(i32* nocapture noundef readonly %0, i32 noundef %1, i32* nocapture noundef readonly %2, i32 noundef %3) local_unnamed_addr #0 {`
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
  - vector/SIMD
  - UB-related
  - external declarations
- Evidence:
  - integer arithmetic: `%25 = add nsw i64 %24, -8`
  - bitwise/shift: `%10 = shl nuw nsw i64 %5, 2`
  - comparisons: `%7 = icmp sgt i32 %3, 0`
  - control flow: `br i1 %7, label %8, label %11`
  - loop: `llvm.loop metadata`
  - memory/pointer: `define dso_local i32 @f_gold(i32* nocapture noundef readonly %0, i32 noundef %1, i32* nocapture noundef readonly %2, i32 noundef %3) local_unnamed_addr #0 {`
  - casts/conversions: `%5 = zext i32 %3 to i64`
  - calls/intrinsics: `call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %9, i8 0, i64 %10, i1 false), !tbaa !5`
  - vector/SIMD: `%34 = phi <4 x i32> [ zeroinitializer, %30 ], [ %56, %32 ]`
  - UB-related: `define dso_local i32 @f_gold(i32* nocapture noundef readonly %0, i32 noundef %1, i32* nocapture noundef readonly %2, i32 noundef %3) local_unnamed_addr #0 {`
  - external declarations: `declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1`

# c_transcoder/FIND_A_ROTATION_WITH_MAXIMUM_HAMMING_DISTANCE

- Source: `FIND_A_ROTATION_WITH_MAXIMUM_HAMMING_DISTANCE_processed.c`
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
  - integer arithmetic: `%17 = mul nsw i32 2, %16`
  - comparisons: `%25 = icmp slt i32 %23, %24`
  - control flow: `br label %22`
  - loop: `llvm.loop metadata`
  - memory/pointer: `define dso_local i32 @f_gold(i32* noundef %0, i32 noundef %1) #0 {`
  - casts/conversions: `%19 = zext i32 %18 to i64`
  - calls/intrinsics: `%20 = call i8* @llvm.stacksave()`
  - UB-related: `define dso_local i32 @f_gold(i32* noundef %0, i32 noundef %1) #0 {`
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
  - integer arithmetic: `%33 = add nsw i64 %30, %24`
  - bitwise/shift: `%4 = shl nsw i32 %1, 1`
  - comparisons: `%8 = icmp sgt i32 %1, 0`
  - control flow: `br i1 %8, label %9, label %13`
  - loop: `llvm.loop metadata`
  - memory/pointer: `define dso_local i32 @f_gold(i32* nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #0 {`
  - casts/conversions: `%3 = bitcast i32* %0 to i8*`
  - calls/intrinsics: `call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 16 %10, i8* align 4 %3, i64 %12, i1 false), !tbaa !5`
  - UB-related: `define dso_local i32 @f_gold(i32* nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #0 {`
  - external declarations: `declare i32 @max(...) local_unnamed_addr #1`

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
  - integer arithmetic: `%22 = add nuw nsw i64 %21, 1`
  - bitwise/shift: `%4 = shl nsw i32 %1, 1`
  - comparisons: `%8 = icmp sgt i32 %1, 0`
  - control flow: `br i1 %8, label %9, label %157`
  - loop: `llvm.loop metadata`
  - memory/pointer: `define dso_local i32 @f_gold(i32* nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #0 {`
  - casts/conversions: `%3 = bitcast i32* %0 to i8*`
  - calls/intrinsics: `call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 16 %10, i8* align 4 %3, i64 %12, i1 false), !tbaa !5`
  - vector/SIMD: `%53 = phi <4 x i32> [ zeroinitializer, %49 ], [ %93, %51 ]`
  - UB-related: `define dso_local i32 @f_gold(i32* nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #0 {`
  - external declarations: `declare i32 @max(...) local_unnamed_addr #1`

# c_transcoder/COUNT_NUMBER_WAYS_REACH_GIVEN_SCORE_GAME

- Source: `COUNT_NUMBER_WAYS_REACH_GIVEN_SCORE_GAME_processed.c`
- Source note: processed source

## O0

- Status: ok
- Features: integer arithmetic, comparisons, control flow, loop, memory/pointer, casts/conversions, calls/intrinsics, UB-related, external declarations
- Evidence:
  - integer arithmetic: `%8 = add nsw i32 %7, 1`
  - comparisons: `%16 = icmp slt i32 %13, %15`
  - control flow: `br label %12`
  - loop: `llvm.loop metadata`
  - memory/pointer: `%2 = alloca i32, align 4`
  - casts/conversions: `%9 = zext i32 %8 to i64`
  - calls/intrinsics: `%10 = call i8* @llvm.stacksave()`
  - UB-related: `define dso_local i32 @f_gold(i32 noundef %0) #0 {`
  - external declarations: `declare i8* @llvm.stacksave() #1`

## O1

- Status: ok
- Features: integer arithmetic, bitwise/shift, comparisons, control flow, loop, memory/pointer, casts/conversions, calls/intrinsics, UB-related, external declarations
- Evidence:
  - integer arithmetic: `%2 = add nsw i32 %0, 1`
  - bitwise/shift: `%9 = shl nuw nsw i64 %8, 2`
  - comparisons: `%5 = icmp slt i32 %0, 0`
  - control flow: `br i1 %5, label %11, label %6`
  - loop: `llvm.loop metadata`
  - memory/pointer: `%4 = alloca i32, i64 %3, align 16`
  - casts/conversions: `%3 = zext i32 %2 to i64`
  - calls/intrinsics: `call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 16 %7, i8 0, i64 %10, i1 false), !tbaa !5`
  - UB-related: `define dso_local i32 @f_gold(i32 noundef %0) local_unnamed_addr #0 {`
  - external declarations: `declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1`

## O2

- Status: ok
- Features: integer arithmetic, bitwise/shift, comparisons, control flow, loop, memory/pointer, casts/conversions, calls/intrinsics, vector/SIMD, UB-related, external declarations
- Evidence:
  - integer arithmetic: `%2 = add i32 %0, 1`
  - bitwise/shift: `%10 = shl nuw nsw i64 %9, 2`
  - comparisons: `%5 = icmp slt i32 %0, 0`
  - control flow: `br i1 %5, label %6, label %7`
  - loop: `llvm.loop metadata`
  - memory/pointer: `%4 = alloca i32, i64 %3, align 16`
  - casts/conversions: `%3 = zext i32 %2 to i64`
  - calls/intrinsics: `call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 16 %8, i8 0, i64 %11, i1 false), !tbaa !5`
  - vector/SIMD: `%86 = bitcast i32* %85 to <2 x i32>*`
  - UB-related: `define dso_local i32 @f_gold(i32 noundef %0) local_unnamed_addr #0 {`
  - external declarations: `declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1`

# c_transcoder/K_TH_ELEMENT_TWO_SORTED_ARRAYS

- Source: `K_TH_ELEMENT_TWO_SORTED_ARRAYS_processed.c`
- Source note: processed source

## O0

- Status: ok
- Features: integer arithmetic, comparisons, control flow, loop, memory/pointer, casts/conversions, calls/intrinsics, UB-related, external declarations
- Evidence:
  - integer arithmetic: `%18 = add nsw i32 %16, %17`
  - comparisons: `%25 = icmp slt i32 %23, %24`
  - control flow: `br label %22`
  - loop: `llvm.loop metadata`
  - memory/pointer: `define dso_local i32 @f_gold(i32* noundef %0, i32* noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) #0 {`
  - casts/conversions: `%19 = zext i32 %18 to i64`
  - calls/intrinsics: `%20 = call i8* @llvm.stacksave()`
  - UB-related: `define dso_local i32 @f_gold(i32* noundef %0, i32* noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) #0 {`
  - external declarations: `declare i8* @llvm.stacksave() #1`

## O1

- Status: ok
- Features: integer arithmetic, bitwise/shift, comparisons, control flow, loop, memory/pointer, casts/conversions, calls/intrinsics, UB-related, external declarations
- Evidence:
  - integer arithmetic: `%6 = add nsw i32 %3, %2`
  - bitwise/shift: `%11 = and i1 %9, %10`
  - comparisons: `%9 = icmp sgt i32 %2, 0`
  - control flow: `br i1 %11, label %34, label %14`
  - loop: `llvm.loop metadata`
  - memory/pointer: `define dso_local i32 @f_gold(i32* nocapture noundef readonly %0, i32* nocapture noundef readonly %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #0 {`
  - casts/conversions: `%7 = zext i32 %6 to i64`
  - calls/intrinsics: `call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 4 dereferenceable(1) %22, i8* noundef nonnull align 4 dereferenceable(1) %25, i64 %30, i1 false), !tbaa !5`
  - UB-related: `define dso_local i32 @f_gold(i32* nocapture noundef readonly %0, i32* nocapture noundef readonly %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #0 {`
  - external declarations: `declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1`

## O2

- Status: ok
- Features: integer arithmetic, bitwise/shift, comparisons, control flow, loop, memory/pointer, casts/conversions, calls/intrinsics, vector/SIMD, UB-related, external declarations
- Evidence:
  - integer arithmetic: `%6 = add nsw i32 %3, %2`
  - bitwise/shift: `%11 = and i1 %9, %10`
  - comparisons: `%9 = icmp sgt i32 %2, 0`
  - control flow: `br i1 %11, label %76, label %14`
  - loop: `llvm.loop metadata`
  - memory/pointer: `define dso_local i32 @f_gold(i32* nocapture noundef readonly %0, i32* nocapture noundef readonly %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #0 {`
  - casts/conversions: `%7 = zext i32 %6 to i64`
  - calls/intrinsics: `call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 4 dereferenceable(1) %22, i8* noundef nonnull align 4 dereferenceable(1) %25, i64 %30, i1 false), !tbaa !5`
  - vector/SIMD: `%37 = insertelement <2 x i64> <i64 poison, i64 0>, i64 %20, i64 0`
  - UB-related: `define dso_local i32 @f_gold(i32* nocapture noundef readonly %0, i32* nocapture noundef readonly %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #0 {`
  - external declarations: `declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1`

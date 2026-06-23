# c_transcoder/DICE_THROW_PROBLEM

- Source: `DICE_THROW_PROBLEM_processed.c`
- Source note: processed source

## O0

- Status: ok
- Features: integer arithmetic, comparisons, control flow, loop, memory/pointer, casts/conversions, calls/intrinsics, UB-related, external declarations
- Evidence:
  - integer arithmetic: `%15 = add nsw i32 %14, 1`
  - comparisons: `%29 = icmp sle i32 %27, %28`
  - control flow: `br label %26`
  - loop: `llvm.loop metadata`
  - memory/pointer: `%4 = alloca i32, align 4`
  - casts/conversions: `%16 = zext i32 %15 to i64`
  - calls/intrinsics: `%20 = call i8* @llvm.stacksave()`
  - UB-related: `define dso_local i32 @f_gold(i32 noundef %0, i32 noundef %1, i32 noundef %2) #0 {`
  - external declarations: `declare i8* @llvm.stacksave() #1`

## O1

- Status: ok
- Features: integer arithmetic, bitwise/shift, comparisons, control flow, loop, memory/pointer, casts/conversions, calls/intrinsics, UB-related, external declarations
- Evidence:
  - integer arithmetic: `%4 = add nsw i32 %1, 1`
  - bitwise/shift: `%11 = shl nuw i64 %8, 2`
  - comparisons: `%12 = icmp sgt i32 %0, 0`
  - control flow: `br i1 %14, label %15, label %22`
  - loop: `llvm.loop metadata`
  - memory/pointer: `%9 = alloca i32, i64 %8, align 16`
  - casts/conversions: `%5 = zext i32 %4 to i64`
  - calls/intrinsics: `call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %10, i8 0, i64 %11, i1 false)`
  - UB-related: `define dso_local i32 @f_gold(i32 noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {`
  - external declarations: `declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1`

## O2

- Status: ok
- Features: integer arithmetic, bitwise/shift, comparisons, control flow, loop, memory/pointer, casts/conversions, calls/intrinsics, vector/SIMD, UB-related, external declarations
- Evidence:
  - integer arithmetic: `%4 = add i32 %1, 1`
  - bitwise/shift: `%11 = shl nuw i64 %8, 2`
  - comparisons: `%12 = icmp sgt i32 %0, 0`
  - control flow: `br i1 %14, label %15, label %78`
  - loop: `llvm.loop metadata`
  - memory/pointer: `%9 = alloca i32, i64 %8, align 16`
  - casts/conversions: `%5 = zext i32 %4 to i64`
  - calls/intrinsics: `call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %10, i8 0, i64 %11, i1 false)`
  - vector/SIMD: `%39 = bitcast i32* %38 to <4 x i32>*`
  - UB-related: `define dso_local i32 @f_gold(i32 noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {`
  - external declarations: `declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1`

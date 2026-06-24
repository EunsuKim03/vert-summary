# c_transcoder/DICE_THROW_PROBLEM_1

- Source: `DICE_THROW_PROBLEM_1_processed.c`
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
  - integer arithmetic: `%13 = add nsw i32 %12, 1`
  - comparisons: `%30 = icmp sle i32 %28, %29`
  - control flow: `br label %27`
  - loop: `llvm.loop metadata`
  - memory/pointer: `%4 = alloca i32, align 4`
  - casts/conversions: `%14 = zext i32 %13 to i64`
  - calls/intrinsics: `%18 = call i8* @llvm.stacksave()`
  - UB-related: `define dso_local i64 @f_gold(i32 noundef %0, i32 noundef %1, i32 noundef %2) #0 {`
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
  - integer arithmetic: `%4 = add nsw i32 %1, 1`
  - bitwise/shift: `%11 = shl nuw i64 %8, 3`
  - comparisons: `%12 = icmp slt i32 %1, 1`
  - control flow: `br i1 %12, label %28, label %13`
  - loop: `llvm.loop metadata`
  - memory/pointer: `%9 = alloca i64, i64 %8, align 16`
  - casts/conversions: `%5 = zext i32 %4 to i64`
  - calls/intrinsics: `call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %10, i8 0, i64 %11, i1 false)`
  - UB-related: `define dso_local i64 @f_gold(i32 noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {`
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
  - integer arithmetic: `%4 = add i32 %1, 1`
  - bitwise/shift: `%11 = shl nuw i64 %8, 3`
  - comparisons: `%12 = icmp slt i32 %1, 1`
  - control flow: `br i1 %12, label %13, label %15`
  - loop: `llvm.loop metadata`
  - memory/pointer: `%9 = alloca i64, i64 %8, align 16`
  - casts/conversions: `%5 = zext i32 %4 to i64`
  - calls/intrinsics: `call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %10, i8 0, i64 %11, i1 false)`
  - UB-related: `define dso_local i64 @f_gold(i32 noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {`
  - external declarations: `declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1`

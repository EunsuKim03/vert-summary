# c_transcoder/MAXIMUM_NUMBER_SEGMENTS_LENGTHS_B_C

- Source: `MAXIMUM_NUMBER_SEGMENTS_LENGTHS_B_C_processed.c`
- Source note: processed source

## O0

- Status: ok
- Features: integer arithmetic, comparisons, control flow, loop, memory/pointer, casts/conversions, calls/intrinsics, UB-related, external declarations
- Evidence:
  - integer arithmetic: `%13 = add nsw i32 %12, 1`
  - comparisons: `%23 = icmp slt i32 %21, %22`
  - control flow: `br label %20`
  - loop: `llvm.loop metadata`
  - memory/pointer: `%5 = alloca i32, align 4`
  - casts/conversions: `%14 = zext i32 %13 to i64`
  - calls/intrinsics: `%15 = call i8* @llvm.stacksave()`
  - UB-related: `define dso_local i32 @f_gold(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) #0 {`
  - external declarations: `declare i8* @llvm.stacksave() #1`

## O1

- Status: ok
- Features: integer arithmetic, bitwise/shift, comparisons, control flow, loop, memory/pointer, casts/conversions, calls/intrinsics, UB-related, external declarations
- Evidence:
  - integer arithmetic: `%5 = add nsw i32 %0, 1`
  - bitwise/shift: `%9 = shl nuw nsw i64 %6, 2`
  - comparisons: `%10 = icmp sgt i32 %0, 0`
  - control flow: `br i1 %10, label %11, label %19`
  - loop: `llvm.loop metadata`
  - memory/pointer: `%7 = alloca i32, i64 %6, align 16`
  - casts/conversions: `%6 = zext i32 %5 to i64`
  - calls/intrinsics: `call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %8, i8 -1, i64 %9, i1 false)`
  - UB-related: `define dso_local i32 @f_gold(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #0 {`
  - external declarations: `declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1`

## O2

- Status: ok
- Features: integer arithmetic, bitwise/shift, comparisons, control flow, loop, memory/pointer, casts/conversions, calls/intrinsics, UB-related, external declarations
- Evidence:
  - integer arithmetic: `%5 = add nsw i32 %0, 1`
  - bitwise/shift: `%9 = shl nuw nsw i64 %6, 2`
  - comparisons: `%10 = icmp sgt i32 %0, 0`
  - control flow: `br i1 %10, label %13, label %11`
  - loop: `llvm.loop metadata`
  - memory/pointer: `%7 = alloca i32, i64 %6, align 16`
  - casts/conversions: `%6 = zext i32 %5 to i64`
  - calls/intrinsics: `call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %8, i8 -1, i64 %9, i1 false)`
  - UB-related: `define dso_local i32 @f_gold(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #0 {`
  - external declarations: `declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1`

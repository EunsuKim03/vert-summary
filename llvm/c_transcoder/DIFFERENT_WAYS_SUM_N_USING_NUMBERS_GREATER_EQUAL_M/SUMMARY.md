# c_transcoder/DIFFERENT_WAYS_SUM_N_USING_NUMBERS_GREATER_EQUAL_M

- Source: `DIFFERENT_WAYS_SUM_N_USING_NUMBERS_GREATER_EQUAL_M_processed.c`
- Source note: processed source

## O0

- Status: ok
- Features: integer arithmetic, comparisons, control flow, loop, memory/pointer, casts/conversions, calls/intrinsics, UB-related, external declarations
- Evidence:
  - integer arithmetic: `%11 = add nsw i32 %10, 2`
  - comparisons: `%32 = icmp sge i32 %30, %31`
  - control flow: `br label %29`
  - loop: `llvm.loop metadata`
  - memory/pointer: `%3 = alloca i32, align 4`
  - casts/conversions: `%12 = zext i32 %11 to i64`
  - calls/intrinsics: `%16 = call i8* @llvm.stacksave()`
  - UB-related: `define dso_local i32 @f_gold(i32 noundef %0, i32 noundef %1) #0 {`
  - external declarations: `declare i8* @llvm.stacksave() #1`

## O1

- Status: ok
- Features: integer arithmetic, bitwise/shift, comparisons, control flow, loop, memory/pointer, casts/conversions, calls/intrinsics, UB-related, external declarations
- Evidence:
  - integer arithmetic: `%3 = add nsw i32 %0, 2`
  - bitwise/shift: `%8 = shl nuw i64 %5, 2`
  - comparisons: `%12 = icmp slt i32 %0, %1`
  - control flow: `br i1 %12, label %24, label %13`
  - loop: `llvm.loop metadata`
  - memory/pointer: `%6 = alloca i32, i64 %5, align 16`
  - casts/conversions: `%4 = zext i32 %3 to i64`
  - calls/intrinsics: `call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %7, i8 0, i64 %8, i1 false)`
  - UB-related: `define dso_local i32 @f_gold(i32 noundef %0, i32 noundef %1) local_unnamed_addr #0 {`
  - external declarations: `declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1`

## O2

- Status: ok
- Features: integer arithmetic, bitwise/shift, comparisons, control flow, loop, memory/pointer, casts/conversions, calls/intrinsics, UB-related, external declarations
- Evidence:
  - integer arithmetic: `%3 = add nsw i32 %0, 2`
  - bitwise/shift: `%8 = shl nuw i64 %5, 2`
  - comparisons: `%12 = icmp slt i32 %0, %1`
  - control flow: `br i1 %12, label %13, label %16`
  - loop: `llvm.loop metadata`
  - memory/pointer: `%6 = alloca i32, i64 %5, align 16`
  - casts/conversions: `%4 = zext i32 %3 to i64`
  - calls/intrinsics: `call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %7, i8 0, i64 %8, i1 false)`
  - UB-related: `define dso_local i32 @f_gold(i32 noundef %0, i32 noundef %1) local_unnamed_addr #0 {`
  - external declarations: `declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1`

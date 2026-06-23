# c_transcoder/NUMBER_WHICH_HAS_THE_MAXIMUM_NUMBER_OF_DISTINCT_PRIME_FACTORS_IN_RANGE_M_TO_N

- Source: `NUMBER_WHICH_HAS_THE_MAXIMUM_NUMBER_OF_DISTINCT_PRIME_FACTORS_IN_RANGE_M_TO_N_processed.c`
- Source note: processed source

## O0

- Status: ok
- Features: integer arithmetic, comparisons, control flow, loop, memory/pointer, casts/conversions, calls/intrinsics, UB-related, external declarations
- Evidence:
  - integer arithmetic: `%15 = add nsw i32 %14, 1`
  - comparisons: `%26 = icmp sle i32 %24, %25`
  - control flow: `br label %23`
  - loop: `llvm.loop metadata`
  - memory/pointer: `%3 = alloca i32, align 4`
  - casts/conversions: `%16 = zext i32 %15 to i64`
  - calls/intrinsics: `%17 = call i8* @llvm.stacksave()`
  - UB-related: `define dso_local i32 @f_gold(i32 noundef %0, i32 noundef %1) #0 {`
  - external declarations: `declare i8* @llvm.stacksave() #1`

## O1

- Status: ok
- Features: integer arithmetic, bitwise/shift, comparisons, control flow, loop, memory/pointer, casts/conversions, calls/intrinsics, UB-related, external declarations
- Evidence:
  - integer arithmetic: `%3 = add nsw i32 %1, 1`
  - bitwise/shift: `%11 = shl nuw nsw i64 %10, 3`
  - comparisons: `%7 = icmp slt i32 %1, 0`
  - control flow: `br i1 %7, label %15, label %8`
  - loop: `llvm.loop metadata`
  - memory/pointer: `%5 = alloca i64, i64 %4, align 16`
  - casts/conversions: `%4 = zext i32 %3 to i64`
  - calls/intrinsics: `call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 16 %9, i8 0, i64 %12, i1 false), !tbaa !5`
  - UB-related: `define dso_local i32 @f_gold(i32 noundef %0, i32 noundef %1) local_unnamed_addr #0 {`
  - external declarations: `declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1`

## O2

- Status: ok
- Features: integer arithmetic, bitwise/shift, comparisons, control flow, loop, memory/pointer, casts/conversions, calls/intrinsics, UB-related, external declarations
- Evidence:
  - integer arithmetic: `%3 = add nsw i32 %1, 1`
  - bitwise/shift: `%11 = shl nuw nsw i64 %10, 3`
  - comparisons: `%7 = icmp slt i32 %1, 0`
  - control flow: `br i1 %7, label %15, label %8`
  - loop: `llvm.loop metadata`
  - memory/pointer: `%5 = alloca i64, i64 %4, align 16`
  - casts/conversions: `%4 = zext i32 %3 to i64`
  - calls/intrinsics: `call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 16 %9, i8 0, i64 %12, i1 false), !tbaa !5`
  - UB-related: `define dso_local i32 @f_gold(i32 noundef %0, i32 noundef %1) local_unnamed_addr #0 {`
  - external declarations: `declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1`

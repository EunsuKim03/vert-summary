# c_transcoder/PROGRAM_TO_CHECK_IF_A_GIVEN_NUMBER_IS_LUCKY_ALL_DIGITS_ARE_DIFFERENT

- Source: `PROGRAM_TO_CHECK_IF_A_GIVEN_NUMBER_IS_LUCKY_ALL_DIGITS_ARE_DIFFERENT_processed.c`
- Source note: processed source

## O0

- Status: ok
- Features: integer arithmetic, comparisons, control flow, loop, memory/pointer, casts/conversions, UB-related
- Evidence:
  - integer arithmetic: `%16 = add nsw i32 %15, 1`
  - comparisons: `%9 = icmp slt i32 %8, 10`
  - control flow: `br label %7`
  - loop: `llvm.loop metadata`
  - memory/pointer: `%2 = alloca i32, align 4`
  - casts/conversions: `%12 = sext i32 %11 to i64`
  - UB-related: `define dso_local i32 @f_gold(i32 noundef %0) #0 {`

## O1

- Status: ok
- Features: integer arithmetic, comparisons, control flow, loop, memory/pointer, casts/conversions, calls/intrinsics, UB-related, external declarations
- Evidence:
  - integer arithmetic: `%9 = srem i32 %6, 10`
  - comparisons: `%7 = icmp sgt i32 %6, 0`
  - control flow: `br label %5`
  - loop: `llvm.loop metadata`
  - memory/pointer: `%2 = alloca [10 x i8], align 1`
  - casts/conversions: `%11 = zext i32 %9 to i64`
  - calls/intrinsics: `call void @llvm.lifetime.start.p0i8(i64 10, i8* nonnull %4) #3`
  - UB-related: `define dso_local i32 @f_gold(i32 noundef %0) local_unnamed_addr #0 {`
  - external declarations: `declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #1`

## O2

- Status: ok
- Features: integer arithmetic, comparisons, control flow, loop, memory/pointer, casts/conversions, calls/intrinsics, UB-related, external declarations
- Evidence:
  - integer arithmetic: `%8 = urem i32 %7, 10`
  - comparisons: `%5 = icmp sgt i32 %0, 0`
  - control flow: `br i1 %5, label %6, label %16`
  - loop: `br i1 %15, label %16, label %6`
  - memory/pointer: `%2 = alloca [10 x i8], align 1`
  - casts/conversions: `%10 = zext i32 %8 to i64`
  - calls/intrinsics: `call void @llvm.lifetime.start.p0i8(i64 10, i8* nonnull %4) #3`
  - UB-related: `define dso_local i32 @f_gold(i32 noundef %0) local_unnamed_addr #0 {`
  - external declarations: `declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #1`

# c_transcoder/COUNT_POSSIBLE_GROUPS_SIZE_2_3_SUM_MULTIPLE_3

- Source: `COUNT_POSSIBLE_GROUPS_SIZE_2_3_SUM_MULTIPLE_3_processed.c`
- Source note: processed source

## O0

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
  - integer arithmetic: `%19 = srem i32 %18, 3`
  - bitwise/shift: `%34 = ashr i32 %33, 1`
  - comparisons: `%12 = icmp slt i32 %10, %11`
  - control flow: `br label %9`
  - loop: `llvm.loop metadata`
  - memory/pointer: `define dso_local i32 @f_gold(i32* noundef %0, i32 noundef %1) #0 {`
  - casts/conversions: `%8 = bitcast [3 x i32]* %5 to i8*`
  - calls/intrinsics: `call void @llvm.memset.p0i8.i64(i8* align 4 %8, i8 0, i64 12, i1 false)`
  - UB-related: `define dso_local i32 @f_gold(i32* noundef %0, i32 noundef %1) #0 {`
  - external declarations: `declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1`

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
  - integer arithmetic: `%12 = srem i32 %11, 3`
  - bitwise/shift: `%24 = ashr i32 %23, 1`
  - comparisons: `%5 = icmp sgt i32 %1, 0`
  - control flow: `br i1 %5, label %6, label %19`
  - loop: `llvm.loop metadata`
  - memory/pointer: `define dso_local i32 @f_gold(i32* nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #0 {`
  - casts/conversions: `%4 = bitcast [3 x i32]* %3 to i8*`
  - calls/intrinsics: `call void @llvm.lifetime.start.p0i8(i64 12, i8* nonnull %4) #3`
  - UB-related: `define dso_local i32 @f_gold(i32* nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #0 {`
  - external declarations: `declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #1`

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
  - integer arithmetic: `%17 = srem i32 %16, 3`
  - bitwise/shift: `%8 = and i64 %7, 1`
  - comparisons: `%5 = icmp sgt i32 %1, 0`
  - control flow: `br i1 %5, label %6, label %51`
  - loop: `llvm.loop metadata`
  - memory/pointer: `define dso_local i32 @f_gold(i32* nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #0 {`
  - casts/conversions: `%4 = bitcast [3 x i32]* %3 to i8*`
  - calls/intrinsics: `call void @llvm.lifetime.start.p0i8(i64 12, i8* nonnull %4) #3`
  - UB-related: `define dso_local i32 @f_gold(i32* nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #0 {`
  - external declarations: `declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #1`

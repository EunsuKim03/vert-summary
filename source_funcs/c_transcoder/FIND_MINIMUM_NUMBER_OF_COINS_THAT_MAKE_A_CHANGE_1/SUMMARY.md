# c_transcoder/FIND_MINIMUM_NUMBER_OF_COINS_THAT_MAKE_A_CHANGE_1

- Source: `FIND_MINIMUM_NUMBER_OF_COINS_THAT_MAKE_A_CHANGE_1_processed.c`
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
  - integer arithmetic: `%14 = add nsw i32 %13, 1`
  - comparisons: `%22 = icmp sle i32 %20, %21`
  - control flow: `br label %19`
  - loop: `llvm.loop metadata`
  - memory/pointer: `define dso_local i32 @f_gold(i32* noundef %0, i32 noundef %1, i32 noundef %2) #0 {`
  - casts/conversions: `%15 = zext i32 %14 to i64`
  - calls/intrinsics: `%16 = call i8* @llvm.stacksave()`
  - UB-related: `define dso_local i32 @f_gold(i32* noundef %0, i32 noundef %1, i32 noundef %2) #0 {`
  - external declarations: `declare i8* @llvm.stacksave() #1`

## O1

- Status: ok
- Features:
  - integer arithmetic
  - comparisons
  - control flow
  - loop
  - memory/pointer
  - casts/conversions
  - UB-related
- Evidence:
  - integer arithmetic: `%4 = add nsw i32 %2, 1`
  - comparisons: `%7 = icmp slt i32 %2, 1`
  - control flow: `br i1 %7, label %11, label %8`
  - loop: `llvm.loop metadata`
  - memory/pointer: `define dso_local i32 @f_gold(i32* nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {`
  - casts/conversions: `%5 = zext i32 %4 to i64`
  - UB-related: `define dso_local i32 @f_gold(i32* nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {`

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
  - vector/SIMD
  - UB-related
- Evidence:
  - integer arithmetic: `%4 = add i32 %2, 1`
  - bitwise/shift: `%12 = and i64 %9, -8`
  - comparisons: `%7 = icmp slt i32 %2, 1`
  - control flow: `br i1 %7, label %79, label %8`
  - loop: `llvm.loop metadata`
  - memory/pointer: `define dso_local i32 @f_gold(i32* nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {`
  - casts/conversions: `%5 = zext i32 %4 to i64`
  - vector/SIMD: `%26 = bitcast i32* %25 to <4 x i32>*`
  - UB-related: `define dso_local i32 @f_gold(i32* nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {`

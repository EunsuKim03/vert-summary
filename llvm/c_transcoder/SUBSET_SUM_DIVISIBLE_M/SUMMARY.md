# c_transcoder/SUBSET_SUM_DIVISIBLE_M

- Source: `SUBSET_SUM_DIVISIBLE_M_processed.c`
- Source note: processed source

## O0

- Status: ok
- Features: integer arithmetic, comparisons, control flow, loop, memory/pointer, casts/conversions, calls/intrinsics, UB-related, external declarations
- Evidence:
  - integer arithmetic: `%62 = add nsw i32 %56, %61`
  - comparisons: `%18 = icmp sgt i32 %16, %17`
  - control flow: `br i1 %18, label %19, label %20`
  - loop: `llvm.loop metadata`
  - memory/pointer: `define dso_local i32 @f_gold(i32* noundef %0, i32 noundef %1, i32 noundef %2) #0 {`
  - casts/conversions: `%22 = zext i32 %21 to i64`
  - calls/intrinsics: `%23 = call i8* @llvm.stacksave()`
  - UB-related: `define dso_local i32 @f_gold(i32* noundef %0, i32 noundef %1, i32 noundef %2) #0 {`
  - external declarations: `declare i8* @llvm.stacksave() #1`

## O1

- Status: ok
- Features: integer arithmetic, comparisons, control flow, loop, memory/pointer, casts/conversions, calls/intrinsics, UB-related, external declarations
- Evidence:
  - integer arithmetic: `%35 = add nsw i32 %33, %34`
  - comparisons: `%4 = icmp sgt i32 %1, %2`
  - control flow: `br i1 %4, label %69, label %5`
  - loop: `llvm.loop metadata`
  - memory/pointer: `define dso_local i32 @f_gold(i32* nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {`
  - casts/conversions: `%6 = zext i32 %2 to i64`
  - calls/intrinsics: `%7 = call i8* @llvm.stacksave()`
  - UB-related: `define dso_local i32 @f_gold(i32* nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {`
  - external declarations: `declare i8* @llvm.stacksave() #1`

## O2

- Status: ok
- Features: integer arithmetic, bitwise/shift, comparisons, control flow, loop, memory/pointer, casts/conversions, calls/intrinsics, vector/SIMD, UB-related, external declarations
- Evidence:
  - integer arithmetic: `%117 = add nuw i64 %29, 16`
  - bitwise/shift: `%15 = and i64 %6, 4294967280`
  - comparisons: `%4 = icmp sgt i32 %1, %2`
  - control flow: `br i1 %4, label %166, label %5`
  - loop: `llvm.loop metadata`
  - memory/pointer: `define dso_local i32 @f_gold(i32* nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {`
  - casts/conversions: `%6 = zext i32 %2 to i64`
  - calls/intrinsics: `%7 = tail call i8* @llvm.stacksave()`
  - vector/SIMD: `%32 = bitcast i8* %31 to <8 x i8>*`
  - UB-related: `define dso_local i32 @f_gold(i32* nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {`
  - external declarations: `declare i8* @llvm.stacksave() #1`

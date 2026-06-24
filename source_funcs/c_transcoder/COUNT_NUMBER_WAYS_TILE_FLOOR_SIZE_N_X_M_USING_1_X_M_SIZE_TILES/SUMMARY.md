# c_transcoder/COUNT_NUMBER_WAYS_TILE_FLOOR_SIZE_N_X_M_USING_1_X_M_SIZE_TILES

- Source: `COUNT_NUMBER_WAYS_TILE_FLOOR_SIZE_N_X_M_USING_1_X_M_SIZE_TILES_processed.c`
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
  - integer arithmetic: `%9 = add nsw i32 %8, 1`
  - comparisons: `%17 = icmp sle i32 %15, %16`
  - control flow: `br label %14`
  - loop: `llvm.loop metadata`
  - memory/pointer: `%3 = alloca i32, align 4`
  - casts/conversions: `%10 = zext i32 %9 to i64`
  - calls/intrinsics: `%11 = call i8* @llvm.stacksave()`
  - UB-related: `define dso_local i32 @f_gold(i32 noundef %0, i32 noundef %1) #0 {`
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
  - integer arithmetic: `%3 = add nsw i32 %0, 1`
  - comparisons: `%6 = icmp slt i32 %0, 1`
  - control flow: `br i1 %6, label %13, label %7`
  - loop: `llvm.loop metadata`
  - memory/pointer: `%5 = alloca i32, i64 %4, align 16`
  - casts/conversions: `%4 = zext i32 %3 to i64`
  - UB-related: `define dso_local i32 @f_gold(i32 noundef %0, i32 noundef %1) local_unnamed_addr #0 {`

## O2

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
  - integer arithmetic: `%3 = add i32 %0, 1`
  - comparisons: `%6 = icmp slt i32 %0, 1`
  - control flow: `br i1 %6, label %9, label %7`
  - loop: `llvm.loop metadata`
  - memory/pointer: `%5 = alloca i32, i64 %4, align 16`
  - casts/conversions: `%4 = zext i32 %3 to i64`
  - UB-related: `define dso_local i32 @f_gold(i32 noundef %0, i32 noundef %1) local_unnamed_addr #0 {`

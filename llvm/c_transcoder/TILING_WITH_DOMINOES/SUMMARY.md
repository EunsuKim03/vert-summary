# c_transcoder/TILING_WITH_DOMINOES

- Source: `TILING_WITH_DOMINOES_processed.c`
- Source note: processed source

## O0

- Status: ok
- Features: integer arithmetic, comparisons, control flow, loop, memory/pointer, casts/conversions, calls/intrinsics, UB-related, external declarations
- Evidence:
  - integer arithmetic: `%8 = add nsw i32 %7, 1`
  - comparisons: `%23 = icmp sle i32 %21, %22`
  - control flow: `br label %20`
  - loop: `llvm.loop metadata`
  - memory/pointer: `%2 = alloca i32, align 4`
  - casts/conversions: `%9 = zext i32 %8 to i64`
  - calls/intrinsics: `%10 = call i8* @llvm.stacksave()`
  - UB-related: `define dso_local i32 @f_gold(i32 noundef %0) #0 {`
  - external declarations: `declare i8* @llvm.stacksave() #1`

## O1

- Status: ok
- Features: integer arithmetic, bitwise/shift, comparisons, control flow, loop, memory/pointer, casts/conversions, UB-related
- Evidence:
  - integer arithmetic: `%2 = add nsw i32 %0, 1`
  - bitwise/shift: `%27 = shl nsw i32 %22, 1`
  - comparisons: `%8 = icmp slt i32 %0, 2`
  - control flow: `br i1 %8, label %16, label %9`
  - loop: `llvm.loop metadata`
  - memory/pointer: `%4 = alloca i32, i64 %3, align 16`
  - casts/conversions: `%3 = zext i32 %2 to i64`
  - UB-related: `define dso_local i32 @f_gold(i32 noundef %0) local_unnamed_addr #0 {`

## O2

- Status: ok
- Features: integer arithmetic, bitwise/shift, comparisons, control flow, loop, memory/pointer, casts/conversions, UB-related
- Evidence:
  - integer arithmetic: `%2 = add i32 %0, 1`
  - bitwise/shift: `%15 = and i64 %14, 1`
  - comparisons: `%8 = icmp slt i32 %0, 2`
  - control flow: `br i1 %8, label %35, label %9`
  - loop: `llvm.loop metadata`
  - memory/pointer: `%4 = alloca i32, i64 %3, align 16`
  - casts/conversions: `%3 = zext i32 %2 to i64`
  - UB-related: `define dso_local i32 @f_gold(i32 noundef %0) local_unnamed_addr #0 {`

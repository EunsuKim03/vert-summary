# c_transcoder/SEARCHING_ARRAY_ADJACENT_DIFFER_K

- Source: `SEARCHING_ARRAY_ADJACENT_DIFFER_K_processed.c`
- Source note: processed source

## O0

- Status: ok
- Features: integer arithmetic, comparisons, control flow, loop, memory/pointer, casts/conversions, calls/intrinsics, UB-related, globals, external declarations
- Evidence:
  - integer arithmetic: `%33 = sub nsw i32 %31, %32`
  - comparisons: `%14 = icmp slt i32 %12, %13`
  - control flow: `br label %11`
  - loop: `llvm.loop metadata`
  - memory/pointer: `define dso_local i32 @f_gold(i32* noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) #0 {`
  - casts/conversions: `%18 = sext i32 %17 to i64`
  - calls/intrinsics: `%34 = call i32 @abs(i32 noundef %33) #3`
  - UB-related: `define dso_local i32 @f_gold(i32* noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) #0 {`
  - globals: `@.str = private unnamed_addr constant [23 x i8] c"number is not present!\00", align 1`
  - external declarations: `declare i32 @max(...) #1`

## O1

- Status: ok
- Features: integer arithmetic, comparisons, control flow, loop, memory/pointer, casts/conversions, calls/intrinsics, UB-related, globals, external declarations
- Evidence:
  - integer arithmetic: `%13 = sub nsw i32 %10, %2`
  - comparisons: `%5 = icmp sgt i32 %1, 0`
  - control flow: `br i1 %5, label %6, label %19`
  - loop: `llvm.loop metadata`
  - memory/pointer: `define dso_local i32 @f_gold(i32* nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #0 {`
  - casts/conversions: `%8 = sext i32 %7 to i64`
  - calls/intrinsics: `%14 = call i32 @llvm.abs.i32(i32 %13, i1 true)`
  - UB-related: `define dso_local i32 @f_gold(i32* nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #0 {`
  - globals: `@.str = private unnamed_addr constant [23 x i8] c"number is not present!\00", align 1`
  - external declarations: `declare i32 @max(...) local_unnamed_addr #1`

## O2

- Status: ok
- Features: integer arithmetic, comparisons, control flow, loop, memory/pointer, casts/conversions, calls/intrinsics, UB-related, globals, external declarations
- Evidence:
  - integer arithmetic: `%13 = sub nsw i32 %10, %2`
  - comparisons: `%5 = icmp sgt i32 %1, 0`
  - control flow: `br i1 %5, label %6, label %19`
  - loop: `llvm.loop metadata`
  - memory/pointer: `define dso_local i32 @f_gold(i32* nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #0 {`
  - casts/conversions: `%8 = sext i32 %7 to i64`
  - calls/intrinsics: `%14 = tail call i32 @llvm.abs.i32(i32 %13, i1 true)`
  - UB-related: `define dso_local i32 @f_gold(i32* nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #0 {`
  - globals: `@.str = private unnamed_addr constant [23 x i8] c"number is not present!\00", align 1`
  - external declarations: `declare i32 @max(...) local_unnamed_addr #1`

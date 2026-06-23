# c_transcoder/DYNAMIC_PROGRAMMING_SET_13_CUTTING_A_ROD

- Source: `DYNAMIC_PROGRAMMING_SET_13_CUTTING_A_ROD_processed.c`
- Source note: processed source

## O0

- Status: ok
- Features: integer arithmetic, comparisons, control flow, loop, memory/pointer, casts/conversions, calls/intrinsics, UB-related, external declarations
- Evidence:
  - integer arithmetic: `%11 = add nsw i32 %10, 1`
  - comparisons: `%19 = icmp sle i32 %17, %18`
  - control flow: `br label %16`
  - loop: `llvm.loop metadata`
  - memory/pointer: `define dso_local i32 @f_gold(i32* noundef %0, i32 noundef %1) #0 {`
  - casts/conversions: `%12 = zext i32 %11 to i64`
  - calls/intrinsics: `%13 = call i8* @llvm.stacksave()`
  - UB-related: `define dso_local i32 @f_gold(i32* noundef %0, i32 noundef %1) #0 {`
  - external declarations: `declare i8* @llvm.stacksave() #1`

## O1

- Status: ok
- Features: integer arithmetic, bitwise/shift, comparisons, control flow, loop, memory/pointer, casts/conversions, calls/intrinsics, UB-related, external declarations
- Evidence:
  - integer arithmetic: `%3 = add nsw i32 %1, 1`
  - bitwise/shift: `%17 = xor i64 %13, -1`
  - comparisons: `%6 = icmp slt i32 %1, 1`
  - control flow: `br i1 %6, label %29, label %7`
  - loop: `llvm.loop metadata`
  - memory/pointer: `define dso_local i32 @f_gold(i32* nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #0 {`
  - casts/conversions: `%4 = zext i32 %3 to i64`
  - calls/intrinsics: `%22 = call i32 (i32, i32, ...) bitcast (i32 (...)* @max to i32 (i32, i32, ...)*)(i32 noundef %14, i32 noundef %21) #2`
  - UB-related: `define dso_local i32 @f_gold(i32* nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #0 {`
  - external declarations: `declare i32 @max(...) local_unnamed_addr #1`

## O2

- Status: ok
- Features: integer arithmetic, bitwise/shift, comparisons, control flow, loop, memory/pointer, casts/conversions, calls/intrinsics, UB-related, external declarations
- Evidence:
  - integer arithmetic: `%3 = add i32 %1, 1`
  - bitwise/shift: `%14 = xor i64 %10, -1`
  - comparisons: `%6 = icmp slt i32 %1, 1`
  - control flow: `br i1 %6, label %26, label %7`
  - loop: `llvm.loop metadata`
  - memory/pointer: `define dso_local i32 @f_gold(i32* nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #0 {`
  - casts/conversions: `%4 = zext i32 %3 to i64`
  - calls/intrinsics: `%19 = tail call i32 (i32, i32, ...) bitcast (i32 (...)* @max to i32 (i32, i32, ...)*)(i32 noundef %11, i32 noundef %18) #2`
  - UB-related: `define dso_local i32 @f_gold(i32* nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #0 {`
  - external declarations: `declare i32 @max(...) local_unnamed_addr #1`

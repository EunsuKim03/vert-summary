# c_transcoder/MINIMUM_TIME_WRITE_CHARACTERS_USING_INSERT_DELETE_COPY_OPERATION

- Source: `MINIMUM_TIME_WRITE_CHARACTERS_USING_INSERT_DELETE_COPY_OPERATION_processed.c`
- Source note: processed source

## O0

- Status: ok
- Features: integer arithmetic, comparisons, control flow, loop, memory/pointer, casts/conversions, calls/intrinsics, UB-related, external declarations
- Evidence:
  - integer arithmetic: `%23 = add nsw i32 %22, 1`
  - comparisons: `%14 = icmp eq i32 %13, 0`
  - control flow: `br i1 %14, label %15, label %16`
  - loop: `llvm.loop metadata`
  - memory/pointer: `%5 = alloca i32, align 4`
  - casts/conversions: `%24 = zext i32 %23 to i64`
  - calls/intrinsics: `%25 = call i8* @llvm.stacksave()`
  - UB-related: `define dso_local i32 @f_gold(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) #0 {`
  - external declarations: `declare i8* @llvm.stacksave() #1`

## O1

- Status: ok
- Features: integer arithmetic, bitwise/shift, comparisons, control flow, loop, memory/pointer, casts/conversions, calls/intrinsics, UB-related, external declarations
- Evidence:
  - integer arithmetic: `%7 = add nsw i32 %0, 1`
  - bitwise/shift: `%12 = shl nuw nsw i64 %8, 2`
  - comparisons: `%13 = icmp slt i32 %0, 1`
  - control flow: `switch i32 %0, label %6 [`
  - loop: `llvm.loop metadata`
  - memory/pointer: `%9 = call i8* @llvm.stacksave()`
  - casts/conversions: `%8 = zext i32 %7 to i64`
  - calls/intrinsics: `%9 = call i8* @llvm.stacksave()`
  - UB-related: `define dso_local i32 @f_gold(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #0 {`
  - external declarations: `declare i8* @llvm.stacksave() #1`

## O2

- Status: ok
- Features: integer arithmetic, bitwise/shift, comparisons, control flow, loop, memory/pointer, casts/conversions, calls/intrinsics, UB-related, external declarations
- Evidence:
  - integer arithmetic: `%7 = add i32 %0, 1`
  - bitwise/shift: `%12 = shl nuw nsw i64 %8, 2`
  - comparisons: `%13 = icmp slt i32 %0, 1`
  - control flow: `switch i32 %0, label %6 [`
  - loop: `llvm.loop metadata`
  - memory/pointer: `%9 = tail call i8* @llvm.stacksave()`
  - casts/conversions: `%8 = zext i32 %7 to i64`
  - calls/intrinsics: `%9 = tail call i8* @llvm.stacksave()`
  - UB-related: `define dso_local i32 @f_gold(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #0 {`
  - external declarations: `declare i8* @llvm.stacksave() #1`

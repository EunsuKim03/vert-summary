# c_transcoder/FIND_MAXIMUM_HEIGHT_PYRAMID_FROM_THE_GIVEN_ARRAY_OF_OBJECTS

- Source: `FIND_MAXIMUM_HEIGHT_PYRAMID_FROM_THE_GIVEN_ARRAY_OF_OBJECTS_processed.c`
- Source note: processed source

## O0

- Status: ok
- Features: integer arithmetic, comparisons, control flow, loop, memory/pointer, casts/conversions, calls/intrinsics, UB-related, external declarations
- Evidence:
  - integer arithmetic: `%31 = add nsw i32 %30, %29`
  - comparisons: `%23 = icmp slt i32 %21, %22`
  - control flow: `br label %20`
  - loop: `llvm.loop metadata`
  - memory/pointer: `define dso_local i32 @f_gold(i32* noundef %0, i32 noundef %1) #0 {`
  - casts/conversions: `%14 = sext i32 %13 to i64`
  - calls/intrinsics: `%16 = call i32 (i32*, i32*, ...) bitcast (i32 (...)* @sort to i32 (i32*, i32*, ...)*)(i32* noundef %11, i32* noundef %15)`
  - UB-related: `define dso_local i32 @f_gold(i32* noundef %0, i32 noundef %1) #0 {`
  - external declarations: `declare i32 @sort(...) #1`

## O1

- Status: ok
- Features: integer arithmetic, comparisons, control flow, loop, memory/pointer, casts/conversions, calls/intrinsics, UB-related, external declarations
- Evidence:
  - integer arithmetic: `%21 = add nsw i32 %20, %14`
  - comparisons: `%6 = icmp sgt i32 %1, 1`
  - control flow: `br i1 %6, label %7, label %10`
  - loop: `llvm.loop metadata`
  - memory/pointer: `define dso_local i32 @f_gold(i32* noundef %0, i32 noundef %1) local_unnamed_addr #0 {`
  - casts/conversions: `%3 = sext i32 %1 to i64`
  - calls/intrinsics: `%5 = call i32 (i32*, i32*, ...) bitcast (i32 (...)* @sort to i32 (i32*, i32*, ...)*)(i32* noundef %0, i32* noundef %4) #2`
  - UB-related: `define dso_local i32 @f_gold(i32* noundef %0, i32 noundef %1) local_unnamed_addr #0 {`
  - external declarations: `declare i32 @sort(...) local_unnamed_addr #1`

## O2

- Status: ok
- Features: integer arithmetic, bitwise/shift, comparisons, control flow, loop, memory/pointer, casts/conversions, calls/intrinsics, UB-related, external declarations
- Evidence:
  - integer arithmetic: `%10 = add nsw i64 %9, -1`
  - bitwise/shift: `%11 = and i64 %10, 1`
  - comparisons: `%6 = icmp sgt i32 %1, 1`
  - control flow: `br i1 %6, label %7, label %33`
  - loop: `llvm.loop metadata`
  - memory/pointer: `define dso_local i32 @f_gold(i32* noundef %0, i32 noundef %1) local_unnamed_addr #0 {`
  - casts/conversions: `%3 = sext i32 %1 to i64`
  - calls/intrinsics: `%5 = tail call i32 (i32*, i32*, ...) bitcast (i32 (...)* @sort to i32 (i32*, i32*, ...)*)(i32* noundef %0, i32* noundef %4) #2`
  - UB-related: `define dso_local i32 @f_gold(i32* noundef %0, i32 noundef %1) local_unnamed_addr #0 {`
  - external declarations: `declare i32 @sort(...) local_unnamed_addr #1`

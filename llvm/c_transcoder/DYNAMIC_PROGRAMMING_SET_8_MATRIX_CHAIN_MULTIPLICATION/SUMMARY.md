# c_transcoder/DYNAMIC_PROGRAMMING_SET_8_MATRIX_CHAIN_MULTIPLICATION

- Source: `DYNAMIC_PROGRAMMING_SET_8_MATRIX_CHAIN_MULTIPLICATION_processed.c`
- Source note: processed source

## O0

- Status: ok
- Features: integer arithmetic, comparisons, control flow, loop, recursion, memory/pointer, casts/conversions, calls/intrinsics, UB-related
- Evidence:
  - integer arithmetic: `%28 = add nsw i32 %27, 1`
  - comparisons: `%13 = icmp eq i32 %11, %12`
  - control flow: `br i1 %13, label %14, label %15`
  - loop: `llvm.loop metadata`
  - recursion: `f_gold calls itself`
  - memory/pointer: `define dso_local i32 @f_gold(i32* noundef %0, i32 noundef %1, i32 noundef %2) #0 {`
  - casts/conversions: `%35 = sext i32 %34 to i64`
  - calls/intrinsics: `%25 = call i32 @f_gold(i32* noundef %22, i32 noundef %23, i32 noundef %24)`
  - UB-related: `define dso_local i32 @f_gold(i32* noundef %0, i32 noundef %1, i32 noundef %2) #0 {`

## O1

- Status: ok
- Features: integer arithmetic, comparisons, control flow, loop, recursion, memory/pointer, casts/conversions, calls/intrinsics, UB-related
- Evidence:
  - integer arithmetic: `%8 = add nsw i32 %1, -1`
  - comparisons: `%4 = icmp eq i32 %1, %2`
  - control flow: `br i1 %4, label %34, label %5`
  - loop: `llvm.loop metadata`
  - recursion: `f_gold calls itself`
  - memory/pointer: `define dso_local i32 @f_gold(i32* noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {`
  - casts/conversions: `%9 = sext i32 %8 to i64`
  - calls/intrinsics: `%18 = call i32 @f_gold(i32* noundef %0, i32 noundef %1, i32 noundef %17)`
  - UB-related: `define dso_local i32 @f_gold(i32* noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {`

## O2

- Status: ok
- Features: integer arithmetic, comparisons, control flow, loop, recursion, memory/pointer, casts/conversions, calls/intrinsics, UB-related
- Evidence:
  - integer arithmetic: `%8 = add nsw i32 %1, -1`
  - comparisons: `%4 = icmp eq i32 %1, %2`
  - control flow: `br i1 %4, label %33, label %5`
  - loop: `llvm.loop metadata`
  - recursion: `f_gold calls itself`
  - memory/pointer: `define dso_local i32 @f_gold(i32* noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {`
  - casts/conversions: `%9 = sext i32 %8 to i64`
  - calls/intrinsics: `%18 = tail call i32 @f_gold(i32* noundef %0, i32 noundef %1, i32 noundef %17)`
  - UB-related: `define dso_local i32 @f_gold(i32* noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {`

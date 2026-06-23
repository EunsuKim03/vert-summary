# c_transcoder/SEARCH_INSERT_AND_DELETE_IN_A_SORTED_ARRAY

- Source: `SEARCH_INSERT_AND_DELETE_IN_A_SORTED_ARRAY_processed.c`
- Source note: processed source

## O0

- Status: ok
- Features: integer arithmetic, comparisons, control flow, recursion, memory/pointer, casts/conversions, calls/intrinsics, UB-related
- Evidence:
  - integer arithmetic: `%18 = add nsw i32 %16, %17`
  - comparisons: `%13 = icmp slt i32 %11, %12`
  - control flow: `br i1 %13, label %14, label %15`
  - recursion: `f_gold calls itself`
  - memory/pointer: `define dso_local i32 @f_gold(i32* noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) #0 {`
  - casts/conversions: `%23 = sext i32 %22 to i64`
  - calls/intrinsics: `%43 = call i32 @f_gold(i32* noundef %38, i32 noundef %40, i32 noundef %41, i32 noundef %42)`
  - UB-related: `define dso_local i32 @f_gold(i32* noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) #0 {`

## O1

- Status: ok
- Features: integer arithmetic, comparisons, control flow, recursion, memory/pointer, casts/conversions, calls/intrinsics, UB-related
- Evidence:
  - integer arithmetic: `%7 = add nsw i32 %2, %1`
  - comparisons: `%5 = icmp slt i32 %2, %1`
  - control flow: `br i1 %5, label %20, label %6`
  - recursion: `f_gold calls itself`
  - memory/pointer: `define dso_local i32 @f_gold(i32* noundef readonly %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #0 {`
  - casts/conversions: `%9 = sext i32 %8 to i64`
  - calls/intrinsics: `%19 = call i32 @f_gold(i32* noundef %0, i32 noundef %18, i32 noundef %17, i32 noundef %3)`
  - UB-related: `define dso_local i32 @f_gold(i32* noundef readonly %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #0 {`

## O2

- Status: ok
- Features: integer arithmetic, comparisons, control flow, loop, memory/pointer, casts/conversions, UB-related
- Evidence:
  - integer arithmetic: `%11 = add nsw i32 %10, %8`
  - comparisons: `%5 = icmp slt i32 %2, %1`
  - control flow: `br i1 %5, label %25, label %6`
  - loop: `br i1 %21, label %6, label %25`
  - memory/pointer: `define dso_local i32 @f_gold(i32* noundef readonly %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #0 {`
  - casts/conversions: `%13 = sext i32 %12 to i64`
  - UB-related: `define dso_local i32 @f_gold(i32* noundef readonly %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #0 {`

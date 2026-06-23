# c_transcoder/FIND_BITONIC_POINT_GIVEN_BITONIC_SEQUENCE

- Source: `FIND_BITONIC_POINT_GIVEN_BITONIC_SEQUENCE_processed.c`
- Source note: processed source

## O0

- Status: ok
- Features: integer arithmetic, comparisons, control flow, recursion, memory/pointer, casts/conversions, calls/intrinsics, UB-related
- Evidence:
  - integer arithmetic: `%15 = add nsw i32 %13, %14`
  - comparisons: `%11 = icmp sle i32 %9, %10`
  - control flow: `br i1 %11, label %12, label %69`
  - recursion: `f_gold calls itself`
  - memory/pointer: `define dso_local i32 @f_gold(i32* noundef %0, i32 noundef %1, i32 noundef %2) #0 {`
  - casts/conversions: `%20 = sext i32 %19 to i64`
  - calls/intrinsics: `%62 = call i32 @f_gold(i32* noundef %58, i32 noundef %60, i32 noundef %61)`
  - UB-related: `define dso_local i32 @f_gold(i32* noundef %0, i32 noundef %1, i32 noundef %2) #0 {`

## O1

- Status: ok
- Features: integer arithmetic, comparisons, control flow, recursion, memory/pointer, casts/conversions, calls/intrinsics, UB-related
- Evidence:
  - integer arithmetic: `%6 = add nsw i32 %2, %1`
  - comparisons: `%4 = icmp sgt i32 %1, %2`
  - control flow: `br i1 %4, label %32, label %5`
  - recursion: `f_gold calls itself`
  - memory/pointer: `define dso_local i32 @f_gold(i32* noundef readonly %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {`
  - casts/conversions: `%9 = sext i32 %8 to i64`
  - calls/intrinsics: `%29 = call i32 @f_gold(i32* noundef %0, i32 noundef %23, i32 noundef %2)`
  - UB-related: `define dso_local i32 @f_gold(i32* noundef readonly %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {`

## O2

- Status: ok
- Features: integer arithmetic, comparisons, control flow, loop, memory/pointer, casts/conversions, UB-related
- Evidence:
  - integer arithmetic: `%8 = add nsw i32 %6, %7`
  - comparisons: `%4 = icmp sgt i32 %1, %2`
  - control flow: `br i1 %4, label %31, label %5`
  - loop: `br i1 %30, label %31, label %5`
  - memory/pointer: `define dso_local i32 @f_gold(i32* noundef readonly %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {`
  - casts/conversions: `%11 = sext i32 %10 to i64`
  - UB-related: `define dso_local i32 @f_gold(i32* noundef readonly %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {`

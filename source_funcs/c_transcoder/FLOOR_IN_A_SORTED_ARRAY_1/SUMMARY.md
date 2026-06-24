# c_transcoder/FLOOR_IN_A_SORTED_ARRAY_1

- Source: `FLOOR_IN_A_SORTED_ARRAY_1_processed.c`
- Source note: processed source

## O0

- Status: ok
- Features:
  - integer arithmetic
  - comparisons
  - control flow
  - recursion
  - memory/pointer
  - casts/conversions
  - calls/intrinsics
  - UB-related
- Evidence:
  - integer arithmetic: `%28 = add nsw i32 %26, %27`
  - comparisons: `%13 = icmp sgt i32 %11, %12`
  - control flow: `br i1 %13, label %14, label %15`
  - recursion: `f_gold calls itself`
  - memory/pointer: `define dso_local i32 @f_gold(i32* noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) #0 {`
  - casts/conversions: `%19 = sext i32 %18 to i64`
  - calls/intrinsics: `%76 = call i32 @f_gold(i32* noundef %71, i32 noundef %72, i32 noundef %74, i32 noundef %75)`
  - UB-related: `define dso_local i32 @f_gold(i32* noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) #0 {`

## O1

- Status: ok
- Features:
  - integer arithmetic
  - comparisons
  - control flow
  - recursion
  - memory/pointer
  - casts/conversions
  - calls/intrinsics
  - UB-related
- Evidence:
  - integer arithmetic: `%12 = add nsw i32 %2, %1`
  - comparisons: `%5 = icmp sgt i32 %1, %2`
  - control flow: `br i1 %5, label %35, label %6`
  - recursion: `f_gold calls itself`
  - memory/pointer: `define dso_local i32 @f_gold(i32* noundef readonly %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #0 {`
  - casts/conversions: `%7 = sext i32 %2 to i64`
  - calls/intrinsics: `%34 = call i32 @f_gold(i32* noundef %0, i32 noundef %33, i32 noundef %32, i32 noundef %3)`
  - UB-related: `define dso_local i32 @f_gold(i32* noundef readonly %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #0 {`

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
  - integer arithmetic: `%16 = add nsw i32 %10, %8`
  - comparisons: `%5 = icmp sgt i32 %1, %2`
  - control flow: `br i1 %5, label %40, label %6`
  - loop: `br i1 %36, label %9, label %40`
  - memory/pointer: `define dso_local i32 @f_gold(i32* noundef readonly %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #0 {`
  - casts/conversions: `%11 = sext i32 %10 to i64`
  - UB-related: `define dso_local i32 @f_gold(i32* noundef readonly %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #0 {`

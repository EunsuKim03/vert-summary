# c_transcoder/SEARCH_AN_ELEMENT_IN_A_SORTED_AND_PIVOTED_ARRAY

- Source: `SEARCH_AN_ELEMENT_IN_A_SORTED_AND_PIVOTED_ARRAY_processed.c`
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
  - integer arithmetic: `%18 = add nsw i32 %16, %17`
  - comparisons: `%13 = icmp sgt i32 %11, %12`
  - control flow: `br i1 %13, label %14, label %15`
  - recursion: `f_gold calls itself`
  - memory/pointer: `define dso_local i32 @f_gold(i32* noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) #0 {`
  - casts/conversions: `%22 = sext i32 %21 to i64`
  - calls/intrinsics: `%63 = call i32 @f_gold(i32* noundef %58, i32 noundef %59, i32 noundef %61, i32 noundef %62)`
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
  - integer arithmetic: `%7 = add nsw i32 %2, %1`
  - comparisons: `%5 = icmp sgt i32 %1, %2`
  - control flow: `br i1 %5, label %41, label %6`
  - recursion: `f_gold calls itself`
  - memory/pointer: `define dso_local i32 @f_gold(i32* noundef readonly %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #0 {`
  - casts/conversions: `%9 = sext i32 %8 to i64`
  - calls/intrinsics: `%40 = call i32 @f_gold(i32* noundef %0, i32 noundef %39, i32 noundef %38, i32 noundef %3)`
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
  - integer arithmetic: `%13 = add nsw i32 %12, %8`
  - comparisons: `%5 = icmp sgt i32 %1, %2`
  - control flow: `br i1 %5, label %39, label %6`
  - loop: `br i1 %28, label %11, label %39`
  - memory/pointer: `define dso_local i32 @f_gold(i32* noundef readonly %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #0 {`
  - casts/conversions: `%9 = sext i32 %8 to i64`
  - UB-related: `define dso_local i32 @f_gold(i32* noundef readonly %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #0 {`

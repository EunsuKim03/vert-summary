# c_transcoder/SEARCH_ALMOST_SORTED_ARRAY

- Source: `SEARCH_ALMOST_SORTED_ARRAY_processed.c`
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
  - integer arithmetic: `%18 = sub nsw i32 %16, %17`
  - comparisons: `%13 = icmp sge i32 %11, %12`
  - control flow: `br i1 %13, label %14, label %84`
  - recursion: `f_gold calls itself`
  - memory/pointer: `define dso_local i32 @f_gold(i32* noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) #0 {`
  - casts/conversions: `%23 = sext i32 %22 to i64`
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
  - integer arithmetic: `%7 = sub nsw i32 %2, %1`
  - comparisons: `%5 = icmp slt i32 %2, %1`
  - control flow: `br i1 %5, label %37, label %6`
  - recursion: `f_gold calls itself`
  - memory/pointer: `define dso_local i32 @f_gold(i32* noundef readonly %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #0 {`
  - casts/conversions: `%10 = sext i32 %9 to i64`
  - calls/intrinsics: `%36 = call i32 @f_gold(i32* noundef %0, i32 noundef %35, i32 noundef %34, i32 noundef %3)`
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
  - integer arithmetic: `%11 = sub nsw i32 %10, %8`
  - comparisons: `%5 = icmp slt i32 %2, %1`
  - control flow: `br i1 %5, label %42, label %6`
  - loop: `br i1 %38, label %42, label %9`
  - memory/pointer: `define dso_local i32 @f_gold(i32* noundef readonly %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #0 {`
  - casts/conversions: `%14 = sext i32 %13 to i64`
  - UB-related: `define dso_local i32 @f_gold(i32* noundef readonly %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #0 {`

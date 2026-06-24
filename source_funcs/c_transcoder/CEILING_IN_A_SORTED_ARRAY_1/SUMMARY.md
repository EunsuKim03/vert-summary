# c_transcoder/CEILING_IN_A_SORTED_ARRAY_1

- Source: `CEILING_IN_A_SORTED_ARRAY_1_processed.c`
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
  - integer arithmetic: `%32 = add nsw i32 %30, %31`
  - comparisons: `%17 = icmp sle i32 %11, %16`
  - control flow: `br i1 %17, label %18, label %20`
  - recursion: `f_gold calls itself`
  - memory/pointer: `define dso_local i32 @f_gold(i32* noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) #0 {`
  - casts/conversions: `%14 = sext i32 %13 to i64`
  - calls/intrinsics: `%74 = call i32 @f_gold(i32* noundef %69, i32 noundef %71, i32 noundef %72, i32 noundef %73)`
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
  - integer arithmetic: `%15 = add nsw i32 %2, %1`
  - comparisons: `%8 = icmp slt i32 %7, %3`
  - control flow: `br i1 %8, label %9, label %43`
  - recursion: `f_gold calls itself`
  - memory/pointer: `define dso_local i32 @f_gold(i32* noundef readonly %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #0 {`
  - casts/conversions: `%5 = sext i32 %1 to i64`
  - calls/intrinsics: `%32 = call i32 @f_gold(i32* noundef %0, i32 noundef %24, i32 noundef %2, i32 noundef %3)`
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
  - integer arithmetic: `%18 = add nsw i32 %17, %11`
  - comparisons: `%8 = icmp slt i32 %7, %3`
  - control flow: `br i1 %8, label %9, label %49`
  - loop: `br i1 %35, label %9, label %49`
  - memory/pointer: `define dso_local i32 @f_gold(i32* noundef readonly %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #0 {`
  - casts/conversions: `%5 = sext i32 %1 to i64`
  - UB-related: `define dso_local i32 @f_gold(i32* noundef readonly %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #0 {`

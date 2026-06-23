# c_transcoder/FIND_MINIMUM_ELEMENT_IN_A_SORTED_AND_ROTATED_ARRAY

- Source: `FIND_MINIMUM_ELEMENT_IN_A_SORTED_AND_ROTATED_ARRAY_processed.c`
- Source note: processed source

## O0

- Status: ok
- Features: integer arithmetic, comparisons, control flow, recursion, memory/pointer, casts/conversions, calls/intrinsics, UB-related
- Evidence:
  - integer arithmetic: `%30 = sub nsw i32 %28, %29`
  - comparisons: `%11 = icmp slt i32 %9, %10`
  - control flow: `br i1 %11, label %12, label %16`
  - recursion: `f_gold calls itself`
  - memory/pointer: `define dso_local i32 @f_gold(i32* noundef %0, i32 noundef %1, i32 noundef %2) #0 {`
  - casts/conversions: `%23 = sext i32 %22 to i64`
  - calls/intrinsics: `%96 = call i32 @f_gold(i32* noundef %92, i32 noundef %93, i32 noundef %95)`
  - UB-related: `define dso_local i32 @f_gold(i32* noundef %0, i32 noundef %1, i32 noundef %2) #0 {`

## O1

- Status: ok
- Features: integer arithmetic, comparisons, control flow, recursion, memory/pointer, casts/conversions, calls/intrinsics, UB-related
- Evidence:
  - integer arithmetic: `%14 = sub nsw i32 %2, %1`
  - comparisons: `%4 = icmp slt i32 %2, %1`
  - control flow: `br i1 %4, label %5, label %7`
  - recursion: `f_gold calls itself`
  - memory/pointer: `define dso_local i32 @f_gold(i32* noundef readonly %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {`
  - casts/conversions: `%10 = sext i32 %1 to i64`
  - calls/intrinsics: `%48 = call i32 @f_gold(i32* noundef %0, i32 noundef %1, i32 noundef %47)`
  - UB-related: `define dso_local i32 @f_gold(i32* noundef readonly %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {`

## O2

- Status: ok
- Features: integer arithmetic, comparisons, control flow, loop, memory/pointer, casts/conversions, UB-related
- Evidence:
  - integer arithmetic: `%14 = sub nsw i32 %13, %7`
  - comparisons: `%4 = icmp slt i32 %2, %1`
  - control flow: `br i1 %4, label %53, label %5`
  - loop: `br i1 %50, label %9, label %12`
  - memory/pointer: `define dso_local i32 @f_gold(i32* noundef readonly %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {`
  - casts/conversions: `%10 = sext i32 %7 to i64`
  - UB-related: `define dso_local i32 @f_gold(i32* noundef readonly %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {`

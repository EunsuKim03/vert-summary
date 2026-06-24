# c_transcoder/FIND_REPEATING_ELEMENT_SORTED_ARRAY_SIZE_N

- Source: `FIND_REPEATING_ELEMENT_SORTED_ARRAY_SIZE_N_processed.c`
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
  - integer arithmetic: `%16 = add nsw i32 %14, %15`
  - comparisons: `%11 = icmp sgt i32 %9, %10`
  - control flow: `br i1 %11, label %12, label %13`
  - recursion: `f_gold calls itself`
  - memory/pointer: `define dso_local i32 @f_gold(i32* noundef %0, i32 noundef %1, i32 noundef %2) #0 {`
  - casts/conversions: `%20 = sext i32 %19 to i64`
  - calls/intrinsics: `%49 = call i32 @f_gold(i32* noundef %45, i32 noundef %46, i32 noundef %48)`
  - UB-related: `define dso_local i32 @f_gold(i32* noundef %0, i32 noundef %1, i32 noundef %2) #0 {`

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
  - integer arithmetic: `%6 = add nsw i32 %2, %1`
  - comparisons: `%4 = icmp sgt i32 %1, %2`
  - control flow: `br i1 %4, label %26, label %5`
  - recursion: `f_gold calls itself`
  - memory/pointer: `define dso_local i32 @f_gold(i32* noundef readonly %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {`
  - casts/conversions: `%8 = sext i32 %7 to i64`
  - calls/intrinsics: `%23 = call i32 @f_gold(i32* noundef %0, i32 noundef %1, i32 noundef %22)`
  - UB-related: `define dso_local i32 @f_gold(i32* noundef readonly %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {`

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
  - integer arithmetic: `%12 = add nsw i32 %11, %9`
  - comparisons: `%4 = icmp sgt i32 %1, %2`
  - control flow: `br i1 %4, label %29, label %7`
  - loop: `br i1 %18, label %5, label %19`
  - memory/pointer: `define dso_local i32 @f_gold(i32* noundef readonly %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {`
  - casts/conversions: `%14 = sext i32 %13 to i64`
  - UB-related: `define dso_local i32 @f_gold(i32* noundef readonly %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {`

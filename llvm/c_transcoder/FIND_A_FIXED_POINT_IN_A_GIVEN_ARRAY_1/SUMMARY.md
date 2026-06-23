# c_transcoder/FIND_A_FIXED_POINT_IN_A_GIVEN_ARRAY_1

- Source: `FIND_A_FIXED_POINT_IN_A_GIVEN_ARRAY_1_processed.c`
- Source note: processed source

## O0

- Status: ok
- Features: integer arithmetic, comparisons, control flow, recursion, memory/pointer, casts/conversions, calls/intrinsics, UB-related
- Evidence:
  - integer arithmetic: `%15 = add nsw i32 %13, %14`
  - comparisons: `%11 = icmp sge i32 %9, %10`
  - control flow: `br i1 %11, label %12, label %46`
  - recursion: `f_gold calls itself`
  - memory/pointer: `define dso_local i32 @f_gold(i32* noundef %0, i32 noundef %1, i32 noundef %2) #0 {`
  - casts/conversions: `%20 = sext i32 %19 to i64`
  - calls/intrinsics: `%39 = call i32 @f_gold(i32* noundef %35, i32 noundef %37, i32 noundef %38)`
  - UB-related: `define dso_local i32 @f_gold(i32* noundef %0, i32 noundef %1, i32 noundef %2) #0 {`

## O1

- Status: ok
- Features: integer arithmetic, comparisons, control flow, recursion, memory/pointer, casts/conversions, calls/intrinsics, UB-related
- Evidence:
  - integer arithmetic: `%6 = add nsw i32 %2, %1`
  - comparisons: `%4 = icmp slt i32 %2, %1`
  - control flow: `br i1 %4, label %19, label %5`
  - recursion: `f_gold calls itself`
  - memory/pointer: `define dso_local i32 @f_gold(i32* noundef readonly %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {`
  - casts/conversions: `%8 = sext i32 %7 to i64`
  - calls/intrinsics: `%18 = call i32 @f_gold(i32* noundef %0, i32 noundef %17, i32 noundef %16)`
  - UB-related: `define dso_local i32 @f_gold(i32* noundef readonly %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {`

## O2

- Status: ok
- Features: integer arithmetic, comparisons, control flow, loop, memory/pointer, casts/conversions, UB-related
- Evidence:
  - integer arithmetic: `%10 = add nsw i32 %9, %7`
  - comparisons: `%4 = icmp slt i32 %2, %1`
  - control flow: `br i1 %4, label %24, label %5`
  - loop: `br i1 %20, label %5, label %24`
  - memory/pointer: `define dso_local i32 @f_gold(i32* noundef readonly %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {`
  - casts/conversions: `%12 = sext i32 %11 to i64`
  - UB-related: `define dso_local i32 @f_gold(i32* noundef readonly %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {`

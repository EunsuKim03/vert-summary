# c_transcoder/FIND_ROTATION_COUNT_ROTATED_SORTED_ARRAY_1

- Source: `FIND_ROTATION_COUNT_ROTATED_SORTED_ARRAY_1_processed.c`
- Source note: processed source

## O0

- Status: ok
- Features: integer arithmetic, comparisons, control flow, recursion, memory/pointer, casts/conversions, calls/intrinsics, UB-related
- Evidence:
  - integer arithmetic: `%23 = sub nsw i32 %21, %22`
  - comparisons: `%11 = icmp slt i32 %9, %10`
  - control flow: `br i1 %11, label %12, label %13`
  - recursion: `f_gold calls itself`
  - memory/pointer: `define dso_local i32 @f_gold(i32* noundef %0, i32 noundef %1, i32 noundef %2) #0 {`
  - casts/conversions: `%33 = sext i32 %32 to i64`
  - calls/intrinsics: `%81 = call i32 @f_gold(i32* noundef %77, i32 noundef %78, i32 noundef %80)`
  - UB-related: `define dso_local i32 @f_gold(i32* noundef %0, i32 noundef %1, i32 noundef %2) #0 {`

## O1

- Status: ok
- Features: integer arithmetic, comparisons, control flow, recursion, memory/pointer, casts/conversions, calls/intrinsics, UB-related
- Evidence:
  - integer arithmetic: `%8 = sub nsw i32 %2, %1`
  - comparisons: `%4 = icmp slt i32 %2, %1`
  - control flow: `br i1 %4, label %45, label %5`
  - recursion: `f_gold calls itself`
  - memory/pointer: `define dso_local i32 @f_gold(i32* noundef readonly %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {`
  - casts/conversions: `%14 = sext i32 %13 to i64`
  - calls/intrinsics: `%44 = call i32 @f_gold(i32* noundef %0, i32 noundef %43, i32 noundef %42)`
  - UB-related: `define dso_local i32 @f_gold(i32* noundef readonly %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {`

## O2

- Status: ok
- Features: integer arithmetic, comparisons, control flow, loop, memory/pointer, casts/conversions, UB-related
- Evidence:
  - integer arithmetic: `%11 = sub nsw i32 %10, %7`
  - comparisons: `%4 = icmp slt i32 %2, %1`
  - control flow: `br i1 %4, label %50, label %5`
  - loop: `br i1 %47, label %50, label %9`
  - memory/pointer: `define dso_local i32 @f_gold(i32* noundef readonly %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {`
  - casts/conversions: `%17 = sext i32 %16 to i64`
  - UB-related: `define dso_local i32 @f_gold(i32* noundef readonly %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {`

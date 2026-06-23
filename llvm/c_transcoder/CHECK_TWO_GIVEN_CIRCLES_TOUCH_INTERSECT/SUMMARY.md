# c_transcoder/CHECK_TWO_GIVEN_CIRCLES_TOUCH_INTERSECT

- Source: `CHECK_TWO_GIVEN_CIRCLES_TOUCH_INTERSECT_processed.c`
- Source note: processed source

## O0

- Status: ok
- Features: integer arithmetic, comparisons, control flow, memory/pointer, UB-related
- Evidence:
  - integer arithmetic: `%18 = sub nsw i32 %16, %17`
  - comparisons: `%40 = icmp eq i32 %38, %39`
  - control flow: `br i1 %40, label %41, label %42`
  - memory/pointer: `%7 = alloca i32, align 4`
  - UB-related: `define dso_local i32 @f_gold(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5) #0 {`

## O1

- Status: ok
- Features: integer arithmetic, comparisons, control flow, casts/conversions, UB-related
- Evidence:
  - integer arithmetic: `%7 = sub nsw i32 %0, %2`
  - comparisons: `%14 = icmp eq i32 %11, %13`
  - control flow: `%17 = select i1 %14, i32 1, i32 %16`
  - casts/conversions: `%16 = sext i1 %15 to i32`
  - UB-related: `define dso_local i32 @f_gold(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5) local_unnamed_addr #0 {`

## O2

- Status: ok
- Features: integer arithmetic, comparisons, control flow, casts/conversions, UB-related
- Evidence:
  - integer arithmetic: `%7 = sub nsw i32 %0, %2`
  - comparisons: `%14 = icmp eq i32 %11, %13`
  - control flow: `%17 = select i1 %14, i32 1, i32 %16`
  - casts/conversions: `%16 = sext i1 %15 to i32`
  - UB-related: `define dso_local i32 @f_gold(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5) local_unnamed_addr #0 {`

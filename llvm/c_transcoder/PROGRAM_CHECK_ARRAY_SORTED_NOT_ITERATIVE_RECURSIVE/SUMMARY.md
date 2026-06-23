# c_transcoder/PROGRAM_CHECK_ARRAY_SORTED_NOT_ITERATIVE_RECURSIVE

- Source: `PROGRAM_CHECK_ARRAY_SORTED_NOT_ITERATIVE_RECURSIVE_processed.c`
- Source note: processed source

## O0

- Status: ok
- Features: integer arithmetic, comparisons, control flow, recursion, memory/pointer, casts/conversions, calls/intrinsics, UB-related
- Evidence:
  - integer arithmetic: `%15 = sub nsw i32 %14, 1`
  - comparisons: `%7 = icmp eq i32 %6, 1`
  - control flow: `br i1 %7, label %11, label %8`
  - recursion: `f_gold calls itself`
  - memory/pointer: `define dso_local i32 @f_gold(i32* noundef %0, i32 noundef %1) #0 {`
  - casts/conversions: `%16 = sext i32 %15 to i64`
  - calls/intrinsics: `%31 = call i32 @f_gold(i32* noundef %28, i32 noundef %30)`
  - UB-related: `define dso_local i32 @f_gold(i32* noundef %0, i32 noundef %1) #0 {`

## O1

- Status: ok
- Features: integer arithmetic, comparisons, control flow, recursion, memory/pointer, casts/conversions, calls/intrinsics, UB-related
- Evidence:
  - integer arithmetic: `%5 = add nsw i32 %1, -1`
  - comparisons: `%3 = icmp ult i32 %1, 2`
  - control flow: `br i1 %3, label %16, label %4`
  - recursion: `f_gold calls itself`
  - memory/pointer: `define dso_local i32 @f_gold(i32* nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #0 {`
  - casts/conversions: `%6 = sext i32 %5 to i64`
  - calls/intrinsics: `%15 = call i32 @f_gold(i32* noundef %0, i32 noundef %5)`
  - UB-related: `define dso_local i32 @f_gold(i32* nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #0 {`

## O2

- Status: ok
- Features: integer arithmetic, bitwise/shift, comparisons, control flow, loop, memory/pointer, casts/conversions, UB-related
- Evidence:
  - integer arithmetic: `%9 = add nsw i64 %5, -1`
  - bitwise/shift: `%6 = and i64 %5, 4294967294`
  - comparisons: `%7 = icmp eq i64 %6, 0`
  - control flow: `br label %4`
  - loop: `br i1 %15, label %16, label %4`
  - memory/pointer: `define dso_local i32 @f_gold(i32* nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #0 {`
  - casts/conversions: `%3 = sext i32 %1 to i64`
  - UB-related: `define dso_local i32 @f_gold(i32* nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #0 {`

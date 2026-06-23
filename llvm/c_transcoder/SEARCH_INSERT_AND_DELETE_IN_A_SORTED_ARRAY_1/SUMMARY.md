# c_transcoder/SEARCH_INSERT_AND_DELETE_IN_A_SORTED_ARRAY_1

- Source: `SEARCH_INSERT_AND_DELETE_IN_A_SORTED_ARRAY_1_processed.c`
- Source note: processed source

## O0

- Status: ok
- Features: integer arithmetic, comparisons, control flow, loop, memory/pointer, casts/conversions, UB-related
- Evidence:
  - integer arithmetic: `%18 = sub nsw i32 %17, 1`
  - comparisons: `%13 = icmp sge i32 %11, %12`
  - control flow: `br i1 %13, label %14, label %16`
  - loop: `llvm.loop metadata`
  - memory/pointer: `define dso_local i32 @f_gold(i32* noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) #0 {`
  - casts/conversions: `%25 = sext i32 %24 to i64`
  - UB-related: `define dso_local i32 @f_gold(i32* noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) #0 {`

## O1

- Status: ok
- Features: integer arithmetic, comparisons, control flow, loop, memory/pointer, casts/conversions, UB-related
- Evidence:
  - integer arithmetic: `%12 = add nsw i64 %11, -1`
  - comparisons: `%5 = icmp slt i32 %1, %3`
  - control flow: `br i1 %5, label %6, label %26`
  - loop: `llvm.loop metadata`
  - memory/pointer: `define dso_local i32 @f_gold(i32* nocapture noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #0 {`
  - casts/conversions: `%9 = sext i32 %1 to i64`
  - UB-related: `define dso_local i32 @f_gold(i32* nocapture noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #0 {`

## O2

- Status: ok
- Features: integer arithmetic, bitwise/shift, comparisons, control flow, loop, memory/pointer, casts/conversions, UB-related
- Evidence:
  - integer arithmetic: `%12 = add nsw i64 %11, -1`
  - bitwise/shift: `%13 = and i64 %12, 4294967295`
  - comparisons: `%5 = icmp slt i32 %1, %3`
  - control flow: `br i1 %5, label %6, label %27`
  - loop: `llvm.loop metadata`
  - memory/pointer: `define dso_local i32 @f_gold(i32* nocapture noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #0 {`
  - casts/conversions: `%9 = zext i32 %1 to i64`
  - UB-related: `define dso_local i32 @f_gold(i32* nocapture noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #0 {`

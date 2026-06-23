# c_transcoder/CHECK_REVERSING_SUB_ARRAY_MAKE_ARRAY_SORTED_1

- Source: `CHECK_REVERSING_SUB_ARRAY_MAKE_ARRAY_SORTED_1_processed.c`
- Source note: processed source

## O0

- Status: ok
- Features: integer arithmetic, comparisons, control flow, loop, memory/pointer, casts/conversions, UB-related
- Evidence:
  - integer arithmetic: `%20 = sub nsw i32 %19, 1`
  - comparisons: `%10 = icmp eq i32 %9, 1`
  - control flow: `br i1 %10, label %11, label %12`
  - loop: `llvm.loop metadata`
  - memory/pointer: `define dso_local i32 @f_gold(i32* noundef %0, i32 noundef %1) #0 {`
  - casts/conversions: `%21 = sext i32 %20 to i64`
  - UB-related: `define dso_local i32 @f_gold(i32* noundef %0, i32 noundef %1) #0 {`

## O1

- Status: ok
- Features: integer arithmetic, bitwise/shift, comparisons, control flow, loop, memory/pointer, casts/conversions, UB-related
- Evidence:
  - integer arithmetic: `%10 = add nsw i64 %9, -1`
  - bitwise/shift: `%47 = and i64 %46, 4294967295`
  - comparisons: `%3 = icmp eq i32 %1, 1`
  - control flow: `br i1 %3, label %84, label %4`
  - loop: `llvm.loop metadata`
  - memory/pointer: `define dso_local i32 @f_gold(i32* nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #0 {`
  - casts/conversions: `%7 = zext i32 %1 to i64`
  - UB-related: `define dso_local i32 @f_gold(i32* nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #0 {`

## O2

- Status: ok
- Features: integer arithmetic, bitwise/shift, comparisons, control flow, loop, memory/pointer, casts/conversions, UB-related
- Evidence:
  - integer arithmetic: `%16 = add nuw nsw i64 %11, 1`
  - bitwise/shift: `%46 = and i64 %45, 4294967295`
  - comparisons: `%3 = icmp eq i32 %1, 1`
  - control flow: `br i1 %3, label %79, label %4`
  - loop: `llvm.loop metadata`
  - memory/pointer: `define dso_local i32 @f_gold(i32* nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #0 {`
  - casts/conversions: `%7 = zext i32 %1 to i64`
  - UB-related: `define dso_local i32 @f_gold(i32* nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #0 {`

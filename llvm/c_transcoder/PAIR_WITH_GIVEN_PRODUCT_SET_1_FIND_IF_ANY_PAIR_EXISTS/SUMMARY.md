# c_transcoder/PAIR_WITH_GIVEN_PRODUCT_SET_1_FIND_IF_ANY_PAIR_EXISTS

- Source: `PAIR_WITH_GIVEN_PRODUCT_SET_1_FIND_IF_ANY_PAIR_EXISTS_processed.c`
- Source note: processed source

## O0

- Status: ok
- Features: integer arithmetic, comparisons, control flow, loop, memory/pointer, casts/conversions, UB-related
- Evidence:
  - integer arithmetic: `%13 = sub nsw i32 %12, 1`
  - comparisons: `%14 = icmp slt i32 %11, %13`
  - control flow: `br label %10`
  - loop: `llvm.loop metadata`
  - memory/pointer: `define dso_local i32 @f_gold(i32* noundef %0, i32 noundef %1, i32 noundef %2) #0 {`
  - casts/conversions: `%25 = sext i32 %24 to i64`
  - UB-related: `define dso_local i32 @f_gold(i32* noundef %0, i32 noundef %1, i32 noundef %2) #0 {`

## O1

- Status: ok
- Features: integer arithmetic, comparisons, control flow, loop, memory/pointer, casts/conversions, UB-related
- Evidence:
  - integer arithmetic: `%4 = add nsw i32 %1, -1`
  - comparisons: `%5 = icmp sgt i32 %1, 1`
  - control flow: `br i1 %5, label %6, label %42`
  - loop: `llvm.loop metadata`
  - memory/pointer: `define dso_local i32 @f_gold(i32* nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {`
  - casts/conversions: `%7 = sext i32 %1 to i64`
  - UB-related: `define dso_local i32 @f_gold(i32* nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {`

## O2

- Status: ok
- Features: integer arithmetic, comparisons, control flow, loop, memory/pointer, casts/conversions, UB-related
- Evidence:
  - integer arithmetic: `%4 = add nsw i32 %1, -1`
  - comparisons: `%5 = icmp sgt i32 %1, 1`
  - control flow: `br i1 %5, label %6, label %29`
  - loop: `llvm.loop metadata`
  - memory/pointer: `define dso_local i32 @f_gold(i32* nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {`
  - casts/conversions: `%11 = sext i32 %10 to i64`
  - UB-related: `define dso_local i32 @f_gold(i32* nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {`

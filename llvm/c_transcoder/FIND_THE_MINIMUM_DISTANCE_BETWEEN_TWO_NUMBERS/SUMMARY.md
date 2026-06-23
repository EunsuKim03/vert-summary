# c_transcoder/FIND_THE_MINIMUM_DISTANCE_BETWEEN_TWO_NUMBERS

- Source: `FIND_THE_MINIMUM_DISTANCE_BETWEEN_TWO_NUMBERS_processed.c`
- Source note: processed source

## O0

- Status: ok
- Features: integer arithmetic, comparisons, control flow, loop, memory/pointer, casts/conversions, calls/intrinsics, UB-related, external declarations
- Evidence:
  - integer arithmetic: `%18 = add nsw i32 %17, 1`
  - comparisons: `%15 = icmp slt i32 %13, %14`
  - control flow: `br label %12`
  - loop: `llvm.loop metadata`
  - memory/pointer: `define dso_local i32 @f_gold(i32* noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) #0 {`
  - casts/conversions: `%27 = sext i32 %26 to i64`
  - calls/intrinsics: `%60 = call i32 @abs(i32 noundef %59) #2`
  - UB-related: `define dso_local i32 @f_gold(i32* noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) #0 {`
  - external declarations: `declare i32 @abs(i32 noundef) #1`

## O1

- Status: ok
- Features: integer arithmetic, comparisons, control flow, loop, memory/pointer, casts/conversions, calls/intrinsics, UB-related, external declarations
- Evidence:
  - integer arithmetic: `%12 = add nuw nsw i64 %16, 1`
  - comparisons: `%5 = icmp sgt i32 %1, 0`
  - control flow: `br i1 %5, label %6, label %48`
  - loop: `llvm.loop metadata`
  - memory/pointer: `define dso_local i32 @f_gold(i32* nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #0 {`
  - casts/conversions: `%7 = sext i32 %1 to i64`
  - calls/intrinsics: `%41 = call i32 @llvm.abs.i32(i32 %40, i1 true)`
  - UB-related: `define dso_local i32 @f_gold(i32* nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #0 {`
  - external declarations: `declare i32 @llvm.abs.i32(i32, i1 immarg) #1`

## O2

- Status: ok
- Features: integer arithmetic, comparisons, control flow, loop, memory/pointer, casts/conversions, calls/intrinsics, UB-related, external declarations
- Evidence:
  - integer arithmetic: `%11 = add nuw nsw i64 %15, 1`
  - comparisons: `%5 = icmp sgt i32 %1, 0`
  - control flow: `br i1 %5, label %6, label %47`
  - loop: `llvm.loop metadata`
  - memory/pointer: `define dso_local i32 @f_gold(i32* nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #0 {`
  - casts/conversions: `%7 = zext i32 %1 to i64`
  - calls/intrinsics: `%40 = tail call i32 @llvm.abs.i32(i32 %39, i1 true)`
  - UB-related: `define dso_local i32 @f_gold(i32* nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #0 {`
  - external declarations: `declare i32 @llvm.abs.i32(i32, i1 immarg) #1`

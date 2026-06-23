# c_transcoder/MAXIMUM_HEIGHT_OF_TRIANGULAR_ARRANGEMENT_OF_ARRAY_VALUES

- Source: `MAXIMUM_HEIGHT_OF_TRIANGULAR_ARRANGEMENT_OF_ARRAY_VALUES_processed.c`
- Source note: processed source

## O0

- Status: ok
- Features: integer arithmetic, comparisons, control flow, loop, memory/pointer, casts/conversions, UB-related
- Evidence:
  - integer arithmetic: `%15 = add nsw i32 %14, 1`
  - comparisons: `%11 = icmp sle i32 %9, %10`
  - control flow: `br label %8`
  - loop: `llvm.loop metadata`
  - memory/pointer: `define dso_local i32 @f_gold(i32* noundef %0, i32 noundef %1) #0 {`
  - casts/conversions: `%18 = sext i32 %17 to i64`
  - UB-related: `define dso_local i32 @f_gold(i32* noundef %0, i32 noundef %1) #0 {`

## O1

- Status: ok
- Features: integer arithmetic, bitwise/shift, comparisons, control flow, loop, memory/pointer, casts/conversions, calls/intrinsics, UB-related, external declarations
- Evidence:
  - integer arithmetic: `%5 = add nuw i32 %4, 1`
  - bitwise/shift: `%13 = lshr i32 %12, 1`
  - comparisons: `%9 = icmp eq i32 %7, %5`
  - control flow: `br label %6`
  - loop: `llvm.loop metadata`
  - memory/pointer: `define dso_local i32 @f_gold(i32* nocapture noundef readnone %0, i32 noundef %1) local_unnamed_addr #0 {`
  - casts/conversions: `%3 = sext i32 %1 to i64`
  - calls/intrinsics: `%4 = call i32 @llvm.smax.i32(i32 %1, i32 0)`
  - UB-related: `define dso_local i32 @f_gold(i32* nocapture noundef readnone %0, i32 noundef %1) local_unnamed_addr #0 {`
  - external declarations: `declare i32 @llvm.smax.i32(i32, i32) #1`

## O2

- Status: ok
- Features: integer arithmetic, bitwise/shift, comparisons, control flow, loop, memory/pointer, UB-related
- Evidence:
  - integer arithmetic: `%9 = add nuw i32 %5, 1`
  - bitwise/shift: `%11 = lshr i32 %10, 1`
  - comparisons: `%3 = icmp slt i32 %1, 2`
  - control flow: `br i1 %3, label %13, label %4, !llvm.loop !5`
  - loop: `llvm.loop metadata`
  - memory/pointer: `define dso_local i32 @f_gold(i32* nocapture noundef readnone %0, i32 noundef %1) local_unnamed_addr #0 {`
  - UB-related: `define dso_local i32 @f_gold(i32* nocapture noundef readnone %0, i32 noundef %1) local_unnamed_addr #0 {`

# c_transcoder/TEMPLE_OFFERINGS

- Source: `TEMPLE_OFFERINGS_processed.c`
- Source note: processed source

## O0

- Status: ok
- Features: integer arithmetic, comparisons, control flow, loop, memory/pointer, casts/conversions, calls/intrinsics, UB-related, external declarations
- Evidence:
  - integer arithmetic: `%17 = sub nsw i32 %16, 1`
  - comparisons: `%14 = icmp slt i32 %12, %13`
  - control flow: `br label %11`
  - loop: `llvm.loop metadata`
  - memory/pointer: `define dso_local i32 @f_gold(i32 noundef %0, i32* noundef %1) #0 {`
  - casts/conversions: `%24 = sext i32 %23 to i64`
  - calls/intrinsics: `%73 = call i32 (i32, i32, ...) bitcast (i32 (...)* @max to i32 (i32, i32, ...)*)(i32 noundef %71, i32 noundef %72)`
  - UB-related: `define dso_local i32 @f_gold(i32 noundef %0, i32* noundef %1) #0 {`
  - external declarations: `declare i32 @max(...) #1`

## O1

- Status: ok
- Features: integer arithmetic, comparisons, control flow, loop, memory/pointer, casts/conversions, calls/intrinsics, UB-related, external declarations
- Evidence:
  - integer arithmetic: `%11 = add i32 %7, -1`
  - comparisons: `%3 = icmp sgt i32 %0, 0`
  - control flow: `br i1 %3, label %4, label %14`
  - loop: `llvm.loop metadata`
  - memory/pointer: `define dso_local i32 @f_gold(i32 noundef %0, i32* nocapture noundef readonly %1) local_unnamed_addr #0 {`
  - casts/conversions: `%5 = zext i32 %0 to i64`
  - calls/intrinsics: `%48 = call i32 (i32, i32, ...) bitcast (i32 (...)* @max to i32 (i32, i32, ...)*)(i32 noundef %47, i32 noundef %29) #2`
  - UB-related: `define dso_local i32 @f_gold(i32 noundef %0, i32* nocapture noundef readonly %1) local_unnamed_addr #0 {`
  - external declarations: `declare i32 @max(...) local_unnamed_addr #1`

## O2

- Status: ok
- Features: integer arithmetic, comparisons, control flow, loop, memory/pointer, casts/conversions, calls/intrinsics, UB-related, external declarations
- Evidence:
  - integer arithmetic: `%9 = add i32 %5, -1`
  - comparisons: `%3 = icmp sgt i32 %0, 0`
  - control flow: `br i1 %3, label %4, label %15`
  - loop: `llvm.loop metadata`
  - memory/pointer: `define dso_local i32 @f_gold(i32 noundef %0, i32* nocapture noundef readonly %1) local_unnamed_addr #0 {`
  - casts/conversions: `%12 = zext i32 %7 to i64`
  - calls/intrinsics: `%48 = tail call i32 (i32, i32, ...) bitcast (i32 (...)* @max to i32 (i32, i32, ...)*)(i32 noundef %47, i32 noundef %30) #2`
  - UB-related: `define dso_local i32 @f_gold(i32 noundef %0, i32* nocapture noundef readonly %1) local_unnamed_addr #0 {`
  - external declarations: `declare i32 @max(...) local_unnamed_addr #1`

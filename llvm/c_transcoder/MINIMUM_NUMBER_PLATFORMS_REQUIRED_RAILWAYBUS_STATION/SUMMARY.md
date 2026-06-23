# c_transcoder/MINIMUM_NUMBER_PLATFORMS_REQUIRED_RAILWAYBUS_STATION

- Source: `MINIMUM_NUMBER_PLATFORMS_REQUIRED_RAILWAYBUS_STATION_processed.c`
- Source note: processed source

## O0

- Status: ok
- Features: integer arithmetic, comparisons, control flow, loop, memory/pointer, casts/conversions, calls/intrinsics, UB-related, external declarations
- Evidence:
  - integer arithmetic: `%47 = add nsw i32 %46, 1`
  - comparisons: `%26 = icmp slt i32 %24, %25`
  - control flow: `br label %23`
  - loop: `llvm.loop metadata`
  - memory/pointer: `define dso_local i32 @f_gold(i32* noundef %0, i32* noundef %1, i32 noundef %2) #0 {`
  - casts/conversions: `%14 = sext i32 %13 to i64`
  - calls/intrinsics: `%16 = call i32 (i32*, i32*, ...) bitcast (i32 (...)* @sort to i32 (i32*, i32*, ...)*)(i32* noundef %11, i32* noundef %15)`
  - UB-related: `define dso_local i32 @f_gold(i32* noundef %0, i32* noundef %1, i32 noundef %2) #0 {`
  - external declarations: `declare i32 @sort(...) #1`

## O1

- Status: ok
- Features: integer arithmetic, comparisons, control flow, loop, memory/pointer, casts/conversions, calls/intrinsics, UB-related, external declarations
- Evidence:
  - integer arithmetic: `%23 = add nsw i32 %14, 1`
  - comparisons: `%9 = icmp sgt i32 %2, 1`
  - control flow: `br i1 %9, label %10, label %38`
  - loop: `llvm.loop metadata`
  - memory/pointer: `define dso_local i32 @f_gold(i32* noundef %0, i32* noundef %1, i32 noundef %2) local_unnamed_addr #0 {`
  - casts/conversions: `%4 = sext i32 %2 to i64`
  - calls/intrinsics: `%6 = call i32 (i32*, i32*, ...) bitcast (i32 (...)* @sort to i32 (i32*, i32*, ...)*)(i32* noundef %0, i32* noundef %5) #2`
  - UB-related: `define dso_local i32 @f_gold(i32* noundef %0, i32* noundef %1, i32 noundef %2) local_unnamed_addr #0 {`
  - external declarations: `declare i32 @sort(...) local_unnamed_addr #1`

## O2

- Status: ok
- Features: integer arithmetic, comparisons, control flow, loop, memory/pointer, casts/conversions, calls/intrinsics, UB-related, external declarations
- Evidence:
  - integer arithmetic: `%23 = add nsw i32 %14, 1`
  - comparisons: `%9 = icmp sgt i32 %2, 1`
  - control flow: `br i1 %9, label %10, label %38`
  - loop: `llvm.loop metadata`
  - memory/pointer: `define dso_local i32 @f_gold(i32* noundef %0, i32* noundef %1, i32 noundef %2) local_unnamed_addr #0 {`
  - casts/conversions: `%4 = sext i32 %2 to i64`
  - calls/intrinsics: `%6 = tail call i32 (i32*, i32*, ...) bitcast (i32 (...)* @sort to i32 (i32*, i32*, ...)*)(i32* noundef %0, i32* noundef %5) #2`
  - UB-related: `define dso_local i32 @f_gold(i32* noundef %0, i32* noundef %1, i32 noundef %2) local_unnamed_addr #0 {`
  - external declarations: `declare i32 @sort(...) local_unnamed_addr #1`

# c_crown/0002_brotli_parseint

- Source: `brotli_reprocessed.c`
- Source note: processed source; reprocessed source: BROTLI_BOOL from brotli.c, BROTLI_FALSE from brotli.c, BROTLI_TRUE from brotli.c

## O0

- Status: ok
- Features:
  - integer arithmetic
  - comparisons
  - control flow
  - loop
  - memory/pointer
  - casts/conversions
  - UB-related
- Evidence:
  - integer arithmetic: `%45 = mul nsw i32 10, %44`
  - comparisons: `%15 = icmp slt i32 %14, 5`
  - control flow: `br label %13`
  - loop: `llvm.loop metadata`
  - memory/pointer: `define dso_local i32 @ParseInt(i8* noundef %0, i32 noundef %1, i32 noundef %2, i32* noundef %3) #0 {`
  - casts/conversions: `%19 = sext i32 %18 to i64`
  - UB-related: `define dso_local i32 @ParseInt(i8* noundef %0, i32 noundef %1, i32 noundef %2, i32* noundef %3) #0 {`

## O1

- Status: ok
- Features:
  - integer arithmetic
  - bitwise/shift
  - comparisons
  - control flow
  - loop
  - memory/pointer
  - casts/conversions
  - UB-related
- Evidence:
  - integer arithmetic: `%13 = add i8 %9, -58`
  - bitwise/shift: `%40 = and i1 %38, %39`
  - comparisons: `%11 = icmp eq i8 %9, 0`
  - control flow: `br label %5`
  - loop: `llvm.loop metadata`
  - memory/pointer: `define dso_local i32 @ParseInt(i8* nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2, i32* nocapture noundef readnone %3) local_unnamed_addr #0 {`
  - casts/conversions: `%10 = sext i8 %9 to i32`
  - UB-related: `define dso_local i32 @ParseInt(i8* nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2, i32* nocapture noundef readnone %3) local_unnamed_addr #0 {`

## O2

- Status: ok
- Features:
  - integer arithmetic
  - bitwise/shift
  - comparisons
  - control flow
  - memory/pointer
  - casts/conversions
  - UB-related
- Evidence:
  - integer arithmetic: `%6 = add i8 %5, -58`
  - bitwise/shift: `%62 = and i64 %60, 4294967295`
  - comparisons: `%7 = icmp ult i8 %6, -10`
  - control flow: `br i1 %7, label %71, label %8`
  - memory/pointer: `define dso_local i32 @ParseInt(i8* nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2, i32* nocapture noundef readnone %3) local_unnamed_addr #0 {`
  - casts/conversions: `%9 = sext i8 %5 to i32`
  - UB-related: `define dso_local i32 @ParseInt(i8* nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2, i32* nocapture noundef readnone %3) local_unnamed_addr #0 {`

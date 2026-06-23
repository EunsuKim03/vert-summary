# c_transcoder/RECURSIVELY_BREAK_NUMBER_3_PARTS_GET_MAXIMUM_SUM

- Source: `RECURSIVELY_BREAK_NUMBER_3_PARTS_GET_MAXIMUM_SUM_processed.c`
- Source note: processed source

## O0

- Status: ok
- Features: integer arithmetic, comparisons, control flow, recursion, memory/pointer, casts/conversions, calls/intrinsics, UB-related, external declarations
- Evidence:
  - integer arithmetic: `%13 = sdiv i32 %12, 2`
  - comparisons: `%5 = icmp eq i32 %4, 0`
  - control flow: `br i1 %5, label %9, label %6`
  - recursion: `f_gold calls itself`
  - memory/pointer: `%2 = alloca i32, align 4`
  - casts/conversions: `%24 = call i32 (i32, i32, ...) bitcast (i32 (...)* @max to i32 (i32, i32, ...)*)(i32 noundef %22, i32 noundef %23)`
  - calls/intrinsics: `%14 = call i32 @f_gold(i32 noundef %13)`
  - UB-related: `define dso_local i32 @f_gold(i32 noundef %0) #0 {`
  - external declarations: `declare i32 @max(...) #1`

## O1

- Status: ok
- Features: integer arithmetic, comparisons, control flow, recursion, casts/conversions, calls/intrinsics, UB-related, external declarations
- Evidence:
  - integer arithmetic: `%4 = sdiv i32 %0, 2`
  - comparisons: `%2 = icmp ult i32 %0, 2`
  - control flow: `br i1 %2, label %13, label %3`
  - recursion: `f_gold calls itself`
  - casts/conversions: `%12 = call i32 (i32, i32, ...) bitcast (i32 (...)* @max to i32 (i32, i32, ...)*)(i32 noundef %11, i32 noundef %0) #2`
  - calls/intrinsics: `%5 = call i32 @f_gold(i32 noundef %4)`
  - UB-related: `define dso_local i32 @f_gold(i32 noundef %0) local_unnamed_addr #0 {`
  - external declarations: `declare i32 @max(...) local_unnamed_addr #1`

## O2

- Status: ok
- Features: integer arithmetic, comparisons, control flow, loop, recursion, casts/conversions, calls/intrinsics, UB-related, external declarations
- Evidence:
  - integer arithmetic: `%6 = sdiv i32 %0, 2`
  - comparisons: `%2 = icmp ult i32 %0, 2`
  - control flow: `br i1 %2, label %3, label %5`
  - loop: `br label %3`
  - recursion: `f_gold calls itself`
  - casts/conversions: `%14 = tail call i32 (i32, i32, ...) bitcast (i32 (...)* @max to i32 (i32, i32, ...)*)(i32 noundef %13, i32 noundef %0) #2`
  - calls/intrinsics: `%7 = tail call i32 @f_gold(i32 noundef %6)`
  - UB-related: `define dso_local i32 @f_gold(i32 noundef %0) local_unnamed_addr #0 {`
  - external declarations: `declare i32 @max(...) local_unnamed_addr #1`

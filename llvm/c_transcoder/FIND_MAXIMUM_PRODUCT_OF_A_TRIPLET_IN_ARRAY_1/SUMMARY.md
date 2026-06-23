# c_transcoder/FIND_MAXIMUM_PRODUCT_OF_A_TRIPLET_IN_ARRAY_1

- Source: `FIND_MAXIMUM_PRODUCT_OF_A_TRIPLET_IN_ARRAY_1_processed.c`
- Source note: processed source

## O0

- Status: ok
- Features: integer arithmetic, comparisons, control flow, memory/pointer, casts/conversions, calls/intrinsics, UB-related, external declarations
- Evidence:
  - integer arithmetic: `%22 = mul nsw i32 %18, %21`
  - comparisons: `%7 = icmp slt i32 %6, 3`
  - control flow: `br i1 %7, label %8, label %9`
  - memory/pointer: `define dso_local i32 @f_gold(i32* noundef %0, i32 noundef %1) #0 {`
  - casts/conversions: `%13 = sext i32 %12 to i64`
  - calls/intrinsics: `%15 = call i32 (i32*, i32*, ...) bitcast (i32 (...)* @sort to i32 (i32*, i32*, ...)*)(i32* noundef %10, i32* noundef %14)`
  - UB-related: `define dso_local i32 @f_gold(i32* noundef %0, i32 noundef %1) #0 {`
  - external declarations: `declare i32 @sort(...) #1`

## O1

- Status: ok
- Features: integer arithmetic, comparisons, control flow, memory/pointer, casts/conversions, calls/intrinsics, UB-related, external declarations
- Evidence:
  - integer arithmetic: `%11 = mul nsw i32 %10, %8`
  - comparisons: `%3 = icmp slt i32 %1, 3`
  - control flow: `br i1 %3, label %28, label %4`
  - memory/pointer: `define dso_local i32 @f_gold(i32* noundef %0, i32 noundef %1) local_unnamed_addr #0 {`
  - casts/conversions: `%5 = sext i32 %1 to i64`
  - calls/intrinsics: `%7 = call i32 (i32*, i32*, ...) bitcast (i32 (...)* @sort to i32 (i32*, i32*, ...)*)(i32* noundef %0, i32* noundef nonnull %6) #2`
  - UB-related: `define dso_local i32 @f_gold(i32* noundef %0, i32 noundef %1) local_unnamed_addr #0 {`
  - external declarations: `declare i32 @sort(...) local_unnamed_addr #1`

## O2

- Status: ok
- Features: integer arithmetic, comparisons, control flow, memory/pointer, casts/conversions, calls/intrinsics, UB-related, external declarations
- Evidence:
  - integer arithmetic: `%11 = mul nsw i32 %10, %8`
  - comparisons: `%3 = icmp slt i32 %1, 3`
  - control flow: `br i1 %3, label %28, label %4`
  - memory/pointer: `define dso_local i32 @f_gold(i32* noundef %0, i32 noundef %1) local_unnamed_addr #0 {`
  - casts/conversions: `%5 = zext i32 %1 to i64`
  - calls/intrinsics: `%7 = tail call i32 (i32*, i32*, ...) bitcast (i32 (...)* @sort to i32 (i32*, i32*, ...)*)(i32* noundef %0, i32* noundef nonnull %6) #2`
  - UB-related: `define dso_local i32 @f_gold(i32* noundef %0, i32 noundef %1) local_unnamed_addr #0 {`
  - external declarations: `declare i32 @sort(...) local_unnamed_addr #1`

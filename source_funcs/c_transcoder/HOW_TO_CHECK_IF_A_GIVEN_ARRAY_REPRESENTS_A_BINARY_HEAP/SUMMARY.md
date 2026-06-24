# c_transcoder/HOW_TO_CHECK_IF_A_GIVEN_ARRAY_REPRESENTS_A_BINARY_HEAP

- Source: `HOW_TO_CHECK_IF_A_GIVEN_ARRAY_REPRESENTS_A_BINARY_HEAP_processed.c`
- Source note: processed source

## O0

- Status: ok
- Features:
  - integer arithmetic
  - comparisons
  - control flow
  - recursion
  - memory/pointer
  - casts/conversions
  - calls/intrinsics
  - UB-related
- Evidence:
  - integer arithmetic: `%10 = sub nsw i32 %9, 2`
  - comparisons: `%12 = icmp sgt i32 %8, %11`
  - control flow: `br i1 %12, label %13, label %14`
  - recursion: `f_gold calls itself`
  - memory/pointer: `define dso_local i32 @f_gold(i32* noundef %0, i32 noundef %1, i32 noundef %2) #0 {`
  - casts/conversions: `%17 = sext i32 %16 to i64`
  - calls/intrinsics: `%48 = call i32 @f_gold(i32* noundef %43, i32 noundef %46, i32 noundef %47)`
  - UB-related: `define dso_local i32 @f_gold(i32* noundef %0, i32 noundef %1, i32 noundef %2) #0 {`

## O1

- Status: ok
- Features:
  - integer arithmetic
  - bitwise/shift
  - comparisons
  - control flow
  - recursion
  - memory/pointer
  - casts/conversions
  - calls/intrinsics
  - UB-related
- Evidence:
  - integer arithmetic: `%4 = add nsw i32 %2, -2`
  - bitwise/shift: `%11 = shl nsw i32 %1, 1`
  - comparisons: `%6 = icmp slt i32 %5, %1`
  - control flow: `br i1 %6, label %30, label %7`
  - recursion: `f_gold calls itself`
  - memory/pointer: `define dso_local i32 @f_gold(i32* noundef readonly %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {`
  - casts/conversions: `%8 = sext i32 %1 to i64`
  - calls/intrinsics: `%24 = call i32 @f_gold(i32* noundef %0, i32 noundef %12, i32 noundef %2)`
  - UB-related: `define dso_local i32 @f_gold(i32* noundef readonly %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {`

## O2

- Status: ok
- Features:
  - integer arithmetic
  - bitwise/shift
  - comparisons
  - control flow
  - recursion
  - memory/pointer
  - casts/conversions
  - calls/intrinsics
  - UB-related
- Evidence:
  - integer arithmetic: `%4 = add nsw i32 %2, -2`
  - bitwise/shift: `%11 = shl nsw i32 %1, 1`
  - comparisons: `%6 = icmp slt i32 %5, %1`
  - control flow: `br i1 %6, label %30, label %7`
  - recursion: `f_gold calls itself`
  - memory/pointer: `define dso_local i32 @f_gold(i32* noundef readonly %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {`
  - casts/conversions: `%8 = sext i32 %1 to i64`
  - calls/intrinsics: `%24 = tail call i32 @f_gold(i32* noundef nonnull %0, i32 noundef %12, i32 noundef %2)`
  - UB-related: `define dso_local i32 @f_gold(i32* noundef readonly %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {`

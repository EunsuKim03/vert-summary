# c_transcoder/FIND_POSITION_GIVEN_NUMBER_AMONG_NUMBERS_MADE_4_7

- Source: `FIND_POSITION_GIVEN_NUMBER_AMONG_NUMBERS_MADE_4_7_processed.c`
- Source note: processed source

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
  - integer arithmetic: `%22 = mul nsw i32 %21, 2`
  - comparisons: `%12 = icmp ne i32 %11, 0`
  - control flow: `br label %5`
  - loop: `llvm.loop metadata`
  - memory/pointer: `define dso_local i32 @f_gold(i8* noundef %0) #0 {`
  - casts/conversions: `%8 = sext i32 %7 to i64`
  - UB-related: `define dso_local i32 @f_gold(i8* noundef %0) #0 {`

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
  - integer arithmetic: `%14 = add nsw i32 %13, 2`
  - bitwise/shift: `%10 = shl nsw i32 %7, 1`
  - comparisons: `%3 = icmp eq i8 %2, 0`
  - control flow: `br i1 %3, label %21, label %4`
  - loop: `llvm.loop metadata`
  - memory/pointer: `define dso_local i32 @f_gold(i8* nocapture noundef readonly %0) local_unnamed_addr #0 {`
  - casts/conversions: `%8 = sext i8 %6 to i32`
  - UB-related: `define dso_local i32 @f_gold(i8* nocapture noundef readonly %0) local_unnamed_addr #0 {`

## O2

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
  - integer arithmetic: `%14 = add nsw i32 %13, 2`
  - bitwise/shift: `%10 = shl nsw i32 %7, 1`
  - comparisons: `%3 = icmp eq i8 %2, 0`
  - control flow: `br i1 %3, label %21, label %4`
  - loop: `llvm.loop metadata`
  - memory/pointer: `define dso_local i32 @f_gold(i8* nocapture noundef readonly %0) local_unnamed_addr #0 {`
  - casts/conversions: `%8 = sext i8 %6 to i32`
  - UB-related: `define dso_local i32 @f_gold(i8* nocapture noundef readonly %0) local_unnamed_addr #0 {`

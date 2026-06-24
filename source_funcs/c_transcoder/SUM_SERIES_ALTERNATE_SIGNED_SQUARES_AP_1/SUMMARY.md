# c_transcoder/SUM_SERIES_ALTERNATE_SIGNED_SQUARES_AP_1

- Source: `SUM_SERIES_ALTERNATE_SIGNED_SQUARES_AP_1_processed.c`
- Source note: processed source

## O0

- Status: ok
- Features:
  - integer arithmetic
  - control flow
  - memory/pointer
  - casts/conversions
  - UB-related
- Evidence:
  - integer arithmetic: `%12 = mul nsw i32 %8, %11`
  - control flow: `ret i32 %33`
  - memory/pointer: `define dso_local i32 @f_gold(i32 noundef %0, i32* noundef %1) #0 {`
  - casts/conversions: `%17 = sext i32 %16 to i64`
  - UB-related: `define dso_local i32 @f_gold(i32 noundef %0, i32* noundef %1) #0 {`

## O1

- Status: ok
- Features:
  - integer arithmetic
  - bitwise/shift
  - control flow
  - memory/pointer
  - casts/conversions
  - UB-related
- Evidence:
  - integer arithmetic: `%4 = mul nsw i32 %3, %3`
  - bitwise/shift: `%5 = shl nsw i32 %0, 1`
  - control flow: `ret i32 %13`
  - memory/pointer: `define dso_local i32 @f_gold(i32 noundef %0, i32* nocapture noundef readonly %1) local_unnamed_addr #0 {`
  - casts/conversions: `%7 = sext i32 %6 to i64`
  - UB-related: `define dso_local i32 @f_gold(i32 noundef %0, i32* nocapture noundef readonly %1) local_unnamed_addr #0 {`

## O2

- Status: ok
- Features:
  - integer arithmetic
  - bitwise/shift
  - control flow
  - memory/pointer
  - casts/conversions
  - UB-related
- Evidence:
  - integer arithmetic: `%4 = mul nsw i32 %3, %3`
  - bitwise/shift: `%5 = shl nsw i32 %0, 1`
  - control flow: `ret i32 %13`
  - memory/pointer: `define dso_local i32 @f_gold(i32 noundef %0, i32* nocapture noundef readonly %1) local_unnamed_addr #0 {`
  - casts/conversions: `%7 = sext i32 %6 to i64`
  - UB-related: `define dso_local i32 @f_gold(i32 noundef %0, i32* nocapture noundef readonly %1) local_unnamed_addr #0 {`

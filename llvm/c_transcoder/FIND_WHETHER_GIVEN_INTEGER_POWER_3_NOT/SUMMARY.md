# c_transcoder/FIND_WHETHER_GIVEN_INTEGER_POWER_3_NOT

- Source: `FIND_WHETHER_GIVEN_INTEGER_POWER_3_NOT_processed.c`
- Source note: processed source

## O0

- Status: ok
- Features: integer arithmetic, comparisons, control flow, memory/pointer, casts/conversions, UB-related
- Evidence:
  - integer arithmetic: `%4 = srem i32 1162261467, %3`
  - comparisons: `%5 = icmp eq i32 %4, 0`
  - control flow: `ret i32 %6`
  - memory/pointer: `%2 = alloca i32, align 4`
  - casts/conversions: `%6 = zext i1 %5 to i32`
  - UB-related: `define dso_local i32 @f_gold(i32 noundef %0) #0 {`

## O1

- Status: ok
- Features: integer arithmetic, comparisons, control flow, casts/conversions, UB-related
- Evidence:
  - integer arithmetic: `%2 = srem i32 1162261467, %0`
  - comparisons: `%3 = icmp eq i32 %2, 0`
  - control flow: `ret i32 %4`
  - casts/conversions: `%4 = zext i1 %3 to i32`
  - UB-related: `define dso_local i32 @f_gold(i32 noundef %0) local_unnamed_addr #0 {`

## O2

- Status: ok
- Features: integer arithmetic, comparisons, control flow, casts/conversions, UB-related
- Evidence:
  - integer arithmetic: `%2 = srem i32 1162261467, %0`
  - comparisons: `%3 = icmp eq i32 %2, 0`
  - control flow: `ret i32 %4`
  - casts/conversions: `%4 = zext i1 %3 to i32`
  - UB-related: `define dso_local i32 @f_gold(i32 noundef %0) local_unnamed_addr #0 {`

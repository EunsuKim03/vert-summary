# c_transcoder/CASSINIS_IDENTITY

- Source: `CASSINIS_IDENTITY_processed.c`
- Source note: processed source

## O0

- Status: ok
- Features:
  - bitwise/shift
  - comparisons
  - control flow
  - memory/pointer
  - casts/conversions
  - UB-related
- Evidence:
  - bitwise/shift: `%4 = and i32 %3, 1`
  - comparisons: `%5 = icmp ne i32 %4, 0`
  - control flow: `%7 = select i1 %5, i32 -1, i32 1`
  - memory/pointer: `%2 = alloca i32, align 4`
  - casts/conversions: `%6 = zext i1 %5 to i64`
  - UB-related: `define dso_local i32 @f_gold(i32 noundef %0) #0 {`

## O1

- Status: ok
- Features:
  - bitwise/shift
  - comparisons
  - control flow
  - UB-related
- Evidence:
  - bitwise/shift: `%2 = and i32 %0, 1`
  - comparisons: `%3 = icmp eq i32 %2, 0`
  - control flow: `%4 = select i1 %3, i32 1, i32 -1`
  - UB-related: `define dso_local i32 @f_gold(i32 noundef %0) local_unnamed_addr #0 {`

## O2

- Status: ok
- Features:
  - bitwise/shift
  - comparisons
  - control flow
  - UB-related
- Evidence:
  - bitwise/shift: `%2 = and i32 %0, 1`
  - comparisons: `%3 = icmp eq i32 %2, 0`
  - control flow: `%4 = select i1 %3, i32 1, i32 -1`
  - UB-related: `define dso_local i32 @f_gold(i32 noundef %0) local_unnamed_addr #0 {`

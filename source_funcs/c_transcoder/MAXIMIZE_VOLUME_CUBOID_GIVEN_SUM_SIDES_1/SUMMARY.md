# c_transcoder/MAXIMIZE_VOLUME_CUBOID_GIVEN_SUM_SIDES_1

- Source: `MAXIMIZE_VOLUME_CUBOID_GIVEN_SUM_SIDES_1_processed.c`
- Source note: processed source

## O0

- Status: ok
- Features:
  - integer arithmetic
  - control flow
  - memory/pointer
  - UB-related
- Evidence:
  - integer arithmetic: `%7 = sdiv i32 %6, 3`
  - control flow: `ret i32 %20`
  - memory/pointer: `%2 = alloca i32, align 4`
  - UB-related: `define dso_local i32 @f_gold(i32 noundef %0) #0 {`

## O1

- Status: ok
- Features:
  - integer arithmetic
  - control flow
  - UB-related
- Evidence:
  - integer arithmetic: `%2 = sdiv i32 %0, 3`
  - control flow: `ret i32 %7`
  - UB-related: `define dso_local i32 @f_gold(i32 noundef %0) local_unnamed_addr #0 {`

## O2

- Status: ok
- Features:
  - integer arithmetic
  - control flow
  - UB-related
- Evidence:
  - integer arithmetic: `%2 = sdiv i32 %0, 3`
  - control flow: `ret i32 %7`
  - UB-related: `define dso_local i32 @f_gold(i32 noundef %0) local_unnamed_addr #0 {`

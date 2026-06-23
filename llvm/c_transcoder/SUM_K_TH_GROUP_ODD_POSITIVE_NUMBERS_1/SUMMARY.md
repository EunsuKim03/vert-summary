# c_transcoder/SUM_K_TH_GROUP_ODD_POSITIVE_NUMBERS_1

- Source: `SUM_K_TH_GROUP_ODD_POSITIVE_NUMBERS_1_processed.c`
- Source note: processed source

## O0

- Status: ok
- Features: integer arithmetic, control flow, memory/pointer, UB-related
- Evidence:
  - integer arithmetic: `%5 = mul nsw i32 %3, %4`
  - control flow: `ret i32 %7`
  - memory/pointer: `%2 = alloca i32, align 4`
  - UB-related: `define dso_local i32 @f_gold(i32 noundef %0) #0 {`

## O1

- Status: ok
- Features: integer arithmetic, control flow, UB-related
- Evidence:
  - integer arithmetic: `%2 = mul nsw i32 %0, %0`
  - control flow: `ret i32 %3`
  - UB-related: `define dso_local i32 @f_gold(i32 noundef %0) local_unnamed_addr #0 {`

## O2

- Status: ok
- Features: integer arithmetic, control flow, UB-related
- Evidence:
  - integer arithmetic: `%2 = mul nsw i32 %0, %0`
  - control flow: `ret i32 %3`
  - UB-related: `define dso_local i32 @f_gold(i32 noundef %0) local_unnamed_addr #0 {`

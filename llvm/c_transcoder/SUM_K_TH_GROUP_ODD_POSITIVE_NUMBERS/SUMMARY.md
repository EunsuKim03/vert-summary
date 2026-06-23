# c_transcoder/SUM_K_TH_GROUP_ODD_POSITIVE_NUMBERS

- Source: `SUM_K_TH_GROUP_ODD_POSITIVE_NUMBERS_processed.c`
- Source note: processed source

## O0

- Status: ok
- Features: integer arithmetic, comparisons, control flow, loop, memory/pointer, UB-related
- Evidence:
  - integer arithmetic: `%7 = sub nsw i32 %6, 1`
  - comparisons: `%13 = icmp ne i32 %11, 0`
  - control flow: `br label %10`
  - loop: `llvm.loop metadata`
  - memory/pointer: `%2 = alloca i32, align 4`
  - UB-related: `define dso_local i32 @f_gold(i32 noundef %0) #0 {`

## O1

- Status: ok
- Features: integer arithmetic, bitwise/shift, comparisons, control flow, UB-related
- Evidence:
  - integer arithmetic: `%2 = add i32 %0, -1`
  - bitwise/shift: `%10 = and i32 %9, -2`
  - comparisons: `%3 = icmp eq i32 %0, 0`
  - control flow: `br i1 %3, label %13, label %4`
  - UB-related: `define dso_local i32 @f_gold(i32 noundef %0) local_unnamed_addr #0 {`

## O2

- Status: ok
- Features: integer arithmetic, bitwise/shift, comparisons, control flow, UB-related
- Evidence:
  - integer arithmetic: `%2 = add i32 %0, -1`
  - bitwise/shift: `%10 = and i32 %9, -2`
  - comparisons: `%3 = icmp eq i32 %0, 0`
  - control flow: `br i1 %3, label %13, label %4`
  - UB-related: `define dso_local i32 @f_gold(i32 noundef %0) local_unnamed_addr #0 {`

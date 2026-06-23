# c_transcoder/FIND_WHETHER_A_GIVEN_NUMBER_IS_A_POWER_OF_4_OR_NOT_2

- Source: `FIND_WHETHER_A_GIVEN_NUMBER_IS_A_POWER_OF_4_OR_NOT_2_processed.c`
- Source note: processed source

## O0

- Status: ok
- Features: integer arithmetic, bitwise/shift, comparisons, control flow, memory/pointer, casts/conversions, UB-related
- Evidence:
  - integer arithmetic: `%8 = sub i32 %7, 1`
  - bitwise/shift: `%9 = and i32 %6, %8`
  - comparisons: `%4 = icmp ne i32 %3, 0`
  - control flow: `br i1 %4, label %5, label %16`
  - memory/pointer: `%2 = alloca i32, align 4`
  - casts/conversions: `%18 = zext i1 %17 to i32`
  - UB-related: `define dso_local i32 @f_gold(i32 noundef %0) #0 {`

## O1

- Status: ok
- Features: bitwise/shift, comparisons, control flow, casts/conversions, calls/intrinsics, UB-related, external declarations
- Evidence:
  - bitwise/shift: `%4 = and i32 %0, -1431655766`
  - comparisons: `%3 = icmp eq i32 %2, 1`
  - control flow: `ret i32 %7`
  - casts/conversions: `%7 = zext i1 %6 to i32`
  - calls/intrinsics: `%2 = call i32 @llvm.ctpop.i32(i32 %0), !range !5`
  - UB-related: `define dso_local i32 @f_gold(i32 noundef %0) local_unnamed_addr #0 {`
  - external declarations: `declare i32 @llvm.ctpop.i32(i32) #1`

## O2

- Status: ok
- Features: bitwise/shift, comparisons, control flow, casts/conversions, calls/intrinsics, UB-related, external declarations
- Evidence:
  - bitwise/shift: `%4 = and i32 %0, -1431655766`
  - comparisons: `%3 = icmp eq i32 %2, 1`
  - control flow: `ret i32 %7`
  - casts/conversions: `%7 = zext i1 %6 to i32`
  - calls/intrinsics: `%2 = tail call i32 @llvm.ctpop.i32(i32 %0), !range !5`
  - UB-related: `define dso_local i32 @f_gold(i32 noundef %0) local_unnamed_addr #0 {`
  - external declarations: `declare i32 @llvm.ctpop.i32(i32) #1`

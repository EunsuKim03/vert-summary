# cpp_transcoder/HOW_TO_TURN_OFF_A_PARTICULAR_BIT_IN_A_NUMBER

- Source: `HOW_TO_TURN_OFF_A_PARTICULAR_BIT_IN_A_NUMBER_processed.cpp`
- Source note: processed source

## O0

- Status: ok
- Features: integer arithmetic, bitwise/shift, comparisons, control flow, memory/pointer, aggregates, UB-related, globals, external declarations
- Evidence:
  - integer arithmetic: `%13 = sub nsw i32 %12, 1`
  - bitwise/shift: `%14 = shl i32 1, %13`
  - comparisons: `%7 = icmp sle i32 %6, 0`
  - control flow: `br i1 %7, label %8, label %10`
  - memory/pointer: `%3 = alloca i32, align 4`
  - aggregates: `%"class.std::ios_base::Init" = type { i8 }`
  - UB-related: `define dso_local noundef i32 @_Z6f_goldii(i32 noundef %0, i32 noundef %1) #4 {`
  - globals: `@_ZStL8__ioinit = internal global %"class.std::ios_base::Init" zeroinitializer, align 1`
  - external declarations: `declare void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1)) unnamed_addr #1`

## O1

- Status: ok
- Features: integer arithmetic, bitwise/shift, comparisons, control flow, aggregates, UB-related, globals, external declarations
- Evidence:
  - integer arithmetic: `%4 = add nsw i32 %1, -1`
  - bitwise/shift: `%5 = shl i32 1, %4`
  - comparisons: `%3 = icmp slt i32 %1, 1`
  - control flow: `%7 = select i1 %3, i32 -1, i32 %6`
  - aggregates: `%"class.std::ios_base::Init" = type { i8 }`
  - UB-related: `define dso_local noundef i32 @_Z6f_goldii(i32 noundef %0, i32 noundef %1) local_unnamed_addr #3 {`
  - globals: `@_ZStL8__ioinit = internal global %"class.std::ios_base::Init" zeroinitializer, align 1`
  - external declarations: `declare void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1)) unnamed_addr #0`

## O2

- Status: ok
- Features: integer arithmetic, bitwise/shift, comparisons, control flow, aggregates, UB-related, globals, external declarations
- Evidence:
  - integer arithmetic: `%4 = add nsw i32 %1, -1`
  - bitwise/shift: `%5 = shl nuw i32 1, %4`
  - comparisons: `%3 = icmp slt i32 %1, 1`
  - control flow: `%7 = select i1 %3, i32 -1, i32 %6`
  - aggregates: `%"class.std::ios_base::Init" = type { i8 }`
  - UB-related: `define dso_local noundef i32 @_Z6f_goldii(i32 noundef %0, i32 noundef %1) local_unnamed_addr #3 {`
  - globals: `@_ZStL8__ioinit = internal global %"class.std::ios_base::Init" zeroinitializer, align 1`
  - external declarations: `declare void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1)) unnamed_addr #0`

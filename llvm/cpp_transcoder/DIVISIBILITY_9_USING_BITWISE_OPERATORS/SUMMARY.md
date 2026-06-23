# cpp_transcoder/DIVISIBILITY_9_USING_BITWISE_OPERATORS

- Source: `DIVISIBILITY_9_USING_BITWISE_OPERATORS_processed.cpp`
- Source note: processed source

## O0

- Status: ok
- Features: integer arithmetic, bitwise/shift, comparisons, control flow, recursion, memory/pointer, calls/intrinsics, aggregates, UB-related, globals, external declarations
- Evidence:
  - integer arithmetic: `%19 = sub nsw i32 %16, %18`
  - bitwise/shift: `%16 = ashr i32 %15, 3`
  - comparisons: `%5 = icmp eq i32 %4, 0`
  - control flow: `br i1 %5, label %9, label %6`
  - recursion: `_Z6f_goldi calls itself`
  - memory/pointer: `%2 = alloca i32, align 4`
  - calls/intrinsics: `%20 = call noundef i32 @_Z6f_goldi(i32 noundef %19)`
  - aggregates: `%"class.std::ios_base::Init" = type { i8 }`
  - UB-related: `define dso_local noundef i32 @_Z6f_goldi(i32 noundef %0) #4 {`
  - globals: `@_ZStL8__ioinit = internal global %"class.std::ios_base::Init" zeroinitializer, align 1`
  - external declarations: `declare void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1)) unnamed_addr #1`

## O1

- Status: ok
- Features: integer arithmetic, bitwise/shift, comparisons, control flow, recursion, calls/intrinsics, aggregates, UB-related, globals, external declarations
- Evidence:
  - integer arithmetic: `%7 = sub nsw i32 %5, %6`
  - bitwise/shift: `%5 = ashr i32 %0, 3`
  - comparisons: `%3 = icmp slt i32 %0, 9`
  - control flow: `switch i32 %0, label %2 [`
  - recursion: `_Z6f_goldi calls itself`
  - calls/intrinsics: `%8 = call noundef i32 @_Z6f_goldi(i32 noundef %7), !range !5`
  - aggregates: `%"class.std::ios_base::Init" = type { i8 }`
  - UB-related: `define dso_local noundef i32 @_Z6f_goldi(i32 noundef %0) local_unnamed_addr #3 {`
  - globals: `@_ZStL8__ioinit = internal global %"class.std::ios_base::Init" zeroinitializer, align 1`
  - external declarations: `declare void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1)) unnamed_addr #0`

## O2

- Status: ok
- Features: integer arithmetic, bitwise/shift, comparisons, control flow, loop, aggregates, UB-related, globals, external declarations
- Evidence:
  - integer arithmetic: `%9 = sub nsw i32 %7, %8`
  - bitwise/shift: `%7 = lshr i32 %3, 3`
  - comparisons: `%5 = icmp slt i32 %3, 9`
  - control flow: `br label %2`
  - loop: `br label %2`
  - aggregates: `%"class.std::ios_base::Init" = type { i8 }`
  - UB-related: `define dso_local noundef i32 @_Z6f_goldi(i32 noundef %0) local_unnamed_addr #3 {`
  - globals: `@_ZStL8__ioinit = internal global %"class.std::ios_base::Init" zeroinitializer, align 1`
  - external declarations: `declare void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1)) unnamed_addr #0`

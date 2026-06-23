# cpp_transcoder/COUNT_SET_BITS_IN_AN_INTEGER_1

- Source: `COUNT_SET_BITS_IN_AN_INTEGER_1_processed.cpp`
- Source note: processed source

## O0

- Status: ok
- Features: integer arithmetic, bitwise/shift, comparisons, control flow, recursion, memory/pointer, calls/intrinsics, aggregates, UB-related, globals, external declarations
- Evidence:
  - integer arithmetic: `%13 = add nsw i32 %9, %12`
  - bitwise/shift: `%9 = and i32 %8, 1`
  - comparisons: `%5 = icmp eq i32 %4, 0`
  - control flow: `br i1 %5, label %6, label %7`
  - recursion: `_Z6f_goldi calls itself`
  - memory/pointer: `%2 = alloca i32, align 4`
  - calls/intrinsics: `%12 = call noundef i32 @_Z6f_goldi(i32 noundef %11)`
  - aggregates: `%"class.std::ios_base::Init" = type { i8 }`
  - UB-related: `define dso_local noundef i32 @_Z6f_goldi(i32 noundef %0) #4 {`
  - globals: `@_ZStL8__ioinit = internal global %"class.std::ios_base::Init" zeroinitializer, align 1`
  - external declarations: `declare void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1)) unnamed_addr #1`

## O1

- Status: ok
- Features: integer arithmetic, bitwise/shift, comparisons, control flow, recursion, calls/intrinsics, aggregates, UB-related, globals, external declarations
- Evidence:
  - integer arithmetic: `%7 = add nsw i32 %6, %4`
  - bitwise/shift: `%4 = and i32 %0, 1`
  - comparisons: `%2 = icmp eq i32 %0, 0`
  - control flow: `br i1 %2, label %8, label %3`
  - recursion: `_Z6f_goldi calls itself`
  - calls/intrinsics: `%6 = call noundef i32 @_Z6f_goldi(i32 noundef %5)`
  - aggregates: `%"class.std::ios_base::Init" = type { i8 }`
  - UB-related: `define dso_local noundef i32 @_Z6f_goldi(i32 noundef %0) local_unnamed_addr #3 {`
  - globals: `@_ZStL8__ioinit = internal global %"class.std::ios_base::Init" zeroinitializer, align 1`
  - external declarations: `declare void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1)) unnamed_addr #0`

## O2

- Status: ok
- Features: integer arithmetic, bitwise/shift, comparisons, control flow, loop, aggregates, UB-related, globals, external declarations
- Evidence:
  - integer arithmetic: `%8 = add nuw nsw i32 %6, %5`
  - bitwise/shift: `%6 = and i32 %4, 1`
  - comparisons: `%2 = icmp eq i32 %0, 0`
  - control flow: `br i1 %2, label %10, label %3`
  - loop: `br i1 %9, label %10, label %3`
  - aggregates: `%"class.std::ios_base::Init" = type { i8 }`
  - UB-related: `define dso_local noundef i32 @_Z6f_goldi(i32 noundef %0) local_unnamed_addr #3 {`
  - globals: `@_ZStL8__ioinit = internal global %"class.std::ios_base::Init" zeroinitializer, align 1`
  - external declarations: `declare void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1)) unnamed_addr #0`

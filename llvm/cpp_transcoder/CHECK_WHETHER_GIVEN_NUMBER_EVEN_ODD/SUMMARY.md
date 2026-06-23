# cpp_transcoder/CHECK_WHETHER_GIVEN_NUMBER_EVEN_ODD

- Source: `CHECK_WHETHER_GIVEN_NUMBER_EVEN_ODD_processed.cpp`
- Source note: processed source

## O0

- Status: ok
- Features: integer arithmetic, comparisons, control flow, memory/pointer, casts/conversions, aggregates, UB-related, globals, external declarations
- Evidence:
  - integer arithmetic: `%4 = srem i32 %3, 2`
  - comparisons: `%5 = icmp eq i32 %4, 0`
  - control flow: `ret i32 %6`
  - memory/pointer: `%2 = alloca i32, align 4`
  - casts/conversions: `%6 = zext i1 %5 to i32`
  - aggregates: `%"class.std::ios_base::Init" = type { i8 }`
  - UB-related: `define dso_local noundef i32 @_Z6f_goldi(i32 noundef %0) #4 {`
  - globals: `@_ZStL8__ioinit = internal global %"class.std::ios_base::Init" zeroinitializer, align 1`
  - external declarations: `declare void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1)) unnamed_addr #1`

## O1

- Status: ok
- Features: bitwise/shift, control flow, aggregates, UB-related, globals, external declarations
- Evidence:
  - bitwise/shift: `%2 = and i32 %0, 1`
  - control flow: `ret i32 %3`
  - aggregates: `%"class.std::ios_base::Init" = type { i8 }`
  - UB-related: `define dso_local noundef i32 @_Z6f_goldi(i32 noundef %0) local_unnamed_addr #3 {`
  - globals: `@_ZStL8__ioinit = internal global %"class.std::ios_base::Init" zeroinitializer, align 1`
  - external declarations: `declare void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1)) unnamed_addr #0`

## O2

- Status: ok
- Features: bitwise/shift, control flow, aggregates, UB-related, globals, external declarations
- Evidence:
  - bitwise/shift: `%2 = and i32 %0, 1`
  - control flow: `ret i32 %3`
  - aggregates: `%"class.std::ios_base::Init" = type { i8 }`
  - UB-related: `define dso_local noundef i32 @_Z6f_goldi(i32 noundef %0) local_unnamed_addr #3 {`
  - globals: `@_ZStL8__ioinit = internal global %"class.std::ios_base::Init" zeroinitializer, align 1`
  - external declarations: `declare void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1)) unnamed_addr #0`

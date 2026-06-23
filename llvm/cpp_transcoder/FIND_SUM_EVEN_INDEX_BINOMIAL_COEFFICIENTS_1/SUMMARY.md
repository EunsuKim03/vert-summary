# cpp_transcoder/FIND_SUM_EVEN_INDEX_BINOMIAL_COEFFICIENTS_1

- Source: `FIND_SUM_EVEN_INDEX_BINOMIAL_COEFFICIENTS_1_processed.cpp`
- Source note: processed source

## O0

- Status: ok
- Features: integer arithmetic, bitwise/shift, control flow, memory/pointer, aggregates, UB-related, globals, external declarations
- Evidence:
  - integer arithmetic: `%4 = sub nsw i32 %3, 1`
  - bitwise/shift: `%5 = shl i32 1, %4`
  - control flow: `ret i32 %5`
  - memory/pointer: `%2 = alloca i32, align 4`
  - aggregates: `%"class.std::ios_base::Init" = type { i8 }`
  - UB-related: `define dso_local noundef i32 @_Z6f_goldi(i32 noundef %0) #4 {`
  - globals: `@_ZStL8__ioinit = internal global %"class.std::ios_base::Init" zeroinitializer, align 1`
  - external declarations: `declare void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1)) unnamed_addr #1`

## O1

- Status: ok
- Features: integer arithmetic, bitwise/shift, control flow, aggregates, UB-related, globals, external declarations
- Evidence:
  - integer arithmetic: `%2 = add nsw i32 %0, -1`
  - bitwise/shift: `%3 = shl i32 1, %2`
  - control flow: `ret i32 %3`
  - aggregates: `%"class.std::ios_base::Init" = type { i8 }`
  - UB-related: `define dso_local noundef i32 @_Z6f_goldi(i32 noundef %0) local_unnamed_addr #3 {`
  - globals: `@_ZStL8__ioinit = internal global %"class.std::ios_base::Init" zeroinitializer, align 1`
  - external declarations: `declare void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1)) unnamed_addr #0`

## O2

- Status: ok
- Features: integer arithmetic, bitwise/shift, control flow, aggregates, UB-related, globals, external declarations
- Evidence:
  - integer arithmetic: `%2 = add nsw i32 %0, -1`
  - bitwise/shift: `%3 = shl nuw i32 1, %2`
  - control flow: `ret i32 %3`
  - aggregates: `%"class.std::ios_base::Init" = type { i8 }`
  - UB-related: `define dso_local noundef i32 @_Z6f_goldi(i32 noundef %0) local_unnamed_addr #3 {`
  - globals: `@_ZStL8__ioinit = internal global %"class.std::ios_base::Init" zeroinitializer, align 1`
  - external declarations: `declare void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1)) unnamed_addr #0`

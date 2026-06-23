# cpp_transcoder/SWAP_BITS_IN_A_GIVEN_NUMBER

- Source: `SWAP_BITS_IN_A_GIVEN_NUMBER_processed.cpp`
- Source note: processed source

## O0

- Status: ok
- Features: integer arithmetic, bitwise/shift, control flow, memory/pointer, aggregates, UB-related, globals, external declarations
- Evidence:
  - integer arithmetic: `%18 = sub i32 %17, 1`
  - bitwise/shift: `%15 = lshr i32 %13, %14`
  - control flow: `ret i32 %40`
  - memory/pointer: `%5 = alloca i32, align 4`
  - aggregates: `%"class.std::ios_base::Init" = type { i8 }`
  - UB-related: `define dso_local noundef i32 @_Z6f_goldjjjj(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) #4 {`
  - globals: `@_ZStL8__ioinit = internal global %"class.std::ios_base::Init" zeroinitializer, align 1`
  - external declarations: `declare void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1)) unnamed_addr #1`

## O1

- Status: ok
- Features: bitwise/shift, control flow, aggregates, UB-related, globals, external declarations
- Evidence:
  - bitwise/shift: `%5 = lshr i32 %0, %1`
  - control flow: `ret i32 %14`
  - aggregates: `%"class.std::ios_base::Init" = type { i8 }`
  - UB-related: `define dso_local noundef i32 @_Z6f_goldjjjj(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #3 {`
  - globals: `@_ZStL8__ioinit = internal global %"class.std::ios_base::Init" zeroinitializer, align 1`
  - external declarations: `declare void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1)) unnamed_addr #0`

## O2

- Status: ok
- Features: bitwise/shift, control flow, aggregates, UB-related, globals, external declarations
- Evidence:
  - bitwise/shift: `%5 = lshr i32 %0, %1`
  - control flow: `ret i32 %14`
  - aggregates: `%"class.std::ios_base::Init" = type { i8 }`
  - UB-related: `define dso_local noundef i32 @_Z6f_goldjjjj(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #3 {`
  - globals: `@_ZStL8__ioinit = internal global %"class.std::ios_base::Init" zeroinitializer, align 1`
  - external declarations: `declare void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1)) unnamed_addr #0`

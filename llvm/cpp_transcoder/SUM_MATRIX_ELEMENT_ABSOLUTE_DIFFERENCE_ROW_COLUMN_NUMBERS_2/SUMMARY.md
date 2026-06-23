# cpp_transcoder/SUM_MATRIX_ELEMENT_ABSOLUTE_DIFFERENCE_ROW_COLUMN_NUMBERS_2

- Source: `SUM_MATRIX_ELEMENT_ABSOLUTE_DIFFERENCE_ROW_COLUMN_NUMBERS_2_processed.cpp`
- Source note: processed source

## O0

- Status: ok
- Features: integer arithmetic, control flow, memory/pointer, aggregates, UB-related, globals, external declarations
- Evidence:
  - integer arithmetic: `%5 = add nsw i32 %4, -1`
  - control flow: `ret i32 %24`
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
  - bitwise/shift: `%5 = shl nsw i32 %2, 1`
  - control flow: `ret i32 %9`
  - aggregates: `%"class.std::ios_base::Init" = type { i8 }`
  - UB-related: `define dso_local noundef i32 @_Z6f_goldi(i32 noundef %0) local_unnamed_addr #3 {`
  - globals: `@_ZStL8__ioinit = internal global %"class.std::ios_base::Init" zeroinitializer, align 1`
  - external declarations: `declare void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1)) unnamed_addr #0`

## O2

- Status: ok
- Features: integer arithmetic, bitwise/shift, control flow, aggregates, UB-related, globals, external declarations
- Evidence:
  - integer arithmetic: `%2 = add nsw i32 %0, -1`
  - bitwise/shift: `%5 = shl nsw i32 %2, 1`
  - control flow: `ret i32 %9`
  - aggregates: `%"class.std::ios_base::Init" = type { i8 }`
  - UB-related: `define dso_local noundef i32 @_Z6f_goldi(i32 noundef %0) local_unnamed_addr #3 {`
  - globals: `@_ZStL8__ioinit = internal global %"class.std::ios_base::Init" zeroinitializer, align 1`
  - external declarations: `declare void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1)) unnamed_addr #0`

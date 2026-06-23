# cpp_transcoder/DETECT_IF_TWO_INTEGERS_HAVE_OPPOSITE_SIGNS

- Source: `DETECT_IF_TWO_INTEGERS_HAVE_OPPOSITE_SIGNS_processed.cpp`
- Source note: processed source

## O0

- Status: ok
- Features: bitwise/shift, comparisons, control flow, memory/pointer, casts/conversions, aggregates, UB-related, globals, external declarations
- Evidence:
  - bitwise/shift: `%7 = xor i32 %5, %6`
  - comparisons: `%8 = icmp slt i32 %7, 0`
  - control flow: `ret i32 %9`
  - memory/pointer: `%3 = alloca i32, align 4`
  - casts/conversions: `%9 = zext i1 %8 to i32`
  - aggregates: `%"class.std::ios_base::Init" = type { i8 }`
  - UB-related: `define dso_local noundef i32 @_Z6f_goldii(i32 noundef %0, i32 noundef %1) #4 {`
  - globals: `@_ZStL8__ioinit = internal global %"class.std::ios_base::Init" zeroinitializer, align 1`
  - external declarations: `declare void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1)) unnamed_addr #1`

## O1

- Status: ok
- Features: bitwise/shift, control flow, aggregates, UB-related, globals, external declarations
- Evidence:
  - bitwise/shift: `%3 = xor i32 %1, %0`
  - control flow: `ret i32 %4`
  - aggregates: `%"class.std::ios_base::Init" = type { i8 }`
  - UB-related: `define dso_local noundef i32 @_Z6f_goldii(i32 noundef %0, i32 noundef %1) local_unnamed_addr #3 {`
  - globals: `@_ZStL8__ioinit = internal global %"class.std::ios_base::Init" zeroinitializer, align 1`
  - external declarations: `declare void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1)) unnamed_addr #0`

## O2

- Status: ok
- Features: bitwise/shift, control flow, aggregates, UB-related, globals, external declarations
- Evidence:
  - bitwise/shift: `%3 = xor i32 %1, %0`
  - control flow: `ret i32 %4`
  - aggregates: `%"class.std::ios_base::Init" = type { i8 }`
  - UB-related: `define dso_local noundef i32 @_Z6f_goldii(i32 noundef %0, i32 noundef %1) local_unnamed_addr #3 {`
  - globals: `@_ZStL8__ioinit = internal global %"class.std::ios_base::Init" zeroinitializer, align 1`
  - external declarations: `declare void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1)) unnamed_addr #0`

# cpp_transcoder/COUNT_SET_BITS_IN_AN_INTEGER

- Source: `COUNT_SET_BITS_IN_AN_INTEGER_processed.cpp`
- Source note: processed source

## O0

- Status: ok
- Features: integer arithmetic, bitwise/shift, comparisons, control flow, loop, memory/pointer, aggregates, UB-related, globals, external declarations
- Evidence:
  - integer arithmetic: `%11 = add i32 %10, %9`
  - bitwise/shift: `%9 = and i32 %8, 1`
  - comparisons: `%6 = icmp ne i32 %5, 0`
  - control flow: `br label %4`
  - loop: `llvm.loop metadata`
  - memory/pointer: `%2 = alloca i32, align 4`
  - aggregates: `%"class.std::ios_base::Init" = type { i8 }`
  - UB-related: `define dso_local noundef i32 @_Z6f_goldj(i32 noundef %0) #4 {`
  - globals: `@_ZStL8__ioinit = internal global %"class.std::ios_base::Init" zeroinitializer, align 1`
  - external declarations: `declare void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1)) unnamed_addr #1`

## O1

- Status: ok
- Features: integer arithmetic, bitwise/shift, comparisons, control flow, loop, aggregates, UB-related, globals, external declarations
- Evidence:
  - integer arithmetic: `%7 = add i32 %4, %6`
  - bitwise/shift: `%6 = and i32 %5, 1`
  - comparisons: `%2 = icmp eq i32 %0, 0`
  - control flow: `br i1 %2, label %10, label %3`
  - loop: `llvm.loop metadata`
  - aggregates: `%"class.std::ios_base::Init" = type { i8 }`
  - UB-related: `define dso_local noundef i32 @_Z6f_goldj(i32 noundef %0) local_unnamed_addr #3 {`
  - globals: `@_ZStL8__ioinit = internal global %"class.std::ios_base::Init" zeroinitializer, align 1`
  - external declarations: `declare void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1)) unnamed_addr #0`

## O2

- Status: ok
- Features: integer arithmetic, bitwise/shift, comparisons, control flow, loop, aggregates, UB-related, globals, external declarations
- Evidence:
  - integer arithmetic: `%7 = add i32 %4, %6`
  - bitwise/shift: `%6 = and i32 %5, 1`
  - comparisons: `%2 = icmp eq i32 %0, 0`
  - control flow: `br i1 %2, label %10, label %3`
  - loop: `llvm.loop metadata`
  - aggregates: `%"class.std::ios_base::Init" = type { i8 }`
  - UB-related: `define dso_local noundef i32 @_Z6f_goldj(i32 noundef %0) local_unnamed_addr #3 {`
  - globals: `@_ZStL8__ioinit = internal global %"class.std::ios_base::Init" zeroinitializer, align 1`
  - external declarations: `declare void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1)) unnamed_addr #0`

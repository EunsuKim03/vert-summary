# cpp_transcoder/MULTIPLY_LARGE_INTEGERS_UNDER_LARGE_MODULO

- Source: `MULTIPLY_LARGE_INTEGERS_UNDER_LARGE_MODULO_processed.cpp`
- Source note: processed source

## O0

- Status: ok
- Features: integer arithmetic, bitwise/shift, comparisons, control flow, loop, memory/pointer, aggregates, UB-related, globals, external declarations
- Evidence:
  - integer arithmetic: `%10 = srem i64 %9, %8`
  - bitwise/shift: `%16 = and i64 %15, 1`
  - comparisons: `%13 = icmp ne i64 %12, 0`
  - control flow: `br label %11`
  - loop: `llvm.loop metadata`
  - memory/pointer: `%4 = alloca i64, align 8`
  - aggregates: `%"class.std::ios_base::Init" = type { i8 }`
  - UB-related: `define dso_local noundef i64 @_Z6f_goldxxx(i64 noundef %0, i64 noundef %1, i64 noundef %2) #4 {`
  - globals: `@_ZStL8__ioinit = internal global %"class.std::ios_base::Init" zeroinitializer, align 1`
  - external declarations: `declare void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1)) unnamed_addr #1`

## O1

- Status: ok
- Features: integer arithmetic, bitwise/shift, comparisons, control flow, loop, aggregates, UB-related, globals, external declarations
- Evidence:
  - integer arithmetic: `%9 = srem i64 %6, %2`
  - bitwise/shift: `%10 = and i64 %8, 1`
  - comparisons: `%4 = icmp eq i64 %1, 0`
  - control flow: `br i1 %4, label %20, label %5`
  - loop: `llvm.loop metadata`
  - aggregates: `%"class.std::ios_base::Init" = type { i8 }`
  - UB-related: `define dso_local noundef i64 @_Z6f_goldxxx(i64 noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #3 {`
  - globals: `@_ZStL8__ioinit = internal global %"class.std::ios_base::Init" zeroinitializer, align 1`
  - external declarations: `declare void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1)) unnamed_addr #0`

## O2

- Status: ok
- Features: integer arithmetic, bitwise/shift, comparisons, control flow, loop, aggregates, UB-related, globals, external declarations
- Evidence:
  - integer arithmetic: `%9 = srem i64 %6, %2`
  - bitwise/shift: `%10 = and i64 %8, 1`
  - comparisons: `%4 = icmp eq i64 %1, 0`
  - control flow: `br i1 %4, label %20, label %5`
  - loop: `llvm.loop metadata`
  - aggregates: `%"class.std::ios_base::Init" = type { i8 }`
  - UB-related: `define dso_local noundef i64 @_Z6f_goldxxx(i64 noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #3 {`
  - globals: `@_ZStL8__ioinit = internal global %"class.std::ios_base::Init" zeroinitializer, align 1`
  - external declarations: `declare void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1)) unnamed_addr #0`

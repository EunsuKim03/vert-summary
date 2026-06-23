# cpp_transcoder/FAST_MULTIPLICATION_METHOD_WITHOUT_USING_MULTIPLICATION_OPERATOR_RUSSIAN_PEASANTS_ALGORITHM

- Source: `FAST_MULTIPLICATION_METHOD_WITHOUT_USING_MULTIPLICATION_OPERATOR_RUSSIAN_PEASANTS_ALGORITHM_processed.cpp`
- Source note: processed source

## O0

- Status: ok
- Features: integer arithmetic, bitwise/shift, comparisons, control flow, loop, memory/pointer, aggregates, UB-related, globals, external declarations
- Evidence:
  - integer arithmetic: `%16 = add i32 %14, %15`
  - bitwise/shift: `%11 = and i32 %10, 1`
  - comparisons: `%8 = icmp ugt i32 %7, 0`
  - control flow: `br label %6`
  - loop: `llvm.loop metadata`
  - memory/pointer: `%3 = alloca i32, align 4`
  - aggregates: `%"class.std::ios_base::Init" = type { i8 }`
  - UB-related: `define dso_local noundef i32 @_Z6f_goldjj(i32 noundef %0, i32 noundef %1) #4 {`
  - globals: `@_ZStL8__ioinit = internal global %"class.std::ios_base::Init" zeroinitializer, align 1`
  - external declarations: `declare void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1)) unnamed_addr #1`

## O1

- Status: ok
- Features: integer arithmetic, bitwise/shift, comparisons, control flow, loop, aggregates, UB-related, globals, external declarations
- Evidence:
  - integer arithmetic: `%11 = add i32 %10, %5`
  - bitwise/shift: `%8 = and i32 %6, 1`
  - comparisons: `%3 = icmp eq i32 %1, 0`
  - control flow: `br i1 %3, label %15, label %4`
  - loop: `llvm.loop metadata`
  - aggregates: `%"class.std::ios_base::Init" = type { i8 }`
  - UB-related: `define dso_local noundef i32 @_Z6f_goldjj(i32 noundef %0, i32 noundef %1) local_unnamed_addr #3 {`
  - globals: `@_ZStL8__ioinit = internal global %"class.std::ios_base::Init" zeroinitializer, align 1`
  - external declarations: `declare void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1)) unnamed_addr #0`

## O2

- Status: ok
- Features: integer arithmetic, bitwise/shift, comparisons, control flow, loop, aggregates, UB-related, globals, external declarations
- Evidence:
  - integer arithmetic: `%11 = add i32 %10, %5`
  - bitwise/shift: `%8 = and i32 %6, 1`
  - comparisons: `%3 = icmp eq i32 %1, 0`
  - control flow: `br i1 %3, label %15, label %4`
  - loop: `llvm.loop metadata`
  - aggregates: `%"class.std::ios_base::Init" = type { i8 }`
  - UB-related: `define dso_local noundef i32 @_Z6f_goldjj(i32 noundef %0, i32 noundef %1) local_unnamed_addr #3 {`
  - globals: `@_ZStL8__ioinit = internal global %"class.std::ios_base::Init" zeroinitializer, align 1`
  - external declarations: `declare void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1)) unnamed_addr #0`

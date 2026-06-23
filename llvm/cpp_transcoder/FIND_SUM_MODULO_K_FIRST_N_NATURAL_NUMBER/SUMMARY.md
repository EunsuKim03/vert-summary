# cpp_transcoder/FIND_SUM_MODULO_K_FIRST_N_NATURAL_NUMBER

- Source: `FIND_SUM_MODULO_K_FIRST_N_NATURAL_NUMBER_processed.cpp`
- Source note: processed source

## O0

- Status: ok
- Features: integer arithmetic, comparisons, control flow, loop, memory/pointer, aggregates, UB-related, globals, external declarations
- Evidence:
  - integer arithmetic: `%14 = srem i32 %12, %13`
  - comparisons: `%10 = icmp sle i32 %8, %9`
  - control flow: `br label %7`
  - loop: `llvm.loop metadata`
  - memory/pointer: `%3 = alloca i32, align 4`
  - aggregates: `%"class.std::ios_base::Init" = type { i8 }`
  - UB-related: `define dso_local noundef i32 @_Z6f_goldii(i32 noundef %0, i32 noundef %1) #4 {`
  - globals: `@_ZStL8__ioinit = internal global %"class.std::ios_base::Init" zeroinitializer, align 1`
  - external declarations: `declare void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1)) unnamed_addr #1`

## O1

- Status: ok
- Features: integer arithmetic, comparisons, control flow, loop, aggregates, UB-related, globals, external declarations
- Evidence:
  - integer arithmetic: `%9 = srem i32 %7, %1`
  - comparisons: `%3 = icmp slt i32 %0, 1`
  - control flow: `br i1 %3, label %4, label %6`
  - loop: `llvm.loop metadata`
  - aggregates: `%"class.std::ios_base::Init" = type { i8 }`
  - UB-related: `define dso_local noundef i32 @_Z6f_goldii(i32 noundef %0, i32 noundef %1) local_unnamed_addr #3 {`
  - globals: `@_ZStL8__ioinit = internal global %"class.std::ios_base::Init" zeroinitializer, align 1`
  - external declarations: `declare void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1)) unnamed_addr #0`

## O2

- Status: ok
- Features: integer arithmetic, bitwise/shift, comparisons, control flow, loop, aggregates, UB-related, globals, external declarations
- Evidence:
  - integer arithmetic: `%5 = add i32 %0, -1`
  - bitwise/shift: `%6 = and i32 %0, 3`
  - comparisons: `%3 = icmp slt i32 %0, 1`
  - control flow: `br i1 %3, label %24, label %4`
  - loop: `llvm.loop metadata`
  - aggregates: `%"class.std::ios_base::Init" = type { i8 }`
  - UB-related: `define dso_local noundef i32 @_Z6f_goldii(i32 noundef %0, i32 noundef %1) local_unnamed_addr #3 {`
  - globals: `@_ZStL8__ioinit = internal global %"class.std::ios_base::Init" zeroinitializer, align 1`
  - external declarations: `declare void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1)) unnamed_addr #0`

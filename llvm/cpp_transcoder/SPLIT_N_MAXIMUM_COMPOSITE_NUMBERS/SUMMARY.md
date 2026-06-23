# cpp_transcoder/SPLIT_N_MAXIMUM_COMPOSITE_NUMBERS

- Source: `SPLIT_N_MAXIMUM_COMPOSITE_NUMBERS_processed.cpp`
- Source note: processed source

## O0

- Status: ok
- Features: integer arithmetic, comparisons, control flow, unreachable, memory/pointer, calls/intrinsics, aggregates, UB-related, globals, external declarations
- Compiler messages:
  - `benchmark/cpp_transcoder/SPLIT_N_MAXIMUM_COMPOSITE_NUMBERS/SPLIT_N_MAXIMUM_COMPOSITE_NUMBERS_processed.cpp:23:1: warning: non-void function does not return a value in all control p`
  - `}`
  - `^`
  - `1 warning generated.`
- Evidence:
  - integer arithmetic: `%10 = srem i32 %9, 4`
  - comparisons: `%6 = icmp slt i32 %5, 4`
  - control flow: `br i1 %6, label %7, label %8`
  - unreachable: `unreachable`
  - memory/pointer: `%2 = alloca i32, align 4`
  - calls/intrinsics: `call void @llvm.trap()`
  - aggregates: `%"class.std::ios_base::Init" = type { i8 }`
  - UB-related: `define dso_local noundef i32 @_Z6f_goldi(i32 noundef %0) #4 {`
  - globals: `@_ZStL8__ioinit = internal global %"class.std::ios_base::Init" zeroinitializer, align 1`
  - external declarations: `declare void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1)) unnamed_addr #1`

## O1

- Status: ok
- Features: integer arithmetic, comparisons, control flow, aggregates, UB-related, globals, external declarations
- Compiler messages:
  - `benchmark/cpp_transcoder/SPLIT_N_MAXIMUM_COMPOSITE_NUMBERS/SPLIT_N_MAXIMUM_COMPOSITE_NUMBERS_processed.cpp:23:1: warning: non-void function does not return a value in all control p`
  - `}`
  - `^`
  - `1 warning generated.`
- Evidence:
  - integer arithmetic: `%4 = srem i32 %0, 4`
  - comparisons: `%2 = icmp slt i32 %0, 4`
  - control flow: `br i1 %2, label %22, label %3`
  - aggregates: `%"class.std::ios_base::Init" = type { i8 }`
  - UB-related: `define dso_local noundef i32 @_Z6f_goldi(i32 noundef %0) local_unnamed_addr #3 {`
  - globals: `@_ZStL8__ioinit = internal global %"class.std::ios_base::Init" zeroinitializer, align 1`
  - external declarations: `declare void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1)) unnamed_addr #0`

## O2

- Status: ok
- Features: integer arithmetic, bitwise/shift, comparisons, control flow, aggregates, UB-related, globals, external declarations
- Compiler messages:
  - `benchmark/cpp_transcoder/SPLIT_N_MAXIMUM_COMPOSITE_NUMBERS/SPLIT_N_MAXIMUM_COMPOSITE_NUMBERS_processed.cpp:23:1: warning: non-void function does not return a value in all control p`
  - `}`
  - `^`
  - `1 warning generated.`
- Evidence:
  - integer arithmetic: `%10 = add nsw i32 %0, -9`
  - bitwise/shift: `%4 = and i32 %0, 3`
  - comparisons: `%2 = icmp slt i32 %0, 4`
  - control flow: `br i1 %2, label %23, label %3`
  - aggregates: `%"class.std::ios_base::Init" = type { i8 }`
  - UB-related: `define dso_local noundef i32 @_Z6f_goldi(i32 noundef %0) local_unnamed_addr #3 {`
  - globals: `@_ZStL8__ioinit = internal global %"class.std::ios_base::Init" zeroinitializer, align 1`
  - external declarations: `declare void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1)) unnamed_addr #0`

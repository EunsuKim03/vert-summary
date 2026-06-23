# cpp_transcoder/SMALLEST_OF_THREE_INTEGERS_WITHOUT_COMPARISON_OPERATORS

- Source: `SMALLEST_OF_THREE_INTEGERS_WITHOUT_COMPARISON_OPERATORS_processed.cpp`
- Source note: processed source

## O0

- Status: ok
- Features: integer arithmetic, comparisons, control flow, loop, memory/pointer, aggregates, UB-related, globals, external declarations
- Evidence:
  - integer arithmetic: `%21 = add nsw i32 %20, -1`
  - comparisons: `%10 = icmp ne i32 %9, 0`
  - control flow: `br label %8`
  - loop: `llvm.loop metadata`
  - memory/pointer: `%4 = alloca i32, align 4`
  - aggregates: `%"class.std::ios_base::Init" = type { i8 }`
  - UB-related: `define dso_local noundef i32 @_Z6f_goldiii(i32 noundef %0, i32 noundef %1, i32 noundef %2) #4 {`
  - globals: `@_ZStL8__ioinit = internal global %"class.std::ios_base::Init" zeroinitializer, align 1`
  - external declarations: `declare void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1)) unnamed_addr #1`

## O1

- Status: ok
- Features: integer arithmetic, bitwise/shift, comparisons, control flow, calls/intrinsics, aggregates, UB-related, globals, external declarations
- Evidence:
  - integer arithmetic: `%10 = add i32 %0, -1`
  - bitwise/shift: `%6 = and i1 %4, %5`
  - comparisons: `%4 = icmp ne i32 %0, 0`
  - control flow: `br i1 %8, label %9, label %20`
  - calls/intrinsics: `%16 = call i32 @llvm.umin.i32(i32 %15, i32 %11)`
  - aggregates: `%"class.std::ios_base::Init" = type { i8 }`
  - UB-related: `define dso_local noundef i32 @_Z6f_goldiii(i32 noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #3 {`
  - globals: `@_ZStL8__ioinit = internal global %"class.std::ios_base::Init" zeroinitializer, align 1`
  - external declarations: `declare void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1)) unnamed_addr #0`

## O2

- Status: ok
- Features: integer arithmetic, bitwise/shift, comparisons, control flow, calls/intrinsics, aggregates, UB-related, globals, external declarations
- Evidence:
  - integer arithmetic: `%10 = add i32 %0, -1`
  - bitwise/shift: `%6 = and i1 %4, %5`
  - comparisons: `%4 = icmp ne i32 %0, 0`
  - control flow: `br i1 %8, label %9, label %20`
  - calls/intrinsics: `%16 = call i32 @llvm.umin.i32(i32 %12, i32 %11)`
  - aggregates: `%"class.std::ios_base::Init" = type { i8 }`
  - UB-related: `define dso_local noundef i32 @_Z6f_goldiii(i32 noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #3 {`
  - globals: `@_ZStL8__ioinit = internal global %"class.std::ios_base::Init" zeroinitializer, align 1`
  - external declarations: `declare void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1)) unnamed_addr #0`

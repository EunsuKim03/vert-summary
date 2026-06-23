# cpp_transcoder/COUNT_FREQUENCY_K_MATRIX_SIZE_N_MATRIXI_J_IJ

- Source: `COUNT_FREQUENCY_K_MATRIX_SIZE_N_MATRIXI_J_IJ_processed.cpp`
- Source note: processed source

## O0

- Status: ok
- Features: integer arithmetic, comparisons, control flow, memory/pointer, aggregates, UB-related, globals, external declarations
- Evidence:
  - integer arithmetic: `%7 = add nsw i32 %6, 1`
  - comparisons: `%9 = icmp sge i32 %7, %8`
  - control flow: `br i1 %9, label %10, label %13`
  - memory/pointer: `%3 = alloca i32, align 4`
  - aggregates: `%"class.std::ios_base::Init" = type { i8 }`
  - UB-related: `define dso_local noundef i32 @_Z6f_goldii(i32 noundef %0, i32 noundef %1) #4 {`
  - globals: `@_ZStL8__ioinit = internal global %"class.std::ios_base::Init" zeroinitializer, align 1`
  - external declarations: `declare void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1)) unnamed_addr #1`

## O1

- Status: ok
- Features: integer arithmetic, bitwise/shift, comparisons, control flow, aggregates, UB-related, globals, external declarations
- Evidence:
  - integer arithmetic: `%3 = add nsw i32 %0, 1`
  - bitwise/shift: `%6 = shl nsw i32 %0, 1`
  - comparisons: `%4 = icmp slt i32 %3, %1`
  - control flow: `%9 = select i1 %4, i32 %8, i32 %5`
  - aggregates: `%"class.std::ios_base::Init" = type { i8 }`
  - UB-related: `define dso_local noundef i32 @_Z6f_goldii(i32 noundef %0, i32 noundef %1) local_unnamed_addr #3 {`
  - globals: `@_ZStL8__ioinit = internal global %"class.std::ios_base::Init" zeroinitializer, align 1`
  - external declarations: `declare void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1)) unnamed_addr #0`

## O2

- Status: ok
- Features: integer arithmetic, bitwise/shift, comparisons, control flow, aggregates, UB-related, globals, external declarations
- Evidence:
  - integer arithmetic: `%3 = add nsw i32 %0, 1`
  - bitwise/shift: `%6 = shl nsw i32 %0, 1`
  - comparisons: `%4 = icmp slt i32 %3, %1`
  - control flow: `%9 = select i1 %4, i32 %8, i32 %5`
  - aggregates: `%"class.std::ios_base::Init" = type { i8 }`
  - UB-related: `define dso_local noundef i32 @_Z6f_goldii(i32 noundef %0, i32 noundef %1) local_unnamed_addr #3 {`
  - globals: `@_ZStL8__ioinit = internal global %"class.std::ios_base::Init" zeroinitializer, align 1`
  - external declarations: `declare void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1)) unnamed_addr #0`

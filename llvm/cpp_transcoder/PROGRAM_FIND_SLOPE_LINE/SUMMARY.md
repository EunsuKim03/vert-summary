# cpp_transcoder/PROGRAM_FIND_SLOPE_LINE

- Source: `PROGRAM_FIND_SLOPE_LINE_processed.cpp`
- Source note: processed source

## O0

- Status: ok
- Features: floating-point arithmetic, control flow, memory/pointer, aggregates, UB-related, globals, external declarations
- Evidence:
  - floating-point arithmetic: `%11 = fsub float %9, %10`
  - control flow: `ret float %15`
  - memory/pointer: `%5 = alloca float, align 4`
  - aggregates: `%"class.std::ios_base::Init" = type { i8 }`
  - UB-related: `define dso_local noundef float @_Z6f_goldffff(float noundef %0, float noundef %1, float noundef %2, float noundef %3) #4 {`
  - globals: `@_ZStL8__ioinit = internal global %"class.std::ios_base::Init" zeroinitializer, align 1`
  - external declarations: `declare void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1)) unnamed_addr #1`

## O1

- Status: ok
- Features: floating-point arithmetic, control flow, aggregates, UB-related, globals, external declarations
- Evidence:
  - floating-point arithmetic: `%5 = fsub float %3, %1`
  - control flow: `ret float %7`
  - aggregates: `%"class.std::ios_base::Init" = type { i8 }`
  - UB-related: `define dso_local noundef float @_Z6f_goldffff(float noundef %0, float noundef %1, float noundef %2, float noundef %3) local_unnamed_addr #3 {`
  - globals: `@_ZStL8__ioinit = internal global %"class.std::ios_base::Init" zeroinitializer, align 1`
  - external declarations: `declare void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1)) unnamed_addr #0`

## O2

- Status: ok
- Features: floating-point arithmetic, control flow, aggregates, UB-related, globals, external declarations
- Evidence:
  - floating-point arithmetic: `%5 = fsub float %3, %1`
  - control flow: `ret float %7`
  - aggregates: `%"class.std::ios_base::Init" = type { i8 }`
  - UB-related: `define dso_local noundef float @_Z6f_goldffff(float noundef %0, float noundef %1, float noundef %2, float noundef %3) local_unnamed_addr #3 {`
  - globals: `@_ZStL8__ioinit = internal global %"class.std::ios_base::Init" zeroinitializer, align 1`
  - external declarations: `declare void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1)) unnamed_addr #0`

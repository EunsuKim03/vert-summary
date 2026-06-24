# cpp_transcoder/PROGRAM_CALCULATE_VOLUME_ELLIPSOID

- Source: `PROGRAM_CALCULATE_VOLUME_ELLIPSOID_processed.cpp`
- Source note: processed source

## O0

- Status: ok
- Features:
  - floating-point arithmetic
  - control flow
  - memory/pointer
  - casts/conversions
  - aggregates
  - UB-related
  - globals
  - external declarations
- Evidence:
  - floating-point arithmetic: `%10 = fmul double 1.330000e+00, %9`
  - control flow: `ret float %20`
  - memory/pointer: `%4 = alloca float, align 4`
  - casts/conversions: `%9 = fpext float %8 to double`
  - aggregates: `%"class.std::ios_base::Init" = type { i8 }`
  - UB-related: `define dso_local noundef float @_Z6f_goldfff(float noundef %0, float noundef %1, float noundef %2) #4 {`
  - globals: `@_ZStL8__ioinit = internal global %"class.std::ios_base::Init" zeroinitializer, align 1`
  - external declarations: `declare void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1)) unnamed_addr #1`

## O1

- Status: ok
- Features:
  - floating-point arithmetic
  - control flow
  - casts/conversions
  - aggregates
  - UB-related
  - globals
  - external declarations
- Evidence:
  - floating-point arithmetic: `%5 = fmul double %4, 0x4010B46DCF333333`
  - control flow: `ret float %10`
  - casts/conversions: `%4 = fpext float %0 to double`
  - aggregates: `%"class.std::ios_base::Init" = type { i8 }`
  - UB-related: `define dso_local noundef float @_Z6f_goldfff(float noundef %0, float noundef %1, float noundef %2) local_unnamed_addr #3 {`
  - globals: `@_ZStL8__ioinit = internal global %"class.std::ios_base::Init" zeroinitializer, align 1`
  - external declarations: `declare void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1)) unnamed_addr #0`

## O2

- Status: ok
- Features:
  - floating-point arithmetic
  - control flow
  - casts/conversions
  - aggregates
  - UB-related
  - globals
  - external declarations
- Evidence:
  - floating-point arithmetic: `%5 = fmul double %4, 0x4010B46DCF333333`
  - control flow: `ret float %10`
  - casts/conversions: `%4 = fpext float %0 to double`
  - aggregates: `%"class.std::ios_base::Init" = type { i8 }`
  - UB-related: `define dso_local noundef float @_Z6f_goldfff(float noundef %0, float noundef %1, float noundef %2) local_unnamed_addr #3 {`
  - globals: `@_ZStL8__ioinit = internal global %"class.std::ios_base::Init" zeroinitializer, align 1`
  - external declarations: `declare void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1)) unnamed_addr #0`

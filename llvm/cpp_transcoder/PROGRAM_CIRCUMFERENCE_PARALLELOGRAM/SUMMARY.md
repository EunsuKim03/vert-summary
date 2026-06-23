# cpp_transcoder/PROGRAM_CIRCUMFERENCE_PARALLELOGRAM

- Source: `PROGRAM_CIRCUMFERENCE_PARALLELOGRAM_processed.cpp`
- Source note: processed source

## O0

- Status: ok
- Features: floating-point arithmetic, control flow, memory/pointer, calls/intrinsics, aggregates, UB-related, globals, external declarations
- Evidence:
  - floating-point arithmetic: `%7 = fmul float 2.000000e+00, %6`
  - control flow: `ret float %8`
  - memory/pointer: `%3 = alloca float, align 4`
  - calls/intrinsics: `%8 = call float @llvm.fmuladd.f32(float 2.000000e+00, float %5, float %7)`
  - aggregates: `%"class.std::ios_base::Init" = type { i8 }`
  - UB-related: `define dso_local noundef float @_Z6f_goldff(float noundef %0, float noundef %1) #4 {`
  - globals: `@_ZStL8__ioinit = internal global %"class.std::ios_base::Init" zeroinitializer, align 1`
  - external declarations: `declare void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1)) unnamed_addr #1`

## O1

- Status: ok
- Features: floating-point arithmetic, control flow, calls/intrinsics, aggregates, UB-related, globals, external declarations
- Evidence:
  - floating-point arithmetic: `%3 = fmul float %1, 2.000000e+00`
  - control flow: `ret float %4`
  - calls/intrinsics: `%4 = call float @llvm.fmuladd.f32(float %0, float 2.000000e+00, float %3)`
  - aggregates: `%"class.std::ios_base::Init" = type { i8 }`
  - UB-related: `define dso_local noundef float @_Z6f_goldff(float noundef %0, float noundef %1) local_unnamed_addr #3 {`
  - globals: `@_ZStL8__ioinit = internal global %"class.std::ios_base::Init" zeroinitializer, align 1`
  - external declarations: `declare void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1)) unnamed_addr #0`

## O2

- Status: ok
- Features: floating-point arithmetic, control flow, calls/intrinsics, aggregates, UB-related, globals, external declarations
- Evidence:
  - floating-point arithmetic: `%3 = fmul float %1, 2.000000e+00`
  - control flow: `ret float %4`
  - calls/intrinsics: `%4 = tail call float @llvm.fmuladd.f32(float %0, float 2.000000e+00, float %3)`
  - aggregates: `%"class.std::ios_base::Init" = type { i8 }`
  - UB-related: `define dso_local noundef float @_Z6f_goldff(float noundef %0, float noundef %1) local_unnamed_addr #3 {`
  - globals: `@_ZStL8__ioinit = internal global %"class.std::ios_base::Init" zeroinitializer, align 1`
  - external declarations: `declare void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1)) unnamed_addr #0`

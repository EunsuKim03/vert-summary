# cpp_transcoder/MAXIMIZE_VOLUME_CUBOID_GIVEN_SUM_SIDES

- Source: `MAXIMIZE_VOLUME_CUBOID_GIVEN_SUM_SIDES_processed.cpp`
- Source note: processed source

## O0

- Status: ok
- Features: integer arithmetic, comparisons, control flow, loop, memory/pointer, calls/intrinsics, aggregates, UB-related, globals, external declarations
- Evidence:
  - integer arithmetic: `%11 = sub nsw i32 %10, 2`
  - comparisons: `%12 = icmp sle i32 %9, %11`
  - control flow: `br label %8`
  - loop: `llvm.loop metadata`
  - memory/pointer: `%2 = alloca i32, align 4`
  - calls/intrinsics: `%30 = call noundef nonnull align 4 dereferenceable(4) i32* @_ZSt3maxIiERKT_S2_S2_(i32* noundef nonnull align 4 dereferenceable(4) %3, i32* noundef nonnull align 4 dereferenceable(4`
  - aggregates: `%"class.std::ios_base::Init" = type { i8 }`
  - UB-related: `define dso_local noundef i32 @_Z6f_goldi(i32 noundef %0) #4 {`
  - globals: `@_ZStL8__ioinit = internal global %"class.std::ios_base::Init" zeroinitializer, align 1`
  - external declarations: `declare void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1)) unnamed_addr #1`

## O1

- Status: ok
- Features: integer arithmetic, comparisons, control flow, loop, aggregates, UB-related, globals, external declarations
- Evidence:
  - integer arithmetic: `%4 = add i32 %0, -1`
  - comparisons: `%2 = icmp slt i32 %0, 3`
  - control flow: `br i1 %2, label %8, label %3`
  - loop: `llvm.loop metadata`
  - aggregates: `%"class.std::ios_base::Init" = type { i8 }`
  - UB-related: `define dso_local noundef i32 @_Z6f_goldi(i32 noundef %0) local_unnamed_addr #3 {`
  - globals: `@_ZStL8__ioinit = internal global %"class.std::ios_base::Init" zeroinitializer, align 1`
  - external declarations: `declare void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1)) unnamed_addr #0`

## O2

- Status: ok
- Features: integer arithmetic, bitwise/shift, comparisons, control flow, loop, calls/intrinsics, aggregates, vector/SIMD, UB-related, globals, external declarations
- Evidence:
  - integer arithmetic: `%4 = add i32 %0, -1`
  - bitwise/shift: `%6 = and i32 %4, -8`
  - comparisons: `%2 = icmp slt i32 %0, 3`
  - control flow: `br i1 %2, label %51, label %3`
  - loop: `llvm.loop metadata`
  - calls/intrinsics: `%47 = call i32 @llvm.vector.reduce.smax.v4i32(<4 x i32> %46)`
  - aggregates: `%"class.std::ios_base::Init" = type { i8 }`
  - vector/SIMD: `%8 = insertelement <4 x i32> poison, i32 %0, i64 0`
  - UB-related: `define dso_local noundef i32 @_Z6f_goldi(i32 noundef %0) local_unnamed_addr #3 {`
  - globals: `@_ZStL8__ioinit = internal global %"class.std::ios_base::Init" zeroinitializer, align 1`
  - external declarations: `declare void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1)) unnamed_addr #0`

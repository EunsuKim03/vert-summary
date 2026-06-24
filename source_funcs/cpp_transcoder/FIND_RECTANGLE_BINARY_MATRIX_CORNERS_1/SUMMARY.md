# cpp_transcoder/FIND_RECTANGLE_BINARY_MATRIX_CORNERS_1

- Source: `FIND_RECTANGLE_BINARY_MATRIX_CORNERS_1_processed.cpp`
- Source note: processed source

## O0

- Status: ok
- Features:
  - integer arithmetic
  - comparisons
  - control flow
  - loop
  - memory/pointer
  - casts/conversions
  - calls/intrinsics
  - aggregates
  - UB-related
  - globals
  - external declarations
- Evidence:
  - integer arithmetic: `%42 = add nsw i32 %41, 1`
  - comparisons: `%14 = icmp eq i32 %13, 0`
  - control flow: `br i1 %14, label %15, label %16`
  - loop: `llvm.loop metadata`
  - memory/pointer: `%2 = alloca i32, align 4`
  - casts/conversions: `%12 = trunc i64 %11 to i32`
  - calls/intrinsics: `%11 = call noundef i64 @_ZNKSt6vectorIS_IiSaIiEESaIS1_EE4sizeEv(%"class.std::vector"* noundef nonnull align 8 dereferenceable(24) %10) #3`
  - aggregates: `%"class.std::ios_base::Init" = type { i8 }`
  - UB-related: `define dso_local noundef i32 @_Z6f_goldRKSt6vectorIS_IiSaIiEESaIS1_EE(%"class.std::vector"* noundef nonnull align 8 dereferenceable(24) %0) #4 {`
  - globals: `@_ZStL8__ioinit = internal global %"class.std::ios_base::Init" zeroinitializer, align 1`
  - external declarations: `declare void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1)) unnamed_addr #1`

## O1

- Status: ok
- Features:
  - integer arithmetic
  - bitwise/shift
  - comparisons
  - control flow
  - loop
  - memory/pointer
  - casts/conversions
  - aggregates
  - UB-related
  - globals
  - external declarations
- Evidence:
  - integer arithmetic: `%8 = sub i64 %6, %7`
  - bitwise/shift: `%20 = lshr exact i64 %19, 2`
  - comparisons: `%11 = icmp eq i32 %10, 0`
  - control flow: `br i1 %11, label %93, label %12`
  - loop: `llvm.loop metadata`
  - memory/pointer: `%2 = getelementptr inbounds %"class.std::vector", %"class.std::vector"* %0, i64 0, i32 0, i32 0, i32 0, i32 1`
  - casts/conversions: `%6 = ptrtoint %"class.std::vector.0"* %3 to i64`
  - aggregates: `%"class.std::ios_base::Init" = type { i8 }`
  - UB-related: `define dso_local noundef i32 @_Z6f_goldRKSt6vectorIS_IiSaIiEESaIS1_EE(%"class.std::vector"* nocapture noundef nonnull readonly align 8 dereferenceable(24) %0) local_unnamed_addr #3`
  - globals: `@_ZStL8__ioinit = internal global %"class.std::ios_base::Init" zeroinitializer, align 1`
  - external declarations: `declare void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1)) unnamed_addr #0`

## O2

- Status: ok
- Features:
  - integer arithmetic
  - bitwise/shift
  - comparisons
  - control flow
  - loop
  - memory/pointer
  - casts/conversions
  - aggregates
  - UB-related
  - globals
  - external declarations
- Evidence:
  - integer arithmetic: `%8 = sub i64 %6, %7`
  - bitwise/shift: `%20 = lshr exact i64 %19, 2`
  - comparisons: `%11 = icmp eq i32 %10, 0`
  - control flow: `br i1 %11, label %82, label %12`
  - loop: `llvm.loop metadata`
  - memory/pointer: `%2 = getelementptr inbounds %"class.std::vector", %"class.std::vector"* %0, i64 0, i32 0, i32 0, i32 0, i32 1`
  - casts/conversions: `%6 = ptrtoint %"class.std::vector.0"* %3 to i64`
  - aggregates: `%"class.std::ios_base::Init" = type { i8 }`
  - UB-related: `define dso_local noundef i32 @_Z6f_goldRKSt6vectorIS_IiSaIiEESaIS1_EE(%"class.std::vector"* nocapture noundef nonnull readonly align 8 dereferenceable(24) %0) local_unnamed_addr #3`
  - globals: `@_ZStL8__ioinit = internal global %"class.std::ios_base::Init" zeroinitializer, align 1`
  - external declarations: `declare void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1)) unnamed_addr #0`

# cpp_transcoder/PROGRAM_COUNT_OCCURRENCE_GIVEN_CHARACTER_STRING

- Source: `PROGRAM_COUNT_OCCURRENCE_GIVEN_CHARACTER_STRING_processed.cpp`
- Source note: processed source

## O0

- Status: ok
- Features: integer arithmetic, comparisons, control flow, loop, memory/pointer, casts/conversions, calls/intrinsics, aggregates, UB-related, globals, external declarations
- Evidence:
  - integer arithmetic: `%22 = add nsw i32 %21, 1`
  - comparisons: `%10 = icmp ult i64 %8, %9`
  - control flow: `br label %6`
  - loop: `llvm.loop metadata`
  - memory/pointer: `%3 = alloca i8, align 1`
  - casts/conversions: `%8 = sext i32 %7 to i64`
  - calls/intrinsics: `%9 = call noundef i64 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6lengthEv(%"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32) %0) #3`
  - aggregates: `%"class.std::ios_base::Init" = type { i8 }`
  - UB-related: `define dso_local noundef i32 @_Z6f_goldNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEc(%"class.std::__cxx11::basic_string"* noundef %0, i8 noundef signext %1) #4 {`
  - globals: `@_ZStL8__ioinit = internal global %"class.std::ios_base::Init" zeroinitializer, align 1`
  - external declarations: `declare void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1)) unnamed_addr #1`

## O1

- Status: ok
- Features: integer arithmetic, comparisons, control flow, loop, memory/pointer, casts/conversions, aggregates, UB-related, globals, external declarations
- Evidence:
  - integer arithmetic: `%18 = add nuw nsw i32 %13, %17`
  - comparisons: `%5 = icmp eq i64 %4, 0`
  - control flow: `br i1 %5, label %9, label %6`
  - loop: `llvm.loop metadata`
  - memory/pointer: `%3 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %0, i64 0, i32 1`
  - casts/conversions: `%17 = zext i1 %16 to i32`
  - aggregates: `%"class.std::ios_base::Init" = type { i8 }`
  - UB-related: `define dso_local noundef i32 @_Z6f_goldNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEc(%"class.std::__cxx11::basic_string"* nocapture noundef readonly %0, i8 noundef signext `
  - globals: `@_ZStL8__ioinit = internal global %"class.std::ios_base::Init" zeroinitializer, align 1`
  - external declarations: `declare void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1)) unnamed_addr #0`

## O2

- Status: ok
- Features: integer arithmetic, bitwise/shift, comparisons, control flow, loop, memory/pointer, casts/conversions, calls/intrinsics, aggregates, vector/SIMD, UB-related, globals, external declarations
- Evidence:
  - integer arithmetic: `%16 = add i64 %11, -8`
  - bitwise/shift: `%11 = and i64 %4, -8`
  - comparisons: `%5 = icmp eq i64 %4, 0`
  - control flow: `br i1 %5, label %85, label %6`
  - loop: `llvm.loop metadata`
  - memory/pointer: `%3 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %0, i64 0, i32 1`
  - casts/conversions: `%29 = bitcast i8* %28 to <4 x i8>*`
  - calls/intrinsics: `%80 = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %79)`
  - aggregates: `%"class.std::ios_base::Init" = type { i8 }`
  - vector/SIMD: `%12 = insertelement <4 x i8> poison, i8 %1, i64 0`
  - UB-related: `define dso_local noundef i32 @_Z6f_goldNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEc(%"class.std::__cxx11::basic_string"* nocapture noundef readonly %0, i8 noundef signext `
  - globals: `@_ZStL8__ioinit = internal global %"class.std::ios_base::Init" zeroinitializer, align 1`
  - external declarations: `declare void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1)) unnamed_addr #0`

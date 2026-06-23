# cpp_transcoder/MAXIMUM_NUMBER_CHARACTERS_TWO_CHARACTER_STRING

- Source: `MAXIMUM_NUMBER_CHARACTERS_TWO_CHARACTER_STRING_processed.cpp`
- Source note: processed source

## O0

- Status: ok
- Features: integer arithmetic, comparisons, control flow, loop, memory/pointer, casts/conversions, calls/intrinsics, aggregates, UB-related, globals, external declarations
- Evidence:
  - integer arithmetic: `%12 = sub nsw i32 %11, 1`
  - comparisons: `%13 = icmp slt i32 %10, %12`
  - control flow: `br label %9`
  - loop: `llvm.loop metadata`
  - memory/pointer: `%2 = alloca i32, align 4`
  - casts/conversions: `%8 = trunc i64 %7 to i32`
  - calls/intrinsics: `%7 = call noundef i64 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6lengthEv(%"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32) %0) #3`
  - aggregates: `%"class.std::ios_base::Init" = type { i8 }`
  - UB-related: `define dso_local noundef i32 @_Z6f_goldNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(%"class.std::__cxx11::basic_string"* noundef %0) #4 {`
  - globals: `@_ZStL8__ioinit = internal global %"class.std::ios_base::Init" zeroinitializer, align 1`
  - external declarations: `declare void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1)) unnamed_addr #1`

## O1

- Status: ok
- Features: integer arithmetic, bitwise/shift, comparisons, control flow, loop, memory/pointer, casts/conversions, calls/intrinsics, aggregates, UB-related, globals, external declarations
- Evidence:
  - integer arithmetic: `%7 = add i64 %3, 4294967295`
  - bitwise/shift: `%9 = shl i64 %3, 32`
  - comparisons: `%5 = icmp sgt i32 %4, 1`
  - control flow: `br i1 %5, label %6, label %17`
  - loop: `llvm.loop metadata`
  - memory/pointer: `%2 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %0, i64 0, i32 1`
  - casts/conversions: `%4 = trunc i64 %3 to i32`
  - calls/intrinsics: `%39 = call i32 @llvm.abs.i32(i32 %38, i1 true)`
  - aggregates: `%"class.std::ios_base::Init" = type { i8 }`
  - UB-related: `define dso_local noundef i32 @_Z6f_goldNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(%"class.std::__cxx11::basic_string"* nocapture noundef readonly %0) local_unnamed_addr #`
  - globals: `@_ZStL8__ioinit = internal global %"class.std::ios_base::Init" zeroinitializer, align 1`
  - external declarations: `declare void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1)) unnamed_addr #0`

## O2

- Status: ok
- Features: integer arithmetic, bitwise/shift, comparisons, control flow, loop, memory/pointer, casts/conversions, calls/intrinsics, aggregates, vector/SIMD, UB-related, globals, external declarations
- Evidence:
  - integer arithmetic: `%7 = add i64 %3, 4294967295`
  - bitwise/shift: `%9 = shl i64 %3, 32`
  - comparisons: `%5 = icmp sgt i32 %4, 1`
  - control flow: `br i1 %5, label %6, label %17`
  - loop: `llvm.loop metadata`
  - memory/pointer: `%2 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %0, i64 0, i32 1`
  - casts/conversions: `%4 = trunc i64 %3 to i32`
  - calls/intrinsics: `%66 = call <4 x i32> @llvm.abs.v4i32(<4 x i32> %65, i1 true)`
  - aggregates: `%"class.std::ios_base::Init" = type { i8 }`
  - vector/SIMD: `%41 = insertelement <4 x i64> poison, i64 %21, i64 0`
  - UB-related: `define dso_local noundef i32 @_Z6f_goldNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(%"class.std::__cxx11::basic_string"* nocapture noundef readonly %0) local_unnamed_addr #`
  - globals: `@_ZStL8__ioinit = internal global %"class.std::ios_base::Init" zeroinitializer, align 1`
  - external declarations: `declare void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1)) unnamed_addr #0`

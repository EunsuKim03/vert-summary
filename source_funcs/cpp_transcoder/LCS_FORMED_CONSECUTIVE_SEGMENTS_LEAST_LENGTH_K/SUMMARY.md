# cpp_transcoder/LCS_FORMED_CONSECUTIVE_SEGMENTS_LEAST_LENGTH_K

- Source: `LCS_FORMED_CONSECUTIVE_SEGMENTS_LEAST_LENGTH_K_reprocessed.cpp`
- Source note: processed source; reprocessed source: <cstring> for memset

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
  - integer arithmetic: `%21 = add nsw i32 %20, 1`
  - comparisons: `%46 = icmp sle i32 %44, %45`
  - control flow: `br label %43`
  - loop: `llvm.loop metadata`
  - memory/pointer: `%4 = alloca i32, align 4`
  - casts/conversions: `%17 = trunc i64 %16 to i32`
  - calls/intrinsics: `%16 = call noundef i64 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6lengthEv(%"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32) %1) #3`
  - aggregates: `%"class.std::ios_base::Init" = type { i8 }`
  - UB-related: `define dso_local noundef i32 @_Z6f_goldiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES4_(i32 noundef %0, %"class.std::__cxx11::basic_string"* noundef %1, %"class.std::__cxx1`
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
  - calls/intrinsics
  - aggregates
  - UB-related
  - globals
  - external declarations
- Evidence:
  - integer arithmetic: `%9 = add i64 %5, 1`
  - bitwise/shift: `%10 = and i64 %9, 4294967295`
  - comparisons: `%19 = icmp slt i32 %6, 1`
  - control flow: `br i1 %19, label %45, label %20`
  - loop: `llvm.loop metadata`
  - memory/pointer: `%4 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %1, i64 0, i32 1`
  - casts/conversions: `%6 = trunc i64 %5 to i32`
  - calls/intrinsics: `call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %16, i8 0, i64 %17, i1 false)`
  - aggregates: `%"class.std::ios_base::Init" = type { i8 }`
  - UB-related: `define dso_local noundef i32 @_Z6f_goldiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES4_(i32 noundef %0, %"class.std::__cxx11::basic_string"* nocapture noundef readonly %1, `
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
  - calls/intrinsics
  - aggregates
  - UB-related
  - globals
  - external declarations
- Evidence:
  - integer arithmetic: `%9 = add i64 %5, 1`
  - bitwise/shift: `%10 = and i64 %9, 4294967295`
  - comparisons: `%19 = icmp slt i32 %6, 1`
  - control flow: `br i1 %19, label %50, label %20`
  - loop: `llvm.loop metadata`
  - memory/pointer: `%4 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %1, i64 0, i32 1`
  - casts/conversions: `%6 = trunc i64 %5 to i32`
  - calls/intrinsics: `call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %16, i8 0, i64 %17, i1 false)`
  - aggregates: `%"class.std::ios_base::Init" = type { i8 }`
  - UB-related: `define dso_local noundef i32 @_Z6f_goldiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES4_(i32 noundef %0, %"class.std::__cxx11::basic_string"* nocapture noundef readonly %1, `
  - globals: `@_ZStL8__ioinit = internal global %"class.std::ios_base::Init" zeroinitializer, align 1`
  - external declarations: `declare void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1)) unnamed_addr #0`

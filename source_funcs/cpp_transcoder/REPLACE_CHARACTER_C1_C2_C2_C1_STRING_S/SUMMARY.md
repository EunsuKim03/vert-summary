# cpp_transcoder/REPLACE_CHARACTER_C1_C2_C2_C1_STRING_S

- Source: `REPLACE_CHARACTER_C1_C2_C2_C1_STRING_S_processed.cpp`
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
  - integer arithmetic: `%49 = add nsw i32 %48, 1`
  - comparisons: `%16 = icmp slt i32 %14, %15`
  - control flow: `br label %13`
  - loop: `llvm.loop metadata`
  - memory/pointer: `%5 = alloca i8*, align 8`
  - casts/conversions: `%10 = bitcast %"class.std::__cxx11::basic_string"* %0 to i8*`
  - calls/intrinsics: `%11 = call noundef i64 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6lengthEv(%"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32) %1) #3`
  - aggregates: `%"class.std::ios_base::Init" = type { i8 }`
  - UB-related: `define dso_local void @_Z6f_goldNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEcc(%"class.std::__cxx11::basic_string"* noalias sret(%"class.std::__cxx11::basic_string") align `
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
  - C++/exception
  - UB-related
  - globals
  - external declarations
- Evidence:
  - integer arithmetic: `%42 = add nuw nsw i64 %32, 1`
  - bitwise/shift: `%11 = and i64 %6, 4294967295`
  - comparisons: `%8 = icmp sgt i32 %7, 0`
  - control flow: `br i1 %8, label %9, label %12`
  - loop: `llvm.loop metadata`
  - memory/pointer: `%5 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %1, i64 0, i32 1`
  - casts/conversions: `%7 = trunc i64 %6 to i32`
  - calls/intrinsics: `call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) %21, i8* noundef nonnull align 8 dereferenceable(16) %18, i64 16, i1 false) #6`
  - aggregates: `%"class.std::ios_base::Init" = type { i8 }`
  - C++/exception: `define dso_local void @_Z6f_goldNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEcc(%"class.std::__cxx11::basic_string"* noalias sret(%"class.std::__cxx11::basic_string") align `
  - UB-related: `define dso_local void @_Z6f_goldNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEcc(%"class.std::__cxx11::basic_string"* noalias sret(%"class.std::__cxx11::basic_string") align `
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
  - C++/exception
  - UB-related
  - globals
  - external declarations
- Evidence:
  - integer arithmetic: `%15 = sub nsw i64 %11, %12`
  - bitwise/shift: `%11 = and i64 %6, 4294967295`
  - comparisons: `%8 = icmp sgt i32 %7, 0`
  - control flow: `br i1 %8, label %9, label %28`
  - loop: `llvm.loop metadata`
  - memory/pointer: `%5 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %1, i64 0, i32 1`
  - casts/conversions: `%7 = trunc i64 %6 to i32`
  - calls/intrinsics: `tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) %37, i8* noundef nonnull align 8 dereferenceable(16) %32, i64 16, i1 false) #6`
  - aggregates: `%"class.std::ios_base::Init" = type { i8 }`
  - C++/exception: `define dso_local void @_Z6f_goldNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEcc(%"class.std::__cxx11::basic_string"* noalias sret(%"class.std::__cxx11::basic_string") align `
  - UB-related: `define dso_local void @_Z6f_goldNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEcc(%"class.std::__cxx11::basic_string"* noalias sret(%"class.std::__cxx11::basic_string") align `
  - globals: `@_ZStL8__ioinit = internal global %"class.std::ios_base::Init" zeroinitializer, align 1`
  - external declarations: `declare void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1)) unnamed_addr #0`

# cpp_transcoder/DECODE_STRING_RECURSIVELY_ENCODED_COUNT_FOLLOWED_SUBSTRING

- Source: `DECODE_STRING_RECURSIVELY_ENCODED_COUNT_FOLLOWED_SUBSTRING_reprocessed.cpp`
- Source note: processed source; reprocessed source: <stack> for stack

## O0

- Status: ok
- Features:
  - integer arithmetic
  - bitwise/shift
  - comparisons
  - control flow
  - loop
  - unreachable
  - memory/pointer
  - casts/conversions
  - calls/intrinsics
  - aggregates
  - C++/exception
  - UB-related
  - globals
  - external declarations
- Evidence:
  - integer arithmetic: `%66 = mul nsw i32 %65, 10`
  - bitwise/shift: `%230 = xor i1 %228, true`
  - comparisons: `%28 = icmp ult i64 %26, %27`
  - control flow: `br label %24`
  - loop: `llvm.loop metadata`
  - unreachable: `unreachable`
  - memory/pointer: `define dso_local void @_Z6f_goldNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(%"class.std::__cxx11::basic_string"* noalias sret(%"class.std::__cxx11::basic_string") align 8 `
  - casts/conversions: `define dso_local void @_Z6f_goldNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(%"class.std::__cxx11::basic_string"* noalias sret(%"class.std::__cxx11::basic_string") align 8 `
  - calls/intrinsics: `call void @_ZNSt5stackIiSt5dequeIiSaIiEEEC2IS2_vEEv(%"class.std::stack"* noundef nonnull align 8 dereferenceable(80) %4)`
  - aggregates: `%79 = extractvalue { i8*, i32 } %78, 0`
  - C++/exception: `invoke void @_ZNSt5stackIcSt5dequeIcSaIcEEEC2IS2_vEEv(%"class.std::stack.3"* noundef nonnull align 8 dereferenceable(80) %5)`
  - UB-related: `define dso_local void @_Z6f_goldNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(%"class.std::__cxx11::basic_string"* noalias sret(%"class.std::__cxx11::basic_string") align 8 `
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
  - unreachable
  - memory/pointer
  - casts/conversions
  - calls/intrinsics
  - aggregates
  - C++/exception
  - UB-related
  - globals
  - external declarations
- Evidence:
  - integer arithmetic: `%124 = add i8 %123, -48`
  - bitwise/shift: `%260 = or i1 %255, %259`
  - comparisons: `%30 = icmp eq i64 %29, 0`
  - control flow: `br i1 %30, label %94, label %31`
  - loop: `llvm.loop metadata`
  - unreachable: `unreachable`
  - memory/pointer: `define dso_local void @_Z6f_goldNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(%"class.std::__cxx11::basic_string"* noalias sret(%"class.std::__cxx11::basic_string") align 8 `
  - casts/conversions: `define dso_local void @_Z6f_goldNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(%"class.std::__cxx11::basic_string"* noalias sret(%"class.std::__cxx11::basic_string") align 8 `
  - calls/intrinsics: `call void @llvm.lifetime.start.p0i8(i64 80, i8* nonnull %12) #14`
  - aggregates: `%20 = extractvalue { i8*, i32 } %19, 0`
  - C++/exception: `invoke void @_ZNSt11_Deque_baseIcSaIcEE17_M_initialize_mapEm(%"class.std::_Deque_base.5"* noundef nonnull align 8 dereferenceable(80) %15, i64 noundef 0)`
  - UB-related: `define dso_local void @_Z6f_goldNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(%"class.std::__cxx11::basic_string"* noalias sret(%"class.std::__cxx11::basic_string") align 8 `
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
  - unreachable
  - memory/pointer
  - casts/conversions
  - calls/intrinsics
  - aggregates
  - vector/SIMD
  - C++/exception
  - UB-related
  - globals
  - external declarations
- Evidence:
  - integer arithmetic: `%112 = add i8 %111, -48`
  - bitwise/shift: `%3 = lshr i64 %1, 7`
  - comparisons: `%30 = icmp eq i64 %29, 0`
  - control flow: `br i1 %30, label %73, label %31`
  - loop: `llvm.loop metadata`
  - unreachable: `unreachable`
  - memory/pointer: `define dso_local void @_Z6f_goldNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(%"class.std::__cxx11::basic_string"* noalias sret(%"class.std::__cxx11::basic_string") align 8 `
  - casts/conversions: `define dso_local void @_Z6f_goldNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(%"class.std::__cxx11::basic_string"* noalias sret(%"class.std::__cxx11::basic_string") align 8 `
  - calls/intrinsics: `call void @llvm.lifetime.start.p0i8(i64 80, i8* nonnull %12) #14`
  - aggregates: `%20 = extractvalue { i8*, i32 } %19, 0`
  - vector/SIMD: `%65 = bitcast i64* %50 to <2 x i64>*`
  - C++/exception: `invoke void @_ZNSt11_Deque_baseIcSaIcEE17_M_initialize_mapEm(%"class.std::_Deque_base.5"* noundef nonnull align 8 dereferenceable(80) %15, i64 noundef 0)`
  - UB-related: `define dso_local void @_Z6f_goldNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(%"class.std::__cxx11::basic_string"* noalias sret(%"class.std::__cxx11::basic_string") align 8 `
  - globals: `@_ZStL8__ioinit = internal global %"class.std::ios_base::Init" zeroinitializer, align 1`
  - external declarations: `declare void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1)) unnamed_addr #0`

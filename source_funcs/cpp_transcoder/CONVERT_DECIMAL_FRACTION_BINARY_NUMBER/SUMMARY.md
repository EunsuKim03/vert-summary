# cpp_transcoder/CONVERT_DECIMAL_FRACTION_BINARY_NUMBER

- Source: `CONVERT_DECIMAL_FRACTION_BINARY_NUMBER_reprocessed.cpp`
- Source note: processed source; reprocessed source: <algorithm> for reverse

## O0

- Status: ok
- Features:
  - integer arithmetic
  - bitwise/shift
  - floating-point arithmetic
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
  - integer arithmetic: `%30 = srem i32 %29, 2`
  - bitwise/shift: `%10 = xor i1 %9, true`
  - floating-point arithmetic: `%24 = fsub double %21, %23`
  - comparisons: `%27 = icmp ne i32 %26, 0`
  - control flow: `br label %25`
  - loop: `llvm.loop metadata`
  - unreachable: `unreachable`
  - memory/pointer: `define dso_local void @_Z6f_goldB5cxx11di(%"class.std::__cxx11::basic_string"* noalias sret(%"class.std::__cxx11::basic_string") align 8 %0, double noundef %1, i32 noundef %2) #4 p`
  - casts/conversions: `define dso_local void @_Z6f_goldB5cxx11di(%"class.std::__cxx11::basic_string"* noalias sret(%"class.std::__cxx11::basic_string") align 8 %0, double noundef %1, i32 noundef %2) #4 p`
  - calls/intrinsics: `call void @_ZNSaIcEC1Ev(%"class.std::allocator"* noundef nonnull align 1 dereferenceable(1) %8) #3`
  - aggregates: `%39 = extractvalue { i8*, i32 } %38, 0`
  - C++/exception: `invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(%"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32) %0, i8* noundef `
  - UB-related: `define dso_local void @_Z6f_goldB5cxx11di(%"class.std::__cxx11::basic_string"* noalias sret(%"class.std::__cxx11::basic_string") align 8 %0, double noundef %1, i32 noundef %2) #4 p`
  - globals: `@_ZStL8__ioinit = internal global %"class.std::ios_base::Init" zeroinitializer, align 1`
  - external declarations: `declare void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1)) unnamed_addr #1`

## O1

- Status: ok
- Features:
  - integer arithmetic
  - floating-point arithmetic
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
  - integer arithmetic: `%18 = srem i32 %17, 2`
  - floating-point arithmetic: `%11 = fsub double %1, %10`
  - comparisons: `%12 = icmp eq i32 %9, 0`
  - control flow: `br i1 %12, label %39, label %13`
  - loop: `llvm.loop metadata`
  - memory/pointer: `define dso_local void @_Z6f_goldB5cxx11di(%"class.std::__cxx11::basic_string"* noalias sret(%"class.std::__cxx11::basic_string") align 8 %0, double noundef %1, i32 noundef %2) loca`
  - casts/conversions: `define dso_local void @_Z6f_goldB5cxx11di(%"class.std::__cxx11::basic_string"* noalias sret(%"class.std::__cxx11::basic_string") align 8 %0, double noundef %1, i32 noundef %2) loca`
  - calls/intrinsics: `call void @_ZdlPv(i8* noundef %114) #5`
  - aggregates: `%"class.std::ios_base::Init" = type { i8 }`
  - C++/exception: `invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(%"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32) %0, i64 noundef`
  - UB-related: `define dso_local void @_Z6f_goldB5cxx11di(%"class.std::__cxx11::basic_string"* noalias sret(%"class.std::__cxx11::basic_string") align 8 %0, double noundef %1, i32 noundef %2) loca`
  - globals: `@_ZStL8__ioinit = internal global %"class.std::ios_base::Init" zeroinitializer, align 1`
  - external declarations: `declare void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1)) unnamed_addr #0`

## O2

- Status: ok
- Features:
  - integer arithmetic
  - floating-point arithmetic
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
  - integer arithmetic: `%19 = srem i32 %18, 2`
  - floating-point arithmetic: `%11 = fsub double %1, %10`
  - comparisons: `%12 = icmp eq i32 %9, 0`
  - control flow: `br i1 %12, label %62, label %13`
  - loop: `llvm.loop metadata`
  - memory/pointer: `define dso_local void @_Z6f_goldB5cxx11di(%"class.std::__cxx11::basic_string"* noalias sret(%"class.std::__cxx11::basic_string") align 8 %0, double noundef %1, i32 noundef %2) loca`
  - casts/conversions: `define dso_local void @_Z6f_goldB5cxx11di(%"class.std::__cxx11::basic_string"* noalias sret(%"class.std::__cxx11::basic_string") align 8 %0, double noundef %1, i32 noundef %2) loca`
  - calls/intrinsics: `tail call void @_ZdlPv(i8* noundef %128) #5`
  - aggregates: `%"class.std::ios_base::Init" = type { i8 }`
  - C++/exception: `invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(%"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32) %0, i64 noundef`
  - UB-related: `define dso_local void @_Z6f_goldB5cxx11di(%"class.std::__cxx11::basic_string"* noalias sret(%"class.std::__cxx11::basic_string") align 8 %0, double noundef %1, i32 noundef %2) loca`
  - globals: `@_ZStL8__ioinit = internal global %"class.std::ios_base::Init" zeroinitializer, align 1`
  - external declarations: `declare void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1)) unnamed_addr #0`

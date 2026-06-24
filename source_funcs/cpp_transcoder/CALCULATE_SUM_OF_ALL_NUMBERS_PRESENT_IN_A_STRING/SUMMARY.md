# cpp_transcoder/CALCULATE_SUM_OF_ALL_NUMBERS_PRESENT_IN_A_STRING

- Source: `CALCULATE_SUM_OF_ALL_NUMBERS_PRESENT_IN_A_STRING_processed.cpp`
- Source note: processed source

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
  - integer arithmetic: `%43 = add nsw i32 %42, %41`
  - bitwise/shift: `%10 = xor i1 %9, true`
  - comparisons: `%26 = icmp ne i32 %25, 0`
  - control flow: `br label %18`
  - loop: `llvm.loop metadata`
  - unreachable: `unreachable`
  - memory/pointer: `define dso_local noundef i32 @_Z6f_goldNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(%"class.std::__cxx11::basic_string"* noundef %0) #4 personality i8* bitcast (i32 (...)* `
  - casts/conversions: `define dso_local noundef i32 @_Z6f_goldNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(%"class.std::__cxx11::basic_string"* noundef %0) #4 personality i8* bitcast (i32 (...)* `
  - calls/intrinsics: `call void @_ZNSaIcEC1Ev(%"class.std::allocator"* noundef nonnull align 1 dereferenceable(1) %3) #3`
  - aggregates: `%33 = extractvalue { i8*, i32 } %32, 0`
  - C++/exception: `invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(%"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32) %2, i8* noundef `
  - UB-related: `define dso_local noundef i32 @_Z6f_goldNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(%"class.std::__cxx11::basic_string"* noundef %0) #4 personality i8* bitcast (i32 (...)* `
  - globals: `@_ZStL8__ioinit = internal global %"class.std::ios_base::Init" zeroinitializer, align 1`
  - external declarations: `declare void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1)) unnamed_addr #1`

## O1

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
  - C++/exception
  - UB-related
  - globals
  - external declarations
- Evidence:
  - integer arithmetic: `%28 = add nsw i32 %19, %27`
  - comparisons: `%14 = icmp eq i64 %12, 0`
  - control flow: `br i1 %14, label %18, label %15`
  - loop: `llvm.loop metadata`
  - memory/pointer: `define dso_local noundef i32 @_Z6f_goldNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(%"class.std::__cxx11::basic_string"* nocapture noundef readonly %0) local_unnamed_addr #`
  - casts/conversions: `define dso_local noundef i32 @_Z6f_goldNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(%"class.std::__cxx11::basic_string"* nocapture noundef readonly %0) local_unnamed_addr #`
  - calls/intrinsics: `call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %3) #7`
  - aggregates: `%"class.std::ios_base::Init" = type { i8 }`
  - C++/exception: `invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(%"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32) %2, i64 noundef`
  - UB-related: `define dso_local noundef i32 @_Z6f_goldNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(%"class.std::__cxx11::basic_string"* nocapture noundef readonly %0) local_unnamed_addr #`
  - globals: `@_ZStL8__ioinit = internal global %"class.std::ios_base::Init" zeroinitializer, align 1`
  - external declarations: `declare void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1)) unnamed_addr #0`

## O2

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
  - C++/exception
  - UB-related
  - globals
  - external declarations
- Evidence:
  - integer arithmetic: `%28 = add nsw i32 %21, %27`
  - comparisons: `%14 = icmp eq i64 %12, 0`
  - control flow: `br i1 %14, label %19, label %15`
  - loop: `to label %64 unwind label %52`
  - memory/pointer: `define dso_local noundef i32 @_Z6f_goldNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(%"class.std::__cxx11::basic_string"* nocapture noundef readonly %0) local_unnamed_addr #`
  - casts/conversions: `define dso_local noundef i32 @_Z6f_goldNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(%"class.std::__cxx11::basic_string"* nocapture noundef readonly %0) local_unnamed_addr #`
  - calls/intrinsics: `call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %3) #7`
  - aggregates: `%"class.std::ios_base::Init" = type { i8 }`
  - C++/exception: `invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(%"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32) %2, i64 noundef`
  - UB-related: `define dso_local noundef i32 @_Z6f_goldNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(%"class.std::__cxx11::basic_string"* nocapture noundef readonly %0) local_unnamed_addr #`
  - globals: `@_ZStL8__ioinit = internal global %"class.std::ios_base::Init" zeroinitializer, align 1`
  - external declarations: `declare void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1)) unnamed_addr #0`

# cpp_transcoder/MINIMUM_ROTATIONS_REQUIRED_GET_STRING

- Source: `MINIMUM_ROTATIONS_REQUIRED_GET_STRING_processed.cpp`
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
  - integer arithmetic: `%34 = add nsw i32 %33, 1`
  - bitwise/shift: `%20 = xor i1 %19, true`
  - comparisons: `%15 = icmp sle i32 %13, %14`
  - control flow: `br label %12`
  - loop: `llvm.loop metadata`
  - unreachable: `unreachable`
  - memory/pointer: `define dso_local noundef i32 @_Z6f_goldNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(%"class.std::__cxx11::basic_string"* noundef %0) #4 personality i8* bitcast (i32 (...)* `
  - casts/conversions: `define dso_local noundef i32 @_Z6f_goldNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(%"class.std::__cxx11::basic_string"* noundef %0) #4 personality i8* bitcast (i32 (...)* `
  - calls/intrinsics: `call void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_SA_(%"class.std::__cxx11::basic_string"* sret(%"class.std::__cxx11::basic_string") align 8 %3, %`
  - aggregates: `%26 = extractvalue { i8*, i32 } %25, 0`
  - C++/exception: `invoke void @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm(%"class.std::__cxx11::basic_string"* sret(%"class.std::__cxx11::basic_string") align 8 %6, %"class.std`
  - UB-related: `define dso_local noundef i32 @_Z6f_goldNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(%"class.std::__cxx11::basic_string"* noundef %0) #4 personality i8* bitcast (i32 (...)* `
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
  - integer arithmetic: `%23 = add i64 %7, 1`
  - bitwise/shift: `%24 = and i64 %23, 4294967295`
  - comparisons: `%9 = icmp slt i32 %8, 1`
  - control flow: `br i1 %9, label %89, label %10`
  - loop: `llvm.loop metadata`
  - unreachable: `unreachable`
  - memory/pointer: `define dso_local noundef i32 @_Z6f_goldNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(%"class.std::__cxx11::basic_string"* noundef nonnull %0) local_unnamed_addr #3 personali`
  - casts/conversions: `define dso_local noundef i32 @_Z6f_goldNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(%"class.std::__cxx11::basic_string"* noundef nonnull %0) local_unnamed_addr #3 personali`
  - calls/intrinsics: `call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %5) #10`
  - aggregates: `%"class.std::ios_base::Init" = type { i8 }`
  - C++/exception: `invoke void (i8*, ...) @_ZSt24__throw_out_of_range_fmtPKcz(i8* noundef getelementptr inbounds ([55 x i8], [55 x i8]* @.str.2, i64 0, i64 0), i8* noundef getelementptr inbounds ([21`
  - UB-related: `define dso_local noundef i32 @_Z6f_goldNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(%"class.std::__cxx11::basic_string"* noundef nonnull %0) local_unnamed_addr #3 personali`
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
  - C++/exception
  - UB-related
  - globals
  - external declarations
- Evidence:
  - integer arithmetic: `%22 = add i64 %7, 1`
  - bitwise/shift: `%23 = and i64 %22, 4294967295`
  - comparisons: `%9 = icmp slt i32 %8, 1`
  - control flow: `br i1 %9, label %94, label %10`
  - loop: `llvm.loop metadata`
  - unreachable: `unreachable`
  - memory/pointer: `define dso_local noundef i32 @_Z6f_goldNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(%"class.std::__cxx11::basic_string"* noundef nonnull %0) local_unnamed_addr #3 personali`
  - casts/conversions: `define dso_local noundef i32 @_Z6f_goldNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(%"class.std::__cxx11::basic_string"* noundef nonnull %0) local_unnamed_addr #3 personali`
  - calls/intrinsics: `call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %5) #10`
  - aggregates: `%"class.std::ios_base::Init" = type { i8 }`
  - C++/exception: `invoke void (i8*, ...) @_ZSt24__throw_out_of_range_fmtPKcz(i8* noundef getelementptr inbounds ([55 x i8], [55 x i8]* @.str.2, i64 0, i64 0), i8* noundef getelementptr inbounds ([21`
  - UB-related: `define dso_local noundef i32 @_Z6f_goldNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(%"class.std::__cxx11::basic_string"* noundef nonnull %0) local_unnamed_addr #3 personali`
  - globals: `@_ZStL8__ioinit = internal global %"class.std::ios_base::Init" zeroinitializer, align 1`
  - external declarations: `declare void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1)) unnamed_addr #0`

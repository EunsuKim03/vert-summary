# cpp_transcoder/CHECK_LARGE_NUMBER_DIVISIBLE_13_NOT

- Source: `CHECK_LARGE_NUMBER_DIVISIBLE_13_NOT_processed.cpp`
- Source note: processed source

## O0

- Status: ok
- Features: integer arithmetic, comparisons, control flow, loop, memory/pointer, casts/conversions, calls/intrinsics, aggregates, UB-related, globals, external declarations
- Evidence:
  - integer arithmetic: `%20 = srem i32 %19, 3`
  - comparisons: `%11 = icmp eq i32 %10, 1`
  - control flow: `br i1 %11, label %12, label %18`
  - loop: `llvm.loop metadata`
  - memory/pointer: `%2 = alloca i32, align 4`
  - casts/conversions: `%9 = trunc i64 %8 to i32`
  - calls/intrinsics: `%8 = call noundef i64 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4sizeEv(%"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32) %0) #3`
  - aggregates: `%"class.std::ios_base::Init" = type { i8 }`
  - UB-related: `define dso_local noundef i32 @_Z6f_goldNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(%"class.std::__cxx11::basic_string"* noundef %0) #4 {`
  - globals: `@_ZStL8__ioinit = internal global %"class.std::ios_base::Init" zeroinitializer, align 1`
  - external declarations: `declare void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1)) unnamed_addr #1`

## O1

- Status: ok
- Features: integer arithmetic, bitwise/shift, comparisons, control flow, loop, unreachable, memory/pointer, casts/conversions, calls/intrinsics, aggregates, C++/exception, UB-related, globals, external declarations
- Evidence:
  - integer arithmetic: `%12 = srem i32 %4, 3`
  - bitwise/shift: `%14 = and i64 %3, -2`
  - comparisons: `%5 = icmp eq i32 %4, 1`
  - control flow: `br i1 %5, label %6, label %11`
  - loop: `llvm.loop metadata`
  - unreachable: `unreachable`
  - memory/pointer: `%2 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %0, i64 0, i32 1`
  - casts/conversions: `%4 = trunc i64 %3 to i32`
  - calls/intrinsics: `call void @_ZSt20__throw_length_errorPKc(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0)) #7`
  - aggregates: `%"class.std::ios_base::Init" = type { i8 }`
  - C++/exception: `define dso_local noundef i32 @_Z6f_goldNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(%"class.std::__cxx11::basic_string"* noundef %0) local_unnamed_addr #3 personality i32 (`
  - UB-related: `define dso_local noundef i32 @_Z6f_goldNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(%"class.std::__cxx11::basic_string"* noundef %0) local_unnamed_addr #3 personality i32 (`
  - globals: `@_ZStL8__ioinit = internal global %"class.std::ios_base::Init" zeroinitializer, align 1`
  - external declarations: `declare void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1)) unnamed_addr #0`

## O2

- Status: ok
- Features: integer arithmetic, bitwise/shift, comparisons, control flow, loop, unreachable, memory/pointer, casts/conversions, calls/intrinsics, aggregates, C++/exception, UB-related, globals, external declarations
- Evidence:
  - integer arithmetic: `%12 = srem i32 %4, 3`
  - bitwise/shift: `%14 = and i64 %3, -2`
  - comparisons: `%5 = icmp eq i32 %4, 1`
  - control flow: `br i1 %5, label %6, label %11`
  - loop: `llvm.loop metadata`
  - unreachable: `unreachable`
  - memory/pointer: `%2 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %0, i64 0, i32 1`
  - casts/conversions: `%4 = trunc i64 %3 to i32`
  - calls/intrinsics: `tail call void @_ZSt20__throw_length_errorPKc(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0)) #7`
  - aggregates: `%"class.std::ios_base::Init" = type { i8 }`
  - C++/exception: `define dso_local noundef i32 @_Z6f_goldNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(%"class.std::__cxx11::basic_string"* noundef %0) local_unnamed_addr #3 personality i32 (`
  - UB-related: `define dso_local noundef i32 @_Z6f_goldNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(%"class.std::__cxx11::basic_string"* noundef %0) local_unnamed_addr #3 personality i32 (`
  - globals: `@_ZStL8__ioinit = internal global %"class.std::ios_base::Init" zeroinitializer, align 1`
  - external declarations: `declare void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1)) unnamed_addr #0`

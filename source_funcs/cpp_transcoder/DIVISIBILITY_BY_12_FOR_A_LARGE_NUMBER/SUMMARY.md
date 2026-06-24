# cpp_transcoder/DIVISIBILITY_BY_12_FOR_A_LARGE_NUMBER

- Source: `DIVISIBILITY_BY_12_FOR_A_LARGE_NUMBER_processed.cpp`
- Source note: processed source

## O0

- Status: ok
- Features:
  - integer arithmetic
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
  - integer arithmetic: `%12 = sub i64 %11, 1`
  - comparisons: `%9 = icmp uge i64 %8, 3`
  - control flow: `br i1 %9, label %10, label %56`
  - loop: `llvm.loop metadata`
  - unreachable: `unreachable`
  - memory/pointer: `%2 = alloca i32, align 4`
  - casts/conversions: `%15 = sext i8 %14 to i32`
  - calls/intrinsics: `%8 = call noundef i64 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6lengthEv(%"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32) %0) #3`
  - aggregates: `%32 = extractvalue { i8*, i32 } %31, 0`
  - C++/exception: `%22 = invoke noundef i64 %19(i8* noundef %20, i8** noundef %12, i32 noundef %21)`
  - UB-related: `define dso_local noundef i32 @_Z6f_goldNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(%"class.std::__cxx11::basic_string"* noundef %0) #4 {`
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
  - integer arithmetic: `%7 = add i64 %4, -1`
  - bitwise/shift: `%13 = and i32 %12, 1`
  - comparisons: `%5 = icmp ugt i64 %4, 2`
  - control flow: `br i1 %5, label %6, label %37`
  - loop: `llvm.loop metadata`
  - unreachable: `unreachable`
  - memory/pointer: `%2 = alloca i8*, align 8`
  - casts/conversions: `%12 = zext i8 %11 to i32`
  - calls/intrinsics: `call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %40) #8`
  - aggregates: `%"class.std::ios_base::Init" = type { i8 }`
  - C++/exception: `invoke void @_ZSt24__throw_invalid_argumentPKc(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0)) #10`
  - UB-related: `define dso_local noundef i32 @_Z6f_goldNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(%"class.std::__cxx11::basic_string"* nocapture noundef readonly %0) local_unnamed_addr #`
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
  - integer arithmetic: `%7 = add i64 %4, -1`
  - bitwise/shift: `%13 = and i32 %12, 1`
  - comparisons: `%5 = icmp ugt i64 %4, 2`
  - control flow: `br i1 %5, label %6, label %104`
  - loop: `llvm.loop metadata`
  - unreachable: `unreachable`
  - memory/pointer: `%2 = alloca i8*, align 8`
  - casts/conversions: `%12 = zext i8 %11 to i32`
  - calls/intrinsics: `%81 = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %80)`
  - aggregates: `%"class.std::ios_base::Init" = type { i8 }`
  - vector/SIMD: `%32 = phi <4 x i32> [ zeroinitializer, %28 ], [ %54, %30 ]`
  - C++/exception: `invoke void @_ZSt24__throw_invalid_argumentPKc(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0)) #11`
  - UB-related: `define dso_local noundef i32 @_Z6f_goldNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(%"class.std::__cxx11::basic_string"* nocapture noundef readonly %0) local_unnamed_addr #`
  - globals: `@_ZStL8__ioinit = internal global %"class.std::ios_base::Init" zeroinitializer, align 1`
  - external declarations: `declare void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1)) unnamed_addr #0`

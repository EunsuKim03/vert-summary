# cpp_transcoder/STRING_K_DISTINCT_CHARACTERS_NO_CHARACTERS_ADJACENT

- Source: `STRING_K_DISTINCT_CHARACTERS_NO_CHARACTERS_ADJACENT_processed.cpp`
- Source note: processed source

## O0

- Status: ok
- Features: integer arithmetic, bitwise/shift, comparisons, control flow, loop, unreachable, memory/pointer, casts/conversions, calls/intrinsics, aggregates, C++/exception, UB-related, globals, external declarations
- Evidence:
  - integer arithmetic: `%24 = add nsw i32 97, %23`
  - bitwise/shift: `%10 = xor i1 %9, true`
  - comparisons: `%21 = icmp slt i32 %19, %20`
  - control flow: `br label %18`
  - loop: `llvm.loop metadata`
  - unreachable: `unreachable`
  - memory/pointer: `define dso_local void @_Z6f_goldB5cxx11ii(%"class.std::__cxx11::basic_string"* noalias sret(%"class.std::__cxx11::basic_string") align 8 %0, i32 noundef %1, i32 noundef %2) #4 pers`
  - casts/conversions: `define dso_local void @_Z6f_goldB5cxx11ii(%"class.std::__cxx11::basic_string"* noalias sret(%"class.std::__cxx11::basic_string") align 8 %0, i32 noundef %1, i32 noundef %2) #4 pers`
  - calls/intrinsics: `call void @_ZNSaIcEC1Ev(%"class.std::allocator"* noundef nonnull align 1 dereferenceable(1) %8) #3`
  - aggregates: `%33 = extractvalue { i8*, i32 } %32, 0`
  - C++/exception: `invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(%"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32) %0, i8* noundef `
  - UB-related: `define dso_local void @_Z6f_goldB5cxx11ii(%"class.std::__cxx11::basic_string"* noalias sret(%"class.std::__cxx11::basic_string") align 8 %0, i32 noundef %1, i32 noundef %2) #4 pers`
  - globals: `@_ZStL8__ioinit = internal global %"class.std::ios_base::Init" zeroinitializer, align 1`
  - external declarations: `declare void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1)) unnamed_addr #1`

## O1

- Status: ok
- Features: integer arithmetic, bitwise/shift, comparisons, control flow, loop, memory/pointer, casts/conversions, calls/intrinsics, aggregates, C++/exception, UB-related, globals, external declarations
- Evidence:
  - integer arithmetic: `%30 = sub i32 %1, %2`
  - bitwise/shift: `%99 = or i1 %94, %98`
  - comparisons: `%13 = icmp sgt i32 %2, 0`
  - control flow: `br i1 %13, label %14, label %29`
  - loop: `llvm.loop metadata`
  - memory/pointer: `define dso_local void @_Z6f_goldB5cxx11ii(%"class.std::__cxx11::basic_string"* noalias sret(%"class.std::__cxx11::basic_string") align 8 %0, i32 noundef %1, i32 noundef %2) local_u`
  - casts/conversions: `define dso_local void @_Z6f_goldB5cxx11ii(%"class.std::__cxx11::basic_string"* noalias sret(%"class.std::__cxx11::basic_string") align 8 %0, i32 noundef %1, i32 noundef %2) local_u`
  - calls/intrinsics: `call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %15) #8`
  - aggregates: `%"class.std::ios_base::Init" = type { i8 }`
  - C++/exception: `%55 = invoke noundef i8* @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(%"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32) %6, i`
  - UB-related: `define dso_local void @_Z6f_goldB5cxx11ii(%"class.std::__cxx11::basic_string"* noalias sret(%"class.std::__cxx11::basic_string") align 8 %0, i32 noundef %1, i32 noundef %2) local_u`
  - globals: `@_ZStL8__ioinit = internal global %"class.std::ios_base::Init" zeroinitializer, align 1`
  - external declarations: `declare void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1)) unnamed_addr #0`

## O2

- Status: ok
- Features: integer arithmetic, comparisons, control flow, loop, memory/pointer, casts/conversions, calls/intrinsics, aggregates, vector/SIMD, C++/exception, UB-related, globals, external declarations
- Evidence:
  - integer arithmetic: `%30 = sub i32 %1, %2`
  - comparisons: `%13 = icmp sgt i32 %2, 0`
  - control flow: `br i1 %13, label %14, label %29`
  - loop: `llvm.loop metadata`
  - memory/pointer: `define dso_local void @_Z6f_goldB5cxx11ii(%"class.std::__cxx11::basic_string"* noalias sret(%"class.std::__cxx11::basic_string") align 8 %0, i32 noundef %1, i32 noundef %2) local_u`
  - casts/conversions: `define dso_local void @_Z6f_goldB5cxx11ii(%"class.std::__cxx11::basic_string"* noalias sret(%"class.std::__cxx11::basic_string") align 8 %0, i32 noundef %1, i32 noundef %2) local_u`
  - calls/intrinsics: `call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %15) #8`
  - aggregates: `%"class.std::ios_base::Init" = type { i8 }`
  - vector/SIMD: `%25 = bitcast i64* %22 to <2 x i64>*`
  - C++/exception: `%55 = invoke noundef i8* @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(%"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32) %6, i`
  - UB-related: `define dso_local void @_Z6f_goldB5cxx11ii(%"class.std::__cxx11::basic_string"* noalias sret(%"class.std::__cxx11::basic_string") align 8 %0, i32 noundef %1, i32 noundef %2) local_u`
  - globals: `@_ZStL8__ioinit = internal global %"class.std::ios_base::Init" zeroinitializer, align 1`
  - external declarations: `declare void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1)) unnamed_addr #0`

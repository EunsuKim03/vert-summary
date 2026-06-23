# cpp_transcoder/DIVIDE_LARGE_NUMBER_REPRESENTED_STRING

- Source: `DIVIDE_LARGE_NUMBER_REPRESENTED_STRING_processed.cpp`
- Source note: processed source

## O0

- Status: ok
- Features: integer arithmetic, bitwise/shift, comparisons, control flow, loop, unreachable, memory/pointer, casts/conversions, calls/intrinsics, aggregates, C++/exception, UB-related, globals, external declarations
- Evidence:
  - integer arithmetic: `%20 = sub nsw i32 %19, 48`
  - bitwise/shift: `%10 = xor i1 %9, true`
  - comparisons: `%24 = icmp slt i32 %22, %23`
  - control flow: `br label %21`
  - loop: `llvm.loop metadata`
  - unreachable: `unreachable`
  - memory/pointer: `define dso_local void @_Z6f_goldNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi(%"class.std::__cxx11::basic_string"* noalias sret(%"class.std::__cxx11::basic_string") align 8`
  - casts/conversions: `define dso_local void @_Z6f_goldNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi(%"class.std::__cxx11::basic_string"* noalias sret(%"class.std::__cxx11::basic_string") align 8`
  - calls/intrinsics: `call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1Ev(%"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32) %6) #3`
  - aggregates: `%39 = extractvalue { i8*, i32 } %38, 0`
  - C++/exception: `%16 = invoke noundef nonnull align 1 dereferenceable(1) i8* @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEixEm(%"class.std::__cxx11::basic_string"* noundef nonnull align 8 `
  - UB-related: `define dso_local void @_Z6f_goldNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi(%"class.std::__cxx11::basic_string"* noalias sret(%"class.std::__cxx11::basic_string") align 8`
  - globals: `@_ZStL8__ioinit = internal global %"class.std::ios_base::Init" zeroinitializer, align 1`
  - external declarations: `declare void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1)) unnamed_addr #1`

## O1

- Status: ok
- Features: integer arithmetic, bitwise/shift, comparisons, control flow, loop, memory/pointer, casts/conversions, calls/intrinsics, aggregates, C++/exception, UB-related, globals, external declarations
- Evidence:
  - integer arithmetic: `%14 = add nsw i32 %13, -48`
  - bitwise/shift: `%17 = and i64 %31, 4294967295`
  - comparisons: `%15 = icmp slt i32 %14, %2`
  - control flow: `br i1 %15, label %27, label %18`
  - loop: `llvm.loop metadata`
  - memory/pointer: `define dso_local void @_Z6f_goldNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi(%"class.std::__cxx11::basic_string"* noalias sret(%"class.std::__cxx11::basic_string") align 8`
  - casts/conversions: `define dso_local void @_Z6f_goldNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi(%"class.std::__cxx11::basic_string"* noalias sret(%"class.std::__cxx11::basic_string") align 8`
  - calls/intrinsics: `call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %5) #7`
  - aggregates: `%"class.std::ios_base::Init" = type { i8 }`
  - C++/exception: `%39 = landingpad { i8*, i32 }`
  - UB-related: `define dso_local void @_Z6f_goldNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi(%"class.std::__cxx11::basic_string"* noalias sret(%"class.std::__cxx11::basic_string") align 8`
  - globals: `@_ZStL8__ioinit = internal global %"class.std::ios_base::Init" zeroinitializer, align 1`
  - external declarations: `declare void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1)) unnamed_addr #0`

## O2

- Status: ok
- Features: integer arithmetic, bitwise/shift, comparisons, control flow, loop, memory/pointer, casts/conversions, calls/intrinsics, aggregates, C++/exception, UB-related, globals, external declarations
- Evidence:
  - integer arithmetic: `%14 = add nsw i32 %13, -48`
  - bitwise/shift: `%17 = and i64 %31, 4294967295`
  - comparisons: `%15 = icmp slt i32 %14, %2`
  - control flow: `br i1 %15, label %27, label %18`
  - loop: `llvm.loop metadata`
  - memory/pointer: `define dso_local void @_Z6f_goldNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi(%"class.std::__cxx11::basic_string"* noalias sret(%"class.std::__cxx11::basic_string") align 8`
  - casts/conversions: `define dso_local void @_Z6f_goldNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi(%"class.std::__cxx11::basic_string"* noalias sret(%"class.std::__cxx11::basic_string") align 8`
  - calls/intrinsics: `call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %5) #7`
  - aggregates: `%"class.std::ios_base::Init" = type { i8 }`
  - C++/exception: `%39 = landingpad { i8*, i32 }`
  - UB-related: `define dso_local void @_Z6f_goldNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi(%"class.std::__cxx11::basic_string"* noalias sret(%"class.std::__cxx11::basic_string") align 8`
  - globals: `@_ZStL8__ioinit = internal global %"class.std::ios_base::Init" zeroinitializer, align 1`
  - external declarations: `declare void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1)) unnamed_addr #0`

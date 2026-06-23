# cpp_transcoder/STRING_CONTAINING_FIRST_LETTER_EVERY_WORD_GIVEN_STRING_SPACES

- Source: `STRING_CONTAINING_FIRST_LETTER_EVERY_WORD_GIVEN_STRING_SPACES_processed.cpp`
- Source note: processed source

## O0

- Status: ok
- Features: integer arithmetic, bitwise/shift, comparisons, control flow, loop, unreachable, memory/pointer, casts/conversions, calls/intrinsics, aggregates, C++/exception, UB-related, globals, external declarations
- Evidence:
  - integer arithmetic: `%58 = add nsw i32 %57, 1`
  - bitwise/shift: `%10 = xor i1 %9, true`
  - comparisons: `%16 = icmp ult i64 %14, %15`
  - control flow: `br label %12`
  - loop: `llvm.loop metadata`
  - unreachable: `unreachable`
  - memory/pointer: `define dso_local void @_Z6f_goldNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(%"class.std::__cxx11::basic_string"* noalias sret(%"class.std::__cxx11::basic_string") align 8 `
  - casts/conversions: `define dso_local void @_Z6f_goldNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(%"class.std::__cxx11::basic_string"* noalias sret(%"class.std::__cxx11::basic_string") align 8 `
  - calls/intrinsics: `call void @_ZNSaIcEC1Ev(%"class.std::allocator"* noundef nonnull align 1 dereferenceable(1) %5) #3`
  - aggregates: `%28 = extractvalue { i8*, i32 } %27, 0`
  - C++/exception: `invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(%"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32) %0, i8* noundef `
  - UB-related: `define dso_local void @_Z6f_goldNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(%"class.std::__cxx11::basic_string"* noalias sret(%"class.std::__cxx11::basic_string") align 8 `
  - globals: `@_ZStL8__ioinit = internal global %"class.std::ios_base::Init" zeroinitializer, align 1`
  - external declarations: `declare void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1)) unnamed_addr #1`

## O1

- Status: ok
- Features: integer arithmetic, bitwise/shift, comparisons, control flow, loop, memory/pointer, casts/conversions, calls/intrinsics, aggregates, C++/exception, UB-related, globals, external declarations
- Evidence:
  - integer arithmetic: `%33 = add i64 %32, 1`
  - bitwise/shift: `%29 = and i8 %17, 1`
  - comparisons: `%10 = icmp eq i64 %9, 0`
  - control flow: `br i1 %10, label %50, label %11`
  - loop: `llvm.loop metadata`
  - memory/pointer: `define dso_local void @_Z6f_goldNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(%"class.std::__cxx11::basic_string"* noalias sret(%"class.std::__cxx11::basic_string") align 8 `
  - casts/conversions: `define dso_local void @_Z6f_goldNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(%"class.std::__cxx11::basic_string"* noalias sret(%"class.std::__cxx11::basic_string") align 8 `
  - calls/intrinsics: `call void @_ZdlPv(i8* noundef %25) #5`
  - aggregates: `%"class.std::ios_base::Init" = type { i8 }`
  - C++/exception: `%23 = landingpad { i8*, i32 }`
  - UB-related: `define dso_local void @_Z6f_goldNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(%"class.std::__cxx11::basic_string"* noalias sret(%"class.std::__cxx11::basic_string") align 8 `
  - globals: `@_ZStL8__ioinit = internal global %"class.std::ios_base::Init" zeroinitializer, align 1`
  - external declarations: `declare void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1)) unnamed_addr #0`

## O2

- Status: ok
- Features: integer arithmetic, bitwise/shift, comparisons, control flow, loop, memory/pointer, casts/conversions, calls/intrinsics, aggregates, C++/exception, UB-related, globals, external declarations
- Evidence:
  - integer arithmetic: `%32 = add i64 %31, 1`
  - bitwise/shift: `%28 = and i8 %17, 1`
  - comparisons: `%10 = icmp eq i64 %9, 0`
  - control flow: `br i1 %10, label %52, label %11`
  - loop: `llvm.loop metadata`
  - memory/pointer: `define dso_local void @_Z6f_goldNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(%"class.std::__cxx11::basic_string"* noalias sret(%"class.std::__cxx11::basic_string") align 8 `
  - casts/conversions: `define dso_local void @_Z6f_goldNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(%"class.std::__cxx11::basic_string"* noalias sret(%"class.std::__cxx11::basic_string") align 8 `
  - calls/intrinsics: `tail call void @_ZdlPv(i8* noundef %24) #5`
  - aggregates: `%"class.std::ios_base::Init" = type { i8 }`
  - C++/exception: `%23 = landingpad { i8*, i32 }`
  - UB-related: `define dso_local void @_Z6f_goldNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(%"class.std::__cxx11::basic_string"* noalias sret(%"class.std::__cxx11::basic_string") align 8 `
  - globals: `@_ZStL8__ioinit = internal global %"class.std::ios_base::Init" zeroinitializer, align 1`
  - external declarations: `declare void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1)) unnamed_addr #0`

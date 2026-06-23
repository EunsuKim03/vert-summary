# cpp_transcoder/FIRST_UPPERCASE_LETTER_IN_A_STRING_ITERATIVE_AND_RECURSIVE_1

- Source: `FIRST_UPPERCASE_LETTER_IN_A_STRING_ITERATIVE_AND_RECURSIVE_1_processed.cpp`
- Source note: processed source

## O0

- Status: ok
- Features: integer arithmetic, comparisons, control flow, memory/pointer, casts/conversions, calls/intrinsics, aggregates, C++/exception, UB-related, globals, external declarations
- Evidence:
  - integer arithmetic: `%30 = add nsw i32 %29, 1`
  - comparisons: `%13 = icmp eq i32 %12, 0`
  - control flow: `br i1 %13, label %14, label %15`
  - memory/pointer: `define dso_local noundef signext i8 @_Z6f_goldNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi(%"class.std::__cxx11::basic_string"* noundef %0, i32 noundef %1) #4 personality `
  - casts/conversions: `define dso_local noundef signext i8 @_Z6f_goldNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi(%"class.std::__cxx11::basic_string"* noundef %0, i32 noundef %1) #4 personality `
  - calls/intrinsics: `%10 = call noundef nonnull align 1 dereferenceable(1) i8* @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEixEm(%"class.std::__cxx11::basic_string"* noundef nonnull align 8 de`
  - aggregates: `%35 = extractvalue { i8*, i32 } %34, 0`
  - C++/exception: `%31 = invoke noundef signext i8 @_Z6f_goldNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi(%"class.std::__cxx11::basic_string"* noundef %5, i32 noundef %30)`
  - UB-related: `define dso_local noundef signext i8 @_Z6f_goldNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi(%"class.std::__cxx11::basic_string"* noundef %0, i32 noundef %1) #4 personality `
  - globals: `@_ZStL8__ioinit = internal global %"class.std::ios_base::Init" zeroinitializer, align 1`
  - external declarations: `declare void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1)) unnamed_addr #1`

## O1

- Status: ok
- Features: integer arithmetic, comparisons, control flow, memory/pointer, casts/conversions, calls/intrinsics, aggregates, C++/exception, UB-related, globals, external declarations
- Evidence:
  - integer arithmetic: `%38 = add nsw i32 %1, 1`
  - comparisons: `%10 = icmp eq i8 %9, 0`
  - control flow: `br i1 %10, label %52, label %11`
  - memory/pointer: `define dso_local noundef signext i8 @_Z6f_goldNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi(%"class.std::__cxx11::basic_string"* nocapture noundef readonly %0, i32 noundef `
  - casts/conversions: `define dso_local noundef signext i8 @_Z6f_goldNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi(%"class.std::__cxx11::basic_string"* nocapture noundef readonly %0, i32 noundef `
  - calls/intrinsics: `%13 = call i32 @isupper(i32 noundef %12) #8`
  - aggregates: `%"class.std::ios_base::Init" = type { i8 }`
  - C++/exception: `%39 = invoke noundef signext i8 @_Z6f_goldNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi(%"class.std::__cxx11::basic_string"* noundef nonnull %4, i32 noundef %38)`
  - UB-related: `define dso_local noundef signext i8 @_Z6f_goldNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi(%"class.std::__cxx11::basic_string"* nocapture noundef readonly %0, i32 noundef `
  - globals: `@_ZStL8__ioinit = internal global %"class.std::ios_base::Init" zeroinitializer, align 1`
  - external declarations: `declare void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1)) unnamed_addr #0`

## O2

- Status: ok
- Features: integer arithmetic, comparisons, control flow, memory/pointer, casts/conversions, calls/intrinsics, aggregates, C++/exception, UB-related, globals, external declarations
- Evidence:
  - integer arithmetic: `%40 = add nsw i32 %1, 1`
  - comparisons: `%10 = icmp eq i8 %9, 0`
  - control flow: `br i1 %10, label %54, label %11`
  - memory/pointer: `define dso_local noundef signext i8 @_Z6f_goldNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi(%"class.std::__cxx11::basic_string"* nocapture noundef readonly %0, i32 noundef `
  - casts/conversions: `define dso_local noundef signext i8 @_Z6f_goldNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi(%"class.std::__cxx11::basic_string"* nocapture noundef readonly %0, i32 noundef `
  - calls/intrinsics: `%13 = tail call i32 @isupper(i32 noundef %12) #8`
  - aggregates: `%"class.std::ios_base::Init" = type { i8 }`
  - C++/exception: `%41 = invoke noundef signext i8 @_Z6f_goldNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi(%"class.std::__cxx11::basic_string"* noundef nonnull %4, i32 noundef %40)`
  - UB-related: `define dso_local noundef signext i8 @_Z6f_goldNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi(%"class.std::__cxx11::basic_string"* nocapture noundef readonly %0, i32 noundef `
  - globals: `@_ZStL8__ioinit = internal global %"class.std::ios_base::Init" zeroinitializer, align 1`
  - external declarations: `declare void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1)) unnamed_addr #0`

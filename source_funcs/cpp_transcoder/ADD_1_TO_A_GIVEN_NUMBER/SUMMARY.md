# cpp_transcoder/ADD_1_TO_A_GIVEN_NUMBER

- Source: `ADD_1_TO_A_GIVEN_NUMBER_processed.cpp`
- Source note: processed source

## O0

- Status: ok
- Features:
  - bitwise/shift
  - comparisons
  - control flow
  - loop
  - memory/pointer
  - aggregates
  - UB-related
  - globals
  - external declarations
- Evidence:
  - bitwise/shift: `%7 = and i32 %5, %6`
  - comparisons: `%8 = icmp ne i32 %7, 0`
  - control flow: `br label %4`
  - loop: `llvm.loop metadata`
  - memory/pointer: `%2 = alloca i32, align 4`
  - aggregates: `%"class.std::ios_base::Init" = type { i8 }`
  - UB-related: `define dso_local noundef i32 @_Z6f_goldi(i32 noundef %0) #4 {`
  - globals: `@_ZStL8__ioinit = internal global %"class.std::ios_base::Init" zeroinitializer, align 1`
  - external declarations: `declare void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1)) unnamed_addr #1`

## O1

- Status: ok
- Features:
  - bitwise/shift
  - comparisons
  - control flow
  - loop
  - aggregates
  - UB-related
  - globals
  - external declarations
- Evidence:
  - bitwise/shift: `%2 = and i32 %0, 1`
  - comparisons: `%3 = icmp eq i32 %2, 0`
  - control flow: `br i1 %3, label %11, label %4`
  - loop: `llvm.loop metadata`
  - aggregates: `%"class.std::ios_base::Init" = type { i8 }`
  - UB-related: `define dso_local noundef i32 @_Z6f_goldi(i32 noundef %0) local_unnamed_addr #3 {`
  - globals: `@_ZStL8__ioinit = internal global %"class.std::ios_base::Init" zeroinitializer, align 1`
  - external declarations: `declare void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1)) unnamed_addr #0`

## O2

- Status: ok
- Features:
  - bitwise/shift
  - comparisons
  - control flow
  - loop
  - aggregates
  - UB-related
  - globals
  - external declarations
- Evidence:
  - bitwise/shift: `%2 = and i32 %0, 1`
  - comparisons: `%3 = icmp eq i32 %2, 0`
  - control flow: `br i1 %3, label %11, label %4`
  - loop: `llvm.loop metadata`
  - aggregates: `%"class.std::ios_base::Init" = type { i8 }`
  - UB-related: `define dso_local noundef i32 @_Z6f_goldi(i32 noundef %0) local_unnamed_addr #3 {`
  - globals: `@_ZStL8__ioinit = internal global %"class.std::ios_base::Init" zeroinitializer, align 1`
  - external declarations: `declare void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1)) unnamed_addr #0`

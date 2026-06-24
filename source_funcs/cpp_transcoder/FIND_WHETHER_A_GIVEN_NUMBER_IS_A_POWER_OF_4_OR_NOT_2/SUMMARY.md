# cpp_transcoder/FIND_WHETHER_A_GIVEN_NUMBER_IS_A_POWER_OF_4_OR_NOT_2

- Source: `FIND_WHETHER_A_GIVEN_NUMBER_IS_A_POWER_OF_4_OR_NOT_2_processed.cpp`
- Source note: processed source

## O0

- Status: ok
- Features:
  - integer arithmetic
  - bitwise/shift
  - comparisons
  - control flow
  - memory/pointer
  - casts/conversions
  - aggregates
  - UB-related
  - globals
  - external declarations
- Evidence:
  - integer arithmetic: `%8 = sub i32 %7, 1`
  - bitwise/shift: `%9 = and i32 %6, %8`
  - comparisons: `%4 = icmp ne i32 %3, 0`
  - control flow: `br i1 %4, label %5, label %16`
  - memory/pointer: `%2 = alloca i32, align 4`
  - casts/conversions: `%18 = zext i1 %17 to i32`
  - aggregates: `%"class.std::ios_base::Init" = type { i8 }`
  - UB-related: `define dso_local noundef i32 @_Z6f_goldj(i32 noundef %0) #4 {`
  - globals: `@_ZStL8__ioinit = internal global %"class.std::ios_base::Init" zeroinitializer, align 1`
  - external declarations: `declare void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1)) unnamed_addr #1`

## O1

- Status: ok
- Features:
  - bitwise/shift
  - comparisons
  - control flow
  - casts/conversions
  - calls/intrinsics
  - aggregates
  - UB-related
  - globals
  - external declarations
- Evidence:
  - bitwise/shift: `%4 = and i32 %0, -1431655766`
  - comparisons: `%3 = icmp eq i32 %2, 1`
  - control flow: `ret i32 %7`
  - casts/conversions: `%7 = zext i1 %6 to i32`
  - calls/intrinsics: `%2 = call i32 @llvm.ctpop.i32(i32 %0), !range !5`
  - aggregates: `%"class.std::ios_base::Init" = type { i8 }`
  - UB-related: `define dso_local noundef i32 @_Z6f_goldj(i32 noundef %0) local_unnamed_addr #3 {`
  - globals: `@_ZStL8__ioinit = internal global %"class.std::ios_base::Init" zeroinitializer, align 1`
  - external declarations: `declare void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1)) unnamed_addr #0`

## O2

- Status: ok
- Features:
  - bitwise/shift
  - comparisons
  - control flow
  - casts/conversions
  - calls/intrinsics
  - aggregates
  - UB-related
  - globals
  - external declarations
- Evidence:
  - bitwise/shift: `%4 = and i32 %0, -1431655766`
  - comparisons: `%3 = icmp eq i32 %2, 1`
  - control flow: `ret i32 %7`
  - casts/conversions: `%7 = zext i1 %6 to i32`
  - calls/intrinsics: `%2 = tail call i32 @llvm.ctpop.i32(i32 %0), !range !5`
  - aggregates: `%"class.std::ios_base::Init" = type { i8 }`
  - UB-related: `define dso_local noundef i32 @_Z6f_goldj(i32 noundef %0) local_unnamed_addr #3 {`
  - globals: `@_ZStL8__ioinit = internal global %"class.std::ios_base::Init" zeroinitializer, align 1`
  - external declarations: `declare void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1)) unnamed_addr #0`

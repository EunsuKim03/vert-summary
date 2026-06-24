# cpp_transcoder/SEQUENCES_GIVEN_LENGTH_EVERY_ELEMENT_EQUAL_TWICE_PREVIOUS

- Source: `SEQUENCES_GIVEN_LENGTH_EVERY_ELEMENT_EQUAL_TWICE_PREVIOUS_processed.cpp`
- Source note: processed source

## O0

- Status: ok
- Features:
  - integer arithmetic
  - comparisons
  - control flow
  - recursion
  - memory/pointer
  - calls/intrinsics
  - aggregates
  - UB-related
  - globals
  - external declarations
- Evidence:
  - integer arithmetic: `%16 = sub nsw i32 %15, 1`
  - comparisons: `%8 = icmp slt i32 %6, %7`
  - control flow: `br i1 %8, label %9, label %10`
  - recursion: `_Z6f_goldii calls itself`
  - memory/pointer: `%3 = alloca i32, align 4`
  - calls/intrinsics: `%18 = call noundef i32 @_Z6f_goldii(i32 noundef %16, i32 noundef %17)`
  - aggregates: `%"class.std::ios_base::Init" = type { i8 }`
  - UB-related: `define dso_local noundef i32 @_Z6f_goldii(i32 noundef %0, i32 noundef %1) #4 {`
  - globals: `@_ZStL8__ioinit = internal global %"class.std::ios_base::Init" zeroinitializer, align 1`
  - external declarations: `declare void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1)) unnamed_addr #1`

## O1

- Status: ok
- Features:
  - integer arithmetic
  - comparisons
  - control flow
  - recursion
  - calls/intrinsics
  - aggregates
  - UB-related
  - globals
  - external declarations
- Evidence:
  - integer arithmetic: `%7 = add nsw i32 %0, -1`
  - comparisons: `%3 = icmp slt i32 %0, %1`
  - control flow: `br i1 %3, label %13, label %4`
  - recursion: `_Z6f_goldii calls itself`
  - calls/intrinsics: `%8 = call noundef i32 @_Z6f_goldii(i32 noundef %7, i32 noundef %1)`
  - aggregates: `%"class.std::ios_base::Init" = type { i8 }`
  - UB-related: `define dso_local noundef i32 @_Z6f_goldii(i32 noundef %0, i32 noundef %1) local_unnamed_addr #3 {`
  - globals: `@_ZStL8__ioinit = internal global %"class.std::ios_base::Init" zeroinitializer, align 1`
  - external declarations: `declare void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1)) unnamed_addr #0`

## O2

- Status: ok
- Features:
  - integer arithmetic
  - comparisons
  - control flow
  - loop
  - recursion
  - calls/intrinsics
  - aggregates
  - UB-related
  - globals
  - external declarations
- Evidence:
  - integer arithmetic: `%10 = add nsw i32 %6, -1`
  - comparisons: `%3 = icmp slt i32 %0, %1`
  - control flow: `br i1 %3, label %20, label %4`
  - loop: `br i1 %15, label %16, label %4`
  - recursion: `_Z6f_goldii calls itself`
  - calls/intrinsics: `%11 = tail call noundef i32 @_Z6f_goldii(i32 noundef %10, i32 noundef %5)`
  - aggregates: `%"class.std::ios_base::Init" = type { i8 }`
  - UB-related: `define dso_local noundef i32 @_Z6f_goldii(i32 noundef %0, i32 noundef %1) local_unnamed_addr #3 {`
  - globals: `@_ZStL8__ioinit = internal global %"class.std::ios_base::Init" zeroinitializer, align 1`
  - external declarations: `declare void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1)) unnamed_addr #0`

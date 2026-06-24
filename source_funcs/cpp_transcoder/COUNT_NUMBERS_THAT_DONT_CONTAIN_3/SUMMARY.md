# cpp_transcoder/COUNT_NUMBERS_THAT_DONT_CONTAIN_3

- Source: `COUNT_NUMBERS_THAT_DONT_CONTAIN_3_processed.cpp`
- Source note: processed source

## O0

- Status: ok
- Features:
  - integer arithmetic
  - comparisons
  - control flow
  - loop
  - recursion
  - memory/pointer
  - calls/intrinsics
  - aggregates
  - UB-related
  - globals
  - external declarations
- Evidence:
  - integer arithmetic: `%18 = sub nsw i32 %17, 1`
  - comparisons: `%7 = icmp slt i32 %6, 3`
  - control flow: `br i1 %7, label %8, label %10`
  - loop: `llvm.loop metadata`
  - recursion: `_Z6f_goldi calls itself`
  - memory/pointer: `%2 = alloca i32, align 4`
  - calls/intrinsics: `%36 = call noundef i32 @_Z6f_goldi(i32 noundef %35)`
  - aggregates: `%"class.std::ios_base::Init" = type { i8 }`
  - UB-related: `define dso_local noundef i32 @_Z6f_goldi(i32 noundef %0) #4 {`
  - globals: `@_ZStL8__ioinit = internal global %"class.std::ios_base::Init" zeroinitializer, align 1`
  - external declarations: `declare void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1)) unnamed_addr #1`

## O1

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
  - integer arithmetic: `%6 = add nsw i32 %0, -1`
  - comparisons: `%2 = icmp slt i32 %0, 3`
  - control flow: `br i1 %2, label %27, label %3`
  - loop: `llvm.loop metadata`
  - recursion: `_Z6f_goldi calls itself`
  - calls/intrinsics: `%16 = call noundef i32 @_Z6f_goldi(i32 noundef %10)`
  - aggregates: `%"class.std::ios_base::Init" = type { i8 }`
  - UB-related: `define dso_local noundef i32 @_Z6f_goldi(i32 noundef %0) local_unnamed_addr #3 {`
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
  - integer arithmetic: `%12 = add nsw i32 %7, -1`
  - comparisons: `%2 = icmp slt i32 %0, 3`
  - control flow: `br i1 %2, label %35, label %3`
  - loop: `llvm.loop metadata`
  - recursion: `_Z6f_goldi calls itself`
  - calls/intrinsics: `%23 = tail call noundef i32 @_Z6f_goldi(i32 noundef %21)`
  - aggregates: `%"class.std::ios_base::Init" = type { i8 }`
  - UB-related: `define dso_local noundef i32 @_Z6f_goldi(i32 noundef %0) local_unnamed_addr #3 {`
  - globals: `@_ZStL8__ioinit = internal global %"class.std::ios_base::Init" zeroinitializer, align 1`
  - external declarations: `declare void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1)) unnamed_addr #0`

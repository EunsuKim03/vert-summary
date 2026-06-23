# cpp_transcoder/MIDDLE_OF_THREE_USING_MINIMUM_COMPARISONS_1

- Source: `MIDDLE_OF_THREE_USING_MINIMUM_COMPARISONS_1_processed.cpp`
- Source note: processed source

## O0

- Status: ok
- Features: comparisons, control flow, memory/pointer, aggregates, UB-related, globals, external declarations
- Evidence:
  - comparisons: `%10 = icmp sgt i32 %8, %9`
  - control flow: `br i1 %10, label %11, label %25`
  - memory/pointer: `%4 = alloca i32, align 4`
  - aggregates: `%"class.std::ios_base::Init" = type { i8 }`
  - UB-related: `define dso_local noundef i32 @_Z6f_goldiii(i32 noundef %0, i32 noundef %1, i32 noundef %2) #4 {`
  - globals: `@_ZStL8__ioinit = internal global %"class.std::ios_base::Init" zeroinitializer, align 1`
  - external declarations: `declare void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1)) unnamed_addr #1`

## O1

- Status: ok
- Features: comparisons, control flow, aggregates, UB-related, globals, external declarations
- Evidence:
  - comparisons: `%4 = icmp sgt i32 %0, %1`
  - control flow: `br i1 %4, label %5, label %10`
  - aggregates: `%"class.std::ios_base::Init" = type { i8 }`
  - UB-related: `define dso_local noundef i32 @_Z6f_goldiii(i32 noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #3 {`
  - globals: `@_ZStL8__ioinit = internal global %"class.std::ios_base::Init" zeroinitializer, align 1`
  - external declarations: `declare void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1)) unnamed_addr #0`

## O2

- Status: ok
- Features: comparisons, control flow, aggregates, UB-related, globals, external declarations
- Evidence:
  - comparisons: `%4 = icmp sgt i32 %0, %1`
  - control flow: `br i1 %4, label %5, label %10`
  - aggregates: `%"class.std::ios_base::Init" = type { i8 }`
  - UB-related: `define dso_local noundef i32 @_Z6f_goldiii(i32 noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #3 {`
  - globals: `@_ZStL8__ioinit = internal global %"class.std::ios_base::Init" zeroinitializer, align 1`
  - external declarations: `declare void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1)) unnamed_addr #0`

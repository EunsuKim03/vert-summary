# cpp_transcoder/REARRANGE_ARRAY_MAXIMUM_MINIMUM_FORM_SET_2_O1_EXTRA_SPACE_1

- Source: `REARRANGE_ARRAY_MAXIMUM_MINIMUM_FORM_SET_2_O1_EXTRA_SPACE_1_processed.cpp`
- Source note: processed source

## O0

- Status: ok
- Features: integer arithmetic, comparisons, control flow, loop, memory/pointer, casts/conversions, aggregates, UB-related, globals, external declarations
- Evidence:
  - integer arithmetic: `%10 = sub nsw i32 %9, 1`
  - comparisons: `%20 = icmp slt i32 %18, %19`
  - control flow: `br label %17`
  - loop: `llvm.loop metadata`
  - memory/pointer: `define dso_local void @_Z6f_goldPii(i32* noundef %0, i32 noundef %1) #4 {`
  - casts/conversions: `%11 = sext i32 %10 to i64`
  - aggregates: `%"class.std::ios_base::Init" = type { i8 }`
  - UB-related: `define dso_local void @_Z6f_goldPii(i32* noundef %0, i32 noundef %1) #4 {`
  - globals: `@_ZStL8__ioinit = internal global %"class.std::ios_base::Init" zeroinitializer, align 1`
  - external declarations: `declare void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1)) unnamed_addr #1`

## O1

- Status: ok
- Features: integer arithmetic, bitwise/shift, comparisons, control flow, loop, memory/pointer, casts/conversions, aggregates, UB-related, globals, external declarations
- Evidence:
  - integer arithmetic: `%6 = add nsw i32 %1, -1`
  - bitwise/shift: `%16 = and i64 %13, 1`
  - comparisons: `%3 = icmp sgt i32 %1, 0`
  - control flow: `br i1 %3, label %4, label %11`
  - loop: `llvm.loop metadata`
  - memory/pointer: `define dso_local void @_Z6f_goldPii(i32* nocapture noundef %0, i32 noundef %1) local_unnamed_addr #3 {`
  - casts/conversions: `%7 = sext i32 %6 to i64`
  - aggregates: `%"class.std::ios_base::Init" = type { i8 }`
  - UB-related: `define dso_local void @_Z6f_goldPii(i32* nocapture noundef %0, i32 noundef %1) local_unnamed_addr #3 {`
  - globals: `@_ZStL8__ioinit = internal global %"class.std::ios_base::Init" zeroinitializer, align 1`
  - external declarations: `declare void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1)) unnamed_addr #0`

## O2

- Status: ok
- Features: integer arithmetic, bitwise/shift, comparisons, control flow, loop, memory/pointer, casts/conversions, aggregates, UB-related, globals, external declarations
- Evidence:
  - integer arithmetic: `%6 = add nsw i32 %1, -1`
  - bitwise/shift: `%11 = and i64 %10, 1`
  - comparisons: `%3 = icmp sgt i32 %1, 0`
  - control flow: `br i1 %3, label %4, label %25`
  - loop: `llvm.loop metadata`
  - memory/pointer: `define dso_local void @_Z6f_goldPii(i32* nocapture noundef %0, i32 noundef %1) local_unnamed_addr #3 {`
  - casts/conversions: `%7 = zext i32 %6 to i64`
  - aggregates: `%"class.std::ios_base::Init" = type { i8 }`
  - UB-related: `define dso_local void @_Z6f_goldPii(i32* nocapture noundef %0, i32 noundef %1) local_unnamed_addr #3 {`
  - globals: `@_ZStL8__ioinit = internal global %"class.std::ios_base::Init" zeroinitializer, align 1`
  - external declarations: `declare void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1)) unnamed_addr #0`

# cpp_transcoder/FIND_INDEX_OF_AN_EXTRA_ELEMENT_PRESENT_IN_ONE_SORTED_ARRAY

- Source: `FIND_INDEX_OF_AN_EXTRA_ELEMENT_PRESENT_IN_ONE_SORTED_ARRAY_processed.cpp`
- Source note: processed source

## O0

- Status: ok
- Features: integer arithmetic, comparisons, control flow, loop, memory/pointer, casts/conversions, aggregates, UB-related, globals, external declarations
- Evidence:
  - integer arithmetic: `%30 = add nsw i32 %29, 1`
  - comparisons: `%12 = icmp slt i32 %10, %11`
  - control flow: `br label %9`
  - loop: `llvm.loop metadata`
  - memory/pointer: `define dso_local noundef i32 @_Z6f_goldPiS_i(i32* noundef %0, i32* noundef %1, i32 noundef %2) #4 {`
  - casts/conversions: `%16 = sext i32 %15 to i64`
  - aggregates: `%"class.std::ios_base::Init" = type { i8 }`
  - UB-related: `define dso_local noundef i32 @_Z6f_goldPiS_i(i32* noundef %0, i32* noundef %1, i32 noundef %2) #4 {`
  - globals: `@_ZStL8__ioinit = internal global %"class.std::ios_base::Init" zeroinitializer, align 1`
  - external declarations: `declare void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1)) unnamed_addr #1`

## O1

- Status: ok
- Features: integer arithmetic, comparisons, control flow, loop, memory/pointer, casts/conversions, aggregates, UB-related, globals, external declarations
- Evidence:
  - integer arithmetic: `%15 = add nuw nsw i64 %8, 1`
  - comparisons: `%4 = icmp sgt i32 %2, 0`
  - control flow: `br i1 %4, label %5, label %19`
  - loop: `llvm.loop metadata`
  - memory/pointer: `define dso_local noundef i32 @_Z6f_goldPiS_i(i32* nocapture noundef readonly %0, i32* nocapture noundef readonly %1, i32 noundef %2) local_unnamed_addr #3 {`
  - casts/conversions: `%6 = zext i32 %2 to i64`
  - aggregates: `%"class.std::ios_base::Init" = type { i8 }`
  - UB-related: `define dso_local noundef i32 @_Z6f_goldPiS_i(i32* nocapture noundef readonly %0, i32* nocapture noundef readonly %1, i32 noundef %2) local_unnamed_addr #3 {`
  - globals: `@_ZStL8__ioinit = internal global %"class.std::ios_base::Init" zeroinitializer, align 1`
  - external declarations: `declare void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1)) unnamed_addr #0`

## O2

- Status: ok
- Features: integer arithmetic, comparisons, control flow, loop, memory/pointer, casts/conversions, aggregates, UB-related, globals, external declarations
- Evidence:
  - integer arithmetic: `%15 = add nuw nsw i64 %8, 1`
  - comparisons: `%4 = icmp sgt i32 %2, 0`
  - control flow: `br i1 %4, label %5, label %19`
  - loop: `llvm.loop metadata`
  - memory/pointer: `define dso_local noundef i32 @_Z6f_goldPiS_i(i32* nocapture noundef readonly %0, i32* nocapture noundef readonly %1, i32 noundef %2) local_unnamed_addr #3 {`
  - casts/conversions: `%6 = zext i32 %2 to i64`
  - aggregates: `%"class.std::ios_base::Init" = type { i8 }`
  - UB-related: `define dso_local noundef i32 @_Z6f_goldPiS_i(i32* nocapture noundef readonly %0, i32* nocapture noundef readonly %1, i32 noundef %2) local_unnamed_addr #3 {`
  - globals: `@_ZStL8__ioinit = internal global %"class.std::ios_base::Init" zeroinitializer, align 1`
  - external declarations: `declare void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1)) unnamed_addr #0`

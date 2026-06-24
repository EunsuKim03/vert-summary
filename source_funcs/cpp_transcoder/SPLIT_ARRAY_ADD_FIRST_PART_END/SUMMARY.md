# cpp_transcoder/SPLIT_ARRAY_ADD_FIRST_PART_END

- Source: `SPLIT_ARRAY_ADD_FIRST_PART_END_processed.cpp`
- Source note: processed source

## O0

- Status: ok
- Features:
  - integer arithmetic
  - comparisons
  - control flow
  - loop
  - memory/pointer
  - casts/conversions
  - aggregates
  - UB-related
  - globals
  - external declarations
- Evidence:
  - integer arithmetic: `%21 = sub nsw i32 %20, 1`
  - comparisons: `%13 = icmp slt i32 %11, %12`
  - control flow: `br label %10`
  - loop: `llvm.loop metadata`
  - memory/pointer: `define dso_local void @_Z6f_goldPiii(i32* noundef %0, i32 noundef %1, i32 noundef %2) #4 {`
  - casts/conversions: `%27 = sext i32 %26 to i64`
  - aggregates: `%"class.std::ios_base::Init" = type { i8 }`
  - UB-related: `define dso_local void @_Z6f_goldPiii(i32* noundef %0, i32 noundef %1, i32 noundef %2) #4 {`
  - globals: `@_ZStL8__ioinit = internal global %"class.std::ios_base::Init" zeroinitializer, align 1`
  - external declarations: `declare void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1)) unnamed_addr #1`

## O1

- Status: ok
- Features:
  - integer arithmetic
  - bitwise/shift
  - comparisons
  - control flow
  - loop
  - memory/pointer
  - casts/conversions
  - calls/intrinsics
  - aggregates
  - UB-related
  - globals
  - external declarations
- Evidence:
  - integer arithmetic: `%7 = add i32 %1, -1`
  - bitwise/shift: `%14 = shl nuw nsw i64 %13, 2`
  - comparisons: `%5 = icmp sgt i32 %2, 0`
  - control flow: `br i1 %5, label %6, label %15`
  - loop: `llvm.loop metadata`
  - memory/pointer: `define dso_local void @_Z6f_goldPiii(i32* nocapture noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #3 {`
  - casts/conversions: `%4 = bitcast i32* %0 to i8*`
  - calls/intrinsics: `call void @llvm.memmove.p0i8.p0i8.i64(i8* nonnull align 4 %4, i8* align 4 %12, i64 %14, i1 false), !tbaa !5`
  - aggregates: `%"class.std::ios_base::Init" = type { i8 }`
  - UB-related: `define dso_local void @_Z6f_goldPiii(i32* nocapture noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #3 {`
  - globals: `@_ZStL8__ioinit = internal global %"class.std::ios_base::Init" zeroinitializer, align 1`
  - external declarations: `declare void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1)) unnamed_addr #0`

## O2

- Status: ok
- Features:
  - integer arithmetic
  - bitwise/shift
  - comparisons
  - control flow
  - loop
  - memory/pointer
  - casts/conversions
  - calls/intrinsics
  - aggregates
  - UB-related
  - globals
  - external declarations
- Evidence:
  - integer arithmetic: `%7 = add i32 %1, -1`
  - bitwise/shift: `%14 = shl nuw nsw i64 %13, 2`
  - comparisons: `%5 = icmp sgt i32 %2, 0`
  - control flow: `br i1 %5, label %6, label %25`
  - loop: `llvm.loop metadata`
  - memory/pointer: `define dso_local void @_Z6f_goldPiii(i32* nocapture noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #3 {`
  - casts/conversions: `%4 = bitcast i32* %0 to i8*`
  - calls/intrinsics: `call void @llvm.memmove.p0i8.p0i8.i64(i8* nonnull align 4 %4, i8* align 4 %12, i64 %14, i1 false), !tbaa !5`
  - aggregates: `%"class.std::ios_base::Init" = type { i8 }`
  - UB-related: `define dso_local void @_Z6f_goldPiii(i32* nocapture noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #3 {`
  - globals: `@_ZStL8__ioinit = internal global %"class.std::ios_base::Init" zeroinitializer, align 1`
  - external declarations: `declare void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1)) unnamed_addr #0`

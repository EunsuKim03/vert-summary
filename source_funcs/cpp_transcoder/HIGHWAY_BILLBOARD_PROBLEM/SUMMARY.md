# cpp_transcoder/HIGHWAY_BILLBOARD_PROBLEM

- Source: `HIGHWAY_BILLBOARD_PROBLEM_reprocessed.cpp`
- Source note: processed source; reprocessed source: <cstring> for memset

## O0

- Status: ok
- Features:
  - integer arithmetic
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
  - integer arithmetic: `%17 = add nsw i32 %16, 1`
  - comparisons: `%26 = icmp sle i32 %24, %25`
  - control flow: `br label %23`
  - loop: `llvm.loop metadata`
  - memory/pointer: `define dso_local noundef i32 @_Z6f_goldiPiS_ii(i32 noundef %0, i32* noundef %1, i32* noundef %2, i32 noundef %3, i32 noundef %4) #4 {`
  - casts/conversions: `%18 = zext i32 %17 to i64`
  - calls/intrinsics: `%19 = call i8* @llvm.stacksave()`
  - aggregates: `%"class.std::ios_base::Init" = type { i8 }`
  - UB-related: `define dso_local noundef i32 @_Z6f_goldiPiS_ii(i32 noundef %0, i32* noundef %1, i32* noundef %2, i32 noundef %3, i32 noundef %4) #4 {`
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
  - integer arithmetic: `%6 = add nsw i32 %0, 1`
  - bitwise/shift: `%10 = shl nuw nsw i64 %7, 2`
  - comparisons: `%11 = icmp slt i32 %0, 1`
  - control flow: `br i1 %11, label %17, label %12`
  - loop: `llvm.loop metadata`
  - memory/pointer: `define dso_local noundef i32 @_Z6f_goldiPiS_ii(i32 noundef %0, i32* nocapture noundef readonly %1, i32* nocapture noundef readonly %2, i32 noundef %3, i32 noundef %4) local_unnamed`
  - casts/conversions: `%7 = zext i32 %6 to i64`
  - calls/intrinsics: `call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %9, i8 0, i64 %10, i1 false)`
  - aggregates: `%"class.std::ios_base::Init" = type { i8 }`
  - UB-related: `define dso_local noundef i32 @_Z6f_goldiPiS_ii(i32 noundef %0, i32* nocapture noundef readonly %1, i32* nocapture noundef readonly %2, i32 noundef %3, i32 noundef %4) local_unnamed`
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
  - integer arithmetic: `%6 = add i32 %0, 1`
  - bitwise/shift: `%10 = shl nuw nsw i64 %7, 2`
  - comparisons: `%11 = icmp slt i32 %0, 1`
  - control flow: `br i1 %11, label %15, label %12`
  - loop: `llvm.loop metadata`
  - memory/pointer: `define dso_local noundef i32 @_Z6f_goldiPiS_ii(i32 noundef %0, i32* nocapture noundef readonly %1, i32* nocapture noundef readonly %2, i32 noundef %3, i32 noundef %4) local_unnamed`
  - casts/conversions: `%7 = zext i32 %6 to i64`
  - calls/intrinsics: `call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %9, i8 0, i64 %10, i1 false)`
  - aggregates: `%"class.std::ios_base::Init" = type { i8 }`
  - UB-related: `define dso_local noundef i32 @_Z6f_goldiPiS_ii(i32 noundef %0, i32* nocapture noundef readonly %1, i32* nocapture noundef readonly %2, i32 noundef %3, i32 noundef %4) local_unnamed`
  - globals: `@_ZStL8__ioinit = internal global %"class.std::ios_base::Init" zeroinitializer, align 1`
  - external declarations: `declare void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1)) unnamed_addr #0`

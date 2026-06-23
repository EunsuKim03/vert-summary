# cpp_transcoder/POLICEMEN_CATCH_THIEVES

- Source: `POLICEMEN_CATCH_THIEVES_processed.cpp`
- Source note: processed source

## O0

- Status: ok
- Features: integer arithmetic, comparisons, control flow, loop, unreachable, memory/pointer, casts/conversions, calls/intrinsics, aggregates, C++/exception, UB-related, globals, external declarations
- Evidence:
  - integer arithmetic: `%47 = add nsw i32 %46, 1`
  - comparisons: `%18 = icmp slt i32 %16, %17`
  - control flow: `br label %15`
  - loop: `llvm.loop metadata`
  - unreachable: `unreachable`
  - memory/pointer: `define dso_local noundef i32 @_Z6f_goldPcii(i8* noundef %0, i32 noundef %1, i32 noundef %2) #4 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {`
  - casts/conversions: `define dso_local noundef i32 @_Z6f_goldPcii(i8* noundef %0, i32 noundef %1, i32 noundef %2) #4 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {`
  - calls/intrinsics: `call void @_ZNSt6vectorIiSaIiEEC2Ev(%"class.std::vector"* noundef nonnull align 8 dereferenceable(24) %8) #3`
  - aggregates: `%31 = extractvalue { i8*, i32 } %30, 0`
  - C++/exception: `invoke void @_ZNSt6vectorIiSaIiEE9push_backERKi(%"class.std::vector"* noundef nonnull align 8 dereferenceable(24) %9, i32* noundef nonnull align 4 dereferenceable(4) %10)`
  - UB-related: `define dso_local noundef i32 @_Z6f_goldPcii(i8* noundef %0, i32 noundef %1, i32 noundef %2) #4 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {`
  - globals: `@_ZStL8__ioinit = internal global %"class.std::ios_base::Init" zeroinitializer, align 1`
  - external declarations: `declare void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1)) unnamed_addr #1`

## O1

- Status: ok
- Features: integer arithmetic, bitwise/shift, comparisons, control flow, loop, unreachable, memory/pointer, casts/conversions, calls/intrinsics, aggregates, C++/exception, UB-related, globals, external declarations
- Evidence:
  - integer arithmetic: `%23 = sub i64 %21, %22`
  - bitwise/shift: `%24 = ashr exact i64 %23, 2`
  - comparisons: `%10 = icmp sgt i32 %1, 0`
  - control flow: `br i1 %10, label %11, label %16`
  - loop: `llvm.loop metadata`
  - unreachable: `unreachable`
  - memory/pointer: `define dso_local noundef i32 @_Z6f_goldPcii(i8* nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #3 personality i8* bitcast (i32 (...)* @__gxx_pers`
  - casts/conversions: `define dso_local noundef i32 @_Z6f_goldPcii(i8* nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #3 personality i8* bitcast (i32 (...)* @__gxx_pers`
  - calls/intrinsics: `call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %7) #11`
  - aggregates: `%"class.std::ios_base::Init" = type { i8 }`
  - C++/exception: `invoke void @_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_(%"class.std::vector"* noundef nonnull align 8 dereferenceable(24) %5, i32* `
  - UB-related: `define dso_local noundef i32 @_Z6f_goldPcii(i8* nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #3 personality i8* bitcast (i32 (...)* @__gxx_pers`
  - globals: `@_ZStL8__ioinit = internal global %"class.std::ios_base::Init" zeroinitializer, align 1`
  - external declarations: `declare void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1)) unnamed_addr #0`

## O2

- Status: ok
- Features: integer arithmetic, bitwise/shift, comparisons, control flow, loop, unreachable, memory/pointer, casts/conversions, calls/intrinsics, aggregates, C++/exception, UB-related, globals, external declarations
- Evidence:
  - integer arithmetic: `%14 = sub i64 %12, %13`
  - bitwise/shift: `%15 = ashr exact i64 %14, 2`
  - comparisons: `%4 = icmp sgt i32 %1, 0`
  - control flow: `br i1 %4, label %5, label %7`
  - loop: `llvm.loop metadata`
  - unreachable: `unreachable`
  - memory/pointer: `define dso_local noundef i32 @_Z6f_goldPcii(i8* nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #3 personality i8* bitcast (i32 (...)* @__gxx_pers`
  - casts/conversions: `define dso_local noundef i32 @_Z6f_goldPcii(i8* nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #3 personality i8* bitcast (i32 (...)* @__gxx_pers`
  - calls/intrinsics: `tail call void @llvm.memmove.p0i8.p0i8.i64(i8* align 4 %65, i8* align 4 %66, i64 %40, i1 false) #11`
  - aggregates: `%"class.std::ios_base::Init" = type { i8 }`
  - C++/exception: `invoke void @_ZSt20__throw_length_errorPKc(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0)) #9`
  - UB-related: `define dso_local noundef i32 @_Z6f_goldPcii(i8* nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #3 personality i8* bitcast (i32 (...)* @__gxx_pers`
  - globals: `@_ZStL8__ioinit = internal global %"class.std::ios_base::Init" zeroinitializer, align 1`
  - external declarations: `declare void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1)) unnamed_addr #0`

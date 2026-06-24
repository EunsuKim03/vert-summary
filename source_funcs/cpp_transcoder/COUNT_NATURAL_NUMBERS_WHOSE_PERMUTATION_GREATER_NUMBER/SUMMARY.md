# cpp_transcoder/COUNT_NATURAL_NUMBERS_WHOSE_PERMUTATION_GREATER_NUMBER

- Source: `COUNT_NATURAL_NUMBERS_WHOSE_PERMUTATION_GREATER_NUMBER_reprocessed.cpp`
- Source note: processed source; reprocessed source: <stack> for stack

## O0

- Status: ok
- Features:
  - integer arithmetic
  - bitwise/shift
  - comparisons
  - control flow
  - loop
  - unreachable
  - memory/pointer
  - casts/conversions
  - calls/intrinsics
  - aggregates
  - C++/exception
  - UB-related
  - globals
  - external declarations
- Evidence:
  - integer arithmetic: `%21 = add nsw i32 %20, 1`
  - bitwise/shift: `%30 = xor i1 %28, true`
  - comparisons: `%13 = icmp sle i32 %12, 9`
  - control flow: `br label %11`
  - loop: `llvm.loop metadata`
  - unreachable: `unreachable`
  - memory/pointer: `define dso_local noundef i32 @_Z6f_goldi(i32 noundef %0) #4 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {`
  - casts/conversions: `define dso_local noundef i32 @_Z6f_goldi(i32 noundef %0) #4 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {`
  - calls/intrinsics: `call void @_ZNSt5stackIiSt5dequeIiSaIiEEEC2IS2_vEEv(%"class.std::stack"* noundef nonnull align 8 dereferenceable(80) %5)`
  - aggregates: `%24 = extractvalue { i8*, i32 } %23, 0`
  - C++/exception: `invoke void @_ZNSt5stackIiSt5dequeIiSaIiEEE4pushERKi(%"class.std::stack"* noundef nonnull align 8 dereferenceable(80) %5, i32* noundef nonnull align 4 dereferenceable(4) %4)`
  - UB-related: `define dso_local noundef i32 @_Z6f_goldi(i32 noundef %0) #4 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {`
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
  - unreachable
  - memory/pointer
  - casts/conversions
  - calls/intrinsics
  - aggregates
  - C++/exception
  - UB-related
  - globals
  - external declarations
- Evidence:
  - integer arithmetic: `%39 = add nsw i32 %27, 1`
  - bitwise/shift: `%3 = lshr i64 %1, 7`
  - comparisons: `%29 = icmp sgt i32 %28, %0`
  - control flow: `br label %26`
  - loop: `llvm.loop metadata`
  - unreachable: `unreachable`
  - memory/pointer: `define dso_local noundef i32 @_Z6f_goldi(i32 noundef %0) local_unnamed_addr #3 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {`
  - casts/conversions: `define dso_local noundef i32 @_Z6f_goldi(i32 noundef %0) local_unnamed_addr #3 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {`
  - calls/intrinsics: `call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %5) #13`
  - aggregates: `%20 = extractvalue { i8*, i32 } %19, 0`
  - C++/exception: `invoke void @_ZNSt5dequeIiSaIiEE16_M_push_back_auxIJRKiEEEvDpOT_(%"class.std::deque"* noundef nonnull align 8 dereferenceable(80) %10, i32* noundef nonnull align 4 dereferenceable(`
  - UB-related: `define dso_local noundef i32 @_Z6f_goldi(i32 noundef %0) local_unnamed_addr #3 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {`
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
  - unreachable
  - memory/pointer
  - casts/conversions
  - calls/intrinsics
  - aggregates
  - C++/exception
  - UB-related
  - globals
  - external declarations
- Evidence:
  - integer arithmetic: `%32 = add nsw i32 %20, 1`
  - bitwise/shift: `%3 = lshr i64 %1, 7`
  - comparisons: `%22 = icmp sgt i32 %21, %0`
  - control flow: `br label %19`
  - loop: `llvm.loop metadata`
  - unreachable: `unreachable`
  - memory/pointer: `define dso_local noundef i32 @_Z6f_goldi(i32 noundef %0) local_unnamed_addr #3 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {`
  - casts/conversions: `define dso_local noundef i32 @_Z6f_goldi(i32 noundef %0) local_unnamed_addr #3 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {`
  - calls/intrinsics: `call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %5) #13`
  - aggregates: `%20 = extractvalue { i8*, i32 } %19, 0`
  - C++/exception: `invoke void @_ZNSt5dequeIiSaIiEE16_M_push_back_auxIJRKiEEEvDpOT_(%"class.std::deque"* noundef nonnull align 8 dereferenceable(80) %10, i32* noundef nonnull align 4 dereferenceable(`
  - UB-related: `define dso_local noundef i32 @_Z6f_goldi(i32 noundef %0) local_unnamed_addr #3 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {`
  - globals: `@_ZStL8__ioinit = internal global %"class.std::ios_base::Init" zeroinitializer, align 1`
  - external declarations: `declare void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1)) unnamed_addr #0`

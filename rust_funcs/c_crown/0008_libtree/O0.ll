; ModuleID = '0008_libtree_emit.40e1bd87a4b314ab-cgu.0'
source_filename = "0008_libtree_emit.40e1bd87a4b314ab-cgu.0"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%"core::fmt::rt::Argument<'_>" = type { %"core::fmt::rt::ArgumentType<'_>" }
%"core::fmt::rt::ArgumentType<'_>" = type { ptr, [1 x i64] }

@alloc_bbc2daf0108615c0afa9fe04215660de = private unnamed_addr constant [111 x i8] c"/root/.rustup/toolchains/stable-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/ptr/non_null.rs\00", align 1
@alloc_d4f80f0572bbbc16d96c7923116e287e = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_bbc2daf0108615c0afa9fe04215660de, [16 x i8] c"n\00\00\00\00\00\00\00\E4\02\00\003\00\00\00" }>, align 8
@alloc_5515c7b35c120aa5a0a21abfa1cff474 = private unnamed_addr constant [109 x i8] c"/root/.rustup/toolchains/stable-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/iter/range.rs\00", align 1
@alloc_5a841786226b43ba606ae5b578f20831 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_5515c7b35c120aa5a0a21abfa1cff474, [16 x i8] c"l\00\00\00\00\00\00\00\AB\01\00\00\01\00\00\00" }>, align 8
@anon.fdf9a24eb536cb16796e6d5fce658686.0 = private unnamed_addr constant <{ [8 x i8], [8 x i8] }> <{ [8 x i8] zeroinitializer, [8 x i8] undef }>, align 8
@alloc_7ffe46de03a32d5b689633132d72f0f7 = private unnamed_addr constant [106 x i8] c"/root/.rustup/toolchains/stable-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/fmt/mod.rs\00", align 1
@alloc_6216f8d0404ea902b9ce5c6b3a72d147 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_7ffe46de03a32d5b689633132d72f0f7, [16 x i8] c"i\00\00\00\00\00\00\00q\03\00\00*\00\00\00" }>, align 8
@alloc_dbcce5cb8873847766db4f16f930a00e = private unnamed_addr constant [186 x i8] c"unsafe precondition(s) violated: isize::unchecked_neg cannot overflow\0A\0AThis indicates a bug in the program. This Undefined Behavior check is optional, and cannot be relied on for safety.", align 1
@alloc_3e1ebac14318b612ab4efabc52799932 = private unnamed_addr constant [186 x i8] c"unsafe precondition(s) violated: usize::unchecked_add cannot overflow\0A\0AThis indicates a bug in the program. This Undefined Behavior check is optional, and cannot be relied on for safety.", align 1
@alloc_11df41512f96aa591188a49874013c9a = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_bbc2daf0108615c0afa9fe04215660de, [16 x i8] c"n\00\00\00\00\00\00\00\BA\03\00\00 \00\00\00" }>, align 8
@alloc_ec595fc0e82ef92fc59bd74f68296eae = private unnamed_addr constant [73 x i8] c"assertion failed: 0 < pointee_size && pointee_size <= isize::MAX as usize", align 1
@alloc_fad0cd83b7d1858a846a172eb260e593 = private unnamed_addr constant [42 x i8] c"is_aligned_to: align is not a power-of-two", align 1
@alloc_35c749f09496b1a94c1214737a58d269 = private unnamed_addr constant [112 x i8] c"/root/.rustup/toolchains/stable-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/ptr/const_ptr.rs\00", align 1
@alloc_3fa0cb230157e93f86c3228a58824d4a = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_35c749f09496b1a94c1214737a58d269, [16 x i8] c"o\00\00\00\00\00\00\00^\05\00\00\0D\00\00\00" }>, align 8
@alloc_de4e626d456b04760e72bc785ed7e52a = private unnamed_addr constant [201 x i8] c"unsafe precondition(s) violated: ptr::offset_from_unsigned requires `self >= origin`\0A\0AThis indicates a bug in the program. This Undefined Behavior check is optional, and cannot be relied on for safety.", align 1
@anon.fdf9a24eb536cb16796e6d5fce658686.1 = private unnamed_addr constant <{ [4 x i8], [4 x i8] }> <{ [4 x i8] zeroinitializer, [4 x i8] undef }>, align 4
@alloc_e8cef1ad8c55281f1c06278075b5a8cf = private unnamed_addr constant [114 x i8] c"/root/.rustup/toolchains/stable-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/str/validations.rs\00", align 1
@alloc_2172b8f8273d684d21ea51e1efed0aa7 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_e8cef1ad8c55281f1c06278075b5a8cf, [16 x i8] c"q\00\00\00\00\00\00\00]\00\00\00)\00\00\00" }>, align 8
@alloc_3226e540c1b76f5cb8052e502efc058e = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_e8cef1ad8c55281f1c06278075b5a8cf, [16 x i8] c"q\00\00\00\00\00\00\00b\00\00\00-\00\00\00" }>, align 8
@alloc_5386860317bc94cb9c544b4ebc14749d = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_e8cef1ad8c55281f1c06278075b5a8cf, [16 x i8] c"q\00\00\00\00\00\00\00g\00\00\001\00\00\00" }>, align 8
@alloc_4dc07e69e5d34e9d1484dfbbef0bb9b1 = private unnamed_addr constant [174 x i8] c"unsafe precondition(s) violated: invalid value for `char`\0A\0AThis indicates a bug in the program. This Undefined Behavior check is optional, and cannot be relied on for safety.", align 1
@alloc_75fb06c2453febd814e73f5f2e72ae38 = private unnamed_addr constant [199 x i8] c"unsafe precondition(s) violated: hint::unreachable_unchecked must never be reached\0A\0AThis indicates a bug in the program. This Undefined Behavior check is optional, and cannot be relied on for safety.", align 1
@alloc_89d89e5aaa887bee5bee5ec909cff25a = private unnamed_addr constant [108 x i8] c"/root/.rustup/toolchains/stable-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/ub_checks.rs\00", align 1
@alloc_611f58ae7c0cb6ecdf5f4642bc696b9a = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_89d89e5aaa887bee5bee5ec909cff25a, [16 x i8] c"k\00\00\00\00\00\00\00\95\00\00\006\00\00\00" }>, align 8
@alloc_a28e8c8fd5088943a8b5d44af697ff83 = private unnamed_addr constant [279 x i8] c"unsafe precondition(s) violated: slice::from_raw_parts requires the pointer to be aligned and non-null, and the total size of the slice not to exceed `isize::MAX`\0A\0AThis indicates a bug in the program. This Undefined Behavior check is optional, and cannot be relied on for safety.", align 1
@vtable.0 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00", ptr @"_ZN53_$LT$core..fmt..Error$u20$as$u20$core..fmt..Debug$GT$3fmt17h3ad86e1c20a6635fE" }>, align 8
@alloc_00ae4b301f7fab8ac9617c03fcbd7274 = private unnamed_addr constant [43 x i8] c"called `Result::unwrap()` on an `Err` value", align 1
@alloc_99ac8a81a24cac863217ce4a5cbfabea = private unnamed_addr constant [5 x i8] c"Error", align 1
@alloc_57d70e9d94c65ecfc15225d29a5ed72b = private unnamed_addr constant [198 x i8] c"unsafe precondition(s) violated: Vec::set_len requires that new_len <= capacity()\0A\0AThis indicates a bug in the program. This Undefined Behavior check is optional, and cannot be relied on for safety.", align 1
@alloc_4ebdd4fb52733a65108a00e385ff8fd6 = private unnamed_addr constant [107 x i8] c"/root/.rustup/toolchains/stable-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/alloc/src/vec/mod.rs\00", align 1
@alloc_a47926f9d85ae38be4f0670dbcfa282e = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_4ebdd4fb52733a65108a00e385ff8fd6, [16 x i8] c"j\00\00\00\00\00\00\00\95\07\00\00\09\00\00\00" }>, align 8
@alloc_e7eeebae3b051d7fb49cc63c18a6b909 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_4ebdd4fb52733a65108a00e385ff8fd6, [16 x i8] c"j\00\00\00\00\00\00\00?\06\00\00\12\00\00\00" }>, align 8
@vtable.1 = private unnamed_addr constant <{ ptr, [16 x i8], ptr, ptr, ptr }> <{ ptr @"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hd43c7bafa56784c9E", [16 x i8] c"\18\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @"_ZN58_$LT$alloc..string..String$u20$as$u20$core..fmt..Write$GT$9write_str17h14747dc51d54bdd5E", ptr @"_ZN58_$LT$alloc..string..String$u20$as$u20$core..fmt..Write$GT$10write_char17h66ea9bc9ea6fc5a0E", ptr @_ZN4core3fmt5Write9write_fmt17h19bb28826bad3fc9E }>, align 8
@alloc_30fe31649da79dfe35b2c7c95d3d3bc9 = private unnamed_addr constant [111 x i8] c"/root/.rustup/toolchains/stable-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/char/methods.rs\00", align 1
@alloc_6c330454ad85ac77173e17471995dc03 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_30fe31649da79dfe35b2c7c95d3d3bc9, [16 x i8] c"n\00\00\00\00\00\00\00\EF\00\00\00\12\00\00\00" }>, align 8
@alloc_296ffa51fb6222b3fa05c6868be5654f = private unnamed_addr constant [72 x i8] c"/root/es/vert/vert/rust_funcs/c_crown/0008_libtree/0008_libtree_emit.rs\00", align 1
@alloc_7365087531954a099f9c690f59a2122a = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_296ffa51fb6222b3fa05c6868be5654f, [16 x i8] c"G\00\00\00\00\00\00\00\19\00\00\00\13\00\00\00" }>, align 8
@alloc_2ba7a2fa4926880e1586801c53a8ce0d = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_296ffa51fb6222b3fa05c6868be5654f, [16 x i8] c"G\00\00\00\00\00\00\00\19\00\00\00\0C\00\00\00" }>, align 8
@alloc_690e4d5221ac99a64f775cdd85c56001 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_296ffa51fb6222b3fa05c6868be5654f, [16 x i8] c"G\00\00\00\00\00\00\00\19\00\00\00\1D\00\00\00" }>, align 8
@alloc_811d230f1f35928f855b51232670e7d7 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_296ffa51fb6222b3fa05c6868be5654f, [16 x i8] c"G\00\00\00\00\00\00\00\13\00\00\00>\00\00\00" }>, align 8
@alloc_0c812808379efded5a4fb82d2790b556 = private unnamed_addr constant [2 x i8] c"\C0\00", align 1
@alloc_4b9ea91629b037351b3e7a2c6026ae06 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_296ffa51fb6222b3fa05c6868be5654f, [16 x i8] c"G\00\00\00\00\00\00\00\10\00\00\003\00\00\00" }>, align 8

; <core::slice::iter::Iter<T> as core::iter::traits::double_ended::DoubleEndedIterator>::next_back
; Function Attrs: inlinehint nonlazybind uwtable
define align 1 ptr @"_ZN106_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..double_ended..DoubleEndedIterator$GT$9next_back17ha5ea8cb5b3bbc62aE"(ptr align 8 %self) unnamed_addr #0 {
start:
  %self1 = alloca [8 x i8], align 8
  %_14 = alloca [8 x i8], align 8
  %_2 = alloca [1 x i8], align 1
  %_0 = alloca [8 x i8], align 8
  br label %bb2

bb2:                                              ; preds = %start
  %0 = getelementptr inbounds i8, ptr %self, i64 8
  %_6 = load ptr, ptr %0, align 8
  %_11 = load ptr, ptr %self, align 8
  %1 = icmp eq ptr %_11, %_6
  %2 = zext i1 %1 to i8
  store i8 %2, ptr %_2, align 1
  br label %bb3

bb3:                                              ; preds = %bb2
  %3 = load i8, ptr %_2, align 1
  %4 = trunc nuw i8 %3 to i1
  br i1 %4, label %bb4, label %bb5

bb5:                                              ; preds = %bb3
  br label %bb9

bb4:                                              ; preds = %bb3
  store ptr null, ptr %_0, align 8
  br label %bb6

bb9:                                              ; preds = %bb5
  %self2 = getelementptr inbounds i8, ptr %self, i64 8
  %5 = load ptr, ptr %self2, align 8
  store ptr %5, ptr %self1, align 8
  br label %bb11

bb11:                                             ; preds = %bb9
  br label %bb12

bb12:                                             ; preds = %bb11
; call core::num::<impl isize>::unchecked_neg::precondition_check
  call void @"_ZN4core3num23_$LT$impl$u20$isize$GT$13unchecked_neg18precondition_check17h529664ff1bf69164E"(i64 1, ptr align 8 @alloc_d4f80f0572bbbc16d96c7923116e287e) #12
  br label %bb13

bb13:                                             ; preds = %bb12
  %_25 = load ptr, ptr %self1, align 8
  %_24 = getelementptr inbounds i8, ptr %_25, i64 -1
  store ptr %_24, ptr %self1, align 8
  br label %bb10

bb10:                                             ; preds = %bb13
  %6 = load ptr, ptr %self1, align 8
  store ptr %6, ptr %self2, align 8
  %7 = load ptr, ptr %self2, align 8
  store ptr %7, ptr %_14, align 8
  br label %bb7

bb7:                                              ; preds = %bb10
  %_26 = load ptr, ptr %_14, align 8
  store ptr %_26, ptr %_0, align 8
  br label %bb6

bb6:                                              ; preds = %bb4, %bb7
  %8 = load ptr, ptr %_0, align 8
  ret ptr %8

bb1:                                              ; No predecessors!
  unreachable

bb8:                                              ; No predecessors!
  unreachable
}

; <usize as core::iter::range::Step>::forward_unchecked
; Function Attrs: inlinehint nonlazybind uwtable
define internal i64 @"_ZN49_$LT$usize$u20$as$u20$core..iter..range..Step$GT$17forward_unchecked17h5aad5294dd01e88bE"(i64 %start1, i64 %n) unnamed_addr #0 {
start:
  br label %bb1

bb1:                                              ; preds = %start
; call core::num::<impl usize>::unchecked_add::precondition_check
  call void @"_ZN4core3num23_$LT$impl$u20$usize$GT$13unchecked_add18precondition_check17h52b6b8f7724a7fabE"(i64 %start1, i64 %n, ptr align 8 @alloc_5a841786226b43ba606ae5b578f20831) #12
  br label %bb2

bb2:                                              ; preds = %bb1
  %_0 = add nuw i64 %start1, %n
  ret i64 %_0
}

; core::intrinsics::is_val_statically_known
; Function Attrs: nounwind nonlazybind uwtable
define zeroext i1 @_ZN4core10intrinsics23is_val_statically_known17h269f415fb69b57a4E(i1 zeroext %_arg) unnamed_addr #1 {
start:
  ret i1 false
}

; core::intrinsics::cold_path
; Function Attrs: cold nounwind nonlazybind uwtable
define internal void @_ZN4core10intrinsics9cold_path17h3cbc6168a567c9c7E() unnamed_addr #2 {
start:
  ret void
}

; core::fmt::rt::Argument::new_display
; Function Attrs: inlinehint nonlazybind uwtable
define void @_ZN4core3fmt2rt8Argument11new_display17h254ca20321b395c6E(ptr sret([16 x i8]) align 8 %_0, ptr align 8 %x) unnamed_addr #0 {
start:
  %_2 = alloca [16 x i8], align 8
  store ptr %x, ptr %_2, align 8
  %0 = getelementptr inbounds i8, ptr %_2, i64 8
  store ptr @"_ZN4core3fmt3num3imp54_$LT$impl$u20$core..fmt..Display$u20$for$u20$usize$GT$3fmt17h4fc94a72f199f709E", ptr %0, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %_0, ptr align 8 %_2, i64 16, i1 false)
  ret void
}

; core::fmt::Write::write_fmt
; Function Attrs: nonlazybind uwtable
define zeroext i1 @_ZN4core3fmt5Write9write_fmt17h19bb28826bad3fc9E(ptr align 8 %self, ptr %args.0, ptr %args.1) unnamed_addr #3 {
start:
; call <&mut W as core::fmt::Write::write_fmt::SpecWriteFmt>::spec_write_fmt
  %_0 = call zeroext i1 @"_ZN75_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write..write_fmt..SpecWriteFmt$GT$14spec_write_fmt17h7adb2c10916fa093E"(ptr align 8 %self, ptr %args.0, ptr %args.1) #13
  ret i1 %_0
}

; core::fmt::Arguments::as_statically_known_str
; Function Attrs: inlinehint nonlazybind uwtable
define internal { ptr, i64 } @_ZN4core3fmt9Arguments23as_statically_known_str17h054a335615663f18E(ptr align 8 %self) unnamed_addr #0 {
start:
  %0 = alloca [1 x i8], align 1
  %s = alloca [16 x i8], align 8
  %1 = getelementptr inbounds i8, ptr %self, i64 8
  %_6 = load ptr, ptr %1, align 8
  %bits = ptrtoint ptr %_6 to i64
  %_8 = and i64 %bits, 1
  %_7 = icmp eq i64 %_8, 1
  br i1 %_7, label %bb5, label %bb6

bb6:                                              ; preds = %start
  %2 = load ptr, ptr @anon.fdf9a24eb536cb16796e6d5fce658686.0, align 8
  %3 = load i64, ptr getelementptr inbounds (i8, ptr @anon.fdf9a24eb536cb16796e6d5fce658686.0, i64 8), align 8
  store ptr %2, ptr %s, align 8
  %4 = getelementptr inbounds i8, ptr %s, i64 8
  store i64 %3, ptr %4, align 8
  br label %bb7

bb5:                                              ; preds = %start
  %self1 = load ptr, ptr %self, align 8
  %len = lshr i64 %bits, 1
  br label %bb8

bb7:                                              ; preds = %bb10, %bb6
  %5 = load ptr, ptr %s, align 8
  %6 = getelementptr inbounds i8, ptr %s, i64 8
  %7 = load i64, ptr %6, align 8
  %8 = ptrtoint ptr %5 to i64
  %9 = icmp eq i64 %8, 0
  %_18 = select i1 %9, i64 0, i64 1
  %_3 = icmp eq i64 %_18, 1
  %10 = call i1 @llvm.is.constant.i1(i1 %_3)
  %11 = zext i1 %10 to i8
  store i8 %11, ptr %0, align 1
  %12 = load i8, ptr %0, align 1
  %_2 = trunc nuw i8 %12 to i1
  br i1 %_2, label %bb2, label %bb3

bb8:                                              ; preds = %bb5
; call core::slice::raw::from_raw_parts::precondition_check
  call void @_ZN4core5slice3raw14from_raw_parts18precondition_check17h9938bcc66bd6901eE(ptr %self1, i64 1, i64 1, i64 %len, ptr align 8 @alloc_6216f8d0404ea902b9ce5c6b3a72d147) #12
  br label %bb10

bb10:                                             ; preds = %bb8
  store ptr %self1, ptr %s, align 8
  %13 = getelementptr inbounds i8, ptr %s, i64 8
  store i64 %len, ptr %13, align 8
  br label %bb7

bb3:                                              ; preds = %bb7
  %14 = load ptr, ptr @anon.fdf9a24eb536cb16796e6d5fce658686.0, align 8
  %15 = load i64, ptr getelementptr inbounds (i8, ptr @anon.fdf9a24eb536cb16796e6d5fce658686.0, i64 8), align 8
  store ptr %14, ptr %s, align 8
  %16 = getelementptr inbounds i8, ptr %s, i64 8
  store i64 %15, ptr %16, align 8
  br label %bb4

bb2:                                              ; preds = %bb7
  br label %bb4

bb4:                                              ; preds = %bb2, %bb3
  %17 = load ptr, ptr %s, align 8
  %18 = getelementptr inbounds i8, ptr %s, i64 8
  %19 = load i64, ptr %18, align 8
  %20 = insertvalue { ptr, i64 } poison, ptr %17, 0
  %21 = insertvalue { ptr, i64 } %20, i64 %19, 1
  ret { ptr, i64 } %21
}

; core::fmt::Arguments::new
; Function Attrs: inlinehint nonlazybind uwtable
define { ptr, ptr } @_ZN4core3fmt9Arguments3new17h5fe91aae1524712bE(ptr align 1 %template, ptr align 8 %args) unnamed_addr #0 {
start:
  %0 = insertvalue { ptr, ptr } poison, ptr %template, 0
  %1 = insertvalue { ptr, ptr } %0, ptr %args, 1
  ret { ptr, ptr } %1
}

; core::num::<impl isize>::unchecked_neg::precondition_check
; Function Attrs: inlinehint nounwind nonlazybind uwtable
define internal void @"_ZN4core3num23_$LT$impl$u20$isize$GT$13unchecked_neg18precondition_check17h529664ff1bf69164E"(i64 %lhs, ptr align 8 %0) unnamed_addr #4 {
start:
  %b = icmp eq i64 %lhs, -9223372036854775808
  br i1 %b, label %bb1, label %bb3

bb3:                                              ; preds = %start
  ret void

bb1:                                              ; preds = %start
; call core::panicking::panic_nounwind_fmt
  call void @_ZN4core9panicking18panic_nounwind_fmt17hf349702e3facb1fdE(ptr @alloc_dbcce5cb8873847766db4f16f930a00e, ptr inttoptr (i64 373 to ptr), i1 zeroext false, ptr align 8 %0) #14
  unreachable
}

; core::num::<impl usize>::unchecked_add::precondition_check
; Function Attrs: inlinehint nounwind nonlazybind uwtable
define internal void @"_ZN4core3num23_$LT$impl$u20$usize$GT$13unchecked_add18precondition_check17h52b6b8f7724a7fabE"(i64 %lhs, i64 %rhs, ptr align 8 %0) unnamed_addr #4 {
start:
  %_7.0 = add i64 %lhs, %rhs
  %_7.1 = icmp ult i64 %_7.0, %lhs
  br i1 %_7.1, label %bb1, label %bb2

bb2:                                              ; preds = %start
  ret void

bb1:                                              ; preds = %start
; call core::panicking::panic_nounwind_fmt
  call void @_ZN4core9panicking18panic_nounwind_fmt17hf349702e3facb1fdE(ptr @alloc_3e1ebac14318b612ab4efabc52799932, ptr inttoptr (i64 373 to ptr), i1 zeroext false, ptr align 8 %0) #14
  unreachable
}

; core::ptr::drop_in_place<alloc::string::String>
; Function Attrs: nonlazybind uwtable
define void @"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hd43c7bafa56784c9E"(ptr align 8 %_1) unnamed_addr #3 {
start:
; call core::ptr::drop_in_place<alloc::vec::Vec<u8>>
  call void @"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17hffe8cc83eadb6e36E"(ptr align 8 %_1)
  ret void
}

; core::ptr::drop_in_place<alloc::vec::Vec<u8>>
; Function Attrs: nonlazybind uwtable
define void @"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17hffe8cc83eadb6e36E"(ptr align 8 %_1) unnamed_addr #3 personality ptr @rust_eh_personality {
start:
  %0 = alloca [16 x i8], align 8
; invoke <alloc::vec::Vec<T,A> as core::ops::drop::Drop>::drop
  invoke void @"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h6ffafe41d4ff3563E"(ptr align 8 %_1)
          to label %bb4 unwind label %cleanup

bb3:                                              ; preds = %cleanup
; invoke core::ptr::drop_in_place<alloc::raw_vec::RawVec<u8>>
  invoke void @"_ZN4core3ptr53drop_in_place$LT$alloc..raw_vec..RawVec$LT$u8$GT$$GT$17he02537615976b13dE"(ptr align 8 %_1) #15
          to label %bb1 unwind label %terminate

cleanup:                                          ; preds = %start
  %1 = landingpad { ptr, i32 }
          cleanup
  %2 = extractvalue { ptr, i32 } %1, 0
  %3 = extractvalue { ptr, i32 } %1, 1
  store ptr %2, ptr %0, align 8
  %4 = getelementptr inbounds i8, ptr %0, i64 8
  store i32 %3, ptr %4, align 8
  br label %bb3

bb4:                                              ; preds = %start
; call core::ptr::drop_in_place<alloc::raw_vec::RawVec<u8>>
  call void @"_ZN4core3ptr53drop_in_place$LT$alloc..raw_vec..RawVec$LT$u8$GT$$GT$17he02537615976b13dE"(ptr align 8 %_1)
  ret void

terminate:                                        ; preds = %bb3
  %5 = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer
; call core::panicking::panic_in_cleanup
  call void @_ZN4core9panicking16panic_in_cleanup17h5f6bde45d17ae243E() #16
  unreachable

bb1:                                              ; preds = %bb3
  %6 = load ptr, ptr %0, align 8
  %7 = getelementptr inbounds i8, ptr %0, i64 8
  %8 = load i32, ptr %7, align 8
  %9 = insertvalue { ptr, i32 } poison, ptr %6, 0
  %10 = insertvalue { ptr, i32 } %9, i32 %8, 1
  resume { ptr, i32 } %10
}

; core::ptr::drop_in_place<alloc::raw_vec::RawVec<u8>>
; Function Attrs: nonlazybind uwtable
define void @"_ZN4core3ptr53drop_in_place$LT$alloc..raw_vec..RawVec$LT$u8$GT$$GT$17he02537615976b13dE"(ptr align 8 %_1) unnamed_addr #3 {
start:
; call <alloc::raw_vec::RawVec<T,A> as core::ops::drop::Drop>::drop
  call void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h86eef0594e496705E"(ptr align 8 %_1)
  ret void
}

; core::ptr::non_null::NonNull<T>::offset_from_unsigned
; Function Attrs: inlinehint nonlazybind uwtable
define i64 @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$20offset_from_unsigned17h62e57cabe325561eE"(ptr %self, ptr %subtracted) unnamed_addr #0 {
start:
  %0 = alloca [8 x i8], align 8
  br label %bb2

bb2:                                              ; preds = %start
; call core::ptr::const_ptr::<impl *const T>::offset_from_unsigned::precondition_check
  call void @"_ZN4core3ptr9const_ptr33_$LT$impl$u20$$BP$const$u20$T$GT$20offset_from_unsigned18precondition_check17h7e649adaf50e425eE"(ptr %self, ptr %subtracted, ptr align 8 @alloc_11df41512f96aa591188a49874013c9a) #12
  br label %bb4

bb4:                                              ; preds = %bb2
  br label %bb5

bb5:                                              ; preds = %bb4
  br label %bb6

bb6:                                              ; preds = %bb5
  %1 = ptrtoint ptr %self to i64
  %2 = ptrtoint ptr %subtracted to i64
  %3 = sub nuw i64 %1, %2
  %4 = udiv exact i64 %3, 1
  store i64 %4, ptr %0, align 8
  %_0 = load i64, ptr %0, align 8
  ret i64 %_0

bb7:                                              ; No predecessors!
; call core::panicking::panic
  call void @_ZN4core9panicking5panic17ha2e20a73227bb72eE(ptr align 1 @alloc_ec595fc0e82ef92fc59bd74f68296eae, i64 73, ptr align 8 @alloc_11df41512f96aa591188a49874013c9a) #17
  unreachable
}

; core::ptr::const_ptr::<impl *const T>::is_aligned_to
; Function Attrs: inlinehint nonlazybind uwtable
define zeroext i1 @"_ZN4core3ptr9const_ptr33_$LT$impl$u20$$BP$const$u20$T$GT$13is_aligned_to17h9a70429cec1e1e5fE"(ptr %self, i64 %align) unnamed_addr #0 {
start:
  %0 = alloca [4 x i8], align 4
  %1 = call i64 @llvm.ctpop.i64(i64 %align)
  %2 = trunc i64 %1 to i32
  store i32 %2, ptr %0, align 4
  %_9 = load i32, ptr %0, align 4
  %_3 = icmp eq i32 %_9, 1
  br i1 %_3, label %bb1, label %bb2

bb2:                                              ; preds = %start
; call core::panicking::panic_fmt
  call void @_ZN4core9panicking9panic_fmt17ha4414e4328fe24a0E(ptr @alloc_fad0cd83b7d1858a846a172eb260e593, ptr inttoptr (i64 85 to ptr), ptr align 8 @alloc_3fa0cb230157e93f86c3228a58824d4a) #17
  unreachable

bb1:                                              ; preds = %start
  %_7 = ptrtoint ptr %self to i64
  %_8 = sub i64 %align, 1
  %_6 = and i64 %_7, %_8
  %_0 = icmp eq i64 %_6, 0
  ret i1 %_0
}

; core::ptr::const_ptr::<impl *const T>::offset_from_unsigned::precondition_check
; Function Attrs: inlinehint nounwind nonlazybind uwtable
define internal void @"_ZN4core3ptr9const_ptr33_$LT$impl$u20$$BP$const$u20$T$GT$20offset_from_unsigned18precondition_check17h7e649adaf50e425eE"(ptr %this, ptr %origin, ptr align 8 %0) unnamed_addr #4 {
start:
  %_3 = icmp uge ptr %this, %origin
  br i1 %_3, label %bb1, label %bb2

bb2:                                              ; preds = %start
; call core::panicking::panic_nounwind_fmt
  call void @_ZN4core9panicking18panic_nounwind_fmt17hf349702e3facb1fdE(ptr @alloc_de4e626d456b04760e72bc785ed7e52a, ptr inttoptr (i64 403 to ptr), i1 zeroext false, ptr align 8 %0) #14
  unreachable

bb1:                                              ; preds = %start
  ret void
}

; core::str::validations::next_code_point_reverse
; Function Attrs: inlinehint nonlazybind uwtable
define { i32, i32 } @_ZN4core3str11validations23next_code_point_reverse17heac760c989839ef0E(ptr align 8 %bytes) unnamed_addr #0 {
start:
  %ch = alloca [4 x i8], align 4
  %self3 = alloca [8 x i8], align 8
  %self2 = alloca [8 x i8], align 8
  %self1 = alloca [8 x i8], align 8
  %self = alloca [8 x i8], align 8
  %_2 = alloca [8 x i8], align 8
  %_0 = alloca [8 x i8], align 4
; call <core::slice::iter::Iter<T> as core::iter::traits::double_ended::DoubleEndedIterator>::next_back
  %0 = call align 1 ptr @"_ZN106_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..double_ended..DoubleEndedIterator$GT$9next_back17ha5ea8cb5b3bbc62aE"(ptr align 8 %bytes) #13
  store ptr %0, ptr %self, align 8
  %1 = load ptr, ptr %self, align 8
  %2 = ptrtoint ptr %1 to i64
  %3 = icmp eq i64 %2, 0
  %_21 = select i1 %3, i64 0, i64 1
  %4 = trunc nuw i64 %_21 to i1
  br i1 %4, label %bb17, label %bb16

bb17:                                             ; preds = %start
  %v = load ptr, ptr %self, align 8
  store ptr %v, ptr %_2, align 8
  %val = load ptr, ptr %_2, align 8
  %w = load i8, ptr %val, align 1
  %_6 = icmp ult i8 %w, -128
  br i1 %_6, label %bb3, label %bb4

bb16:                                             ; preds = %start
  %5 = load i32, ptr @anon.fdf9a24eb536cb16796e6d5fce658686.1, align 4
  %6 = load i32, ptr getelementptr inbounds (i8, ptr @anon.fdf9a24eb536cb16796e6d5fce658686.1, i64 4), align 4
  store i32 %5, ptr %_0, align 4
  %7 = getelementptr inbounds i8, ptr %_0, i64 4
  store i32 %6, ptr %7, align 4
  br label %bb14

bb14:                                             ; preds = %bb3, %bb16
  br label %bb15

bb4:                                              ; preds = %bb17
; call <core::slice::iter::Iter<T> as core::iter::traits::double_ended::DoubleEndedIterator>::next_back
  %8 = call align 1 ptr @"_ZN106_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..double_ended..DoubleEndedIterator$GT$9next_back17ha5ea8cb5b3bbc62aE"(ptr align 8 %bytes) #13
  store ptr %8, ptr %self1, align 8
  %9 = load ptr, ptr %self1, align 8
  %10 = ptrtoint ptr %9 to i64
  %11 = icmp eq i64 %10, 0
  %_23 = select i1 %11, i64 0, i64 1
  %12 = trunc nuw i64 %_23 to i1
  br i1 %12, label %bb19, label %bb18

bb3:                                              ; preds = %bb17
  %next_byte = load i8, ptr %val, align 1
  %_8 = zext i8 %next_byte to i32
  %13 = getelementptr inbounds i8, ptr %_0, i64 4
  store i32 %_8, ptr %13, align 4
  store i32 1, ptr %_0, align 4
  br label %bb14

bb19:                                             ; preds = %bb4
  %val4 = load ptr, ptr %self1, align 8
  %z = load i8, ptr %val4, align 1
  %_26 = and i8 %z, 31
  %14 = zext i8 %_26 to i32
  store i32 %14, ptr %ch, align 4
  %_12 = icmp slt i8 %z, -64
  br i1 %_12, label %bb6, label %bb12

bb18:                                             ; preds = %bb4
; call core::hint::unreachable_unchecked::precondition_check
  call void @_ZN4core4hint21unreachable_unchecked18precondition_check17h571f416e08a43234E(ptr align 8 @alloc_2172b8f8273d684d21ea51e1efed0aa7) #12
  br label %bb2

bb2:                                              ; preds = %bb22, %bb20, %bb18
  unreachable

bb12:                                             ; preds = %bb19
  br label %bb13

bb6:                                              ; preds = %bb19
; call <core::slice::iter::Iter<T> as core::iter::traits::double_ended::DoubleEndedIterator>::next_back
  %15 = call align 1 ptr @"_ZN106_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..double_ended..DoubleEndedIterator$GT$9next_back17ha5ea8cb5b3bbc62aE"(ptr align 8 %bytes) #13
  store ptr %15, ptr %self2, align 8
  %16 = load ptr, ptr %self2, align 8
  %17 = ptrtoint ptr %16 to i64
  %18 = icmp eq i64 %17, 0
  %_28 = select i1 %18, i64 0, i64 1
  %19 = trunc nuw i64 %_28 to i1
  br i1 %19, label %bb21, label %bb20

bb13:                                             ; preds = %bb11, %bb12
  %20 = load i32, ptr %ch, align 4
  %_43 = shl i32 %20, 6
  %_45 = and i8 %w, 63
  %_44 = zext i8 %_45 to i32
  %21 = or i32 %_43, %_44
  store i32 %21, ptr %ch, align 4
  %22 = load i32, ptr %ch, align 4
  %23 = getelementptr inbounds i8, ptr %_0, i64 4
  store i32 %22, ptr %23, align 4
  store i32 1, ptr %_0, align 4
  br label %bb15

bb21:                                             ; preds = %bb6
  %val5 = load ptr, ptr %self2, align 8
  %y = load i8, ptr %val5, align 1
  %_31 = and i8 %y, 15
  %24 = zext i8 %_31 to i32
  store i32 %24, ptr %ch, align 4
  %_16 = icmp slt i8 %y, -64
  br i1 %_16, label %bb8, label %bb10

bb20:                                             ; preds = %bb6
; call core::hint::unreachable_unchecked::precondition_check
  call void @_ZN4core4hint21unreachable_unchecked18precondition_check17h571f416e08a43234E(ptr align 8 @alloc_3226e540c1b76f5cb8052e502efc058e) #12
  br label %bb2

bb10:                                             ; preds = %bb21
  br label %bb11

bb8:                                              ; preds = %bb21
; call <core::slice::iter::Iter<T> as core::iter::traits::double_ended::DoubleEndedIterator>::next_back
  %25 = call align 1 ptr @"_ZN106_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..double_ended..DoubleEndedIterator$GT$9next_back17ha5ea8cb5b3bbc62aE"(ptr align 8 %bytes) #13
  store ptr %25, ptr %self3, align 8
  %26 = load ptr, ptr %self3, align 8
  %27 = ptrtoint ptr %26 to i64
  %28 = icmp eq i64 %27, 0
  %_33 = select i1 %28, i64 0, i64 1
  %29 = trunc nuw i64 %_33 to i1
  br i1 %29, label %bb23, label %bb22

bb11:                                             ; preds = %bb23, %bb10
  %30 = load i32, ptr %ch, align 4
  %_40 = shl i32 %30, 6
  %_42 = and i8 %z, 63
  %_41 = zext i8 %_42 to i32
  %31 = or i32 %_40, %_41
  store i32 %31, ptr %ch, align 4
  br label %bb13

bb23:                                             ; preds = %bb8
  %val6 = load ptr, ptr %self3, align 8
  %x = load i8, ptr %val6, align 1
  %_36 = and i8 %x, 7
  %32 = zext i8 %_36 to i32
  store i32 %32, ptr %ch, align 4
  %33 = load i32, ptr %ch, align 4
  %_37 = shl i32 %33, 6
  %_39 = and i8 %y, 63
  %_38 = zext i8 %_39 to i32
  %34 = or i32 %_37, %_38
  store i32 %34, ptr %ch, align 4
  br label %bb11

bb22:                                             ; preds = %bb8
; call core::hint::unreachable_unchecked::precondition_check
  call void @_ZN4core4hint21unreachable_unchecked18precondition_check17h571f416e08a43234E(ptr align 8 @alloc_5386860317bc94cb9c544b4ebc14749d) #12
  br label %bb2

bb15:                                             ; preds = %bb14, %bb13
  %35 = load i32, ptr %_0, align 4
  %36 = getelementptr inbounds i8, ptr %_0, i64 4
  %37 = load i32, ptr %36, align 4
  %38 = insertvalue { i32, i32 } poison, i32 %35, 0
  %39 = insertvalue { i32, i32 } %38, i32 %37, 1
  ret { i32, i32 } %39
}

; core::str::<impl str>::chars
; Function Attrs: inlinehint nonlazybind uwtable
define internal { ptr, ptr } @"_ZN4core3str21_$LT$impl$u20$str$GT$5chars17h5b3c93c48b230af4E"(ptr align 1 %self.0, i64 %self.1) unnamed_addr #0 {
start:
  %_7 = getelementptr inbounds nuw i8, ptr %self.0, i64 %self.1
  %0 = insertvalue { ptr, ptr } poison, ptr %self.0, 0
  %1 = insertvalue { ptr, ptr } %0, ptr %_7, 1
  ret { ptr, ptr } %1
}

; core::char::convert::from_u32_unchecked::precondition_check
; Function Attrs: inlinehint nounwind nonlazybind uwtable
define internal void @_ZN4core4char7convert18from_u32_unchecked18precondition_check17ha710a33341e70e66E(i32 %i, ptr align 8 %0) unnamed_addr #4 {
start:
  %self = xor i32 %i, 55296
  %_7 = sub i32 %self, 2048
  %_6 = icmp uge i32 %_7, 1112064
  br i1 %_6, label %bb1, label %bb2

bb2:                                              ; preds = %start
  ret void

bb1:                                              ; preds = %start
; call core::panicking::panic_nounwind_fmt
  call void @_ZN4core9panicking18panic_nounwind_fmt17hf349702e3facb1fdE(ptr @alloc_4dc07e69e5d34e9d1484dfbbef0bb9b1, ptr inttoptr (i64 349 to ptr), i1 zeroext false, ptr align 8 %0) #14
  unreachable
}

; core::char::methods::encode_utf8_raw_unchecked
; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_ZN4core4char7methods25encode_utf8_raw_unchecked17h892900d36cb46a5dE(i32 %code, ptr %dst) unnamed_addr #0 {
start:
  %len = alloca [8 x i8], align 8
  %_28 = icmp ult i32 %code, 128
  br i1 %_28, label %bb12, label %bb7

bb7:                                              ; preds = %start
  %_29 = icmp ult i32 %code, 2048
  br i1 %_29, label %bb11, label %bb8

bb12:                                             ; preds = %start
  store i64 1, ptr %len, align 8
  %0 = trunc i32 %code to i8
  store i8 %0, ptr %dst, align 1
  br label %bb5

bb8:                                              ; preds = %bb7
  %_30 = icmp ult i32 %code, 65536
  br i1 %_30, label %bb10, label %bb9

bb11:                                             ; preds = %bb7
  store i64 2, ptr %len, align 8
  br label %bb13

bb9:                                              ; preds = %bb8
  store i64 4, ptr %len, align 8
  br label %bb13

bb10:                                             ; preds = %bb8
  store i64 3, ptr %len, align 8
  br label %bb13

bb13:                                             ; preds = %bb11, %bb10, %bb9
  %_6 = and i32 %code, 63
  %_5 = trunc i32 %_6 to i8
  %last1 = or i8 %_5, -128
  %_10 = lshr i32 %code, 6
  %_9 = and i32 %_10, 63
  %_8 = trunc i32 %_9 to i8
  %last2 = or i8 %_8, -128
  %_14 = lshr i32 %code, 12
  %_13 = and i32 %_14, 63
  %_12 = trunc i32 %_13 to i8
  %last3 = or i8 %_12, -128
  %_18 = lshr i32 %code, 18
  %_17 = and i32 %_18, 63
  %_16 = trunc i32 %_17 to i8
  %last4 = or i8 %_16, -16
  %_20 = load i64, ptr %len, align 8
  %_19 = icmp eq i64 %_20, 2
  br i1 %_19, label %bb1, label %bb2

bb2:                                              ; preds = %bb13
  %1 = load i64, ptr %len, align 8
  %_22 = icmp eq i64 %1, 3
  br i1 %_22, label %bb3, label %bb4

bb1:                                              ; preds = %bb13
  %2 = or i8 %last2, -64
  store i8 %2, ptr %dst, align 1
  %_21 = getelementptr inbounds nuw i8, ptr %dst, i64 1
  store i8 %last1, ptr %_21, align 1
  br label %bb5

bb4:                                              ; preds = %bb2
  store i8 %last4, ptr %dst, align 1
  %_25 = getelementptr inbounds nuw i8, ptr %dst, i64 1
  store i8 %last3, ptr %_25, align 1
  %_26 = getelementptr inbounds nuw i8, ptr %dst, i64 2
  store i8 %last2, ptr %_26, align 1
  %_27 = getelementptr inbounds nuw i8, ptr %dst, i64 3
  store i8 %last1, ptr %_27, align 1
  br label %bb6

bb3:                                              ; preds = %bb2
  %3 = or i8 %last3, -32
  store i8 %3, ptr %dst, align 1
  %_23 = getelementptr inbounds nuw i8, ptr %dst, i64 1
  store i8 %last2, ptr %_23, align 1
  %_24 = getelementptr inbounds nuw i8, ptr %dst, i64 2
  store i8 %last1, ptr %_24, align 1
  br label %bb5

bb6:                                              ; preds = %bb5, %bb4
  ret void

bb5:                                              ; preds = %bb12, %bb1, %bb3
  br label %bb6
}

; core::hint::unreachable_unchecked::precondition_check
; Function Attrs: inlinehint nounwind nonlazybind uwtable
define internal void @_ZN4core4hint21unreachable_unchecked18precondition_check17h571f416e08a43234E(ptr align 8 %0) unnamed_addr #4 {
start:
; call core::panicking::panic_nounwind_fmt
  call void @_ZN4core9panicking18panic_nounwind_fmt17hf349702e3facb1fdE(ptr @alloc_75fb06c2453febd814e73f5f2e72ae38, ptr inttoptr (i64 399 to ptr), i1 zeroext false, ptr align 8 %0) #14
  unreachable
}

; core::iter::range::<impl core::iter::traits::iterator::Iterator for core::ops::range::Range<A>>::next
; Function Attrs: inlinehint nonlazybind uwtable
define { i64, i64 } @"_ZN4core4iter5range101_$LT$impl$u20$core..iter..traits..iterator..Iterator$u20$for$u20$core..ops..range..Range$LT$A$GT$$GT$4next17hef020781ebec304bE"(ptr align 8 %self) unnamed_addr #0 {
start:
; call <core::ops::range::Range<T> as core::iter::range::RangeIteratorImpl>::spec_next
  %0 = call { i64, i64 } @"_ZN89_$LT$core..ops..range..Range$LT$T$GT$$u20$as$u20$core..iter..range..RangeIteratorImpl$GT$9spec_next17ha15c2c5334fcb915E"(ptr align 8 %self) #13
  %_0.0 = extractvalue { i64, i64 } %0, 0
  %_0.1 = extractvalue { i64, i64 } %0, 1
  %1 = insertvalue { i64, i64 } poison, i64 %_0.0, 0
  %2 = insertvalue { i64, i64 } %1, i64 %_0.1, 1
  ret { i64, i64 } %2
}

; core::iter::traits::double_ended::DoubleEndedIterator::rfold
; Function Attrs: inlinehint nonlazybind uwtable
define void @_ZN4core4iter6traits12double_ended19DoubleEndedIterator5rfold17ha4c392efcbcaabfdE(ptr %0, ptr %1, ptr align 8 %2) unnamed_addr #0 personality ptr @rust_eh_personality {
start:
  %3 = alloca [16 x i8], align 8
  %_13 = alloca [1 x i8], align 1
  %_5 = alloca [4 x i8], align 4
  %f = alloca [8 x i8], align 8
  %self = alloca [16 x i8], align 8
  store ptr %0, ptr %self, align 8
  %4 = getelementptr inbounds i8, ptr %self, i64 8
  store ptr %1, ptr %4, align 8
  store ptr %2, ptr %f, align 8
  store i8 1, ptr %_13, align 1
  br label %bb1

bb1:                                              ; preds = %bb4, %start
; invoke <core::str::iter::Chars as core::iter::traits::double_ended::DoubleEndedIterator>::next_back
  %5 = invoke i32 @"_ZN96_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..double_ended..DoubleEndedIterator$GT$9next_back17h51fe379b7e851b88E"(ptr align 8 %self)
          to label %bb2 unwind label %cleanup

bb12:                                             ; preds = %cleanup
  %6 = load i8, ptr %_13, align 1
  %7 = trunc nuw i8 %6 to i1
  br i1 %7, label %bb11, label %bb8

cleanup:                                          ; preds = %bb3, %bb1
  %8 = landingpad { ptr, i32 }
          cleanup
  %9 = extractvalue { ptr, i32 } %8, 0
  %10 = extractvalue { ptr, i32 } %8, 1
  store ptr %9, ptr %3, align 8
  %11 = getelementptr inbounds i8, ptr %3, i64 8
  store i32 %10, ptr %11, align 8
  br label %bb12

bb2:                                              ; preds = %bb1
  store i32 %5, ptr %_5, align 4
  %12 = load i32, ptr %_5, align 4
  %13 = icmp eq i32 %12, 1114112
  %_7 = select i1 %13, i64 0, i64 1
  %14 = trunc nuw i64 %_7 to i1
  br i1 %14, label %bb3, label %bb5

bb3:                                              ; preds = %bb2
  %x = load i32, ptr %_5, align 4
  store i8 0, ptr %_13, align 1
; invoke core::iter::traits::iterator::Iterator::for_each::call::{{closure}}
  invoke void @"_ZN4core4iter6traits8iterator8Iterator8for_each4call28_$u7b$$u7b$closure$u7d$$u7d$17h7289b83df72b8726E"(ptr align 8 %f, i32 %x)
          to label %bb4 unwind label %cleanup

bb5:                                              ; preds = %bb2
  br label %bb6

bb4:                                              ; preds = %bb3
  store i8 1, ptr %_13, align 1
  br label %bb1

bb6:                                              ; preds = %bb5
  ret void

bb13:                                             ; No predecessors!
  unreachable

bb8:                                              ; preds = %bb11, %bb12
  br label %bb9

bb11:                                             ; preds = %bb12
  br label %bb8

bb9:                                              ; preds = %bb8
  %15 = load ptr, ptr %3, align 8
  %16 = getelementptr inbounds i8, ptr %3, i64 8
  %17 = load i32, ptr %16, align 8
  %18 = insertvalue { ptr, i32 } poison, ptr %15, 0
  %19 = insertvalue { ptr, i32 } %18, i32 %17, 1
  resume { ptr, i32 } %19
}

; core::iter::traits::iterator::Iterator::rev
; Function Attrs: inlinehint nonlazybind uwtable
define { ptr, ptr } @_ZN4core4iter6traits8iterator8Iterator3rev17hb54e5a0a0bcf6193E(ptr %self.0, ptr %self.1) unnamed_addr #0 {
start:
  %0 = insertvalue { ptr, ptr } poison, ptr %self.0, 0
  %1 = insertvalue { ptr, ptr } %0, ptr %self.1, 1
  ret { ptr, ptr } %1
}

; core::iter::traits::iterator::Iterator::collect
; Function Attrs: inlinehint nonlazybind uwtable
define void @_ZN4core4iter6traits8iterator8Iterator7collect17h3204ea02d5b29f0bE(ptr sret([24 x i8]) align 8 %_0, ptr %self.0, ptr %self.1) unnamed_addr #0 {
start:
; call <alloc::string::String as core::iter::traits::collect::FromIterator<char>>::from_iter
  call void @"_ZN95_$LT$alloc..string..String$u20$as$u20$core..iter..traits..collect..FromIterator$LT$char$GT$$GT$9from_iter17h2d4e9d7cfce3c6edE"(ptr sret([24 x i8]) align 8 %_0, ptr %self.0, ptr %self.1)
  ret void
}

; core::iter::traits::iterator::Iterator::for_each
; Function Attrs: inlinehint nonlazybind uwtable
define void @_ZN4core4iter6traits8iterator8Iterator8for_each17hc7b63b92a2d3e8b8E(ptr %self.0, ptr %self.1, ptr align 8 %f) unnamed_addr #0 {
start:
; call <core::iter::adapters::rev::Rev<I> as core::iter::traits::iterator::Iterator>::fold
  call void @"_ZN98_$LT$core..iter..adapters..rev..Rev$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17hf0183717a9e07028E"(ptr %self.0, ptr %self.1, ptr align 8 %f)
  ret void
}

; core::iter::traits::iterator::Iterator::for_each::call::{{closure}}
; Function Attrs: inlinehint nonlazybind uwtable
define void @"_ZN4core4iter6traits8iterator8Iterator8for_each4call28_$u7b$$u7b$closure$u7d$$u7d$17h7289b83df72b8726E"(ptr align 8 %_1, i32 %item) unnamed_addr #0 {
start:
; call <alloc::string::String as core::iter::traits::collect::Extend<char>>::extend::{{closure}}
  call void @"_ZN89_$LT$alloc..string..String$u20$as$u20$core..iter..traits..collect..Extend$LT$char$GT$$GT$6extend28_$u7b$$u7b$closure$u7d$$u7d$17h53bdb6b02e5a20bcE"(ptr align 8 %_1, i32 %item) #13
  ret void
}

; core::slice::raw::from_raw_parts::precondition_check
; Function Attrs: inlinehint nounwind nonlazybind uwtable
define internal void @_ZN4core5slice3raw14from_raw_parts18precondition_check17h9938bcc66bd6901eE(ptr %data, i64 %size, i64 %align, i64 %len, ptr align 8 %0) unnamed_addr #4 personality ptr @rust_eh_personality {
start:
  %max_len = alloca [8 x i8], align 8
; invoke core::ptr::const_ptr::<impl *const T>::is_aligned_to
  %_11 = invoke zeroext i1 @"_ZN4core3ptr9const_ptr33_$LT$impl$u20$$BP$const$u20$T$GT$13is_aligned_to17h9a70429cec1e1e5fE"(ptr %data, i64 %align)
          to label %bb8 unwind label %terminate

terminate:                                        ; preds = %panic, %start
  %1 = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer
; call core::panicking::panic_cannot_unwind
  call void @_ZN4core9panicking19panic_cannot_unwind17h9d41c6c1d0e0d4e5E() #16
  unreachable

bb8:                                              ; preds = %start
  br i1 %_11, label %bb6, label %bb7

bb7:                                              ; preds = %bb8
  br label %bb4

bb6:                                              ; preds = %bb8
  %_13 = ptrtoint ptr %data to i64
  %_12 = icmp eq i64 %_13, 0
  %_5 = xor i1 %_12, true
  br i1 %_5, label %bb1, label %bb4

bb4:                                              ; preds = %bb6, %bb7
  br label %bb5

bb1:                                              ; preds = %bb6
  %_15 = icmp eq i64 %size, 0
  br i1 %_15, label %bb9, label %bb10

bb5:                                              ; preds = %bb3, %bb4
; call core::panicking::panic_nounwind_fmt
  call void @_ZN4core9panicking18panic_nounwind_fmt17hf349702e3facb1fdE(ptr @alloc_a28e8c8fd5088943a8b5d44af697ff83, ptr inttoptr (i64 559 to ptr), i1 zeroext false, ptr align 8 %0) #14
  unreachable

bb10:                                             ; preds = %bb1
  br i1 %_15, label %panic, label %bb11

bb9:                                              ; preds = %bb1
  store i64 -1, ptr %max_len, align 8
  br label %bb12

bb11:                                             ; preds = %bb10
  %2 = udiv i64 9223372036854775807, %size
  store i64 %2, ptr %max_len, align 8
  br label %bb12

panic:                                            ; preds = %bb10
; invoke core::panicking::panic_const::panic_const_div_by_zero
  invoke void @_ZN4core9panicking11panic_const23panic_const_div_by_zero17h9a45e37423e1c559E(ptr align 8 @alloc_611f58ae7c0cb6ecdf5f4642bc696b9a) #18
          to label %unreachable unwind label %terminate

unreachable:                                      ; preds = %panic
  unreachable

bb12:                                             ; preds = %bb9, %bb11
  %3 = load i64, ptr %max_len, align 8
  %_7 = icmp ule i64 %len, %3
  br i1 %_7, label %bb2, label %bb3

bb3:                                              ; preds = %bb12
  br label %bb5

bb2:                                              ; preds = %bb12
  ret void
}

; <core::fmt::Error as core::fmt::Debug>::fmt
; Function Attrs: inlinehint nonlazybind uwtable
define internal zeroext i1 @"_ZN53_$LT$core..fmt..Error$u20$as$u20$core..fmt..Debug$GT$3fmt17h3ad86e1c20a6635fE"(ptr align 1 %self, ptr align 8 %f) unnamed_addr #0 {
start:
; call core::fmt::Formatter::write_str
  %_0 = call zeroext i1 @_ZN4core3fmt9Formatter9write_str17h66c46e6e00843febE(ptr align 8 %f, ptr align 1 @alloc_99ac8a81a24cac863217ce4a5cbfabea, i64 5)
  ret i1 %_0
}

; <alloc::string::String as core::fmt::Write>::write_char
; Function Attrs: inlinehint nonlazybind uwtable
define internal zeroext i1 @"_ZN58_$LT$alloc..string..String$u20$as$u20$core..fmt..Write$GT$10write_char17h66ea9bc9ea6fc5a0E"(ptr align 8 %self, i32 %c) unnamed_addr #0 {
start:
; call alloc::string::String::push
  call void @_ZN5alloc6string6String4push17h340ef4313969992aE(ptr align 8 %self, i32 %c) #13
  ret i1 false
}

; <alloc::string::String as core::fmt::Write>::write_str
; Function Attrs: inlinehint nonlazybind uwtable
define internal zeroext i1 @"_ZN58_$LT$alloc..string..String$u20$as$u20$core..fmt..Write$GT$9write_str17h14747dc51d54bdd5E"(ptr align 8 %self, ptr align 1 %s.0, i64 %s.1) unnamed_addr #0 {
start:
; call alloc::string::String::push_str
  call void @_ZN5alloc6string6String8push_str17hf33765e9486c3001E(ptr align 8 %self, ptr align 1 %s.0, i64 %s.1) #13
  ret i1 false
}

; alloc::vec::Vec<T,A>::set_len::precondition_check
; Function Attrs: inlinehint nounwind nonlazybind uwtable
define internal void @"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7set_len18precondition_check17h940cfb5c3e875df7E"(i64 %new_len, i64 %capacity, ptr align 8 %0) unnamed_addr #4 {
start:
  %_3 = icmp ule i64 %new_len, %capacity
  br i1 %_3, label %bb1, label %bb2

bb2:                                              ; preds = %start
; call core::panicking::panic_nounwind_fmt
  call void @_ZN4core9panicking18panic_nounwind_fmt17hf349702e3facb1fdE(ptr @alloc_57d70e9d94c65ecfc15225d29a5ed72b, ptr inttoptr (i64 397 to ptr), i1 zeroext false, ptr align 8 %0) #14
  unreachable

bb1:                                              ; preds = %start
  ret void
}

; alloc::string::String::new
; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_ZN5alloc6string6String3new17hd654416e831822a1E(ptr sret([24 x i8]) align 8 %_0) unnamed_addr #0 {
start:
  %_1 = alloca [24 x i8], align 8
  store i64 0, ptr %_1, align 8
  %0 = getelementptr inbounds i8, ptr %_1, i64 8
  store ptr inttoptr (i64 1 to ptr), ptr %0, align 8
  %1 = getelementptr inbounds i8, ptr %_1, i64 16
  store i64 0, ptr %1, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %_0, ptr align 8 %_1, i64 24, i1 false)
  ret void
}

; alloc::string::String::push
; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_ZN5alloc6string6String4push17h340ef4313969992aE(ptr align 8 %self, i32 %ch) unnamed_addr #0 {
start:
  %ch_len = alloca [8 x i8], align 8
  %0 = getelementptr inbounds i8, ptr %self, i64 16
  %len = load i64, ptr %0, align 8
  %_14 = icmp ule i64 %len, 9223372036854775807
  %_16 = icmp ult i32 %ch, 128
  br i1 %_16, label %bb8, label %bb3

bb3:                                              ; preds = %start
  %_17 = icmp ult i32 %ch, 2048
  br i1 %_17, label %bb7, label %bb4

bb8:                                              ; preds = %start
  store i64 1, ptr %ch_len, align 8
  br label %bb2

bb4:                                              ; preds = %bb3
  %_18 = icmp ult i32 %ch, 65536
  br i1 %_18, label %bb6, label %bb5

bb7:                                              ; preds = %bb3
  store i64 2, ptr %ch_len, align 8
  br label %bb2

bb5:                                              ; preds = %bb4
  store i64 4, ptr %ch_len, align 8
  br label %bb2

bb6:                                              ; preds = %bb4
  store i64 3, ptr %ch_len, align 8
  br label %bb2

bb2:                                              ; preds = %bb8, %bb7, %bb6, %bb5
  %additional = load i64, ptr %ch_len, align 8
; call alloc::vec::Vec<T,A>::reserve
  call void @"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17hd7d983ab73297baaE"(ptr align 8 %self, i64 %additional)
  %1 = getelementptr inbounds i8, ptr %self, i64 8
  %_20 = load ptr, ptr %1, align 8
  %2 = getelementptr inbounds i8, ptr %self, i64 16
  %count = load i64, ptr %2, align 8
  %_21 = icmp ule i64 %count, 9223372036854775807
  %_8 = getelementptr inbounds nuw i8, ptr %_20, i64 %count
; call core::char::methods::encode_utf8_raw_unchecked
  call void @_ZN4core4char7methods25encode_utf8_raw_unchecked17h892900d36cb46a5dE(i32 %ch, ptr %_8) #13
  %3 = load i64, ptr %ch_len, align 8
  %new_len = add i64 %len, %3
  br label %bb10

bb10:                                             ; preds = %bb2
  %self1 = load i64, ptr %self, align 8
; call alloc::vec::Vec<T,A>::set_len::precondition_check
  call void @"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7set_len18precondition_check17h940cfb5c3e875df7E"(i64 %new_len, i64 %self1, ptr align 8 @alloc_a47926f9d85ae38be4f0670dbcfa282e) #12
  br label %bb12

bb12:                                             ; preds = %bb10
  %4 = getelementptr inbounds i8, ptr %self, i64 16
  store i64 %new_len, ptr %4, align 8
  ret void
}

; alloc::string::String::as_str
; Function Attrs: inlinehint nonlazybind uwtable
define internal { ptr, i64 } @_ZN5alloc6string6String6as_str17h5bf03c10303c2815E(ptr align 8 %self) unnamed_addr #0 {
start:
  %0 = getelementptr inbounds i8, ptr %self, i64 8
  %_6 = load ptr, ptr %0, align 8
  %1 = getelementptr inbounds i8, ptr %self, i64 16
  %len = load i64, ptr %1, align 8
  br label %bb1

bb1:                                              ; preds = %start
; call core::slice::raw::from_raw_parts::precondition_check
  call void @_ZN4core5slice3raw14from_raw_parts18precondition_check17h9938bcc66bd6901eE(ptr %_6, i64 1, i64 1, i64 %len, ptr align 8 @alloc_e7eeebae3b051d7fb49cc63c18a6b909) #12
  br label %bb3

bb3:                                              ; preds = %bb1
  %2 = insertvalue { ptr, i64 } poison, ptr %_6, 0
  %3 = insertvalue { ptr, i64 } %2, i64 %len, 1
  ret { ptr, i64 } %3
}

; alloc::string::String::push_str
; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_ZN5alloc6string6String8push_str17hf33765e9486c3001E(ptr align 8 %self, ptr align 1 %string.0, i64 %string.1) unnamed_addr #0 {
start:
  %_9 = getelementptr inbounds nuw i8, ptr %string.0, i64 %string.1
; call <alloc::vec::Vec<T,A> as alloc::vec::spec_extend::SpecExtend<&T,core::slice::iter::Iter<T>>>::spec_extend
  call void @"_ZN132_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$alloc..vec..spec_extend..SpecExtend$LT$$RF$T$C$core..slice..iter..Iter$LT$T$GT$$GT$$GT$11spec_extend17h50a987f7cf4aec42E"(ptr align 8 %self, ptr %string.0, ptr %_9)
  ret void
}

; <I as core::iter::traits::collect::IntoIterator>::into_iter
; Function Attrs: inlinehint nonlazybind uwtable
define { ptr, ptr } @"_ZN63_$LT$I$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17h7fc17f996118fdbdE"(ptr %self.0, ptr %self.1) unnamed_addr #0 {
start:
  %0 = insertvalue { ptr, ptr } poison, ptr %self.0, 0
  %1 = insertvalue { ptr, ptr } %0, ptr %self.1, 1
  ret { ptr, ptr } %1
}

; <I as core::iter::traits::collect::IntoIterator>::into_iter
; Function Attrs: inlinehint nonlazybind uwtable
define { i64, i64 } @"_ZN63_$LT$I$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17h8b99a9960e20be35E"(i64 %self.0, i64 %self.1) unnamed_addr #0 {
start:
  %0 = insertvalue { i64, i64 } poison, i64 %self.0, 0
  %1 = insertvalue { i64, i64 } %0, i64 %self.1, 1
  ret { i64, i64 } %1
}

; <alloc::string::String as core::ops::deref::Deref>::deref
; Function Attrs: inlinehint nonlazybind uwtable
define internal { ptr, i64 } @"_ZN65_$LT$alloc..string..String$u20$as$u20$core..ops..deref..Deref$GT$5deref17h20534cc53edfc2ddE"(ptr align 8 %self) unnamed_addr #0 {
start:
; call alloc::string::String::as_str
  %0 = call { ptr, i64 } @_ZN5alloc6string6String6as_str17h5bf03c10303c2815E(ptr align 8 %self) #13
  %_0.0 = extractvalue { ptr, i64 } %0, 0
  %_0.1 = extractvalue { ptr, i64 } %0, 1
  %1 = insertvalue { ptr, i64 } poison, ptr %_0.0, 0
  %2 = insertvalue { ptr, i64 } %1, i64 %_0.1, 1
  ret { ptr, i64 } %2
}

; <&mut W as core::fmt::Write::write_fmt::SpecWriteFmt>::spec_write_fmt
; Function Attrs: inlinehint nonlazybind uwtable
define zeroext i1 @"_ZN75_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write..write_fmt..SpecWriteFmt$GT$14spec_write_fmt17h7adb2c10916fa093E"(ptr align 8 %self, ptr %0, ptr %1) unnamed_addr #0 {
start:
  %_3 = alloca [16 x i8], align 8
  %_0 = alloca [1 x i8], align 1
  %args = alloca [16 x i8], align 8
  store ptr %0, ptr %args, align 8
  %2 = getelementptr inbounds i8, ptr %args, i64 8
  store ptr %1, ptr %2, align 8
; call core::fmt::Arguments::as_statically_known_str
  %3 = call { ptr, i64 } @_ZN4core3fmt9Arguments23as_statically_known_str17h054a335615663f18E(ptr align 8 %args) #13
  %4 = extractvalue { ptr, i64 } %3, 0
  %5 = extractvalue { ptr, i64 } %3, 1
  store ptr %4, ptr %_3, align 8
  %6 = getelementptr inbounds i8, ptr %_3, i64 8
  store i64 %5, ptr %6, align 8
  %7 = load ptr, ptr %_3, align 8
  %8 = getelementptr inbounds i8, ptr %_3, i64 8
  %9 = load i64, ptr %8, align 8
  %10 = ptrtoint ptr %7 to i64
  %11 = icmp eq i64 %10, 0
  %_5 = select i1 %11, i64 0, i64 1
  %12 = trunc nuw i64 %_5 to i1
  br i1 %12, label %bb2, label %bb4

bb2:                                              ; preds = %start
  %s.0 = load ptr, ptr %_3, align 8
  %13 = getelementptr inbounds i8, ptr %_3, i64 8
  %s.1 = load i64, ptr %13, align 8
; call <alloc::string::String as core::fmt::Write>::write_str
  %14 = call zeroext i1 @"_ZN58_$LT$alloc..string..String$u20$as$u20$core..fmt..Write$GT$9write_str17h14747dc51d54bdd5E"(ptr align 8 %self, ptr align 1 %s.0, i64 %s.1) #13
  %15 = zext i1 %14 to i8
  store i8 %15, ptr %_0, align 1
  br label %bb6

bb4:                                              ; preds = %start
  %16 = load ptr, ptr %args, align 8
  %17 = getelementptr inbounds i8, ptr %args, i64 8
  %18 = load ptr, ptr %17, align 8
; call core::fmt::write
  %19 = call zeroext i1 @_ZN4core3fmt5write17h22467d3ad5dd5554E(ptr align 1 %self, ptr align 8 @vtable.1, ptr %16, ptr %18)
  %20 = zext i1 %19 to i8
  store i8 %20, ptr %_0, align 1
  br label %bb6

bb6:                                              ; preds = %bb4, %bb2
  %21 = load i8, ptr %_0, align 1
  %22 = trunc nuw i8 %21 to i1
  ret i1 %22

bb7:                                              ; No predecessors!
  unreachable
}

; <core::str::iter::Chars as core::iter::traits::iterator::Iterator>::size_hint
; Function Attrs: inlinehint nonlazybind uwtable
define internal void @"_ZN81_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..iterator..Iterator$GT$9size_hint17h134e9ccbf735d993E"(ptr sret([24 x i8]) align 8 %_0, ptr align 8 %self) unnamed_addr #0 {
start:
  %_4 = alloca [8 x i8], align 8
  %0 = getelementptr inbounds i8, ptr %self, i64 8
  %_8 = load ptr, ptr %0, align 8
  %_9 = load ptr, ptr %self, align 8
; call core::ptr::non_null::NonNull<T>::offset_from_unsigned
  %len = call i64 @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$20offset_from_unsigned17h62e57cabe325561eE"(ptr %_8, ptr %_9) #13
  %d = udiv i64 %len, 4
  %r = urem i64 %len, 4
  %_12 = icmp ugt i64 %r, 0
  br i1 %_12, label %bb2, label %bb3

bb3:                                              ; preds = %start
  store i64 %d, ptr %_4, align 8
  br label %bb4

bb2:                                              ; preds = %start
  %1 = add i64 %d, 1
  store i64 %1, ptr %_4, align 8
  br label %bb4

bb4:                                              ; preds = %bb2, %bb3
  %2 = load i64, ptr %_4, align 8
  store i64 %2, ptr %_0, align 8
  %3 = getelementptr inbounds i8, ptr %_0, i64 8
  store i64 1, ptr %3, align 8
  %4 = getelementptr inbounds i8, ptr %3, i64 8
  store i64 %len, ptr %4, align 8
  ret void
}

; <alloc::string::String as core::iter::traits::collect::Extend<char>>::extend
; Function Attrs: nonlazybind uwtable
define void @"_ZN89_$LT$alloc..string..String$u20$as$u20$core..iter..traits..collect..Extend$LT$char$GT$$GT$6extend17heffda91cf20847ccE"(ptr align 8 %self, ptr %iter.0, ptr %iter.1) unnamed_addr #3 personality ptr @rust_eh_personality {
start:
  %0 = alloca [16 x i8], align 8
  %_11 = alloca [1 x i8], align 1
  %_5 = alloca [24 x i8], align 8
  %iterator = alloca [16 x i8], align 8
; call <I as core::iter::traits::collect::IntoIterator>::into_iter
  %1 = call { ptr, ptr } @"_ZN63_$LT$I$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17h7fc17f996118fdbdE"(ptr %iter.0, ptr %iter.1) #13
  %2 = extractvalue { ptr, ptr } %1, 0
  %3 = extractvalue { ptr, ptr } %1, 1
  store ptr %2, ptr %iterator, align 8
  %4 = getelementptr inbounds i8, ptr %iterator, i64 8
  store ptr %3, ptr %4, align 8
  store i8 1, ptr %_11, align 1
; invoke <core::iter::adapters::rev::Rev<I> as core::iter::traits::iterator::Iterator>::size_hint
  invoke void @"_ZN98_$LT$core..iter..adapters..rev..Rev$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$9size_hint17h646bd464cad3494eE"(ptr sret([24 x i8]) align 8 %_5, ptr align 8 %iterator)
          to label %bb2 unwind label %cleanup

bb6:                                              ; preds = %cleanup
  %5 = load i8, ptr %_11, align 1
  %6 = trunc nuw i8 %5 to i1
  br i1 %6, label %bb5, label %bb4

cleanup:                                          ; preds = %bb7, %bb2, %start
  %7 = landingpad { ptr, i32 }
          cleanup
  %8 = extractvalue { ptr, i32 } %7, 0
  %9 = extractvalue { ptr, i32 } %7, 1
  store ptr %8, ptr %0, align 8
  %10 = getelementptr inbounds i8, ptr %0, i64 8
  store i32 %9, ptr %10, align 8
  br label %bb6

bb2:                                              ; preds = %start
  %lower_bound = load i64, ptr %_5, align 8
; invoke alloc::vec::Vec<T,A>::reserve
  invoke void @"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17hd7d983ab73297baaE"(ptr align 8 %self, i64 %lower_bound)
          to label %bb7 unwind label %cleanup

bb7:                                              ; preds = %bb2
  store i8 0, ptr %_11, align 1
  %_9.0 = load ptr, ptr %iterator, align 8
  %11 = getelementptr inbounds i8, ptr %iterator, i64 8
  %_9.1 = load ptr, ptr %11, align 8
; invoke core::iter::traits::iterator::Iterator::for_each
  invoke void @_ZN4core4iter6traits8iterator8Iterator8for_each17hc7b63b92a2d3e8b8E(ptr %_9.0, ptr %_9.1, ptr align 8 %self)
          to label %bb3 unwind label %cleanup

bb3:                                              ; preds = %bb7
  ret void

bb4:                                              ; preds = %bb5, %bb6
  %12 = load ptr, ptr %0, align 8
  %13 = getelementptr inbounds i8, ptr %0, i64 8
  %14 = load i32, ptr %13, align 8
  %15 = insertvalue { ptr, i32 } poison, ptr %12, 0
  %16 = insertvalue { ptr, i32 } %15, i32 %14, 1
  resume { ptr, i32 } %16

bb5:                                              ; preds = %bb6
  br label %bb4
}

; <alloc::string::String as core::iter::traits::collect::Extend<char>>::extend::{{closure}}
; Function Attrs: inlinehint nonlazybind uwtable
define void @"_ZN89_$LT$alloc..string..String$u20$as$u20$core..iter..traits..collect..Extend$LT$char$GT$$GT$6extend28_$u7b$$u7b$closure$u7d$$u7d$17h53bdb6b02e5a20bcE"(ptr align 8 %_1, i32 %c) unnamed_addr #0 {
start:
  %_3 = load ptr, ptr %_1, align 8
; call alloc::string::String::push
  call void @_ZN5alloc6string6String4push17h340ef4313969992aE(ptr align 8 %_3, i32 %c) #13
  ret void
}

; <core::ops::range::Range<T> as core::iter::range::RangeIteratorImpl>::spec_next
; Function Attrs: inlinehint nonlazybind uwtable
define { i64, i64 } @"_ZN89_$LT$core..ops..range..Range$LT$T$GT$$u20$as$u20$core..iter..range..RangeIteratorImpl$GT$9spec_next17ha15c2c5334fcb915E"(ptr align 8 %self) unnamed_addr #0 {
start:
  %_0 = alloca [16 x i8], align 8
  %_4 = getelementptr inbounds i8, ptr %self, i64 8
  %_3.i = load i64, ptr %self, align 8
  %_4.i = load i64, ptr %_4, align 8
  %_0.i = icmp ult i64 %_3.i, %_4.i
  br i1 %_0.i, label %bb2, label %bb4

bb4:                                              ; preds = %start
  store i64 0, ptr %_0, align 8
  br label %bb5

bb2:                                              ; preds = %start
  %old = load i64, ptr %self, align 8
; call <usize as core::iter::range::Step>::forward_unchecked
  %_6 = call i64 @"_ZN49_$LT$usize$u20$as$u20$core..iter..range..Step$GT$17forward_unchecked17h5aad5294dd01e88bE"(i64 %old, i64 1) #13
  store i64 %_6, ptr %self, align 8
  %0 = getelementptr inbounds i8, ptr %_0, i64 8
  store i64 %old, ptr %0, align 8
  store i64 1, ptr %_0, align 8
  br label %bb5

bb5:                                              ; preds = %bb2, %bb4
  %1 = load i64, ptr %_0, align 8
  %2 = getelementptr inbounds i8, ptr %_0, i64 8
  %3 = load i64, ptr %2, align 8
  %4 = insertvalue { i64, i64 } poison, i64 %1, 0
  %5 = insertvalue { i64, i64 } %4, i64 %3, 1
  ret { i64, i64 } %5
}

; <alloc::string::String as core::iter::traits::collect::FromIterator<char>>::from_iter
; Function Attrs: nonlazybind uwtable
define void @"_ZN95_$LT$alloc..string..String$u20$as$u20$core..iter..traits..collect..FromIterator$LT$char$GT$$GT$9from_iter17h2d4e9d7cfce3c6edE"(ptr sret([24 x i8]) align 8 %_0, ptr %iter.0, ptr %iter.1) unnamed_addr #3 personality ptr @rust_eh_personality {
start:
  %0 = alloca [16 x i8], align 8
  %_5 = alloca [24 x i8], align 8
  %buf = alloca [24 x i8], align 8
  store i64 0, ptr %_5, align 8
  %1 = getelementptr inbounds i8, ptr %_5, i64 8
  store ptr inttoptr (i64 1 to ptr), ptr %1, align 8
  %2 = getelementptr inbounds i8, ptr %_5, i64 16
  store i64 0, ptr %2, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %buf, ptr align 8 %_5, i64 24, i1 false)
; invoke <alloc::string::String as core::iter::traits::collect::Extend<char>>::extend
  invoke void @"_ZN89_$LT$alloc..string..String$u20$as$u20$core..iter..traits..collect..Extend$LT$char$GT$$GT$6extend17heffda91cf20847ccE"(ptr align 8 %buf, ptr %iter.0, ptr %iter.1)
          to label %bb1 unwind label %cleanup

bb2:                                              ; preds = %cleanup
; invoke core::ptr::drop_in_place<alloc::string::String>
  invoke void @"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hd43c7bafa56784c9E"(ptr align 8 %buf) #15
          to label %bb3 unwind label %terminate

cleanup:                                          ; preds = %start
  %3 = landingpad { ptr, i32 }
          cleanup
  %4 = extractvalue { ptr, i32 } %3, 0
  %5 = extractvalue { ptr, i32 } %3, 1
  store ptr %4, ptr %0, align 8
  %6 = getelementptr inbounds i8, ptr %0, i64 8
  store i32 %5, ptr %6, align 8
  br label %bb2

bb1:                                              ; preds = %start
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %_0, ptr align 8 %buf, i64 24, i1 false)
  ret void

terminate:                                        ; preds = %bb2
  %7 = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer
; call core::panicking::panic_in_cleanup
  call void @_ZN4core9panicking16panic_in_cleanup17h5f6bde45d17ae243E() #16
  unreachable

bb3:                                              ; preds = %bb2
  %8 = load ptr, ptr %0, align 8
  %9 = getelementptr inbounds i8, ptr %0, i64 8
  %10 = load i32, ptr %9, align 8
  %11 = insertvalue { ptr, i32 } poison, ptr %8, 0
  %12 = insertvalue { ptr, i32 } %11, i32 %10, 1
  resume { ptr, i32 } %12
}

; <core::str::iter::Chars as core::iter::traits::double_ended::DoubleEndedIterator>::next_back
; Function Attrs: inlinehint nonlazybind uwtable
define internal i32 @"_ZN96_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..double_ended..DoubleEndedIterator$GT$9next_back17h51fe379b7e851b88E"(ptr align 8 %self) unnamed_addr #0 {
start:
  %self1 = alloca [8 x i8], align 4
  %_0 = alloca [4 x i8], align 4
; call core::str::validations::next_code_point_reverse
  %0 = call { i32, i32 } @_ZN4core3str11validations23next_code_point_reverse17heac760c989839ef0E(ptr align 8 %self) #13
  %1 = extractvalue { i32, i32 } %0, 0
  %2 = extractvalue { i32, i32 } %0, 1
  store i32 %1, ptr %self1, align 4
  %3 = getelementptr inbounds i8, ptr %self1, i64 4
  store i32 %2, ptr %3, align 4
  %4 = load i32, ptr %self1, align 4
  %5 = getelementptr inbounds i8, ptr %self1, i64 4
  %6 = load i32, ptr %5, align 4
  %_4 = zext i32 %4 to i64
  %7 = trunc nuw i64 %_4 to i1
  br i1 %7, label %bb5, label %bb4

bb5:                                              ; preds = %start
  %8 = getelementptr inbounds i8, ptr %self1, i64 4
  %x = load i32, ptr %8, align 4
  br label %bb6

bb4:                                              ; preds = %start
  store i32 1114112, ptr %_0, align 4
  br label %bb2

bb2:                                              ; preds = %bb7, %bb4
  %9 = load i32, ptr %_0, align 4
  ret i32 %9

bb6:                                              ; preds = %bb5
; call core::char::convert::from_u32_unchecked::precondition_check
  call void @_ZN4core4char7convert18from_u32_unchecked18precondition_check17ha710a33341e70e66E(i32 %x, ptr align 8 @alloc_6c330454ad85ac77173e17471995dc03) #12
  br label %bb7

bb7:                                              ; preds = %bb6
  store i32 %x, ptr %_0, align 4
  br label %bb2

bb3:                                              ; No predecessors!
  unreachable
}

; <core::iter::adapters::rev::Rev<I> as core::iter::traits::iterator::Iterator>::fold
; Function Attrs: nonlazybind uwtable
define void @"_ZN98_$LT$core..iter..adapters..rev..Rev$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17hf0183717a9e07028E"(ptr %self.0, ptr %self.1, ptr align 8 %f) unnamed_addr #3 {
start:
; call core::iter::traits::double_ended::DoubleEndedIterator::rfold
  call void @_ZN4core4iter6traits12double_ended19DoubleEndedIterator5rfold17ha4c392efcbcaabfdE(ptr %self.0, ptr %self.1, ptr align 8 %f) #13
  ret void
}

; <core::iter::adapters::rev::Rev<I> as core::iter::traits::iterator::Iterator>::size_hint
; Function Attrs: inlinehint nonlazybind uwtable
define void @"_ZN98_$LT$core..iter..adapters..rev..Rev$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$9size_hint17h646bd464cad3494eE"(ptr sret([24 x i8]) align 8 %_0, ptr align 8 %self) unnamed_addr #0 {
start:
; call <core::str::iter::Chars as core::iter::traits::iterator::Iterator>::size_hint
  call void @"_ZN81_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..iterator..Iterator$GT$9size_hint17h134e9ccbf735d993E"(ptr sret([24 x i8]) align 8 %_0, ptr align 8 %self) #13
  ret void
}

; Function Attrs: nonlazybind uwtable
define zeroext i1 @is_ascending_order(ptr align 8 %values.0, i64 %values.1) unnamed_addr #3 {
start:
  %_6 = alloca [16 x i8], align 8
  %iter = alloca [16 x i8], align 8
  %_0 = alloca [1 x i8], align 1
; call <I as core::iter::traits::collect::IntoIterator>::into_iter
  %0 = call { i64, i64 } @"_ZN63_$LT$I$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17h8b99a9960e20be35E"(i64 1, i64 %values.1) #13
  %_2.0 = extractvalue { i64, i64 } %0, 0
  %_2.1 = extractvalue { i64, i64 } %0, 1
  store i64 %_2.0, ptr %iter, align 8
  %1 = getelementptr inbounds i8, ptr %iter, i64 8
  store i64 %_2.1, ptr %1, align 8
  br label %bb2

bb2:                                              ; preds = %bb9, %start
; call core::iter::range::<impl core::iter::traits::iterator::Iterator for core::ops::range::Range<A>>::next
  %2 = call { i64, i64 } @"_ZN4core4iter5range101_$LT$impl$u20$core..iter..traits..iterator..Iterator$u20$for$u20$core..ops..range..Range$LT$A$GT$$GT$4next17hef020781ebec304bE"(ptr align 8 %iter) #13
  %3 = extractvalue { i64, i64 } %2, 0
  %4 = extractvalue { i64, i64 } %2, 1
  store i64 %3, ptr %_6, align 8
  %5 = getelementptr inbounds i8, ptr %_6, i64 8
  store i64 %4, ptr %5, align 8
  %_8 = load i64, ptr %_6, align 8
  %6 = getelementptr inbounds i8, ptr %_6, i64 8
  %7 = load i64, ptr %6, align 8
  %8 = trunc nuw i64 %_8 to i1
  br i1 %8, label %bb5, label %bb6

bb5:                                              ; preds = %bb2
  %9 = getelementptr inbounds i8, ptr %_6, i64 8
  %i = load i64, ptr %9, align 8
  %_13.0 = sub i64 %i, 1
  %_13.1 = icmp ult i64 %i, 1
  br i1 %_13.1, label %panic, label %bb7

bb6:                                              ; preds = %bb2
  store i8 1, ptr %_0, align 1
  br label %bb11

bb11:                                             ; preds = %bb10, %bb6
  %10 = load i8, ptr %_0, align 1
  %11 = trunc nuw i8 %10 to i1
  ret i1 %11

bb7:                                              ; preds = %bb5
  %_15 = icmp ult i64 %_13.0, %values.1
  br i1 %_15, label %bb8, label %panic1

panic:                                            ; preds = %bb5
; call core::panicking::panic_const::panic_const_sub_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_sub_overflow17h134cc1a7f93654deE(ptr align 8 @alloc_7365087531954a099f9c690f59a2122a) #17
  unreachable

bb8:                                              ; preds = %bb7
  %12 = getelementptr inbounds nuw i64, ptr %values.0, i64 %_13.0
  %_11 = load i64, ptr %12, align 8
  %_18 = icmp ult i64 %i, %values.1
  br i1 %_18, label %bb9, label %panic2

panic1:                                           ; preds = %bb7
; call core::panicking::panic_bounds_check
  call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 %_13.0, i64 %values.1, ptr align 8 @alloc_2ba7a2fa4926880e1586801c53a8ce0d) #17
  unreachable

bb9:                                              ; preds = %bb8
  %13 = getelementptr inbounds nuw i64, ptr %values.0, i64 %i
  %_16 = load i64, ptr %13, align 8
  %_10 = icmp uge i64 %_11, %_16
  br i1 %_10, label %bb10, label %bb2

panic2:                                           ; preds = %bb8
; call core::panicking::panic_bounds_check
  call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 %i, i64 %values.1, ptr align 8 @alloc_690e4d5221ac99a64f775cdd85c56001) #17
  unreachable

bb10:                                             ; preds = %bb9
  store i8 0, ptr %_0, align 1
  br label %bb11

bb4:                                              ; No predecessors!
  unreachable
}

; Function Attrs: nonlazybind uwtable
define void @utoa(ptr align 8 %string, i64 %value) unnamed_addr #3 personality ptr @rust_eh_personality {
start:
  %0 = alloca [16 x i8], align 8
  %e.i2 = alloca [0 x i8], align 1
  %self.i3 = alloca [1 x i8], align 1
  %1 = alloca [16 x i8], align 8
  %e.i = alloca [0 x i8], align 1
  %self.i = alloca [1 x i8], align 1
  %2 = alloca [16 x i8], align 8
  %_25 = alloca [24 x i8], align 8
  %_17 = alloca [16 x i8], align 8
  %args = alloca [16 x i8], align 8
  %_13 = alloca [8 x i8], align 8
  %tmp = alloca [24 x i8], align 8
  %n = alloca [8 x i8], align 8
  store i64 %value, ptr %n, align 8
; call alloc::string::String::new
  call void @_ZN5alloc6string6String3new17hd654416e831822a1E(ptr sret([24 x i8]) align 8 %tmp) #13
  br label %bb1

bb1:                                              ; preds = %bb8, %start
  %_6 = load i64, ptr %n, align 8
  %_5 = icmp ugt i64 %_6, 0
  br i1 %_5, label %bb2, label %bb9

bb9:                                              ; preds = %bb1
; invoke <alloc::string::String as core::ops::deref::Deref>::deref
  %3 = invoke { ptr, i64 } @"_ZN65_$LT$alloc..string..String$u20$as$u20$core..ops..deref..Deref$GT$5deref17h20534cc53edfc2ddE"(ptr align 8 %tmp)
          to label %bb10 unwind label %cleanup

bb2:                                              ; preds = %bb1
  %_14 = load i64, ptr %n, align 8
  br label %bb3

bb20:                                             ; preds = %bb19, %cleanup.body
; invoke core::ptr::drop_in_place<alloc::string::String>
  invoke void @"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hd43c7bafa56784c9E"(ptr align 8 %tmp) #15
          to label %bb21 unwind label %terminate

cleanup:                                          ; preds = %bb5, %bb4, %bb3, %bb16, %bb12, %bb11, %bb10, %bb9
  %4 = landingpad { ptr, i32 }
          cleanup
  br label %cleanup.body

cleanup.body:                                     ; preds = %cleanup.i, %cleanup
  %eh.lpad-body = phi { ptr, i32 } [ %4, %cleanup ], [ %42, %cleanup.i ]
  %5 = extractvalue { ptr, i32 } %eh.lpad-body, 0
  %6 = extractvalue { ptr, i32 } %eh.lpad-body, 1
  store ptr %5, ptr %2, align 8
  %7 = getelementptr inbounds i8, ptr %2, i64 8
  store i32 %6, ptr %7, align 8
  br label %bb20

bb10:                                             ; preds = %bb9
  %_28.0 = extractvalue { ptr, i64 } %3, 0
  %_28.1 = extractvalue { ptr, i64 } %3, 1
; invoke core::str::<impl str>::chars
  %8 = invoke { ptr, ptr } @"_ZN4core3str21_$LT$impl$u20$str$GT$5chars17h5b3c93c48b230af4E"(ptr align 1 %_28.0, i64 %_28.1)
          to label %bb11 unwind label %cleanup

bb11:                                             ; preds = %bb10
  %_27.0 = extractvalue { ptr, ptr } %8, 0
  %_27.1 = extractvalue { ptr, ptr } %8, 1
; invoke core::iter::traits::iterator::Iterator::rev
  %9 = invoke { ptr, ptr } @_ZN4core4iter6traits8iterator8Iterator3rev17hb54e5a0a0bcf6193E(ptr %_27.0, ptr %_27.1)
          to label %bb12 unwind label %cleanup

bb12:                                             ; preds = %bb11
  %_26.0 = extractvalue { ptr, ptr } %9, 0
  %_26.1 = extractvalue { ptr, ptr } %9, 1
; invoke core::iter::traits::iterator::Iterator::collect
  invoke void @_ZN4core4iter6traits8iterator8Iterator7collect17h3204ea02d5b29f0bE(ptr sret([24 x i8]) align 8 %_25, ptr %_26.0, ptr %_26.1)
          to label %bb13 unwind label %cleanup

bb13:                                             ; preds = %bb12
; invoke <alloc::string::String as core::ops::deref::Deref>::deref
  %10 = invoke { ptr, i64 } @"_ZN65_$LT$alloc..string..String$u20$as$u20$core..ops..deref..Deref$GT$5deref17h20534cc53edfc2ddE"(ptr align 8 %_25)
          to label %bb14 unwind label %cleanup1

bb19:                                             ; preds = %cleanup1.body
; invoke core::ptr::drop_in_place<alloc::string::String>
  invoke void @"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hd43c7bafa56784c9E"(ptr align 8 %_25) #15
          to label %bb20 unwind label %terminate

cleanup1:                                         ; preds = %bb14, %bb13
  %11 = landingpad { ptr, i32 }
          cleanup
  br label %cleanup1.body

cleanup1.body:                                    ; preds = %cleanup.i6, %cleanup1
  %eh.lpad-body8 = phi { ptr, i32 } [ %11, %cleanup1 ], [ %26, %cleanup.i6 ]
  %12 = extractvalue { ptr, i32 } %eh.lpad-body8, 0
  %13 = extractvalue { ptr, i32 } %eh.lpad-body8, 1
  store ptr %12, ptr %2, align 8
  %14 = getelementptr inbounds i8, ptr %2, i64 8
  store i32 %13, ptr %14, align 8
  br label %bb19

bb14:                                             ; preds = %bb13
  %_23.0 = extractvalue { ptr, i64 } %10, 0
  %_23.1 = extractvalue { ptr, i64 } %10, 1
; invoke <alloc::string::String as core::fmt::Write>::write_str
  %_22 = invoke zeroext i1 @"_ZN58_$LT$alloc..string..String$u20$as$u20$core..fmt..Write$GT$9write_str17h14747dc51d54bdd5E"(ptr align 8 %string, ptr align 1 %_23.0, i64 %_23.1)
          to label %bb15 unwind label %cleanup1

bb15:                                             ; preds = %bb14
  %15 = zext i1 %_22 to i8
  store i8 %15, ptr %self.i3, align 1
  %16 = load i8, ptr %self.i3, align 1
  %17 = trunc nuw i8 %16 to i1
  %_2.i4 = zext i1 %17 to i64
  br i1 %17, label %bb2.i5, label %"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17h81e500ec803a85fcE.exit9"

bb2.i5:                                           ; preds = %bb15
; invoke core::result::unwrap_failed
  invoke void @_ZN4core6result13unwrap_failed17hac9339a6c7ad693bE(ptr align 1 @alloc_00ae4b301f7fab8ac9617c03fcbd7274, i64 43, ptr align 1 %e.i2, ptr align 8 @vtable.0, ptr align 8 @alloc_811d230f1f35928f855b51232670e7d7) #18
          to label %unreachable.i7 unwind label %cleanup.i6

cleanup.i6:                                       ; preds = %bb2.i5
  %18 = landingpad { ptr, i32 }
          cleanup
  %19 = extractvalue { ptr, i32 } %18, 0
  %20 = extractvalue { ptr, i32 } %18, 1
  store ptr %19, ptr %0, align 8
  %21 = getelementptr inbounds i8, ptr %0, i64 8
  store i32 %20, ptr %21, align 8
  %22 = load ptr, ptr %0, align 8
  %23 = getelementptr inbounds i8, ptr %0, i64 8
  %24 = load i32, ptr %23, align 8
  %25 = insertvalue { ptr, i32 } poison, ptr %22, 0
  %26 = insertvalue { ptr, i32 } %25, i32 %24, 1
  br label %cleanup1.body

unreachable.i7:                                   ; preds = %bb2.i5
  unreachable

"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17h81e500ec803a85fcE.exit9": ; preds = %bb15
  br label %bb16

bb16:                                             ; preds = %"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17h81e500ec803a85fcE.exit9"
; invoke core::ptr::drop_in_place<alloc::string::String>
  invoke void @"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hd43c7bafa56784c9E"(ptr align 8 %_25)
          to label %bb17 unwind label %cleanup

bb17:                                             ; preds = %bb16
; call core::ptr::drop_in_place<alloc::string::String>
  call void @"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hd43c7bafa56784c9E"(ptr align 8 %tmp)
  ret void

terminate:                                        ; preds = %bb20, %bb19
  %27 = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer
; call core::panicking::panic_in_cleanup
  call void @_ZN4core9panicking16panic_in_cleanup17h5f6bde45d17ae243E() #16
  unreachable

bb3:                                              ; preds = %bb2
  %28 = urem i64 %_14, 10
  store i64 %28, ptr %_13, align 8
; invoke core::fmt::rt::Argument::new_display
  invoke void @_ZN4core3fmt2rt8Argument11new_display17h254ca20321b395c6E(ptr sret([16 x i8]) align 8 %_17, ptr align 8 %_13)
          to label %bb4 unwind label %cleanup

bb4:                                              ; preds = %bb3
  %29 = getelementptr inbounds nuw %"core::fmt::rt::Argument<'_>", ptr %args, i64 0
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %29, ptr align 8 %_17, i64 16, i1 false)
; invoke core::fmt::Arguments::new
  %30 = invoke { ptr, ptr } @_ZN4core3fmt9Arguments3new17h5fe91aae1524712bE(ptr align 1 @alloc_0c812808379efded5a4fb82d2790b556, ptr align 8 %args)
          to label %bb5 unwind label %cleanup

bb5:                                              ; preds = %bb4
  %_10.0 = extractvalue { ptr, ptr } %30, 0
  %_10.1 = extractvalue { ptr, ptr } %30, 1
; invoke core::fmt::Write::write_fmt
  %_8 = invoke zeroext i1 @_ZN4core3fmt5Write9write_fmt17h19bb28826bad3fc9E(ptr align 8 %tmp, ptr %_10.0, ptr %_10.1)
          to label %bb6 unwind label %cleanup

bb6:                                              ; preds = %bb5
  %31 = zext i1 %_8 to i8
  store i8 %31, ptr %self.i, align 1
  %32 = load i8, ptr %self.i, align 1
  %33 = trunc nuw i8 %32 to i1
  %_2.i = zext i1 %33 to i64
  br i1 %33, label %bb2.i, label %"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17h81e500ec803a85fcE.exit"

bb2.i:                                            ; preds = %bb6
; invoke core::result::unwrap_failed
  invoke void @_ZN4core6result13unwrap_failed17hac9339a6c7ad693bE(ptr align 1 @alloc_00ae4b301f7fab8ac9617c03fcbd7274, i64 43, ptr align 1 %e.i, ptr align 8 @vtable.0, ptr align 8 @alloc_4b9ea91629b037351b3e7a2c6026ae06) #18
          to label %unreachable.i unwind label %cleanup.i

cleanup.i:                                        ; preds = %bb2.i
  %34 = landingpad { ptr, i32 }
          cleanup
  %35 = extractvalue { ptr, i32 } %34, 0
  %36 = extractvalue { ptr, i32 } %34, 1
  store ptr %35, ptr %1, align 8
  %37 = getelementptr inbounds i8, ptr %1, i64 8
  store i32 %36, ptr %37, align 8
  %38 = load ptr, ptr %1, align 8
  %39 = getelementptr inbounds i8, ptr %1, i64 8
  %40 = load i32, ptr %39, align 8
  %41 = insertvalue { ptr, i32 } poison, ptr %38, 0
  %42 = insertvalue { ptr, i32 } %41, i32 %40, 1
  br label %cleanup.body

unreachable.i:                                    ; preds = %bb2.i
  unreachable

"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17h81e500ec803a85fcE.exit": ; preds = %bb6
  br label %bb7

bb7:                                              ; preds = %"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17h81e500ec803a85fcE.exit"
  br label %bb8

bb8:                                              ; preds = %bb7
  %43 = load i64, ptr %n, align 8
  %44 = udiv i64 %43, 10
  store i64 %44, ptr %n, align 8
  br label %bb1

bb21:                                             ; preds = %bb20
  %45 = load ptr, ptr %2, align 8
  %46 = getelementptr inbounds i8, ptr %2, i64 8
  %47 = load i32, ptr %46, align 8
  %48 = insertvalue { ptr, i32 } poison, ptr %45, 0
  %49 = insertvalue { ptr, i32 } %48, i32 %47, 1
  resume { ptr, i32 } %49
}

; core::fmt::num::imp::<impl core::fmt::Display for usize>::fmt
; Function Attrs: nonlazybind uwtable
declare zeroext i1 @"_ZN4core3fmt3num3imp54_$LT$impl$u20$core..fmt..Display$u20$for$u20$usize$GT$3fmt17h4fc94a72f199f709E"(ptr align 8, ptr align 8) unnamed_addr #3

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #5

; Function Attrs: convergent nocallback nofree nosync nounwind willreturn memory(none)
declare i1 @llvm.is.constant.i1(i1) #6

; core::panicking::panic_nounwind_fmt
; Function Attrs: cold noinline noreturn nounwind nonlazybind uwtable
declare void @_ZN4core9panicking18panic_nounwind_fmt17hf349702e3facb1fdE(ptr, ptr, i1 zeroext, ptr align 8) unnamed_addr #7

; Function Attrs: nounwind nonlazybind uwtable
declare i32 @rust_eh_personality(i32, i32, i64, ptr, ptr) unnamed_addr #1

; <alloc::vec::Vec<T,A> as core::ops::drop::Drop>::drop
; Function Attrs: nonlazybind uwtable
declare void @"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h6ffafe41d4ff3563E"(ptr align 8) unnamed_addr #3

; core::panicking::panic_in_cleanup
; Function Attrs: cold minsize noinline noreturn nounwind nonlazybind optsize uwtable
declare void @_ZN4core9panicking16panic_in_cleanup17h5f6bde45d17ae243E() unnamed_addr #8

; <alloc::raw_vec::RawVec<T,A> as core::ops::drop::Drop>::drop
; Function Attrs: nonlazybind uwtable
declare void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h86eef0594e496705E"(ptr align 8) unnamed_addr #3

; core::panicking::panic
; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_ZN4core9panicking5panic17ha2e20a73227bb72eE(ptr align 1, i64, ptr align 8) unnamed_addr #9

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctpop.i64(i64) #10

; core::panicking::panic_fmt
; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_ZN4core9panicking9panic_fmt17ha4414e4328fe24a0E(ptr, ptr, ptr align 8) unnamed_addr #9

; core::panicking::panic_cannot_unwind
; Function Attrs: cold minsize noinline noreturn nounwind nonlazybind optsize uwtable
declare void @_ZN4core9panicking19panic_cannot_unwind17h9d41c6c1d0e0d4e5E() unnamed_addr #8

; core::panicking::panic_const::panic_const_div_by_zero
; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_ZN4core9panicking11panic_const23panic_const_div_by_zero17h9a45e37423e1c559E(ptr align 8) unnamed_addr #9

; core::result::unwrap_failed
; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_ZN4core6result13unwrap_failed17hac9339a6c7ad693bE(ptr align 1, i64, ptr align 1, ptr align 8, ptr align 8) unnamed_addr #9

; core::fmt::Formatter::write_str
; Function Attrs: nonlazybind uwtable
declare zeroext i1 @_ZN4core3fmt9Formatter9write_str17h66c46e6e00843febE(ptr align 8, ptr align 1, i64) unnamed_addr #3

; alloc::vec::Vec<T,A>::reserve
; Function Attrs: nonlazybind uwtable
declare void @"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17hd7d983ab73297baaE"(ptr align 8, i64) unnamed_addr #3

; <alloc::vec::Vec<T,A> as alloc::vec::spec_extend::SpecExtend<&T,core::slice::iter::Iter<T>>>::spec_extend
; Function Attrs: nonlazybind uwtable
declare void @"_ZN132_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$alloc..vec..spec_extend..SpecExtend$LT$$RF$T$C$core..slice..iter..Iter$LT$T$GT$$GT$$GT$11spec_extend17h50a987f7cf4aec42E"(ptr align 8, ptr, ptr) unnamed_addr #3

; core::fmt::write
; Function Attrs: nonlazybind uwtable
declare zeroext i1 @_ZN4core3fmt5write17h22467d3ad5dd5554E(ptr align 1, ptr align 8, ptr, ptr) unnamed_addr #3

; core::panicking::panic_const::panic_const_sub_overflow
; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_ZN4core9panicking11panic_const24panic_const_sub_overflow17h134cc1a7f93654deE(ptr align 8) unnamed_addr #9

; core::panicking::panic_bounds_check
; Function Attrs: cold minsize noinline noreturn nonlazybind optsize uwtable
declare void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64, i64, ptr align 8) unnamed_addr #11

attributes #0 = { inlinehint nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #1 = { nounwind nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #2 = { cold nounwind nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #3 = { nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #4 = { inlinehint nounwind nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #5 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #6 = { convergent nocallback nofree nosync nounwind willreturn memory(none) }
attributes #7 = { cold noinline noreturn nounwind nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #8 = { cold minsize noinline noreturn nounwind nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #9 = { cold noinline noreturn nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #10 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #11 = { cold minsize noinline noreturn nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #12 = { inlinehint nounwind }
attributes #13 = { inlinehint }
attributes #14 = { noinline noreturn nounwind }
attributes #15 = { cold }
attributes #16 = { cold noreturn nounwind }
attributes #17 = { noinline noreturn }
attributes #18 = { noreturn }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 2, !"RtLibUseGOT", i32 1}
!2 = !{!"rustc version 1.93.1 (01f6ddf75 2026-02-11)"}

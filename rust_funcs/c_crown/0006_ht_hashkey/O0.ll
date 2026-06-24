; ModuleID = '0006_ht_hashkey_emit.44b672572a78f401-cgu.0'
source_filename = "0006_ht_hashkey_emit.44b672572a78f401-cgu.0"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@alloc_bd3468a7b96187f70c1ce98a3e7a63bf = private unnamed_addr constant [283 x i8] c"unsafe precondition(s) violated: ptr::copy_nonoverlapping requires that both pointer arguments are aligned and non-null and the specified memory ranges do not overlap\0A\0AThis indicates a bug in the program. This Undefined Behavior check is optional, and cannot be relied on for safety.", align 1
@alloc_fad0cd83b7d1858a846a172eb260e593 = private unnamed_addr constant [42 x i8] c"is_aligned_to: align is not a power-of-two", align 1
@alloc_35c749f09496b1a94c1214737a58d269 = private unnamed_addr constant [112 x i8] c"/root/.rustup/toolchains/stable-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/ptr/const_ptr.rs\00", align 1
@alloc_3fa0cb230157e93f86c3228a58824d4a = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_35c749f09496b1a94c1214737a58d269, [16 x i8] c"o\00\00\00\00\00\00\00^\05\00\00\0D\00\00\00" }>, align 8
@alloc_7daa79068841b68d9952dee39abf92f6 = private unnamed_addr constant [106 x i8] c"/root/.rustup/toolchains/stable-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/ptr/mod.rs\00", align 1
@alloc_0d87c14e0afc26d18a0752880d43f0ed = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_7daa79068841b68d9952dee39abf92f6, [16 x i8] c"i\00\00\00\00\00\00\00\0F\02\00\00\05\00\00\00" }>, align 8
@alloc_c2a62cad2463b7238717b75c7310e829 = private unnamed_addr constant [107 x i8] c"/root/.rustup/toolchains/stable-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/hash/sip.rs\00", align 1
@alloc_59a42ffae0e80e043da0de59b26d90a6 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_c2a62cad2463b7238717b75c7310e829, [16 x i8] c"j\00\00\00\00\00\00\00\89\00\00\00\1F\00\00\00" }>, align 8
@alloc_763310d78c99c2c1ad3f8a9821e942f3 = private unnamed_addr constant [61 x i8] c"is_nonoverlapping: `size_of::<T>() * count` overflows a usize", align 1
@alloc_97d92cbf2a68a6ac45a1b13da79836e4 = private unnamed_addr constant [214 x i8] c"unsafe precondition(s) violated: slice::get_unchecked requires that the index is within the slice\0A\0AThis indicates a bug in the program. This Undefined Behavior check is optional, and cannot be relied on for safety.", align 1

; std::hash::random::DefaultHasher::new
; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_ZN3std4hash6random13DefaultHasher3new17h62858873116337d7E(ptr sret([72 x i8]) align 8 %_0) unnamed_addr #0 {
start:
  %_4 = alloca [32 x i8], align 8
  %state = alloca [72 x i8], align 8
  %_2 = alloca [72 x i8], align 8
  %_1 = alloca [72 x i8], align 8
  store i64 0, ptr %_4, align 8
  %0 = getelementptr inbounds i8, ptr %_4, i64 8
  store i64 0, ptr %0, align 8
  %1 = getelementptr inbounds i8, ptr %_4, i64 16
  store i64 0, ptr %1, align 8
  %2 = getelementptr inbounds i8, ptr %_4, i64 24
  store i64 0, ptr %2, align 8
  %3 = getelementptr inbounds i8, ptr %state, i64 32
  store i64 0, ptr %3, align 8
  %4 = getelementptr inbounds i8, ptr %state, i64 40
  store i64 0, ptr %4, align 8
  %5 = getelementptr inbounds i8, ptr %state, i64 48
  store i64 0, ptr %5, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %state, ptr align 8 %_4, i64 32, i1 false)
  %6 = getelementptr inbounds i8, ptr %state, i64 56
  store i64 0, ptr %6, align 8
  %7 = getelementptr inbounds i8, ptr %state, i64 64
  store i64 0, ptr %7, align 8
; call core::hash::sip::Hasher<S>::reset
  call void @"_ZN4core4hash3sip15Hasher$LT$S$GT$5reset17h6c55cd3f78ec382aE"(ptr align 8 %state) #10
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %_2, ptr align 8 %state, i64 72, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %_1, ptr align 8 %_2, i64 72, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %_0, ptr align 8 %_1, i64 72, i1 false)
  ret void
}

; core::intrinsics::rotate_left
; Function Attrs: nounwind nonlazybind uwtable
define i64 @_ZN4core10intrinsics11rotate_left17h0c8c8ba4eb1f9be0E(i64 %x, i32 %shift) unnamed_addr #1 personality ptr @rust_eh_personality {
start:
  %0 = alloca [8 x i8], align 8
  %_3 = urem i32 %shift, 64
  %1 = zext i32 %_3 to i64
  %2 = call i64 @llvm.fshl.i64(i64 %x, i64 %x, i64 %1)
  store i64 %2, ptr %0, align 8
  %_0 = load i64, ptr %0, align 8
  ret i64 %_0
}

; core::intrinsics::disjoint_bitor
; Function Attrs: nounwind nonlazybind uwtable
define i64 @_ZN4core10intrinsics14disjoint_bitor17h57b48acee4aea1faE(i64 %a, i64 %b, ptr align 8 %0) unnamed_addr #1 personality ptr @rust_eh_personality {
start:
; invoke <u64 as core::intrinsics::fallback::DisjointBitOr>::disjoint_bitor
  %_0 = invoke i64 @"_ZN65_$LT$u64$u20$as$u20$core..intrinsics..fallback..DisjointBitOr$GT$14disjoint_bitor17hee468e1cbe62ace8E"(i64 %a, i64 %b)
          to label %bb1 unwind label %terminate

terminate:                                        ; preds = %start
  %1 = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer
; call core::panicking::panic_cannot_unwind
  call void @_ZN4core9panicking19panic_cannot_unwind17h9d41c6c1d0e0d4e5E() #11
  unreachable

bb1:                                              ; preds = %start
  ret i64 %_0
}

; core::intrinsics::unchecked_funnel_shl
; Function Attrs: nounwind nonlazybind uwtable
define i64 @_ZN4core10intrinsics20unchecked_funnel_shl17hbffc224216b9cfa9E(i64 %a, i64 %b, i32 %shift, ptr align 8 %0) unnamed_addr #1 personality ptr @rust_eh_personality {
start:
; invoke <u64 as core::intrinsics::fallback::FunnelShift>::unchecked_funnel_shl
  %_0 = invoke i64 @"_ZN63_$LT$u64$u20$as$u20$core..intrinsics..fallback..FunnelShift$GT$20unchecked_funnel_shl17h093eb06622cc08ecE"(i64 %a, i64 %b, i32 %shift)
          to label %bb1 unwind label %terminate

terminate:                                        ; preds = %start
  %1 = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer
; call core::panicking::panic_cannot_unwind
  call void @_ZN4core9panicking19panic_cannot_unwind17h9d41c6c1d0e0d4e5E() #11
  unreachable

bb1:                                              ; preds = %start
  ret i64 %_0
}

; core::intrinsics::cold_path
; Function Attrs: cold nounwind nonlazybind uwtable
define internal void @_ZN4core10intrinsics9cold_path17hd29b7ba98ab455cfE() unnamed_addr #2 {
start:
  ret void
}

; core::cmp::Ord::min
; Function Attrs: inlinehint nonlazybind uwtable
define i64 @_ZN4core3cmp3Ord3min17hffa415130ebd72d0E(i64 %0, i64 %1) unnamed_addr #0 personality ptr @rust_eh_personality {
start:
  %2 = alloca [16 x i8], align 8
  %_6 = alloca [1 x i8], align 1
  %_0 = alloca [8 x i8], align 8
  %other = alloca [8 x i8], align 8
  %self = alloca [8 x i8], align 8
  store i64 %0, ptr %self, align 8
  store i64 %1, ptr %other, align 8
  store i8 1, ptr %_6, align 1
  %_3.i = load i64, ptr %other, align 8
  %_4.i = load i64, ptr %self, align 8
  %_0.i = icmp ult i64 %_3.i, %_4.i
  br label %bb1

bb5:                                              ; preds = %cleanup
  br label %bb8

cleanup:                                          ; No predecessors!
  %3 = landingpad { ptr, i32 }
          cleanup
  %4 = extractvalue { ptr, i32 } %3, 0
  %5 = extractvalue { ptr, i32 } %3, 1
  store ptr %4, ptr %2, align 8
  %6 = getelementptr inbounds i8, ptr %2, i64 8
  store i32 %5, ptr %6, align 8
  br label %bb5

bb1:                                              ; preds = %start
  br i1 %_0.i, label %bb2, label %bb3

bb3:                                              ; preds = %bb1
  store i8 0, ptr %_6, align 1
  %7 = load i64, ptr %self, align 8
  store i64 %7, ptr %_0, align 8
  br label %bb4

bb2:                                              ; preds = %bb1
  %8 = load i64, ptr %other, align 8
  store i64 %8, ptr %_0, align 8
  br label %bb4

bb4:                                              ; preds = %bb2, %bb3
  %9 = load i64, ptr %_0, align 8
  ret i64 %9

bb8:                                              ; preds = %bb5
  %10 = load i8, ptr %_6, align 1
  %11 = trunc nuw i8 %10 to i1
  br i1 %11, label %bb7, label %bb6

bb6:                                              ; preds = %bb7, %bb8
  %12 = load ptr, ptr %2, align 8
  %13 = getelementptr inbounds i8, ptr %2, i64 8
  %14 = load i32, ptr %13, align 8
  %15 = insertvalue { ptr, i32 } poison, ptr %12, 0
  %16 = insertvalue { ptr, i32 } %15, i32 %14, 1
  resume { ptr, i32 } %16

bb7:                                              ; preds = %bb8
  br label %bb6
}

; core::ptr::copy_nonoverlapping::precondition_check
; Function Attrs: inlinehint nounwind nonlazybind uwtable
define internal void @_ZN4core3ptr19copy_nonoverlapping18precondition_check17hfb4dd029d06d3e6aE(ptr %src, ptr %dst, i64 %size, i64 %align, i64 %count, ptr align 8 %0) unnamed_addr #3 personality ptr @rust_eh_personality {
start:
  %zero_size = alloca [1 x i8], align 1
  %_8 = icmp eq i64 %count, 0
  br i1 %_8, label %bb1, label %bb2

bb2:                                              ; preds = %start
  %1 = icmp eq i64 %size, 0
  %2 = zext i1 %1 to i8
  store i8 %2, ptr %zero_size, align 1
  br label %bb3

bb1:                                              ; preds = %start
  store i8 1, ptr %zero_size, align 1
  br label %bb3

bb3:                                              ; preds = %bb1, %bb2
  %3 = load i8, ptr %zero_size, align 1
  %is_zst = trunc nuw i8 %3 to i1
; invoke core::ptr::const_ptr::<impl *const T>::is_aligned_to
  %_16 = invoke zeroext i1 @"_ZN4core3ptr9const_ptr33_$LT$impl$u20$$BP$const$u20$T$GT$13is_aligned_to17ha99001e65eb36481E"(ptr %src, i64 %align)
          to label %bb15 unwind label %terminate

terminate:                                        ; preds = %bb5, %bb4, %bb3
  %4 = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer
; call core::panicking::panic_cannot_unwind
  call void @_ZN4core9panicking19panic_cannot_unwind17h9d41c6c1d0e0d4e5E() #11
  unreachable

bb15:                                             ; preds = %bb3
  br i1 %_16, label %bb11, label %bb12

bb12:                                             ; preds = %bb15
  br label %bb7

bb11:                                             ; preds = %bb15
  br i1 %is_zst, label %bb13, label %bb14

bb7:                                              ; preds = %bb14, %bb12
  br label %bb8

bb14:                                             ; preds = %bb11
  %_18 = ptrtoint ptr %src to i64
  %_17 = icmp eq i64 %_18, 0
  %_9 = xor i1 %_17, true
  br i1 %_9, label %bb4, label %bb7

bb13:                                             ; preds = %bb11
  br label %bb4

bb4:                                              ; preds = %bb13, %bb14
; invoke core::ptr::const_ptr::<impl *const T>::is_aligned_to
  %_19 = invoke zeroext i1 @"_ZN4core3ptr9const_ptr33_$LT$impl$u20$$BP$const$u20$T$GT$13is_aligned_to17ha99001e65eb36481E"(ptr %dst, i64 %align)
          to label %bb20 unwind label %terminate

bb8:                                              ; preds = %bb6, %bb7
  br label %bb9

bb20:                                             ; preds = %bb4
  br i1 %_19, label %bb16, label %bb17

bb17:                                             ; preds = %bb20
  br label %bb6

bb16:                                             ; preds = %bb20
  %5 = load i8, ptr %zero_size, align 1
  %6 = trunc nuw i8 %5 to i1
  br i1 %6, label %bb18, label %bb19

bb6:                                              ; preds = %bb19, %bb17
  br label %bb8

bb19:                                             ; preds = %bb16
  %_21 = ptrtoint ptr %dst to i64
  %_20 = icmp eq i64 %_21, 0
  %_11 = xor i1 %_20, true
  br i1 %_11, label %bb5, label %bb6

bb18:                                             ; preds = %bb16
  br label %bb5

bb5:                                              ; preds = %bb18, %bb19
; invoke core::ub_checks::maybe_is_nonoverlapping::runtime
  %_6 = invoke zeroext i1 @_ZN4core9ub_checks23maybe_is_nonoverlapping7runtime17h8de2c172649f9640E(ptr %src, ptr %dst, i64 %size, i64 %count)
          to label %bb21 unwind label %terminate

bb9:                                              ; preds = %bb21, %bb8
; call core::panicking::panic_nounwind_fmt
  call void @_ZN4core9panicking18panic_nounwind_fmt17hf349702e3facb1fdE(ptr @alloc_bd3468a7b96187f70c1ce98a3e7a63bf, ptr inttoptr (i64 567 to ptr), i1 zeroext false, ptr align 8 %0) #12
  unreachable

bb21:                                             ; preds = %bb5
  br i1 %_6, label %bb10, label %bb9

bb10:                                             ; preds = %bb21
  ret void
}

; core::ptr::const_ptr::<impl *const T>::is_aligned_to
; Function Attrs: inlinehint nonlazybind uwtable
define zeroext i1 @"_ZN4core3ptr9const_ptr33_$LT$impl$u20$$BP$const$u20$T$GT$13is_aligned_to17ha99001e65eb36481E"(ptr %self, i64 %align) unnamed_addr #0 {
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
  call void @_ZN4core9panicking9panic_fmt17ha4414e4328fe24a0E(ptr @alloc_fad0cd83b7d1858a846a172eb260e593, ptr inttoptr (i64 85 to ptr), ptr align 8 @alloc_3fa0cb230157e93f86c3228a58824d4a) #13
  unreachable

bb1:                                              ; preds = %start
  %_7 = ptrtoint ptr %self to i64
  %_8 = sub i64 %align, 1
  %_6 = and i64 %_7, %_8
  %_0 = icmp eq i64 %_6, 0
  ret i1 %_0
}

; core::hash::sip::Hasher<S>::reset
; Function Attrs: inlinehint nonlazybind uwtable
define void @"_ZN4core4hash3sip15Hasher$LT$S$GT$5reset17h6c55cd3f78ec382aE"(ptr align 8 %self) unnamed_addr #0 {
start:
  %0 = getelementptr inbounds i8, ptr %self, i64 48
  store i64 0, ptr %0, align 8
  %1 = getelementptr inbounds i8, ptr %self, i64 32
  %_2 = load i64, ptr %1, align 8
  %2 = xor i64 %_2, 8317987319222330741
  store i64 %2, ptr %self, align 8
  %3 = getelementptr inbounds i8, ptr %self, i64 40
  %_3 = load i64, ptr %3, align 8
  %4 = getelementptr inbounds i8, ptr %self, i64 16
  %5 = xor i64 %_3, 7237128888997146477
  store i64 %5, ptr %4, align 8
  %6 = getelementptr inbounds i8, ptr %self, i64 32
  %_4 = load i64, ptr %6, align 8
  %7 = getelementptr inbounds i8, ptr %self, i64 8
  %8 = xor i64 %_4, 7816392313619706465
  store i64 %8, ptr %7, align 8
  %9 = getelementptr inbounds i8, ptr %self, i64 40
  %_5 = load i64, ptr %9, align 8
  %10 = getelementptr inbounds i8, ptr %self, i64 24
  %11 = xor i64 %_5, 8387220255154660723
  store i64 %11, ptr %10, align 8
  %12 = getelementptr inbounds i8, ptr %self, i64 64
  store i64 0, ptr %12, align 8
  ret void
}

; core::hash::sip::u8to64_le
; Function Attrs: inlinehint nonlazybind uwtable
define internal i64 @_ZN4core4hash3sip9u8to64_le17h40d8e786adc7f925E(ptr align 1 %buf.0, i64 %buf.1, i64 %start1, i64 %len) unnamed_addr #0 {
start:
  %data2 = alloca [2 x i8], align 2
  %data = alloca [4 x i8], align 4
  %i = alloca [8 x i8], align 8
  %out = alloca [8 x i8], align 8
  store i64 0, ptr %i, align 8
  store i64 0, ptr %out, align 8
  %_7 = load i64, ptr %i, align 8
  %_6 = add i64 %_7, 3
  %_5 = icmp ult i64 %_6, %len
  br i1 %_5, label %bb1, label %bb2

bb2:                                              ; preds = %start
  br label %bb3

bb1:                                              ; preds = %start
  store i32 0, ptr %data, align 4
  %_12 = load i64, ptr %i, align 8
  %count = add i64 %start1, %_12
  %src = getelementptr inbounds nuw i8, ptr %buf.0, i64 %count
  br label %bb10

bb3:                                              ; preds = %bb12, %bb2
  %_18 = load i64, ptr %i, align 8
  %_17 = add i64 %_18, 1
  %_16 = icmp ult i64 %_17, %len
  br i1 %_16, label %bb4, label %bb5

bb10:                                             ; preds = %bb1
; call core::ptr::copy_nonoverlapping::precondition_check
  call void @_ZN4core3ptr19copy_nonoverlapping18precondition_check17hfb4dd029d06d3e6aE(ptr %src, ptr %data, i64 1, i64 1, i64 4, ptr align 8 @alloc_0d87c14e0afc26d18a0752880d43f0ed) #14
  br label %bb12

bb12:                                             ; preds = %bb10
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %data, ptr align 1 %src, i64 4, i1 false)
  %self = load i32, ptr %data, align 4
  %0 = zext i32 %self to i64
  store i64 %0, ptr %out, align 8
  %1 = load i64, ptr %i, align 8
  %2 = add i64 %1, 4
  store i64 %2, ptr %i, align 8
  br label %bb3

bb5:                                              ; preds = %bb3
  br label %bb6

bb4:                                              ; preds = %bb3
  store i16 0, ptr %data2, align 2
  %_25 = load i64, ptr %i, align 8
  %count3 = add i64 %start1, %_25
  %src4 = getelementptr inbounds nuw i8, ptr %buf.0, i64 %count3
  br label %bb13

bb6:                                              ; preds = %bb15, %bb5
  %_32 = load i64, ptr %i, align 8
  %_31 = icmp ult i64 %_32, %len
  br i1 %_31, label %bb7, label %bb8

bb13:                                             ; preds = %bb4
; call core::ptr::copy_nonoverlapping::precondition_check
  call void @_ZN4core3ptr19copy_nonoverlapping18precondition_check17hfb4dd029d06d3e6aE(ptr %src4, ptr %data2, i64 1, i64 1, i64 2, ptr align 8 @alloc_0d87c14e0afc26d18a0752880d43f0ed) #14
  br label %bb15

bb15:                                             ; preds = %bb13
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %data2, ptr align 1 %src4, i64 2, i1 false)
  %self5 = load i16, ptr %data2, align 2
  %_20 = zext i16 %self5 to i64
  %_30 = load i64, ptr %i, align 8
  %_29 = mul i64 %_30, 8
  %3 = and i64 %_29, 63
  %_19 = shl i64 %_20, %3
  %4 = load i64, ptr %out, align 8
  %5 = or i64 %4, %_19
  store i64 %5, ptr %out, align 8
  %6 = load i64, ptr %i, align 8
  %7 = add i64 %6, 2
  store i64 %7, ptr %i, align 8
  br label %bb6

bb8:                                              ; preds = %bb6
  br label %bb9

bb7:                                              ; preds = %bb6
  %_37 = load i64, ptr %i, align 8
  %index = add i64 %start1, %_37
  br label %bb16

bb9:                                              ; preds = %bb18, %bb8
  %8 = load i64, ptr %out, align 8
  ret i64 %8

bb16:                                             ; preds = %bb7
; call <usize as core::slice::index::SliceIndex<[T]>>::get_unchecked::precondition_check
  call void @"_ZN75_$LT$usize$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$13get_unchecked18precondition_check17hcc0b3b5bcae2ac6fE"(i64 %index, i64 %buf.1, ptr align 8 @alloc_59a42ffae0e80e043da0de59b26d90a6) #14
  br label %bb18

bb18:                                             ; preds = %bb16
  %_53 = icmp ult i64 %index, %buf.1
  %_50 = getelementptr inbounds nuw i8, ptr %buf.0, i64 %index
  %_35 = load i8, ptr %_50, align 1
  %_34 = zext i8 %_35 to i64
  %_39 = load i64, ptr %i, align 8
  %_38 = mul i64 %_39, 8
  %9 = and i64 %_38, 63
  %_33 = shl i64 %_34, %9
  %10 = load i64, ptr %out, align 8
  %11 = or i64 %10, %_33
  store i64 %11, ptr %out, align 8
  %12 = load i64, ptr %i, align 8
  %13 = add i64 %12, 1
  store i64 %13, ptr %i, align 8
  br label %bb9
}

; core::ub_checks::maybe_is_nonoverlapping::runtime
; Function Attrs: inlinehint nonlazybind uwtable
define internal zeroext i1 @_ZN4core9ub_checks23maybe_is_nonoverlapping7runtime17h8de2c172649f9640E(ptr %src, ptr %dst, i64 %size, i64 %count) unnamed_addr #0 {
start:
  %diff = alloca [8 x i8], align 8
  %_9 = alloca [16 x i8], align 8
  %src_usize = ptrtoint ptr %src to i64
  %dst_usize = ptrtoint ptr %dst to i64
  %0 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %size, i64 %count)
  %_13.0 = extractvalue { i64, i1 } %0, 0
  %_13.1 = extractvalue { i64, i1 } %0, 1
  br i1 %_13.1, label %bb1, label %bb3

bb3:                                              ; preds = %start
  %1 = getelementptr inbounds i8, ptr %_9, i64 8
  store i64 %_13.0, ptr %1, align 8
  store i64 1, ptr %_9, align 8
  %2 = getelementptr inbounds i8, ptr %_9, i64 8
  %size1 = load i64, ptr %2, align 8
  %_21 = icmp ult i64 %src_usize, %dst_usize
  br i1 %_21, label %bb4, label %bb5

bb1:                                              ; preds = %start
; call core::panicking::panic_nounwind
  call void @_ZN4core9panicking14panic_nounwind17h9a55331e46709e5fE(ptr align 1 @alloc_763310d78c99c2c1ad3f8a9821e942f3, i64 61) #12
  unreachable

bb5:                                              ; preds = %bb3
  %3 = sub i64 %src_usize, %dst_usize
  store i64 %3, ptr %diff, align 8
  br label %bb6

bb4:                                              ; preds = %bb3
  %4 = sub i64 %dst_usize, %src_usize
  store i64 %4, ptr %diff, align 8
  br label %bb6

bb6:                                              ; preds = %bb4, %bb5
  %5 = load i64, ptr %diff, align 8
  %_0 = icmp uge i64 %5, %size1
  ret i1 %_0
}

; <u64 as core::intrinsics::fallback::FunnelShift>::unchecked_funnel_shl
; Function Attrs: inlinehint nonlazybind uwtable
define internal i64 @"_ZN63_$LT$u64$u20$as$u20$core..intrinsics..fallback..FunnelShift$GT$20unchecked_funnel_shl17h093eb06622cc08ecE"(i64 %self, i64 %rhs, i32 %shift) unnamed_addr #0 {
start:
  %_0 = alloca [8 x i8], align 8
  %_4 = icmp ult i32 %shift, 64
  %_5 = icmp eq i32 %shift, 0
  br i1 %_5, label %bb1, label %bb2

bb2:                                              ; preds = %start
  %0 = zext i32 %shift to i64
  %_6 = shl i64 %self, %0
  %_8 = sub i32 64, %shift
  %1 = zext i32 %_8 to i64
  %_7 = lshr i64 %rhs, %1
  %2 = or disjoint i64 %_6, %_7
  store i64 %2, ptr %_0, align 8
  br label %bb4

bb1:                                              ; preds = %start
  store i64 %self, ptr %_0, align 8
  br label %bb4

bb4:                                              ; preds = %bb1, %bb2
  %3 = load i64, ptr %_0, align 8
  ret i64 %3
}

; <u64 as core::intrinsics::fallback::DisjointBitOr>::disjoint_bitor
; Function Attrs: inlinehint nonlazybind uwtable
define internal i64 @"_ZN65_$LT$u64$u20$as$u20$core..intrinsics..fallback..DisjointBitOr$GT$14disjoint_bitor17hee468e1cbe62ace8E"(i64 %self, i64 %other) unnamed_addr #0 {
start:
  %_4 = and i64 %self, %other
  %_3 = icmp eq i64 %_4, 0
  %_0 = or i64 %self, %other
  ret i64 %_0
}

; <core::hash::sip::Sip13Rounds as core::hash::sip::Sip>::c_rounds
; Function Attrs: inlinehint nonlazybind uwtable
define internal void @"_ZN69_$LT$core..hash..sip..Sip13Rounds$u20$as$u20$core..hash..sip..Sip$GT$8c_rounds17h1e1bc99a180b2b58E"(ptr align 8 %state) unnamed_addr #0 {
start:
  %0 = alloca [8 x i8], align 8
  %1 = alloca [8 x i8], align 8
  %2 = alloca [8 x i8], align 8
  %3 = alloca [8 x i8], align 8
  %4 = alloca [8 x i8], align 8
  %5 = alloca [8 x i8], align 8
  %self = load i64, ptr %state, align 8
  %6 = getelementptr inbounds i8, ptr %state, i64 16
  %rhs = load i64, ptr %6, align 8
  %_2 = add i64 %self, %rhs
  store i64 %_2, ptr %state, align 8
  %7 = getelementptr inbounds i8, ptr %state, i64 8
  %self1 = load i64, ptr %7, align 8
  %8 = getelementptr inbounds i8, ptr %state, i64 24
  %rhs2 = load i64, ptr %8, align 8
  %_5 = add i64 %self1, %rhs2
  %9 = getelementptr inbounds i8, ptr %state, i64 8
  store i64 %_5, ptr %9, align 8
  %10 = getelementptr inbounds i8, ptr %state, i64 16
  %self3 = load i64, ptr %10, align 8
; call core::intrinsics::rotate_left
  %_8 = call i64 @_ZN4core10intrinsics11rotate_left17h0c8c8ba4eb1f9be0E(i64 %self3, i32 13) #15
  %11 = getelementptr inbounds i8, ptr %state, i64 16
  store i64 %_8, ptr %11, align 8
  %_10 = load i64, ptr %state, align 8
  %12 = getelementptr inbounds i8, ptr %state, i64 16
  %13 = getelementptr inbounds i8, ptr %state, i64 16
  %14 = load i64, ptr %13, align 8
  %15 = xor i64 %14, %_10
  store i64 %15, ptr %12, align 8
  %16 = getelementptr inbounds i8, ptr %state, i64 24
  %self4 = load i64, ptr %16, align 8
; call core::intrinsics::rotate_left
  %_11 = call i64 @_ZN4core10intrinsics11rotate_left17h0c8c8ba4eb1f9be0E(i64 %self4, i32 16) #15
  %17 = getelementptr inbounds i8, ptr %state, i64 24
  store i64 %_11, ptr %17, align 8
  %18 = getelementptr inbounds i8, ptr %state, i64 8
  %_13 = load i64, ptr %18, align 8
  %19 = getelementptr inbounds i8, ptr %state, i64 24
  %20 = getelementptr inbounds i8, ptr %state, i64 24
  %21 = load i64, ptr %20, align 8
  %22 = xor i64 %21, %_13
  store i64 %22, ptr %19, align 8
  %self5 = load i64, ptr %state, align 8
; call core::intrinsics::rotate_left
  %_14 = call i64 @_ZN4core10intrinsics11rotate_left17h0c8c8ba4eb1f9be0E(i64 %self5, i32 32) #15
  store i64 %_14, ptr %state, align 8
  %23 = getelementptr inbounds i8, ptr %state, i64 8
  %self6 = load i64, ptr %23, align 8
  %24 = getelementptr inbounds i8, ptr %state, i64 16
  %rhs7 = load i64, ptr %24, align 8
  %_16 = add i64 %self6, %rhs7
  %25 = getelementptr inbounds i8, ptr %state, i64 8
  store i64 %_16, ptr %25, align 8
  %self8 = load i64, ptr %state, align 8
  %26 = getelementptr inbounds i8, ptr %state, i64 24
  %rhs9 = load i64, ptr %26, align 8
  %_19 = add i64 %self8, %rhs9
  store i64 %_19, ptr %state, align 8
  %27 = getelementptr inbounds i8, ptr %state, i64 16
  %self10 = load i64, ptr %27, align 8
; call core::intrinsics::rotate_left
  %_22 = call i64 @_ZN4core10intrinsics11rotate_left17h0c8c8ba4eb1f9be0E(i64 %self10, i32 17) #15
  %28 = getelementptr inbounds i8, ptr %state, i64 16
  store i64 %_22, ptr %28, align 8
  %29 = getelementptr inbounds i8, ptr %state, i64 8
  %_24 = load i64, ptr %29, align 8
  %30 = getelementptr inbounds i8, ptr %state, i64 16
  %31 = getelementptr inbounds i8, ptr %state, i64 16
  %32 = load i64, ptr %31, align 8
  %33 = xor i64 %32, %_24
  store i64 %33, ptr %30, align 8
  %34 = getelementptr inbounds i8, ptr %state, i64 24
  %self11 = load i64, ptr %34, align 8
; call core::intrinsics::rotate_left
  %_25 = call i64 @_ZN4core10intrinsics11rotate_left17h0c8c8ba4eb1f9be0E(i64 %self11, i32 21) #15
  %35 = getelementptr inbounds i8, ptr %state, i64 24
  store i64 %_25, ptr %35, align 8
  %_27 = load i64, ptr %state, align 8
  %36 = getelementptr inbounds i8, ptr %state, i64 24
  %37 = getelementptr inbounds i8, ptr %state, i64 24
  %38 = load i64, ptr %37, align 8
  %39 = xor i64 %38, %_27
  store i64 %39, ptr %36, align 8
  %40 = getelementptr inbounds i8, ptr %state, i64 8
  %self12 = load i64, ptr %40, align 8
; call core::intrinsics::rotate_left
  %_28 = call i64 @_ZN4core10intrinsics11rotate_left17h0c8c8ba4eb1f9be0E(i64 %self12, i32 32) #15
  %41 = getelementptr inbounds i8, ptr %state, i64 8
  store i64 %_28, ptr %41, align 8
  ret void
}

; <core::hash::sip::Sip13Rounds as core::hash::sip::Sip>::d_rounds
; Function Attrs: inlinehint nonlazybind uwtable
define internal void @"_ZN69_$LT$core..hash..sip..Sip13Rounds$u20$as$u20$core..hash..sip..Sip$GT$8d_rounds17h82a2ba0c0c47f66aE"(ptr align 8 %state) unnamed_addr #0 {
start:
  %0 = alloca [8 x i8], align 8
  %1 = alloca [8 x i8], align 8
  %2 = alloca [8 x i8], align 8
  %3 = alloca [8 x i8], align 8
  %4 = alloca [8 x i8], align 8
  %5 = alloca [8 x i8], align 8
  %6 = alloca [8 x i8], align 8
  %7 = alloca [8 x i8], align 8
  %8 = alloca [8 x i8], align 8
  %9 = alloca [8 x i8], align 8
  %10 = alloca [8 x i8], align 8
  %11 = alloca [8 x i8], align 8
  %12 = alloca [8 x i8], align 8
  %13 = alloca [8 x i8], align 8
  %14 = alloca [8 x i8], align 8
  %15 = alloca [8 x i8], align 8
  %16 = alloca [8 x i8], align 8
  %17 = alloca [8 x i8], align 8
  %self = load i64, ptr %state, align 8
  %18 = getelementptr inbounds i8, ptr %state, i64 16
  %rhs = load i64, ptr %18, align 8
  %_2 = add i64 %self, %rhs
  store i64 %_2, ptr %state, align 8
  %19 = getelementptr inbounds i8, ptr %state, i64 8
  %self1 = load i64, ptr %19, align 8
  %20 = getelementptr inbounds i8, ptr %state, i64 24
  %rhs2 = load i64, ptr %20, align 8
  %_5 = add i64 %self1, %rhs2
  %21 = getelementptr inbounds i8, ptr %state, i64 8
  store i64 %_5, ptr %21, align 8
  %22 = getelementptr inbounds i8, ptr %state, i64 16
  %self3 = load i64, ptr %22, align 8
; call core::intrinsics::rotate_left
  %_8 = call i64 @_ZN4core10intrinsics11rotate_left17h0c8c8ba4eb1f9be0E(i64 %self3, i32 13) #15
  %23 = getelementptr inbounds i8, ptr %state, i64 16
  store i64 %_8, ptr %23, align 8
  %_10 = load i64, ptr %state, align 8
  %24 = getelementptr inbounds i8, ptr %state, i64 16
  %25 = getelementptr inbounds i8, ptr %state, i64 16
  %26 = load i64, ptr %25, align 8
  %27 = xor i64 %26, %_10
  store i64 %27, ptr %24, align 8
  %28 = getelementptr inbounds i8, ptr %state, i64 24
  %self4 = load i64, ptr %28, align 8
; call core::intrinsics::rotate_left
  %_11 = call i64 @_ZN4core10intrinsics11rotate_left17h0c8c8ba4eb1f9be0E(i64 %self4, i32 16) #15
  %29 = getelementptr inbounds i8, ptr %state, i64 24
  store i64 %_11, ptr %29, align 8
  %30 = getelementptr inbounds i8, ptr %state, i64 8
  %_13 = load i64, ptr %30, align 8
  %31 = getelementptr inbounds i8, ptr %state, i64 24
  %32 = getelementptr inbounds i8, ptr %state, i64 24
  %33 = load i64, ptr %32, align 8
  %34 = xor i64 %33, %_13
  store i64 %34, ptr %31, align 8
  %self5 = load i64, ptr %state, align 8
; call core::intrinsics::rotate_left
  %_14 = call i64 @_ZN4core10intrinsics11rotate_left17h0c8c8ba4eb1f9be0E(i64 %self5, i32 32) #15
  store i64 %_14, ptr %state, align 8
  %35 = getelementptr inbounds i8, ptr %state, i64 8
  %self6 = load i64, ptr %35, align 8
  %36 = getelementptr inbounds i8, ptr %state, i64 16
  %rhs7 = load i64, ptr %36, align 8
  %_16 = add i64 %self6, %rhs7
  %37 = getelementptr inbounds i8, ptr %state, i64 8
  store i64 %_16, ptr %37, align 8
  %self8 = load i64, ptr %state, align 8
  %38 = getelementptr inbounds i8, ptr %state, i64 24
  %rhs9 = load i64, ptr %38, align 8
  %_19 = add i64 %self8, %rhs9
  store i64 %_19, ptr %state, align 8
  %39 = getelementptr inbounds i8, ptr %state, i64 16
  %self10 = load i64, ptr %39, align 8
; call core::intrinsics::rotate_left
  %_22 = call i64 @_ZN4core10intrinsics11rotate_left17h0c8c8ba4eb1f9be0E(i64 %self10, i32 17) #15
  %40 = getelementptr inbounds i8, ptr %state, i64 16
  store i64 %_22, ptr %40, align 8
  %41 = getelementptr inbounds i8, ptr %state, i64 8
  %_24 = load i64, ptr %41, align 8
  %42 = getelementptr inbounds i8, ptr %state, i64 16
  %43 = getelementptr inbounds i8, ptr %state, i64 16
  %44 = load i64, ptr %43, align 8
  %45 = xor i64 %44, %_24
  store i64 %45, ptr %42, align 8
  %46 = getelementptr inbounds i8, ptr %state, i64 24
  %self11 = load i64, ptr %46, align 8
; call core::intrinsics::rotate_left
  %_25 = call i64 @_ZN4core10intrinsics11rotate_left17h0c8c8ba4eb1f9be0E(i64 %self11, i32 21) #15
  %47 = getelementptr inbounds i8, ptr %state, i64 24
  store i64 %_25, ptr %47, align 8
  %_27 = load i64, ptr %state, align 8
  %48 = getelementptr inbounds i8, ptr %state, i64 24
  %49 = getelementptr inbounds i8, ptr %state, i64 24
  %50 = load i64, ptr %49, align 8
  %51 = xor i64 %50, %_27
  store i64 %51, ptr %48, align 8
  %52 = getelementptr inbounds i8, ptr %state, i64 8
  %self12 = load i64, ptr %52, align 8
; call core::intrinsics::rotate_left
  %_28 = call i64 @_ZN4core10intrinsics11rotate_left17h0c8c8ba4eb1f9be0E(i64 %self12, i32 32) #15
  %53 = getelementptr inbounds i8, ptr %state, i64 8
  store i64 %_28, ptr %53, align 8
  %self13 = load i64, ptr %state, align 8
  %54 = getelementptr inbounds i8, ptr %state, i64 16
  %rhs14 = load i64, ptr %54, align 8
  %_30 = add i64 %self13, %rhs14
  store i64 %_30, ptr %state, align 8
  %55 = getelementptr inbounds i8, ptr %state, i64 8
  %self15 = load i64, ptr %55, align 8
  %56 = getelementptr inbounds i8, ptr %state, i64 24
  %rhs16 = load i64, ptr %56, align 8
  %_33 = add i64 %self15, %rhs16
  %57 = getelementptr inbounds i8, ptr %state, i64 8
  store i64 %_33, ptr %57, align 8
  %58 = getelementptr inbounds i8, ptr %state, i64 16
  %self17 = load i64, ptr %58, align 8
; call core::intrinsics::rotate_left
  %_36 = call i64 @_ZN4core10intrinsics11rotate_left17h0c8c8ba4eb1f9be0E(i64 %self17, i32 13) #15
  %59 = getelementptr inbounds i8, ptr %state, i64 16
  store i64 %_36, ptr %59, align 8
  %_38 = load i64, ptr %state, align 8
  %60 = getelementptr inbounds i8, ptr %state, i64 16
  %61 = getelementptr inbounds i8, ptr %state, i64 16
  %62 = load i64, ptr %61, align 8
  %63 = xor i64 %62, %_38
  store i64 %63, ptr %60, align 8
  %64 = getelementptr inbounds i8, ptr %state, i64 24
  %self18 = load i64, ptr %64, align 8
; call core::intrinsics::rotate_left
  %_39 = call i64 @_ZN4core10intrinsics11rotate_left17h0c8c8ba4eb1f9be0E(i64 %self18, i32 16) #15
  %65 = getelementptr inbounds i8, ptr %state, i64 24
  store i64 %_39, ptr %65, align 8
  %66 = getelementptr inbounds i8, ptr %state, i64 8
  %_41 = load i64, ptr %66, align 8
  %67 = getelementptr inbounds i8, ptr %state, i64 24
  %68 = getelementptr inbounds i8, ptr %state, i64 24
  %69 = load i64, ptr %68, align 8
  %70 = xor i64 %69, %_41
  store i64 %70, ptr %67, align 8
  %self19 = load i64, ptr %state, align 8
; call core::intrinsics::rotate_left
  %_42 = call i64 @_ZN4core10intrinsics11rotate_left17h0c8c8ba4eb1f9be0E(i64 %self19, i32 32) #15
  store i64 %_42, ptr %state, align 8
  %71 = getelementptr inbounds i8, ptr %state, i64 8
  %self20 = load i64, ptr %71, align 8
  %72 = getelementptr inbounds i8, ptr %state, i64 16
  %rhs21 = load i64, ptr %72, align 8
  %_44 = add i64 %self20, %rhs21
  %73 = getelementptr inbounds i8, ptr %state, i64 8
  store i64 %_44, ptr %73, align 8
  %self22 = load i64, ptr %state, align 8
  %74 = getelementptr inbounds i8, ptr %state, i64 24
  %rhs23 = load i64, ptr %74, align 8
  %_47 = add i64 %self22, %rhs23
  store i64 %_47, ptr %state, align 8
  %75 = getelementptr inbounds i8, ptr %state, i64 16
  %self24 = load i64, ptr %75, align 8
; call core::intrinsics::rotate_left
  %_50 = call i64 @_ZN4core10intrinsics11rotate_left17h0c8c8ba4eb1f9be0E(i64 %self24, i32 17) #15
  %76 = getelementptr inbounds i8, ptr %state, i64 16
  store i64 %_50, ptr %76, align 8
  %77 = getelementptr inbounds i8, ptr %state, i64 8
  %_52 = load i64, ptr %77, align 8
  %78 = getelementptr inbounds i8, ptr %state, i64 16
  %79 = getelementptr inbounds i8, ptr %state, i64 16
  %80 = load i64, ptr %79, align 8
  %81 = xor i64 %80, %_52
  store i64 %81, ptr %78, align 8
  %82 = getelementptr inbounds i8, ptr %state, i64 24
  %self25 = load i64, ptr %82, align 8
; call core::intrinsics::rotate_left
  %_53 = call i64 @_ZN4core10intrinsics11rotate_left17h0c8c8ba4eb1f9be0E(i64 %self25, i32 21) #15
  %83 = getelementptr inbounds i8, ptr %state, i64 24
  store i64 %_53, ptr %83, align 8
  %_55 = load i64, ptr %state, align 8
  %84 = getelementptr inbounds i8, ptr %state, i64 24
  %85 = getelementptr inbounds i8, ptr %state, i64 24
  %86 = load i64, ptr %85, align 8
  %87 = xor i64 %86, %_55
  store i64 %87, ptr %84, align 8
  %88 = getelementptr inbounds i8, ptr %state, i64 8
  %self26 = load i64, ptr %88, align 8
; call core::intrinsics::rotate_left
  %_56 = call i64 @_ZN4core10intrinsics11rotate_left17h0c8c8ba4eb1f9be0E(i64 %self26, i32 32) #15
  %89 = getelementptr inbounds i8, ptr %state, i64 8
  store i64 %_56, ptr %89, align 8
  %self27 = load i64, ptr %state, align 8
  %90 = getelementptr inbounds i8, ptr %state, i64 16
  %rhs28 = load i64, ptr %90, align 8
  %_58 = add i64 %self27, %rhs28
  store i64 %_58, ptr %state, align 8
  %91 = getelementptr inbounds i8, ptr %state, i64 8
  %self29 = load i64, ptr %91, align 8
  %92 = getelementptr inbounds i8, ptr %state, i64 24
  %rhs30 = load i64, ptr %92, align 8
  %_61 = add i64 %self29, %rhs30
  %93 = getelementptr inbounds i8, ptr %state, i64 8
  store i64 %_61, ptr %93, align 8
  %94 = getelementptr inbounds i8, ptr %state, i64 16
  %self31 = load i64, ptr %94, align 8
; call core::intrinsics::rotate_left
  %_64 = call i64 @_ZN4core10intrinsics11rotate_left17h0c8c8ba4eb1f9be0E(i64 %self31, i32 13) #15
  %95 = getelementptr inbounds i8, ptr %state, i64 16
  store i64 %_64, ptr %95, align 8
  %_66 = load i64, ptr %state, align 8
  %96 = getelementptr inbounds i8, ptr %state, i64 16
  %97 = getelementptr inbounds i8, ptr %state, i64 16
  %98 = load i64, ptr %97, align 8
  %99 = xor i64 %98, %_66
  store i64 %99, ptr %96, align 8
  %100 = getelementptr inbounds i8, ptr %state, i64 24
  %self32 = load i64, ptr %100, align 8
; call core::intrinsics::rotate_left
  %_67 = call i64 @_ZN4core10intrinsics11rotate_left17h0c8c8ba4eb1f9be0E(i64 %self32, i32 16) #15
  %101 = getelementptr inbounds i8, ptr %state, i64 24
  store i64 %_67, ptr %101, align 8
  %102 = getelementptr inbounds i8, ptr %state, i64 8
  %_69 = load i64, ptr %102, align 8
  %103 = getelementptr inbounds i8, ptr %state, i64 24
  %104 = getelementptr inbounds i8, ptr %state, i64 24
  %105 = load i64, ptr %104, align 8
  %106 = xor i64 %105, %_69
  store i64 %106, ptr %103, align 8
  %self33 = load i64, ptr %state, align 8
; call core::intrinsics::rotate_left
  %_70 = call i64 @_ZN4core10intrinsics11rotate_left17h0c8c8ba4eb1f9be0E(i64 %self33, i32 32) #15
  store i64 %_70, ptr %state, align 8
  %107 = getelementptr inbounds i8, ptr %state, i64 8
  %self34 = load i64, ptr %107, align 8
  %108 = getelementptr inbounds i8, ptr %state, i64 16
  %rhs35 = load i64, ptr %108, align 8
  %_72 = add i64 %self34, %rhs35
  %109 = getelementptr inbounds i8, ptr %state, i64 8
  store i64 %_72, ptr %109, align 8
  %self36 = load i64, ptr %state, align 8
  %110 = getelementptr inbounds i8, ptr %state, i64 24
  %rhs37 = load i64, ptr %110, align 8
  %_75 = add i64 %self36, %rhs37
  store i64 %_75, ptr %state, align 8
  %111 = getelementptr inbounds i8, ptr %state, i64 16
  %self38 = load i64, ptr %111, align 8
; call core::intrinsics::rotate_left
  %_78 = call i64 @_ZN4core10intrinsics11rotate_left17h0c8c8ba4eb1f9be0E(i64 %self38, i32 17) #15
  %112 = getelementptr inbounds i8, ptr %state, i64 16
  store i64 %_78, ptr %112, align 8
  %113 = getelementptr inbounds i8, ptr %state, i64 8
  %_80 = load i64, ptr %113, align 8
  %114 = getelementptr inbounds i8, ptr %state, i64 16
  %115 = getelementptr inbounds i8, ptr %state, i64 16
  %116 = load i64, ptr %115, align 8
  %117 = xor i64 %116, %_80
  store i64 %117, ptr %114, align 8
  %118 = getelementptr inbounds i8, ptr %state, i64 24
  %self39 = load i64, ptr %118, align 8
; call core::intrinsics::rotate_left
  %_81 = call i64 @_ZN4core10intrinsics11rotate_left17h0c8c8ba4eb1f9be0E(i64 %self39, i32 21) #15
  %119 = getelementptr inbounds i8, ptr %state, i64 24
  store i64 %_81, ptr %119, align 8
  %_83 = load i64, ptr %state, align 8
  %120 = getelementptr inbounds i8, ptr %state, i64 24
  %121 = getelementptr inbounds i8, ptr %state, i64 24
  %122 = load i64, ptr %121, align 8
  %123 = xor i64 %122, %_83
  store i64 %123, ptr %120, align 8
  %124 = getelementptr inbounds i8, ptr %state, i64 8
  %self40 = load i64, ptr %124, align 8
; call core::intrinsics::rotate_left
  %_84 = call i64 @_ZN4core10intrinsics11rotate_left17h0c8c8ba4eb1f9be0E(i64 %self40, i32 32) #15
  %125 = getelementptr inbounds i8, ptr %state, i64 8
  store i64 %_84, ptr %125, align 8
  ret void
}

; <core::hash::sip::Hasher<S> as core::hash::Hasher>::write
; Function Attrs: inlinehint nonlazybind uwtable
define void @"_ZN71_$LT$core..hash..sip..Hasher$LT$S$GT$$u20$as$u20$core..hash..Hasher$GT$5write17h8afc49a8b766663bE"(ptr align 8 %self, ptr align 1 %msg.0, i64 %msg.1) unnamed_addr #0 {
start:
  %data = alloca [8 x i8], align 8
  %needed = alloca [8 x i8], align 8
  %0 = getelementptr inbounds i8, ptr %self, i64 48
  %1 = getelementptr inbounds i8, ptr %self, i64 48
  %2 = load i64, ptr %1, align 8
  %3 = add i64 %2, %msg.1
  store i64 %3, ptr %0, align 8
  store i64 0, ptr %needed, align 8
  %4 = getelementptr inbounds i8, ptr %self, i64 64
  %_6 = load i64, ptr %4, align 8
  %_5 = icmp ne i64 %_6, 0
  br i1 %_5, label %bb1, label %bb6

bb6:                                              ; preds = %start
  br label %bb7

bb1:                                              ; preds = %start
  %5 = getelementptr inbounds i8, ptr %self, i64 64
  %_7 = load i64, ptr %5, align 8
  %6 = sub i64 8, %_7
  store i64 %6, ptr %needed, align 8
  %v2 = load i64, ptr %needed, align 8
; call core::cmp::Ord::min
  %_10 = call i64 @_ZN4core3cmp3Ord3min17hffa415130ebd72d0E(i64 %msg.1, i64 %v2) #10
; call core::hash::sip::u8to64_le
  %_9 = call i64 @_ZN4core4hash3sip9u8to64_le17h40d8e786adc7f925E(ptr align 1 %msg.0, i64 %msg.1, i64 0, i64 %_10) #10
  %7 = getelementptr inbounds i8, ptr %self, i64 64
  %_13 = load i64, ptr %7, align 8
  %_12 = mul i64 8, %_13
  %8 = and i64 %_12, 63
  %_8 = shl i64 %_9, %8
  %9 = getelementptr inbounds i8, ptr %self, i64 56
  %10 = getelementptr inbounds i8, ptr %self, i64 56
  %11 = load i64, ptr %10, align 8
  %12 = or i64 %11, %_8
  store i64 %12, ptr %9, align 8
  %_15 = load i64, ptr %needed, align 8
  %_14 = icmp ult i64 %msg.1, %_15
  br i1 %_14, label %bb3, label %bb4

bb7:                                              ; preds = %bb4, %bb6
  %_21 = load i64, ptr %needed, align 8
  %len = sub i64 %msg.1, %_21
  %left = and i64 %len, 7
  br label %bb8

bb4:                                              ; preds = %bb1
  %13 = getelementptr inbounds i8, ptr %self, i64 56
  %_16 = load i64, ptr %13, align 8
  %14 = getelementptr inbounds i8, ptr %self, i64 24
  %15 = getelementptr inbounds i8, ptr %self, i64 24
  %16 = load i64, ptr %15, align 8
  %17 = xor i64 %16, %_16
  store i64 %17, ptr %14, align 8
; call <core::hash::sip::Sip13Rounds as core::hash::sip::Sip>::c_rounds
  call void @"_ZN69_$LT$core..hash..sip..Sip13Rounds$u20$as$u20$core..hash..sip..Sip$GT$8c_rounds17h1e1bc99a180b2b58E"(ptr align 8 %self) #10
  %18 = getelementptr inbounds i8, ptr %self, i64 56
  %_19 = load i64, ptr %18, align 8
  %19 = load i64, ptr %self, align 8
  %20 = xor i64 %19, %_19
  store i64 %20, ptr %self, align 8
  %21 = getelementptr inbounds i8, ptr %self, i64 64
  store i64 0, ptr %21, align 8
  br label %bb7

bb3:                                              ; preds = %bb1
  %22 = getelementptr inbounds i8, ptr %self, i64 64
  %23 = getelementptr inbounds i8, ptr %self, i64 64
  %24 = load i64, ptr %23, align 8
  %25 = add i64 %24, %msg.1
  store i64 %25, ptr %22, align 8
  br label %bb13

bb8:                                              ; preds = %bb17, %bb7
  %_24 = load i64, ptr %needed, align 8
  %_25 = sub i64 %len, %left
  %_23 = icmp ult i64 %_24, %_25
  br i1 %_23, label %bb9, label %bb11

bb11:                                             ; preds = %bb8
  %26 = load i64, ptr %needed, align 8
; call core::hash::sip::u8to64_le
  %_35 = call i64 @_ZN4core4hash3sip9u8to64_le17h40d8e786adc7f925E(ptr align 1 %msg.0, i64 %msg.1, i64 %26, i64 %left) #10
  %27 = getelementptr inbounds i8, ptr %self, i64 56
  store i64 %_35, ptr %27, align 8
  %28 = getelementptr inbounds i8, ptr %self, i64 64
  store i64 %left, ptr %28, align 8
  br label %bb13

bb9:                                              ; preds = %bb8
  store i64 0, ptr %data, align 8
  %count = load i64, ptr %needed, align 8
  %src = getelementptr inbounds nuw i8, ptr %msg.0, i64 %count
  br label %bb15

bb13:                                             ; preds = %bb3, %bb11
  ret void

bb15:                                             ; preds = %bb9
; call core::ptr::copy_nonoverlapping::precondition_check
  call void @_ZN4core3ptr19copy_nonoverlapping18precondition_check17hfb4dd029d06d3e6aE(ptr %src, ptr %data, i64 1, i64 1, i64 8, ptr align 8 @alloc_0d87c14e0afc26d18a0752880d43f0ed) #14
  br label %bb17

bb17:                                             ; preds = %bb15
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %data, ptr align 1 %src, i64 8, i1 false)
  %mi = load i64, ptr %data, align 8
  %29 = getelementptr inbounds i8, ptr %self, i64 24
  %30 = getelementptr inbounds i8, ptr %self, i64 24
  %31 = load i64, ptr %30, align 8
  %32 = xor i64 %31, %mi
  store i64 %32, ptr %29, align 8
; call <core::hash::sip::Sip13Rounds as core::hash::sip::Sip>::c_rounds
  call void @"_ZN69_$LT$core..hash..sip..Sip13Rounds$u20$as$u20$core..hash..sip..Sip$GT$8c_rounds17h1e1bc99a180b2b58E"(ptr align 8 %self) #10
  %33 = load i64, ptr %self, align 8
  %34 = xor i64 %33, %mi
  store i64 %34, ptr %self, align 8
  %35 = load i64, ptr %needed, align 8
  %36 = add i64 %35, 8
  store i64 %36, ptr %needed, align 8
  br label %bb8
}

; <core::hash::sip::Hasher<S> as core::hash::Hasher>::finish
; Function Attrs: inlinehint nonlazybind uwtable
define i64 @"_ZN71_$LT$core..hash..sip..Hasher$LT$S$GT$$u20$as$u20$core..hash..Hasher$GT$6finish17h6a48580d420b1a8eE"(ptr align 8 %self) unnamed_addr #0 {
start:
  %state = alloca [32 x i8], align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %state, ptr align 8 %self, i64 32, i1 false)
  %0 = getelementptr inbounds i8, ptr %self, i64 48
  %_7 = load i64, ptr %0, align 8
  %_5 = and i64 %_7, 255
  %_4 = shl i64 %_5, 56
  %1 = getelementptr inbounds i8, ptr %self, i64 56
  %_8 = load i64, ptr %1, align 8
  %b = or i64 %_4, %_8
  %2 = getelementptr inbounds i8, ptr %state, i64 24
  %3 = getelementptr inbounds i8, ptr %state, i64 24
  %4 = load i64, ptr %3, align 8
  %5 = xor i64 %4, %b
  store i64 %5, ptr %2, align 8
; call <core::hash::sip::Sip13Rounds as core::hash::sip::Sip>::c_rounds
  call void @"_ZN69_$LT$core..hash..sip..Sip13Rounds$u20$as$u20$core..hash..sip..Sip$GT$8c_rounds17h1e1bc99a180b2b58E"(ptr align 8 %state) #10
  %6 = load i64, ptr %state, align 8
  %7 = xor i64 %6, %b
  store i64 %7, ptr %state, align 8
  %8 = getelementptr inbounds i8, ptr %state, i64 8
  %9 = getelementptr inbounds i8, ptr %state, i64 8
  %10 = load i64, ptr %9, align 8
  %11 = xor i64 %10, 255
  store i64 %11, ptr %8, align 8
; call <core::hash::sip::Sip13Rounds as core::hash::sip::Sip>::d_rounds
  call void @"_ZN69_$LT$core..hash..sip..Sip13Rounds$u20$as$u20$core..hash..sip..Sip$GT$8d_rounds17h82a2ba0c0c47f66aE"(ptr align 8 %state) #10
  %_15 = load i64, ptr %state, align 8
  %12 = getelementptr inbounds i8, ptr %state, i64 16
  %_16 = load i64, ptr %12, align 8
  %_14 = xor i64 %_15, %_16
  %13 = getelementptr inbounds i8, ptr %state, i64 8
  %_17 = load i64, ptr %13, align 8
  %_13 = xor i64 %_14, %_17
  %14 = getelementptr inbounds i8, ptr %state, i64 24
  %_18 = load i64, ptr %14, align 8
  %_0 = xor i64 %_13, %_18
  ret i64 %_0
}

; <std::hash::random::DefaultHasher as core::hash::Hasher>::write
; Function Attrs: inlinehint nonlazybind uwtable
define internal void @"_ZN71_$LT$std..hash..random..DefaultHasher$u20$as$u20$core..hash..Hasher$GT$5write17h5956c01926082304E"(ptr align 8 %self, ptr align 1 %msg.0, i64 %msg.1) unnamed_addr #0 {
start:
; call <core::hash::sip::Hasher<S> as core::hash::Hasher>::write
  call void @"_ZN71_$LT$core..hash..sip..Hasher$LT$S$GT$$u20$as$u20$core..hash..Hasher$GT$5write17h8afc49a8b766663bE"(ptr align 8 %self, ptr align 1 %msg.0, i64 %msg.1) #10
  ret void
}

; <std::hash::random::DefaultHasher as core::hash::Hasher>::finish
; Function Attrs: inlinehint nonlazybind uwtable
define internal i64 @"_ZN71_$LT$std..hash..random..DefaultHasher$u20$as$u20$core..hash..Hasher$GT$6finish17h95f384ee2300216aE"(ptr align 8 %self) unnamed_addr #0 {
start:
; call <core::hash::sip::Hasher<S> as core::hash::Hasher>::finish
  %_0 = call i64 @"_ZN71_$LT$core..hash..sip..Hasher$LT$S$GT$$u20$as$u20$core..hash..Hasher$GT$6finish17h6a48580d420b1a8eE"(ptr align 8 %self) #10
  ret i64 %_0
}

; <usize as core::slice::index::SliceIndex<[T]>>::get_unchecked::precondition_check
; Function Attrs: inlinehint nounwind nonlazybind uwtable
define internal void @"_ZN75_$LT$usize$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$13get_unchecked18precondition_check17hcc0b3b5bcae2ac6fE"(i64 %this, i64 %len, ptr align 8 %0) unnamed_addr #3 {
start:
  %_3 = icmp ult i64 %this, %len
  br i1 %_3, label %bb1, label %bb2

bb2:                                              ; preds = %start
; call core::panicking::panic_nounwind_fmt
  call void @_ZN4core9panicking18panic_nounwind_fmt17hf349702e3facb1fdE(ptr @alloc_97d92cbf2a68a6ac45a1b13da79836e4, ptr inttoptr (i64 429 to ptr), i1 zeroext false, ptr align 8 %0) #12
  unreachable

bb1:                                              ; preds = %start
  ret void
}

; Function Attrs: nonlazybind uwtable
define i64 @hash_key(ptr align 1 %key.0, i64 %key.1) unnamed_addr #4 {
start:
  %hasher = alloca [72 x i8], align 8
; call std::hash::random::DefaultHasher::new
  call void @_ZN3std4hash6random13DefaultHasher3new17h62858873116337d7E(ptr sret([72 x i8]) align 8 %hasher) #10
  %0 = insertvalue { ptr, i64 } poison, ptr %key.0, 0
  %1 = insertvalue { ptr, i64 } %0, i64 %key.1, 1
  %_5.0 = extractvalue { ptr, i64 } %1, 0
  %_5.1 = extractvalue { ptr, i64 } %1, 1
; call <std::hash::random::DefaultHasher as core::hash::Hasher>::write
  call void @"_ZN71_$LT$std..hash..random..DefaultHasher$u20$as$u20$core..hash..Hasher$GT$5write17h5956c01926082304E"(ptr align 8 %hasher, ptr align 1 %_5.0, i64 %_5.1) #10
; call <std::hash::random::DefaultHasher as core::hash::Hasher>::finish
  %_0 = call i64 @"_ZN71_$LT$std..hash..random..DefaultHasher$u20$as$u20$core..hash..Hasher$GT$6finish17h95f384ee2300216aE"(ptr align 8 %hasher) #10
  ret i64 %_0
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #5

; Function Attrs: nounwind nonlazybind uwtable
declare i32 @rust_eh_personality(i32, i32, i64, ptr, ptr) unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.fshl.i64(i64, i64, i64) #6

; core::panicking::panic_cannot_unwind
; Function Attrs: cold minsize noinline noreturn nounwind nonlazybind optsize uwtable
declare void @_ZN4core9panicking19panic_cannot_unwind17h9d41c6c1d0e0d4e5E() unnamed_addr #7

; core::panicking::panic_nounwind_fmt
; Function Attrs: cold noinline noreturn nounwind nonlazybind uwtable
declare void @_ZN4core9panicking18panic_nounwind_fmt17hf349702e3facb1fdE(ptr, ptr, i1 zeroext, ptr align 8) unnamed_addr #8

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctpop.i64(i64) #6

; core::panicking::panic_fmt
; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_ZN4core9panicking9panic_fmt17ha4414e4328fe24a0E(ptr, ptr, ptr align 8) unnamed_addr #9

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #6

; core::panicking::panic_nounwind
; Function Attrs: cold noinline noreturn nounwind nonlazybind uwtable
declare void @_ZN4core9panicking14panic_nounwind17h9a55331e46709e5fE(ptr align 1, i64) unnamed_addr #8

attributes #0 = { inlinehint nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #1 = { nounwind nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #2 = { cold nounwind nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #3 = { inlinehint nounwind nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #4 = { nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #5 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #6 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { cold minsize noinline noreturn nounwind nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #8 = { cold noinline noreturn nounwind nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #9 = { cold noinline noreturn nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #10 = { inlinehint }
attributes #11 = { cold noreturn nounwind }
attributes #12 = { noinline noreturn nounwind }
attributes #13 = { noinline noreturn }
attributes #14 = { inlinehint nounwind }
attributes #15 = { nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 2, !"RtLibUseGOT", i32 1}
!2 = !{!"rustc version 1.93.1 (01f6ddf75 2026-02-11)"}

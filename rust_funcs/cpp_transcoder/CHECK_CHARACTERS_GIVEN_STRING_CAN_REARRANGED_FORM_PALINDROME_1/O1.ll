; ModuleID = 'CHECK_CHARACTERS_GIVEN_STRING_CAN_REARRANGED_FORM_PALINDROME_1_emit.29f071b91bc57cc9-cgu.0'
source_filename = "CHECK_CHARACTERS_GIVEN_STRING_CAN_REARRANGED_FORM_PALINDROME_1_emit.29f071b91bc57cc9-cgu.0"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%"std::sys::thread_local::native::lazy::Storage<core::cell::Cell<(u64, u64)>, !>" = type { %"core::cell::UnsafeCell<core::mem::maybe_uninit::MaybeUninit<core::cell::Cell<(u64, u64)>>>", i8, [7 x i8] }
%"core::cell::UnsafeCell<core::mem::maybe_uninit::MaybeUninit<core::cell::Cell<(u64, u64)>>>" = type { %"core::mem::maybe_uninit::MaybeUninit<core::cell::Cell<(u64, u64)>>" }
%"core::mem::maybe_uninit::MaybeUninit<core::cell::Cell<(u64, u64)>>" = type { [2 x i64] }
%"core::mem::maybe_uninit::MaybeUninit<[u8; 8]>" = type { [8 x i8] }

@"_ZN3std4hash6random11RandomState3new4KEYS29_$u7b$$u7b$constant$u7d$$u7d$28_$u7b$$u7b$closure$u7d$$u7d$23__RUST_STD_INTERNAL_VAL17h80d8e1569169cac2E" = external thread_local local_unnamed_addr global %"std::sys::thread_local::native::lazy::Storage<core::cell::Cell<(u64, u64)>, !>"
@alloc_8a597ff4ccc06c64324d5229815cbf3e = private unnamed_addr constant [110 x i8] c"/root/.rustup/toolchains/stable-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/std/src/thread/local.rs\00", align 1
@alloc_0266abf3f1ee48cd58e43ed1227693a2 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_8a597ff4ccc06c64324d5229815cbf3e, [16 x i8] c"m\00\00\00\00\00\00\00\DF\01\00\00\19\00\00\00" }>, align 8
@alloc_d1084648e479974e70c9329824bf76f9 = private unnamed_addr constant [9 x i8] c"mid > len", align 1
@alloc_e8e5fd9f509afcb950667480b3e3e42a = private unnamed_addr constant [126 x i8] c"/root/.rustup/toolchains/stable-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/slice/sort/stable/quicksort.rs\00", align 1
@alloc_58d434a1e795f965ef82c8e9c5db822a = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_e8e5fd9f509afcb950667480b3e3e42a, [16 x i8] c"}\00\00\00\00\00\00\00J\00\00\00\1F\00\00\00" }>, align 8
@alloc_0766b232215672ee1bd2195fdb153938 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_e8e5fd9f509afcb950667480b3e3e42a, [16 x i8] c"}\00\00\00\00\00\00\00D\00\00\00\17\00\00\00" }>, align 8
@alloc_d0776666182ad032bd1011cf266e2f3a = private unnamed_addr constant [16 x i8] c"\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF", align 16
@anon.faf6f5ceec9f3955f7678f503c36246b.0 = private unnamed_addr constant <{ ptr, [24 x i8] }> <{ ptr @alloc_d0776666182ad032bd1011cf266e2f3a, [24 x i8] zeroinitializer }>, align 8

; std::sys::thread_local::native::lazy::Storage<T,D>::get_or_init_slow
; Function Attrs: cold nonlazybind uwtable
define noundef nonnull ptr @"_ZN3std3sys12thread_local6native4lazy20Storage$LT$T$C$D$GT$16get_or_init_slow17hb2b447367241d6bdE"(ptr noundef nonnull returned align 8 captures(ret: address, provenance) %self, ptr noalias noundef align 8 captures(address_is_null) dereferenceable_or_null(24) %0) unnamed_addr #0 {
start:
  %_26 = getelementptr inbounds nuw i8, ptr %self, i64 16
  %1 = load i8, ptr %_26, align 8, !range !3, !noundef !4
  %trunc = trunc nuw i8 %1 to i1
  br i1 %trunc, label %bb10, label %bb4

bb4:                                              ; preds = %start
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb14, label %bb12

bb12:                                             ; preds = %bb4
  %self1.sroa.0.0.copyload = load i64, ptr %0, align 8
  %self1.sroa.5.0.i.sroa.0.0.x.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  %self1.sroa.5.0.copyload = load i64, ptr %self1.sroa.5.0.i.sroa.0.0.x.sroa_idx, align 8
  %self1.sroa.6.0.i.sroa.0.0.x.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  %self1.sroa.6.0.copyload = load i64, ptr %self1.sroa.6.0.i.sroa.0.0.x.sroa_idx, align 8
  store i64 0, ptr %0, align 8
  %2 = trunc nuw i64 %self1.sroa.0.0.copyload to i1
  br i1 %2, label %bb13, label %bb14

bb14:                                             ; preds = %bb4, %bb12
; call std::sys::random::linux::hashmap_random_keys
  %3 = tail call { i64, i64 } @_ZN3std3sys6random5linux19hashmap_random_keys17h6146797cc86fe2ccE()
  %4 = extractvalue { i64, i64 } %3, 0
  %5 = extractvalue { i64, i64 } %3, 1
  br label %bb13

bb13:                                             ; preds = %bb12, %bb14
  %v.sroa.3.0 = phi i64 [ %5, %bb14 ], [ %self1.sroa.6.0.copyload, %bb12 ]
  %v.sroa.0.0 = phi i64 [ %4, %bb14 ], [ %self1.sroa.5.0.copyload, %bb12 ]
  %6 = getelementptr inbounds nuw i8, ptr %self, i64 8
  store i64 %v.sroa.0.0, ptr %self, align 8
  store i64 %v.sroa.3.0, ptr %6, align 8
  store i8 1, ptr %_26, align 8
  br label %bb10

bb10:                                             ; preds = %bb13, %start
  ret ptr %self
}

; std::thread::local::LocalKey<T>::with
; Function Attrs: nonlazybind uwtable
define { i64, i64 } @"_ZN3std6thread5local17LocalKey$LT$T$GT$4with17h0683d3cbc6ca50f6E"(ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %self) unnamed_addr #1 personality ptr @rust_eh_personality {
start:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5)
  %_7.i = load ptr, ptr %self, align 8, !alias.scope !5, !noalias !8, !nonnull !4, !noundef !4
  %self3.i = tail call noundef ptr %_7.i(ptr noalias noundef align 8 dereferenceable_or_null(24) null), !noalias !10
  %_13.i = icmp eq ptr %self3.i, null
  br i1 %_13.i, label %"_ZN3std6thread5local17LocalKey$LT$T$GT$8try_with17h6d3208ed701a165aE.exit", label %bb8.i

bb8.i:                                            ; preds = %start
  %_9.i.i = load i64, ptr %self3.i, align 8, !noalias !10, !noundef !4
  %0 = getelementptr inbounds nuw i8, ptr %self3.i, i64 8
  %_10.i.i = load i64, ptr %0, align 8, !noalias !10, !noundef !4
  %_4.i.i = add i64 %_9.i.i, 1
  store i64 %_4.i.i, ptr %self3.i, align 8, !noalias !10
  br label %"_ZN3std6thread5local17LocalKey$LT$T$GT$8try_with17h6d3208ed701a165aE.exit"

"_ZN3std6thread5local17LocalKey$LT$T$GT$8try_with17h6d3208ed701a165aE.exit": ; preds = %start, %bb8.i
  %_3.sroa.4.0 = phi i64 [ undef, %start ], [ %_9.i.i, %bb8.i ]
  %_3.sroa.6.0 = phi i64 [ undef, %start ], [ %_10.i.i, %bb8.i ]
  br i1 %_13.i, label %bb3, label %bb4, !prof !11

bb3:                                              ; preds = %"_ZN3std6thread5local17LocalKey$LT$T$GT$8try_with17h6d3208ed701a165aE.exit"
; call std::thread::local::panic_access_error
  tail call void @_ZN3std6thread5local18panic_access_error17h889b72f0e071fac8E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_0266abf3f1ee48cd58e43ed1227693a2) #30
  unreachable

bb4:                                              ; preds = %"_ZN3std6thread5local17LocalKey$LT$T$GT$8try_with17h6d3208ed701a165aE.exit"
  %1 = insertvalue { i64, i64 } poison, i64 %_3.sroa.4.0, 0
  %2 = insertvalue { i64, i64 } %1, i64 %_3.sroa.6.0, 1
  ret { i64, i64 } %2
}

; core::ptr::swap_nonoverlapping_bytes::swap_nonoverlapping_chunks
; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable
define void @_ZN4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunks17h2a596abc4bdb3ba8E(ptr noundef captures(none) %x, ptr noundef captures(none) %y, i64 noundef range(i64 1, 0) %chunks) unnamed_addr #2 {
start:
  %xtraiter = and i64 %chunks, 1
  %0 = icmp eq i64 %chunks, 1
  br i1 %0, label %bb4.unr-lcssa, label %start.new

start.new:                                        ; preds = %start
  %unroll_iter = and i64 %chunks, -2
  br label %bb3

bb4.unr-lcssa:                                    ; preds = %bb3, %start
  %iter.sroa.0.02.unr = phi i64 [ 0, %start ], [ %_18.1, %bb3 ]
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %bb4, label %bb3.epil

bb3.epil:                                         ; preds = %bb4.unr-lcssa
  %_11.epil = getelementptr inbounds nuw %"core::mem::maybe_uninit::MaybeUninit<[u8; 8]>", ptr %x, i64 %iter.sroa.0.02.unr
  %_13.epil = getelementptr inbounds nuw %"core::mem::maybe_uninit::MaybeUninit<[u8; 8]>", ptr %y, i64 %iter.sroa.0.02.unr
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !15)
  %_3.sroa.0.0.copyload.i.epil = load i64, ptr %_11.epil, align 1, !alias.scope !12, !noalias !15
  %_4.sroa.0.0.copyload.i.epil = load i64, ptr %_13.epil, align 1, !alias.scope !15, !noalias !12
  store i64 %_4.sroa.0.0.copyload.i.epil, ptr %_11.epil, align 1, !alias.scope !12, !noalias !15
  store i64 %_3.sroa.0.0.copyload.i.epil, ptr %_13.epil, align 1, !alias.scope !15, !noalias !12
  br label %bb4

bb4:                                              ; preds = %bb4.unr-lcssa, %bb3.epil
  ret void

bb3:                                              ; preds = %bb3, %start.new
  %iter.sroa.0.02 = phi i64 [ 0, %start.new ], [ %_18.1, %bb3 ]
  %niter = phi i64 [ 0, %start.new ], [ %niter.next.1, %bb3 ]
  %_18 = or disjoint i64 %iter.sroa.0.02, 1
  %_11 = getelementptr inbounds nuw %"core::mem::maybe_uninit::MaybeUninit<[u8; 8]>", ptr %x, i64 %iter.sroa.0.02
  %_13 = getelementptr inbounds nuw %"core::mem::maybe_uninit::MaybeUninit<[u8; 8]>", ptr %y, i64 %iter.sroa.0.02
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !15)
  %_3.sroa.0.0.copyload.i = load i64, ptr %_11, align 1, !alias.scope !12, !noalias !15
  %_4.sroa.0.0.copyload.i = load i64, ptr %_13, align 1, !alias.scope !15, !noalias !12
  store i64 %_4.sroa.0.0.copyload.i, ptr %_11, align 1, !alias.scope !12, !noalias !15
  store i64 %_3.sroa.0.0.copyload.i, ptr %_13, align 1, !alias.scope !15, !noalias !12
  %_18.1 = add nuw i64 %iter.sroa.0.02, 2
  %_11.1 = getelementptr inbounds nuw %"core::mem::maybe_uninit::MaybeUninit<[u8; 8]>", ptr %x, i64 %_18
  %_13.1 = getelementptr inbounds nuw %"core::mem::maybe_uninit::MaybeUninit<[u8; 8]>", ptr %y, i64 %_18
  tail call void @llvm.experimental.noalias.scope.decl(metadata !17)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !19)
  %_3.sroa.0.0.copyload.i.1 = load i64, ptr %_11.1, align 1, !alias.scope !17, !noalias !19
  %_4.sroa.0.0.copyload.i.1 = load i64, ptr %_13.1, align 1, !alias.scope !19, !noalias !17
  store i64 %_4.sroa.0.0.copyload.i.1, ptr %_11.1, align 1, !alias.scope !17, !noalias !19
  store i64 %_3.sroa.0.0.copyload.i.1, ptr %_13.1, align 1, !alias.scope !19, !noalias !17
  %niter.next.1 = add i64 %niter, 2
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %bb4.unr-lcssa, label %bb3
}

; core::ptr::drop_in_place<alloc::string::String>
; Function Attrs: nonlazybind uwtable
define internal fastcc void @"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hfad571b22e59a72dE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %_1) unnamed_addr #1 personality ptr @rust_eh_personality {
start:
; invoke <alloc::vec::Vec<T,A> as core::ops::drop::Drop>::drop
  invoke void @"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h6ffafe41d4ff3563E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %_1)
          to label %"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17h1c60343f078f8a4fE.exit" unwind label %cleanup.i

cleanup.i:                                        ; preds = %start
  %0 = landingpad { ptr, i32 }
          cleanup
; invoke <alloc::raw_vec::RawVec<T,A> as core::ops::drop::Drop>::drop
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h86eef0594e496705E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %_1)
          to label %bb1.i unwind label %terminate.i

terminate.i:                                      ; preds = %cleanup.i
  %1 = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer
; call core::panicking::panic_in_cleanup
  tail call void @_ZN4core9panicking16panic_in_cleanup17h5f6bde45d17ae243E() #31
  unreachable

bb1.i:                                            ; preds = %cleanup.i
  resume { ptr, i32 } %0

"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17h1c60343f078f8a4fE.exit": ; preds = %start
; call <alloc::raw_vec::RawVec<T,A> as core::ops::drop::Drop>::drop
  tail call void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h86eef0594e496705E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %_1)
  ret void
}

; core::ptr::drop_in_place<std::collections::hash::set::HashSet<char>>
; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc void @"_ZN4core3ptr69drop_in_place$LT$std..collections..hash..set..HashSet$LT$char$GT$$GT$17ha9c0ec42ee0b1b82E"(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(48) %_1) unnamed_addr #3 {
start:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !21)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !24)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !27)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !30)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !33)
  %0 = getelementptr inbounds nuw i8, ptr %_1, i64 8
  %_6.i.i.i.i.i = load i64, ptr %0, align 8, !alias.scope !36, !noundef !4
  %_4.i.i.i.i.i = icmp eq i64 %_6.i.i.i.i.i, 0
  br i1 %_4.i.i.i.i.i, label %"_ZN4core3ptr89drop_in_place$LT$hashbrown..set..HashSet$LT$char$C$std..hash..random..RandomState$GT$$GT$17h08dfc12decfe16f5E.exit", label %bb1.i.i.i.i.i

bb1.i.i.i.i.i:                                    ; preds = %start
  %_10.i.i.i.i.i = add i64 %_6.i.i.i.i.i, 1
  %_32.1.i.i.i.i.i.i = icmp ult i64 %_10.i.i.i.i.i, 4611686018427387901
  tail call void @llvm.assume(i1 %_32.1.i.i.i.i.i.i)
  %_25.0.i.i.i.i.i.i = shl nuw i64 %_10.i.i.i.i.i, 2
  %_32.0.i.i.i.i.i.i = add i64 %_25.0.i.i.i.i.i.i, 15
  %ctrl_offset.i.i.i.i.i.i = and i64 %_32.0.i.i.i.i.i.i, -16
  %rhs5.i.i.i.i.i.i = add i64 %_6.i.i.i.i.i, 17
  %_37.0.i.i.i.i.i.i = add i64 %rhs5.i.i.i.i.i.i, %ctrl_offset.i.i.i.i.i.i
  %_37.1.i.i.i.i.i.i = icmp uge i64 %_37.0.i.i.i.i.i.i, %ctrl_offset.i.i.i.i.i.i
  %_19.i.i.i.i.i.i = icmp ult i64 %_37.0.i.i.i.i.i.i, 9223372036854775793
  tail call void @llvm.assume(i1 %_37.1.i.i.i.i.i.i)
  tail call void @llvm.assume(i1 %_19.i.i.i.i.i.i)
  %_4.not.i.i.i.i.i.i = icmp eq i64 %_37.0.i.i.i.i.i.i, 0
  br i1 %_4.not.i.i.i.i.i.i, label %"_ZN4core3ptr89drop_in_place$LT$hashbrown..set..HashSet$LT$char$C$std..hash..random..RandomState$GT$$GT$17h08dfc12decfe16f5E.exit", label %bb1.i2.i.i.i.i.i

bb1.i2.i.i.i.i.i:                                 ; preds = %bb1.i.i.i.i.i
  %self1.i.i.i.i.i = load ptr, ptr %_1, align 8, !alias.scope !36, !nonnull !4, !noundef !4
  %_18.i.i.i.i.i = sub nsw i64 0, %ctrl_offset.i.i.i.i.i.i
  %ptr.i.i.i.i.i = getelementptr inbounds i8, ptr %self1.i.i.i.i.i, i64 %_18.i.i.i.i.i
; call __rustc::__rust_dealloc
  tail call void @_RNvCsdBezzDwma51_7___rustc14___rust_dealloc(ptr noundef nonnull %ptr.i.i.i.i.i, i64 noundef %_37.0.i.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 16) #32, !noalias !36
  br label %"_ZN4core3ptr89drop_in_place$LT$hashbrown..set..HashSet$LT$char$C$std..hash..random..RandomState$GT$$GT$17h08dfc12decfe16f5E.exit"

"_ZN4core3ptr89drop_in_place$LT$hashbrown..set..HashSet$LT$char$C$std..hash..random..RandomState$GT$$GT$17h08dfc12decfe16f5E.exit": ; preds = %start, %bb1.i.i.i.i.i, %bb1.i2.i.i.i.i.i
  ret void
}

; core::hash::BuildHasher::hash_one
; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define noundef i64 @_ZN4core4hash11BuildHasher8hash_one17h405cf8b275c5e5e1E(ptr noalias noundef readonly align 8 captures(none) dereferenceable(16) %self, ptr noalias noundef readonly align 4 captures(none) dereferenceable(4) %0) unnamed_addr #4 personality ptr @rust_eh_personality {
start:
  %key0.i = load i64, ptr %self, align 8, !alias.scope !37, !noalias !40, !noundef !4
  %1 = getelementptr inbounds nuw i8, ptr %self, i64 8
  %key1.i = load i64, ptr %1, align 8, !alias.scope !37, !noalias !40, !noundef !4
  %_4.i.i = load i32, ptr %0, align 4, !range !42, !alias.scope !43, !noalias !46, !noundef !4
  %2 = zext nneg i32 %_4.i.i to i64
  %3 = xor i64 %key0.i, 7816392313619706465
  %4 = xor i64 %key1.i, 7237128888997146477
  %5 = xor i64 %key0.i, 8317987319222330741
  %b.i.i = or disjoint i64 %2, 288230376151711744
  %6 = xor i64 %key1.i, %b.i.i
  %7 = xor i64 %6, 8387220255154660723
  %_2.i.i.i = add i64 %4, %5
  %_5.i.i.i3 = add i64 %7, %3
  %8 = tail call noundef i64 @llvm.fshl.i64(i64 %4, i64 %4, i64 13)
  %9 = xor i64 %8, %_2.i.i.i
  %10 = tail call noundef i64 @llvm.fshl.i64(i64 %7, i64 %7, i64 16)
  %11 = xor i64 %10, %_5.i.i.i3
  %12 = tail call noundef i64 @llvm.fshl.i64(i64 %_2.i.i.i, i64 %_2.i.i.i, i64 32)
  %_16.i.i.i = add i64 %_5.i.i.i3, %9
  %_19.i.i.i = add i64 %11, %12
  %13 = tail call noundef i64 @llvm.fshl.i64(i64 %9, i64 %9, i64 17)
  %14 = xor i64 %_16.i.i.i, %13
  %15 = tail call noundef i64 @llvm.fshl.i64(i64 %11, i64 %11, i64 21)
  %16 = xor i64 %15, %_19.i.i.i
  %17 = tail call noundef i64 @llvm.fshl.i64(i64 %_16.i.i.i, i64 %_16.i.i.i, i64 32)
  %18 = xor i64 %_19.i.i.i, %b.i.i
  %19 = xor i64 %17, 255
  %_2.i3.i.i = add i64 %18, %14
  %_5.i6.i.i = add i64 %16, %19
  %20 = tail call noundef i64 @llvm.fshl.i64(i64 %14, i64 %14, i64 13)
  %21 = xor i64 %_2.i3.i.i, %20
  %22 = tail call noundef i64 @llvm.fshl.i64(i64 %16, i64 %16, i64 16)
  %23 = xor i64 %22, %_5.i6.i.i
  %24 = tail call noundef i64 @llvm.fshl.i64(i64 %_2.i3.i.i, i64 %_2.i3.i.i, i64 32)
  %_16.i7.i.i = add i64 %21, %_5.i6.i.i
  %_19.i8.i.i = add i64 %23, %24
  %25 = tail call noundef i64 @llvm.fshl.i64(i64 %21, i64 %21, i64 17)
  %26 = xor i64 %_16.i7.i.i, %25
  %27 = tail call noundef i64 @llvm.fshl.i64(i64 %23, i64 %23, i64 21)
  %28 = xor i64 %27, %_19.i8.i.i
  %29 = tail call noundef i64 @llvm.fshl.i64(i64 %_16.i7.i.i, i64 %_16.i7.i.i, i64 32)
  %_30.i.i.i = add i64 %26, %_19.i8.i.i
  %_33.i.i.i = add i64 %28, %29
  %30 = tail call noundef i64 @llvm.fshl.i64(i64 %26, i64 %26, i64 13)
  %31 = xor i64 %30, %_30.i.i.i
  %32 = tail call noundef i64 @llvm.fshl.i64(i64 %28, i64 %28, i64 16)
  %33 = xor i64 %32, %_33.i.i.i
  %34 = tail call noundef i64 @llvm.fshl.i64(i64 %_30.i.i.i, i64 %_30.i.i.i, i64 32)
  %_44.i.i.i = add i64 %31, %_33.i.i.i
  %_47.i.i.i = add i64 %33, %34
  %35 = tail call noundef i64 @llvm.fshl.i64(i64 %31, i64 %31, i64 17)
  %36 = xor i64 %35, %_44.i.i.i
  %37 = tail call noundef i64 @llvm.fshl.i64(i64 %33, i64 %33, i64 21)
  %38 = xor i64 %37, %_47.i.i.i
  %39 = tail call noundef i64 @llvm.fshl.i64(i64 %_44.i.i.i, i64 %_44.i.i.i, i64 32)
  %_58.i.i.i = add i64 %36, %_47.i.i.i
  %_61.i.i.i = add i64 %38, %39
  %40 = tail call noundef i64 @llvm.fshl.i64(i64 %36, i64 %36, i64 13)
  %41 = xor i64 %40, %_58.i.i.i
  %42 = tail call noundef i64 @llvm.fshl.i64(i64 %38, i64 %38, i64 16)
  %43 = xor i64 %42, %_61.i.i.i
  %_72.i.i.i = add i64 %41, %_61.i.i.i
  %44 = tail call noundef i64 @llvm.fshl.i64(i64 %41, i64 %41, i64 17)
  %45 = tail call noundef i64 @llvm.fshl.i64(i64 %43, i64 %43, i64 21)
  %46 = tail call noundef i64 @llvm.fshl.i64(i64 %_72.i.i.i, i64 %_72.i.i.i, i64 32)
  %47 = xor i64 %45, %44
  %48 = xor i64 %47, %46
  %_0.i.i = xor i64 %48, %_72.i.i.i
  ret i64 %_0.i.i
}

; core::slice::sort::shared::pivot::median3_rec
; Function Attrs: nofree nosync nounwind nonlazybind memory(read, inaccessiblemem: readwrite) uwtable
define noundef nonnull ptr @_ZN4core5slice4sort6shared5pivot11median3_rec17hd5ea959d46a1b9bfE(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %n, ptr noalias noundef align 8 dereferenceable(8) %is_less) unnamed_addr #5 {
start:
  %3 = and i64 %n, 2305843009213693944
  %_6.not = icmp eq i64 %3, 0
  br i1 %_6.not, label %bb6, label %bb1

bb1:                                              ; preds = %start
  %n84 = lshr i64 %n, 3
  %count = shl nuw nsw i64 %n84, 2
  %_10 = getelementptr inbounds nuw i32, ptr %0, i64 %count
  %count1 = mul nuw i64 %n84, 7
  %_13 = getelementptr inbounds nuw i32, ptr %0, i64 %count1
; call core::slice::sort::shared::pivot::median3_rec
  %4 = tail call noundef ptr @_ZN4core5slice4sort6shared5pivot11median3_rec17hd5ea959d46a1b9bfE(ptr noundef %0, ptr noundef %_10, ptr noundef %_13, i64 noundef %n84, ptr noalias noundef align 8 dereferenceable(8) %is_less)
  %_16 = getelementptr inbounds nuw i32, ptr %1, i64 %count
  %_18 = getelementptr inbounds nuw i32, ptr %1, i64 %count1
; call core::slice::sort::shared::pivot::median3_rec
  %5 = tail call noundef ptr @_ZN4core5slice4sort6shared5pivot11median3_rec17hd5ea959d46a1b9bfE(ptr noundef %1, ptr noundef %_16, ptr noundef %_18, i64 noundef %n84, ptr noalias noundef align 8 dereferenceable(8) %is_less)
  %_20 = getelementptr inbounds nuw i32, ptr %2, i64 %count
  %_22 = getelementptr inbounds nuw i32, ptr %2, i64 %count1
; call core::slice::sort::shared::pivot::median3_rec
  %6 = tail call noundef ptr @_ZN4core5slice4sort6shared5pivot11median3_rec17hd5ea959d46a1b9bfE(ptr noundef %2, ptr noundef %_20, ptr noundef %_22, i64 noundef %n84, ptr noalias noundef align 8 dereferenceable(8) %is_less)
  br label %bb6

bb6:                                              ; preds = %start, %bb1
  %c.sroa.0.0 = phi ptr [ %6, %bb1 ], [ %2, %start ]
  %b.sroa.0.0 = phi ptr [ %5, %bb1 ], [ %1, %start ]
  %a.sroa.0.0 = phi ptr [ %4, %bb1 ], [ %0, %start ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !51)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !54)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !56), !noalias !59
  tail call void @llvm.experimental.noalias.scope.decl(metadata !62), !noalias !59
  tail call void @llvm.experimental.noalias.scope.decl(metadata !64), !noalias !59
  tail call void @llvm.experimental.noalias.scope.decl(metadata !67), !noalias !59
  tail call void @llvm.experimental.noalias.scope.decl(metadata !69), !noalias !59
  tail call void @llvm.experimental.noalias.scope.decl(metadata !72), !noalias !59
  %_3.i.i.i.i = load i32, ptr %a.sroa.0.0, align 4, !alias.scope !74, !noalias !75, !noundef !4
  %_4.i.i.i.i = load i32, ptr %b.sroa.0.0, align 4, !alias.scope !76, !noalias !77, !noundef !4
  %_0.i = icmp slt i32 %_3.i.i.i.i, %_4.i.i.i.i
  %_4.i.i.i.i6 = load i32, ptr %c.sroa.0.0, align 4, !alias.scope !78, !noalias !87, !noundef !4
  %_0.i7 = icmp slt i32 %_3.i.i.i.i, %_4.i.i.i.i6
  %7 = xor i1 %_0.i, %_0.i7
  %_0.i10 = icmp slt i32 %_4.i.i.i.i, %_4.i.i.i.i6
  %_12.i = xor i1 %_0.i, %_0.i10
  %c.b.i = select i1 %_12.i, ptr %c.sroa.0.0, ptr %b.sroa.0.0
  %_0.sroa.0.0.i = select i1 %7, ptr %a.sroa.0.0, ptr %c.b.i
  ret ptr %_0.sroa.0.0.i
}

; core::slice::sort::shared::smallsort::insert_tail
; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable
define void @_ZN4core5slice4sort6shared9smallsort11insert_tail17hcfefba0b2235ddb0E(ptr noundef readnone captures(address) %begin, ptr noundef captures(address) %tail, ptr noalias noundef readnone align 8 captures(none) dereferenceable(8) %is_less) unnamed_addr #2 personality ptr @rust_eh_personality {
start:
  %0 = getelementptr inbounds i8, ptr %tail, i64 -4
  tail call void @llvm.experimental.noalias.scope.decl(metadata !92)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !95)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !97)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !100)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !102)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !105)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !107)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !110)
  %_3.i.i.i.i = load i32, ptr %tail, align 4, !alias.scope !112, !noalias !113, !noundef !4
  %_4.i.i.i.i = load i32, ptr %0, align 4, !alias.scope !113, !noalias !112, !noundef !4
  %_0.i = icmp slt i32 %_3.i.i.i.i, %_4.i.i.i.i
  br i1 %_0.i, label %bb4, label %bb12

bb12:                                             ; preds = %start, %bb10
  ret void

bb4:                                              ; preds = %start, %bb6
  %gap_guard.sroa.5.0 = phi ptr [ %sift.sroa.0.0, %bb6 ], [ %tail, %start ]
  %sift.sroa.0.0 = phi ptr [ %2, %bb6 ], [ %0, %start ]
  %1 = load i32, ptr %sift.sroa.0.0, align 4
  store i32 %1, ptr %gap_guard.sroa.5.0, align 4
  %_18 = icmp eq ptr %sift.sroa.0.0, %begin
  br i1 %_18, label %bb10, label %bb6

bb6:                                              ; preds = %bb4
  %2 = getelementptr inbounds i8, ptr %sift.sroa.0.0, i64 -4
  %_4.i.i.i.i2 = load i32, ptr %2, align 4, !alias.scope !114, !noalias !123, !noundef !4
  %_0.i3 = icmp slt i32 %_3.i.i.i.i, %_4.i.i.i.i2
  br i1 %_0.i3, label %bb4, label %bb10

bb10:                                             ; preds = %bb6, %bb4
  store i32 %_3.i.i.i.i, ptr %sift.sroa.0.0, align 4, !noalias !128
  br label %bb12
}

; core::slice::sort::shared::smallsort::sort4_stable
; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable
define void @_ZN4core5slice4sort6shared9smallsort12sort4_stable17h7c1a614281735ecaE(ptr noundef readonly captures(none) %v_base, ptr noundef writeonly captures(none) initializes((0, 16)) %dst, ptr noalias noundef readnone align 8 captures(none) dereferenceable(8) %is_less) unnamed_addr #6 personality ptr @rust_eh_personality {
start:
  %_7 = getelementptr inbounds nuw i8, ptr %v_base, i64 4
  tail call void @llvm.experimental.noalias.scope.decl(metadata !133)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !136)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !138)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !141)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !143)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !146)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !148)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !151)
  %_3.i.i.i.i = load i32, ptr %_7, align 4, !alias.scope !153, !noalias !154, !noundef !4
  %_4.i.i.i.i = load i32, ptr %v_base, align 4, !alias.scope !154, !noalias !153, !noundef !4
  %_0.i = icmp slt i32 %_3.i.i.i.i, %_4.i.i.i.i
  %_12 = getelementptr inbounds nuw i8, ptr %v_base, i64 12
  %_14 = getelementptr inbounds nuw i8, ptr %v_base, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !155)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !158)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !160)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !163)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !165)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !168)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !170)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !173)
  %_3.i.i.i.i7 = load i32, ptr %_12, align 4, !alias.scope !175, !noalias !176, !noundef !4
  %_4.i.i.i.i8 = load i32, ptr %_14, align 4, !alias.scope !176, !noalias !175, !noundef !4
  %_0.i9 = icmp slt i32 %_3.i.i.i.i7, %_4.i.i.i.i8
  %count = zext i1 %_0.i to i64
  %a = getelementptr inbounds nuw i32, ptr %v_base, i64 %count
  %_19 = xor i1 %_0.i, true
  %count2 = zext i1 %_19 to i64
  %b = getelementptr inbounds nuw i32, ptr %v_base, i64 %count2
  %count3 = select i1 %_0.i9, i64 3, i64 2
  %c = getelementptr inbounds nuw i32, ptr %v_base, i64 %count3
  %count4 = select i1 %_0.i9, i64 2, i64 3
  %d = getelementptr inbounds nuw i32, ptr %v_base, i64 %count4
  tail call void @llvm.experimental.noalias.scope.decl(metadata !177)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !180)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !182)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !185)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !187)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !190)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !192)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !195)
  %_3.i.i.i.i10 = load i32, ptr %c, align 4, !alias.scope !197, !noalias !198, !noundef !4
  %_4.i.i.i.i11 = load i32, ptr %a, align 4, !alias.scope !198, !noalias !197, !noundef !4
  %_0.i12 = icmp slt i32 %_3.i.i.i.i10, %_4.i.i.i.i11
  tail call void @llvm.experimental.noalias.scope.decl(metadata !199)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !202)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !204)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !207)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !209)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !212)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !214)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !217)
  %_3.i.i.i.i13 = load i32, ptr %d, align 4, !alias.scope !219, !noalias !220, !noundef !4
  %_4.i.i.i.i14 = load i32, ptr %b, align 4, !alias.scope !220, !noalias !219, !noundef !4
  %_0.i15 = icmp slt i32 %_3.i.i.i.i13, %_4.i.i.i.i14
  %0 = select i1 %_0.i12, ptr %c, ptr %a, !unpredictable !4
  %1 = select i1 %_0.i15, ptr %c, ptr %b, !unpredictable !4
  %2 = select i1 %_0.i12, ptr %a, ptr %1, !unpredictable !4
  %3 = select i1 %_0.i12, ptr %b, ptr %c, !unpredictable !4
  %4 = select i1 %_0.i15, ptr %d, ptr %3, !unpredictable !4
  tail call void @llvm.experimental.noalias.scope.decl(metadata !221)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !224)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !226)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !229)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !231)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !234)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !236)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !239)
  %_3.i.i.i.i16 = load i32, ptr %4, align 4, !alias.scope !241, !noalias !242, !noundef !4
  %_4.i.i.i.i17 = load i32, ptr %2, align 4, !alias.scope !242, !noalias !241, !noundef !4
  %_0.i18 = icmp slt i32 %_3.i.i.i.i16, %_4.i.i.i.i17
  %5 = load i32, ptr %0, align 4
  store i32 %5, ptr %dst, align 4
  %dst5 = getelementptr inbounds nuw i8, ptr %dst, i64 4
  %.val = load i32, ptr %4, align 4
  %.val19 = load i32, ptr %2, align 4
  %6 = select i1 %_0.i18, i32 %.val, i32 %.val19
  store i32 %6, ptr %dst5, align 4
  %dst6 = getelementptr inbounds nuw i8, ptr %dst, i64 8
  %.val20 = load i32, ptr %2, align 4
  %.val21 = load i32, ptr %4, align 4
  %7 = select i1 %_0.i18, i32 %.val20, i32 %.val21
  store i32 %7, ptr %dst6, align 4
  %8 = getelementptr inbounds nuw i8, ptr %dst, i64 12
  %b.val = load i32, ptr %b, align 4
  %d.val = load i32, ptr %d, align 4
  %9 = select i1 %_0.i15, i32 %b.val, i32 %d.val
  store i32 %9, ptr %8, align 4
  ret void
}

; core::slice::sort::shared::smallsort::sort8_stable
; Function Attrs: nonlazybind uwtable
define void @_ZN4core5slice4sort6shared9smallsort12sort8_stable17h755e1cbf05c0083bE(ptr noundef readonly captures(none) %v_base, ptr noundef writeonly captures(none) initializes((0, 32)) %dst, ptr noundef captures(address) initializes((0, 32)) %scratch_base, ptr noalias readnone align 8 captures(none) %is_less) unnamed_addr #1 personality ptr @rust_eh_personality {
start:
  %_7.i = getelementptr inbounds nuw i8, ptr %v_base, i64 4
  tail call void @llvm.experimental.noalias.scope.decl(metadata !243)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !246)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !248)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !251)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !253)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !256)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !258)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !261)
  %_3.i.i.i.i.i = load i32, ptr %_7.i, align 4, !alias.scope !263, !noalias !264, !noundef !4
  %_4.i.i.i.i.i = load i32, ptr %v_base, align 4, !alias.scope !264, !noalias !263, !noundef !4
  %_0.i.i = icmp slt i32 %_3.i.i.i.i.i, %_4.i.i.i.i.i
  %_12.i = getelementptr inbounds nuw i8, ptr %v_base, i64 12
  %_14.i = getelementptr inbounds nuw i8, ptr %v_base, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !265)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !268)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !270)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !273)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !275)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !278)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !280)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !283)
  %_3.i.i.i.i7.i = load i32, ptr %_12.i, align 4, !alias.scope !285, !noalias !286, !noundef !4
  %_4.i.i.i.i8.i = load i32, ptr %_14.i, align 4, !alias.scope !286, !noalias !285, !noundef !4
  %_0.i9.i = icmp slt i32 %_3.i.i.i.i7.i, %_4.i.i.i.i8.i
  %count.i = zext i1 %_0.i.i to i64
  %a.i = getelementptr inbounds nuw i32, ptr %v_base, i64 %count.i
  %_19.i = xor i1 %_0.i.i, true
  %count2.i = zext i1 %_19.i to i64
  %b.i = getelementptr inbounds nuw i32, ptr %v_base, i64 %count2.i
  %count3.i = select i1 %_0.i9.i, i64 3, i64 2
  %c.i = getelementptr inbounds nuw i32, ptr %v_base, i64 %count3.i
  %count4.i = select i1 %_0.i9.i, i64 2, i64 3
  %d.i = getelementptr inbounds nuw i32, ptr %v_base, i64 %count4.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !287)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !290)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !292)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !295)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !297)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !300)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !302)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !305)
  %_3.i.i.i.i10.i = load i32, ptr %c.i, align 4, !alias.scope !307, !noalias !308, !noundef !4
  %_4.i.i.i.i11.i = load i32, ptr %a.i, align 4, !alias.scope !308, !noalias !307, !noundef !4
  %_0.i12.i = icmp slt i32 %_3.i.i.i.i10.i, %_4.i.i.i.i11.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !309)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !312)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !314)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !317)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !319)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !322)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !324)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !327)
  %_3.i.i.i.i13.i = load i32, ptr %d.i, align 4, !alias.scope !329, !noalias !330, !noundef !4
  %_4.i.i.i.i14.i = load i32, ptr %b.i, align 4, !alias.scope !330, !noalias !329, !noundef !4
  %_0.i15.i = icmp slt i32 %_3.i.i.i.i13.i, %_4.i.i.i.i14.i
  %0 = select i1 %_0.i12.i, ptr %c.i, ptr %a.i, !unpredictable !4
  %1 = select i1 %_0.i15.i, ptr %c.i, ptr %b.i, !unpredictable !4
  %2 = select i1 %_0.i12.i, ptr %a.i, ptr %1, !unpredictable !4
  %3 = select i1 %_0.i12.i, ptr %b.i, ptr %c.i, !unpredictable !4
  %4 = select i1 %_0.i15.i, ptr %d.i, ptr %3, !unpredictable !4
  tail call void @llvm.experimental.noalias.scope.decl(metadata !331)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !334)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !336)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !339)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !341)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !344)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !346)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !349)
  %_3.i.i.i.i16.i = load i32, ptr %4, align 4, !alias.scope !351, !noalias !352, !noundef !4
  %_4.i.i.i.i17.i = load i32, ptr %2, align 4, !alias.scope !352, !noalias !351, !noundef !4
  %_0.i18.i = icmp slt i32 %_3.i.i.i.i16.i, %_4.i.i.i.i17.i
  %5 = load i32, ptr %0, align 4
  store i32 %5, ptr %scratch_base, align 4
  %dst5.i = getelementptr inbounds nuw i8, ptr %scratch_base, i64 4
  %.val.i = load i32, ptr %4, align 4
  %.val19.i = load i32, ptr %2, align 4
  %6 = select i1 %_0.i18.i, i32 %.val.i, i32 %.val19.i
  store i32 %6, ptr %dst5.i, align 4
  %dst6.i = getelementptr inbounds nuw i8, ptr %scratch_base, i64 8
  %.val20.i = load i32, ptr %2, align 4
  %.val21.i = load i32, ptr %4, align 4
  %7 = select i1 %_0.i18.i, i32 %.val20.i, i32 %.val21.i
  store i32 %7, ptr %dst6.i, align 4
  %8 = getelementptr inbounds nuw i8, ptr %scratch_base, i64 12
  %b.val.i = load i32, ptr %b.i, align 4
  %d.val.i = load i32, ptr %d.i, align 4
  %9 = select i1 %_0.i15.i, i32 %b.val.i, i32 %d.val.i
  store i32 %9, ptr %8, align 4
  %_9 = getelementptr inbounds nuw i8, ptr %v_base, i64 16
  %_10 = getelementptr i8, ptr %scratch_base, i64 16
  %_7.i1 = getelementptr inbounds nuw i8, ptr %v_base, i64 20
  tail call void @llvm.experimental.noalias.scope.decl(metadata !353)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !356)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !358)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !361)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !363)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !366)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !368)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !371)
  %_3.i.i.i.i.i2 = load i32, ptr %_7.i1, align 4, !alias.scope !373, !noalias !374, !noundef !4
  %_4.i.i.i.i.i3 = load i32, ptr %_9, align 4, !alias.scope !374, !noalias !373, !noundef !4
  %_0.i.i4 = icmp slt i32 %_3.i.i.i.i.i2, %_4.i.i.i.i.i3
  %_12.i5 = getelementptr inbounds nuw i8, ptr %v_base, i64 28
  %_14.i6 = getelementptr inbounds nuw i8, ptr %v_base, i64 24
  tail call void @llvm.experimental.noalias.scope.decl(metadata !375)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !378)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !380)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !383)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !385)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !388)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !390)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !393)
  %_3.i.i.i.i7.i7 = load i32, ptr %_12.i5, align 4, !alias.scope !395, !noalias !396, !noundef !4
  %_4.i.i.i.i8.i8 = load i32, ptr %_14.i6, align 4, !alias.scope !396, !noalias !395, !noundef !4
  %_0.i9.i9 = icmp slt i32 %_3.i.i.i.i7.i7, %_4.i.i.i.i8.i8
  %count.i10 = zext i1 %_0.i.i4 to i64
  %a.i11 = getelementptr inbounds nuw i32, ptr %_9, i64 %count.i10
  %_19.i12 = xor i1 %_0.i.i4, true
  %count2.i13 = zext i1 %_19.i12 to i64
  %b.i14 = getelementptr inbounds nuw i32, ptr %_9, i64 %count2.i13
  %count3.i15 = select i1 %_0.i9.i9, i64 3, i64 2
  %c.i16 = getelementptr inbounds nuw i32, ptr %_9, i64 %count3.i15
  %count4.i17 = select i1 %_0.i9.i9, i64 2, i64 3
  %d.i18 = getelementptr inbounds nuw i32, ptr %_9, i64 %count4.i17
  tail call void @llvm.experimental.noalias.scope.decl(metadata !397)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !400)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !402)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !405)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !407)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !410)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !412)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !415)
  %_3.i.i.i.i10.i19 = load i32, ptr %c.i16, align 4, !alias.scope !417, !noalias !418, !noundef !4
  %_4.i.i.i.i11.i20 = load i32, ptr %a.i11, align 4, !alias.scope !418, !noalias !417, !noundef !4
  %_0.i12.i21 = icmp slt i32 %_3.i.i.i.i10.i19, %_4.i.i.i.i11.i20
  tail call void @llvm.experimental.noalias.scope.decl(metadata !419)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !422)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !424)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !427)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !429)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !432)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !434)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !437)
  %_3.i.i.i.i13.i22 = load i32, ptr %d.i18, align 4, !alias.scope !439, !noalias !440, !noundef !4
  %_4.i.i.i.i14.i23 = load i32, ptr %b.i14, align 4, !alias.scope !440, !noalias !439, !noundef !4
  %_0.i15.i24 = icmp slt i32 %_3.i.i.i.i13.i22, %_4.i.i.i.i14.i23
  %10 = select i1 %_0.i12.i21, ptr %c.i16, ptr %a.i11, !unpredictable !4
  %11 = select i1 %_0.i15.i24, ptr %c.i16, ptr %b.i14, !unpredictable !4
  %12 = select i1 %_0.i12.i21, ptr %a.i11, ptr %11, !unpredictable !4
  %13 = select i1 %_0.i12.i21, ptr %b.i14, ptr %c.i16, !unpredictable !4
  %14 = select i1 %_0.i15.i24, ptr %d.i18, ptr %13, !unpredictable !4
  tail call void @llvm.experimental.noalias.scope.decl(metadata !441)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !444)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !446)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !449)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !451)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !454)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !456)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !459)
  %_3.i.i.i.i16.i25 = load i32, ptr %14, align 4, !alias.scope !461, !noalias !462, !noundef !4
  %_4.i.i.i.i17.i26 = load i32, ptr %12, align 4, !alias.scope !462, !noalias !461, !noundef !4
  %_0.i18.i27 = icmp slt i32 %_3.i.i.i.i16.i25, %_4.i.i.i.i17.i26
  %15 = load i32, ptr %10, align 4
  store i32 %15, ptr %_10, align 4
  %dst5.i28 = getelementptr i8, ptr %scratch_base, i64 20
  %.val.i29 = load i32, ptr %14, align 4
  %.val19.i30 = load i32, ptr %12, align 4
  %16 = select i1 %_0.i18.i27, i32 %.val.i29, i32 %.val19.i30
  store i32 %16, ptr %dst5.i28, align 4
  %dst6.i31 = getelementptr i8, ptr %scratch_base, i64 24
  %.val20.i32 = load i32, ptr %12, align 4
  %.val21.i33 = load i32, ptr %14, align 4
  %17 = select i1 %_0.i18.i27, i32 %.val20.i32, i32 %.val21.i33
  store i32 %17, ptr %dst6.i31, align 4
  %18 = getelementptr i8, ptr %scratch_base, i64 28
  %b.val.i34 = load i32, ptr %b.i14, align 4
  %d.val.i35 = load i32, ptr %d.i18, align 4
  %19 = select i1 %_0.i15.i24, i32 %b.val.i34, i32 %d.val.i35
  store i32 %19, ptr %18, align 4
  tail call void @llvm.experimental.noalias.scope.decl(metadata !463)
  %20 = getelementptr i8, ptr %scratch_base, i64 12
  %21 = getelementptr inbounds nuw i8, ptr %scratch_base, i64 28
  %22 = getelementptr inbounds nuw i8, ptr %dst, i64 28
  tail call void @llvm.experimental.noalias.scope.decl(metadata !466)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !469)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !471), !noalias !474
  tail call void @llvm.experimental.noalias.scope.decl(metadata !477), !noalias !474
  tail call void @llvm.experimental.noalias.scope.decl(metadata !479), !noalias !474
  tail call void @llvm.experimental.noalias.scope.decl(metadata !482), !noalias !474
  tail call void @llvm.experimental.noalias.scope.decl(metadata !484), !noalias !474
  tail call void @llvm.experimental.noalias.scope.decl(metadata !487), !noalias !474
  %_3.i.i.i.i.i36 = load i32, ptr %_10, align 4, !alias.scope !489, !noalias !490, !noundef !4
  %_4.i.i.i.i.i37 = load i32, ptr %scratch_base, align 4, !alias.scope !491, !noalias !492, !noundef !4
  %_0.i.i38 = icmp slt i32 %_3.i.i.i.i.i36, %_4.i.i.i.i.i37
  %is_l.i18.i = xor i1 %_0.i.i38, true
  %23 = tail call i32 @llvm.smin.i32(i32 %_3.i.i.i.i.i36, i32 %_4.i.i.i.i.i37)
  store i32 %23, ptr %dst, align 4, !noalias !493
  %count.i.i = zext i1 %_0.i.i38 to i64
  %_12.i.i = getelementptr inbounds nuw i32, ptr %_10, i64 %count.i.i
  %count2.i.i = zext i1 %is_l.i18.i to i64
  %_14.i.i = getelementptr inbounds nuw i32, ptr %scratch_base, i64 %count2.i.i
  %_16.i.i = getelementptr inbounds nuw i8, ptr %dst, i64 4
  tail call void @llvm.experimental.noalias.scope.decl(metadata !495)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !498)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !500), !noalias !503
  tail call void @llvm.experimental.noalias.scope.decl(metadata !506), !noalias !503
  tail call void @llvm.experimental.noalias.scope.decl(metadata !508), !noalias !503
  tail call void @llvm.experimental.noalias.scope.decl(metadata !511), !noalias !503
  tail call void @llvm.experimental.noalias.scope.decl(metadata !513), !noalias !503
  tail call void @llvm.experimental.noalias.scope.decl(metadata !516), !noalias !503
  %_3.i.i.i.i19.i = load i32, ptr %21, align 4, !alias.scope !518, !noalias !519, !noundef !4
  %_4.i.i.i.i20.i = load i32, ptr %20, align 4, !alias.scope !520, !noalias !521, !noundef !4
  %_0.i21.i = icmp slt i32 %_3.i.i.i.i19.i, %_4.i.i.i.i20.i
  %is_l.i.i = xor i1 %_0.i21.i, true
  %24 = tail call i32 @llvm.smax.i32(i32 %_3.i.i.i.i19.i, i32 %_4.i.i.i.i20.i)
  store i32 %24, ptr %22, align 4, !noalias !522
  %count.neg.i.i = sext i1 %is_l.i.i to i64
  %25 = getelementptr i32, ptr %21, i64 %count.neg.i.i
  %count3.neg.i.i = sext i1 %_0.i21.i to i64
  %26 = getelementptr i32, ptr %20, i64 %count3.neg.i.i
  %27 = getelementptr inbounds nuw i8, ptr %dst, i64 24
  tail call void @llvm.experimental.noalias.scope.decl(metadata !524)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !526)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !528), !noalias !474
  tail call void @llvm.experimental.noalias.scope.decl(metadata !530), !noalias !474
  tail call void @llvm.experimental.noalias.scope.decl(metadata !532), !noalias !474
  tail call void @llvm.experimental.noalias.scope.decl(metadata !534), !noalias !474
  tail call void @llvm.experimental.noalias.scope.decl(metadata !536), !noalias !474
  tail call void @llvm.experimental.noalias.scope.decl(metadata !538), !noalias !474
  %_3.i.i.i.i.i36.1 = load i32, ptr %_12.i.i, align 4, !alias.scope !540, !noalias !541, !noundef !4
  %_4.i.i.i.i.i37.1 = load i32, ptr %_14.i.i, align 4, !alias.scope !542, !noalias !543, !noundef !4
  %_0.i.i38.1 = icmp slt i32 %_3.i.i.i.i.i36.1, %_4.i.i.i.i.i37.1
  %is_l.i18.i.1 = xor i1 %_0.i.i38.1, true
  %28 = tail call i32 @llvm.smin.i32(i32 %_3.i.i.i.i.i36.1, i32 %_4.i.i.i.i.i37.1)
  store i32 %28, ptr %_16.i.i, align 4, !noalias !493
  %count.i.i.1 = zext i1 %_0.i.i38.1 to i64
  %_12.i.i.1 = getelementptr inbounds nuw i32, ptr %_12.i.i, i64 %count.i.i.1
  %count2.i.i.1 = zext i1 %is_l.i18.i.1 to i64
  %_14.i.i.1 = getelementptr inbounds nuw i32, ptr %_14.i.i, i64 %count2.i.i.1
  %_16.i.i.1 = getelementptr inbounds nuw i8, ptr %dst, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !544)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !546)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !548), !noalias !503
  tail call void @llvm.experimental.noalias.scope.decl(metadata !550), !noalias !503
  tail call void @llvm.experimental.noalias.scope.decl(metadata !552), !noalias !503
  tail call void @llvm.experimental.noalias.scope.decl(metadata !554), !noalias !503
  tail call void @llvm.experimental.noalias.scope.decl(metadata !556), !noalias !503
  tail call void @llvm.experimental.noalias.scope.decl(metadata !558), !noalias !503
  %_3.i.i.i.i19.i.1 = load i32, ptr %25, align 4, !alias.scope !560, !noalias !561, !noundef !4
  %_4.i.i.i.i20.i.1 = load i32, ptr %26, align 4, !alias.scope !562, !noalias !563, !noundef !4
  %_0.i21.i.1 = icmp slt i32 %_3.i.i.i.i19.i.1, %_4.i.i.i.i20.i.1
  %is_l.i.i.1 = xor i1 %_0.i21.i.1, true
  %29 = tail call i32 @llvm.smax.i32(i32 %_3.i.i.i.i19.i.1, i32 %_4.i.i.i.i20.i.1)
  store i32 %29, ptr %27, align 4, !noalias !522
  %count.neg.i.i.1 = sext i1 %is_l.i.i.1 to i64
  %30 = getelementptr i32, ptr %25, i64 %count.neg.i.i.1
  %count3.neg.i.i.1 = sext i1 %_0.i21.i.1 to i64
  %31 = getelementptr i32, ptr %26, i64 %count3.neg.i.i.1
  %32 = getelementptr inbounds nuw i8, ptr %dst, i64 20
  tail call void @llvm.experimental.noalias.scope.decl(metadata !564)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !566)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !568), !noalias !474
  tail call void @llvm.experimental.noalias.scope.decl(metadata !570), !noalias !474
  tail call void @llvm.experimental.noalias.scope.decl(metadata !572), !noalias !474
  tail call void @llvm.experimental.noalias.scope.decl(metadata !574), !noalias !474
  tail call void @llvm.experimental.noalias.scope.decl(metadata !576), !noalias !474
  tail call void @llvm.experimental.noalias.scope.decl(metadata !578), !noalias !474
  %_3.i.i.i.i.i36.2 = load i32, ptr %_12.i.i.1, align 4, !alias.scope !580, !noalias !581, !noundef !4
  %_4.i.i.i.i.i37.2 = load i32, ptr %_14.i.i.1, align 4, !alias.scope !582, !noalias !583, !noundef !4
  %_0.i.i38.2 = icmp slt i32 %_3.i.i.i.i.i36.2, %_4.i.i.i.i.i37.2
  %is_l.i18.i.2 = xor i1 %_0.i.i38.2, true
  %33 = tail call i32 @llvm.smin.i32(i32 %_3.i.i.i.i.i36.2, i32 %_4.i.i.i.i.i37.2)
  store i32 %33, ptr %_16.i.i.1, align 4, !noalias !493
  %count.i.i.2 = zext i1 %_0.i.i38.2 to i64
  %_12.i.i.2 = getelementptr inbounds nuw i32, ptr %_12.i.i.1, i64 %count.i.i.2
  %count2.i.i.2 = zext i1 %is_l.i18.i.2 to i64
  %_14.i.i.2 = getelementptr inbounds nuw i32, ptr %_14.i.i.1, i64 %count2.i.i.2
  %_16.i.i.2 = getelementptr inbounds nuw i8, ptr %dst, i64 12
  tail call void @llvm.experimental.noalias.scope.decl(metadata !584)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !586)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !588), !noalias !503
  tail call void @llvm.experimental.noalias.scope.decl(metadata !590), !noalias !503
  tail call void @llvm.experimental.noalias.scope.decl(metadata !592), !noalias !503
  tail call void @llvm.experimental.noalias.scope.decl(metadata !594), !noalias !503
  tail call void @llvm.experimental.noalias.scope.decl(metadata !596), !noalias !503
  tail call void @llvm.experimental.noalias.scope.decl(metadata !598), !noalias !503
  %_3.i.i.i.i19.i.2 = load i32, ptr %30, align 4, !alias.scope !600, !noalias !601, !noundef !4
  %_4.i.i.i.i20.i.2 = load i32, ptr %31, align 4, !alias.scope !602, !noalias !603, !noundef !4
  %_0.i21.i.2 = icmp slt i32 %_3.i.i.i.i19.i.2, %_4.i.i.i.i20.i.2
  %is_l.i.i.2 = xor i1 %_0.i21.i.2, true
  %34 = tail call i32 @llvm.smax.i32(i32 %_3.i.i.i.i19.i.2, i32 %_4.i.i.i.i20.i.2)
  store i32 %34, ptr %32, align 4, !noalias !522
  %count.neg.i.i.2 = sext i1 %is_l.i.i.2 to i64
  %35 = getelementptr i32, ptr %30, i64 %count.neg.i.i.2
  %count3.neg.i.i.2 = sext i1 %_0.i21.i.2 to i64
  %36 = getelementptr i32, ptr %31, i64 %count3.neg.i.i.2
  %37 = getelementptr inbounds nuw i8, ptr %dst, i64 16
  tail call void @llvm.experimental.noalias.scope.decl(metadata !604)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !606)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !608), !noalias !474
  tail call void @llvm.experimental.noalias.scope.decl(metadata !610), !noalias !474
  tail call void @llvm.experimental.noalias.scope.decl(metadata !612), !noalias !474
  tail call void @llvm.experimental.noalias.scope.decl(metadata !614), !noalias !474
  tail call void @llvm.experimental.noalias.scope.decl(metadata !616), !noalias !474
  tail call void @llvm.experimental.noalias.scope.decl(metadata !618), !noalias !474
  %_3.i.i.i.i.i36.3 = load i32, ptr %_12.i.i.2, align 4, !alias.scope !620, !noalias !621, !noundef !4
  %_4.i.i.i.i.i37.3 = load i32, ptr %_14.i.i.2, align 4, !alias.scope !622, !noalias !623, !noundef !4
  %_0.i.i38.3 = icmp slt i32 %_3.i.i.i.i.i36.3, %_4.i.i.i.i.i37.3
  %is_l.i18.i.3 = xor i1 %_0.i.i38.3, true
  %38 = tail call i32 @llvm.smin.i32(i32 %_3.i.i.i.i.i36.3, i32 %_4.i.i.i.i.i37.3)
  store i32 %38, ptr %_16.i.i.2, align 4, !noalias !493
  %count.i.i.3 = zext i1 %_0.i.i38.3 to i64
  %_12.i.i.3 = getelementptr inbounds nuw i32, ptr %_12.i.i.2, i64 %count.i.i.3
  %count2.i.i.3 = zext i1 %is_l.i18.i.3 to i64
  %_14.i.i.3 = getelementptr inbounds nuw i32, ptr %_14.i.i.2, i64 %count2.i.i.3
  tail call void @llvm.experimental.noalias.scope.decl(metadata !624)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !626)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !628), !noalias !503
  tail call void @llvm.experimental.noalias.scope.decl(metadata !630), !noalias !503
  tail call void @llvm.experimental.noalias.scope.decl(metadata !632), !noalias !503
  tail call void @llvm.experimental.noalias.scope.decl(metadata !634), !noalias !503
  tail call void @llvm.experimental.noalias.scope.decl(metadata !636), !noalias !503
  tail call void @llvm.experimental.noalias.scope.decl(metadata !638), !noalias !503
  %_3.i.i.i.i19.i.3 = load i32, ptr %35, align 4, !alias.scope !640, !noalias !641, !noundef !4
  %_4.i.i.i.i20.i.3 = load i32, ptr %36, align 4, !alias.scope !642, !noalias !643, !noundef !4
  %_0.i21.i.3 = icmp slt i32 %_3.i.i.i.i19.i.3, %_4.i.i.i.i20.i.3
  %is_l.i.i.3 = xor i1 %_0.i21.i.3, true
  %39 = tail call i32 @llvm.smax.i32(i32 %_3.i.i.i.i19.i.3, i32 %_4.i.i.i.i20.i.3)
  store i32 %39, ptr %37, align 4, !noalias !522
  %count.neg.i.i.3 = sext i1 %is_l.i.i.3 to i64
  %40 = getelementptr i32, ptr %35, i64 %count.neg.i.i.3
  %count3.neg.i.i.3 = sext i1 %_0.i21.i.3 to i64
  %41 = getelementptr i32, ptr %36, i64 %count3.neg.i.i.3
  %42 = getelementptr i8, ptr %41, i64 4
  %43 = getelementptr i8, ptr %40, i64 4
  %_31.i = icmp ne ptr %_14.i.i.3, %42
  %_32.i = icmp ne ptr %_12.i.i.3, %43
  %or.cond.i = select i1 %_31.i, i1 true, i1 %_32.i
  br i1 %or.cond.i, label %bb13.i, label %_ZN4core5slice4sort6shared9smallsort19bidirectional_merge17hdcb44283c7f19263E.exit, !prof !644

bb13.i:                                           ; preds = %start
; call core::slice::sort::shared::smallsort::panic_on_ord_violation
  tail call void @_ZN4core5slice4sort6shared9smallsort22panic_on_ord_violation17hc77a22a2d50782cdE() #30, !noalias !463
  unreachable

_ZN4core5slice4sort6shared9smallsort19bidirectional_merge17hdcb44283c7f19263E.exit: ; preds = %start
  ret void
}

; core::slice::sort::shared::smallsort::bidirectional_merge
; Function Attrs: nonlazybind uwtable
define void @_ZN4core5slice4sort6shared9smallsort19bidirectional_merge17hdcb44283c7f19263E(ptr noalias noundef nonnull readonly align 4 captures(address) %v.0, i64 noundef range(i64 0, 2305843009213693952) %v.1, ptr noundef writeonly captures(none) %0, ptr noalias noundef readnone align 8 captures(none) dereferenceable(8) %is_less) unnamed_addr #1 {
start:
  %len_div_215 = lshr i64 %v.1, 1
  %_7 = icmp samesign ugt i64 %v.1, 1
  tail call void @llvm.assume(i1 %_7)
  %count1 = add nsw i64 %v.1, -1
  %1 = getelementptr inbounds nuw i32, ptr %0, i64 %count1
  %2 = getelementptr inbounds nuw i32, ptr %v.0, i64 %count1
  %3 = getelementptr i32, ptr %v.0, i64 %len_div_215
  %4 = getelementptr i8, ptr %3, i64 -4
  br label %bb15

bb16:                                             ; preds = %bb15
  %5 = getelementptr i8, ptr %10, i64 4
  %6 = getelementptr i8, ptr %9, i64 4
  %_44 = and i64 %v.1, 1
  %_22 = icmp eq i64 %_44, 0
  br i1 %_22, label %bb9, label %bb5

bb15:                                             ; preds = %start, %bb15
  %dst.sroa.0.029 = phi ptr [ %_16.i, %bb15 ], [ %0, %start ]
  %iter.sroa.0.028 = phi i64 [ %_39, %bb15 ], [ 0, %start ]
  %left.sroa.0.027 = phi ptr [ %_14.i, %bb15 ], [ %v.0, %start ]
  %right.sroa.0.026 = phi ptr [ %_12.i, %bb15 ], [ %3, %start ]
  %left_rev.sroa.0.025 = phi ptr [ %10, %bb15 ], [ %4, %start ]
  %right_rev.sroa.0.024 = phi ptr [ %9, %bb15 ], [ %2, %start ]
  %dst_rev.sroa.0.023 = phi ptr [ %11, %bb15 ], [ %1, %start ]
  %_39 = add nuw nsw i64 %iter.sroa.0.028, 1
  tail call void @llvm.experimental.noalias.scope.decl(metadata !645)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !648)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !650), !noalias !653
  tail call void @llvm.experimental.noalias.scope.decl(metadata !656), !noalias !653
  tail call void @llvm.experimental.noalias.scope.decl(metadata !658), !noalias !653
  tail call void @llvm.experimental.noalias.scope.decl(metadata !661), !noalias !653
  tail call void @llvm.experimental.noalias.scope.decl(metadata !663), !noalias !653
  tail call void @llvm.experimental.noalias.scope.decl(metadata !666), !noalias !653
  %_3.i.i.i.i = load i32, ptr %right.sroa.0.026, align 4, !alias.scope !668, !noalias !669, !noundef !4
  %_4.i.i.i.i = load i32, ptr %left.sroa.0.027, align 4, !alias.scope !670, !noalias !671, !noundef !4
  %_0.i = icmp slt i32 %_3.i.i.i.i, %_4.i.i.i.i
  %is_l.i18 = xor i1 %_0.i, true
  %7 = tail call i32 @llvm.smin.i32(i32 %_3.i.i.i.i, i32 %_4.i.i.i.i)
  store i32 %7, ptr %dst.sroa.0.029, align 4, !noalias !672
  %count.i = zext i1 %_0.i to i64
  %_12.i = getelementptr inbounds nuw i32, ptr %right.sroa.0.026, i64 %count.i
  %count2.i = zext i1 %is_l.i18 to i64
  %_14.i = getelementptr inbounds nuw i32, ptr %left.sroa.0.027, i64 %count2.i
  %_16.i = getelementptr inbounds nuw i8, ptr %dst.sroa.0.029, i64 4
  tail call void @llvm.experimental.noalias.scope.decl(metadata !674)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !677)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !679), !noalias !682
  tail call void @llvm.experimental.noalias.scope.decl(metadata !685), !noalias !682
  tail call void @llvm.experimental.noalias.scope.decl(metadata !687), !noalias !682
  tail call void @llvm.experimental.noalias.scope.decl(metadata !690), !noalias !682
  tail call void @llvm.experimental.noalias.scope.decl(metadata !692), !noalias !682
  tail call void @llvm.experimental.noalias.scope.decl(metadata !695), !noalias !682
  %_3.i.i.i.i19 = load i32, ptr %right_rev.sroa.0.024, align 4, !alias.scope !697, !noalias !698, !noundef !4
  %_4.i.i.i.i20 = load i32, ptr %left_rev.sroa.0.025, align 4, !alias.scope !699, !noalias !700, !noundef !4
  %_0.i21 = icmp slt i32 %_3.i.i.i.i19, %_4.i.i.i.i20
  %is_l.i = xor i1 %_0.i21, true
  %8 = tail call i32 @llvm.smax.i32(i32 %_3.i.i.i.i19, i32 %_4.i.i.i.i20)
  store i32 %8, ptr %dst_rev.sroa.0.023, align 4, !noalias !701
  %count.neg.i = sext i1 %is_l.i to i64
  %9 = getelementptr i32, ptr %right_rev.sroa.0.024, i64 %count.neg.i
  %count3.neg.i = sext i1 %_0.i21 to i64
  %10 = getelementptr i32, ptr %left_rev.sroa.0.025, i64 %count3.neg.i
  %11 = getelementptr inbounds i8, ptr %dst_rev.sroa.0.023, i64 -4
  %exitcond.not = icmp eq i64 %_39, %len_div_215
  br i1 %exitcond.not, label %bb16, label %bb15

bb5:                                              ; preds = %bb16
  %left_nonempty = icmp ult ptr %_14.i, %5
  %left.sroa.0.0.right.sroa.0.0 = select i1 %left_nonempty, ptr %_14.i, ptr %_12.i
  %12 = load i32, ptr %left.sroa.0.0.right.sroa.0.0, align 4
  store i32 %12, ptr %_16.i, align 4
  %count2 = zext i1 %left_nonempty to i64
  %_26 = getelementptr inbounds nuw i32, ptr %_14.i, i64 %count2
  %_30 = xor i1 %left_nonempty, true
  %count3 = zext i1 %_30 to i64
  %_28 = getelementptr inbounds nuw i32, ptr %_12.i, i64 %count3
  br label %bb9

bb9:                                              ; preds = %bb16, %bb5
  %right.sroa.0.1 = phi ptr [ %_12.i, %bb16 ], [ %_28, %bb5 ]
  %left.sroa.0.1 = phi ptr [ %_14.i, %bb16 ], [ %_26, %bb5 ]
  %_31 = icmp ne ptr %left.sroa.0.1, %5
  %_32 = icmp ne ptr %right.sroa.0.1, %6
  %or.cond = select i1 %_31, i1 true, i1 %_32
  br i1 %or.cond, label %bb13, label %bb14, !prof !644

bb14:                                             ; preds = %bb9
  ret void

bb13:                                             ; preds = %bb9
; call core::slice::sort::shared::smallsort::panic_on_ord_violation
  tail call void @_ZN4core5slice4sort6shared9smallsort22panic_on_ord_violation17hc77a22a2d50782cdE() #30
  unreachable
}

; core::slice::sort::shared::smallsort::insertion_sort_shift_left
; Function Attrs: nounwind nonlazybind memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable
define void @_ZN4core5slice4sort6shared9smallsort25insertion_sort_shift_left17hf70ee3bbb8914ac5E(ptr noalias noundef nonnull align 4 captures(address) %v.0, i64 noundef range(i64 0, 2305843009213693952) %v.1, i64 noundef %offset, ptr noalias readnone align 8 captures(none) %is_less) unnamed_addr #7 personality ptr @rust_eh_personality {
start:
  %0 = add i64 %offset, -1
  %or.cond.not = icmp ult i64 %0, %v.1
  br i1 %or.cond.not, label %bb3, label %bb2

bb2:                                              ; preds = %start
  tail call void @llvm.trap()
  unreachable

bb3:                                              ; preds = %start
  %v_end = getelementptr inbounds nuw i32, ptr %v.0, i64 %v.1
  %_11.not1 = icmp samesign eq i64 %offset, %v.1
  br i1 %_11.not1, label %bb7, label %bb5.preheader

bb5.preheader:                                    ; preds = %bb3
  %1 = getelementptr inbounds nuw i32, ptr %v.0, i64 %offset
  br label %bb5

bb7:                                              ; preds = %_ZN4core5slice4sort6shared9smallsort11insert_tail17hcfefba0b2235ddb0E.exit, %bb3
  ret void

bb5:                                              ; preds = %bb5.preheader, %_ZN4core5slice4sort6shared9smallsort11insert_tail17hcfefba0b2235ddb0E.exit
  %tail.sroa.0.02 = phi ptr [ %_15, %_ZN4core5slice4sort6shared9smallsort11insert_tail17hcfefba0b2235ddb0E.exit ], [ %1, %bb5.preheader ]
  %2 = getelementptr inbounds i8, ptr %tail.sroa.0.02, i64 -4
  tail call void @llvm.experimental.noalias.scope.decl(metadata !703)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !706)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !708)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !711)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !713)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !716)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !718)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !721)
  %_3.i.i.i.i.i = load i32, ptr %tail.sroa.0.02, align 4, !alias.scope !723, !noalias !724, !noundef !4
  %_4.i.i.i.i.i = load i32, ptr %2, align 4, !alias.scope !724, !noalias !723, !noundef !4
  %_0.i.i = icmp slt i32 %_3.i.i.i.i.i, %_4.i.i.i.i.i
  br i1 %_0.i.i, label %bb4.i, label %_ZN4core5slice4sort6shared9smallsort11insert_tail17hcfefba0b2235ddb0E.exit

bb4.i:                                            ; preds = %bb5, %bb6.i
  %gap_guard.sroa.5.0.i = phi ptr [ %sift.sroa.0.0.i, %bb6.i ], [ %tail.sroa.0.02, %bb5 ]
  %sift.sroa.0.0.i = phi ptr [ %4, %bb6.i ], [ %2, %bb5 ]
  %3 = load i32, ptr %sift.sroa.0.0.i, align 4
  store i32 %3, ptr %gap_guard.sroa.5.0.i, align 4
  %_18.i = icmp eq ptr %sift.sroa.0.0.i, %v.0
  br i1 %_18.i, label %bb10.i, label %bb6.i

bb6.i:                                            ; preds = %bb4.i
  %4 = getelementptr inbounds i8, ptr %sift.sroa.0.0.i, i64 -4
  %_4.i.i.i.i2.i = load i32, ptr %4, align 4, !alias.scope !725, !noalias !734, !noundef !4
  %_0.i3.i = icmp slt i32 %_3.i.i.i.i.i, %_4.i.i.i.i2.i
  br i1 %_0.i3.i, label %bb4.i, label %bb10.i

bb10.i:                                           ; preds = %bb6.i, %bb4.i
  store i32 %_3.i.i.i.i.i, ptr %sift.sroa.0.0.i, align 4, !noalias !739
  br label %_ZN4core5slice4sort6shared9smallsort11insert_tail17hcfefba0b2235ddb0E.exit

_ZN4core5slice4sort6shared9smallsort11insert_tail17hcfefba0b2235ddb0E.exit: ; preds = %bb5, %bb10.i
  %_15 = getelementptr inbounds nuw i8, ptr %tail.sroa.0.02, i64 4
  %_11.not = icmp eq ptr %_15, %v_end
  br i1 %_11.not, label %bb7, label %bb5
}

; core::slice::sort::shared::smallsort::small_sort_general_with_scratch
; Function Attrs: nonlazybind uwtable
define void @_ZN4core5slice4sort6shared9smallsort31small_sort_general_with_scratch17he3e14fa8f4d210b5E(ptr noalias noundef nonnull align 4 captures(none) %v.0, i64 noundef range(i64 0, 2305843009213693952) %v.1, ptr noalias noundef nonnull align 4 captures(address) %scratch.0, i64 noundef range(i64 0, 2305843009213693952) %scratch.1, ptr noalias readnone align 8 captures(none) %is_less) unnamed_addr #1 personality ptr @rust_eh_personality {
start:
  %iter = alloca [32 x i8], align 8
  %_5 = icmp samesign ult i64 %v.1, 2
  br i1 %_5, label %bb29, label %bb2

bb2:                                              ; preds = %start
  %_8 = add nuw nsw i64 %v.1, 16
  %_6 = icmp samesign ult i64 %scratch.1, %_8
  br i1 %_6, label %bb3, label %bb4

bb4:                                              ; preds = %bb2
  %len_div_211 = lshr i64 %v.1, 1
  %_14 = icmp samesign ugt i64 %v.1, 15
  br i1 %_14, label %bb6, label %bb9

bb3:                                              ; preds = %bb2
  tail call void @llvm.trap()
  unreachable

bb9:                                              ; preds = %bb4
  %_22 = icmp samesign ugt i64 %v.1, 7
  br i1 %_22, label %bb10, label %bb46

bb6:                                              ; preds = %bb4
  %_16 = getelementptr inbounds nuw i32, ptr %scratch.0, i64 %v.1
; call core::slice::sort::shared::smallsort::sort8_stable
  tail call void @_ZN4core5slice4sort6shared9smallsort12sort8_stable17h755e1cbf05c0083bE(ptr noundef nonnull %v.0, ptr noundef nonnull %scratch.0, ptr noundef nonnull %_16, ptr noalias align 8 poison)
  %_18 = getelementptr inbounds nuw i32, ptr %v.0, i64 %len_div_211
  %_19 = getelementptr inbounds nuw i32, ptr %scratch.0, i64 %len_div_211
  %_20 = getelementptr inbounds nuw i8, ptr %_16, i64 32
; call core::slice::sort::shared::smallsort::sort8_stable
  tail call void @_ZN4core5slice4sort6shared9smallsort12sort8_stable17h755e1cbf05c0083bE(ptr noundef nonnull %_18, ptr noundef nonnull %_19, ptr noundef nonnull %_20, ptr noalias align 8 poison)
  br label %bb15

bb10:                                             ; preds = %bb9
  %_7.i = getelementptr inbounds nuw i8, ptr %v.0, i64 4
  tail call void @llvm.experimental.noalias.scope.decl(metadata !744)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !747)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !749)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !752)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !754)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !757)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !759)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !762)
  %_3.i.i.i.i.i = load i32, ptr %_7.i, align 4, !alias.scope !764, !noalias !765, !noundef !4
  %_4.i.i.i.i.i = load i32, ptr %v.0, align 4, !alias.scope !765, !noalias !764, !noundef !4
  %_0.i.i = icmp slt i32 %_3.i.i.i.i.i, %_4.i.i.i.i.i
  %_12.i = getelementptr inbounds nuw i8, ptr %v.0, i64 12
  %_14.i = getelementptr inbounds nuw i8, ptr %v.0, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !766)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !769)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !771)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !774)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !776)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !779)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !781)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !784)
  %_3.i.i.i.i7.i = load i32, ptr %_12.i, align 4, !alias.scope !786, !noalias !787, !noundef !4
  %_4.i.i.i.i8.i = load i32, ptr %_14.i, align 4, !alias.scope !787, !noalias !786, !noundef !4
  %_0.i9.i = icmp slt i32 %_3.i.i.i.i7.i, %_4.i.i.i.i8.i
  %count.i = zext i1 %_0.i.i to i64
  %a.i = getelementptr inbounds nuw i32, ptr %v.0, i64 %count.i
  %_19.i = xor i1 %_0.i.i, true
  %count2.i = zext i1 %_19.i to i64
  %b.i = getelementptr inbounds nuw i32, ptr %v.0, i64 %count2.i
  %count3.i = select i1 %_0.i9.i, i64 3, i64 2
  %c.i = getelementptr inbounds nuw i32, ptr %v.0, i64 %count3.i
  %count4.i = select i1 %_0.i9.i, i64 2, i64 3
  %d.i = getelementptr inbounds nuw i32, ptr %v.0, i64 %count4.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !788)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !791)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !793)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !796)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !798)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !801)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !803)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !806)
  %_3.i.i.i.i10.i = load i32, ptr %c.i, align 4, !alias.scope !808, !noalias !809, !noundef !4
  %_4.i.i.i.i11.i = load i32, ptr %a.i, align 4, !alias.scope !809, !noalias !808, !noundef !4
  %_0.i12.i = icmp slt i32 %_3.i.i.i.i10.i, %_4.i.i.i.i11.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !810)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !813)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !815)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !818)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !820)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !823)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !825)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !828)
  %_3.i.i.i.i13.i = load i32, ptr %d.i, align 4, !alias.scope !830, !noalias !831, !noundef !4
  %_4.i.i.i.i14.i = load i32, ptr %b.i, align 4, !alias.scope !831, !noalias !830, !noundef !4
  %_0.i15.i = icmp slt i32 %_3.i.i.i.i13.i, %_4.i.i.i.i14.i
  %0 = select i1 %_0.i12.i, ptr %c.i, ptr %a.i, !unpredictable !4
  %1 = select i1 %_0.i15.i, ptr %c.i, ptr %b.i, !unpredictable !4
  %2 = select i1 %_0.i12.i, ptr %a.i, ptr %1, !unpredictable !4
  %3 = select i1 %_0.i12.i, ptr %b.i, ptr %c.i, !unpredictable !4
  %4 = select i1 %_0.i15.i, ptr %d.i, ptr %3, !unpredictable !4
  tail call void @llvm.experimental.noalias.scope.decl(metadata !832)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !835)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !837)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !840)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !842)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !845)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !847)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !850)
  %_3.i.i.i.i16.i = load i32, ptr %4, align 4, !alias.scope !852, !noalias !853, !noundef !4
  %_4.i.i.i.i17.i = load i32, ptr %2, align 4, !alias.scope !853, !noalias !852, !noundef !4
  %5 = load i32, ptr %0, align 4
  store i32 %5, ptr %scratch.0, align 4
  %dst5.i = getelementptr inbounds nuw i8, ptr %scratch.0, i64 4
  %6 = tail call i32 @llvm.smin.i32(i32 %_3.i.i.i.i16.i, i32 %_4.i.i.i.i17.i)
  store i32 %6, ptr %dst5.i, align 4
  %dst6.i = getelementptr inbounds nuw i8, ptr %scratch.0, i64 8
  %7 = tail call i32 @llvm.smax.i32(i32 %_3.i.i.i.i16.i, i32 %_4.i.i.i.i17.i)
  store i32 %7, ptr %dst6.i, align 4
  %8 = getelementptr inbounds nuw i8, ptr %scratch.0, i64 12
  %9 = tail call i32 @llvm.smax.i32(i32 %_3.i.i.i.i13.i, i32 %_4.i.i.i.i14.i)
  store i32 %9, ptr %8, align 4
  %_27 = getelementptr inbounds nuw i32, ptr %v.0, i64 %len_div_211
  %_28 = getelementptr inbounds nuw i32, ptr %scratch.0, i64 %len_div_211
  %_7.i13 = getelementptr inbounds nuw i8, ptr %_27, i64 4
  tail call void @llvm.experimental.noalias.scope.decl(metadata !854)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !857)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !859)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !862)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !864)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !867)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !869)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !872)
  %_3.i.i.i.i.i14 = load i32, ptr %_7.i13, align 4, !alias.scope !874, !noalias !875, !noundef !4
  %_4.i.i.i.i.i15 = load i32, ptr %_27, align 4, !alias.scope !875, !noalias !874, !noundef !4
  %_0.i.i16 = icmp slt i32 %_3.i.i.i.i.i14, %_4.i.i.i.i.i15
  %_12.i17 = getelementptr inbounds nuw i8, ptr %_27, i64 12
  %_14.i18 = getelementptr inbounds nuw i8, ptr %_27, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !876)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !879)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !881)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !884)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !886)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !889)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !891)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !894)
  %_3.i.i.i.i7.i19 = load i32, ptr %_12.i17, align 4, !alias.scope !896, !noalias !897, !noundef !4
  %_4.i.i.i.i8.i20 = load i32, ptr %_14.i18, align 4, !alias.scope !897, !noalias !896, !noundef !4
  %_0.i9.i21 = icmp slt i32 %_3.i.i.i.i7.i19, %_4.i.i.i.i8.i20
  %count.i22 = zext i1 %_0.i.i16 to i64
  %a.i23 = getelementptr inbounds nuw i32, ptr %_27, i64 %count.i22
  %_19.i24 = xor i1 %_0.i.i16, true
  %count2.i25 = zext i1 %_19.i24 to i64
  %b.i26 = getelementptr inbounds nuw i32, ptr %_27, i64 %count2.i25
  %count3.i27 = select i1 %_0.i9.i21, i64 3, i64 2
  %c.i28 = getelementptr inbounds nuw i32, ptr %_27, i64 %count3.i27
  %count4.i29 = select i1 %_0.i9.i21, i64 2, i64 3
  %d.i30 = getelementptr inbounds nuw i32, ptr %_27, i64 %count4.i29
  tail call void @llvm.experimental.noalias.scope.decl(metadata !898)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !901)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !903)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !906)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !908)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !911)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !913)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !916)
  %_3.i.i.i.i10.i31 = load i32, ptr %c.i28, align 4, !alias.scope !918, !noalias !919, !noundef !4
  %_4.i.i.i.i11.i32 = load i32, ptr %a.i23, align 4, !alias.scope !919, !noalias !918, !noundef !4
  %_0.i12.i33 = icmp slt i32 %_3.i.i.i.i10.i31, %_4.i.i.i.i11.i32
  tail call void @llvm.experimental.noalias.scope.decl(metadata !920)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !923)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !925)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !928)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !930)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !933)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !935)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !938)
  %_3.i.i.i.i13.i34 = load i32, ptr %d.i30, align 4, !alias.scope !940, !noalias !941, !noundef !4
  %_4.i.i.i.i14.i35 = load i32, ptr %b.i26, align 4, !alias.scope !941, !noalias !940, !noundef !4
  %_0.i15.i36 = icmp slt i32 %_3.i.i.i.i13.i34, %_4.i.i.i.i14.i35
  %10 = select i1 %_0.i12.i33, ptr %c.i28, ptr %a.i23, !unpredictable !4
  %11 = select i1 %_0.i15.i36, ptr %c.i28, ptr %b.i26, !unpredictable !4
  %12 = select i1 %_0.i12.i33, ptr %a.i23, ptr %11, !unpredictable !4
  %13 = select i1 %_0.i12.i33, ptr %b.i26, ptr %c.i28, !unpredictable !4
  %14 = select i1 %_0.i15.i36, ptr %d.i30, ptr %13, !unpredictable !4
  tail call void @llvm.experimental.noalias.scope.decl(metadata !942)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !945)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !947)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !950)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !952)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !955)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !957)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !960)
  %_3.i.i.i.i16.i37 = load i32, ptr %14, align 4, !alias.scope !962, !noalias !963, !noundef !4
  %_4.i.i.i.i17.i38 = load i32, ptr %12, align 4, !alias.scope !963, !noalias !962, !noundef !4
  %15 = load i32, ptr %10, align 4
  store i32 %15, ptr %_28, align 4
  %dst5.i40 = getelementptr inbounds nuw i8, ptr %_28, i64 4
  %16 = tail call i32 @llvm.smin.i32(i32 %_3.i.i.i.i16.i37, i32 %_4.i.i.i.i17.i38)
  store i32 %16, ptr %dst5.i40, align 4
  %dst6.i43 = getelementptr inbounds nuw i8, ptr %_28, i64 8
  %17 = tail call i32 @llvm.smax.i32(i32 %_3.i.i.i.i16.i37, i32 %_4.i.i.i.i17.i38)
  store i32 %17, ptr %dst6.i43, align 4
  %18 = getelementptr inbounds nuw i8, ptr %_28, i64 12
  %19 = tail call i32 @llvm.smax.i32(i32 %_3.i.i.i.i13.i34, i32 %_4.i.i.i.i14.i35)
  store i32 %19, ptr %18, align 4
  br label %bb15

bb46:                                             ; preds = %bb9
  %20 = load i32, ptr %v.0, align 4
  store i32 %20, ptr %scratch.0, align 4
  %_31 = getelementptr inbounds nuw i32, ptr %v.0, i64 %len_div_211
  %21 = getelementptr inbounds nuw i32, ptr %scratch.0, i64 %len_div_211
  %22 = load i32, ptr %_31, align 4
  store i32 %22, ptr %21, align 4
  br label %bb15

bb15:                                             ; preds = %bb46, %bb10, %bb6
  %presorted_len.sroa.0.0 = phi i64 [ 8, %bb6 ], [ 4, %bb10 ], [ 1, %bb46 ]
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %iter)
  store i64 0, ptr %iter, align 8
  %_37.sroa.4.0.iter.sroa_idx = getelementptr inbounds nuw i8, ptr %iter, i64 8
  store i64 2, ptr %_37.sroa.4.0.iter.sroa_idx, align 8
  %_37.sroa.5.0.iter.sroa_idx = getelementptr inbounds nuw i8, ptr %iter, i64 16
  store i64 0, ptr %_37.sroa.5.0.iter.sroa_idx, align 8
  %_37.sroa.6.0.iter.sroa_idx = getelementptr inbounds nuw i8, ptr %iter, i64 24
  store i64 %len_div_211, ptr %_37.sroa.6.0.iter.sroa_idx, align 8
  %23 = sub nsw i64 %v.1, %len_div_211
  %iter1.sroa.0.161 = add nuw nsw i64 %presorted_len.sroa.0.0, 1
  br label %bb16

bb16:                                             ; preds = %bb16.backedge, %bb15
  %24 = phi i64 [ 0, %bb15 ], [ %25, %bb16.backedge ]
  %_5.not.i.not = icmp eq i64 %24, 2
  br i1 %_5.not.i.not, label %"_ZN4core5array4iter10iter_inner78PolymorphicIter$LT$$u5b$core..mem..maybe_uninit..MaybeUninit$LT$T$GT$$u5d$$GT$4next17hf9ec96c096e158c3E.exit", label %bb1.i

bb1.i:                                            ; preds = %bb16
  %_11.i = add nuw nsw i64 %24, 1
  store i64 %_11.i, ptr %iter, align 8, !alias.scope !964
  %_20.i = icmp ult i64 %24, 2
  tail call void @llvm.assume(i1 %_20.i)
  %self3.i = getelementptr inbounds nuw i64, ptr %_37.sroa.5.0.iter.sroa_idx, i64 %24
  %_15.i = load i64, ptr %self3.i, align 8, !alias.scope !964, !noundef !4
  br label %"_ZN4core5array4iter10iter_inner78PolymorphicIter$LT$$u5b$core..mem..maybe_uninit..MaybeUninit$LT$T$GT$$u5d$$GT$4next17hf9ec96c096e158c3E.exit"

"_ZN4core5array4iter10iter_inner78PolymorphicIter$LT$$u5b$core..mem..maybe_uninit..MaybeUninit$LT$T$GT$$u5d$$GT$4next17hf9ec96c096e158c3E.exit": ; preds = %bb16, %bb1.i
  %25 = phi i64 [ %_11.i, %bb1.i ], [ %24, %bb16 ]
  %_0.sroa.3.0.i = phi i64 [ %_15.i, %bb1.i ], [ undef, %bb16 ]
  br i1 %_5.not.i.not, label %bb19, label %bb18

bb18:                                             ; preds = %"_ZN4core5array4iter10iter_inner78PolymorphicIter$LT$$u5b$core..mem..maybe_uninit..MaybeUninit$LT$T$GT$$u5d$$GT$4next17hf9ec96c096e158c3E.exit"
  %src5 = getelementptr inbounds nuw i32, ptr %v.0, i64 %_0.sroa.3.0.i
  %dst6 = getelementptr inbounds nuw i32, ptr %scratch.0, i64 %_0.sroa.3.0.i
  %_47 = icmp eq i64 %_0.sroa.3.0.i, 0
  %desired_len.sroa.0.0 = select i1 %_47, i64 %len_div_211, i64 %23
  %_8059 = icmp ult i64 %presorted_len.sroa.0.0, %desired_len.sroa.0.0
  br i1 %_8059, label %bb24, label %bb16.backedge

bb16.backedge:                                    ; preds = %_ZN4core5slice4sort6shared9smallsort11insert_tail17hcfefba0b2235ddb0E.exit, %bb18
  br label %bb16

bb19:                                             ; preds = %"_ZN4core5array4iter10iter_inner78PolymorphicIter$LT$$u5b$core..mem..maybe_uninit..MaybeUninit$LT$T$GT$$u5d$$GT$4next17hf9ec96c096e158c3E.exit"
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %iter)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !967)
  %count1.i = add nsw i64 %v.1, -1
  %26 = getelementptr inbounds nuw i32, ptr %v.0, i64 %count1.i
  %27 = getelementptr inbounds nuw i32, ptr %scratch.0, i64 %count1.i
  %28 = getelementptr i32, ptr %scratch.0, i64 %len_div_211
  %29 = getelementptr i8, ptr %28, i64 -4
  br label %bb15.i

bb16.i:                                           ; preds = %bb15.i
  %30 = getelementptr i8, ptr %35, i64 4
  %31 = getelementptr i8, ptr %34, i64 4
  %_44.i = and i64 %v.1, 1
  %_22.i = icmp eq i64 %_44.i, 0
  br i1 %_22.i, label %bb9.i, label %bb5.i

bb15.i:                                           ; preds = %bb15.i, %bb19
  %dst.sroa.0.029.i = phi ptr [ %_16.i.i, %bb15.i ], [ %v.0, %bb19 ]
  %iter.sroa.0.028.i = phi i64 [ %_39.i, %bb15.i ], [ 0, %bb19 ]
  %left.sroa.0.027.i = phi ptr [ %_14.i.i, %bb15.i ], [ %scratch.0, %bb19 ]
  %right.sroa.0.026.i = phi ptr [ %_12.i.i, %bb15.i ], [ %28, %bb19 ]
  %left_rev.sroa.0.025.i = phi ptr [ %35, %bb15.i ], [ %29, %bb19 ]
  %right_rev.sroa.0.024.i = phi ptr [ %34, %bb15.i ], [ %27, %bb19 ]
  %dst_rev.sroa.0.023.i = phi ptr [ %36, %bb15.i ], [ %26, %bb19 ]
  %_39.i = add nuw nsw i64 %iter.sroa.0.028.i, 1
  tail call void @llvm.experimental.noalias.scope.decl(metadata !970)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !973)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !975), !noalias !978
  tail call void @llvm.experimental.noalias.scope.decl(metadata !981), !noalias !978
  tail call void @llvm.experimental.noalias.scope.decl(metadata !983), !noalias !978
  tail call void @llvm.experimental.noalias.scope.decl(metadata !986), !noalias !978
  tail call void @llvm.experimental.noalias.scope.decl(metadata !988), !noalias !978
  tail call void @llvm.experimental.noalias.scope.decl(metadata !991), !noalias !978
  %_3.i.i.i.i.i49 = load i32, ptr %right.sroa.0.026.i, align 4, !alias.scope !993, !noalias !994, !noundef !4
  %_4.i.i.i.i.i50 = load i32, ptr %left.sroa.0.027.i, align 4, !alias.scope !995, !noalias !996, !noundef !4
  %_0.i.i51 = icmp slt i32 %_3.i.i.i.i.i49, %_4.i.i.i.i.i50
  %is_l.i18.i = xor i1 %_0.i.i51, true
  %32 = tail call i32 @llvm.smin.i32(i32 %_3.i.i.i.i.i49, i32 %_4.i.i.i.i.i50)
  store i32 %32, ptr %dst.sroa.0.029.i, align 4, !noalias !997
  %count.i.i = zext i1 %_0.i.i51 to i64
  %_12.i.i = getelementptr inbounds nuw i32, ptr %right.sroa.0.026.i, i64 %count.i.i
  %count2.i.i = zext i1 %is_l.i18.i to i64
  %_14.i.i = getelementptr inbounds nuw i32, ptr %left.sroa.0.027.i, i64 %count2.i.i
  %_16.i.i = getelementptr inbounds nuw i8, ptr %dst.sroa.0.029.i, i64 4
  tail call void @llvm.experimental.noalias.scope.decl(metadata !999)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1002)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1004), !noalias !1007
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1010), !noalias !1007
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1012), !noalias !1007
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1015), !noalias !1007
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1017), !noalias !1007
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1020), !noalias !1007
  %_3.i.i.i.i19.i = load i32, ptr %right_rev.sroa.0.024.i, align 4, !alias.scope !1022, !noalias !1023, !noundef !4
  %_4.i.i.i.i20.i = load i32, ptr %left_rev.sroa.0.025.i, align 4, !alias.scope !1024, !noalias !1025, !noundef !4
  %_0.i21.i = icmp slt i32 %_3.i.i.i.i19.i, %_4.i.i.i.i20.i
  %is_l.i.i = xor i1 %_0.i21.i, true
  %33 = tail call i32 @llvm.smax.i32(i32 %_3.i.i.i.i19.i, i32 %_4.i.i.i.i20.i)
  store i32 %33, ptr %dst_rev.sroa.0.023.i, align 4, !noalias !1026
  %count.neg.i.i = sext i1 %is_l.i.i to i64
  %34 = getelementptr i32, ptr %right_rev.sroa.0.024.i, i64 %count.neg.i.i
  %count3.neg.i.i = sext i1 %_0.i21.i to i64
  %35 = getelementptr i32, ptr %left_rev.sroa.0.025.i, i64 %count3.neg.i.i
  %36 = getelementptr inbounds i8, ptr %dst_rev.sroa.0.023.i, i64 -4
  %exitcond.not.i = icmp eq i64 %_39.i, %len_div_211
  br i1 %exitcond.not.i, label %bb16.i, label %bb15.i

bb5.i:                                            ; preds = %bb16.i
  %left_nonempty.i = icmp ult ptr %_14.i.i, %30
  %left.sroa.0.0.right.sroa.0.0.i = select i1 %left_nonempty.i, ptr %_14.i.i, ptr %_12.i.i
  %37 = load i32, ptr %left.sroa.0.0.right.sroa.0.0.i, align 4, !alias.scope !967
  store i32 %37, ptr %_16.i.i, align 4, !noalias !967
  %count2.i52 = zext i1 %left_nonempty.i to i64
  %_26.i = getelementptr inbounds nuw i32, ptr %_14.i.i, i64 %count2.i52
  %_30.i = xor i1 %left_nonempty.i, true
  %count3.i53 = zext i1 %_30.i to i64
  %_28.i = getelementptr inbounds nuw i32, ptr %_12.i.i, i64 %count3.i53
  br label %bb9.i

bb9.i:                                            ; preds = %bb5.i, %bb16.i
  %right.sroa.0.1.i = phi ptr [ %_12.i.i, %bb16.i ], [ %_28.i, %bb5.i ]
  %left.sroa.0.1.i = phi ptr [ %_14.i.i, %bb16.i ], [ %_26.i, %bb5.i ]
  %_31.i = icmp ne ptr %left.sroa.0.1.i, %30
  %_32.i = icmp ne ptr %right.sroa.0.1.i, %31
  %or.cond.i = select i1 %_31.i, i1 true, i1 %_32.i
  br i1 %or.cond.i, label %bb13.i, label %bb29, !prof !644

bb13.i:                                           ; preds = %bb9.i
; invoke core::slice::sort::shared::smallsort::panic_on_ord_violation
  invoke void @_ZN4core5slice4sort6shared9smallsort22panic_on_ord_violation17hc77a22a2d50782cdE() #30
          to label %.noexc unwind label %cleanup2

.noexc:                                           ; preds = %bb13.i
  unreachable

cleanup2:                                         ; preds = %bb13.i
  %38 = landingpad { ptr, i32 }
          cleanup
  %39 = shl nuw nsw i64 %v.1, 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %v.0, ptr nonnull align 4 %scratch.0, i64 %39, i1 false), !noalias !1028
  resume { ptr, i32 } %38

bb29:                                             ; preds = %bb9.i, %start
  ret void

bb24:                                             ; preds = %bb18, %_ZN4core5slice4sort6shared9smallsort11insert_tail17hcfefba0b2235ddb0E.exit
  %iter1.sroa.0.163 = phi i64 [ %iter1.sroa.0.1, %_ZN4core5slice4sort6shared9smallsort11insert_tail17hcfefba0b2235ddb0E.exit ], [ %iter1.sroa.0.161, %bb18 ]
  %iter1.sroa.0.062 = phi i64 [ %iter1.sroa.0.163, %_ZN4core5slice4sort6shared9smallsort11insert_tail17hcfefba0b2235ddb0E.exit ], [ %presorted_len.sroa.0.0, %bb18 ]
  %_55 = getelementptr inbounds nuw i32, ptr %src5, i64 %iter1.sroa.0.062
  %dst7 = getelementptr inbounds nuw i32, ptr %dst6, i64 %iter1.sroa.0.062
  %40 = load i32, ptr %_55, align 4
  store i32 %40, ptr %dst7, align 4
  %41 = getelementptr inbounds i8, ptr %dst7, i64 -4
  %_4.i.i.i.i.i56 = load i32, ptr %41, align 4, !alias.scope !1033, !noalias !1042, !noundef !4
  %_0.i.i57 = icmp slt i32 %40, %_4.i.i.i.i.i56
  br i1 %_0.i.i57, label %bb4.i, label %_ZN4core5slice4sort6shared9smallsort11insert_tail17hcfefba0b2235ddb0E.exit

bb4.i:                                            ; preds = %bb24, %bb6.i
  %gap_guard.sroa.5.0.i = phi ptr [ %sift.sroa.0.0.i, %bb6.i ], [ %dst7, %bb24 ]
  %sift.sroa.0.0.i = phi ptr [ %43, %bb6.i ], [ %41, %bb24 ]
  %42 = load i32, ptr %sift.sroa.0.0.i, align 4
  store i32 %42, ptr %gap_guard.sroa.5.0.i, align 4
  %_18.i = icmp eq ptr %sift.sroa.0.0.i, %dst6
  br i1 %_18.i, label %bb10.i, label %bb6.i

bb6.i:                                            ; preds = %bb4.i
  %43 = getelementptr inbounds i8, ptr %sift.sroa.0.0.i, i64 -4
  %_4.i.i.i.i2.i = load i32, ptr %43, align 4, !alias.scope !1047, !noalias !1056, !noundef !4
  %_0.i3.i = icmp slt i32 %40, %_4.i.i.i.i2.i
  br i1 %_0.i3.i, label %bb4.i, label %bb10.i

bb10.i:                                           ; preds = %bb6.i, %bb4.i
  store i32 %40, ptr %sift.sroa.0.0.i, align 4, !noalias !1061
  br label %_ZN4core5slice4sort6shared9smallsort11insert_tail17hcfefba0b2235ddb0E.exit

_ZN4core5slice4sort6shared9smallsort11insert_tail17hcfefba0b2235ddb0E.exit: ; preds = %bb24, %bb10.i
  %_80 = icmp ult i64 %iter1.sroa.0.163, %desired_len.sroa.0.0
  %_84 = zext i1 %_80 to i64
  %iter1.sroa.0.1 = add nuw i64 %iter1.sroa.0.163, %_84
  br i1 %_80, label %bb24, label %bb16.backedge
}

; core::slice::sort::stable::driftsort_main
; Function Attrs: noinline nonlazybind uwtable
define void @_ZN4core5slice4sort6stable14driftsort_main17h48d93dd9494788eaE(ptr noalias noundef nonnull align 4 %v.0, i64 noundef range(i64 0, 2305843009213693952) %v.1, ptr noalias noundef align 8 dereferenceable(8) %is_less) unnamed_addr #8 personality ptr @rust_eh_personality {
start:
  %_4.i.i = alloca [24 x i8], align 8
  %heap_buf = alloca [24 x i8], align 8
  %stack_buf = alloca [4096 x i8], align 4
  %_105 = lshr i64 %v.1, 1
  %v1 = sub nsw i64 %v.1, %_105
  %_0.sroa.0.0.i = tail call noundef i64 @llvm.umin.i64(i64 %v.1, i64 2000000)
  %_0.sroa.0.0.i6 = tail call noundef i64 @llvm.umax.i64(i64 %_0.sroa.0.0.i, i64 %v1)
  %_0.sroa.0.0.i7 = tail call noundef i64 @llvm.umax.i64(i64 %_0.sroa.0.0.i6, i64 48)
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %stack_buf)
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %heap_buf)
  %_15 = icmp ult i64 %_0.sroa.0.0.i6, 1025
  br i1 %_15, label %bb8, label %bb4

bb4:                                              ; preds = %start
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %_4.i.i), !noalias !1066
; invoke alloc::raw_vec::RawVecInner<A>::try_allocate_in
  invoke void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$15try_allocate_in17had089b3ffc2704ecE"(ptr noalias noundef sret([24 x i8]) align 8 captures(none) dereferenceable(24) %_4.i.i, i64 noundef %_0.sroa.0.0.i7, i1 noundef zeroext false, i64 noundef 4, i64 noundef 4)
          to label %.noexc unwind label %cleanup

.noexc:                                           ; preds = %bb4
  %_5.i.i = load i64, ptr %_4.i.i, align 8, !range !1069, !noalias !1066, !noundef !4
  %0 = trunc nuw i64 %_5.i.i to i1
  %1 = getelementptr inbounds nuw i8, ptr %_4.i.i, i64 8
  %err.0.i.i = load i64, ptr %1, align 8, !range !1070, !noalias !1066, !noundef !4
  %2 = getelementptr inbounds nuw i8, ptr %_4.i.i, i64 16
  br i1 %0, label %bb3.i.i, label %"_ZN5alloc5slice99_$LT$impl$u20$core..slice..sort..stable..BufGuard$LT$T$GT$$u20$for$u20$alloc..vec..Vec$LT$T$GT$$GT$13with_capacity17h6f674a30280871f1E.exit", !prof !11

bb3.i.i:                                          ; preds = %.noexc
  %err.1.i.i = load i64, ptr %2, align 8, !noalias !1066
; invoke alloc::raw_vec::handle_error
  invoke void @_ZN5alloc7raw_vec12handle_error17h3a8c375904e593b2E(i64 noundef %err.0.i.i, i64 %err.1.i.i) #33
          to label %.noexc8 unwind label %cleanup

.noexc8:                                          ; preds = %bb3.i.i
  unreachable

"_ZN5alloc5slice99_$LT$impl$u20$core..slice..sort..stable..BufGuard$LT$T$GT$$u20$for$u20$alloc..vec..Vec$LT$T$GT$$GT$13with_capacity17h6f674a30280871f1E.exit": ; preds = %.noexc
  %this.1.i.i = load ptr, ptr %2, align 8, !noalias !1066, !nonnull !4, !noundef !4
  %_7.i.i = icmp ule i64 %_0.sroa.0.0.i7, %err.0.i.i
  tail call void @llvm.assume(i1 %_7.i.i)
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %_4.i.i), !noalias !1066
  store i64 %err.0.i.i, ptr %heap_buf, align 8
  %_18.sroa.4.0.heap_buf.sroa_idx = getelementptr inbounds nuw i8, ptr %heap_buf, i64 8
  store ptr %this.1.i.i, ptr %_18.sroa.4.0.heap_buf.sroa_idx, align 8
  %_18.sroa.5.0.heap_buf.sroa_idx = getelementptr inbounds nuw i8, ptr %heap_buf, i64 16
  store i64 0, ptr %_18.sroa.5.0.heap_buf.sroa_idx, align 8
  br label %bb8

cleanup:                                          ; preds = %bb3.i.i, %bb4, %bb8
  %_24.sroa.0.0 = phi i8 [ %_24.sroa.0.1, %bb8 ], [ 0, %bb4 ], [ 0, %bb3.i.i ]
  %3 = landingpad { ptr, i32 }
          cleanup
  %4 = trunc nuw i8 %_24.sroa.0.0 to i1
  br i1 %4, label %bb13, label %bb11

bb8:                                              ; preds = %"_ZN5alloc5slice99_$LT$impl$u20$core..slice..sort..stable..BufGuard$LT$T$GT$$u20$for$u20$alloc..vec..Vec$LT$T$GT$$GT$13with_capacity17h6f674a30280871f1E.exit", %start
  %_24.sroa.0.1 = phi i8 [ 0, %start ], [ 1, %"_ZN5alloc5slice99_$LT$impl$u20$core..slice..sort..stable..BufGuard$LT$T$GT$$u20$for$u20$alloc..vec..Vec$LT$T$GT$$GT$13with_capacity17h6f674a30280871f1E.exit" ]
  %stack_scratch.sroa.4.0 = phi i64 [ 1024, %start ], [ %err.0.i.i, %"_ZN5alloc5slice99_$LT$impl$u20$core..slice..sort..stable..BufGuard$LT$T$GT$$u20$for$u20$alloc..vec..Vec$LT$T$GT$$GT$13with_capacity17h6f674a30280871f1E.exit" ]
  %stack_buf.pn = phi ptr [ %stack_buf, %start ], [ %this.1.i.i, %"_ZN5alloc5slice99_$LT$impl$u20$core..slice..sort..stable..BufGuard$LT$T$GT$$u20$for$u20$alloc..vec..Vec$LT$T$GT$$GT$13with_capacity17h6f674a30280871f1E.exit" ]
  %eager_sort = icmp samesign ult i64 %v.1, 65
; invoke core::slice::sort::stable::drift::sort
  invoke void @_ZN4core5slice4sort6stable5drift4sort17h1bb37ca7787190c2E(ptr noalias noundef nonnull align 4 %v.0, i64 noundef %v.1, ptr noalias noundef nonnull align 4 %stack_buf.pn, i64 noundef %stack_scratch.sroa.4.0, i1 noundef zeroext %eager_sort, ptr noalias noundef align 8 dereferenceable(8) %is_less)
          to label %bb9 unwind label %cleanup

bb9:                                              ; preds = %bb8
  %5 = trunc nuw i8 %_24.sroa.0.1 to i1
  br i1 %5, label %bb12, label %bb10

bb10:                                             ; preds = %bb12, %bb9
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %heap_buf)
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %stack_buf)
  ret void

bb12:                                             ; preds = %bb9
; call alloc::raw_vec::RawVecInner<A>::deallocate
  call void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$10deallocate17h6ddf8733b0451bb9E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %heap_buf, i64 noundef 4, i64 noundef 4)
  br label %bb10

bb11:                                             ; preds = %bb13, %cleanup
  resume { ptr, i32 } %3

bb13:                                             ; preds = %cleanup
; invoke alloc::raw_vec::RawVecInner<A>::deallocate
  invoke void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$10deallocate17h6ddf8733b0451bb9E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %heap_buf, i64 noundef 4, i64 noundef 4)
          to label %bb11 unwind label %terminate

terminate:                                        ; preds = %bb13
  %6 = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer
; call core::panicking::panic_in_cleanup
  call void @_ZN4core9panicking16panic_in_cleanup17h5f6bde45d17ae243E() #31
  unreachable
}

; core::slice::sort::stable::AlignedStorage<T,_>::as_uninit_slice_mut
; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define { ptr, i64 } @"_ZN4core5slice4sort6stable27AlignedStorage$LT$T$C$_$GT$19as_uninit_slice_mut17hde8c9844b2d6940cE"(ptr noalias noundef align 4 dereferenceable(4096) %self) unnamed_addr #9 {
start:
  %0 = insertvalue { ptr, i64 } poison, ptr %self, 0
  %1 = insertvalue { ptr, i64 } %0, i64 1024, 1
  ret { ptr, i64 } %1
}

; core::slice::sort::stable::drift::create_run
; Function Attrs: nonlazybind uwtable
define noundef range(i64 0, -1) i64 @_ZN4core5slice4sort6stable5drift10create_run17he99a6415123a9a2bE(ptr noalias noundef nonnull align 4 %v.0, i64 noundef range(i64 0, 2305843009213693952) %v.1, ptr noalias noundef nonnull align 4 %scratch.0, i64 noundef range(i64 0, 2305843009213693952) %scratch.1, i64 noundef %min_good_run_len, i1 noundef zeroext %eager_sort, ptr noalias noundef align 8 dereferenceable(8) %is_less) unnamed_addr #1 personality ptr @rust_eh_personality {
start:
  %_7.not = icmp ult i64 %v.1, %min_good_run_len
  br i1 %_7.not, label %bb7, label %bb1

bb7:                                              ; preds = %_ZN4core5slice4sort6shared17find_existing_run17h65f7ca7414987bffE.exit, %start
  br i1 %eager_sort, label %bb8, label %bb11

bb1:                                              ; preds = %start
  %_4.i = icmp samesign ult i64 %v.1, 2
  br i1 %_4.i, label %_ZN4core5slice4sort6shared17find_existing_run17h65f7ca7414987bffE.exit, label %bb2.i

bb2.i:                                            ; preds = %bb1
  %_28.i = getelementptr inbounds nuw i8, ptr %v.0, i64 4
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1071)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1074)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1076)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1079)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1081)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1084)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1086)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1089)
  %_3.i.i.i.i = load i32, ptr %_28.i, align 4, !alias.scope !1091, !noalias !1092, !noundef !4
  %_4.i.i.i.i = load i32, ptr %v.0, align 4, !alias.scope !1092, !noalias !1091, !noundef !4
  %_0.i = icmp slt i32 %_3.i.i.i.i, %_4.i.i.i.i
  %_10.i13.not = icmp eq i64 %v.1, 2
  br i1 %_0.i, label %bb4.i.preheader, label %bb11.i.preheader

bb11.i.preheader:                                 ; preds = %bb2.i
  br i1 %_10.i13.not, label %_ZN4core5slice4sort6shared17find_existing_run17h65f7ca7414987bffE.exit, label %bb12.i.preheader

bb12.i.preheader:                                 ; preds = %bb11.i.preheader
  %invariant.gep = getelementptr i8, ptr %v.0, i64 -4
  br label %bb12.i

bb4.i.preheader:                                  ; preds = %bb2.i
  br i1 %_10.i13.not, label %_ZN4core5slice4sort6shared17find_existing_run17h65f7ca7414987bffE.exit, label %bb5.i.preheader

bb5.i.preheader:                                  ; preds = %bb4.i.preheader
  %invariant.gep24 = getelementptr i8, ptr %v.0, i64 -4
  br label %bb5.i

bb12.i:                                           ; preds = %bb12.i.preheader, %bb15.i
  %run_len.sroa.0.0.i11 = phi i64 [ %1, %bb15.i ], [ 2, %bb12.i.preheader ]
  %0 = getelementptr inbounds nuw i32, ptr %v.0, i64 %run_len.sroa.0.0.i11
  %gep = getelementptr i32, ptr %invariant.gep, i64 %run_len.sroa.0.0.i11
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1093)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1096)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1098)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1101)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1103)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1106)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1108)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1111)
  %_3.i.i.i.i1 = load i32, ptr %0, align 4, !alias.scope !1113, !noalias !1114, !noundef !4
  %_4.i.i.i.i2 = load i32, ptr %gep, align 4, !alias.scope !1114, !noalias !1113, !noundef !4
  %_0.i3 = icmp slt i32 %_3.i.i.i.i1, %_4.i.i.i.i2
  br i1 %_0.i3, label %_ZN4core5slice4sort6shared17find_existing_run17h65f7ca7414987bffE.exit, label %bb15.i

bb15.i:                                           ; preds = %bb12.i
  %1 = add nuw nsw i64 %run_len.sroa.0.0.i11, 1
  %exitcond.not = icmp eq i64 %1, %v.1
  br i1 %exitcond.not, label %_ZN4core5slice4sort6shared17find_existing_run17h65f7ca7414987bffE.exit, label %bb12.i

bb5.i:                                            ; preds = %bb5.i.preheader, %bb7.i
  %run_len.sroa.0.1.i14 = phi i64 [ %3, %bb7.i ], [ 2, %bb5.i.preheader ]
  %2 = getelementptr inbounds nuw i32, ptr %v.0, i64 %run_len.sroa.0.1.i14
  %gep25 = getelementptr i32, ptr %invariant.gep24, i64 %run_len.sroa.0.1.i14
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1115)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1118)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1120)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1123)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1125)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1128)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1130)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1133)
  %_3.i.i.i.i4 = load i32, ptr %2, align 4, !alias.scope !1135, !noalias !1136, !noundef !4
  %_4.i.i.i.i5 = load i32, ptr %gep25, align 4, !alias.scope !1136, !noalias !1135, !noundef !4
  %_0.i6 = icmp slt i32 %_3.i.i.i.i4, %_4.i.i.i.i5
  br i1 %_0.i6, label %bb7.i, label %_ZN4core5slice4sort6shared17find_existing_run17h65f7ca7414987bffE.exit

bb7.i:                                            ; preds = %bb5.i
  %3 = add nuw nsw i64 %run_len.sroa.0.1.i14, 1
  %exitcond19.not = icmp eq i64 %3, %v.1
  br i1 %exitcond19.not, label %_ZN4core5slice4sort6shared17find_existing_run17h65f7ca7414987bffE.exit, label %bb5.i

_ZN4core5slice4sort6shared17find_existing_run17h65f7ca7414987bffE.exit: ; preds = %bb12.i, %bb15.i, %bb5.i, %bb7.i, %bb11.i.preheader, %bb4.i.preheader, %bb1
  %_0.sroa.3.0.i = phi i1 [ false, %bb1 ], [ true, %bb4.i.preheader ], [ false, %bb11.i.preheader ], [ true, %bb7.i ], [ true, %bb5.i ], [ false, %bb15.i ], [ false, %bb12.i ]
  %_0.sroa.0.0.i = phi i64 [ %v.1, %bb1 ], [ 2, %bb4.i.preheader ], [ 2, %bb11.i.preheader ], [ %run_len.sroa.0.1.i14, %bb5.i ], [ %v.1, %bb7.i ], [ %run_len.sroa.0.0.i11, %bb12.i ], [ %v.1, %bb15.i ]
  %_12 = icmp samesign ule i64 %_0.sroa.0.0.i, %v.1
  tail call void @llvm.assume(i1 %_12)
  %_13.not = icmp ult i64 %_0.sroa.0.0.i, %min_good_run_len
  br i1 %_13.not, label %bb7, label %bb3

bb3:                                              ; preds = %_ZN4core5slice4sort6shared17find_existing_run17h65f7ca7414987bffE.exit
  br i1 %_0.sroa.3.0.i, label %bb14, label %bb5

bb11:                                             ; preds = %bb7
  %_0.sroa.0.0.i7 = tail call noundef i64 @llvm.umin.i64(i64 %v.1, i64 %min_good_run_len)
  %_36 = shl nuw nsw i64 %_0.sroa.0.0.i7, 1
  br label %bb12

bb8:                                              ; preds = %bb7
  %_0.sroa.0.0.i8 = tail call noundef i64 @llvm.umin.i64(i64 %v.1, i64 32)
; call core::slice::sort::stable::quicksort::quicksort
  tail call void @_ZN4core5slice4sort6stable9quicksort9quicksort17h2e119a3f03bcf7a7E(ptr noalias noundef nonnull align 4 %v.0, i64 noundef %_0.sroa.0.0.i8, ptr noalias noundef nonnull align 4 %scratch.0, i64 noundef %scratch.1, i32 noundef 0, ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable_or_null(4) null, ptr noalias noundef align 8 dereferenceable(8) %is_less) #34
  %_35 = shl nuw nsw i64 %_0.sroa.0.0.i8, 1
  %_34 = or disjoint i64 %_35, 1
  br label %bb12

bb12:                                             ; preds = %bb5, %bb8, %bb11
  %_0.sroa.0.0 = phi i64 [ %_26, %bb5 ], [ %_34, %bb8 ], [ %_36, %bb11 ]
  ret i64 %_0.sroa.0.0

bb5.loopexit.unr-lcssa:                           ; preds = %bb5.i.i, %bb5.i.i.preheader
  %i.sroa.0.016.i.i.unr = phi i64 [ 0, %bb5.i.i.preheader ], [ %15, %bb5.i.i ]
  %4 = and i64 %_0.sroa.0.0.i, 2
  %lcmp.mod.not = icmp eq i64 %4, 0
  br i1 %lcmp.mod.not, label %bb5, label %bb5.i.i.epil

bb5.i.i.epil:                                     ; preds = %bb5.loopexit.unr-lcssa
  %5 = xor i64 %i.sroa.0.016.i.i.unr, -1
  %x.i.i.epil = getelementptr inbounds nuw i32, ptr %v.0, i64 %i.sroa.0.016.i.i.unr
  %y.i.i.epil = getelementptr i32, ptr %end.i, i64 %5
  %6 = load i32, ptr %x.i.i.epil, align 4, !alias.scope !1137, !noalias !1142, !noundef !4
  %7 = load i32, ptr %y.i.i.epil, align 4, !alias.scope !1144, !noalias !1145
  store i32 %7, ptr %x.i.i.epil, align 4, !alias.scope !1137, !noalias !1142
  store i32 %6, ptr %y.i.i.epil, align 4, !alias.scope !1144, !noalias !1145
  br label %bb5

bb5:                                              ; preds = %bb5.i.i.epil, %bb5.loopexit.unr-lcssa, %bb14, %bb3
  %_27 = shl nuw nsw i64 %_0.sroa.0.0.i, 1
  %_26 = or disjoint i64 %_27, 1
  br label %bb12

bb14:                                             ; preds = %bb3
  %half_len2.i = lshr i64 %_0.sroa.0.0.i, 1
  %end.i = getelementptr inbounds nuw i32, ptr %v.0, i64 %_0.sroa.0.0.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1145)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1142)
  %_915.not.i.i = icmp samesign ult i64 %_0.sroa.0.0.i, 2
  br i1 %_915.not.i.i, label %bb5, label %bb5.i.i.preheader

bb5.i.i.preheader:                                ; preds = %bb14
  %8 = icmp eq i64 %half_len2.i, 1
  br i1 %8, label %bb5.loopexit.unr-lcssa, label %bb5.i.i.preheader.new

bb5.i.i.preheader.new:                            ; preds = %bb5.i.i.preheader
  %unroll_iter = and i64 %half_len2.i, 9223372036854775806
  %invariant.gep26 = getelementptr inbounds i8, ptr %v.0, i64 4
  br label %bb5.i.i

bb5.i.i:                                          ; preds = %bb5.i.i, %bb5.i.i.preheader.new
  %i.sroa.0.016.i.i = phi i64 [ 0, %bb5.i.i.preheader.new ], [ %15, %bb5.i.i ]
  %niter = phi i64 [ 0, %bb5.i.i.preheader.new ], [ %niter.next.1, %bb5.i.i ]
  %9 = xor i64 %i.sroa.0.016.i.i, -1
  %x.i.i = getelementptr inbounds nuw i32, ptr %v.0, i64 %i.sroa.0.016.i.i
  %y.i.i = getelementptr i32, ptr %end.i, i64 %9
  %10 = load i32, ptr %x.i.i, align 4, !alias.scope !1137, !noalias !1142, !noundef !4
  %11 = load i32, ptr %y.i.i, align 4, !alias.scope !1144, !noalias !1145
  store i32 %11, ptr %x.i.i, align 4, !alias.scope !1137, !noalias !1142
  store i32 %10, ptr %y.i.i, align 4, !alias.scope !1144, !noalias !1145
  %12 = xor i64 %i.sroa.0.016.i.i, -2
  %gep27 = getelementptr inbounds i32, ptr %invariant.gep26, i64 %i.sroa.0.016.i.i
  %y.i.i.1 = getelementptr i32, ptr %end.i, i64 %12
  %13 = load i32, ptr %gep27, align 4, !alias.scope !1137, !noalias !1142, !noundef !4
  %14 = load i32, ptr %y.i.i.1, align 4, !alias.scope !1144, !noalias !1145
  store i32 %14, ptr %gep27, align 4, !alias.scope !1137, !noalias !1142
  store i32 %13, ptr %y.i.i.1, align 4, !alias.scope !1144, !noalias !1145
  %15 = add nuw nsw i64 %i.sroa.0.016.i.i, 2
  %niter.next.1 = add i64 %niter, 2
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %bb5.loopexit.unr-lcssa, label %bb5.i.i
}

; core::slice::sort::stable::drift::stable_quicksort
; Function Attrs: nonlazybind uwtable
define void @_ZN4core5slice4sort6stable5drift16stable_quicksort17hb9ff948b6977a82cE(ptr noalias noundef nonnull align 4 %v.0, i64 noundef range(i64 0, 2305843009213693952) %v.1, ptr noalias noundef nonnull align 4 %scratch.0, i64 noundef range(i64 0, 2305843009213693952) %scratch.1, ptr noalias noundef align 8 dereferenceable(8) %is_less) unnamed_addr #1 {
start:
  %self = or i64 %v.1, 1
  %0 = tail call range(i64 3, 64) i64 @llvm.ctlz.i64(i64 %self, i1 true)
  %1 = trunc nuw nsw i64 %0 to i32
  %log = shl nuw nsw i32 %1, 1
  %limit = xor i32 %log, 126
; call core::slice::sort::stable::quicksort::quicksort
  tail call void @_ZN4core5slice4sort6stable9quicksort9quicksort17h2e119a3f03bcf7a7E(ptr noalias noundef nonnull align 4 %v.0, i64 noundef %v.1, ptr noalias noundef nonnull align 4 %scratch.0, i64 noundef %scratch.1, i32 noundef %limit, ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable_or_null(4) null, ptr noalias noundef align 8 dereferenceable(8) %is_less) #34
  ret void
}

; core::slice::sort::stable::drift::sort
; Function Attrs: nonlazybind uwtable
define void @_ZN4core5slice4sort6stable5drift4sort17h1bb37ca7787190c2E(ptr noalias noundef nonnull align 4 %v.0, i64 noundef range(i64 0, 2305843009213693952) %v.1, ptr noalias noundef nonnull align 4 %scratch.0, i64 noundef range(i64 0, 2305843009213693952) %scratch.1, i1 noundef zeroext %eager_sort, ptr noalias noundef align 8 dereferenceable(8) %is_less) unnamed_addr #1 personality ptr @rust_eh_personality {
start:
  %desired_depth_storage = alloca [66 x i8], align 1
  %run_storage = alloca [528 x i8], align 8
  %_6 = icmp samesign ult i64 %v.1, 2
  br i1 %_6, label %bb22, label %bb2

bb2:                                              ; preds = %start
  %d = udiv i64 4611686018427387904, %v.1
  %r = urem i64 4611686018427387904, %v.1
  %_73.not = icmp ne i64 %r, 0
  %0 = zext i1 %_73.not to i64
  %scale_factor.sroa.0.0 = add nuw nsw i64 %d, %0
  %_9 = icmp samesign ult i64 %v.1, 4097
  br i1 %_9, label %bb3, label %bb4

bb4:                                              ; preds = %bb2
; call core::slice::sort::stable::drift::sqrt_approx
  %1 = tail call noundef i64 @_ZN4core5slice4sort6stable5drift11sqrt_approx17h72a4dc1ae46294f4E(i64 noundef %v.1)
  br label %bb5

bb3:                                              ; preds = %bb2
  %_1135 = lshr i64 %v.1, 1
  %v1 = sub nsw i64 %v.1, %_1135
  %_0.sroa.0.0.i36 = tail call noundef i64 @llvm.umin.i64(i64 %v1, i64 64)
  br label %bb5

bb5:                                              ; preds = %bb3, %bb4
  %min_good_run_len.sroa.0.0 = phi i64 [ %_0.sroa.0.0.i36, %bb3 ], [ %1, %bb4 ]
  call void @llvm.lifetime.start.p0(i64 528, ptr nonnull %run_storage)
  call void @llvm.lifetime.start.p0(i64 66, ptr nonnull %desired_depth_storage)
  br label %bb6

bb6:                                              ; preds = %bb19, %bb5
  %prev_run.sroa.0.0 = phi i64 [ 1, %bb5 ], [ %next_run.sroa.0.0, %bb19 ]
  %scan_idx.sroa.0.0 = phi i64 [ 0, %bb5 ], [ %22, %bb19 ]
  %stack_len.sroa.0.0 = phi i64 [ 0, %bb5 ], [ %21, %bb19 ]
  %_22 = icmp ult i64 %scan_idx.sroa.0.0, %v.1
  br i1 %_22, label %bb30, label %bb10

bb10:                                             ; preds = %bb6, %bb30
  %desired_depth.sroa.0.0 = phi i8 [ %4, %bb30 ], [ 0, %bb6 ]
  %next_run.sroa.0.0 = phi i64 [ %2, %bb30 ], [ 1, %bb6 ]
  %_3748 = icmp ugt i64 %stack_len.sroa.0.0, 1
  br i1 %_3748, label %bb12.lr.ph, label %bb17

bb12.lr.ph:                                       ; preds = %bb10
  %v_end.i = getelementptr inbounds nuw i32, ptr %v.0, i64 %scan_idx.sroa.0.0
  br label %bb12

bb30:                                             ; preds = %bb6
  %new_len = sub nuw nsw i64 %v.1, %scan_idx.sroa.0.0
  %_82 = getelementptr inbounds nuw i32, ptr %v.0, i64 %scan_idx.sroa.0.0
; call core::slice::sort::stable::drift::create_run
  %2 = tail call noundef i64 @_ZN4core5slice4sort6stable5drift10create_run17he99a6415123a9a2bE(ptr noalias noundef nonnull align 4 %_82, i64 noundef %new_len, ptr noalias noundef nonnull align 4 %scratch.0, i64 noundef %scratch.1, i64 noundef %min_good_run_len.sroa.0.0, i1 noundef zeroext %eager_sort, ptr noalias noundef align 8 dereferenceable(8) %is_less)
  %_31 = lshr i64 %prev_run.sroa.0.0, 1
  %_35 = lshr i64 %2, 1
  %factor = shl i64 %scan_idx.sroa.0.0, 1
  %x = sub i64 %factor, %_31
  %reass.add = shl i64 %scan_idx.sroa.0.0, 1
  %y = add i64 %_35, %reass.add
  %_90 = mul i64 %x, %scale_factor.sroa.0.0
  %_91 = mul i64 %y, %scale_factor.sroa.0.0
  %self4 = xor i64 %_91, %_90
  %3 = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %self4, i1 false)
  %4 = trunc nuw nsw i64 %3 to i8
  br label %bb10

bb12:                                             ; preds = %bb12.lr.ph, %_ZN4core5slice4sort6stable5drift13logical_merge17h3a1609d6dfaba77dE.exit
  %stack_len.sroa.0.150 = phi i64 [ %stack_len.sroa.0.0, %bb12.lr.ph ], [ %count, %_ZN4core5slice4sort6stable5drift13logical_merge17h3a1609d6dfaba77dE.exit ]
  %prev_run.sroa.0.149 = phi i64 [ %prev_run.sroa.0.0, %bb12.lr.ph ], [ %_0.sroa.0.0.i, %_ZN4core5slice4sort6stable5drift13logical_merge17h3a1609d6dfaba77dE.exit ]
  %count = add i64 %stack_len.sroa.0.150, -1
  %_41 = getelementptr inbounds nuw i8, ptr %desired_depth_storage, i64 %count
  %_40 = load i8, ptr %_41, align 1, !noundef !4
  %_39.not = icmp ult i8 %_40, %desired_depth.sroa.0.0
  br i1 %_39.not, label %bb17, label %bb13

bb17:                                             ; preds = %_ZN4core5slice4sort6stable5drift13logical_merge17h3a1609d6dfaba77dE.exit, %bb12, %bb10
  %prev_run.sroa.0.1.lcssa = phi i64 [ %prev_run.sroa.0.0, %bb10 ], [ %_0.sroa.0.0.i, %_ZN4core5slice4sort6stable5drift13logical_merge17h3a1609d6dfaba77dE.exit ], [ %prev_run.sroa.0.149, %bb12 ]
  %stack_len.sroa.0.1.lcssa = phi i64 [ %stack_len.sroa.0.0, %bb10 ], [ 1, %_ZN4core5slice4sort6stable5drift13logical_merge17h3a1609d6dfaba77dE.exit ], [ %stack_len.sroa.0.150, %bb12 ]
  %_59 = getelementptr inbounds nuw i64, ptr %run_storage, i64 %stack_len.sroa.0.1.lcssa
  store i64 %prev_run.sroa.0.1.lcssa, ptr %_59, align 8
  %_61 = getelementptr inbounds nuw i8, ptr %desired_depth_storage, i64 %stack_len.sroa.0.1.lcssa
  store i8 %desired_depth.sroa.0.0, ptr %_61, align 1
  br i1 %_22, label %bb19, label %bb18

bb13:                                             ; preds = %bb12
  %_46 = getelementptr inbounds nuw i64, ptr %run_storage, i64 %count
  %left10 = load i64, ptr %_46, align 8, !noundef !4
  %_50 = lshr i64 %left10, 1
  %_51 = lshr i64 %prev_run.sroa.0.149, 1
  %merged_len = add nuw i64 %_50, %_51
  %merge_start_idx = sub i64 %scan_idx.sroa.0.0, %merged_len
  %_98 = getelementptr inbounds nuw i32, ptr %v.0, i64 %merge_start_idx
  %can_fit_in_scratch.i = icmp samesign ugt i64 %merged_len, %scratch.1
  %_22.i = and i64 %prev_run.sroa.0.149, 1
  %_10.not.i = icmp eq i64 %_22.i, 0
  %5 = or i64 %left10, %prev_run.sroa.0.149
  %6 = and i64 %5, 1
  %7 = icmp ne i64 %6, 0
  %or.cond2.i = or i1 %can_fit_in_scratch.i, %7
  br i1 %or.cond2.i, label %bb3.i, label %bb9.i

bb3.i:                                            ; preds = %bb13
  %_21.i = and i64 %left10, 1
  %_9.not.i = icmp eq i64 %_21.i, 0
  br i1 %_9.not.i, label %bb11.i, label %bb5.i

bb9.i:                                            ; preds = %bb13
  %_40.i = shl nuw nsw i64 %merged_len, 1
  br label %_ZN4core5slice4sort6stable5drift13logical_merge17h3a1609d6dfaba77dE.exit

bb5.i:                                            ; preds = %bb11.i, %bb3.i
  br i1 %_10.not.i, label %bb16.i, label %bb7.i

bb11.i:                                           ; preds = %bb3.i
  %self.i = or i64 %_50, 1
  %8 = tail call range(i64 3, 64) i64 @llvm.ctlz.i64(i64 %self.i, i1 true)
  %9 = trunc nuw nsw i64 %8 to i32
  %log.i = shl nuw nsw i32 %9, 1
  %limit.i = xor i32 %log.i, 126
; call core::slice::sort::stable::quicksort::quicksort
  tail call void @_ZN4core5slice4sort6stable9quicksort9quicksort17h2e119a3f03bcf7a7E(ptr noalias noundef nonnull align 4 %_98, i64 noundef range(i64 0, 2305843009213693952) %_50, ptr noalias noundef nonnull align 4 %scratch.0, i64 noundef range(i64 0, 2305843009213693952) %scratch.1, i32 noundef %limit.i, ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable_or_null(4) null, ptr noalias noundef nonnull align 8 dereferenceable(8) %is_less) #34
  br label %bb5.i

bb7.i:                                            ; preds = %bb16.i, %bb5.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1146)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1149)
  %_6.i = icmp ult i64 %left10, 2
  %_7.i = icmp ult i64 %prev_run.sroa.0.149, 2
  %or.cond.i = or i1 %_7.i, %_6.i
  br i1 %or.cond.i, label %_ZN4core5slice4sort6stable5merge5merge17h57be0a8643bfab55E.exit, label %bb2.i

bb2.i:                                            ; preds = %bb7.i
  %_0.sroa.0.0.i.i = tail call i64 @llvm.umin.i64(i64 %_51, i64 %_50)
  %_8.i = icmp samesign ult i64 %scratch.1, %_0.sroa.0.0.i.i
  br i1 %_8.i, label %_ZN4core5slice4sort6stable5merge5merge17h57be0a8643bfab55E.exit, label %bb5.i37

bb5.i37:                                          ; preds = %bb2.i
  %v_mid.i = getelementptr inbounds nuw i32, ptr %_98, i64 %_50
  %left_is_shorter.not.i = icmp samesign ugt i64 %_50, %_51
  %spec.select.i = select i1 %left_is_shorter.not.i, ptr %v_mid.i, ptr %_98
  %10 = shl nuw nsw i64 %_0.sroa.0.0.i.i, 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %scratch.0, ptr nonnull align 4 %spec.select.i, i64 %10, i1 false), !alias.scope !1151
  %_22.i38 = getelementptr inbounds nuw i8, ptr %scratch.0, i64 %10
  br i1 %left_is_shorter.not.i, label %bb1.i.i, label %bb3.i.i

bb1.i.i:                                          ; preds = %bb5.i37, %bb1.i.i
  %_2110.i.i = phi ptr [ %_21.i.i, %bb1.i.i ], [ %_22.i38, %bb5.i37 ]
  %_188.i.i = phi ptr [ %_18.i.i, %bb1.i.i ], [ %spec.select.i, %bb5.i37 ]
  %out.sroa.0.0.i.i = phi ptr [ %13, %bb1.i.i ], [ %v_end.i, %bb5.i37 ]
  %11 = getelementptr inbounds i8, ptr %_188.i.i, i64 -4
  %12 = getelementptr inbounds i8, ptr %_2110.i.i, i64 -4
  %13 = getelementptr inbounds i8, ptr %out.sroa.0.0.i.i, i64 -4
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1152)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1155)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1157)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1160)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1162)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1165)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1167)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1170)
  %_3.i.i.i.i.i.i = load i32, ptr %12, align 4, !alias.scope !1172, !noalias !1173, !noundef !4
  %_4.i.i.i.i.i.i = load i32, ptr %11, align 4, !alias.scope !1176, !noalias !1177, !noundef !4
  %_0.i.i.i = icmp slt i32 %_3.i.i.i.i.i.i, %_4.i.i.i.i.i.i
  %14 = tail call i32 @llvm.smax.i32(i32 %_3.i.i.i.i.i.i, i32 %_4.i.i.i.i.i.i)
  store i32 %14, ptr %13, align 4, !alias.scope !1146, !noalias !1178
  %_20.i.i = xor i1 %_0.i.i.i, true
  %count.i.i = zext i1 %_20.i.i to i64
  %_18.i.i = getelementptr inbounds nuw i32, ptr %11, i64 %count.i.i
  %count4.i.i = zext i1 %_0.i.i.i to i64
  %_21.i.i = getelementptr inbounds nuw i32, ptr %12, i64 %count4.i.i
  %_23.i.i = icmp eq ptr %_18.i.i, %_98
  %_26.i.i = icmp eq ptr %_21.i.i, %scratch.0
  %or.cond.i.i = select i1 %_23.i.i, i1 true, i1 %_26.i.i
  br i1 %or.cond.i.i, label %bb16.i40, label %bb1.i.i

bb3.i.i:                                          ; preds = %bb5.i37, %bb3.i.i
  %_2511.i.i = phi ptr [ %_25.i.i, %bb3.i.i ], [ %spec.select.i, %bb5.i37 ]
  %right.sroa.0.010.i.i = phi ptr [ %_23.i17.i, %bb3.i.i ], [ %v_mid.i, %bb5.i37 ]
  %_2059.i.i = phi ptr [ %_20.i16.i, %bb3.i.i ], [ %scratch.0, %bb5.i37 ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1179)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1182)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1184)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1187)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1189)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1192)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1194)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1197)
  %_3.i.i.i.i.i12.i = load i32, ptr %right.sroa.0.010.i.i, align 4, !alias.scope !1199, !noalias !1200, !noundef !4
  %_4.i.i.i.i.i13.i = load i32, ptr %_2059.i.i, align 4, !alias.scope !1203, !noalias !1204, !noundef !4
  %_0.i.i14.i = icmp slt i32 %_3.i.i.i.i.i12.i, %_4.i.i.i.i.i13.i
  %consume_left.i.i = xor i1 %_0.i.i14.i, true
  %15 = tail call i32 @llvm.smin.i32(i32 %_3.i.i.i.i.i12.i, i32 %_4.i.i.i.i.i13.i)
  store i32 %15, ptr %_2511.i.i, align 4, !alias.scope !1146, !noalias !1205
  %count.i15.i = zext i1 %consume_left.i.i to i64
  %_20.i16.i = getelementptr inbounds nuw i32, ptr %_2059.i.i, i64 %count.i15.i
  %count2.i.i = zext i1 %_0.i.i14.i to i64
  %_23.i17.i = getelementptr inbounds nuw i32, ptr %right.sroa.0.010.i.i, i64 %count2.i.i
  %_25.i.i = getelementptr inbounds nuw i8, ptr %_2511.i.i, i64 4
  %_7.i.i = icmp ne ptr %_20.i16.i, %_22.i38
  %_10.i.i = icmp ne ptr %_23.i17.i, %v_end.i
  %or.cond.i18.i = select i1 %_7.i.i, i1 %_10.i.i, i1 false
  br i1 %or.cond.i18.i, label %bb3.i.i, label %bb16.i40

bb16.i40:                                         ; preds = %bb3.i.i, %bb1.i.i
  %merge_state.sroa.13.0.i = phi ptr [ %_18.i.i, %bb1.i.i ], [ %_25.i.i, %bb3.i.i ]
  %merge_state.sroa.7.0.i = phi ptr [ %_21.i.i, %bb1.i.i ], [ %_22.i38, %bb3.i.i ]
  %merge_state.sroa.0.0.i = phi ptr [ %scratch.0, %bb1.i.i ], [ %_20.i16.i, %bb3.i.i ]
  %16 = ptrtoint ptr %merge_state.sroa.7.0.i to i64
  %17 = ptrtoint ptr %merge_state.sroa.0.0.i to i64
  %18 = sub nuw i64 %16, %17
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %merge_state.sroa.13.0.i, ptr align 4 %merge_state.sroa.0.0.i, i64 %18, i1 false), !alias.scope !1151, !noalias !1206
  br label %_ZN4core5slice4sort6stable5merge5merge17h57be0a8643bfab55E.exit

_ZN4core5slice4sort6stable5merge5merge17h57be0a8643bfab55E.exit: ; preds = %bb7.i, %bb2.i, %bb16.i40
  %_39.i = shl nuw nsw i64 %merged_len, 1
  %_38.i = or disjoint i64 %_39.i, 1
  br label %_ZN4core5slice4sort6stable5drift13logical_merge17h3a1609d6dfaba77dE.exit

bb16.i:                                           ; preds = %bb5.i
  %_37.i = getelementptr inbounds nuw i32, ptr %_98, i64 %_50
  %self.i41 = or i64 %_51, 1
  %19 = tail call range(i64 3, 64) i64 @llvm.ctlz.i64(i64 %self.i41, i1 true)
  %20 = trunc nuw nsw i64 %19 to i32
  %log.i42 = shl nuw nsw i32 %20, 1
  %limit.i43 = xor i32 %log.i42, 126
; call core::slice::sort::stable::quicksort::quicksort
  tail call void @_ZN4core5slice4sort6stable9quicksort9quicksort17h2e119a3f03bcf7a7E(ptr noalias noundef nonnull align 4 %_37.i, i64 noundef range(i64 0, 2305843009213693952) %_51, ptr noalias noundef nonnull align 4 %scratch.0, i64 noundef range(i64 0, 2305843009213693952) %scratch.1, i32 noundef %limit.i43, ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable_or_null(4) null, ptr noalias noundef nonnull align 8 dereferenceable(8) %is_less) #34
  br label %bb7.i

_ZN4core5slice4sort6stable5drift13logical_merge17h3a1609d6dfaba77dE.exit: ; preds = %bb9.i, %_ZN4core5slice4sort6stable5merge5merge17h57be0a8643bfab55E.exit
  %_0.sroa.0.0.i = phi i64 [ %_38.i, %_ZN4core5slice4sort6stable5merge5merge17h57be0a8643bfab55E.exit ], [ %_40.i, %bb9.i ]
  %_37 = icmp ugt i64 %count, 1
  br i1 %_37, label %bb12, label %bb17

bb19:                                             ; preds = %bb17
  %21 = add i64 %stack_len.sroa.0.1.lcssa, 1
  %_65 = lshr i64 %next_run.sroa.0.0, 1
  %22 = add nuw i64 %_65, %scan_idx.sroa.0.0
  br label %bb6

bb18:                                             ; preds = %bb17
  %_99 = and i64 %prev_run.sroa.0.1.lcssa, 1
  %_66.not = icmp eq i64 %_99, 0
  br i1 %_66.not, label %bb20, label %bb21

bb20:                                             ; preds = %bb18
  %self.i44 = or i64 %v.1, 1
  %23 = tail call range(i64 3, 64) i64 @llvm.ctlz.i64(i64 %self.i44, i1 true)
  %24 = trunc nuw nsw i64 %23 to i32
  %log.i45 = shl nuw nsw i32 %24, 1
  %limit.i46 = xor i32 %log.i45, 126
; call core::slice::sort::stable::quicksort::quicksort
  tail call void @_ZN4core5slice4sort6stable9quicksort9quicksort17h2e119a3f03bcf7a7E(ptr noalias noundef nonnull align 4 %v.0, i64 noundef range(i64 0, 2305843009213693952) %v.1, ptr noalias noundef nonnull align 4 %scratch.0, i64 noundef range(i64 0, 2305843009213693952) %scratch.1, i32 noundef %limit.i46, ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable_or_null(4) null, ptr noalias noundef align 8 dereferenceable(8) %is_less) #34
  br label %bb21

bb21:                                             ; preds = %bb20, %bb18
  call void @llvm.lifetime.end.p0(i64 66, ptr nonnull %desired_depth_storage)
  call void @llvm.lifetime.end.p0(i64 528, ptr nonnull %run_storage)
  br label %bb22

bb22:                                             ; preds = %start, %bb21
  ret void
}

; core::slice::sort::stable::merge::MergeState<T>::merge_down
; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(read, argmem: readwrite, inaccessiblemem: readwrite) uwtable
define void @"_ZN4core5slice4sort6stable5merge19MergeState$LT$T$GT$10merge_down17hd233a378b37db418E"(ptr noalias noundef align 8 captures(none) dereferenceable(24) %self, ptr noundef readnone captures(address) %left_end, ptr noundef readnone captures(address) %right_end, ptr noundef writeonly captures(none) %0, ptr noalias noundef readnone align 8 captures(none) dereferenceable(8) %is_less) unnamed_addr #10 {
start:
  %1 = getelementptr inbounds nuw i8, ptr %self, i64 16
  %2 = getelementptr inbounds nuw i8, ptr %self, i64 8
  %.promoted = load ptr, ptr %1, align 8
  %.promoted9 = load ptr, ptr %2, align 8
  br label %bb1

bb1:                                              ; preds = %bb1, %start
  %_2110 = phi ptr [ %.promoted9, %start ], [ %_21, %bb1 ]
  %_188 = phi ptr [ %.promoted, %start ], [ %_18, %bb1 ]
  %out.sroa.0.0 = phi ptr [ %0, %start ], [ %5, %bb1 ]
  %3 = getelementptr inbounds i8, ptr %_188, i64 -4
  %4 = getelementptr inbounds i8, ptr %_2110, i64 -4
  %5 = getelementptr inbounds i8, ptr %out.sroa.0.0, i64 -4
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1211)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1214)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1216)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1219)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1221)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1224)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1226)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1229)
  %_3.i.i.i.i = load i32, ptr %4, align 4, !alias.scope !1231, !noalias !1232, !noundef !4
  %_4.i.i.i.i = load i32, ptr %3, align 4, !alias.scope !1232, !noalias !1231, !noundef !4
  %_0.i = icmp slt i32 %_3.i.i.i.i, %_4.i.i.i.i
  %6 = tail call i32 @llvm.smax.i32(i32 %_3.i.i.i.i, i32 %_4.i.i.i.i)
  store i32 %6, ptr %5, align 4
  %_20 = xor i1 %_0.i, true
  %count = zext i1 %_20 to i64
  %_18 = getelementptr inbounds nuw i32, ptr %3, i64 %count
  %count4 = zext i1 %_0.i to i64
  %_21 = getelementptr inbounds nuw i32, ptr %4, i64 %count4
  %_23 = icmp eq ptr %_18, %left_end
  %_26 = icmp eq ptr %_21, %right_end
  %or.cond = select i1 %_23, i1 true, i1 %_26
  br i1 %or.cond, label %bb7, label %bb1

bb7:                                              ; preds = %bb1
  store ptr %_18, ptr %1, align 8
  store ptr %_21, ptr %2, align 8
  ret void
}

; core::slice::sort::stable::merge::MergeState<T>::merge_up
; Function Attrs: nofree norecurse nosync nounwind nonlazybind uwtable
define void @"_ZN4core5slice4sort6stable5merge19MergeState$LT$T$GT$8merge_up17h7c109b648f8a06bbE"(ptr noalias noundef align 8 captures(none) dereferenceable(24) %self, ptr noundef readonly captures(address) %0, ptr noundef readnone captures(address) %right_end, ptr noalias noundef readnone align 8 captures(none) dereferenceable(8) %is_less) unnamed_addr #11 {
start:
  %1 = getelementptr inbounds nuw i8, ptr %self, i64 8
  %_9 = load ptr, ptr %1, align 8, !noundef !4
  %self.promoted = load ptr, ptr %self, align 8
  %_76 = icmp ne ptr %self.promoted, %_9
  %_107 = icmp ne ptr %0, %right_end
  %or.cond8 = and i1 %_76, %_107
  br i1 %or.cond8, label %bb3.lr.ph, label %bb9

bb3.lr.ph:                                        ; preds = %start
  %2 = getelementptr inbounds nuw i8, ptr %self, i64 16
  %.promoted = load ptr, ptr %2, align 8
  br label %bb3

bb1.bb9_crit_edge:                                ; preds = %bb3
  store ptr %_25, ptr %2, align 8
  store ptr %_20, ptr %self, align 8
  br label %bb9

bb9:                                              ; preds = %bb1.bb9_crit_edge, %start
  ret void

bb3:                                              ; preds = %bb3.lr.ph, %bb3
  %_2511 = phi ptr [ %.promoted, %bb3.lr.ph ], [ %_25, %bb3 ]
  %right.sroa.0.010 = phi ptr [ %0, %bb3.lr.ph ], [ %_23, %bb3 ]
  %_2059 = phi ptr [ %self.promoted, %bb3.lr.ph ], [ %_20, %bb3 ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1233)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1236)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1238)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1241)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1243)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1246)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1248)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1251)
  %_3.i.i.i.i = load i32, ptr %right.sroa.0.010, align 4, !alias.scope !1253, !noalias !1254, !noundef !4
  %_4.i.i.i.i = load i32, ptr %_2059, align 4, !alias.scope !1254, !noalias !1253, !noundef !4
  %_0.i = icmp slt i32 %_3.i.i.i.i, %_4.i.i.i.i
  %consume_left = xor i1 %_0.i, true
  %3 = tail call i32 @llvm.smin.i32(i32 %_3.i.i.i.i, i32 %_4.i.i.i.i)
  store i32 %3, ptr %_2511, align 4
  %count = zext i1 %consume_left to i64
  %_20 = getelementptr inbounds nuw i32, ptr %_2059, i64 %count
  %count2 = zext i1 %_0.i to i64
  %_23 = getelementptr inbounds nuw i32, ptr %right.sroa.0.010, i64 %count2
  %_25 = getelementptr inbounds nuw i8, ptr %_2511, i64 4
  %_7 = icmp ne ptr %_20, %_9
  %_10 = icmp ne ptr %_23, %right_end
  %or.cond = select i1 %_7, i1 %_10, i1 false
  br i1 %or.cond, label %bb3, label %bb1.bb9_crit_edge
}

; core::slice::sort::stable::merge::merge
; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable
define void @_ZN4core5slice4sort6stable5merge5merge17h57be0a8643bfab55E(ptr noalias noundef nonnull align 4 captures(address) %v.0, i64 noundef range(i64 0, 2305843009213693952) %v.1, ptr noalias noundef nonnull align 4 %scratch.0, i64 noundef range(i64 0, 2305843009213693952) %scratch.1, i64 noundef %0, ptr noalias noundef readnone align 8 captures(none) dereferenceable(8) %is_less) unnamed_addr #2 personality ptr @rust_eh_personality {
start:
  %_6 = icmp eq i64 %0, 0
  %_7 = icmp uge i64 %0, %v.1
  %or.cond = or i1 %_6, %_7
  br i1 %or.cond, label %bb18, label %bb2

bb2:                                              ; preds = %start
  %right_len = sub nuw nsw i64 %v.1, %0
  %_0.sroa.0.0.i = tail call noundef i64 @llvm.umin.i64(i64 %right_len, i64 %0)
  %_8 = icmp samesign ult i64 %scratch.1, %_0.sroa.0.0.i
  br i1 %_8, label %bb18, label %bb5

bb5:                                              ; preds = %bb2
  %v_mid = getelementptr inbounds nuw i32, ptr %v.0, i64 %0
  %v_end = getelementptr inbounds nuw i32, ptr %v.0, i64 %v.1
  %left_is_shorter.not = icmp ugt i64 %0, %right_len
  %spec.select = select i1 %left_is_shorter.not, ptr %v_mid, ptr %v.0
  %spec.select10 = tail call i64 @llvm.umin.i64(i64 %0, i64 %right_len)
  %1 = shl nuw nsw i64 %spec.select10, 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %scratch.0, ptr nonnull align 4 %spec.select, i64 %1, i1 false)
  %_22.idx = shl nuw nsw i64 %spec.select10, 2
  %_22 = getelementptr inbounds nuw i8, ptr %scratch.0, i64 %_22.idx
  br i1 %left_is_shorter.not, label %bb1.i, label %bb12

bb1.i:                                            ; preds = %bb5, %bb1.i
  %_2110.i = phi ptr [ %_21.i, %bb1.i ], [ %_22, %bb5 ]
  %_188.i = phi ptr [ %_18.i, %bb1.i ], [ %spec.select, %bb5 ]
  %out.sroa.0.0.i = phi ptr [ %4, %bb1.i ], [ %v_end, %bb5 ]
  %2 = getelementptr inbounds i8, ptr %_188.i, i64 -4
  %3 = getelementptr inbounds i8, ptr %_2110.i, i64 -4
  %4 = getelementptr inbounds i8, ptr %out.sroa.0.0.i, i64 -4
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1255)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1258)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1260)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1263)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1265)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1268)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1270)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1273)
  %_3.i.i.i.i.i = load i32, ptr %3, align 4, !alias.scope !1275, !noalias !1276, !noundef !4
  %_4.i.i.i.i.i = load i32, ptr %2, align 4, !alias.scope !1279, !noalias !1280, !noundef !4
  %_0.i.i = icmp slt i32 %_3.i.i.i.i.i, %_4.i.i.i.i.i
  %5 = tail call i32 @llvm.smax.i32(i32 %_3.i.i.i.i.i, i32 %_4.i.i.i.i.i)
  store i32 %5, ptr %4, align 4, !noalias !1281
  %_20.i = xor i1 %_0.i.i, true
  %count.i = zext i1 %_20.i to i64
  %_18.i = getelementptr inbounds nuw i32, ptr %2, i64 %count.i
  %count4.i = zext i1 %_0.i.i to i64
  %_21.i = getelementptr inbounds nuw i32, ptr %3, i64 %count4.i
  %_23.i = icmp eq ptr %_18.i, %v.0
  %_26.i = icmp eq ptr %_21.i, %scratch.0
  %or.cond.i = select i1 %_23.i, i1 true, i1 %_26.i
  br i1 %or.cond.i, label %bb16, label %bb1.i

bb12:                                             ; preds = %bb5
  %_76.i.not = icmp eq i64 %0, 0
  br i1 %_76.i.not, label %bb16, label %bb3.i

bb3.i:                                            ; preds = %bb12, %bb3.i
  %_2511.i = phi ptr [ %_25.i, %bb3.i ], [ %spec.select, %bb12 ]
  %right.sroa.0.010.i = phi ptr [ %_23.i17, %bb3.i ], [ %v_mid, %bb12 ]
  %_2059.i = phi ptr [ %_20.i16, %bb3.i ], [ %scratch.0, %bb12 ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1282)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1285)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1287)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1290)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1292)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1295)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1297)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1300)
  %_3.i.i.i.i.i12 = load i32, ptr %right.sroa.0.010.i, align 4, !alias.scope !1302, !noalias !1303, !noundef !4
  %_4.i.i.i.i.i13 = load i32, ptr %_2059.i, align 4, !alias.scope !1306, !noalias !1307, !noundef !4
  %_0.i.i14 = icmp slt i32 %_3.i.i.i.i.i12, %_4.i.i.i.i.i13
  %consume_left.i = xor i1 %_0.i.i14, true
  %6 = tail call i32 @llvm.smin.i32(i32 %_3.i.i.i.i.i12, i32 %_4.i.i.i.i.i13)
  store i32 %6, ptr %_2511.i, align 4, !noalias !1308
  %count.i15 = zext i1 %consume_left.i to i64
  %_20.i16 = getelementptr inbounds nuw i32, ptr %_2059.i, i64 %count.i15
  %count2.i = zext i1 %_0.i.i14 to i64
  %_23.i17 = getelementptr inbounds nuw i32, ptr %right.sroa.0.010.i, i64 %count2.i
  %_25.i = getelementptr inbounds nuw i8, ptr %_2511.i, i64 4
  %_7.i = icmp ne ptr %_20.i16, %_22
  %_10.i = icmp ne ptr %_23.i17, %v_end
  %or.cond.i18 = select i1 %_7.i, i1 %_10.i, i1 false
  br i1 %or.cond.i18, label %bb3.i, label %bb16

bb16:                                             ; preds = %bb3.i, %bb1.i, %bb12
  %merge_state.sroa.13.0 = phi ptr [ %spec.select, %bb12 ], [ %_18.i, %bb1.i ], [ %_25.i, %bb3.i ]
  %merge_state.sroa.7.0 = phi ptr [ %_22, %bb12 ], [ %_21.i, %bb1.i ], [ %_22, %bb3.i ]
  %merge_state.sroa.0.0 = phi ptr [ %scratch.0, %bb12 ], [ %scratch.0, %bb1.i ], [ %_20.i16, %bb3.i ]
  %7 = ptrtoint ptr %merge_state.sroa.7.0 to i64
  %8 = ptrtoint ptr %merge_state.sroa.0.0 to i64
  %9 = sub nuw i64 %7, %8
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %merge_state.sroa.13.0, ptr align 4 %merge_state.sroa.0.0, i64 %9, i1 false), !noalias !1309
  br label %bb18

bb18:                                             ; preds = %bb2, %start, %bb16
  ret void
}

; core::slice::sort::stable::quicksort::stable_partition
; Function Attrs: nounwind nonlazybind memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable
define noundef i64 @_ZN4core5slice4sort6stable9quicksort16stable_partition17h2488be7e5170e155E(ptr noalias noundef nonnull align 4 captures(address) %v.0, i64 noundef range(i64 0, 2305843009213693952) %v.1, ptr noalias noundef nonnull align 4 captures(none) %scratch.0, i64 noundef range(i64 0, 2305843009213693952) %scratch.1, i64 noundef %0, i1 noundef zeroext %pivot_goes_left, ptr noalias readnone align 8 captures(none) %is_less) unnamed_addr #7 {
start:
  %_8 = icmp samesign uge i64 %scratch.1, %v.1
  %.not = icmp ult i64 %0, %v.1
  %or.cond = and i1 %_8, %.not
  br i1 %or.cond, label %bb33, label %bb31, !prof !1314

bb33:                                             ; preds = %start
  %pivot = getelementptr inbounds nuw i32, ptr %v.0, i64 %0
  %_86 = getelementptr i32, ptr %scratch.0, i64 %v.1
  %_8.i70 = zext i1 %pivot_goes_left to i64
  br label %bb3

bb31:                                             ; preds = %start
  tail call void @llvm.trap()
  unreachable

bb3:                                              ; preds = %bb23, %bb33
  %state.sroa.27.0 = phi i64 [ 0, %bb33 ], [ %14, %bb23 ]
  %state.sroa.9.0 = phi ptr [ %v.0, %bb33 ], [ %_9.i71, %bb23 ]
  %state.sroa.43.0 = phi ptr [ %_86, %bb33 ], [ %12, %bb23 ]
  %pivot_pos.sroa.0.0 = phi i64 [ %0, %bb33 ], [ %v.1, %bb23 ]
  %1 = tail call i64 @llvm.usub.sat.i64(i64 %pivot_pos.sroa.0.0, i64 3)
  %unroll_end = getelementptr inbounds nuw i32, ptr %v.0, i64 %1
  %_1985 = icmp ult ptr %state.sroa.9.0, %unroll_end
  br i1 %_1985, label %bb6, label %bb16

bb6:                                              ; preds = %bb3, %bb6
  %state.sroa.43.188 = phi ptr [ %8, %bb6 ], [ %state.sroa.43.0, %bb3 ]
  %state.sroa.9.187 = phi ptr [ %_9.i54, %bb6 ], [ %state.sroa.9.0, %bb3 ]
  %state.sroa.27.186 = phi i64 [ %9, %bb6 ], [ %state.sroa.27.0, %bb3 ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1315)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1318)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1320)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1323)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1325)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1328)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1330)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1333)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1335)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1338)
  %_3.i.i.i.i.i = load i32, ptr %pivot, align 4, !alias.scope !1340, !noalias !1341, !noundef !4
  %_4.i.i.i.i.i = load i32, ptr %state.sroa.9.187, align 4, !alias.scope !1341, !noalias !1340, !noundef !4
  %_0.i.i = icmp sge i32 %_3.i.i.i.i.i, %_4.i.i.i.i.i
  %2 = getelementptr inbounds i8, ptr %state.sroa.43.188, i64 -4
  %dst_base.sroa.0.0.i = select i1 %_0.i.i, ptr %scratch.0, ptr %2
  %dst.i = getelementptr inbounds nuw i32, ptr %dst_base.sroa.0.0.i, i64 %state.sroa.27.186
  store i32 %_4.i.i.i.i.i, ptr %dst.i, align 4, !noalias !1342
  %_8.i = zext i1 %_0.i.i to i64
  %3 = add i64 %state.sroa.27.186, %_8.i
  %_9.i = getelementptr inbounds nuw i8, ptr %state.sroa.9.187, i64 4
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1345)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1348)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1350)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1353)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1355)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1358)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1360)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1363)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1365)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1368)
  %_3.i.i.i.i.i25 = load i32, ptr %pivot, align 4, !alias.scope !1370, !noalias !1371, !noundef !4
  %_4.i.i.i.i.i26 = load i32, ptr %_9.i, align 4, !alias.scope !1371, !noalias !1370, !noundef !4
  %_0.i.i27 = icmp sge i32 %_3.i.i.i.i.i25, %_4.i.i.i.i.i26
  %4 = getelementptr inbounds i8, ptr %state.sroa.43.188, i64 -8
  %dst_base.sroa.0.0.i29 = select i1 %_0.i.i27, ptr %scratch.0, ptr %4
  %dst.i31 = getelementptr inbounds nuw i32, ptr %dst_base.sroa.0.0.i29, i64 %3
  store i32 %_4.i.i.i.i.i26, ptr %dst.i31, align 4, !noalias !1372
  %_8.i33 = zext i1 %_0.i.i27 to i64
  %5 = add i64 %3, %_8.i33
  %_9.i34 = getelementptr inbounds nuw i8, ptr %state.sroa.9.187, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1375)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1378)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1380)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1383)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1385)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1388)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1390)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1393)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1395)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1398)
  %_3.i.i.i.i.i35 = load i32, ptr %pivot, align 4, !alias.scope !1400, !noalias !1401, !noundef !4
  %_4.i.i.i.i.i36 = load i32, ptr %_9.i34, align 4, !alias.scope !1401, !noalias !1400, !noundef !4
  %_0.i.i37 = icmp sge i32 %_3.i.i.i.i.i35, %_4.i.i.i.i.i36
  %6 = getelementptr inbounds i8, ptr %state.sroa.43.188, i64 -12
  %dst_base.sroa.0.0.i39 = select i1 %_0.i.i37, ptr %scratch.0, ptr %6
  %dst.i41 = getelementptr inbounds nuw i32, ptr %dst_base.sroa.0.0.i39, i64 %5
  store i32 %_4.i.i.i.i.i36, ptr %dst.i41, align 4, !noalias !1402
  %_8.i43 = zext i1 %_0.i.i37 to i64
  %7 = add i64 %5, %_8.i43
  %_9.i44 = getelementptr inbounds nuw i8, ptr %state.sroa.9.187, i64 12
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1405)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1408)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1410)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1413)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1415)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1418)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1420)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1423)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1425)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1428)
  %_3.i.i.i.i.i45 = load i32, ptr %pivot, align 4, !alias.scope !1430, !noalias !1431, !noundef !4
  %_4.i.i.i.i.i46 = load i32, ptr %_9.i44, align 4, !alias.scope !1431, !noalias !1430, !noundef !4
  %_0.i.i47 = icmp sge i32 %_3.i.i.i.i.i45, %_4.i.i.i.i.i46
  %8 = getelementptr inbounds i8, ptr %state.sroa.43.188, i64 -16
  %dst_base.sroa.0.0.i49 = select i1 %_0.i.i47, ptr %scratch.0, ptr %8
  %dst.i51 = getelementptr inbounds nuw i32, ptr %dst_base.sroa.0.0.i49, i64 %7
  store i32 %_4.i.i.i.i.i46, ptr %dst.i51, align 4, !noalias !1432
  %_8.i53 = zext i1 %_0.i.i47 to i64
  %9 = add i64 %7, %_8.i53
  %_9.i54 = getelementptr inbounds nuw i8, ptr %state.sroa.9.187, i64 16
  %_19 = icmp ult ptr %_9.i54, %unroll_end
  br i1 %_19, label %bb6, label %bb16

bb16:                                             ; preds = %bb6, %bb3
  %state.sroa.27.1.lcssa = phi i64 [ %state.sroa.27.0, %bb3 ], [ %9, %bb6 ]
  %state.sroa.9.1.lcssa = phi ptr [ %state.sroa.9.0, %bb3 ], [ %_9.i54, %bb6 ]
  %state.sroa.43.1.lcssa = phi ptr [ %state.sroa.43.0, %bb3 ], [ %8, %bb6 ]
  %loop_end = getelementptr inbounds nuw i32, ptr %v.0, i64 %pivot_pos.sroa.0.0
  %_4791 = icmp ult ptr %state.sroa.9.1.lcssa, %loop_end
  br i1 %_4791, label %bb18, label %bb21

bb21:                                             ; preds = %bb18, %bb16
  %state.sroa.27.2.lcssa = phi i64 [ %state.sroa.27.1.lcssa, %bb16 ], [ %11, %bb18 ]
  %state.sroa.9.2.lcssa = phi ptr [ %state.sroa.9.1.lcssa, %bb16 ], [ %_9.i64, %bb18 ]
  %state.sroa.43.2.lcssa = phi ptr [ %state.sroa.43.1.lcssa, %bb16 ], [ %10, %bb18 ]
  %_55 = icmp eq i64 %pivot_pos.sroa.0.0, %v.1
  br i1 %_55, label %bb22, label %bb23

bb18:                                             ; preds = %bb16, %bb18
  %state.sroa.43.294 = phi ptr [ %10, %bb18 ], [ %state.sroa.43.1.lcssa, %bb16 ]
  %state.sroa.9.293 = phi ptr [ %_9.i64, %bb18 ], [ %state.sroa.9.1.lcssa, %bb16 ]
  %state.sroa.27.292 = phi i64 [ %11, %bb18 ], [ %state.sroa.27.1.lcssa, %bb16 ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1435)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1438)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1440)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1443)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1445)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1448)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1450)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1453)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1455)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1458)
  %_3.i.i.i.i.i55 = load i32, ptr %pivot, align 4, !alias.scope !1460, !noalias !1461, !noundef !4
  %_4.i.i.i.i.i56 = load i32, ptr %state.sroa.9.293, align 4, !alias.scope !1461, !noalias !1460, !noundef !4
  %_0.i.i57 = icmp sge i32 %_3.i.i.i.i.i55, %_4.i.i.i.i.i56
  %10 = getelementptr inbounds i8, ptr %state.sroa.43.294, i64 -4
  %dst_base.sroa.0.0.i59 = select i1 %_0.i.i57, ptr %scratch.0, ptr %10
  %dst.i61 = getelementptr inbounds nuw i32, ptr %dst_base.sroa.0.0.i59, i64 %state.sroa.27.292
  store i32 %_4.i.i.i.i.i56, ptr %dst.i61, align 4, !noalias !1462
  %_8.i63 = zext i1 %_0.i.i57 to i64
  %11 = add i64 %state.sroa.27.292, %_8.i63
  %_9.i64 = getelementptr inbounds nuw i8, ptr %state.sroa.9.293, i64 4
  %_47 = icmp ult ptr %_9.i64, %loop_end
  br i1 %_47, label %bb18, label %bb21

bb23:                                             ; preds = %bb21
  %12 = getelementptr inbounds i8, ptr %state.sroa.43.2.lcssa, i64 -4
  %dst_base.sroa.0.0.i66 = select i1 %pivot_goes_left, ptr %scratch.0, ptr %12
  %dst.i68 = getelementptr inbounds nuw i32, ptr %dst_base.sroa.0.0.i66, i64 %state.sroa.27.2.lcssa
  %13 = load i32, ptr %state.sroa.9.2.lcssa, align 4, !noalias !1465
  store i32 %13, ptr %dst.i68, align 4, !noalias !1465
  %14 = add i64 %state.sroa.27.2.lcssa, %_8.i70
  %_9.i71 = getelementptr inbounds nuw i8, ptr %state.sroa.9.2.lcssa, i64 4
  br label %bb3

bb22:                                             ; preds = %bb21
  %15 = shl i64 %state.sroa.27.2.lcssa, 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %v.0, ptr nonnull align 4 %scratch.0, i64 %15, i1 false)
  %_63 = sub i64 %v.1, %state.sroa.27.2.lcssa
  %_9798.not = icmp eq i64 %v.1, %state.sroa.27.2.lcssa
  br i1 %_9798.not, label %bb30, label %bb42.lr.ph

bb42.lr.ph:                                       ; preds = %bb22
  %16 = getelementptr i32, ptr %v.0, i64 %state.sroa.27.2.lcssa
  %xtraiter = and i64 %_63, 3
  %17 = sub i64 %state.sroa.27.2.lcssa, %v.1
  %18 = icmp ugt i64 %17, -4
  br i1 %18, label %bb30.loopexit.unr-lcssa, label %bb42.lr.ph.new

bb42.lr.ph.new:                                   ; preds = %bb42.lr.ph
  %unroll_iter = and i64 %_63, -4
  %invariant.gep = getelementptr i8, ptr %16, i64 4
  %invariant.gep114 = getelementptr i8, ptr %16, i64 8
  %invariant.gep116 = getelementptr i8, ptr %16, i64 12
  br label %bb42

bb42:                                             ; preds = %bb42, %bb42.lr.ph.new
  %iter.sroa.0.099 = phi i64 [ 0, %bb42.lr.ph.new ], [ %29, %bb42 ]
  %niter = phi i64 [ 0, %bb42.lr.ph.new ], [ %niter.next.3, %bb42 ]
  %19 = getelementptr i32, ptr %16, i64 %iter.sroa.0.099
  %20 = xor i64 %iter.sroa.0.099, -1
  %21 = getelementptr i32, ptr %_86, i64 %20
  %22 = load i32, ptr %21, align 4
  store i32 %22, ptr %19, align 4
  %gep = getelementptr i32, ptr %invariant.gep, i64 %iter.sroa.0.099
  %23 = xor i64 %iter.sroa.0.099, -2
  %24 = getelementptr i32, ptr %_86, i64 %23
  %25 = load i32, ptr %24, align 4
  store i32 %25, ptr %gep, align 4
  %gep115 = getelementptr i32, ptr %invariant.gep114, i64 %iter.sroa.0.099
  %26 = xor i64 %iter.sroa.0.099, -3
  %27 = getelementptr i32, ptr %_86, i64 %26
  %28 = load i32, ptr %27, align 4
  store i32 %28, ptr %gep115, align 4
  %29 = add nuw i64 %iter.sroa.0.099, 4
  %gep117 = getelementptr i32, ptr %invariant.gep116, i64 %iter.sroa.0.099
  %30 = xor i64 %iter.sroa.0.099, -4
  %31 = getelementptr i32, ptr %_86, i64 %30
  %32 = load i32, ptr %31, align 4
  store i32 %32, ptr %gep117, align 4
  %niter.next.3 = add i64 %niter, 4
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %bb30.loopexit.unr-lcssa, label %bb42

bb30.loopexit.unr-lcssa:                          ; preds = %bb42, %bb42.lr.ph
  %iter.sroa.0.099.unr = phi i64 [ 0, %bb42.lr.ph ], [ %29, %bb42 ]
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %bb30, label %bb42.epil

bb42.epil:                                        ; preds = %bb30.loopexit.unr-lcssa, %bb42.epil
  %iter.sroa.0.099.epil = phi i64 [ %33, %bb42.epil ], [ %iter.sroa.0.099.unr, %bb30.loopexit.unr-lcssa ]
  %epil.iter = phi i64 [ %epil.iter.next, %bb42.epil ], [ 0, %bb30.loopexit.unr-lcssa ]
  %33 = add nuw i64 %iter.sroa.0.099.epil, 1
  %34 = getelementptr i32, ptr %16, i64 %iter.sroa.0.099.epil
  %35 = xor i64 %iter.sroa.0.099.epil, -1
  %36 = getelementptr i32, ptr %_86, i64 %35
  %37 = load i32, ptr %36, align 4
  store i32 %37, ptr %34, align 4
  %epil.iter.next = add i64 %epil.iter, 1
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %bb30, label %bb42.epil, !llvm.loop !1468

bb30:                                             ; preds = %bb30.loopexit.unr-lcssa, %bb42.epil, %bb22
  ret i64 %state.sroa.27.2.lcssa
}

; core::slice::sort::stable::quicksort::stable_partition
; Function Attrs: nounwind nonlazybind memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable
define noundef i64 @_ZN4core5slice4sort6stable9quicksort16stable_partition17h5faa6d1b37260ccaE(ptr noalias noundef nonnull align 4 captures(address) %v.0, i64 noundef range(i64 0, 2305843009213693952) %v.1, ptr noalias noundef nonnull align 4 captures(none) %scratch.0, i64 noundef range(i64 0, 2305843009213693952) %scratch.1, i64 noundef %0, i1 noundef zeroext %pivot_goes_left, ptr noalias readnone align 8 captures(none) %is_less) unnamed_addr #7 {
start:
  %_8 = icmp samesign uge i64 %scratch.1, %v.1
  %.not = icmp ult i64 %0, %v.1
  %or.cond = and i1 %_8, %.not
  br i1 %or.cond, label %bb33, label %bb31, !prof !1314

bb33:                                             ; preds = %start
  %pivot = getelementptr inbounds nuw i32, ptr %v.0, i64 %0
  %_86 = getelementptr i32, ptr %scratch.0, i64 %v.1
  %_8.i70 = zext i1 %pivot_goes_left to i64
  br label %bb3

bb31:                                             ; preds = %start
  tail call void @llvm.trap()
  unreachable

bb3:                                              ; preds = %bb23, %bb33
  %state.sroa.27.0 = phi i64 [ 0, %bb33 ], [ %14, %bb23 ]
  %state.sroa.9.0 = phi ptr [ %v.0, %bb33 ], [ %_9.i71, %bb23 ]
  %state.sroa.43.0 = phi ptr [ %_86, %bb33 ], [ %12, %bb23 ]
  %pivot_pos.sroa.0.0 = phi i64 [ %0, %bb33 ], [ %v.1, %bb23 ]
  %1 = tail call i64 @llvm.usub.sat.i64(i64 %pivot_pos.sroa.0.0, i64 3)
  %unroll_end = getelementptr inbounds nuw i32, ptr %v.0, i64 %1
  %_1985 = icmp ult ptr %state.sroa.9.0, %unroll_end
  br i1 %_1985, label %bb6, label %bb16

bb6:                                              ; preds = %bb3, %bb6
  %state.sroa.43.188 = phi ptr [ %8, %bb6 ], [ %state.sroa.43.0, %bb3 ]
  %state.sroa.9.187 = phi ptr [ %_9.i54, %bb6 ], [ %state.sroa.9.0, %bb3 ]
  %state.sroa.27.186 = phi i64 [ %9, %bb6 ], [ %state.sroa.27.0, %bb3 ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1470)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1473)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1475)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1478)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1480)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1483)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1485)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1488)
  %_3.i.i.i.i = load i32, ptr %state.sroa.9.187, align 4, !alias.scope !1490, !noalias !1491, !noundef !4
  %_4.i.i.i.i = load i32, ptr %pivot, align 4, !alias.scope !1491, !noalias !1490, !noundef !4
  %_0.i = icmp slt i32 %_3.i.i.i.i, %_4.i.i.i.i
  %2 = getelementptr inbounds i8, ptr %state.sroa.43.188, i64 -4
  %dst_base.sroa.0.0.i = select i1 %_0.i, ptr %scratch.0, ptr %2
  %dst.i = getelementptr inbounds nuw i32, ptr %dst_base.sroa.0.0.i, i64 %state.sroa.27.186
  store i32 %_3.i.i.i.i, ptr %dst.i, align 4, !noalias !1492
  %_8.i = zext i1 %_0.i to i64
  %3 = add i64 %state.sroa.27.186, %_8.i
  %_9.i = getelementptr inbounds nuw i8, ptr %state.sroa.9.187, i64 4
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1495)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1498)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1500)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1503)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1505)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1508)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1510)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1513)
  %_3.i.i.i.i25 = load i32, ptr %_9.i, align 4, !alias.scope !1515, !noalias !1516, !noundef !4
  %_4.i.i.i.i26 = load i32, ptr %pivot, align 4, !alias.scope !1516, !noalias !1515, !noundef !4
  %_0.i27 = icmp slt i32 %_3.i.i.i.i25, %_4.i.i.i.i26
  %4 = getelementptr inbounds i8, ptr %state.sroa.43.188, i64 -8
  %dst_base.sroa.0.0.i29 = select i1 %_0.i27, ptr %scratch.0, ptr %4
  %dst.i31 = getelementptr inbounds nuw i32, ptr %dst_base.sroa.0.0.i29, i64 %3
  store i32 %_3.i.i.i.i25, ptr %dst.i31, align 4, !noalias !1517
  %_8.i33 = zext i1 %_0.i27 to i64
  %5 = add i64 %3, %_8.i33
  %_9.i34 = getelementptr inbounds nuw i8, ptr %state.sroa.9.187, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1520)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1523)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1525)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1528)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1530)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1533)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1535)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1538)
  %_3.i.i.i.i35 = load i32, ptr %_9.i34, align 4, !alias.scope !1540, !noalias !1541, !noundef !4
  %_4.i.i.i.i36 = load i32, ptr %pivot, align 4, !alias.scope !1541, !noalias !1540, !noundef !4
  %_0.i37 = icmp slt i32 %_3.i.i.i.i35, %_4.i.i.i.i36
  %6 = getelementptr inbounds i8, ptr %state.sroa.43.188, i64 -12
  %dst_base.sroa.0.0.i39 = select i1 %_0.i37, ptr %scratch.0, ptr %6
  %dst.i41 = getelementptr inbounds nuw i32, ptr %dst_base.sroa.0.0.i39, i64 %5
  store i32 %_3.i.i.i.i35, ptr %dst.i41, align 4, !noalias !1542
  %_8.i43 = zext i1 %_0.i37 to i64
  %7 = add i64 %5, %_8.i43
  %_9.i44 = getelementptr inbounds nuw i8, ptr %state.sroa.9.187, i64 12
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1545)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1548)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1550)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1553)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1555)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1558)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1560)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1563)
  %_3.i.i.i.i45 = load i32, ptr %_9.i44, align 4, !alias.scope !1565, !noalias !1566, !noundef !4
  %_4.i.i.i.i46 = load i32, ptr %pivot, align 4, !alias.scope !1566, !noalias !1565, !noundef !4
  %_0.i47 = icmp slt i32 %_3.i.i.i.i45, %_4.i.i.i.i46
  %8 = getelementptr inbounds i8, ptr %state.sroa.43.188, i64 -16
  %dst_base.sroa.0.0.i49 = select i1 %_0.i47, ptr %scratch.0, ptr %8
  %dst.i51 = getelementptr inbounds nuw i32, ptr %dst_base.sroa.0.0.i49, i64 %7
  store i32 %_3.i.i.i.i45, ptr %dst.i51, align 4, !noalias !1567
  %_8.i53 = zext i1 %_0.i47 to i64
  %9 = add i64 %7, %_8.i53
  %_9.i54 = getelementptr inbounds nuw i8, ptr %state.sroa.9.187, i64 16
  %_19 = icmp ult ptr %_9.i54, %unroll_end
  br i1 %_19, label %bb6, label %bb16

bb16:                                             ; preds = %bb6, %bb3
  %state.sroa.27.1.lcssa = phi i64 [ %state.sroa.27.0, %bb3 ], [ %9, %bb6 ]
  %state.sroa.9.1.lcssa = phi ptr [ %state.sroa.9.0, %bb3 ], [ %_9.i54, %bb6 ]
  %state.sroa.43.1.lcssa = phi ptr [ %state.sroa.43.0, %bb3 ], [ %8, %bb6 ]
  %loop_end = getelementptr inbounds nuw i32, ptr %v.0, i64 %pivot_pos.sroa.0.0
  %_4791 = icmp ult ptr %state.sroa.9.1.lcssa, %loop_end
  br i1 %_4791, label %bb18, label %bb21

bb21:                                             ; preds = %bb18, %bb16
  %state.sroa.27.2.lcssa = phi i64 [ %state.sroa.27.1.lcssa, %bb16 ], [ %11, %bb18 ]
  %state.sroa.9.2.lcssa = phi ptr [ %state.sroa.9.1.lcssa, %bb16 ], [ %_9.i64, %bb18 ]
  %state.sroa.43.2.lcssa = phi ptr [ %state.sroa.43.1.lcssa, %bb16 ], [ %10, %bb18 ]
  %_55 = icmp eq i64 %pivot_pos.sroa.0.0, %v.1
  br i1 %_55, label %bb22, label %bb23

bb18:                                             ; preds = %bb16, %bb18
  %state.sroa.43.294 = phi ptr [ %10, %bb18 ], [ %state.sroa.43.1.lcssa, %bb16 ]
  %state.sroa.9.293 = phi ptr [ %_9.i64, %bb18 ], [ %state.sroa.9.1.lcssa, %bb16 ]
  %state.sroa.27.292 = phi i64 [ %11, %bb18 ], [ %state.sroa.27.1.lcssa, %bb16 ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1570)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1573)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1575)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1578)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1580)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1583)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1585)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1588)
  %_3.i.i.i.i55 = load i32, ptr %state.sroa.9.293, align 4, !alias.scope !1590, !noalias !1591, !noundef !4
  %_4.i.i.i.i56 = load i32, ptr %pivot, align 4, !alias.scope !1591, !noalias !1590, !noundef !4
  %_0.i57 = icmp slt i32 %_3.i.i.i.i55, %_4.i.i.i.i56
  %10 = getelementptr inbounds i8, ptr %state.sroa.43.294, i64 -4
  %dst_base.sroa.0.0.i59 = select i1 %_0.i57, ptr %scratch.0, ptr %10
  %dst.i61 = getelementptr inbounds nuw i32, ptr %dst_base.sroa.0.0.i59, i64 %state.sroa.27.292
  store i32 %_3.i.i.i.i55, ptr %dst.i61, align 4, !noalias !1592
  %_8.i63 = zext i1 %_0.i57 to i64
  %11 = add i64 %state.sroa.27.292, %_8.i63
  %_9.i64 = getelementptr inbounds nuw i8, ptr %state.sroa.9.293, i64 4
  %_47 = icmp ult ptr %_9.i64, %loop_end
  br i1 %_47, label %bb18, label %bb21

bb23:                                             ; preds = %bb21
  %12 = getelementptr inbounds i8, ptr %state.sroa.43.2.lcssa, i64 -4
  %dst_base.sroa.0.0.i66 = select i1 %pivot_goes_left, ptr %scratch.0, ptr %12
  %dst.i68 = getelementptr inbounds nuw i32, ptr %dst_base.sroa.0.0.i66, i64 %state.sroa.27.2.lcssa
  %13 = load i32, ptr %state.sroa.9.2.lcssa, align 4, !noalias !1595
  store i32 %13, ptr %dst.i68, align 4, !noalias !1595
  %14 = add i64 %state.sroa.27.2.lcssa, %_8.i70
  %_9.i71 = getelementptr inbounds nuw i8, ptr %state.sroa.9.2.lcssa, i64 4
  br label %bb3

bb22:                                             ; preds = %bb21
  %15 = shl i64 %state.sroa.27.2.lcssa, 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %v.0, ptr nonnull align 4 %scratch.0, i64 %15, i1 false)
  %_63 = sub i64 %v.1, %state.sroa.27.2.lcssa
  %_9798.not = icmp eq i64 %v.1, %state.sroa.27.2.lcssa
  br i1 %_9798.not, label %bb30, label %bb42.lr.ph

bb42.lr.ph:                                       ; preds = %bb22
  %16 = getelementptr i32, ptr %v.0, i64 %state.sroa.27.2.lcssa
  %xtraiter = and i64 %_63, 3
  %17 = sub i64 %state.sroa.27.2.lcssa, %v.1
  %18 = icmp ugt i64 %17, -4
  br i1 %18, label %bb30.loopexit.unr-lcssa, label %bb42.lr.ph.new

bb42.lr.ph.new:                                   ; preds = %bb42.lr.ph
  %unroll_iter = and i64 %_63, -4
  %invariant.gep = getelementptr i8, ptr %16, i64 4
  %invariant.gep114 = getelementptr i8, ptr %16, i64 8
  %invariant.gep116 = getelementptr i8, ptr %16, i64 12
  br label %bb42

bb42:                                             ; preds = %bb42, %bb42.lr.ph.new
  %iter.sroa.0.099 = phi i64 [ 0, %bb42.lr.ph.new ], [ %29, %bb42 ]
  %niter = phi i64 [ 0, %bb42.lr.ph.new ], [ %niter.next.3, %bb42 ]
  %19 = getelementptr i32, ptr %16, i64 %iter.sroa.0.099
  %20 = xor i64 %iter.sroa.0.099, -1
  %21 = getelementptr i32, ptr %_86, i64 %20
  %22 = load i32, ptr %21, align 4
  store i32 %22, ptr %19, align 4
  %gep = getelementptr i32, ptr %invariant.gep, i64 %iter.sroa.0.099
  %23 = xor i64 %iter.sroa.0.099, -2
  %24 = getelementptr i32, ptr %_86, i64 %23
  %25 = load i32, ptr %24, align 4
  store i32 %25, ptr %gep, align 4
  %gep115 = getelementptr i32, ptr %invariant.gep114, i64 %iter.sroa.0.099
  %26 = xor i64 %iter.sroa.0.099, -3
  %27 = getelementptr i32, ptr %_86, i64 %26
  %28 = load i32, ptr %27, align 4
  store i32 %28, ptr %gep115, align 4
  %29 = add nuw i64 %iter.sroa.0.099, 4
  %gep117 = getelementptr i32, ptr %invariant.gep116, i64 %iter.sroa.0.099
  %30 = xor i64 %iter.sroa.0.099, -4
  %31 = getelementptr i32, ptr %_86, i64 %30
  %32 = load i32, ptr %31, align 4
  store i32 %32, ptr %gep117, align 4
  %niter.next.3 = add i64 %niter, 4
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %bb30.loopexit.unr-lcssa, label %bb42

bb30.loopexit.unr-lcssa:                          ; preds = %bb42, %bb42.lr.ph
  %iter.sroa.0.099.unr = phi i64 [ 0, %bb42.lr.ph ], [ %29, %bb42 ]
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %bb30, label %bb42.epil

bb42.epil:                                        ; preds = %bb30.loopexit.unr-lcssa, %bb42.epil
  %iter.sroa.0.099.epil = phi i64 [ %33, %bb42.epil ], [ %iter.sroa.0.099.unr, %bb30.loopexit.unr-lcssa ]
  %epil.iter = phi i64 [ %epil.iter.next, %bb42.epil ], [ 0, %bb30.loopexit.unr-lcssa ]
  %33 = add nuw i64 %iter.sroa.0.099.epil, 1
  %34 = getelementptr i32, ptr %16, i64 %iter.sroa.0.099.epil
  %35 = xor i64 %iter.sroa.0.099.epil, -1
  %36 = getelementptr i32, ptr %_86, i64 %35
  %37 = load i32, ptr %36, align 4
  store i32 %37, ptr %34, align 4
  %epil.iter.next = add i64 %epil.iter, 1
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %bb30, label %bb42.epil, !llvm.loop !1598

bb30:                                             ; preds = %bb30.loopexit.unr-lcssa, %bb42.epil, %bb22
  ret i64 %state.sroa.27.2.lcssa
}

; core::slice::sort::stable::quicksort::PartitionState<T>::partition_one
; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define noundef ptr @"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h57bcd599e387b8b8E"(ptr noalias noundef align 8 captures(none) dereferenceable(32) %self, i1 noundef zeroext %towards_left) unnamed_addr #12 {
start:
  %0 = getelementptr inbounds nuw i8, ptr %self, i64 24
  %self1 = load ptr, ptr %0, align 8, !noundef !4
  %1 = getelementptr inbounds i8, ptr %self1, i64 -4
  store ptr %1, ptr %0, align 8
  %2 = load ptr, ptr %self, align 8
  %dst_base.sroa.0.0 = select i1 %towards_left, ptr %2, ptr %1
  %3 = getelementptr inbounds nuw i8, ptr %self, i64 16
  %count = load i64, ptr %3, align 8, !noundef !4
  %dst = getelementptr inbounds nuw i32, ptr %dst_base.sroa.0.0, i64 %count
  %4 = getelementptr inbounds nuw i8, ptr %self, i64 8
  %src = load ptr, ptr %4, align 8, !noundef !4
  %5 = load i32, ptr %src, align 4
  store i32 %5, ptr %dst, align 4
  %_8 = zext i1 %towards_left to i64
  %6 = add i64 %count, %_8
  store i64 %6, ptr %3, align 8
  %_9 = getelementptr inbounds nuw i8, ptr %src, i64 4
  store ptr %_9, ptr %4, align 8
  ret ptr %dst
}

; core::slice::sort::stable::quicksort::quicksort
; Function Attrs: noinline nonlazybind uwtable
define void @_ZN4core5slice4sort6stable9quicksort9quicksort17h2e119a3f03bcf7a7E(ptr noalias noundef nonnull align 4 %0, i64 noundef range(i64 0, 2305843009213693952) %1, ptr noalias noundef nonnull align 4 %scratch.0, i64 noundef range(i64 0, 2305843009213693952) %scratch.1, i32 noundef %2, ptr noalias noundef readonly align 4 captures(address) dereferenceable_or_null(4) %3, ptr noalias noundef align 8 dereferenceable(8) %is_less) unnamed_addr #8 {
start:
  %pivot_copy = alloca [4 x i8], align 4
  %_83238 = icmp samesign ult i64 %1, 33
  br i1 %_83238, label %bb3, label %bb5.lr.ph

bb5.lr.ph:                                        ; preds = %start, %bb28
  %v.sroa.0.0.ph42 = phi ptr [ %_54, %bb28 ], [ %0, %start ]
  %v.sroa.16.0.ph41 = phi i64 [ %new_len, %bb28 ], [ %1, %start ]
  %limit.sroa.0.0.ph40 = phi i32 [ %4, %bb28 ], [ %2, %start ]
  %left_ancestor_pivot.sroa.0.0.ph39 = phi ptr [ null, %bb28 ], [ %3, %start ]
  %.not = icmp eq ptr %left_ancestor_pivot.sroa.0.0.ph39, null
  %.sink77 = ptrtoint ptr %v.sroa.0.0.ph42 to i64
  br label %bb5

bb5:                                              ; preds = %bb5.lr.ph, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$12split_at_mut17h1400d91c62c2e5e3E.exit"
  %v.sroa.16.034 = phi i64 [ %v.sroa.16.0.ph41, %bb5.lr.ph ], [ %left_partition_len.sroa.0.0, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$12split_at_mut17h1400d91c62c2e5e3E.exit" ]
  %limit.sroa.0.033 = phi i32 [ %limit.sroa.0.0.ph40, %bb5.lr.ph ], [ %4, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$12split_at_mut17h1400d91c62c2e5e3E.exit" ]
  %_11 = icmp eq i32 %limit.sroa.0.033, 0
  br i1 %_11, label %bb6, label %bb7

bb3:                                              ; preds = %bb28, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$12split_at_mut17h1400d91c62c2e5e3E.exit", %start
  %v.sroa.0.0.ph.lcssa31 = phi ptr [ %0, %start ], [ %v.sroa.0.0.ph42, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$12split_at_mut17h1400d91c62c2e5e3E.exit" ], [ %_54, %bb28 ]
  %v.sroa.16.0.lcssa = phi i64 [ %1, %start ], [ %left_partition_len.sroa.0.0, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$12split_at_mut17h1400d91c62c2e5e3E.exit" ], [ %new_len, %bb28 ]
; call core::slice::sort::shared::smallsort::small_sort_general_with_scratch
  call void @_ZN4core5slice4sort6shared9smallsort31small_sort_general_with_scratch17he3e14fa8f4d210b5E(ptr noalias noundef nonnull align 4 %v.sroa.0.0.ph.lcssa31, i64 noundef range(i64 0, 33) %v.sroa.16.0.lcssa, ptr noalias noundef nonnull align 4 %scratch.0, i64 noundef range(i64 0, 2305843009213693952) %scratch.1, ptr noalias nonnull align 8 poison)
  br label %bb22

bb7:                                              ; preds = %bb5
  %4 = add i32 %limit.sroa.0.033, -1
  %len_div_84.i = lshr i64 %v.sroa.16.034, 3
  %b.idx.i = shl nuw nsw i64 %len_div_84.i, 4
  %b.i = getelementptr inbounds nuw i8, ptr %v.sroa.0.0.ph42, i64 %b.idx.i
  %c.idx.i = mul nuw nsw i64 %len_div_84.i, 28
  %c.i = getelementptr inbounds nuw i8, ptr %v.sroa.0.0.ph42, i64 %c.idx.i
  %_12.i = icmp samesign ult i64 %v.sroa.16.034, 64
  br i1 %_12.i, label %bb3.i, label %bb5.i

bb5.i:                                            ; preds = %bb7
; call core::slice::sort::shared::pivot::median3_rec
  %self.i = call noundef ptr @_ZN4core5slice4sort6shared5pivot11median3_rec17hd5ea959d46a1b9bfE(ptr noundef nonnull readonly align 4 %v.sroa.0.0.ph42, ptr noundef nonnull readonly %b.i, ptr noundef nonnull readonly %c.i, i64 noundef %len_div_84.i, ptr noalias noundef nonnull align 8 dereferenceable(8) %is_less)
  br label %_ZN4core5slice4sort6shared5pivot12choose_pivot17hc728f59411a312eeE.exit

bb3.i:                                            ; preds = %bb7
  call void @llvm.experimental.noalias.scope.decl(metadata !1599)
  call void @llvm.experimental.noalias.scope.decl(metadata !1602)
  call void @llvm.experimental.noalias.scope.decl(metadata !1604), !noalias !1607
  call void @llvm.experimental.noalias.scope.decl(metadata !1610), !noalias !1607
  call void @llvm.experimental.noalias.scope.decl(metadata !1612), !noalias !1607
  call void @llvm.experimental.noalias.scope.decl(metadata !1615), !noalias !1607
  call void @llvm.experimental.noalias.scope.decl(metadata !1617), !noalias !1607
  call void @llvm.experimental.noalias.scope.decl(metadata !1620), !noalias !1607
  %_3.i.i.i.i.i = load i32, ptr %v.sroa.0.0.ph42, align 4, !alias.scope !1622, !noalias !1625, !noundef !4
  %_4.i.i.i.i.i = load i32, ptr %b.i, align 4, !alias.scope !1627, !noalias !1628, !noundef !4
  %_0.i.i = icmp slt i32 %_3.i.i.i.i.i, %_4.i.i.i.i.i
  %_4.i.i.i.i6.i = load i32, ptr %c.i, align 4, !alias.scope !1629, !noalias !1638, !noundef !4
  %_0.i7.i = icmp slt i32 %_3.i.i.i.i.i, %_4.i.i.i.i6.i
  %5 = xor i1 %_0.i.i, %_0.i7.i
  %_0.i10.i = icmp slt i32 %_4.i.i.i.i.i, %_4.i.i.i.i6.i
  %_12.i.i = xor i1 %_0.i.i, %_0.i10.i
  %c.b.i.i = select i1 %_12.i.i, ptr %c.i, ptr %b.i
  %_0.sroa.0.0.i.i = select i1 %5, ptr %v.sroa.0.0.ph42, ptr %c.b.i.i
  br label %_ZN4core5slice4sort6shared5pivot12choose_pivot17hc728f59411a312eeE.exit

_ZN4core5slice4sort6shared5pivot12choose_pivot17hc728f59411a312eeE.exit: ; preds = %bb5.i, %bb3.i
  %self.i.sink = phi ptr [ %self.i, %bb5.i ], [ %_0.sroa.0.0.i.i, %bb3.i ]
  %6 = ptrtoint ptr %self.i.sink to i64
  %7 = sub nuw i64 %6, %.sink77
  %index.sroa.0.0.i = lshr exact i64 %7, 2
  %cond.i = icmp samesign ult i64 %index.sroa.0.0.i, %v.sroa.16.034
  call void @llvm.assume(i1 %cond.i)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %pivot_copy)
  %src = getelementptr inbounds nuw i8, ptr %v.sroa.0.0.ph42, i64 %7
  %value = load i32, ptr %src, align 4, !noundef !4
  store i32 %value, ptr %pivot_copy, align 4
  br i1 %.not, label %bb14, label %bb12

bb6:                                              ; preds = %bb5
; call core::slice::sort::stable::drift::sort
  call void @_ZN4core5slice4sort6stable5drift4sort17h1bb37ca7787190c2E(ptr noalias noundef nonnull align 4 %v.sroa.0.0.ph42, i64 noundef %v.sroa.16.034, ptr noalias noundef nonnull align 4 %scratch.0, i64 noundef %scratch.1, i1 noundef zeroext true, ptr noalias noundef align 8 dereferenceable(8) %is_less)
  br label %bb22

bb12:                                             ; preds = %_ZN4core5slice4sort6shared5pivot12choose_pivot17hc728f59411a312eeE.exit
  %_3.i.i.i.i = load i32, ptr %left_ancestor_pivot.sroa.0.0.ph39, align 4, !alias.scope !1643, !noalias !1652, !noundef !4
  %_0.i.not = icmp slt i32 %_3.i.i.i.i, %value
  br i1 %_0.i.not, label %bb14, label %bb16

bb14:                                             ; preds = %_ZN4core5slice4sort6shared5pivot12choose_pivot17hc728f59411a312eeE.exit, %bb12
; call core::slice::sort::stable::quicksort::stable_partition
  %8 = call noundef i64 @_ZN4core5slice4sort6stable9quicksort16stable_partition17h5faa6d1b37260ccaE(ptr noalias noundef nonnull align 4 %v.sroa.0.0.ph42, i64 noundef %v.sroa.16.034, ptr noalias noundef nonnull align 4 %scratch.0, i64 noundef %scratch.1, i64 noundef %index.sroa.0.0.i, i1 noundef zeroext false, ptr noalias align 8 poison)
  %9 = icmp eq i64 %8, 0
  br label %bb16

bb16:                                             ; preds = %bb14, %bb12
  %left_partition_len.sroa.0.0 = phi i64 [ 0, %bb12 ], [ %8, %bb14 ]
  %perform_equal_partition.sroa.0.0.in = phi i1 [ true, %bb12 ], [ %9, %bb14 ]
  br i1 %perform_equal_partition.sroa.0.0.in, label %bb17, label %bb19

bb19:                                             ; preds = %bb16
  %_6.not.i = icmp ugt i64 %left_partition_len.sroa.0.0, %v.sroa.16.034
  br i1 %_6.not.i, label %bb3.i23, label %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$12split_at_mut17h1400d91c62c2e5e3E.exit", !prof !11

bb3.i23:                                          ; preds = %bb19
; call core::panicking::panic_fmt
  call void @_ZN4core9panicking9panic_fmt17ha4414e4328fe24a0E(ptr noundef nonnull @alloc_d1084648e479974e70c9329824bf76f9, ptr noundef nonnull inttoptr (i64 19 to ptr), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_58d434a1e795f965ef82c8e9c5db822a) #30, !noalias !1657
  unreachable

"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$12split_at_mut17h1400d91c62c2e5e3E.exit": ; preds = %bb19
  %10 = getelementptr inbounds nuw i32, ptr %v.sroa.0.0.ph42, i64 %left_partition_len.sroa.0.0
  %11 = sub nuw nsw i64 %v.sroa.16.034, %left_partition_len.sroa.0.0
; call core::slice::sort::stable::quicksort::quicksort
  call void @_ZN4core5slice4sort6stable9quicksort9quicksort17h2e119a3f03bcf7a7E(ptr noalias noundef nonnull align 4 %10, i64 noundef %11, ptr noalias noundef nonnull align 4 %scratch.0, i64 noundef %scratch.1, i32 noundef %4, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable_or_null(4) %pivot_copy, ptr noalias noundef align 8 dereferenceable(8) %is_less) #34
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pivot_copy)
  %_8 = icmp ult i64 %left_partition_len.sroa.0.0, 33
  br i1 %_8, label %bb3, label %bb5

bb17:                                             ; preds = %bb16
; call core::slice::sort::stable::quicksort::stable_partition
  %mid_eq = call noundef i64 @_ZN4core5slice4sort6stable9quicksort16stable_partition17h2488be7e5170e155E(ptr noalias noundef nonnull align 4 %v.sroa.0.0.ph42, i64 noundef %v.sroa.16.034, ptr noalias noundef nonnull align 4 %scratch.0, i64 noundef %scratch.1, i64 noundef %index.sroa.0.0.i, i1 noundef zeroext true, ptr noalias align 8 poison)
  %_47 = icmp ugt i64 %mid_eq, %v.sroa.16.034
  br i1 %_47, label %bb27, label %bb28, !prof !11

bb28:                                             ; preds = %bb17
  %new_len = sub nuw i64 %v.sroa.16.034, %mid_eq
  %_54 = getelementptr inbounds nuw i32, ptr %v.sroa.0.0.ph42, i64 %mid_eq
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pivot_copy)
  %_832 = icmp ult i64 %new_len, 33
  br i1 %_832, label %bb3, label %bb5.lr.ph

bb27:                                             ; preds = %bb17
; call core::slice::index::slice_index_fail
  call void @_ZN4core5slice5index16slice_index_fail17h62807bcaa490c9c1E(i64 noundef %mid_eq, i64 noundef %v.sroa.16.034, i64 noundef %v.sroa.16.034, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_0766b232215672ee1bd2195fdb153938) #30
  unreachable

bb22:                                             ; preds = %bb3, %bb6
  ret void
}

; <Q as hashbrown::Equivalent<K>>::equivalent
; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read, inaccessiblemem: read) uwtable
define noundef zeroext i1 @"_ZN52_$LT$Q$u20$as$u20$hashbrown..Equivalent$LT$K$GT$$GT$10equivalent17hb0de2a23fc7075ffE"(ptr noalias noundef readonly align 4 captures(none) dereferenceable(4) %self, ptr noalias noundef readonly align 4 captures(none) dereferenceable(4) %key) unnamed_addr #13 {
start:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1661)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1664)
  %_3.i = load i32, ptr %self, align 4, !range !42, !alias.scope !1661, !noalias !1664, !noundef !4
  %_4.i = load i32, ptr %key, align 4, !range !42, !alias.scope !1664, !noalias !1661, !noundef !4
  %_0.i = icmp eq i32 %_3.i, %_4.i
  ret i1 %_0.i
}

; alloc::slice::<impl core::slice::sort::stable::BufGuard<T> for alloc::vec::Vec<T>>::with_capacity
; Function Attrs: nonlazybind uwtable
define void @"_ZN5alloc5slice99_$LT$impl$u20$core..slice..sort..stable..BufGuard$LT$T$GT$$u20$for$u20$alloc..vec..Vec$LT$T$GT$$GT$13with_capacity17h6f674a30280871f1E"(ptr dead_on_unwind noalias noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %_0, i64 noundef %capacity) unnamed_addr #1 {
start:
  %_4.i = alloca [24 x i8], align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %_4.i)
; call alloc::raw_vec::RawVecInner<A>::try_allocate_in
  call void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$15try_allocate_in17had089b3ffc2704ecE"(ptr noalias noundef sret([24 x i8]) align 8 captures(none) dereferenceable(24) %_4.i, i64 noundef %capacity, i1 noundef zeroext false, i64 noundef 4, i64 noundef 4)
  %_5.i = load i64, ptr %_4.i, align 8, !range !1069, !noundef !4
  %0 = trunc nuw i64 %_5.i to i1
  %1 = getelementptr inbounds nuw i8, ptr %_4.i, i64 8
  %err.0.i = load i64, ptr %1, align 8, !range !1070, !noundef !4
  %2 = getelementptr inbounds nuw i8, ptr %_4.i, i64 16
  br i1 %0, label %bb3.i, label %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17hff75d3f5bea16b0cE.exit", !prof !11

bb3.i:                                            ; preds = %start
  %err.1.i = load i64, ptr %2, align 8
; call alloc::raw_vec::handle_error
  tail call void @_ZN5alloc7raw_vec12handle_error17h3a8c375904e593b2E(i64 noundef %err.0.i, i64 %err.1.i) #33
  unreachable

"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17hff75d3f5bea16b0cE.exit": ; preds = %start
  %this.1.i = load ptr, ptr %2, align 8, !nonnull !4, !noundef !4
  %_7.i = icmp ule i64 %capacity, %err.0.i
  tail call void @llvm.assume(i1 %_7.i)
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %_4.i)
  store i64 %err.0.i, ptr %_0, align 8
  %3 = getelementptr inbounds nuw i8, ptr %_0, i64 8
  store ptr %this.1.i, ptr %3, align 8
  %4 = getelementptr inbounds nuw i8, ptr %_0, i64 16
  store i64 0, ptr %4, align 8
  ret void
}

; alloc::slice::<impl core::slice::sort::stable::BufGuard<T> for alloc::vec::Vec<T>>::as_uninit_slice_mut
; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define { ptr, i64 } @"_ZN5alloc5slice99_$LT$impl$u20$core..slice..sort..stable..BufGuard$LT$T$GT$$u20$for$u20$alloc..vec..Vec$LT$T$GT$$GT$19as_uninit_slice_mut17hfe3437bc977646e2E"(ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) %self) unnamed_addr #4 {
start:
  %0 = getelementptr inbounds nuw i8, ptr %self, i64 8
  %_10 = load ptr, ptr %0, align 8, !nonnull !4, !noundef !4
  %1 = getelementptr inbounds nuw i8, ptr %self, i64 16
  %count = load i64, ptr %1, align 8, !noundef !4
  %_3 = getelementptr inbounds nuw i32, ptr %_10, i64 %count
  %self1 = load i64, ptr %self, align 8, !range !1666, !noundef !4
  %len = sub i64 %self1, %count
  %2 = insertvalue { ptr, i64 } poison, ptr %_3, 0
  %3 = insertvalue { ptr, i64 } %2, i64 %len, 1
  ret { ptr, i64 } %3
}

; <alloc::vec::Vec<T,A> as core::ops::drop::Drop>::drop
; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define void @"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h541bb57e96488fe0E"(ptr noalias noundef readnone align 8 captures(none) dereferenceable(24) %self) unnamed_addr #9 {
start:
  ret void
}

; <alloc::raw_vec::RawVec<T,A> as core::ops::drop::Drop>::drop
; Function Attrs: nonlazybind uwtable
define void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hfeab8d3c7eb26dbfE"(ptr noalias noundef align 8 dereferenceable(16) %self) unnamed_addr #1 {
start:
; call alloc::raw_vec::RawVecInner<A>::deallocate
  tail call void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$10deallocate17h6ddf8733b0451bb9E"(ptr noalias noundef align 8 dereferenceable(16) %self, i64 noundef 4, i64 noundef 4)
  ret void
}

; <hashbrown::raw::RawTable<T,A> as core::ops::drop::Drop>::drop
; Function Attrs: nounwind nonlazybind uwtable
define void @"_ZN79_$LT$hashbrown..raw..RawTable$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hfdcf3a01044366e6E"(ptr noalias noundef readonly align 8 captures(none) dereferenceable(32) %self) unnamed_addr #3 {
start:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1667)
  %0 = getelementptr inbounds nuw i8, ptr %self, i64 8
  %_6.i = load i64, ptr %0, align 8, !alias.scope !1667, !noundef !4
  %_4.i = icmp eq i64 %_6.i, 0
  br i1 %_4.i, label %_ZN9hashbrown3raw13RawTableInner16drop_inner_table17hbdff987bad8a68daE.exit, label %bb1.i

bb1.i:                                            ; preds = %start
  %_10.i = add i64 %_6.i, 1
  %_32.1.i.i = icmp ult i64 %_10.i, 4611686018427387901
  tail call void @llvm.assume(i1 %_32.1.i.i)
  %_25.0.i.i = shl nuw i64 %_10.i, 2
  %_32.0.i.i = add i64 %_25.0.i.i, 15
  %ctrl_offset.i.i = and i64 %_32.0.i.i, -16
  %rhs5.i.i = add i64 %_6.i, 17
  %_37.0.i.i = add i64 %rhs5.i.i, %ctrl_offset.i.i
  %_37.1.i.i = icmp uge i64 %_37.0.i.i, %ctrl_offset.i.i
  %_19.i.i = icmp ult i64 %_37.0.i.i, 9223372036854775793
  tail call void @llvm.assume(i1 %_37.1.i.i)
  tail call void @llvm.assume(i1 %_19.i.i)
  %_4.not.i.i = icmp eq i64 %_37.0.i.i, 0
  br i1 %_4.not.i.i, label %_ZN9hashbrown3raw13RawTableInner16drop_inner_table17hbdff987bad8a68daE.exit, label %bb1.i2.i

bb1.i2.i:                                         ; preds = %bb1.i
  %self1.i = load ptr, ptr %self, align 8, !alias.scope !1667, !nonnull !4, !noundef !4
  %_18.i = sub nsw i64 0, %ctrl_offset.i.i
  %ptr.i = getelementptr inbounds i8, ptr %self1.i, i64 %_18.i
; call __rustc::__rust_dealloc
  tail call void @_RNvCsdBezzDwma51_7___rustc14___rust_dealloc(ptr noundef nonnull %ptr.i, i64 noundef %_37.0.i.i, i64 noundef range(i64 1, -9223372036854775807) 16) #32, !noalias !1667
  br label %_ZN9hashbrown3raw13RawTableInner16drop_inner_table17hbdff987bad8a68daE.exit

_ZN9hashbrown3raw13RawTableInner16drop_inner_table17hbdff987bad8a68daE.exit: ; preds = %start, %bb1.i, %bb1.i2.i
  ret void
}

; <hashbrown::map::HashMap<K,V,S,A> as core::default::Default>::default
; Function Attrs: nonlazybind uwtable
define void @"_ZN87_$LT$hashbrown..map..HashMap$LT$K$C$V$C$S$C$A$GT$$u20$as$u20$core..default..Default$GT$7default17h0d99390d06b31d86E"(ptr dead_on_unwind noalias noundef writable writeonly sret([48 x i8]) align 8 captures(none) dereferenceable(48) initializes((0, 48)) %_0) unnamed_addr #1 personality ptr @rust_eh_personality {
start:
  %_3.i.i.i = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr @"_ZN3std4hash6random11RandomState3new4KEYS29_$u7b$$u7b$constant$u7d$$u7d$28_$u7b$$u7b$closure$u7d$$u7d$23__RUST_STD_INTERNAL_VAL17h80d8e1569169cac2E")
  %_12.i.i.i.i = getelementptr inbounds nuw i8, ptr %_3.i.i.i, i64 16
  %0 = load i8, ptr %_12.i.i.i.i, align 8, !range !3, !noalias !1670, !noundef !4
  %_4.i.i.i1.i = trunc nuw i8 %0 to i1
  br i1 %_4.i.i.i1.i, label %"_ZN73_$LT$std..hash..random..RandomState$u20$as$u20$core..default..Default$GT$7default17hfefeacb183b843c4E.exit", label %bb2.i.i.i.i, !prof !1682

bb2.i.i.i.i:                                      ; preds = %start
; call std::sys::random::linux::hashmap_random_keys
  %1 = tail call { i64, i64 } @_ZN3std3sys6random5linux19hashmap_random_keys17h6146797cc86fe2ccE(), !noalias !1683
  %2 = extractvalue { i64, i64 } %1, 0
  %3 = extractvalue { i64, i64 } %1, 1
  %4 = getelementptr inbounds nuw i8, ptr %_3.i.i.i, i64 8
  store i64 %2, ptr %_3.i.i.i, align 8, !noalias !1683
  store i64 %3, ptr %4, align 8, !noalias !1683
  store i8 1, ptr %_12.i.i.i.i, align 8, !noalias !1683
  br label %"_ZN73_$LT$std..hash..random..RandomState$u20$as$u20$core..default..Default$GT$7default17hfefeacb183b843c4E.exit"

"_ZN73_$LT$std..hash..random..RandomState$u20$as$u20$core..default..Default$GT$7default17hfefeacb183b843c4E.exit": ; preds = %start, %bb2.i.i.i.i
  %_9.i.i.i.i = load i64, ptr %_3.i.i.i, align 8, !noalias !1686, !noundef !4
  %5 = getelementptr inbounds nuw i8, ptr %_3.i.i.i, i64 8
  %_10.i.i.i.i = load i64, ptr %5, align 8, !noalias !1686, !noundef !4
  %_4.i.i.i.i = add i64 %_9.i.i.i.i, 1
  store i64 %_4.i.i.i.i, ptr %_3.i.i.i, align 8, !noalias !1686
  %6 = getelementptr inbounds nuw i8, ptr %_0, i64 32
  store i64 %_9.i.i.i.i, ptr %6, align 8
  %7 = getelementptr inbounds nuw i8, ptr %_0, i64 40
  store i64 %_10.i.i.i.i, ptr %7, align 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %_0, ptr noundef nonnull align 8 dereferenceable(32) @anon.faf6f5ceec9f3955f7678f503c36246b.0, i64 32, i1 false)
  ret void
}

; <core::slice::sort::stable::merge::MergeState<T> as core::ops::drop::Drop>::drop
; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define void @"_ZN95_$LT$core..slice..sort..stable..merge..MergeState$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hedfd3badb8f28800E"(ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) %self) unnamed_addr #12 {
start:
  %0 = getelementptr inbounds nuw i8, ptr %self, i64 8
  %self1 = load ptr, ptr %0, align 8, !noundef !4
  %_5 = load ptr, ptr %self, align 8, !noundef !4
  %1 = ptrtoint ptr %self1 to i64
  %2 = ptrtoint ptr %_5 to i64
  %3 = sub nuw i64 %1, %2
  %4 = getelementptr inbounds nuw i8, ptr %self, i64 16
  %5 = load ptr, ptr %4, align 8, !noundef !4
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %5, ptr align 4 %_5, i64 %3, i1 false)
  ret void
}

; <core::hint::select_unpredictable::DropOnPanic<T> as core::ops::drop::Drop>::drop
; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define void @"_ZN96_$LT$core..hint..select_unpredictable..DropOnPanic$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h5bb3eae9a70e39acE"(ptr noalias noundef readnone align 8 captures(none) dereferenceable(8) %self) unnamed_addr #9 {
start:
  ret void
}

; <core::slice::sort::shared::smallsort::CopyOnDrop<T> as core::ops::drop::Drop>::drop
; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define void @"_ZN99_$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h4fdf3af4f97486a9E"(ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) %self) unnamed_addr #12 {
start:
  %src = load ptr, ptr %self, align 8, !noundef !4
  %0 = getelementptr inbounds nuw i8, ptr %self, i64 8
  %dst = load ptr, ptr %0, align 8, !noundef !4
  %1 = getelementptr inbounds nuw i8, ptr %self, i64 16
  %count = load i64, ptr %1, align 8, !noundef !4
  %2 = shl i64 %count, 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %dst, ptr align 4 %src, i64 %2, i1 false)
  ret void
}

; hashbrown::map::HashMap<K,V,S,A>::contains_key
; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(read, inaccessiblemem: readwrite) uwtable
define noundef zeroext i1 @"_ZN9hashbrown3map28HashMap$LT$K$C$V$C$S$C$A$GT$12contains_key17hb449a1137405fcfcE"(ptr noalias noundef readonly align 8 captures(none) dereferenceable(48) %self, ptr noalias noundef readonly align 4 captures(none) dereferenceable(4) %k) unnamed_addr #14 personality ptr @rust_eh_personality {
start:
  %0 = getelementptr inbounds nuw i8, ptr %self, i64 24
  %_11 = load i64, ptr %0, align 8, !noundef !4
  %_3 = icmp eq i64 %_11, 0
  br i1 %_3, label %bb3, label %bb2

bb2:                                              ; preds = %start
  %hash_builder = getelementptr inbounds nuw i8, ptr %self, i64 32
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1687)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1690)
  %key0.i.i = load i64, ptr %hash_builder, align 8, !alias.scope !1692, !noalias !1695, !noundef !4
  %1 = getelementptr inbounds nuw i8, ptr %self, i64 40
  %key1.i.i = load i64, ptr %1, align 8, !alias.scope !1692, !noalias !1695, !noundef !4
  %_4.i.i.i = load i32, ptr %k, align 4, !range !42, !alias.scope !1697, !noalias !1700, !noundef !4
  %2 = zext nneg i32 %_4.i.i.i to i64
  %3 = xor i64 %key0.i.i, 7816392313619706465
  %4 = xor i64 %key1.i.i, 7237128888997146477
  %5 = xor i64 %key0.i.i, 8317987319222330741
  %b.i.i.i = or disjoint i64 %2, 288230376151711744
  %6 = xor i64 %key1.i.i, %b.i.i.i
  %7 = xor i64 %6, 8387220255154660723
  %_2.i.i.i.i = add i64 %4, %5
  %_5.i.i.i3.i = add i64 %7, %3
  %8 = tail call noundef i64 @llvm.fshl.i64(i64 %4, i64 %4, i64 13)
  %9 = xor i64 %8, %_2.i.i.i.i
  %10 = tail call noundef i64 @llvm.fshl.i64(i64 %7, i64 %7, i64 16)
  %11 = xor i64 %10, %_5.i.i.i3.i
  %12 = tail call noundef i64 @llvm.fshl.i64(i64 %_2.i.i.i.i, i64 %_2.i.i.i.i, i64 32)
  %_16.i.i.i.i = add i64 %_5.i.i.i3.i, %9
  %_19.i.i.i.i = add i64 %11, %12
  %13 = tail call noundef i64 @llvm.fshl.i64(i64 %9, i64 %9, i64 17)
  %14 = xor i64 %_16.i.i.i.i, %13
  %15 = tail call noundef i64 @llvm.fshl.i64(i64 %11, i64 %11, i64 21)
  %16 = xor i64 %15, %_19.i.i.i.i
  %17 = tail call noundef i64 @llvm.fshl.i64(i64 %_16.i.i.i.i, i64 %_16.i.i.i.i, i64 32)
  %18 = xor i64 %_19.i.i.i.i, %b.i.i.i
  %19 = xor i64 %17, 255
  %_2.i3.i.i.i = add i64 %18, %14
  %_5.i6.i.i.i = add i64 %16, %19
  %20 = tail call noundef i64 @llvm.fshl.i64(i64 %14, i64 %14, i64 13)
  %21 = xor i64 %_2.i3.i.i.i, %20
  %22 = tail call noundef i64 @llvm.fshl.i64(i64 %16, i64 %16, i64 16)
  %23 = xor i64 %22, %_5.i6.i.i.i
  %24 = tail call noundef i64 @llvm.fshl.i64(i64 %_2.i3.i.i.i, i64 %_2.i3.i.i.i, i64 32)
  %_16.i7.i.i.i = add i64 %21, %_5.i6.i.i.i
  %_19.i8.i.i.i = add i64 %23, %24
  %25 = tail call noundef i64 @llvm.fshl.i64(i64 %21, i64 %21, i64 17)
  %26 = xor i64 %_16.i7.i.i.i, %25
  %27 = tail call noundef i64 @llvm.fshl.i64(i64 %23, i64 %23, i64 21)
  %28 = xor i64 %27, %_19.i8.i.i.i
  %29 = tail call noundef i64 @llvm.fshl.i64(i64 %_16.i7.i.i.i, i64 %_16.i7.i.i.i, i64 32)
  %_30.i.i.i.i = add i64 %26, %_19.i8.i.i.i
  %_33.i.i.i.i = add i64 %28, %29
  %30 = tail call noundef i64 @llvm.fshl.i64(i64 %26, i64 %26, i64 13)
  %31 = xor i64 %30, %_30.i.i.i.i
  %32 = tail call noundef i64 @llvm.fshl.i64(i64 %28, i64 %28, i64 16)
  %33 = xor i64 %32, %_33.i.i.i.i
  %34 = tail call noundef i64 @llvm.fshl.i64(i64 %_30.i.i.i.i, i64 %_30.i.i.i.i, i64 32)
  %_44.i.i.i.i = add i64 %31, %_33.i.i.i.i
  %_47.i.i.i.i = add i64 %33, %34
  %35 = tail call noundef i64 @llvm.fshl.i64(i64 %31, i64 %31, i64 17)
  %36 = xor i64 %35, %_44.i.i.i.i
  %37 = tail call noundef i64 @llvm.fshl.i64(i64 %33, i64 %33, i64 21)
  %38 = xor i64 %37, %_47.i.i.i.i
  %39 = tail call noundef i64 @llvm.fshl.i64(i64 %_44.i.i.i.i, i64 %_44.i.i.i.i, i64 32)
  %_58.i.i.i.i = add i64 %36, %_47.i.i.i.i
  %_61.i.i.i.i = add i64 %38, %39
  %40 = tail call noundef i64 @llvm.fshl.i64(i64 %36, i64 %36, i64 13)
  %41 = xor i64 %40, %_58.i.i.i.i
  %42 = tail call noundef i64 @llvm.fshl.i64(i64 %38, i64 %38, i64 16)
  %43 = xor i64 %42, %_61.i.i.i.i
  %_72.i.i.i.i = add i64 %41, %_61.i.i.i.i
  %44 = tail call noundef i64 @llvm.fshl.i64(i64 %41, i64 %41, i64 17)
  %45 = tail call noundef i64 @llvm.fshl.i64(i64 %43, i64 %43, i64 21)
  %46 = tail call noundef i64 @llvm.fshl.i64(i64 %_72.i.i.i.i, i64 %_72.i.i.i.i, i64 32)
  %47 = xor i64 %45, %44
  %48 = xor i64 %47, %46
  %_0.i.i.i = xor i64 %48, %_72.i.i.i.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1705)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1708)
  %_21.i.i = lshr i64 %_0.i.i.i, 57
  %tag_hash.i.i = trunc nuw nsw i64 %_21.i.i to i8
  %49 = getelementptr inbounds nuw i8, ptr %self, i64 8
  %_26.i.i = load i64, ptr %49, align 8, !alias.scope !1711, !noalias !1712, !noundef !4
  %_29.i.i = load ptr, ptr %self, align 8, !alias.scope !1711, !noalias !1712, !nonnull !4, !noundef !4
  %.sroa.0.0.vec.insert.i.i = insertelement <16 x i8> poison, i8 %tag_hash.i.i, i64 0
  %.sroa.0.15.vec.insert.i.i = shufflevector <16 x i8> %.sroa.0.0.vec.insert.i.i, <16 x i8> poison, <16 x i32> zeroinitializer
  %invariant.gep.i = getelementptr i8, ptr %_29.i.i, i64 -4
  br label %bb1.i.i

bb1.i.i:                                          ; preds = %bb20.i.i, %bb2
  %probe_seq.sroa.9.0.i.i = phi i64 [ 0, %bb2 ], [ %56, %bb20.i.i ]
  %hash.pn.i = phi i64 [ %_0.i.i.i, %bb2 ], [ %57, %bb20.i.i ]
  %probe_seq.sroa.0.0.i.i = and i64 %hash.pn.i, %_26.i.i
  %_27.i.i = getelementptr inbounds nuw i8, ptr %_29.i.i, i64 %probe_seq.sroa.0.0.i.i
  %dst.sroa.0.0.copyload.i17.i = load <16 x i8>, ptr %_27.i.i, align 1, !noalias !1714
  %50 = icmp eq <16 x i8> %dst.sroa.0.0.copyload.i17.i, %.sroa.0.15.vec.insert.i.i
  %51 = bitcast <16 x i1> %50 to i16
  %.not.i.not23.i = icmp eq i16 %51, 0
  br i1 %.not.i.not23.i, label %bb11.i.i, label %bb10.i.i

bb10.i.i:                                         ; preds = %bb1.i.i, %bb17.i.i
  %iter.sroa.0.0.i24.i = phi i16 [ %_51.i.i, %bb17.i.i ], [ %51, %bb1.i.i ]
  %52 = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %iter.sroa.0.0.i24.i, i1 true)
  %_42.i.i = zext nneg i16 %52 to i64
  %_13.i.i = add i64 %probe_seq.sroa.0.0.i.i, %_42.i.i
  %index5.i.i = and i64 %_13.i.i, %_26.i.i
  %_18.i.i = sub nsw i64 0, %index5.i.i
  %gep.i = getelementptr i32, ptr %invariant.gep.i, i64 %_18.i.i
  %_4.i.i.i.i.i = load i32, ptr %gep.i, align 4, !range !42, !alias.scope !1717, !noalias !1724, !noundef !4
  %_0.i.i.i.i.i = icmp eq i32 %_4.i.i.i, %_4.i.i.i.i.i
  br i1 %_0.i.i.i.i.i, label %bb3, label %bb17.i.i, !prof !1682

bb11.i.i:                                         ; preds = %bb17.i.i, %bb1.i.i
  %53 = icmp eq <16 x i8> %dst.sroa.0.0.copyload.i17.i, splat (i8 -1)
  %54 = bitcast <16 x i1> %53 to i16
  %b8.not.i.i = icmp eq i16 %54, 0
  br i1 %b8.not.i.i, label %bb20.i.i, label %bb3, !prof !11

bb17.i.i:                                         ; preds = %bb10.i.i
  %55 = add i16 %iter.sroa.0.0.i24.i, -1
  %_51.i.i = and i16 %55, %iter.sroa.0.0.i24.i
  %.not.i.not.i = icmp eq i16 %_51.i.i, 0
  br i1 %.not.i.not.i, label %bb11.i.i, label %bb10.i.i

bb20.i.i:                                         ; preds = %bb11.i.i
  %56 = add i64 %probe_seq.sroa.9.0.i.i, 16
  %57 = add i64 %probe_seq.sroa.0.0.i.i, %56
  br label %bb1.i.i

bb3:                                              ; preds = %bb11.i.i, %bb10.i.i, %start
  %_0.sroa.0.0 = phi i1 [ false, %start ], [ true, %bb10.i.i ], [ false, %bb11.i.i ]
  ret i1 %_0.sroa.0.0
}

; hashbrown::map::HashMap<K,V,S,A>::remove_entry
; Function Attrs: nofree norecurse nosync nounwind nonlazybind uwtable
define noundef range(i32 0, 1114113) i32 @"_ZN9hashbrown3map28HashMap$LT$K$C$V$C$S$C$A$GT$12remove_entry17h19595892a878febaE"(ptr noalias noundef align 8 captures(none) dereferenceable(48) %self, ptr noalias noundef readonly align 4 captures(none) dereferenceable(4) %k) unnamed_addr #11 personality ptr @rust_eh_personality {
start:
  %hash_builder = getelementptr inbounds nuw i8, ptr %self, i64 32
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1730)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1733)
  %key0.i.i = load i64, ptr %hash_builder, align 8, !alias.scope !1735, !noalias !1738, !noundef !4
  %0 = getelementptr inbounds nuw i8, ptr %self, i64 40
  %key1.i.i = load i64, ptr %0, align 8, !alias.scope !1735, !noalias !1738, !noundef !4
  %_4.i.i.i = load i32, ptr %k, align 4, !range !42, !alias.scope !1740, !noalias !1743, !noundef !4
  %1 = zext nneg i32 %_4.i.i.i to i64
  %2 = xor i64 %key0.i.i, 7816392313619706465
  %3 = xor i64 %key1.i.i, 7237128888997146477
  %4 = xor i64 %key0.i.i, 8317987319222330741
  %b.i.i.i = or disjoint i64 %1, 288230376151711744
  %5 = xor i64 %key1.i.i, %b.i.i.i
  %6 = xor i64 %5, 8387220255154660723
  %_2.i.i.i.i = add i64 %3, %4
  %_5.i.i.i3.i = add i64 %6, %2
  %7 = tail call noundef i64 @llvm.fshl.i64(i64 %3, i64 %3, i64 13)
  %8 = xor i64 %7, %_2.i.i.i.i
  %9 = tail call noundef i64 @llvm.fshl.i64(i64 %6, i64 %6, i64 16)
  %10 = xor i64 %9, %_5.i.i.i3.i
  %11 = tail call noundef i64 @llvm.fshl.i64(i64 %_2.i.i.i.i, i64 %_2.i.i.i.i, i64 32)
  %_16.i.i.i.i = add i64 %_5.i.i.i3.i, %8
  %_19.i.i.i.i = add i64 %10, %11
  %12 = tail call noundef i64 @llvm.fshl.i64(i64 %8, i64 %8, i64 17)
  %13 = xor i64 %_16.i.i.i.i, %12
  %14 = tail call noundef i64 @llvm.fshl.i64(i64 %10, i64 %10, i64 21)
  %15 = xor i64 %14, %_19.i.i.i.i
  %16 = tail call noundef i64 @llvm.fshl.i64(i64 %_16.i.i.i.i, i64 %_16.i.i.i.i, i64 32)
  %17 = xor i64 %_19.i.i.i.i, %b.i.i.i
  %18 = xor i64 %16, 255
  %_2.i3.i.i.i = add i64 %17, %13
  %_5.i6.i.i.i = add i64 %15, %18
  %19 = tail call noundef i64 @llvm.fshl.i64(i64 %13, i64 %13, i64 13)
  %20 = xor i64 %_2.i3.i.i.i, %19
  %21 = tail call noundef i64 @llvm.fshl.i64(i64 %15, i64 %15, i64 16)
  %22 = xor i64 %21, %_5.i6.i.i.i
  %23 = tail call noundef i64 @llvm.fshl.i64(i64 %_2.i3.i.i.i, i64 %_2.i3.i.i.i, i64 32)
  %_16.i7.i.i.i = add i64 %20, %_5.i6.i.i.i
  %_19.i8.i.i.i = add i64 %22, %23
  %24 = tail call noundef i64 @llvm.fshl.i64(i64 %20, i64 %20, i64 17)
  %25 = xor i64 %_16.i7.i.i.i, %24
  %26 = tail call noundef i64 @llvm.fshl.i64(i64 %22, i64 %22, i64 21)
  %27 = xor i64 %26, %_19.i8.i.i.i
  %28 = tail call noundef i64 @llvm.fshl.i64(i64 %_16.i7.i.i.i, i64 %_16.i7.i.i.i, i64 32)
  %_30.i.i.i.i = add i64 %25, %_19.i8.i.i.i
  %_33.i.i.i.i = add i64 %27, %28
  %29 = tail call noundef i64 @llvm.fshl.i64(i64 %25, i64 %25, i64 13)
  %30 = xor i64 %29, %_30.i.i.i.i
  %31 = tail call noundef i64 @llvm.fshl.i64(i64 %27, i64 %27, i64 16)
  %32 = xor i64 %31, %_33.i.i.i.i
  %33 = tail call noundef i64 @llvm.fshl.i64(i64 %_30.i.i.i.i, i64 %_30.i.i.i.i, i64 32)
  %_44.i.i.i.i = add i64 %30, %_33.i.i.i.i
  %_47.i.i.i.i = add i64 %32, %33
  %34 = tail call noundef i64 @llvm.fshl.i64(i64 %30, i64 %30, i64 17)
  %35 = xor i64 %34, %_44.i.i.i.i
  %36 = tail call noundef i64 @llvm.fshl.i64(i64 %32, i64 %32, i64 21)
  %37 = xor i64 %36, %_47.i.i.i.i
  %38 = tail call noundef i64 @llvm.fshl.i64(i64 %_44.i.i.i.i, i64 %_44.i.i.i.i, i64 32)
  %_58.i.i.i.i = add i64 %35, %_47.i.i.i.i
  %_61.i.i.i.i = add i64 %37, %38
  %39 = tail call noundef i64 @llvm.fshl.i64(i64 %35, i64 %35, i64 13)
  %40 = xor i64 %39, %_58.i.i.i.i
  %41 = tail call noundef i64 @llvm.fshl.i64(i64 %37, i64 %37, i64 16)
  %42 = xor i64 %41, %_61.i.i.i.i
  %_72.i.i.i.i = add i64 %40, %_61.i.i.i.i
  %43 = tail call noundef i64 @llvm.fshl.i64(i64 %40, i64 %40, i64 17)
  %44 = tail call noundef i64 @llvm.fshl.i64(i64 %42, i64 %42, i64 21)
  %45 = tail call noundef i64 @llvm.fshl.i64(i64 %_72.i.i.i.i, i64 %_72.i.i.i.i, i64 32)
  %46 = xor i64 %44, %43
  %47 = xor i64 %46, %45
  %_0.i.i.i = xor i64 %47, %_72.i.i.i.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1748)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1751)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1754)
  %_21.i.i.i = lshr i64 %_0.i.i.i, 57
  %tag_hash.i.i.i = trunc nuw nsw i64 %_21.i.i.i to i8
  %48 = getelementptr inbounds nuw i8, ptr %self, i64 8
  %_26.i.i.i = load i64, ptr %48, align 8, !alias.scope !1757, !noalias !1758, !noundef !4
  %_29.i.i.i = load ptr, ptr %self, align 8, !alias.scope !1757, !noalias !1758, !nonnull !4, !noundef !4
  %.sroa.0.0.vec.insert.i.i.i = insertelement <16 x i8> poison, i8 %tag_hash.i.i.i, i64 0
  %.sroa.0.15.vec.insert.i.i.i = shufflevector <16 x i8> %.sroa.0.0.vec.insert.i.i.i, <16 x i8> poison, <16 x i32> zeroinitializer
  %invariant.gep.i.i = getelementptr i8, ptr %_29.i.i.i, i64 -4
  br label %bb1.i.i.i

bb1.i.i.i:                                        ; preds = %bb20.i.i.i, %start
  %probe_seq.sroa.9.0.i.i.i = phi i64 [ 0, %start ], [ %55, %bb20.i.i.i ]
  %hash.pn.i.i = phi i64 [ %_0.i.i.i, %start ], [ %56, %bb20.i.i.i ]
  %probe_seq.sroa.0.0.i.i.i = and i64 %hash.pn.i.i, %_26.i.i.i
  %_27.i.i.i = getelementptr inbounds nuw i8, ptr %_29.i.i.i, i64 %probe_seq.sroa.0.0.i.i.i
  %dst.sroa.0.0.copyload.i17.i.i = load <16 x i8>, ptr %_27.i.i.i, align 1, !noalias !1761
  %49 = icmp eq <16 x i8> %dst.sroa.0.0.copyload.i17.i.i, %.sroa.0.15.vec.insert.i.i.i
  %50 = bitcast <16 x i1> %49 to i16
  %.not.i.not23.i.i = icmp eq i16 %50, 0
  br i1 %.not.i.not23.i.i, label %bb11.i.i.i, label %bb10.i.i.i

bb10.i.i.i:                                       ; preds = %bb1.i.i.i, %bb17.i.i.i
  %iter.sroa.0.0.i24.i.i = phi i16 [ %_51.i.i.i, %bb17.i.i.i ], [ %50, %bb1.i.i.i ]
  %51 = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %iter.sroa.0.0.i24.i.i, i1 true)
  %_42.i.i.i = zext nneg i16 %51 to i64
  %_13.i.i.i = add i64 %probe_seq.sroa.0.0.i.i.i, %_42.i.i.i
  %index5.i.i.i = and i64 %_13.i.i.i, %_26.i.i.i
  %_18.i.i.i = sub nsw i64 0, %index5.i.i.i
  %gep.i.i = getelementptr i32, ptr %invariant.gep.i.i, i64 %_18.i.i.i
  %_4.i.i.i.i.i.i = load i32, ptr %gep.i.i, align 4, !range !42, !alias.scope !1764, !noalias !1771, !noundef !4
  %_0.i.i.i.i.i.i = icmp eq i32 %_4.i.i.i, %_4.i.i.i.i.i.i
  br i1 %_0.i.i.i.i.i.i, label %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$4find17h099eb6b1ca84dda3E.exit.i", label %bb17.i.i.i, !prof !1682

bb11.i.i.i:                                       ; preds = %bb17.i.i.i, %bb1.i.i.i
  %52 = icmp eq <16 x i8> %dst.sroa.0.0.copyload.i17.i.i, splat (i8 -1)
  %53 = bitcast <16 x i1> %52 to i16
  %b8.not.i.i.i = icmp eq i16 %53, 0
  br i1 %b8.not.i.i.i, label %bb20.i.i.i, label %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$4find17h099eb6b1ca84dda3E.exit.i", !prof !11

bb17.i.i.i:                                       ; preds = %bb10.i.i.i
  %54 = add i16 %iter.sroa.0.0.i24.i.i, -1
  %_51.i.i.i = and i16 %54, %iter.sroa.0.0.i24.i.i
  %.not.i.not.i.i = icmp eq i16 %_51.i.i.i, 0
  br i1 %.not.i.not.i.i, label %bb11.i.i.i, label %bb10.i.i.i

bb20.i.i.i:                                       ; preds = %bb11.i.i.i
  %55 = add i64 %probe_seq.sroa.9.0.i.i.i, 16
  %56 = add i64 %probe_seq.sroa.0.0.i.i.i, %55
  br label %bb1.i.i.i

"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$4find17h099eb6b1ca84dda3E.exit.i": ; preds = %bb11.i.i.i, %bb10.i.i.i
  %.not.i.not20.i.i = phi i1 [ false, %bb10.i.i.i ], [ true, %bb11.i.i.i ]
  %_0.sroa.3.0.i.i.i = phi i64 [ %index5.i.i.i, %bb10.i.i.i ], [ undef, %bb11.i.i.i ]
  %_23.i.i = sub nsw i64 0, %_0.sroa.3.0.i.i.i
  %57 = getelementptr inbounds i32, ptr %_29.i.i.i, i64 %_23.i.i
  br i1 %.not.i.not20.i.i, label %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$12remove_entry17h4b9e890c1c3ca8c0E.exit", label %bb4.i

bb4.i:                                            ; preds = %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$4find17h099eb6b1ca84dda3E.exit.i"
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1777)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1780)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1783)
  %_6.i.i.i.i = add nsw i64 %_0.sroa.3.0.i.i.i, -16
  %index_before.i.i.i.i = and i64 %_6.i.i.i.i, %_26.i.i.i
  %_15.i.i.i.i = getelementptr inbounds nuw i8, ptr %_29.i.i.i, i64 %index_before.i.i.i.i
  %dst.sroa.0.0.copyload.i23.i.i.i.i = load <16 x i8>, ptr %_15.i.i.i.i, align 1, !noalias !1786
  %58 = icmp eq <16 x i8> %dst.sroa.0.0.copyload.i23.i.i.i.i, splat (i8 -1)
  %59 = bitcast <16 x i1> %58 to i16
  %_24.i.i.i.i = getelementptr inbounds nuw i8, ptr %_29.i.i.i, i64 %_0.sroa.3.0.i.i.i
  %dst.sroa.0.0.copyload.i624.i.i.i.i = load <16 x i8>, ptr %_24.i.i.i.i, align 1, !noalias !1790
  %60 = icmp eq <16 x i8> %dst.sroa.0.0.copyload.i624.i.i.i.i, splat (i8 -1)
  %61 = bitcast <16 x i1> %60 to i16
  %62 = tail call range(i16 0, 17) i16 @llvm.ctlz.i16(i16 %59, i1 false)
  %63 = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %61, i1 false)
  %narrow.i.i.i.i = add nuw nsw i16 %63, %62
  %_11.i.i.i.i = icmp samesign ugt i16 %narrow.i.i.i.i, 15
  br i1 %_11.i.i.i.i, label %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$6remove17h8d367b2999601316E.exit.i", label %bb2.i.i.i.i

bb2.i.i.i.i:                                      ; preds = %bb4.i
  %64 = getelementptr inbounds nuw i8, ptr %self, i64 16
  %65 = load i64, ptr %64, align 8, !alias.scope !1793, !noalias !1794, !noundef !4
  %66 = add i64 %65, 1
  store i64 %66, ptr %64, align 8, !alias.scope !1793, !noalias !1794
  br label %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$6remove17h8d367b2999601316E.exit.i"

"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$6remove17h8d367b2999601316E.exit.i": ; preds = %bb2.i.i.i.i, %bb4.i
  %ctrl.sroa.0.0.i.i.i.i = phi i8 [ -1, %bb2.i.i.i.i ], [ -128, %bb4.i ]
  store i8 %ctrl.sroa.0.0.i.i.i.i, ptr %_24.i.i.i.i, align 1, !noalias !1795
  %_46.i.i.i.i = getelementptr i8, ptr %_15.i.i.i.i, i64 16
  store i8 %ctrl.sroa.0.0.i.i.i.i, ptr %_46.i.i.i.i, align 1, !noalias !1795
  %67 = getelementptr inbounds nuw i8, ptr %self, i64 24
  %68 = load i64, ptr %67, align 8, !alias.scope !1793, !noalias !1794, !noundef !4
  %69 = add i64 %68, -1
  store i64 %69, ptr %67, align 8, !alias.scope !1793, !noalias !1794
  %70 = getelementptr inbounds i8, ptr %57, i64 -4
  %_5.i.i = load i32, ptr %70, align 4, !range !42, !noalias !1796, !noundef !4
  br label %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$12remove_entry17h4b9e890c1c3ca8c0E.exit"

"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$12remove_entry17h4b9e890c1c3ca8c0E.exit": ; preds = %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$4find17h099eb6b1ca84dda3E.exit.i", %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$6remove17h8d367b2999601316E.exit.i"
  %_0.sroa.0.0.i = phi i32 [ %_5.i.i, %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$6remove17h8d367b2999601316E.exit.i" ], [ 1114112, %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$4find17h099eb6b1ca84dda3E.exit.i" ]
  ret i32 %_0.sroa.0.0.i
}

; hashbrown::map::HashMap<K,V,S,A>::insert
; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @"_ZN9hashbrown3map28HashMap$LT$K$C$V$C$S$C$A$GT$6insert17h872682af38f14043E"(ptr noalias noundef align 8 captures(none) dereferenceable(48) %self, i32 noundef range(i32 0, 1114112) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
start:
  %hash_builder = getelementptr inbounds nuw i8, ptr %self, i64 32
  %key0.i.i = load i64, ptr %hash_builder, align 8, !alias.scope !1797, !noalias !1802, !noundef !4
  %1 = getelementptr inbounds nuw i8, ptr %self, i64 40
  %key1.i.i = load i64, ptr %1, align 8, !alias.scope !1797, !noalias !1802, !noundef !4
  %2 = zext nneg i32 %0 to i64
  %3 = xor i64 %key0.i.i, 7816392313619706465
  %4 = xor i64 %key1.i.i, 7237128888997146477
  %5 = xor i64 %key0.i.i, 8317987319222330741
  %b.i.i.i = or disjoint i64 %2, 288230376151711744
  %6 = xor i64 %key1.i.i, %2
  %7 = xor i64 %6, 8098989879002948979
  %_2.i.i.i.i = add i64 %4, %5
  %_5.i.i.i3.i = add i64 %7, %3
  %8 = tail call noundef i64 @llvm.fshl.i64(i64 %4, i64 %4, i64 13)
  %9 = xor i64 %8, %_2.i.i.i.i
  %10 = tail call noundef i64 @llvm.fshl.i64(i64 %7, i64 %7, i64 16)
  %11 = xor i64 %10, %_5.i.i.i3.i
  %12 = tail call noundef i64 @llvm.fshl.i64(i64 %_2.i.i.i.i, i64 %_2.i.i.i.i, i64 32)
  %_16.i.i.i.i = add i64 %9, %_5.i.i.i3.i
  %_19.i.i.i.i = add i64 %11, %12
  %13 = tail call noundef i64 @llvm.fshl.i64(i64 %9, i64 %9, i64 17)
  %14 = xor i64 %_16.i.i.i.i, %13
  %15 = tail call noundef i64 @llvm.fshl.i64(i64 %11, i64 %11, i64 21)
  %16 = xor i64 %15, %_19.i.i.i.i
  %17 = tail call noundef i64 @llvm.fshl.i64(i64 %_16.i.i.i.i, i64 %_16.i.i.i.i, i64 32)
  %18 = xor i64 %_19.i.i.i.i, %b.i.i.i
  %19 = xor i64 %17, 255
  %_2.i3.i.i.i = add i64 %18, %14
  %_5.i6.i.i.i = add i64 %19, %16
  %20 = tail call noundef i64 @llvm.fshl.i64(i64 %14, i64 %14, i64 13)
  %21 = xor i64 %_2.i3.i.i.i, %20
  %22 = tail call noundef i64 @llvm.fshl.i64(i64 %16, i64 %16, i64 16)
  %23 = xor i64 %_5.i6.i.i.i, %22
  %24 = tail call noundef i64 @llvm.fshl.i64(i64 %_2.i3.i.i.i, i64 %_2.i3.i.i.i, i64 32)
  %_16.i7.i.i.i = add i64 %21, %_5.i6.i.i.i
  %_19.i8.i.i.i = add i64 %23, %24
  %25 = tail call noundef i64 @llvm.fshl.i64(i64 %21, i64 %21, i64 17)
  %26 = xor i64 %_16.i7.i.i.i, %25
  %27 = tail call noundef i64 @llvm.fshl.i64(i64 %23, i64 %23, i64 21)
  %28 = xor i64 %27, %_19.i8.i.i.i
  %29 = tail call noundef i64 @llvm.fshl.i64(i64 %_16.i7.i.i.i, i64 %_16.i7.i.i.i, i64 32)
  %_30.i.i.i.i = add i64 %26, %_19.i8.i.i.i
  %_33.i.i.i.i = add i64 %28, %29
  %30 = tail call noundef i64 @llvm.fshl.i64(i64 %26, i64 %26, i64 13)
  %31 = xor i64 %30, %_30.i.i.i.i
  %32 = tail call noundef i64 @llvm.fshl.i64(i64 %28, i64 %28, i64 16)
  %33 = xor i64 %32, %_33.i.i.i.i
  %34 = tail call noundef i64 @llvm.fshl.i64(i64 %_30.i.i.i.i, i64 %_30.i.i.i.i, i64 32)
  %_44.i.i.i.i = add i64 %31, %_33.i.i.i.i
  %_47.i.i.i.i = add i64 %33, %34
  %35 = tail call noundef i64 @llvm.fshl.i64(i64 %31, i64 %31, i64 17)
  %36 = xor i64 %35, %_44.i.i.i.i
  %37 = tail call noundef i64 @llvm.fshl.i64(i64 %33, i64 %33, i64 21)
  %38 = xor i64 %37, %_47.i.i.i.i
  %39 = tail call noundef i64 @llvm.fshl.i64(i64 %_44.i.i.i.i, i64 %_44.i.i.i.i, i64 32)
  %_58.i.i.i.i = add i64 %36, %_47.i.i.i.i
  %_61.i.i.i.i = add i64 %38, %39
  %40 = tail call noundef i64 @llvm.fshl.i64(i64 %36, i64 %36, i64 13)
  %41 = xor i64 %40, %_58.i.i.i.i
  %42 = tail call noundef i64 @llvm.fshl.i64(i64 %38, i64 %38, i64 16)
  %43 = xor i64 %42, %_61.i.i.i.i
  %_72.i.i.i.i = add i64 %41, %_61.i.i.i.i
  %44 = tail call noundef i64 @llvm.fshl.i64(i64 %41, i64 %41, i64 17)
  %45 = tail call noundef i64 @llvm.fshl.i64(i64 %43, i64 %43, i64 21)
  %46 = tail call noundef i64 @llvm.fshl.i64(i64 %_72.i.i.i.i, i64 %_72.i.i.i.i, i64 32)
  %47 = xor i64 %44, %45
  %48 = xor i64 %47, %46
  %_0.i.i.i = xor i64 %48, %_72.i.i.i.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1805)
  %49 = getelementptr inbounds nuw i8, ptr %self, i64 16
  %_5.i.i = load i64, ptr %49, align 8, !alias.scope !1808, !noalias !1811, !noundef !4
  %b.i.i = icmp eq i64 %_5.i.i, 0
  br i1 %b.i.i, label %bb8.i.i, label %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$7reserve17h3b0d1f8cf6e2c407E.exit.i", !prof !11

bb8.i.i:                                          ; preds = %start
; call hashbrown::raw::RawTable<T,A>::reserve_rehash
  %50 = tail call { i64, i64 } @"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$14reserve_rehash17h5084f6aee36d1827E"(ptr noalias noundef nonnull align 8 dereferenceable(32) %self, i64 noundef 1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %hash_builder, i1 noundef zeroext true), !noalias !1815
  %_8.0.i.i = extractvalue { i64, i64 } %50, 0
  %51 = icmp eq i64 %_8.0.i.i, -9223372036854775807
  tail call void @llvm.assume(i1 %51)
  br label %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$7reserve17h3b0d1f8cf6e2c407E.exit.i"

"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$7reserve17h3b0d1f8cf6e2c407E.exit.i": ; preds = %bb8.i.i, %start
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1816)
  %_30.i.i = lshr i64 %_0.i.i.i, 57
  %tag_hash.i.i = trunc nuw nsw i64 %_30.i.i to i8
  %52 = getelementptr inbounds nuw i8, ptr %self, i64 8
  %_35.i.i = load i64, ptr %52, align 8, !alias.scope !1819, !noalias !1820, !noundef !4
  %_38.i.i = load ptr, ptr %self, align 8, !alias.scope !1819, !noalias !1820, !nonnull !4, !noundef !4
  %.sroa.0.0.vec.insert.i.i.i = insertelement <16 x i8> poison, i8 %tag_hash.i.i, i64 0
  %.sroa.0.15.vec.insert.i.i.i = shufflevector <16 x i8> %.sroa.0.0.vec.insert.i.i.i, <16 x i8> poison, <16 x i32> zeroinitializer
  %invariant.gep.i.i = getelementptr i8, ptr %_38.i.i, i64 -4
  br label %bb1.i.i

bb1.i.i:                                          ; preds = %bb9.i.i, %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$7reserve17h3b0d1f8cf6e2c407E.exit.i"
  %hash.pn.i.i = phi i64 [ %_0.i.i.i, %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$7reserve17h3b0d1f8cf6e2c407E.exit.i" ], [ %65, %bb9.i.i ]
  %insert_index.sroa.4.0.i.i = phi i64 [ undef, %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$7reserve17h3b0d1f8cf6e2c407E.exit.i" ], [ %insert_index.sroa.4.1.i.i, %bb9.i.i ]
  %insert_index.sroa.0.0.i.i = phi i64 [ 0, %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$7reserve17h3b0d1f8cf6e2c407E.exit.i" ], [ %insert_index.sroa.0.1.i.i, %bb9.i.i ]
  %53 = phi i64 [ 0, %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$7reserve17h3b0d1f8cf6e2c407E.exit.i" ], [ %64, %bb9.i.i ]
  %probe_seq.sroa.0.0.i.i = and i64 %hash.pn.i.i, %_35.i.i
  %_36.i.i = getelementptr inbounds nuw i8, ptr %_38.i.i, i64 %probe_seq.sroa.0.0.i.i
  %dst.sroa.0.0.copyload.i35.i.i = load <16 x i8>, ptr %_36.i.i, align 1, !noalias !1821
  %54 = icmp eq <16 x i8> %dst.sroa.0.0.copyload.i35.i.i, %.sroa.0.15.vec.insert.i.i.i
  %55 = bitcast <16 x i1> %54 to i16
  %.not39.i.i = icmp eq i16 %55, 0
  br i1 %.not39.i.i, label %bb16.i.i, label %bb15.i.i

bb15.i.i:                                         ; preds = %bb1.i.i, %bb19.i.i
  %iter.sroa.0.040.i.i = phi i16 [ %_60.i.i, %bb19.i.i ], [ %55, %bb1.i.i ]
  %56 = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %iter.sroa.0.040.i.i, i1 true)
  %_51.i.i = zext nneg i16 %56 to i64
  %_14.i.i = add i64 %probe_seq.sroa.0.0.i.i, %_51.i.i
  %index6.i.i = and i64 %_14.i.i, %_35.i.i
  %_18.i.i.i = sub nsw i64 0, %index6.i.i
  %gep.i.i = getelementptr i32, ptr %invariant.gep.i.i, i64 %_18.i.i.i
  %_4.i.i.i.i.i.i = load i32, ptr %gep.i.i, align 4, !range !42, !alias.scope !1824, !noalias !1831, !noundef !4
  %_0.i.i.i.i.i.i = icmp eq i32 %0, %_4.i.i.i.i.i.i
  br i1 %_0.i.i.i.i.i.i, label %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$25find_or_find_insert_index17h91b5f00056c337cfE.exit", label %bb19.i.i, !prof !1682

bb16.i.i:                                         ; preds = %bb19.i.i, %bb1.i.i
  %_64.not.i.i = icmp eq i64 %insert_index.sroa.0.0.i.i, 1
  br i1 %_64.not.i.i, label %bb6.i.i, label %bb21.i.i, !prof !11

bb19.i.i:                                         ; preds = %bb15.i.i
  %57 = add i16 %iter.sroa.0.040.i.i, -1
  %_60.i.i = and i16 %57, %iter.sroa.0.040.i.i
  %.not.i.i = icmp eq i16 %_60.i.i, 0
  br i1 %.not.i.i, label %bb16.i.i, label %bb15.i.i

bb21.i.i:                                         ; preds = %bb16.i.i
  %58 = icmp slt <16 x i8> %dst.sroa.0.0.copyload.i35.i.i, zeroinitializer
  %59 = bitcast <16 x i1> %58 to i16
  %.not.i.i.i = icmp eq i16 %59, 0
  br i1 %.not.i.i.i, label %bb6.i.i, label %bb3.i.i.i, !prof !11

bb3.i.i.i:                                        ; preds = %bb21.i.i
  %60 = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %59, i1 true)
  %_17.i.i.i = zext nneg i16 %60 to i64
  %_8.i.i.i = add i64 %probe_seq.sroa.0.0.i.i, %_17.i.i.i
  %_7.i.i.i = and i64 %_8.i.i.i, %_35.i.i
  br label %bb6.i.i

bb6.i.i:                                          ; preds = %bb3.i.i.i, %bb21.i.i, %bb16.i.i
  %insert_index.sroa.4.1.i.i = phi i64 [ %insert_index.sroa.4.0.i.i, %bb16.i.i ], [ %_7.i.i.i, %bb3.i.i.i ], [ undef, %bb21.i.i ]
  %insert_index.sroa.0.1.i.i = phi i64 [ %insert_index.sroa.0.0.i.i, %bb16.i.i ], [ 1, %bb3.i.i.i ], [ 0, %bb21.i.i ]
  %61 = trunc nuw i64 %insert_index.sroa.0.1.i.i to i1
  %62 = icmp eq <16 x i8> %dst.sroa.0.0.copyload.i35.i.i, splat (i8 -1)
  %63 = bitcast <16 x i1> %62 to i16
  %b11.not.i.i = icmp ne i16 %63, 0
  %or.cond.not.i.i = and i1 %b11.not.i.i, %61
  br i1 %or.cond.not.i.i, label %bb27.i.i, label %bb9.i.i, !prof !1837

bb9.i.i:                                          ; preds = %bb6.i.i
  %64 = add i64 %53, 16
  %65 = add i64 %64, %probe_seq.sroa.0.0.i.i
  br label %bb1.i.i

bb27.i.i:                                         ; preds = %bb6.i.i
  %_8.i19.i.i = getelementptr inbounds nuw i8, ptr %_38.i.i, i64 %insert_index.sroa.4.1.i.i
  %_12.i20.i.i = load i8, ptr %_8.i19.i.i, align 1, !noalias !1838, !noundef !4
  %b.i.i.i2 = icmp sgt i8 %_12.i20.i.i, -1
  br i1 %b.i.i.i2, label %bb2.i.i.i, label %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$25find_or_find_insert_index17h91b5f00056c337cfE.exit", !prof !11

bb2.i.i.i:                                        ; preds = %bb27.i.i
  %66 = load <16 x i8>, ptr %_38.i.i, align 16, !noalias !1841
  %67 = icmp slt <16 x i8> %66, zeroinitializer
  %68 = bitcast <16 x i1> %67 to i16
  %69 = icmp ne i16 %68, 0
  tail call void @llvm.assume(i1 %69)
  %70 = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %68, i1 true)
  %_25.i.i.i = zext nneg i16 %70 to i64
  br label %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$25find_or_find_insert_index17h91b5f00056c337cfE.exit"

"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$25find_or_find_insert_index17h91b5f00056c337cfE.exit": ; preds = %bb15.i.i, %bb27.i.i, %bb2.i.i.i
  %_0.sroa.3.0.i.i = phi i64 [ %_25.i.i.i, %bb2.i.i.i ], [ %insert_index.sroa.4.1.i.i, %bb27.i.i ], [ %index6.i.i, %bb15.i.i ]
  %_0.sroa.0.0.i.i = phi i1 [ true, %bb2.i.i.i ], [ true, %bb27.i.i ], [ false, %bb15.i.i ]
  %71 = inttoptr i64 %_0.sroa.3.0.i.i to ptr
  %_27.i = sub nsw i64 0, %_0.sroa.3.0.i.i
  %72 = getelementptr inbounds i32, ptr %_38.i.i, i64 %_27.i
  %_0.sroa.3.0.i = select i1 %_0.sroa.0.0.i.i, ptr %71, ptr %72
  br i1 %_0.sroa.0.0.i.i, label %bb2, label %bb3

bb2:                                              ; preds = %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$25find_or_find_insert_index17h91b5f00056c337cfE.exit"
  %73 = ptrtoint ptr %_0.sroa.3.0.i to i64
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1844)
  %_9.i = getelementptr inbounds nuw i8, ptr %_38.i.i, i64 %73
  %old_ctrl.i = load i8, ptr %_9.i, align 1, !noalias !1844, !noundef !4
  %_14.i = and i8 %old_ctrl.i, 1
  %_12.i = zext nneg i8 %_14.i to i64
  %74 = load i64, ptr %49, align 8, !alias.scope !1844, !noundef !4
  %75 = sub i64 %74, %_12.i
  store i64 %75, ptr %49, align 8, !alias.scope !1844
  %_17.i = add i64 %73, -16
  %_16.i = and i64 %_17.i, %_35.i.i
  store i8 %tag_hash.i.i, ptr %_9.i, align 1, !noalias !1844
  %76 = getelementptr i8, ptr %_38.i.i, i64 %_16.i
  %_24.i = getelementptr i8, ptr %76, i64 16
  store i8 %tag_hash.i.i, ptr %_24.i, align 1, !noalias !1844
  %77 = getelementptr inbounds nuw i8, ptr %self, i64 24
  %78 = load i64, ptr %77, align 8, !alias.scope !1844, !noundef !4
  %79 = add i64 %78, 1
  store i64 %79, ptr %77, align 8, !alias.scope !1844
  %_37.i = sub nsw i64 0, %73
  %80 = getelementptr inbounds i32, ptr %_38.i.i, i64 %_37.i
  %81 = getelementptr inbounds i8, ptr %80, i64 -4
  store i32 %0, ptr %81, align 4, !noalias !1844
  br label %bb4

bb3:                                              ; preds = %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$25find_or_find_insert_index17h91b5f00056c337cfE.exit"
  %82 = icmp ne ptr %_0.sroa.3.0.i, null
  tail call void @llvm.assume(i1 %82)
  br label %bb4

bb4:                                              ; preds = %bb2, %bb3
  %_0.sroa.0.0 = xor i1 %_0.sroa.0.0.i.i, true
  ret i1 %_0.sroa.0.0
}

; hashbrown::map::HashMap<K,V,S,A>::remove
; Function Attrs: nofree norecurse nosync nounwind nonlazybind uwtable
define noundef zeroext i1 @"_ZN9hashbrown3map28HashMap$LT$K$C$V$C$S$C$A$GT$6remove17h837ccbb2fd1ee208E"(ptr noalias noundef align 8 captures(none) dereferenceable(48) %self, ptr noalias noundef readonly align 4 captures(none) dereferenceable(4) %k) unnamed_addr #11 {
start:
; call hashbrown::map::HashMap<K,V,S,A>::remove_entry
  %0 = tail call noundef i32 @"_ZN9hashbrown3map28HashMap$LT$K$C$V$C$S$C$A$GT$12remove_entry17h19595892a878febaE"(ptr noalias noundef align 8 dereferenceable(48) %self, ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable(4) %k)
  %.not = icmp ne i32 %0, 1114112
  ret i1 %.not
}

; hashbrown::raw::RawTableInner::drop_elements
; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define void @_ZN9hashbrown3raw13RawTableInner13drop_elements17h8d9d52915c8ec5b0E(ptr noalias noundef readnone align 8 captures(none) dereferenceable(32) %self) unnamed_addr #9 {
start:
  ret void
}

; hashbrown::raw::RawTableInner::drop_inner_table
; Function Attrs: nounwind nonlazybind uwtable
define void @_ZN9hashbrown3raw13RawTableInner16drop_inner_table17hbdff987bad8a68daE(ptr noalias noundef readonly align 8 captures(none) dereferenceable(32) %self, ptr noalias noundef nonnull readonly align 1 captures(none) %alloc, i64 noundef %table_layout.0, i64 noundef %table_layout.1) unnamed_addr #3 {
start:
  %0 = getelementptr inbounds nuw i8, ptr %self, i64 8
  %_6 = load i64, ptr %0, align 8, !noundef !4
  %_4 = icmp eq i64 %_6, 0
  br i1 %_4, label %bb3, label %bb1

bb1:                                              ; preds = %start
  %_10 = add i64 %_6, 1
  %1 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %table_layout.0, i64 %_10)
  %_25.1.i = extractvalue { i64, i1 } %1, 1
  br i1 %_25.1.i, label %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hded40b9ddefe4757E.exit, label %bb8.i, !prof !11

bb8.i:                                            ; preds = %bb1
  %_25.0.i = extractvalue { i64, i1 } %1, 0
  %rhs.i = add i64 %table_layout.1, -1
  %_32.0.i = add i64 %_25.0.i, %rhs.i
  %_32.1.i = icmp ult i64 %_32.0.i, %_25.0.i
  br i1 %_32.1.i, label %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hded40b9ddefe4757E.exit, label %bb11.i, !prof !11

bb11.i:                                           ; preds = %bb8.i
  %_14.i = sub i64 0, %table_layout.1
  %ctrl_offset.i = and i64 %_32.0.i, %_14.i
  %rhs5.i = add i64 %_6, 17
  %_37.0.i = add i64 %rhs5.i, %ctrl_offset.i
  %_37.1.i = icmp ult i64 %_37.0.i, %ctrl_offset.i
  %_20.i = sub i64 -9223372036854775808, %table_layout.1
  %_19.i = icmp ugt i64 %_37.0.i, %_20.i
  %or.cond = or i1 %_37.1.i, %_19.i
  br i1 %or.cond, label %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hded40b9ddefe4757E.exit, label %bb2.i, !prof !1847

bb2.i:                                            ; preds = %bb11.i
  %2 = icmp sgt i64 %rhs.i, -1
  tail call void @llvm.assume(i1 %2)
  br label %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hded40b9ddefe4757E.exit

_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hded40b9ddefe4757E.exit: ; preds = %bb1, %bb8.i, %bb11.i, %bb2.i
  %_9.sroa.9.0 = phi i64 [ %ctrl_offset.i, %bb2.i ], [ undef, %bb11.i ], [ undef, %bb8.i ], [ undef, %bb1 ]
  %_9.sroa.7.0 = phi i64 [ %_37.0.i, %bb2.i ], [ undef, %bb11.i ], [ undef, %bb8.i ], [ undef, %bb1 ]
  %_9.sroa.0.0 = phi i64 [ %table_layout.1, %bb2.i ], [ 0, %bb11.i ], [ 0, %bb8.i ], [ 0, %bb1 ]
  %3 = icmp ne i64 %_9.sroa.0.0, 0
  tail call void @llvm.assume(i1 %3)
  %_4.not.i = icmp eq i64 %_9.sroa.7.0, 0
  br i1 %_4.not.i, label %bb3, label %bb1.i2

bb1.i2:                                           ; preds = %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hded40b9ddefe4757E.exit
  %self1 = load ptr, ptr %self, align 8, !nonnull !4, !noundef !4
  %_18 = sub nsw i64 0, %_9.sroa.9.0
  %ptr = getelementptr inbounds i8, ptr %self1, i64 %_18
; call __rustc::__rust_dealloc
  tail call void @_RNvCsdBezzDwma51_7___rustc14___rust_dealloc(ptr noundef nonnull %ptr, i64 noundef %_9.sroa.7.0, i64 noundef range(i64 1, -9223372036854775807) %_9.sroa.0.0) #32
  br label %bb3

bb3:                                              ; preds = %bb1.i2, %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hded40b9ddefe4757E.exit, %start
  ret void
}

; hashbrown::raw::RawTableInner::new_uninitialized
; Function Attrs: nonlazybind uwtable
define void @_ZN9hashbrown3raw13RawTableInner17new_uninitialized17hd439e4c49046c978E(ptr dead_on_unwind noalias noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) initializes((0, 24)) %_0, ptr noalias noundef nonnull readonly align 1 captures(none) %alloc, i64 noundef %table_layout.0, i64 noundef %table_layout.1, i64 noundef %0, i1 noundef zeroext %fallibility) unnamed_addr #1 {
start:
  %1 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %table_layout.0, i64 %0)
  %_25.1.i = extractvalue { i64, i1 } %1, 1
  br i1 %_25.1.i, label %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hded40b9ddefe4757E.exit, label %bb8.i, !prof !11

bb8.i:                                            ; preds = %start
  %_25.0.i = extractvalue { i64, i1 } %1, 0
  %rhs.i = add i64 %table_layout.1, -1
  %_32.0.i = add i64 %_25.0.i, %rhs.i
  %_32.1.i = icmp ult i64 %_32.0.i, %_25.0.i
  br i1 %_32.1.i, label %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hded40b9ddefe4757E.exit, label %bb11.i, !prof !11

bb11.i:                                           ; preds = %bb8.i
  %_14.i = sub i64 0, %table_layout.1
  %ctrl_offset.i = and i64 %_32.0.i, %_14.i
  %rhs5.i = add i64 %0, 16
  %_37.0.i = add i64 %rhs5.i, %ctrl_offset.i
  %_37.1.i = icmp ult i64 %_37.0.i, %ctrl_offset.i
  %_20.i = sub i64 -9223372036854775808, %table_layout.1
  %_19.i = icmp ugt i64 %_37.0.i, %_20.i
  %or.cond = or i1 %_37.1.i, %_19.i
  br i1 %or.cond, label %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hded40b9ddefe4757E.exit, label %bb2.i, !prof !1847

bb2.i:                                            ; preds = %bb11.i
  %2 = icmp sgt i64 %rhs.i, -1
  tail call void @llvm.assume(i1 %2)
  br label %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hded40b9ddefe4757E.exit

_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hded40b9ddefe4757E.exit: ; preds = %start, %bb8.i, %bb11.i, %bb2.i
  %_6.sroa.10.0 = phi i64 [ %ctrl_offset.i, %bb2.i ], [ undef, %bb11.i ], [ undef, %bb8.i ], [ undef, %start ]
  %_6.sroa.8.0 = phi i64 [ %_37.0.i, %bb2.i ], [ undef, %bb11.i ], [ undef, %bb8.i ], [ undef, %start ]
  %_6.sroa.0.0 = phi i64 [ %table_layout.1, %bb2.i ], [ 0, %bb11.i ], [ 0, %bb8.i ], [ 0, %start ]
  %.not = icmp eq i64 %_6.sroa.0.0, 0
  br i1 %.not, label %bb3, label %bb4

bb4:                                              ; preds = %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hded40b9ddefe4757E.exit
  %3 = icmp eq i64 %_6.sroa.8.0, 0
  br i1 %3, label %bb2.i.i, label %bb4.i.i

bb2.i.i:                                          ; preds = %bb4
  %_17.i.i = inttoptr i64 %_6.sroa.0.0 to ptr
  br label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h02618852de544ee2E.exit"

bb4.i.i:                                          ; preds = %bb4
; call __rustc::__rust_no_alloc_shim_is_unstable_v2
  tail call void @_RNvCsdBezzDwma51_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #32
; call __rustc::__rust_alloc
  %4 = tail call noundef ptr @_RNvCsdBezzDwma51_7___rustc12___rust_alloc(i64 noundef %_6.sroa.8.0, i64 noundef range(i64 1, -9223372036854775807) %_6.sroa.0.0) #32
  br label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h02618852de544ee2E.exit"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h02618852de544ee2E.exit": ; preds = %bb2.i.i, %bb4.i.i
  %_0.sroa.0.0.i.i = phi ptr [ %_17.i.i, %bb2.i.i ], [ %4, %bb4.i.i ]
  %5 = icmp eq ptr %_0.sroa.0.0.i.i, null
  br i1 %5, label %bb15, label %bb11

bb3:                                              ; preds = %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hded40b9ddefe4757E.exit
; call hashbrown::raw::Fallibility::capacity_overflow
  %6 = tail call { i64, i64 } @_ZN9hashbrown3raw11Fallibility17capacity_overflow17h2ba85003cd4f3895E(i1 noundef zeroext %fallibility)
  %_9.0 = extractvalue { i64, i64 } %6, 0
  %_9.1 = extractvalue { i64, i64 } %6, 1
  %7 = getelementptr inbounds nuw i8, ptr %_0, i64 8
  store i64 %_9.0, ptr %7, align 8
  %8 = getelementptr inbounds nuw i8, ptr %_0, i64 16
  store i64 %_9.1, ptr %8, align 8
  store ptr null, ptr %_0, align 8
  br label %bb13

bb13:                                             ; preds = %bb15, %bb11, %bb3
  ret void

bb15:                                             ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h02618852de544ee2E.exit"
; call hashbrown::raw::Fallibility::alloc_err
  %9 = tail call { i64, i64 } @_ZN9hashbrown3raw11Fallibility9alloc_err17hdec7f04e13c07ca8E(i1 noundef zeroext %fallibility, i64 noundef %_6.sroa.0.0, i64 noundef %_6.sroa.8.0)
  %_21.0 = extractvalue { i64, i64 } %9, 0
  %_21.1 = extractvalue { i64, i64 } %9, 1
  %10 = getelementptr inbounds nuw i8, ptr %_0, i64 8
  store i64 %_21.0, ptr %10, align 8
  %11 = getelementptr inbounds nuw i8, ptr %_0, i64 16
  store i64 %_21.1, ptr %11, align 8
  store ptr null, ptr %_0, align 8
  br label %bb13

bb11:                                             ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h02618852de544ee2E.exit"
  %ptr = getelementptr inbounds nuw i8, ptr %_0.sroa.0.0.i.i, i64 %_6.sroa.10.0
  %_26 = add i64 %0, -1
  %_35 = icmp ult i64 %_26, 8
  %_367 = lshr i64 %0, 3
  %12 = mul nuw i64 %_367, 7
  %bucket_mask.sroa.0.0 = select i1 %_35, i64 %_26, i64 %12
  store ptr %ptr, ptr %_0, align 8
  %_25.sroa.4.0._0.sroa_idx = getelementptr inbounds nuw i8, ptr %_0, i64 8
  store i64 %_26, ptr %_25.sroa.4.0._0.sroa_idx, align 8
  %_25.sroa.5.0._0.sroa_idx = getelementptr inbounds nuw i8, ptr %_0, i64 16
  store i64 %bucket_mask.sroa.0.0, ptr %_25.sroa.5.0._0.sroa_idx, align 8
  %_25.sroa.6.0._0.sroa_idx = getelementptr inbounds nuw i8, ptr %_0, i64 24
  store i64 0, ptr %_25.sroa.6.0._0.sroa_idx, align 8
  br label %bb13
}

; hashbrown::raw::RawTable<T,A>::remove_entry
; Function Attrs: nofree norecurse nosync nounwind nonlazybind uwtable
define noundef range(i32 0, 1114113) i32 @"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$12remove_entry17h4b9e890c1c3ca8c0E"(ptr noalias noundef align 8 captures(none) dereferenceable(32) %self, i64 noundef %hash, ptr noalias noundef readonly align 4 captures(none) dereferenceable(4) %eq) unnamed_addr #11 personality ptr @rust_eh_personality {
start:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1848)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1851)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1853)
  %_21.i.i = lshr i64 %hash, 57
  %tag_hash.i.i = trunc nuw nsw i64 %_21.i.i to i8
  %0 = getelementptr inbounds nuw i8, ptr %self, i64 8
  %_26.i.i = load i64, ptr %0, align 8, !alias.scope !1856, !noalias !1851, !noundef !4
  %_29.i.i = load ptr, ptr %self, align 8, !alias.scope !1856, !noalias !1851, !nonnull !4, !noundef !4
  %.sroa.0.0.vec.insert.i.i = insertelement <16 x i8> poison, i8 %tag_hash.i.i, i64 0
  %.sroa.0.15.vec.insert.i.i = shufflevector <16 x i8> %.sroa.0.0.vec.insert.i.i, <16 x i8> poison, <16 x i32> zeroinitializer
  %invariant.gep.i = getelementptr i8, ptr %_29.i.i, i64 -4
  %_3.i.i.i.i.i = load i32, ptr %eq, align 4, !range !42, !alias.scope !1851, !noalias !1848
  br label %bb1.i.i

bb1.i.i:                                          ; preds = %bb20.i.i, %start
  %probe_seq.sroa.9.0.i.i = phi i64 [ 0, %start ], [ %7, %bb20.i.i ]
  %hash.pn.i = phi i64 [ %hash, %start ], [ %8, %bb20.i.i ]
  %probe_seq.sroa.0.0.i.i = and i64 %hash.pn.i, %_26.i.i
  %_27.i.i = getelementptr inbounds nuw i8, ptr %_29.i.i, i64 %probe_seq.sroa.0.0.i.i
  %dst.sroa.0.0.copyload.i17.i = load <16 x i8>, ptr %_27.i.i, align 1, !noalias !1857
  %1 = icmp eq <16 x i8> %dst.sroa.0.0.copyload.i17.i, %.sroa.0.15.vec.insert.i.i
  %2 = bitcast <16 x i1> %1 to i16
  %.not.i.not23.i = icmp eq i16 %2, 0
  br i1 %.not.i.not23.i, label %bb11.i.i, label %bb10.i.i

bb10.i.i:                                         ; preds = %bb1.i.i, %bb17.i.i
  %iter.sroa.0.0.i24.i = phi i16 [ %_51.i.i, %bb17.i.i ], [ %2, %bb1.i.i ]
  %3 = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %iter.sroa.0.0.i24.i, i1 true)
  %_42.i.i = zext nneg i16 %3 to i64
  %_13.i.i = add i64 %probe_seq.sroa.0.0.i.i, %_42.i.i
  %index5.i.i = and i64 %_13.i.i, %_26.i.i
  %_18.i.i = sub nsw i64 0, %index5.i.i
  %gep.i = getelementptr i32, ptr %invariant.gep.i, i64 %_18.i.i
  %_4.i.i.i.i.i = load i32, ptr %gep.i, align 4, !range !42, !alias.scope !1860, !noalias !1867, !noundef !4
  %_0.i.i.i.i.i = icmp eq i32 %_3.i.i.i.i.i, %_4.i.i.i.i.i
  br i1 %_0.i.i.i.i.i, label %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$4find17h099eb6b1ca84dda3E.exit", label %bb17.i.i, !prof !1682

bb11.i.i:                                         ; preds = %bb17.i.i, %bb1.i.i
  %4 = icmp eq <16 x i8> %dst.sroa.0.0.copyload.i17.i, splat (i8 -1)
  %5 = bitcast <16 x i1> %4 to i16
  %b8.not.i.i = icmp eq i16 %5, 0
  br i1 %b8.not.i.i, label %bb20.i.i, label %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$4find17h099eb6b1ca84dda3E.exit", !prof !11

bb17.i.i:                                         ; preds = %bb10.i.i
  %6 = add i16 %iter.sroa.0.0.i24.i, -1
  %_51.i.i = and i16 %6, %iter.sroa.0.0.i24.i
  %.not.i.not.i = icmp eq i16 %_51.i.i, 0
  br i1 %.not.i.not.i, label %bb11.i.i, label %bb10.i.i

bb20.i.i:                                         ; preds = %bb11.i.i
  %7 = add i64 %probe_seq.sroa.9.0.i.i, 16
  %8 = add i64 %probe_seq.sroa.0.0.i.i, %7
  br label %bb1.i.i

"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$4find17h099eb6b1ca84dda3E.exit": ; preds = %bb11.i.i, %bb10.i.i
  %.not.i.not20.i = phi i1 [ false, %bb10.i.i ], [ true, %bb11.i.i ]
  %_0.sroa.3.0.i.i = phi i64 [ %index5.i.i, %bb10.i.i ], [ undef, %bb11.i.i ]
  %_23.i = sub nsw i64 0, %_0.sroa.3.0.i.i
  %9 = getelementptr inbounds i32, ptr %_29.i.i, i64 %_23.i
  br i1 %.not.i.not20.i, label %bb6, label %bb4

bb4:                                              ; preds = %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$4find17h099eb6b1ca84dda3E.exit"
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1873)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1876)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1879)
  %_6.i.i.i = add nsw i64 %_0.sroa.3.0.i.i, -16
  %index_before.i.i.i = and i64 %_6.i.i.i, %_26.i.i
  %_15.i.i.i = getelementptr inbounds nuw i8, ptr %_29.i.i, i64 %index_before.i.i.i
  %dst.sroa.0.0.copyload.i23.i.i.i = load <16 x i8>, ptr %_15.i.i.i, align 1, !noalias !1882
  %10 = icmp eq <16 x i8> %dst.sroa.0.0.copyload.i23.i.i.i, splat (i8 -1)
  %11 = bitcast <16 x i1> %10 to i16
  %_24.i.i.i = getelementptr inbounds nuw i8, ptr %_29.i.i, i64 %_0.sroa.3.0.i.i
  %dst.sroa.0.0.copyload.i624.i.i.i = load <16 x i8>, ptr %_24.i.i.i, align 1, !noalias !1886
  %12 = icmp eq <16 x i8> %dst.sroa.0.0.copyload.i624.i.i.i, splat (i8 -1)
  %13 = bitcast <16 x i1> %12 to i16
  %14 = tail call range(i16 0, 17) i16 @llvm.ctlz.i16(i16 %11, i1 false)
  %15 = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %13, i1 false)
  %narrow.i.i.i = add nuw nsw i16 %15, %14
  %_11.i.i.i = icmp samesign ugt i16 %narrow.i.i.i, 15
  br i1 %_11.i.i.i, label %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$6remove17h8d367b2999601316E.exit", label %bb2.i.i.i

bb2.i.i.i:                                        ; preds = %bb4
  %16 = getelementptr inbounds nuw i8, ptr %self, i64 16
  %17 = load i64, ptr %16, align 8, !alias.scope !1889, !noalias !1890, !noundef !4
  %18 = add i64 %17, 1
  store i64 %18, ptr %16, align 8, !alias.scope !1889, !noalias !1890
  br label %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$6remove17h8d367b2999601316E.exit"

"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$6remove17h8d367b2999601316E.exit": ; preds = %bb4, %bb2.i.i.i
  %ctrl.sroa.0.0.i.i.i = phi i8 [ -1, %bb2.i.i.i ], [ -128, %bb4 ]
  store i8 %ctrl.sroa.0.0.i.i.i, ptr %_24.i.i.i, align 1, !noalias !1891
  %_46.i.i.i = getelementptr i8, ptr %_15.i.i.i, i64 16
  store i8 %ctrl.sroa.0.0.i.i.i, ptr %_46.i.i.i, align 1, !noalias !1891
  %19 = getelementptr inbounds nuw i8, ptr %self, i64 24
  %20 = load i64, ptr %19, align 8, !alias.scope !1889, !noalias !1890, !noundef !4
  %21 = add i64 %20, -1
  store i64 %21, ptr %19, align 8, !alias.scope !1889, !noalias !1890
  %22 = getelementptr inbounds i8, ptr %9, i64 -4
  %_5.i = load i32, ptr %22, align 4, !range !42, !noalias !1873, !noundef !4
  br label %bb6

bb6:                                              ; preds = %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$4find17h099eb6b1ca84dda3E.exit", %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$6remove17h8d367b2999601316E.exit"
  %_0.sroa.0.0 = phi i32 [ %_5.i, %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$6remove17h8d367b2999601316E.exit" ], [ 1114112, %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$4find17h099eb6b1ca84dda3E.exit" ]
  ret i32 %_0.sroa.0.0
}

; hashbrown::raw::RawTable<T,A>::erase_no_drop
; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn uwtable
define void @"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$13erase_no_drop17h92401ca7795c8600E"(ptr noalias noundef align 8 captures(none) dereferenceable(32) %self, ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %item) unnamed_addr #15 {
start:
  %_6 = load ptr, ptr %self, align 8, !nonnull !4, !noundef !4
  %self1 = load ptr, ptr %item, align 8, !nonnull !4, !noundef !4
  %0 = ptrtoint ptr %_6 to i64
  %1 = ptrtoint ptr %self1 to i64
  %2 = sub i64 %0, %1
  %3 = ashr exact i64 %2, 2
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1892)
  %_6.i = add nsw i64 %3, -16
  %4 = getelementptr inbounds nuw i8, ptr %self, i64 8
  %_7.i = load i64, ptr %4, align 8, !alias.scope !1892, !noundef !4
  %index_before.i = and i64 %_6.i, %_7.i
  %_15.i = getelementptr inbounds nuw i8, ptr %_6, i64 %index_before.i
  %dst.sroa.0.0.copyload.i23.i = load <16 x i8>, ptr %_15.i, align 1, !noalias !1895
  %5 = icmp eq <16 x i8> %dst.sroa.0.0.copyload.i23.i, splat (i8 -1)
  %6 = bitcast <16 x i1> %5 to i16
  %_24.i = getelementptr inbounds nuw i8, ptr %_6, i64 %3
  %dst.sroa.0.0.copyload.i624.i = load <16 x i8>, ptr %_24.i, align 1, !noalias !1898
  %7 = icmp eq <16 x i8> %dst.sroa.0.0.copyload.i624.i, splat (i8 -1)
  %8 = bitcast <16 x i1> %7 to i16
  %9 = tail call range(i16 0, 17) i16 @llvm.ctlz.i16(i16 %6, i1 false)
  %10 = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %8, i1 false)
  %narrow.i = add nuw nsw i16 %10, %9
  %_11.i = icmp samesign ugt i16 %narrow.i, 15
  br i1 %_11.i, label %_ZN9hashbrown3raw13RawTableInner5erase17hbb0723b963416dfbE.exit, label %bb2.i

bb2.i:                                            ; preds = %start
  %11 = getelementptr inbounds nuw i8, ptr %self, i64 16
  %12 = load i64, ptr %11, align 8, !alias.scope !1892, !noundef !4
  %13 = add i64 %12, 1
  store i64 %13, ptr %11, align 8, !alias.scope !1892
  br label %_ZN9hashbrown3raw13RawTableInner5erase17hbb0723b963416dfbE.exit

_ZN9hashbrown3raw13RawTableInner5erase17hbb0723b963416dfbE.exit: ; preds = %start, %bb2.i
  %ctrl.sroa.0.0.i = phi i8 [ -1, %bb2.i ], [ -128, %start ]
  store i8 %ctrl.sroa.0.0.i, ptr %_24.i, align 1, !noalias !1892
  %_46.i = getelementptr i8, ptr %_15.i, i64 16
  store i8 %ctrl.sroa.0.0.i, ptr %_46.i, align 1, !noalias !1892
  %14 = getelementptr inbounds nuw i8, ptr %self, i64 24
  %15 = load i64, ptr %14, align 8, !alias.scope !1892, !noundef !4
  %16 = add i64 %15, -1
  store i64 %16, ptr %14, align 8, !alias.scope !1892
  ret void
}

; hashbrown::raw::RawTable<T,A>::reserve_rehash
; Function Attrs: cold noinline nonlazybind uwtable
define { i64, i64 } @"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$14reserve_rehash17h5084f6aee36d1827E"(ptr noalias noundef align 8 captures(none) dereferenceable(32) %self, i64 noundef %additional, ptr noalias noundef readonly align 8 captures(none) dereferenceable(16) %0, i1 noundef zeroext %fallibility) unnamed_addr #16 personality ptr @rust_eh_personality {
start:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1901)
  %1 = getelementptr inbounds nuw i8, ptr %self, i64 24
  %self1.i = load i64, ptr %1, align 8, !alias.scope !1901, !noalias !1904, !noundef !4
  %_21.0.i = add i64 %self1.i, %additional
  %_21.1.i = icmp ult i64 %_21.0.i, %self1.i
  br i1 %_21.1.i, label %bb9.i, label %bb11.i, !prof !11

bb11.i:                                           ; preds = %start
  %2 = getelementptr inbounds nuw i8, ptr %self, i64 8
  %3 = load i64, ptr %2, align 8, !alias.scope !1901, !noalias !1904, !noundef !4
  %_24.i = icmp ult i64 %3, 8
  %_26.i = add i64 %3, 1
  %_255.i = lshr i64 %_26.i, 3
  %4 = mul nuw i64 %_255.i, 7
  %full_capacity.sroa.0.0.i = select i1 %_24.i, i64 %3, i64 %4
  %_146.i = lshr i64 %full_capacity.sroa.0.0.i, 1
  %_13.not.i = icmp ugt i64 %_21.0.i, %_146.i
  br i1 %_13.not.i, label %bb4.i, label %bb2.i

bb9.i:                                            ; preds = %start
; call hashbrown::raw::Fallibility::capacity_overflow
  %5 = tail call { i64, i64 } @_ZN9hashbrown3raw11Fallibility17capacity_overflow17h2ba85003cd4f3895E(i1 noundef zeroext %fallibility), !noalias !1906
  %_11.0.i = extractvalue { i64, i64 } %5, 0
  %_11.1.i = extractvalue { i64, i64 } %5, 1
  br label %_ZN9hashbrown3raw13RawTableInner20reserve_rehash_inner17h7ec2af33c7dfb99eE.exit

bb4.i:                                            ; preds = %bb11.i
  %_19.i = add nuw i64 %full_capacity.sroa.0.0.i, 1
  %_0.sroa.0.0.i3 = tail call noundef i64 @llvm.umax.i64(i64 %_19.i, i64 %_21.0.i)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1907)
  %_6.i.i = icmp ult i64 %_0.sroa.0.0.i3, 15
  br i1 %_6.i.i, label %bb8.i.i, label %bb16.i.i6

bb16.i.i6:                                        ; preds = %bb4.i
  %_33.1.i.i = icmp ugt i64 %_0.sroa.0.0.i3, 2305843009213693951
  br i1 %_33.1.i.i, label %_ZN9hashbrown3raw19capacity_to_buckets17h868826abfb220acaE.exit.i, label %bb29.i.i, !prof !11

bb29.i.i:                                         ; preds = %bb16.i.i6
  %_33.0.i.i = shl nuw i64 %_0.sroa.0.0.i3, 3
  %adjusted_cap.i.i = udiv i64 %_33.0.i.i, 7
  %p.i.i = add nsw i64 %adjusted_cap.i.i, -1
  %6 = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %p.i.i, i1 true)
  %7 = lshr i64 -1, %6
  %8 = add nuw nsw i64 %7, 1
  br label %_ZN9hashbrown3raw19capacity_to_buckets17h868826abfb220acaE.exit.i

bb8.i.i:                                          ; preds = %bb4.i
  %_15.i.i = icmp ult i64 %_0.sroa.0.0.i3, 4
  %9 = and i64 %_0.sroa.0.0.i3, 8
  %..i.i = add nuw nsw i64 %9, 8
  %buckets.sroa.0.0.i.i = select i1 %_15.i.i, i64 4, i64 %..i.i
  br label %_ZN9hashbrown3raw19capacity_to_buckets17h868826abfb220acaE.exit.i

_ZN9hashbrown3raw19capacity_to_buckets17h868826abfb220acaE.exit.i: ; preds = %bb8.i.i, %bb29.i.i, %bb16.i.i6
  %_0.sroa.4.0.i.i = phi i64 [ %buckets.sroa.0.0.i.i, %bb8.i.i ], [ undef, %bb16.i.i6 ], [ %8, %bb29.i.i ]
  %_0.sroa.0.0.i.i7 = phi i1 [ true, %bb8.i.i ], [ false, %bb16.i.i6 ], [ true, %bb29.i.i ]
  br i1 %_0.sroa.0.0.i.i7, label %bb10.i, label %bb9.i8

bb10.i:                                           ; preds = %_ZN9hashbrown3raw19capacity_to_buckets17h868826abfb220acaE.exit.i
  %_32.1.i.i.i = icmp ugt i64 %_0.sroa.4.0.i.i, 4611686018427387900
  br i1 %_32.1.i.i.i, label %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hded40b9ddefe4757E.exit.i.i, label %bb11.i.i.i, !prof !644

bb11.i.i.i:                                       ; preds = %bb10.i
  %_25.0.i.i.i = shl nuw i64 %_0.sroa.4.0.i.i, 2
  %_32.0.i.i.i = add i64 %_25.0.i.i.i, 15
  %ctrl_offset.i.i.i = and i64 %_32.0.i.i.i, -16
  %rhs5.i.i.i = add nuw nsw i64 %_0.sroa.4.0.i.i, 16
  %_37.0.i.i.i = add i64 %rhs5.i.i.i, %ctrl_offset.i.i.i
  %_37.1.i.i.i = icmp ult i64 %_37.0.i.i.i, %ctrl_offset.i.i.i
  %_19.i.i.i = icmp ugt i64 %_37.0.i.i.i, 9223372036854775792
  %or.cond.i.i = or i1 %_37.1.i.i.i, %_19.i.i.i
  br i1 %or.cond.i.i, label %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hded40b9ddefe4757E.exit.i.i, label %bb2.i.i.i, !prof !1847

bb2.i.i.i:                                        ; preds = %bb11.i.i.i
  br label %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hded40b9ddefe4757E.exit.i.i

_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hded40b9ddefe4757E.exit.i.i: ; preds = %bb2.i.i.i, %bb11.i.i.i, %bb10.i
  %_6.sroa.10.0.i.i = phi i64 [ %ctrl_offset.i.i.i, %bb2.i.i.i ], [ undef, %bb11.i.i.i ], [ undef, %bb10.i ]
  %_6.sroa.8.0.i.i = phi i64 [ %_37.0.i.i.i, %bb2.i.i.i ], [ undef, %bb11.i.i.i ], [ undef, %bb10.i ]
  %.not.i.i = phi i1 [ false, %bb2.i.i.i ], [ true, %bb11.i.i.i ], [ true, %bb10.i ]
  %_6.sroa.0.0.i.i = phi i64 [ 16, %bb2.i.i.i ], [ 0, %bb11.i.i.i ], [ 0, %bb10.i ]
  br i1 %.not.i.i, label %bb3.i.i14, label %bb4.i.i11

bb4.i.i11:                                        ; preds = %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hded40b9ddefe4757E.exit.i.i
  %10 = icmp eq i64 %_6.sroa.8.0.i.i, 0
  br i1 %10, label %bb2.i.i.i.i, label %bb4.i.i.i.i

bb2.i.i.i.i:                                      ; preds = %bb4.i.i11
  %_17.i.i.i.i = inttoptr i64 %_6.sroa.0.0.i.i to ptr
  br label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h02618852de544ee2E.exit.i.i"

bb4.i.i.i.i:                                      ; preds = %bb4.i.i11
; call __rustc::__rust_no_alloc_shim_is_unstable_v2
  tail call void @_RNvCsdBezzDwma51_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #32, !noalias !1910
; call __rustc::__rust_alloc
  %11 = tail call noundef ptr @_RNvCsdBezzDwma51_7___rustc12___rust_alloc(i64 noundef %_6.sroa.8.0.i.i, i64 noundef range(i64 1, -9223372036854775807) %_6.sroa.0.0.i.i) #32, !noalias !1910
  br label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h02618852de544ee2E.exit.i.i"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h02618852de544ee2E.exit.i.i": ; preds = %bb4.i.i.i.i, %bb2.i.i.i.i
  %_0.sroa.0.0.i.i.i.i = phi ptr [ %_17.i.i.i.i, %bb2.i.i.i.i ], [ %11, %bb4.i.i.i.i ]
  %12 = icmp eq ptr %_0.sroa.0.0.i.i.i.i, null
  br i1 %12, label %bb15.i.i13, label %bb11.i.i12

bb3.i.i14:                                        ; preds = %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hded40b9ddefe4757E.exit.i.i
; call hashbrown::raw::Fallibility::capacity_overflow
  %13 = tail call { i64, i64 } @_ZN9hashbrown3raw11Fallibility17capacity_overflow17h2ba85003cd4f3895E(i1 noundef zeroext %fallibility), !noalias !1910
  %_9.0.i.i = extractvalue { i64, i64 } %13, 0
  %_9.1.i.i = extractvalue { i64, i64 } %13, 1
  br label %_ZN9hashbrown3raw13RawTableInner17new_uninitialized17hd439e4c49046c978E.exit.i

bb15.i.i13:                                       ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h02618852de544ee2E.exit.i.i"
; call hashbrown::raw::Fallibility::alloc_err
  %14 = tail call { i64, i64 } @_ZN9hashbrown3raw11Fallibility9alloc_err17hdec7f04e13c07ca8E(i1 noundef zeroext %fallibility, i64 noundef %_6.sroa.0.0.i.i, i64 noundef %_6.sroa.8.0.i.i), !noalias !1910
  %_21.0.i.i = extractvalue { i64, i64 } %14, 0
  %_21.1.i.i = extractvalue { i64, i64 } %14, 1
  br label %_ZN9hashbrown3raw13RawTableInner17new_uninitialized17hd439e4c49046c978E.exit.i

bb11.i.i12:                                       ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h02618852de544ee2E.exit.i.i"
  %ptr.i.i = getelementptr inbounds nuw i8, ptr %_0.sroa.0.0.i.i.i.i, i64 %_6.sroa.10.0.i.i
  %_26.i.i = add i64 %_0.sroa.4.0.i.i, -1
  %_35.i.i = icmp ult i64 %_26.i.i, 8
  %_367.i.i = lshr i64 %_0.sroa.4.0.i.i, 3
  %15 = mul nuw i64 %_367.i.i, 7
  %bucket_mask.sroa.0.0.i.i = select i1 %_35.i.i, i64 %_26.i.i, i64 %15
  br label %_ZN9hashbrown3raw13RawTableInner17new_uninitialized17hd439e4c49046c978E.exit.i

_ZN9hashbrown3raw13RawTableInner17new_uninitialized17hd439e4c49046c978E.exit.i: ; preds = %bb11.i.i12, %bb15.i.i13, %bb3.i.i14
  %self2.sroa.12.0.i = phi i64 [ %_9.1.i.i, %bb3.i.i14 ], [ %_21.1.i.i, %bb15.i.i13 ], [ %bucket_mask.sroa.0.0.i.i, %bb11.i.i12 ]
  %self2.sroa.7.0.i = phi i64 [ %_9.0.i.i, %bb3.i.i14 ], [ %_21.0.i.i, %bb15.i.i13 ], [ %_26.i.i, %bb11.i.i12 ]
  %self2.sroa.0.0.i = phi ptr [ null, %bb3.i.i14 ], [ null, %bb15.i.i13 ], [ %ptr.i.i, %bb11.i.i12 ]
  %16 = icmp eq ptr %self2.sroa.0.0.i, null
  br i1 %16, label %_ZN9hashbrown3raw13RawTableInner22fallible_with_capacity17h981b21e9722a5879E.exit, label %bb13.i

bb9.i8:                                           ; preds = %_ZN9hashbrown3raw19capacity_to_buckets17h868826abfb220acaE.exit.i
; call hashbrown::raw::Fallibility::capacity_overflow
  %17 = tail call { i64, i64 } @_ZN9hashbrown3raw11Fallibility17capacity_overflow17h2ba85003cd4f3895E(i1 noundef zeroext %fallibility), !noalias !1915
  %_21.0.i9 = extractvalue { i64, i64 } %17, 0
  %_21.1.i10 = extractvalue { i64, i64 } %17, 1
  br label %_ZN9hashbrown3raw13RawTableInner22fallible_with_capacity17h981b21e9722a5879E.exit

bb13.i:                                           ; preds = %_ZN9hashbrown3raw13RawTableInner17new_uninitialized17hd439e4c49046c978E.exit.i
  %count.i = add i64 %self2.sroa.7.0.i, 17
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %self2.sroa.0.0.i, i8 -1, i64 %count.i, i1 false), !noalias !1915
  br label %_ZN9hashbrown3raw13RawTableInner22fallible_with_capacity17h981b21e9722a5879E.exit

_ZN9hashbrown3raw13RawTableInner22fallible_with_capacity17h981b21e9722a5879E.exit: ; preds = %_ZN9hashbrown3raw13RawTableInner17new_uninitialized17hd439e4c49046c978E.exit.i, %bb9.i8, %bb13.i
  %self3.i.i.sroa.0.0 = phi ptr [ %self2.sroa.0.0.i, %bb13.i ], [ null, %bb9.i8 ], [ null, %_ZN9hashbrown3raw13RawTableInner17new_uninitialized17hd439e4c49046c978E.exit.i ]
  %self3.i.i.sroa.7.0 = phi i64 [ %self2.sroa.7.0.i, %bb13.i ], [ %_21.0.i9, %bb9.i8 ], [ %self2.sroa.7.0.i, %_ZN9hashbrown3raw13RawTableInner17new_uninitialized17hd439e4c49046c978E.exit.i ]
  %self3.i.i.sroa.12.0 = phi i64 [ %self2.sroa.12.0.i, %bb13.i ], [ %_21.1.i10, %bb9.i8 ], [ %self2.sroa.12.0.i, %_ZN9hashbrown3raw13RawTableInner17new_uninitialized17hd439e4c49046c978E.exit.i ]
  %18 = icmp eq ptr %self3.i.i.sroa.0.0, null
  %.self3.i.i.sroa.7.0 = select i1 %18, i64 undef, i64 %self3.i.i.sroa.7.0
  %.self3.i.i.sroa.12.0 = select i1 %18, i64 undef, i64 %self3.i.i.sroa.12.0
  %self3.i.i.sroa.12.0. = select i1 %18, i64 %self3.i.i.sroa.12.0, i64 16
  %self3.i.i.sroa.7.0. = select i1 %18, i64 %self3.i.i.sroa.7.0, i64 4
  br i1 %18, label %_ZN9hashbrown3raw13RawTableInner20reserve_rehash_inner17h7ec2af33c7dfb99eE.exit, label %bb15.i.i

bb15.i.i:                                         ; preds = %_ZN9hashbrown3raw13RawTableInner22fallible_with_capacity17h981b21e9722a5879E.exit
  %19 = ptrtoint ptr %self3.i.i.sroa.0.0 to i64
  %_58.i.i = load ptr, ptr %self, align 8, !alias.scope !1916, !noalias !1917, !nonnull !4, !noundef !4
  %20 = load <16 x i8>, ptr %_58.i.i, align 16, !noalias !1919
  %21 = icmp slt <16 x i8> %20, zeroinitializer
  %22 = bitcast <16 x i1> %21 to i16
  %_67.i.i = xor i16 %22, -1
  %key0.i.i.i.i = load i64, ptr %0, align 8
  %23 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %key1.i.i.i.i = load i64, ptr %23, align 8
  %24 = xor i64 %key0.i.i.i.i, 7816392313619706465
  %25 = xor i64 %key1.i.i.i.i, 7237128888997146477
  %26 = xor i64 %key0.i.i.i.i, 8317987319222330741
  %_2.i.i.i.i.i.i = add i64 %25, %26
  %27 = tail call i64 @llvm.fshl.i64(i64 %25, i64 %25, i64 13)
  %28 = xor i64 %27, %_2.i.i.i.i.i.i
  %29 = tail call i64 @llvm.fshl.i64(i64 %_2.i.i.i.i.i.i, i64 %_2.i.i.i.i.i.i, i64 32)
  %invariant.op49 = add i64 %24, %28
  %30 = tail call i64 @llvm.fshl.i64(i64 %28, i64 %28, i64 17)
  %invariant.op58 = xor i64 %key1.i.i.i.i, 8387220255154660723
  %invariant.gep60 = getelementptr i8, ptr %self3.i.i.sroa.0.0, i64 16
  br label %bb2.i.i

bb2.i.i:                                          ; preds = %bb22.i.i, %bb15.i.i
  %iter.i.i.sroa.13.0 = phi i16 [ %_67.i.i, %bb15.i.i ], [ %iter.i.i.sroa.13.1, %bb22.i.i ]
  %iter.i.i.sroa.9.0 = phi i64 [ %self1.i, %bb15.i.i ], [ %iter.i.i.sroa.9.1, %bb22.i.i ]
  %iter.i.i.sroa.5.0 = phi i64 [ 0, %bb15.i.i ], [ %iter.i.i.sroa.5.1, %bb22.i.i ]
  %iter.i.i.sroa.0.0 = phi ptr [ %_58.i.i, %bb15.i.i ], [ %iter.i.i.sroa.0.1, %bb22.i.i ]
  %_69.not.i.i = icmp eq i64 %iter.i.i.sroa.9.0, 0
  br i1 %_69.not.i.i, label %bb18.i.i, label %bb1.i.preheader

bb1.i.preheader:                                  ; preds = %bb2.i.i
  %.not.i44 = icmp eq i16 %iter.i.i.sroa.13.0, 0
  br i1 %.not.i44, label %bb4.i1, label %_ZN9hashbrown3raw18FullBucketsIndices9next_impl17hb85f7b7e286b9d5dE.exit

bb4.i1:                                           ; preds = %bb1.i.preheader, %bb4.i1
  %iter.i.i.sroa.0.246 = phi ptr [ %ptr.i, %bb4.i1 ], [ %iter.i.i.sroa.0.0, %bb1.i.preheader ]
  %iter.i.i.sroa.5.245 = phi i64 [ %34, %bb4.i1 ], [ %iter.i.i.sroa.5.0, %bb1.i.preheader ]
  %ptr.i = getelementptr inbounds nuw i8, ptr %iter.i.i.sroa.0.246, i64 16
  %31 = load <16 x i8>, ptr %ptr.i, align 16, !noalias !1922
  %32 = icmp slt <16 x i8> %31, zeroinitializer
  %33 = bitcast <16 x i1> %32 to i16
  %34 = add i64 %iter.i.i.sroa.5.245, 16
  %.not.i = icmp eq i16 %33, -1
  br i1 %.not.i, label %bb4.i1, label %_ZN9hashbrown3raw18FullBucketsIndices9next_impl17hb85f7b7e286b9d5dE.exit.loopexit

_ZN9hashbrown3raw18FullBucketsIndices9next_impl17hb85f7b7e286b9d5dE.exit.loopexit: ; preds = %bb4.i1
  %_43.i = xor i16 %33, -1
  br label %_ZN9hashbrown3raw18FullBucketsIndices9next_impl17hb85f7b7e286b9d5dE.exit

_ZN9hashbrown3raw18FullBucketsIndices9next_impl17hb85f7b7e286b9d5dE.exit: ; preds = %_ZN9hashbrown3raw18FullBucketsIndices9next_impl17hb85f7b7e286b9d5dE.exit.loopexit, %bb1.i.preheader
  %iter.i.i.sroa.13.2.lcssa = phi i16 [ %iter.i.i.sroa.13.0, %bb1.i.preheader ], [ %_43.i, %_ZN9hashbrown3raw18FullBucketsIndices9next_impl17hb85f7b7e286b9d5dE.exit.loopexit ]
  %iter.i.i.sroa.5.2.lcssa = phi i64 [ %iter.i.i.sroa.5.0, %bb1.i.preheader ], [ %34, %_ZN9hashbrown3raw18FullBucketsIndices9next_impl17hb85f7b7e286b9d5dE.exit.loopexit ]
  %iter.i.i.sroa.0.2.lcssa = phi ptr [ %iter.i.i.sroa.0.0, %bb1.i.preheader ], [ %ptr.i, %_ZN9hashbrown3raw18FullBucketsIndices9next_impl17hb85f7b7e286b9d5dE.exit.loopexit ]
  %35 = add i16 %iter.i.i.sroa.13.2.lcssa, -1
  %36 = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %iter.i.i.sroa.13.2.lcssa, i1 true)
  %_22.i = zext nneg i16 %36 to i64
  %_31.i = and i16 %35, %iter.i.i.sroa.13.2.lcssa
  %_5.i = add i64 %iter.i.i.sroa.5.2.lcssa, %_22.i
  %37 = add i64 %iter.i.i.sroa.9.0, -1
  br label %bb18.i.i

bb18.i.i:                                         ; preds = %_ZN9hashbrown3raw18FullBucketsIndices9next_impl17hb85f7b7e286b9d5dE.exit, %bb2.i.i
  %iter.i.i.sroa.13.1 = phi i16 [ %iter.i.i.sroa.13.0, %bb2.i.i ], [ %_31.i, %_ZN9hashbrown3raw18FullBucketsIndices9next_impl17hb85f7b7e286b9d5dE.exit ]
  %iter.i.i.sroa.9.1 = phi i64 [ %iter.i.i.sroa.9.0, %bb2.i.i ], [ %37, %_ZN9hashbrown3raw18FullBucketsIndices9next_impl17hb85f7b7e286b9d5dE.exit ]
  %iter.i.i.sroa.5.1 = phi i64 [ %iter.i.i.sroa.5.0, %bb2.i.i ], [ %iter.i.i.sroa.5.2.lcssa, %_ZN9hashbrown3raw18FullBucketsIndices9next_impl17hb85f7b7e286b9d5dE.exit ]
  %iter.i.i.sroa.0.1 = phi ptr [ %iter.i.i.sroa.0.0, %bb2.i.i ], [ %iter.i.i.sroa.0.2.lcssa, %_ZN9hashbrown3raw18FullBucketsIndices9next_impl17hb85f7b7e286b9d5dE.exit ]
  %nxt.sroa.6.0.i.i = phi i64 [ undef, %bb2.i.i ], [ %_5.i, %_ZN9hashbrown3raw18FullBucketsIndices9next_impl17hb85f7b7e286b9d5dE.exit ]
  br i1 %_69.not.i.i, label %bb4.i.i, label %bb3.i.i

bb3.i.i:                                          ; preds = %bb18.i.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1925)
  %_12.i = load ptr, ptr %self, align 8, !alias.scope !1925, !noalias !1928, !nonnull !4, !noundef !4
  %_18.i = sub nsw i64 0, %nxt.sroa.6.0.i.i
  %38 = getelementptr inbounds i32, ptr %_12.i, i64 %_18.i
  %39 = getelementptr inbounds i8, ptr %38, i64 -4
  %_4.i.i.i.i.i = load i32, ptr %39, align 4, !range !42, !alias.scope !1930, !noalias !1937, !noundef !4
  %40 = zext nneg i32 %_4.i.i.i.i.i to i64
  %b.i.i.i.i.i = or disjoint i64 %40, 288230376151711744
  %.reass59 = xor i64 %b.i.i.i.i.i, %invariant.op58
  %_5.i.i.i3.i.i.i = add i64 %.reass59, %24
  %41 = tail call noundef i64 @llvm.fshl.i64(i64 %.reass59, i64 %.reass59, i64 16)
  %42 = xor i64 %41, %_5.i.i.i3.i.i.i
  %_16.i.i.i.i.i.i.reass = add i64 %.reass59, %invariant.op49
  %_19.i.i.i.i.i.i = add i64 %42, %29
  %43 = xor i64 %_16.i.i.i.i.i.i.reass, %30
  %44 = tail call noundef i64 @llvm.fshl.i64(i64 %42, i64 %42, i64 21)
  %45 = xor i64 %44, %_19.i.i.i.i.i.i
  %46 = tail call noundef i64 @llvm.fshl.i64(i64 %_16.i.i.i.i.i.i.reass, i64 %_16.i.i.i.i.i.i.reass, i64 32)
  %47 = xor i64 %_19.i.i.i.i.i.i, %b.i.i.i.i.i
  %48 = xor i64 %46, 255
  %_2.i3.i.i.i.i.i = add i64 %47, %43
  %_5.i6.i.i.i.i.i = add i64 %45, %48
  %49 = tail call noundef i64 @llvm.fshl.i64(i64 %43, i64 %43, i64 13)
  %50 = xor i64 %_2.i3.i.i.i.i.i, %49
  %51 = tail call noundef i64 @llvm.fshl.i64(i64 %45, i64 %45, i64 16)
  %52 = xor i64 %51, %_5.i6.i.i.i.i.i
  %53 = tail call noundef i64 @llvm.fshl.i64(i64 %_2.i3.i.i.i.i.i, i64 %_2.i3.i.i.i.i.i, i64 32)
  %_16.i7.i.i.i.i.i = add i64 %50, %_5.i6.i.i.i.i.i
  %_19.i8.i.i.i.i.i = add i64 %52, %53
  %54 = tail call noundef i64 @llvm.fshl.i64(i64 %50, i64 %50, i64 17)
  %55 = xor i64 %_16.i7.i.i.i.i.i, %54
  %56 = tail call noundef i64 @llvm.fshl.i64(i64 %52, i64 %52, i64 21)
  %57 = xor i64 %56, %_19.i8.i.i.i.i.i
  %58 = tail call noundef i64 @llvm.fshl.i64(i64 %_16.i7.i.i.i.i.i, i64 %_16.i7.i.i.i.i.i, i64 32)
  %_30.i.i.i.i.i.i = add i64 %55, %_19.i8.i.i.i.i.i
  %_33.i.i.i.i.i.i = add i64 %57, %58
  %59 = tail call noundef i64 @llvm.fshl.i64(i64 %55, i64 %55, i64 13)
  %60 = xor i64 %59, %_30.i.i.i.i.i.i
  %61 = tail call noundef i64 @llvm.fshl.i64(i64 %57, i64 %57, i64 16)
  %62 = xor i64 %61, %_33.i.i.i.i.i.i
  %63 = tail call noundef i64 @llvm.fshl.i64(i64 %_30.i.i.i.i.i.i, i64 %_30.i.i.i.i.i.i, i64 32)
  %_44.i.i.i.i.i.i = add i64 %60, %_33.i.i.i.i.i.i
  %_47.i.i.i.i.i.i = add i64 %62, %63
  %64 = tail call noundef i64 @llvm.fshl.i64(i64 %60, i64 %60, i64 17)
  %65 = xor i64 %64, %_44.i.i.i.i.i.i
  %66 = tail call noundef i64 @llvm.fshl.i64(i64 %62, i64 %62, i64 21)
  %67 = xor i64 %66, %_47.i.i.i.i.i.i
  %68 = tail call noundef i64 @llvm.fshl.i64(i64 %_44.i.i.i.i.i.i, i64 %_44.i.i.i.i.i.i, i64 32)
  %_58.i.i.i.i.i.i = add i64 %65, %_47.i.i.i.i.i.i
  %_61.i.i.i.i.i.i = add i64 %67, %68
  %69 = tail call noundef i64 @llvm.fshl.i64(i64 %65, i64 %65, i64 13)
  %70 = xor i64 %69, %_58.i.i.i.i.i.i
  %71 = tail call noundef i64 @llvm.fshl.i64(i64 %67, i64 %67, i64 16)
  %72 = xor i64 %71, %_61.i.i.i.i.i.i
  %_72.i.i.i.i.i.i = add i64 %70, %_61.i.i.i.i.i.i
  %73 = tail call noundef i64 @llvm.fshl.i64(i64 %70, i64 %70, i64 17)
  %74 = tail call noundef i64 @llvm.fshl.i64(i64 %72, i64 %72, i64 21)
  %75 = tail call noundef i64 @llvm.fshl.i64(i64 %_72.i.i.i.i.i.i, i64 %_72.i.i.i.i.i.i, i64 32)
  %76 = xor i64 %74, %73
  %77 = xor i64 %76, %75
  %_0.i.i.i.i.i = xor i64 %77, %_72.i.i.i.i.i.i
  br label %bb1.i18

bb4.i.i:                                          ; preds = %bb18.i.i
  %_28.i.i = load i64, ptr %1, align 8, !alias.scope !1916, !noalias !1917, !noundef !4
  %78 = sub i64 %.self3.i.i.sroa.12.0, %_28.i.i
  %_3.sroa.0.0.copyload.i.i.i.i.i = load i64, ptr %self, align 8, !alias.scope !1944, !noalias !1947
  store i64 %19, ptr %self, align 8, !alias.scope !1944, !noalias !1947
  %_3.sroa.0.0.copyload.i.i.i.1.i.i = load i64, ptr %2, align 8, !alias.scope !1949, !noalias !1951
  store i64 %.self3.i.i.sroa.7.0, ptr %2, align 8, !alias.scope !1949, !noalias !1951
  %_11.i.i.2.i.i = getelementptr inbounds nuw i8, ptr %self, i64 16
  store i64 %78, ptr %_11.i.i.2.i.i, align 8, !alias.scope !1953, !noalias !1955
  %_3.i.i.i = icmp eq i64 %_3.sroa.0.0.copyload.i.i.i.1.i.i, 0
  br i1 %_3.i.i.i, label %_ZN9hashbrown3raw13RawTableInner20reserve_rehash_inner17h7ec2af33c7dfb99eE.exit, label %bb1.i.i.i

bb1.i.i.i:                                        ; preds = %bb4.i.i
  %_10.i.i.i = add i64 %_3.sroa.0.0.copyload.i.i.i.1.i.i, 1
  %79 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %self3.i.i.sroa.7.0., i64 %_10.i.i.i)
  %_25.1.i.i.i.i = extractvalue { i64, i1 } %79, 1
  br i1 %_25.1.i.i.i.i, label %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hded40b9ddefe4757E.exit.i.i.i, label %bb8.i.i.i.i, !prof !11

bb8.i.i.i.i:                                      ; preds = %bb1.i.i.i
  %_25.0.i.i.i.i = extractvalue { i64, i1 } %79, 0
  %rhs.i.i.i.i = add i64 %self3.i.i.sroa.12.0., -1
  %_32.0.i.i.i.i = add i64 %_25.0.i.i.i.i, %rhs.i.i.i.i
  %_32.1.i.i.i.i = icmp ult i64 %_32.0.i.i.i.i, %_25.0.i.i.i.i
  br i1 %_32.1.i.i.i.i, label %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hded40b9ddefe4757E.exit.i.i.i, label %bb11.i.i.i.i, !prof !11

bb11.i.i.i.i:                                     ; preds = %bb8.i.i.i.i
  %_14.i.i.i.i = sub i64 0, %self3.i.i.sroa.12.0.
  %ctrl_offset.i.i.i.i = and i64 %_32.0.i.i.i.i, %_14.i.i.i.i
  %rhs5.i.i.i.i = add i64 %_3.sroa.0.0.copyload.i.i.i.1.i.i, 17
  %_37.0.i.i.i.i = add i64 %rhs5.i.i.i.i, %ctrl_offset.i.i.i.i
  %_37.1.i.i.i.i = icmp ult i64 %_37.0.i.i.i.i, %ctrl_offset.i.i.i.i
  %_20.i.i.i.i = sub i64 -9223372036854775808, %self3.i.i.sroa.12.0.
  %_19.i.i.i.i = icmp ugt i64 %_37.0.i.i.i.i, %_20.i.i.i.i
  %or.cond.i.i.i = or i1 %_37.1.i.i.i.i, %_19.i.i.i.i
  br i1 %or.cond.i.i.i, label %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hded40b9ddefe4757E.exit.i.i.i, label %bb2.i.i.i.i17, !prof !1847

bb2.i.i.i.i17:                                    ; preds = %bb11.i.i.i.i
  %80 = icmp sgt i64 %rhs.i.i.i.i, -1
  tail call void @llvm.assume(i1 %80)
  br label %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hded40b9ddefe4757E.exit.i.i.i

_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hded40b9ddefe4757E.exit.i.i.i: ; preds = %bb2.i.i.i.i17, %bb11.i.i.i.i, %bb8.i.i.i.i, %bb1.i.i.i
  %_9.sroa.9.0.i.i.i = phi i64 [ %ctrl_offset.i.i.i.i, %bb2.i.i.i.i17 ], [ undef, %bb11.i.i.i.i ], [ undef, %bb8.i.i.i.i ], [ undef, %bb1.i.i.i ]
  %_9.sroa.7.0.i.i.i = phi i64 [ %_37.0.i.i.i.i, %bb2.i.i.i.i17 ], [ undef, %bb11.i.i.i.i ], [ undef, %bb8.i.i.i.i ], [ undef, %bb1.i.i.i ]
  %_9.sroa.0.0.i.i.i = phi i64 [ %self3.i.i.sroa.12.0., %bb2.i.i.i.i17 ], [ 0, %bb11.i.i.i.i ], [ 0, %bb8.i.i.i.i ], [ 0, %bb1.i.i.i ]
  %81 = icmp ne i64 %_9.sroa.0.0.i.i.i, 0
  tail call void @llvm.assume(i1 %81)
  %_4.not.i.i.i.i = icmp eq i64 %_9.sroa.7.0.i.i.i, 0
  br i1 %_4.not.i.i.i.i, label %_ZN9hashbrown3raw13RawTableInner20reserve_rehash_inner17h7ec2af33c7dfb99eE.exit, label %bb1.i1.i.i.i

bb1.i1.i.i.i:                                     ; preds = %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hded40b9ddefe4757E.exit.i.i.i
  %82 = inttoptr i64 %_3.sroa.0.0.copyload.i.i.i.i.i to ptr
  %_18.i.i.i = sub nsw i64 0, %_9.sroa.9.0.i.i.i
  %ptr.i.i.i = getelementptr inbounds i8, ptr %82, i64 %_18.i.i.i
; call __rustc::__rust_dealloc
  tail call void @_RNvCsdBezzDwma51_7___rustc14___rust_dealloc(ptr noundef nonnull %ptr.i.i.i, i64 noundef %_9.sroa.7.0.i.i.i, i64 noundef range(i64 1, -9223372036854775807) %_9.sroa.0.0.i.i.i) #32, !noalias !1957
  br label %_ZN9hashbrown3raw13RawTableInner20reserve_rehash_inner17h7ec2af33c7dfb99eE.exit

bb1.i18:                                          ; preds = %bb6.i, %bb3.i.i
  %hash.pn.i = phi i64 [ %_0.i.i.i.i.i, %bb3.i.i ], [ %88, %bb6.i ]
  %83 = phi i64 [ 0, %bb3.i.i ], [ %87, %bb6.i ]
  %probe_seq.sroa.0.0.i = and i64 %hash.pn.i, %.self3.i.i.sroa.7.0
  %_18.i19 = getelementptr inbounds nuw i8, ptr %self3.i.i.sroa.0.0, i64 %probe_seq.sroa.0.0.i
  %dst.sroa.0.0.copyload.i5.i = load <16 x i8>, ptr %_18.i19, align 1, !noalias !1965
  %84 = icmp slt <16 x i8> %dst.sroa.0.0.copyload.i5.i, zeroinitializer
  %85 = bitcast <16 x i1> %84 to i16
  %.not.i.not.i = icmp eq i16 %85, 0
  br i1 %.not.i.not.i, label %_ZN9hashbrown3raw13RawTableInner26find_insert_index_in_group17h3300eba0ea035b7cE.exit.i, label %bb3.i.i20, !prof !11

bb3.i.i20:                                        ; preds = %bb1.i18
  %86 = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %85, i1 true)
  %_17.i.i = zext nneg i16 %86 to i64
  %_8.i.i = add i64 %probe_seq.sroa.0.0.i, %_17.i.i
  %_7.i.i = and i64 %_8.i.i, %.self3.i.i.sroa.7.0
  br label %_ZN9hashbrown3raw13RawTableInner26find_insert_index_in_group17h3300eba0ea035b7cE.exit.i

_ZN9hashbrown3raw13RawTableInner26find_insert_index_in_group17h3300eba0ea035b7cE.exit.i: ; preds = %bb3.i.i20, %bb1.i18
  %_0.sroa.3.0.i.i21 = phi i64 [ %_7.i.i, %bb3.i.i20 ], [ undef, %bb1.i18 ]
  br i1 %.not.i.not.i, label %bb6.i, label %bb9.i22, !prof !11

bb6.i:                                            ; preds = %_ZN9hashbrown3raw13RawTableInner26find_insert_index_in_group17h3300eba0ea035b7cE.exit.i
  %87 = add i64 %83, 16
  %88 = add i64 %87, %probe_seq.sroa.0.0.i
  br label %bb1.i18

bb9.i22:                                          ; preds = %_ZN9hashbrown3raw13RawTableInner26find_insert_index_in_group17h3300eba0ea035b7cE.exit.i
  %_8.i4.i = getelementptr inbounds nuw i8, ptr %self3.i.i.sroa.0.0, i64 %_0.sroa.3.0.i.i21
  %_12.i.i = load i8, ptr %_8.i4.i, align 1, !noalias !1970, !noundef !4
  %b.i.i = icmp sgt i8 %_12.i.i, -1
  br i1 %b.i.i, label %bb2.i.i23, label %bb22.i.i, !prof !11

bb2.i.i23:                                        ; preds = %bb9.i22
  %89 = load <16 x i8>, ptr %self3.i.i.sroa.0.0, align 16, !noalias !1973
  %90 = icmp slt <16 x i8> %89, zeroinitializer
  %91 = bitcast <16 x i1> %90 to i16
  %92 = icmp ne i16 %91, 0
  tail call void @llvm.assume(i1 %92)
  %93 = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %91, i1 true)
  %_25.i.i = zext nneg i16 %93 to i64
  br label %bb22.i.i

bb22.i.i:                                         ; preds = %bb2.i.i23, %bb9.i22
  %index.sroa.0.0.i.i = phi i64 [ %_25.i.i, %bb2.i.i23 ], [ %_0.sroa.3.0.i.i21, %bb9.i22 ]
  %_75.i.i = getelementptr inbounds nuw i8, ptr %self3.i.i.sroa.0.0, i64 %index.sroa.0.0.i.i
  %_79.i.i = lshr i64 %_0.i.i.i.i.i, 57
  %_80.i.i = trunc nuw nsw i64 %_79.i.i to i8
  %_84.i.i = add i64 %index.sroa.0.0.i.i, -16
  %_83.i.i = and i64 %_84.i.i, %.self3.i.i.sroa.7.0
  store i8 %_80.i.i, ptr %_75.i.i, align 1
  %gep61 = getelementptr i8, ptr %invariant.gep60, i64 %_83.i.i
  store i8 %_80.i.i, ptr %gep61, align 1
  %_97.i.i = load ptr, ptr %self, align 8, !alias.scope !1916, !noalias !1917, !nonnull !4, !noundef !4
  %_96.i.i = shl i64 %nxt.sroa.6.0.i.i, 2
  %_98.i.i = sub nuw nsw i64 -4, %_96.i.i
  %_23.i.i = getelementptr inbounds i8, ptr %_97.i.i, i64 %_98.i.i
  %_102.i.i = shl i64 %index.sroa.0.0.i.i, 2
  %_104.i.i = sub nuw nsw i64 -4, %_102.i.i
  %dst.i.i = getelementptr inbounds i8, ptr %self3.i.i.sroa.0.0, i64 %_104.i.i
  %94 = load i32, ptr %_23.i.i, align 1
  store i32 %94, ptr %dst.i.i, align 1
  br label %bb2.i.i

bb2.i:                                            ; preds = %bb11.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1976)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1979), !noalias !1904
  %_27.not6.i.i = icmp eq i64 %_26.i, 0
  br i1 %_27.not6.i.i, label %_ZN9hashbrown3raw13RawTableInner15rehash_in_place17haee1e6799e4651aaE.exit.critedge, label %bb6.lr.ph.i.i

bb6.lr.ph.i.i:                                    ; preds = %bb2.i
  %d9.i.i.i.i = lshr i64 %_26.i, 4
  %r2.i.i.i.i = and i64 %_26.i, 15
  %_19.not.i.i.i.i = icmp ne i64 %r2.i.i.i.i, 0
  %95 = zext i1 %_19.not.i.i.i.i to i64
  %yield_count.sroa.0.0.i.i.i.i = add nuw nsw i64 %d9.i.i.i.i, %95
  %_36.i.i = load ptr, ptr %self, align 8, !alias.scope !1982, !noalias !1904, !nonnull !4, !noundef !4
  %xtraiter = and i64 %yield_count.sroa.0.0.i.i.i.i, 1
  %96 = icmp eq i64 %yield_count.sroa.0.0.i.i.i.i, 1
  br i1 %96, label %bb7.i.i.unr-lcssa, label %bb6.lr.ph.i.i.new

bb6.lr.ph.i.i.new:                                ; preds = %bb6.lr.ph.i.i
  %unroll_iter = and i64 %yield_count.sroa.0.0.i.i.i.i, 2305843009213693950
  %invariant.gep = getelementptr i8, ptr %_36.i.i, i64 16
  br label %bb6.i.i

bb7.i.i.unr-lcssa:                                ; preds = %bb6.i.i, %bb6.lr.ph.i.i
  %iter.sroa.0.08.i.i.unr = phi i64 [ 0, %bb6.lr.ph.i.i ], [ %_29.i.i.1, %bb6.i.i ]
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %bb7.i.i, label %bb6.i.i.epil

bb6.i.i.epil:                                     ; preds = %bb7.i.i.unr-lcssa
  %_34.i.i.epil = getelementptr inbounds nuw i8, ptr %_36.i.i, i64 %iter.sroa.0.08.i.i.unr
  %97 = load <16 x i8>, ptr %_34.i.i.epil, align 16, !noalias !1983
  %_410.lobit.i.i.i.epil = ashr <16 x i8> %97, splat (i8 7)
  %98 = bitcast <16 x i8> %_410.lobit.i.i.i.epil to <2 x i64>
  %99 = or <2 x i64> %98, splat (i64 -9187201950435737472)
  store <2 x i64> %99, ptr %_34.i.i.epil, align 16, !noalias !1986
  br label %bb7.i.i

bb7.i.i:                                          ; preds = %bb7.i.i.unr-lcssa, %bb6.i.i.epil
  %_52.i.i = load ptr, ptr %self, align 8, !alias.scope !1982, !noalias !1904, !nonnull !4, !noundef !4
  %._26.i = tail call i64 @llvm.umax.i64(i64 %_26.i, i64 16)
  %_26.i. = tail call i64 @llvm.umin.i64(i64 %_26.i, i64 16)
  %_53.i.i = getelementptr inbounds nuw i8, ptr %_52.i.i, i64 %._26.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %_53.i.i, ptr nonnull align 1 %_52.i.i, i64 %_26.i., i1 false), !noalias !1989
  %_71.i = load ptr, ptr %self, align 8, !alias.scope !1976, !noalias !1904, !nonnull !4, !noundef !4
  %invariant.gep28.i = getelementptr i8, ptr %_71.i, i64 -4
  %invariant.gep.i = getelementptr i8, ptr %_71.i, i64 16
  %key0.i.i.i.i.i = load i64, ptr %0, align 8
  %100 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %key1.i.i.i.i.i = load i64, ptr %100, align 8
  %101 = xor i64 %key0.i.i.i.i.i, 7816392313619706465
  %102 = xor i64 %key1.i.i.i.i.i, 7237128888997146477
  %103 = xor i64 %key0.i.i.i.i.i, 8317987319222330741
  %_2.i.i.i.i.i.i.i = add i64 %102, %103
  %104 = tail call i64 @llvm.fshl.i64(i64 %102, i64 %102, i64 13)
  %105 = xor i64 %104, %_2.i.i.i.i.i.i.i
  %106 = tail call i64 @llvm.fshl.i64(i64 %_2.i.i.i.i.i.i.i, i64 %_2.i.i.i.i.i.i.i, i64 32)
  %invariant.op = add i64 %101, %105
  %107 = tail call i64 @llvm.fshl.i64(i64 %105, i64 %105, i64 17)
  %invariant.op57 = xor i64 %key1.i.i.i.i.i, 8387220255154660723
  br label %bb4.i28

bb6.i.i:                                          ; preds = %bb6.i.i, %bb6.lr.ph.i.i.new
  %iter.sroa.0.08.i.i = phi i64 [ 0, %bb6.lr.ph.i.i.new ], [ %_29.i.i.1, %bb6.i.i ]
  %niter = phi i64 [ 0, %bb6.lr.ph.i.i.new ], [ %niter.next.1, %bb6.i.i ]
  %_34.i.i = getelementptr inbounds nuw i8, ptr %_36.i.i, i64 %iter.sroa.0.08.i.i
  %108 = load <16 x i8>, ptr %_34.i.i, align 16, !noalias !1983
  %_410.lobit.i.i.i = ashr <16 x i8> %108, splat (i8 7)
  %109 = bitcast <16 x i8> %_410.lobit.i.i.i to <2 x i64>
  %110 = or <2 x i64> %109, splat (i64 -9187201950435737472)
  store <2 x i64> %110, ptr %_34.i.i, align 16, !noalias !1986
  %_29.i.i.1 = add i64 %iter.sroa.0.08.i.i, 32
  %gep = getelementptr i8, ptr %invariant.gep, i64 %iter.sroa.0.08.i.i
  %111 = load <16 x i8>, ptr %gep, align 16, !noalias !1983
  %_410.lobit.i.i.i.1 = ashr <16 x i8> %111, splat (i8 7)
  %112 = bitcast <16 x i8> %_410.lobit.i.i.i.1 to <2 x i64>
  %113 = or <2 x i64> %112, splat (i64 -9187201950435737472)
  store <2 x i64> %113, ptr %gep, align 16, !noalias !1986
  %niter.next.1 = add i64 %niter, 2
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %bb7.i.i.unr-lcssa, label %bb6.i.i

bb4.i28:                                          ; preds = %bb14.i, %bb7.i.i
  %iter.sroa.0.127.i = phi i64 [ 1, %bb7.i.i ], [ %iter.sroa.0.1.i, %bb14.i ]
  %iter.sroa.0.026.i = phi i64 [ 0, %bb7.i.i ], [ %iter.sroa.0.127.i, %bb14.i ]
  %_69.i = getelementptr inbounds nuw i8, ptr %_71.i, i64 %iter.sroa.0.026.i
  %_73.i = load i8, ptr %_69.i, align 1, !noalias !1990, !noundef !4
  %_72.not.i = icmp eq i8 %_73.i, -128
  br i1 %_72.not.i, label %bb7.i, label %bb14.i

bb7.i:                                            ; preds = %bb4.i28
  %_76.i = shl i64 %iter.sroa.0.026.i, 2
  %_78.i = sub nuw nsw i64 -4, %_76.i
  %i_p.i = getelementptr inbounds i8, ptr %_71.i, i64 %_78.i
  %_18.i.i = sub nsw i64 0, %iter.sroa.0.026.i
  %gep29.i = getelementptr i32, ptr %invariant.gep28.i, i64 %_18.i.i
  br label %bb8.i

bb8.i:                                            ; preds = %bb12.i32, %bb7.i
  %_4.i.i.i.i.i.i = load i32, ptr %gep29.i, align 4, !range !42, !alias.scope !1991, !noalias !1998, !noundef !4
  %114 = zext nneg i32 %_4.i.i.i.i.i.i to i64
  %b.i.i.i.i.i.i = or disjoint i64 %114, 288230376151711744
  %.reass = xor i64 %b.i.i.i.i.i.i, %invariant.op57
  %_5.i.i.i3.i.i.i.i = add i64 %.reass, %101
  %115 = tail call noundef i64 @llvm.fshl.i64(i64 %.reass, i64 %.reass, i64 16)
  %116 = xor i64 %115, %_5.i.i.i3.i.i.i.i
  %_16.i.i.i.i.i.i.i.reass = add i64 %.reass, %invariant.op
  %_19.i.i.i.i.i.i.i = add i64 %116, %106
  %117 = xor i64 %_16.i.i.i.i.i.i.i.reass, %107
  %118 = tail call noundef i64 @llvm.fshl.i64(i64 %116, i64 %116, i64 21)
  %119 = xor i64 %118, %_19.i.i.i.i.i.i.i
  %120 = tail call noundef i64 @llvm.fshl.i64(i64 %_16.i.i.i.i.i.i.i.reass, i64 %_16.i.i.i.i.i.i.i.reass, i64 32)
  %121 = xor i64 %_19.i.i.i.i.i.i.i, %b.i.i.i.i.i.i
  %122 = xor i64 %120, 255
  %_2.i3.i.i.i.i.i.i = add i64 %121, %117
  %_5.i6.i.i.i.i.i.i = add i64 %119, %122
  %123 = tail call noundef i64 @llvm.fshl.i64(i64 %117, i64 %117, i64 13)
  %124 = xor i64 %_2.i3.i.i.i.i.i.i, %123
  %125 = tail call noundef i64 @llvm.fshl.i64(i64 %119, i64 %119, i64 16)
  %126 = xor i64 %125, %_5.i6.i.i.i.i.i.i
  %127 = tail call noundef i64 @llvm.fshl.i64(i64 %_2.i3.i.i.i.i.i.i, i64 %_2.i3.i.i.i.i.i.i, i64 32)
  %_16.i7.i.i.i.i.i.i = add i64 %124, %_5.i6.i.i.i.i.i.i
  %_19.i8.i.i.i.i.i.i = add i64 %126, %127
  %128 = tail call noundef i64 @llvm.fshl.i64(i64 %124, i64 %124, i64 17)
  %129 = xor i64 %_16.i7.i.i.i.i.i.i, %128
  %130 = tail call noundef i64 @llvm.fshl.i64(i64 %126, i64 %126, i64 21)
  %131 = xor i64 %130, %_19.i8.i.i.i.i.i.i
  %132 = tail call noundef i64 @llvm.fshl.i64(i64 %_16.i7.i.i.i.i.i.i, i64 %_16.i7.i.i.i.i.i.i, i64 32)
  %_30.i.i.i.i.i.i.i = add i64 %129, %_19.i8.i.i.i.i.i.i
  %_33.i.i.i.i.i.i.i = add i64 %131, %132
  %133 = tail call noundef i64 @llvm.fshl.i64(i64 %129, i64 %129, i64 13)
  %134 = xor i64 %133, %_30.i.i.i.i.i.i.i
  %135 = tail call noundef i64 @llvm.fshl.i64(i64 %131, i64 %131, i64 16)
  %136 = xor i64 %135, %_33.i.i.i.i.i.i.i
  %137 = tail call noundef i64 @llvm.fshl.i64(i64 %_30.i.i.i.i.i.i.i, i64 %_30.i.i.i.i.i.i.i, i64 32)
  %_44.i.i.i.i.i.i.i = add i64 %134, %_33.i.i.i.i.i.i.i
  %_47.i.i.i.i.i.i.i = add i64 %136, %137
  %138 = tail call noundef i64 @llvm.fshl.i64(i64 %134, i64 %134, i64 17)
  %139 = xor i64 %138, %_44.i.i.i.i.i.i.i
  %140 = tail call noundef i64 @llvm.fshl.i64(i64 %136, i64 %136, i64 21)
  %141 = xor i64 %140, %_47.i.i.i.i.i.i.i
  %142 = tail call noundef i64 @llvm.fshl.i64(i64 %_44.i.i.i.i.i.i.i, i64 %_44.i.i.i.i.i.i.i, i64 32)
  %_58.i.i.i.i.i.i.i = add i64 %139, %_47.i.i.i.i.i.i.i
  %_61.i.i.i.i.i.i.i = add i64 %141, %142
  %143 = tail call noundef i64 @llvm.fshl.i64(i64 %139, i64 %139, i64 13)
  %144 = xor i64 %143, %_58.i.i.i.i.i.i.i
  %145 = tail call noundef i64 @llvm.fshl.i64(i64 %141, i64 %141, i64 16)
  %146 = xor i64 %145, %_61.i.i.i.i.i.i.i
  %_72.i.i.i.i.i.i.i = add i64 %144, %_61.i.i.i.i.i.i.i
  %147 = tail call noundef i64 @llvm.fshl.i64(i64 %144, i64 %144, i64 17)
  %148 = tail call noundef i64 @llvm.fshl.i64(i64 %146, i64 %146, i64 21)
  %149 = tail call noundef i64 @llvm.fshl.i64(i64 %_72.i.i.i.i.i.i.i, i64 %_72.i.i.i.i.i.i.i, i64 32)
  %150 = xor i64 %148, %147
  %151 = xor i64 %150, %149
  %_0.i.i.i.i.i.i = xor i64 %151, %_72.i.i.i.i.i.i.i
  br label %bb1.i.i

bb1.i.i:                                          ; preds = %bb6.i20.i, %bb8.i
  %hash.pn.i.i = phi i64 [ %_0.i.i.i.i.i.i, %bb8.i ], [ %157, %bb6.i20.i ]
  %152 = phi i64 [ 0, %bb8.i ], [ %156, %bb6.i20.i ]
  %probe_seq.sroa.0.0.i.i = and i64 %hash.pn.i.i, %3
  %_18.i19.i = getelementptr inbounds nuw i8, ptr %_71.i, i64 %probe_seq.sroa.0.0.i.i
  %dst.sroa.0.0.copyload.i5.i.i = load <16 x i8>, ptr %_18.i19.i, align 1, !noalias !2008
  %153 = icmp slt <16 x i8> %dst.sroa.0.0.copyload.i5.i.i, zeroinitializer
  %154 = bitcast <16 x i1> %153 to i16
  %.not.i.not.i.i = icmp eq i16 %154, 0
  br i1 %.not.i.not.i.i, label %_ZN9hashbrown3raw13RawTableInner26find_insert_index_in_group17h3300eba0ea035b7cE.exit.i.i, label %bb3.i.i.i, !prof !11

bb3.i.i.i:                                        ; preds = %bb1.i.i
  %155 = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %154, i1 true)
  %_17.i.i.i = zext nneg i16 %155 to i64
  %_8.i.i.i = add i64 %probe_seq.sroa.0.0.i.i, %_17.i.i.i
  %_7.i.i.i = and i64 %_8.i.i.i, %3
  br label %_ZN9hashbrown3raw13RawTableInner26find_insert_index_in_group17h3300eba0ea035b7cE.exit.i.i

_ZN9hashbrown3raw13RawTableInner26find_insert_index_in_group17h3300eba0ea035b7cE.exit.i.i: ; preds = %bb3.i.i.i, %bb1.i.i
  %_0.sroa.3.0.i.i.i = phi i64 [ %_7.i.i.i, %bb3.i.i.i ], [ undef, %bb1.i.i ]
  br i1 %.not.i.not.i.i, label %bb6.i20.i, label %bb9.i.i30, !prof !11

bb6.i20.i:                                        ; preds = %_ZN9hashbrown3raw13RawTableInner26find_insert_index_in_group17h3300eba0ea035b7cE.exit.i.i
  %156 = add i64 %152, 16
  %157 = add i64 %156, %probe_seq.sroa.0.0.i.i
  br label %bb1.i.i

bb9.i.i30:                                        ; preds = %_ZN9hashbrown3raw13RawTableInner26find_insert_index_in_group17h3300eba0ea035b7cE.exit.i.i
  %_8.i4.i.i = getelementptr inbounds nuw i8, ptr %_71.i, i64 %_0.sroa.3.0.i.i.i
  %_12.i.i.i = load i8, ptr %_8.i4.i.i, align 1, !noalias !2013, !noundef !4
  %b.i.i.i = icmp sgt i8 %_12.i.i.i, -1
  br i1 %b.i.i.i, label %bb2.i.i.i34, label %bb10.i31, !prof !11

bb2.i.i.i34:                                      ; preds = %bb9.i.i30
  %158 = load <16 x i8>, ptr %_71.i, align 16, !noalias !2016
  %159 = icmp slt <16 x i8> %158, zeroinitializer
  %160 = bitcast <16 x i1> %159 to i16
  %161 = icmp ne i16 %160, 0
  tail call void @llvm.assume(i1 %161), !noalias !1904
  %162 = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %160, i1 true)
  %_25.i.i.i = zext nneg i16 %162 to i64
  br label %bb10.i31

bb10.i31:                                         ; preds = %bb2.i.i.i34, %bb9.i.i30
  %index.sroa.0.0.i.i.i = phi i64 [ %_25.i.i.i, %bb2.i.i.i34 ], [ %_0.sroa.3.0.i.i.i, %bb9.i.i30 ]
  %_82.i = and i64 %_0.i.i.i.i.i.i, %3
  %_86.i = sub i64 %iter.sroa.0.026.i, %_82.i
  %_88.i = sub i64 %index.sroa.0.0.i.i.i, %_82.i
  %_8518.i = xor i64 %_88.i, %_86.i
  %b.unshifted.i = and i64 %_8518.i, %3
  %b.i = icmp ult i64 %b.unshifted.i, 16
  br i1 %b.i, label %bb20.i, label %bb21.i, !prof !1682

bb21.i:                                           ; preds = %bb10.i31
  %_108.i = shl i64 %index.sroa.0.0.i.i.i, 2
  %_110.i = sub nuw nsw i64 -4, %_108.i
  %new_i_p.i = getelementptr inbounds i8, ptr %_71.i, i64 %_110.i
  %_113.i = getelementptr inbounds nuw i8, ptr %_71.i, i64 %index.sroa.0.0.i.i.i
  %prev_ctrl.i = load i8, ptr %_113.i, align 1, !noalias !1990, !noundef !4
  %_117.i = lshr i64 %_0.i.i.i.i.i.i, 57
  %_118.i = trunc nuw nsw i64 %_117.i to i8
  %_122.i = add i64 %index.sroa.0.0.i.i.i, -16
  %_121.i = and i64 %_122.i, %3
  store i8 %_118.i, ptr %_113.i, align 1, !noalias !1990
  %gep.i = getelementptr i8, ptr %invariant.gep.i, i64 %_121.i
  store i8 %_118.i, ptr %gep.i, align 1, !noalias !1990
  %_33.i = icmp eq i8 %prev_ctrl.i, -1
  br i1 %_33.i, label %bb11.i33, label %bb12.i32

bb20.i:                                           ; preds = %bb10.i31
  %_91.i = lshr i64 %_0.i.i.i.i.i.i, 57
  %_92.i = trunc nuw nsw i64 %_91.i to i8
  %_96.i = add i64 %iter.sroa.0.026.i, -16
  %_95.i = and i64 %_96.i, %3
  store i8 %_92.i, ptr %_69.i, align 1, !noalias !1990
  %gep33.i = getelementptr i8, ptr %invariant.gep.i, i64 %_95.i
  store i8 %_92.i, ptr %gep33.i, align 1, !noalias !1990
  br label %bb14.i

bb12.i32:                                         ; preds = %bb21.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2019), !noalias !1904
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2022), !noalias !1904
  %_3.sroa.0.0.copyload.i.i6.i.i.i = load i32, ptr %i_p.i, align 1, !alias.scope !2019, !noalias !2024
  %_4.sroa.0.0.copyload.i.i7.i.i.i = load i32, ptr %new_i_p.i, align 1, !alias.scope !2022, !noalias !2025
  store i32 %_4.sroa.0.0.copyload.i.i7.i.i.i, ptr %i_p.i, align 1, !alias.scope !2019, !noalias !2024
  store i32 %_3.sroa.0.0.copyload.i.i6.i.i.i, ptr %new_i_p.i, align 1, !alias.scope !2022, !noalias !2025
  br label %bb8.i

bb11.i33:                                         ; preds = %bb21.i
  %_135.i = add i64 %iter.sroa.0.026.i, -16
  %_134.i = and i64 %_135.i, %3
  store i8 -1, ptr %_69.i, align 1, !noalias !1990
  %gep31.i = getelementptr i8, ptr %invariant.gep.i, i64 %_134.i
  store i8 -1, ptr %gep31.i, align 1, !noalias !1990
  %163 = load i32, ptr %i_p.i, align 1, !noalias !1990
  store i32 %163, ptr %new_i_p.i, align 1, !noalias !1990
  br label %bb14.i

bb14.i:                                           ; preds = %bb11.i33, %bb20.i, %bb4.i28
  %_62.i = icmp ult i64 %iter.sroa.0.127.i, %_26.i
  %_66.i = zext i1 %_62.i to i64
  %iter.sroa.0.1.i = add nuw i64 %iter.sroa.0.127.i, %_66.i
  br i1 %_62.i, label %bb4.i28, label %_ZN9hashbrown3raw13RawTableInner15rehash_in_place17haee1e6799e4651aaE.exit

_ZN9hashbrown3raw13RawTableInner15rehash_in_place17haee1e6799e4651aaE.exit.critedge: ; preds = %bb2.i
  %_52.i.i.c = load ptr, ptr %self, align 8, !alias.scope !1982, !noalias !1904, !nonnull !4, !noundef !4
  %_53.i.i.c = getelementptr inbounds nuw i8, ptr %_52.i.i.c, i64 16
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %_53.i.i.c, ptr nonnull align 1 %_52.i.i.c, i64 %_26.i, i1 false), !noalias !1989
  br label %_ZN9hashbrown3raw13RawTableInner15rehash_in_place17haee1e6799e4651aaE.exit

_ZN9hashbrown3raw13RawTableInner15rehash_in_place17haee1e6799e4651aaE.exit: ; preds = %bb14.i, %_ZN9hashbrown3raw13RawTableInner15rehash_in_place17haee1e6799e4651aaE.exit.critedge
  %164 = getelementptr inbounds nuw i8, ptr %self, i64 16
  %165 = sub i64 %full_capacity.sroa.0.0.i, %self1.i
  store i64 %165, ptr %164, align 8, !alias.scope !1976, !noalias !1904
  br label %_ZN9hashbrown3raw13RawTableInner20reserve_rehash_inner17h7ec2af33c7dfb99eE.exit

_ZN9hashbrown3raw13RawTableInner20reserve_rehash_inner17h7ec2af33c7dfb99eE.exit: ; preds = %bb1.i1.i.i.i, %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hded40b9ddefe4757E.exit.i.i.i, %bb4.i.i, %_ZN9hashbrown3raw13RawTableInner22fallible_with_capacity17h981b21e9722a5879E.exit, %bb9.i, %_ZN9hashbrown3raw13RawTableInner15rehash_in_place17haee1e6799e4651aaE.exit
  %_0.sroa.4.0.i = phi i64 [ %_11.1.i, %bb9.i ], [ undef, %_ZN9hashbrown3raw13RawTableInner15rehash_in_place17haee1e6799e4651aaE.exit ], [ %self3.i.i.sroa.12.0., %_ZN9hashbrown3raw13RawTableInner22fallible_with_capacity17h981b21e9722a5879E.exit ], [ undef, %bb4.i.i ], [ undef, %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hded40b9ddefe4757E.exit.i.i.i ], [ undef, %bb1.i1.i.i.i ]
  %_0.sroa.0.0.i = phi i64 [ %_11.0.i, %bb9.i ], [ -9223372036854775807, %_ZN9hashbrown3raw13RawTableInner15rehash_in_place17haee1e6799e4651aaE.exit ], [ %self3.i.i.sroa.7.0., %_ZN9hashbrown3raw13RawTableInner22fallible_with_capacity17h981b21e9722a5879E.exit ], [ -9223372036854775807, %bb4.i.i ], [ -9223372036854775807, %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hded40b9ddefe4757E.exit.i.i.i ], [ -9223372036854775807, %bb1.i1.i.i.i ]
  %166 = insertvalue { i64, i64 } poison, i64 %_0.sroa.0.0.i, 0
  %167 = insertvalue { i64, i64 } %166, i64 %_0.sroa.4.0.i, 1
  ret { i64, i64 } %167
}

; hashbrown::raw::RawTable<T,A>::remove
; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn uwtable
define { i32, i64 } @"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$6remove17h8d367b2999601316E"(ptr noalias noundef align 8 captures(none) dereferenceable(32) %self, ptr noundef nonnull %0) unnamed_addr #15 personality ptr @rust_eh_personality {
start:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2026)
  %_6.i = load ptr, ptr %self, align 8, !alias.scope !2026, !noalias !2029, !nonnull !4, !noundef !4
  %1 = ptrtoint ptr %_6.i to i64
  %2 = ptrtoint ptr %0 to i64
  %3 = sub i64 %1, %2
  %4 = ashr exact i64 %3, 2
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2031)
  %_6.i.i = add nsw i64 %4, -16
  %5 = getelementptr inbounds nuw i8, ptr %self, i64 8
  %_7.i.i = load i64, ptr %5, align 8, !alias.scope !2034, !noalias !2029, !noundef !4
  %index_before.i.i = and i64 %_6.i.i, %_7.i.i
  %_15.i.i = getelementptr inbounds nuw i8, ptr %_6.i, i64 %index_before.i.i
  %dst.sroa.0.0.copyload.i23.i.i = load <16 x i8>, ptr %_15.i.i, align 1, !noalias !2035
  %6 = icmp eq <16 x i8> %dst.sroa.0.0.copyload.i23.i.i, splat (i8 -1)
  %7 = bitcast <16 x i1> %6 to i16
  %_24.i.i = getelementptr inbounds nuw i8, ptr %_6.i, i64 %4
  %dst.sroa.0.0.copyload.i624.i.i = load <16 x i8>, ptr %_24.i.i, align 1, !noalias !2038
  %8 = icmp eq <16 x i8> %dst.sroa.0.0.copyload.i624.i.i, splat (i8 -1)
  %9 = bitcast <16 x i1> %8 to i16
  %10 = tail call range(i16 0, 17) i16 @llvm.ctlz.i16(i16 %7, i1 false)
  %11 = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %9, i1 false)
  %narrow.i.i = add nuw nsw i16 %11, %10
  %_11.i.i = icmp samesign ugt i16 %narrow.i.i, 15
  br i1 %_11.i.i, label %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$13erase_no_drop17h92401ca7795c8600E.exit", label %bb2.i.i

bb2.i.i:                                          ; preds = %start
  %12 = getelementptr inbounds nuw i8, ptr %self, i64 16
  %13 = load i64, ptr %12, align 8, !alias.scope !2034, !noalias !2029, !noundef !4
  %14 = add i64 %13, 1
  store i64 %14, ptr %12, align 8, !alias.scope !2034, !noalias !2029
  br label %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$13erase_no_drop17h92401ca7795c8600E.exit"

"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$13erase_no_drop17h92401ca7795c8600E.exit": ; preds = %start, %bb2.i.i
  %ctrl.sroa.0.0.i.i = phi i8 [ -1, %bb2.i.i ], [ -128, %start ]
  store i8 %ctrl.sroa.0.0.i.i, ptr %_24.i.i, align 1, !noalias !2041
  %_46.i.i = getelementptr i8, ptr %_15.i.i, i64 16
  store i8 %ctrl.sroa.0.0.i.i, ptr %_46.i.i, align 1, !noalias !2041
  %15 = getelementptr inbounds nuw i8, ptr %self, i64 24
  %16 = load i64, ptr %15, align 8, !alias.scope !2034, !noalias !2029, !noundef !4
  %17 = add i64 %16, -1
  store i64 %17, ptr %15, align 8, !alias.scope !2034, !noalias !2029
  %18 = getelementptr inbounds i8, ptr %0, i64 -4
  %_5 = load i32, ptr %18, align 4, !range !42, !noundef !4
  %19 = insertvalue { i32, i64 } poison, i32 %_5, 0
  %20 = insertvalue { i32, i64 } %19, i64 %4, 1
  ret { i32, i64 } %20
}

; hashbrown::raw::RawTable<T,A>::reserve
; Function Attrs: nonlazybind uwtable
define void @"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$7reserve17h3b0d1f8cf6e2c407E"(ptr noalias noundef align 8 captures(none) dereferenceable(32) %self, i64 noundef %additional, ptr noalias noundef readonly align 8 captures(none) dereferenceable(16) %hasher) unnamed_addr #1 personality ptr @rust_eh_personality {
start:
  %0 = getelementptr inbounds nuw i8, ptr %self, i64 16
  %_5 = load i64, ptr %0, align 8, !noundef !4
  %b = icmp ugt i64 %additional, %_5
  br i1 %b, label %bb8, label %bb4, !prof !11

bb8:                                              ; preds = %start
; call hashbrown::raw::RawTable<T,A>::reserve_rehash
  %1 = tail call { i64, i64 } @"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$14reserve_rehash17h5084f6aee36d1827E"(ptr noalias noundef align 8 dereferenceable(32) %self, i64 noundef %additional, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %hasher, i1 noundef zeroext true)
  %_8.0 = extractvalue { i64, i64 } %1, 0
  %2 = icmp eq i64 %_8.0, -9223372036854775807
  tail call void @llvm.assume(i1 %2)
  br label %bb4

bb4:                                              ; preds = %bb8, %start
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read, inaccessiblemem: read) uwtable
define noundef range(i8 -1, 2) i8 @cmpfunc(ptr noalias noundef readonly align 4 captures(none) dereferenceable(4) %a, ptr noalias noundef readonly align 4 captures(none) dereferenceable(4) %b) unnamed_addr #13 {
start:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2042)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2045)
  %_3.i = load i32, ptr %a, align 4, !alias.scope !2042, !noalias !2045, !noundef !4
  %_4.i = load i32, ptr %b, align 4, !alias.scope !2045, !noalias !2042, !noundef !4
  %_0.i = tail call noundef range(i8 -1, 2) i8 @llvm.scmp.i8.i32(i32 %_3.i, i32 %_4.i)
  ret i8 %_0.i
}

; Function Attrs: nonlazybind uwtable
define noundef range(i32 0, 2) i32 @f_gold(ptr dead_on_return noalias noundef align 8 captures(address) dereferenceable(24) %str) unnamed_addr #1 personality ptr @rust_eh_personality {
start:
  %c = alloca [4 x i8], align 4
  %set = alloca [48 x i8], align 8
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %set)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2047)
  %_3.i.i.i.i.i = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr @"_ZN3std4hash6random11RandomState3new4KEYS29_$u7b$$u7b$constant$u7d$$u7d$28_$u7b$$u7b$closure$u7d$$u7d$23__RUST_STD_INTERNAL_VAL17h80d8e1569169cac2E")
  %_12.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %_3.i.i.i.i.i, i64 16
  %0 = load i8, ptr %_12.i.i.i.i.i.i, align 8, !range !3, !noalias !2050, !noundef !4
  %_4.i.i.i1.i.i.i = trunc nuw i8 %0 to i1
  br i1 %_4.i.i.i1.i.i.i, label %"_ZN3std11collections4hash3set16HashSet$LT$T$GT$3new17h262ff5ef219f3cecE.exit", label %bb2.i.i.i.i.i.i, !prof !1682

bb2.i.i.i.i.i.i:                                  ; preds = %start
; invoke std::sys::random::linux::hashmap_random_keys
  %1 = invoke { i64, i64 } @_ZN3std3sys6random5linux19hashmap_random_keys17h6146797cc86fe2ccE()
          to label %.noexc unwind label %cleanup

.noexc:                                           ; preds = %bb2.i.i.i.i.i.i
  %2 = extractvalue { i64, i64 } %1, 0
  %3 = extractvalue { i64, i64 } %1, 1
  %4 = getelementptr inbounds nuw i8, ptr %_3.i.i.i.i.i, i64 8
  store i64 %2, ptr %_3.i.i.i.i.i, align 8, !noalias !2064
  store i64 %3, ptr %4, align 8, !noalias !2064
  store i8 1, ptr %_12.i.i.i.i.i.i, align 8, !noalias !2064
  br label %"_ZN3std11collections4hash3set16HashSet$LT$T$GT$3new17h262ff5ef219f3cecE.exit"

"_ZN3std11collections4hash3set16HashSet$LT$T$GT$3new17h262ff5ef219f3cecE.exit": ; preds = %start, %.noexc
  %_9.i.i.i.i.i.i = load i64, ptr %_3.i.i.i.i.i, align 8, !noalias !2067, !noundef !4
  %5 = getelementptr inbounds nuw i8, ptr %_3.i.i.i.i.i, i64 8
  %_10.i.i.i.i.i.i = load i64, ptr %5, align 8, !noalias !2067, !noundef !4
  %_4.i.i.i.i.i.i = add i64 %_9.i.i.i.i.i.i, 1
  store i64 %_4.i.i.i.i.i.i, ptr %_3.i.i.i.i.i, align 8, !noalias !2067
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %set, ptr noundef nonnull align 8 dereferenceable(32) @anon.faf6f5ceec9f3955f7678f503c36246b.0, i64 32, i1 false)
  %_1.sroa.4.0._0.sroa_idx.i = getelementptr inbounds nuw i8, ptr %set, i64 32
  store i64 %_9.i.i.i.i.i.i, ptr %_1.sroa.4.0._0.sroa_idx.i, align 8, !alias.scope !2047
  %_1.sroa.5.0._0.sroa_idx.i = getelementptr inbounds nuw i8, ptr %set, i64 40
  store i64 %_10.i.i.i.i.i.i, ptr %_1.sroa.5.0._0.sroa_idx.i, align 8, !alias.scope !2047
  %6 = getelementptr inbounds nuw i8, ptr %str, i64 8
  %_6.i.i = load ptr, ptr %6, align 8, !alias.scope !2068, !nonnull !4, !noundef !4
  %7 = getelementptr inbounds nuw i8, ptr %str, i64 16
  %len.i.i = load i64, ptr %7, align 8, !alias.scope !2068, !noundef !4
  %_7.i = getelementptr inbounds nuw i8, ptr %_6.i.i, i64 %len.i.i
  br label %bb5

bb35:                                             ; preds = %cleanup1, %cleanup
  %.pn = phi { ptr, i32 } [ %9, %cleanup1 ], [ %8, %cleanup ]
; invoke core::ptr::drop_in_place<alloc::string::String>
  invoke fastcc void @"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hfad571b22e59a72dE"(ptr noalias noundef align 8 dereferenceable(24) %str) #35
          to label %common.resume unwind label %terminate

cleanup:                                          ; preds = %bb2.i.i.i.i.i.i
  %8 = landingpad { ptr, i32 }
          cleanup
  br label %bb35

cleanup1:                                         ; preds = %bb13
  %9 = landingpad { ptr, i32 }
          cleanup
; call core::ptr::drop_in_place<std::collections::hash::set::HashSet<char>>
  call fastcc void @"_ZN4core3ptr69drop_in_place$LT$std..collections..hash..set..HashSet$LT$char$GT$$GT$17ha9c0ec42ee0b1b82E"(ptr noalias noundef align 8 dereferenceable(48) %set) #35
  br label %bb35

bb5:                                              ; preds = %bb5.backedge, %"_ZN3std11collections4hash3set16HashSet$LT$T$GT$3new17h262ff5ef219f3cecE.exit"
  %iter.sroa.0.0 = phi ptr [ %_6.i.i, %"_ZN3std11collections4hash3set16HashSet$LT$T$GT$3new17h262ff5ef219f3cecE.exit" ], [ %iter.sroa.0.2, %bb5.backedge ]
  %_7.i.i.i = icmp ne ptr %iter.sroa.0.0, %_7.i
  %spec.select.idx = zext i1 %_7.i.i.i to i64
  %spec.select = getelementptr inbounds nuw i8, ptr %iter.sroa.0.0, i64 %spec.select.idx
  br i1 %_7.i.i.i, label %bb14.i.i, label %bb6

bb14.i.i:                                         ; preds = %bb5
  %x.i.i = load i8, ptr %iter.sroa.0.0, align 1, !noalias !2073, !noundef !4
  %_6.i.i4 = icmp sgt i8 %x.i.i, -1
  br i1 %_6.i.i4, label %bb3.i.i, label %bb4.i.i

bb4.i.i:                                          ; preds = %bb14.i.i
  %_30.i.i = and i8 %x.i.i, 31
  %init.i.i = zext nneg i8 %_30.i.i to i32
  %_7.i10.i.i = icmp ne ptr %spec.select, %_7.i
  tail call void @llvm.assume(i1 %_7.i10.i.i)
  %_18.i12.i.i = getelementptr inbounds nuw i8, ptr %spec.select, i64 1
  %y.i.i = load i8, ptr %spec.select, align 1, !noalias !2073, !noundef !4
  %_34.i.i = shl nuw nsw i32 %init.i.i, 6
  %_36.i.i = and i8 %y.i.i, 63
  %_35.i.i = zext nneg i8 %_36.i.i to i32
  %10 = or disjoint i32 %_34.i.i, %_35.i.i
  %_13.i.i = icmp ugt i8 %x.i.i, -33
  br i1 %_13.i.i, label %bb6.i.i, label %bb6

bb3.i.i:                                          ; preds = %bb14.i.i
  %_7.i.i = zext nneg i8 %x.i.i to i32
  br label %bb6

bb6.i.i:                                          ; preds = %bb4.i.i
  %_7.i17.i.i = icmp ne ptr %_18.i12.i.i, %_7.i
  tail call void @llvm.assume(i1 %_7.i17.i.i)
  %_18.i19.i.i = getelementptr inbounds nuw i8, ptr %spec.select, i64 2
  %z.i.i = load i8, ptr %_18.i12.i.i, align 1, !noalias !2073, !noundef !4
  %_40.i.i = shl nuw nsw i32 %_35.i.i, 6
  %_42.i.i = and i8 %z.i.i, 63
  %_41.i.i = zext nneg i8 %_42.i.i to i32
  %y_z.i.i = or disjoint i32 %_40.i.i, %_41.i.i
  %_20.i.i = shl nuw nsw i32 %init.i.i, 12
  %11 = or disjoint i32 %y_z.i.i, %_20.i.i
  %_21.i.i = icmp ugt i8 %x.i.i, -17
  br i1 %_21.i.i, label %bb8.i.i, label %bb6

bb8.i.i:                                          ; preds = %bb6.i.i
  %_7.i24.i.i = icmp ne ptr %_18.i19.i.i, %_7.i
  tail call void @llvm.assume(i1 %_7.i24.i.i)
  %_18.i26.i.i = getelementptr inbounds nuw i8, ptr %spec.select, i64 3
  %w.i.i = load i8, ptr %_18.i19.i.i, align 1, !noalias !2073, !noundef !4
  %_26.i.i = shl nuw nsw i32 %init.i.i, 18
  %_25.i.i = and i32 %_26.i.i, 1835008
  %_46.i.i = shl nuw nsw i32 %y_z.i.i, 6
  %_48.i.i = and i8 %w.i.i, 63
  %_47.i.i = zext nneg i8 %_48.i.i to i32
  %_27.i.i = or disjoint i32 %_46.i.i, %_47.i.i
  %12 = or disjoint i32 %_27.i.i, %_25.i.i
  br label %bb6

bb6:                                              ; preds = %bb8.i.i, %bb6.i.i, %bb3.i.i, %bb4.i.i, %bb5
  %iter.sroa.0.2 = phi ptr [ %spec.select, %bb5 ], [ %spec.select, %bb3.i.i ], [ %_18.i26.i.i, %bb8.i.i ], [ %_18.i19.i.i, %bb6.i.i ], [ %_18.i12.i.i, %bb4.i.i ]
  %spec.select.i = phi i32 [ 1114112, %bb5 ], [ %_7.i.i, %bb3.i.i ], [ %12, %bb8.i.i ], [ %11, %bb6.i.i ], [ %10, %bb4.i.i ]
  %.not = icmp eq i32 %spec.select.i, 1114112
  br i1 %.not, label %bb9, label %bb8

bb8:                                              ; preds = %bb6
  store i32 %spec.select.i, ptr %c, align 4
; call hashbrown::map::HashMap<K,V,S,A>::contains_key
  %_0.i = call noundef zeroext i1 @"_ZN9hashbrown3map28HashMap$LT$K$C$V$C$S$C$A$GT$12contains_key17hb449a1137405fcfcE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %set, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %c)
  br i1 %_0.i, label %bb11, label %bb13

bb9:                                              ; preds = %bb6
  %_0.i5 = load i64, ptr %7, align 8, !alias.scope !2078, !noundef !4
  %_2.i = icmp sgt i64 %_0.i5, -1
  tail call void @llvm.assume(i1 %_2.i)
  %_21 = and i64 %_0.i5, 1
  %_20 = icmp eq i64 %_21, 0
  %13 = getelementptr inbounds nuw i8, ptr %set, i64 24
  %_2.i6 = load i64, ptr %13, align 8, !noundef !4
  br i1 %_20, label %bb17, label %bb24

bb17:                                             ; preds = %bb9
  %_0.i7 = icmp eq i64 %_2.i6, 0
  br i1 %_0.i7, label %bb27, label %bb31

bb24:                                             ; preds = %bb9
  %_30 = icmp eq i64 %_2.i6, 1
  br i1 %_30, label %bb27, label %bb31

bb31:                                             ; preds = %bb17, %bb24, %bb27
  %_0.sroa.0.0 = phi i32 [ 1, %bb27 ], [ 0, %bb24 ], [ 0, %bb17 ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2081)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2084)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2087)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2090)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2093)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2096)
  %14 = getelementptr inbounds nuw i8, ptr %set, i64 8
  %_6.i.i.i.i.i.i = load i64, ptr %14, align 8, !alias.scope !2099, !noundef !4
  %_4.i.i.i.i.i.i11 = icmp eq i64 %_6.i.i.i.i.i.i, 0
  br i1 %_4.i.i.i.i.i.i11, label %bb32, label %bb1.i.i.i.i.i.i

bb1.i.i.i.i.i.i:                                  ; preds = %bb31
  %_10.i.i.i.i.i.i12 = add i64 %_6.i.i.i.i.i.i, 1
  %_32.1.i.i.i.i.i.i.i = icmp ult i64 %_10.i.i.i.i.i.i12, 4611686018427387901
  tail call void @llvm.assume(i1 %_32.1.i.i.i.i.i.i.i)
  %_25.0.i.i.i.i.i.i.i = shl nuw i64 %_10.i.i.i.i.i.i12, 2
  %_32.0.i.i.i.i.i.i.i = add i64 %_25.0.i.i.i.i.i.i.i, 15
  %ctrl_offset.i.i.i.i.i.i.i = and i64 %_32.0.i.i.i.i.i.i.i, -16
  %rhs5.i.i.i.i.i.i.i = add i64 %_6.i.i.i.i.i.i, 17
  %_37.0.i.i.i.i.i.i.i = add i64 %rhs5.i.i.i.i.i.i.i, %ctrl_offset.i.i.i.i.i.i.i
  %_37.1.i.i.i.i.i.i.i = icmp uge i64 %_37.0.i.i.i.i.i.i.i, %ctrl_offset.i.i.i.i.i.i.i
  %_19.i.i.i.i.i.i.i = icmp ult i64 %_37.0.i.i.i.i.i.i.i, 9223372036854775793
  tail call void @llvm.assume(i1 %_37.1.i.i.i.i.i.i.i)
  tail call void @llvm.assume(i1 %_19.i.i.i.i.i.i.i)
  %_4.not.i.i.i.i.i.i.i = icmp eq i64 %_37.0.i.i.i.i.i.i.i, 0
  br i1 %_4.not.i.i.i.i.i.i.i, label %bb32, label %bb1.i2.i.i.i.i.i.i

bb1.i2.i.i.i.i.i.i:                               ; preds = %bb1.i.i.i.i.i.i
  %self1.i.i.i.i.i.i = load ptr, ptr %set, align 8, !alias.scope !2099, !nonnull !4, !noundef !4
  %_18.i.i.i.i.i.i = sub nsw i64 0, %ctrl_offset.i.i.i.i.i.i.i
  %ptr.i.i.i.i.i.i = getelementptr inbounds i8, ptr %self1.i.i.i.i.i.i, i64 %_18.i.i.i.i.i.i
; call __rustc::__rust_dealloc
  tail call void @_RNvCsdBezzDwma51_7___rustc14___rust_dealloc(ptr noundef nonnull %ptr.i.i.i.i.i.i, i64 noundef %_37.0.i.i.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 16) #32, !noalias !2099
  br label %bb32

bb27:                                             ; preds = %bb24, %bb17
  br label %bb31

bb32:                                             ; preds = %bb1.i2.i.i.i.i.i.i, %bb1.i.i.i.i.i.i, %bb31
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %set)
; invoke <alloc::vec::Vec<T,A> as core::ops::drop::Drop>::drop
  invoke void @"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h6ffafe41d4ff3563E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %str)
          to label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hfad571b22e59a72dE.exit" unwind label %cleanup.i.i

cleanup.i.i:                                      ; preds = %bb32
  %15 = landingpad { ptr, i32 }
          cleanup
; invoke <alloc::raw_vec::RawVec<T,A> as core::ops::drop::Drop>::drop
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h86eef0594e496705E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %str)
          to label %common.resume unwind label %terminate.i.i

terminate.i.i:                                    ; preds = %cleanup.i.i
  %16 = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer
; call core::panicking::panic_in_cleanup
  tail call void @_ZN4core9panicking16panic_in_cleanup17h5f6bde45d17ae243E() #31
  unreachable

common.resume:                                    ; preds = %bb35, %cleanup.i.i
  %common.resume.op = phi { ptr, i32 } [ %15, %cleanup.i.i ], [ %.pn, %bb35 ]
  resume { ptr, i32 } %common.resume.op

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hfad571b22e59a72dE.exit": ; preds = %bb32
; call <alloc::raw_vec::RawVec<T,A> as core::ops::drop::Drop>::drop
  tail call void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h86eef0594e496705E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %str)
  ret i32 %_0.sroa.0.0

bb13:                                             ; preds = %bb8
; invoke hashbrown::map::HashMap<K,V,S,A>::insert
  %_5.i14 = invoke noundef zeroext i1 @"_ZN9hashbrown3map28HashMap$LT$K$C$V$C$S$C$A$GT$6insert17h872682af38f14043E"(ptr noalias noundef nonnull align 8 dereferenceable(48) %set, i32 noundef range(i32 0, 1114112) %spec.select.i)
          to label %bb5.backedge unwind label %cleanup1

bb5.backedge:                                     ; preds = %bb13, %bb11
  br label %bb5

bb11:                                             ; preds = %bb8
; call hashbrown::map::HashMap<K,V,S,A>::remove_entry
  %17 = call noundef i32 @"_ZN9hashbrown3map28HashMap$LT$K$C$V$C$S$C$A$GT$12remove_entry17h19595892a878febaE"(ptr noalias noundef nonnull align 8 dereferenceable(48) %set, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %c)
  br label %bb5.backedge

terminate:                                        ; preds = %bb35
  %18 = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer
; call core::panicking::panic_in_cleanup
  tail call void @_ZN4core9panicking16panic_in_cleanup17h5f6bde45d17ae243E() #31
  unreachable
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define noundef range(i64 0, 2305843009213693952) i64 @len(ptr noalias noundef nonnull readonly align 4 captures(none) %arr.0, i64 noundef returned range(i64 0, 2305843009213693952) %arr.1) unnamed_addr #9 {
start:
  ret i64 %arr.1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define noundef i32 @max(i32 noundef %x, i32 noundef %y) unnamed_addr #9 {
start:
  %x.y = tail call i32 @llvm.smax.i32(i32 %x, i32 %y)
  ret i32 %x.y
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define noundef i32 @min(i32 noundef %x, i32 noundef %y) unnamed_addr #9 {
start:
  %x.y = tail call i32 @llvm.smin.i32(i32 %x, i32 %y)
  ret i32 %x.y
}

; Function Attrs: nonlazybind uwtable
define void @sort(ptr noalias noundef nonnull align 4 %arr.0, i64 noundef range(i64 0, 2305843009213693952) %arr.1) unnamed_addr #1 personality ptr @rust_eh_personality {
start:
  %compare.i = alloca [0 x i8], align 1
  %is_less.i.i = alloca [8 x i8], align 8
  call void @llvm.lifetime.start.p0(i64 0, ptr nonnull %compare.i)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %is_less.i.i), !noalias !2100
  store ptr %compare.i, ptr %is_less.i.i, align 8, !noalias !2103
  %b.i.i = icmp samesign ult i64 %arr.1, 2
  br i1 %b.i.i, label %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by17hd2eab5b061d5039dE.exit", label %bb7.i.i, !prof !1682

bb7.i.i:                                          ; preds = %start
  %b1.i.i = icmp samesign ult i64 %arr.1, 21
  br i1 %b1.i.i, label %bb9.i.i, label %bb10.i.i, !prof !1682

bb10.i.i:                                         ; preds = %bb7.i.i
; call core::slice::sort::stable::driftsort_main
  call void @_ZN4core5slice4sort6stable14driftsort_main17h48d93dd9494788eaE(ptr noalias noundef nonnull align 4 %arr.0, i64 noundef range(i64 0, 2305843009213693952) %arr.1, ptr noalias noundef align 8 dereferenceable(8) %is_less.i.i)
  br label %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by17hd2eab5b061d5039dE.exit"

bb9.i.i:                                          ; preds = %bb7.i.i
; call core::slice::sort::shared::smallsort::insertion_sort_shift_left
  call void @_ZN4core5slice4sort6shared9smallsort25insertion_sort_shift_left17hf70ee3bbb8914ac5E(ptr noalias noundef nonnull align 4 %arr.0, i64 noundef range(i64 0, 2305843009213693952) %arr.1, i64 noundef 1, ptr noalias align 8 poison)
  br label %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by17hd2eab5b061d5039dE.exit"

"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by17hd2eab5b061d5039dE.exit": ; preds = %start, %bb10.i.i, %bb9.i.i
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %is_less.i.i), !noalias !2100
  call void @llvm.lifetime.end.p0(i64 0, ptr nonnull %compare.i)
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #17

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #18

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #17

; Function Attrs: nounwind nonlazybind uwtable
declare noundef range(i32 0, 10) i32 @rust_eh_personality(i32 noundef, i32 noundef, i64 noundef, ptr noundef, ptr noundef) unnamed_addr #3

; std::sys::random::linux::hashmap_random_keys
; Function Attrs: nonlazybind uwtable
declare { i64, i64 } @_ZN3std3sys6random5linux19hashmap_random_keys17h6146797cc86fe2ccE() unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare nonnull ptr @llvm.threadlocal.address.p0(ptr nonnull) #19

; std::thread::local::panic_access_error
; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_ZN3std6thread5local18panic_access_error17h889b72f0e071fac8E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #20

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.fshl.i64(i64, i64, i64) #19

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare range(i8 -1, 2) i8 @llvm.scmp.i8.i32(i32, i32) #19

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #21

; <alloc::vec::Vec<T,A> as core::ops::drop::Drop>::drop
; Function Attrs: nonlazybind uwtable
declare void @"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h6ffafe41d4ff3563E"(ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #1

; core::panicking::panic_in_cleanup
; Function Attrs: cold minsize noinline noreturn nounwind nonlazybind optsize uwtable
declare void @_ZN4core9panicking16panic_in_cleanup17h5f6bde45d17ae243E() unnamed_addr #22

; <alloc::raw_vec::RawVec<T,A> as core::ops::drop::Drop>::drop
; Function Attrs: nonlazybind uwtable
declare void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h86eef0594e496705E"(ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #1

; core::panicking::panic_fmt
; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_ZN4core9panicking9panic_fmt17ha4414e4328fe24a0E(ptr noundef nonnull, ptr noundef nonnull, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #20

; Function Attrs: cold noreturn nounwind memory(inaccessiblemem: write)
declare void @llvm.trap() #23

; core::slice::sort::shared::smallsort::panic_on_ord_violation
; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_ZN4core5slice4sort6shared9smallsort22panic_on_ord_violation17hc77a22a2d50782cdE() unnamed_addr #20

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #24

; core::slice::index::slice_index_fail
; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_ZN4core5slice5index16slice_index_fail17h62807bcaa490c9c1E(i64 noundef, i64 noundef, i64 noundef, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #20

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctlz.i64(i64, i1 immarg) #19

; core::slice::sort::stable::drift::sqrt_approx
; Function Attrs: nonlazybind uwtable
declare noundef i64 @_ZN4core5slice4sort6stable5drift11sqrt_approx17h72a4dc1ae46294f4E(i64 noundef) unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.usub.sat.i64(i64, i64) #19

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #19

; __rustc::__rust_no_alloc_shim_is_unstable_v2
; Function Attrs: nounwind nonlazybind uwtable
declare void @_RNvCsdBezzDwma51_7___rustc35___rust_no_alloc_shim_is_unstable_v2() unnamed_addr #3

; __rustc::__rust_alloc
; Function Attrs: nounwind nonlazybind allockind("alloc,uninitialized,aligned") allocsize(0) uwtable
declare noalias noundef ptr @_RNvCsdBezzDwma51_7___rustc12___rust_alloc(i64 noundef, i64 allocalign noundef) unnamed_addr #25

; alloc::raw_vec::RawVecInner<A>::try_allocate_in
; Function Attrs: nonlazybind uwtable
declare void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$15try_allocate_in17had089b3ffc2704ecE"(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), i64 noundef, i1 noundef zeroext, i64 noundef range(i64 1, -9223372036854775807), i64 noundef) unnamed_addr #1

; alloc::raw_vec::handle_error
; Function Attrs: cold minsize noreturn nonlazybind optsize uwtable
declare void @_ZN5alloc7raw_vec12handle_error17h3a8c375904e593b2E(i64 noundef range(i64 0, -9223372036854775807), i64) unnamed_addr #26

; __rustc::__rust_dealloc
; Function Attrs: nounwind nonlazybind allockind("free") uwtable
declare void @_RNvCsdBezzDwma51_7___rustc14___rust_dealloc(ptr allocptr noundef, i64 noundef, i64 noundef) unnamed_addr #27

; alloc::raw_vec::RawVecInner<A>::deallocate
; Function Attrs: nonlazybind uwtable
declare void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$10deallocate17h6ddf8733b0451bb9E"(ptr noalias noundef align 8 dereferenceable(16), i64 noundef range(i64 1, -9223372036854775807), i64 noundef) unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.cttz.i16(i16, i1 immarg) #19

; hashbrown::raw::Fallibility::capacity_overflow
; Function Attrs: nonlazybind uwtable
declare { i64, i64 } @_ZN9hashbrown3raw11Fallibility17capacity_overflow17h2ba85003cd4f3895E(i1 noundef zeroext) unnamed_addr #1

; hashbrown::raw::Fallibility::alloc_err
; Function Attrs: nonlazybind uwtable
declare { i64, i64 } @_ZN9hashbrown3raw11Fallibility9alloc_err17hdec7f04e13c07ca8E(i1 noundef zeroext, i64 noundef range(i64 1, -9223372036854775807), i64 noundef) unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #18

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.ctlz.i16(i16, i1 immarg) #19

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #28

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #29

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #29

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #29

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #29

attributes #0 = { cold nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #1 = { nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #2 = { nofree norecurse nosync nounwind nonlazybind memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #3 = { nounwind nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #5 = { nofree nosync nounwind nonlazybind memory(read, inaccessiblemem: readwrite) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #7 = { nounwind nonlazybind memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #8 = { noinline nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #9 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #10 = { nofree norecurse nosync nounwind nonlazybind memory(read, argmem: readwrite, inaccessiblemem: readwrite) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #11 = { nofree norecurse nosync nounwind nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #12 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(readwrite, inaccessiblemem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #13 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read, inaccessiblemem: read) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #14 = { nofree norecurse nosync nounwind nonlazybind memory(read, inaccessiblemem: readwrite) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #15 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #16 = { cold noinline nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #17 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #18 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #19 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #20 = { cold noinline noreturn nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #21 = { mustprogress nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #22 = { cold minsize noinline noreturn nounwind nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #23 = { cold noreturn nounwind memory(inaccessiblemem: write) }
attributes #24 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #25 = { nounwind nonlazybind allockind("alloc,uninitialized,aligned") allocsize(0) uwtable "alloc-family"="__rust_alloc" "alloc-variant-zeroed"="_RNvCsdBezzDwma51_7___rustc19___rust_alloc_zeroed" "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #26 = { cold minsize noreturn nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #27 = { nounwind nonlazybind allockind("free") uwtable "alloc-family"="__rust_alloc" "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #28 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #29 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #30 = { noinline noreturn }
attributes #31 = { cold noreturn nounwind }
attributes #32 = { nounwind }
attributes #33 = { noreturn }
attributes #34 = { noinline }
attributes #35 = { cold }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 2, !"RtLibUseGOT", i32 1}
!2 = !{!"rustc version 1.93.1 (01f6ddf75 2026-02-11)"}
!3 = !{i8 0, i8 2}
!4 = !{}
!5 = !{!6}
!6 = distinct !{!6, !7, !"_ZN3std6thread5local17LocalKey$LT$T$GT$8try_with17h6d3208ed701a165aE: %self"}
!7 = distinct !{!7, !"_ZN3std6thread5local17LocalKey$LT$T$GT$8try_with17h6d3208ed701a165aE"}
!8 = !{!9}
!9 = distinct !{!9, !7, !"_ZN3std6thread5local17LocalKey$LT$T$GT$8try_with17h6d3208ed701a165aE: %_0"}
!10 = !{!9, !6}
!11 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!12 = !{!13}
!13 = distinct !{!13, !14, !"_ZN4core3ptr10swap_chunk17hb16347bff0b70c4bE: %x"}
!14 = distinct !{!14, !"_ZN4core3ptr10swap_chunk17hb16347bff0b70c4bE"}
!15 = !{!16}
!16 = distinct !{!16, !14, !"_ZN4core3ptr10swap_chunk17hb16347bff0b70c4bE: %y"}
!17 = !{!18}
!18 = distinct !{!18, !14, !"_ZN4core3ptr10swap_chunk17hb16347bff0b70c4bE: %x:It1"}
!19 = !{!20}
!20 = distinct !{!20, !14, !"_ZN4core3ptr10swap_chunk17hb16347bff0b70c4bE: %y:It1"}
!21 = !{!22}
!22 = distinct !{!22, !23, !"_ZN4core3ptr89drop_in_place$LT$hashbrown..set..HashSet$LT$char$C$std..hash..random..RandomState$GT$$GT$17h08dfc12decfe16f5E: %_1"}
!23 = distinct !{!23, !"_ZN4core3ptr89drop_in_place$LT$hashbrown..set..HashSet$LT$char$C$std..hash..random..RandomState$GT$$GT$17h08dfc12decfe16f5E"}
!24 = !{!25}
!25 = distinct !{!25, !26, !"_ZN4core3ptr100drop_in_place$LT$hashbrown..map..HashMap$LT$char$C$$LP$$RP$$C$std..hash..random..RandomState$GT$$GT$17h3698db7583c17365E: %_1"}
!26 = distinct !{!26, !"_ZN4core3ptr100drop_in_place$LT$hashbrown..map..HashMap$LT$char$C$$LP$$RP$$C$std..hash..random..RandomState$GT$$GT$17h3698db7583c17365E"}
!27 = !{!28}
!28 = distinct !{!28, !29, !"_ZN4core3ptr76drop_in_place$LT$hashbrown..raw..RawTable$LT$$LP$char$C$$LP$$RP$$RP$$GT$$GT$17h9396a9d3d766a832E: %_1"}
!29 = distinct !{!29, !"_ZN4core3ptr76drop_in_place$LT$hashbrown..raw..RawTable$LT$$LP$char$C$$LP$$RP$$RP$$GT$$GT$17h9396a9d3d766a832E"}
!30 = !{!31}
!31 = distinct !{!31, !32, !"_ZN79_$LT$hashbrown..raw..RawTable$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hfdcf3a01044366e6E: %self"}
!32 = distinct !{!32, !"_ZN79_$LT$hashbrown..raw..RawTable$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hfdcf3a01044366e6E"}
!33 = !{!34}
!34 = distinct !{!34, !35, !"_ZN9hashbrown3raw13RawTableInner16drop_inner_table17hbdff987bad8a68daE: %self"}
!35 = distinct !{!35, !"_ZN9hashbrown3raw13RawTableInner16drop_inner_table17hbdff987bad8a68daE"}
!36 = !{!34, !31, !28, !25, !22}
!37 = !{!38}
!38 = distinct !{!38, !39, !"_ZN74_$LT$std..hash..random..RandomState$u20$as$u20$core..hash..BuildHasher$GT$12build_hasher17h0f2f0c02d90c5e40E: %self"}
!39 = distinct !{!39, !"_ZN74_$LT$std..hash..random..RandomState$u20$as$u20$core..hash..BuildHasher$GT$12build_hasher17h0f2f0c02d90c5e40E"}
!40 = !{!41}
!41 = distinct !{!41, !39, !"_ZN74_$LT$std..hash..random..RandomState$u20$as$u20$core..hash..BuildHasher$GT$12build_hasher17h0f2f0c02d90c5e40E: %_0"}
!42 = !{i32 0, i32 1114112}
!43 = !{!44}
!44 = distinct !{!44, !45, !"_ZN4core4hash5impls51_$LT$impl$u20$core..hash..Hash$u20$for$u20$char$GT$4hash17h8c4e576ed484173fE: %self"}
!45 = distinct !{!45, !"_ZN4core4hash5impls51_$LT$impl$u20$core..hash..Hash$u20$for$u20$char$GT$4hash17h8c4e576ed484173fE"}
!46 = !{!47, !48, !50}
!47 = distinct !{!47, !45, !"_ZN4core4hash5impls51_$LT$impl$u20$core..hash..Hash$u20$for$u20$char$GT$4hash17h8c4e576ed484173fE: %state"}
!48 = distinct !{!48, !49, !"_ZN4core4hash5impls52_$LT$impl$u20$core..hash..Hash$u20$for$u20$$RF$T$GT$4hash17h66c7ffc742178686E: %self"}
!49 = distinct !{!49, !"_ZN4core4hash5impls52_$LT$impl$u20$core..hash..Hash$u20$for$u20$$RF$T$GT$4hash17h66c7ffc742178686E"}
!50 = distinct !{!50, !49, !"_ZN4core4hash5impls52_$LT$impl$u20$core..hash..Hash$u20$for$u20$$RF$T$GT$4hash17h66c7ffc742178686E: %state"}
!51 = !{!52}
!52 = distinct !{!52, !53, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h4bb58e431584b902E: %a"}
!53 = distinct !{!53, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h4bb58e431584b902E"}
!54 = !{!55}
!55 = distinct !{!55, !53, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h4bb58e431584b902E: %b"}
!56 = !{!57}
!57 = distinct !{!57, !58, !"_ZN4core3ops8function5FnMut8call_mut17hb4861b34bf1764a8E: argument 0"}
!58 = distinct !{!58, !"_ZN4core3ops8function5FnMut8call_mut17hb4861b34bf1764a8E"}
!59 = !{!60}
!60 = distinct !{!60, !61, !"_ZN4core5slice4sort6shared5pivot7median317hcf40f420295b7b4aE: %c"}
!61 = distinct !{!61, !"_ZN4core5slice4sort6shared5pivot7median317hcf40f420295b7b4aE"}
!62 = !{!63}
!63 = distinct !{!63, !58, !"_ZN4core3ops8function5FnMut8call_mut17hb4861b34bf1764a8E: argument 1"}
!64 = !{!65}
!65 = distinct !{!65, !66, !"cmpfunc: %a"}
!66 = distinct !{!66, !"cmpfunc"}
!67 = !{!68}
!68 = distinct !{!68, !66, !"cmpfunc: %b"}
!69 = !{!70}
!70 = distinct !{!70, !71, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!71 = distinct !{!71, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!72 = !{!73}
!73 = distinct !{!73, !71, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!74 = !{!70, !65, !57, !52}
!75 = !{!73, !68, !63, !55, !60}
!76 = !{!73, !68, !63, !55}
!77 = !{!70, !65, !57, !52, !60}
!78 = !{!79, !81, !83, !85}
!79 = distinct !{!79, !80, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!80 = distinct !{!80, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!81 = distinct !{!81, !82, !"cmpfunc: %b"}
!82 = distinct !{!82, !"cmpfunc"}
!83 = distinct !{!83, !84, !"_ZN4core3ops8function5FnMut8call_mut17hb4861b34bf1764a8E: argument 1"}
!84 = distinct !{!84, !"_ZN4core3ops8function5FnMut8call_mut17hb4861b34bf1764a8E"}
!85 = distinct !{!85, !86, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h4bb58e431584b902E: %b"}
!86 = distinct !{!86, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h4bb58e431584b902E"}
!87 = !{!88, !89, !90, !91}
!88 = distinct !{!88, !80, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!89 = distinct !{!89, !82, !"cmpfunc: %a"}
!90 = distinct !{!90, !84, !"_ZN4core3ops8function5FnMut8call_mut17hb4861b34bf1764a8E: argument 0"}
!91 = distinct !{!91, !86, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h4bb58e431584b902E: %a"}
!92 = !{!93}
!93 = distinct !{!93, !94, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h4bb58e431584b902E: %a"}
!94 = distinct !{!94, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h4bb58e431584b902E"}
!95 = !{!96}
!96 = distinct !{!96, !94, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h4bb58e431584b902E: %b"}
!97 = !{!98}
!98 = distinct !{!98, !99, !"_ZN4core3ops8function5FnMut8call_mut17hb4861b34bf1764a8E: argument 0"}
!99 = distinct !{!99, !"_ZN4core3ops8function5FnMut8call_mut17hb4861b34bf1764a8E"}
!100 = !{!101}
!101 = distinct !{!101, !99, !"_ZN4core3ops8function5FnMut8call_mut17hb4861b34bf1764a8E: argument 1"}
!102 = !{!103}
!103 = distinct !{!103, !104, !"cmpfunc: %a"}
!104 = distinct !{!104, !"cmpfunc"}
!105 = !{!106}
!106 = distinct !{!106, !104, !"cmpfunc: %b"}
!107 = !{!108}
!108 = distinct !{!108, !109, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!109 = distinct !{!109, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!110 = !{!111}
!111 = distinct !{!111, !109, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!112 = !{!108, !103, !98, !93}
!113 = !{!111, !106, !101, !96}
!114 = !{!115, !117, !119, !121}
!115 = distinct !{!115, !116, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!116 = distinct !{!116, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!117 = distinct !{!117, !118, !"cmpfunc: %b"}
!118 = distinct !{!118, !"cmpfunc"}
!119 = distinct !{!119, !120, !"_ZN4core3ops8function5FnMut8call_mut17hb4861b34bf1764a8E: argument 1"}
!120 = distinct !{!120, !"_ZN4core3ops8function5FnMut8call_mut17hb4861b34bf1764a8E"}
!121 = distinct !{!121, !122, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h4bb58e431584b902E: %b"}
!122 = distinct !{!122, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h4bb58e431584b902E"}
!123 = !{!124, !125, !126, !127}
!124 = distinct !{!124, !116, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!125 = distinct !{!125, !118, !"cmpfunc: %a"}
!126 = distinct !{!126, !120, !"_ZN4core3ops8function5FnMut8call_mut17hb4861b34bf1764a8E: argument 0"}
!127 = distinct !{!127, !122, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h4bb58e431584b902E: %a"}
!128 = !{!129, !131}
!129 = distinct !{!129, !130, !"_ZN99_$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h4fdf3af4f97486a9E: %self"}
!130 = distinct !{!130, !"_ZN99_$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h4fdf3af4f97486a9E"}
!131 = distinct !{!131, !132, !"_ZN4core3ptr80drop_in_place$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$i32$GT$$GT$17hb53178595dbde494E: %_1"}
!132 = distinct !{!132, !"_ZN4core3ptr80drop_in_place$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$i32$GT$$GT$17hb53178595dbde494E"}
!133 = !{!134}
!134 = distinct !{!134, !135, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h4bb58e431584b902E: %a"}
!135 = distinct !{!135, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h4bb58e431584b902E"}
!136 = !{!137}
!137 = distinct !{!137, !135, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h4bb58e431584b902E: %b"}
!138 = !{!139}
!139 = distinct !{!139, !140, !"_ZN4core3ops8function5FnMut8call_mut17hb4861b34bf1764a8E: argument 0"}
!140 = distinct !{!140, !"_ZN4core3ops8function5FnMut8call_mut17hb4861b34bf1764a8E"}
!141 = !{!142}
!142 = distinct !{!142, !140, !"_ZN4core3ops8function5FnMut8call_mut17hb4861b34bf1764a8E: argument 1"}
!143 = !{!144}
!144 = distinct !{!144, !145, !"cmpfunc: %a"}
!145 = distinct !{!145, !"cmpfunc"}
!146 = !{!147}
!147 = distinct !{!147, !145, !"cmpfunc: %b"}
!148 = !{!149}
!149 = distinct !{!149, !150, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!150 = distinct !{!150, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!151 = !{!152}
!152 = distinct !{!152, !150, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!153 = !{!149, !144, !139, !134}
!154 = !{!152, !147, !142, !137}
!155 = !{!156}
!156 = distinct !{!156, !157, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h4bb58e431584b902E: %a"}
!157 = distinct !{!157, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h4bb58e431584b902E"}
!158 = !{!159}
!159 = distinct !{!159, !157, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h4bb58e431584b902E: %b"}
!160 = !{!161}
!161 = distinct !{!161, !162, !"_ZN4core3ops8function5FnMut8call_mut17hb4861b34bf1764a8E: argument 0"}
!162 = distinct !{!162, !"_ZN4core3ops8function5FnMut8call_mut17hb4861b34bf1764a8E"}
!163 = !{!164}
!164 = distinct !{!164, !162, !"_ZN4core3ops8function5FnMut8call_mut17hb4861b34bf1764a8E: argument 1"}
!165 = !{!166}
!166 = distinct !{!166, !167, !"cmpfunc: %a"}
!167 = distinct !{!167, !"cmpfunc"}
!168 = !{!169}
!169 = distinct !{!169, !167, !"cmpfunc: %b"}
!170 = !{!171}
!171 = distinct !{!171, !172, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!172 = distinct !{!172, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!173 = !{!174}
!174 = distinct !{!174, !172, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!175 = !{!171, !166, !161, !156}
!176 = !{!174, !169, !164, !159}
!177 = !{!178}
!178 = distinct !{!178, !179, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h4bb58e431584b902E: %a"}
!179 = distinct !{!179, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h4bb58e431584b902E"}
!180 = !{!181}
!181 = distinct !{!181, !179, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h4bb58e431584b902E: %b"}
!182 = !{!183}
!183 = distinct !{!183, !184, !"_ZN4core3ops8function5FnMut8call_mut17hb4861b34bf1764a8E: argument 0"}
!184 = distinct !{!184, !"_ZN4core3ops8function5FnMut8call_mut17hb4861b34bf1764a8E"}
!185 = !{!186}
!186 = distinct !{!186, !184, !"_ZN4core3ops8function5FnMut8call_mut17hb4861b34bf1764a8E: argument 1"}
!187 = !{!188}
!188 = distinct !{!188, !189, !"cmpfunc: %a"}
!189 = distinct !{!189, !"cmpfunc"}
!190 = !{!191}
!191 = distinct !{!191, !189, !"cmpfunc: %b"}
!192 = !{!193}
!193 = distinct !{!193, !194, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!194 = distinct !{!194, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!195 = !{!196}
!196 = distinct !{!196, !194, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!197 = !{!193, !188, !183, !178}
!198 = !{!196, !191, !186, !181}
!199 = !{!200}
!200 = distinct !{!200, !201, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h4bb58e431584b902E: %a"}
!201 = distinct !{!201, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h4bb58e431584b902E"}
!202 = !{!203}
!203 = distinct !{!203, !201, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h4bb58e431584b902E: %b"}
!204 = !{!205}
!205 = distinct !{!205, !206, !"_ZN4core3ops8function5FnMut8call_mut17hb4861b34bf1764a8E: argument 0"}
!206 = distinct !{!206, !"_ZN4core3ops8function5FnMut8call_mut17hb4861b34bf1764a8E"}
!207 = !{!208}
!208 = distinct !{!208, !206, !"_ZN4core3ops8function5FnMut8call_mut17hb4861b34bf1764a8E: argument 1"}
!209 = !{!210}
!210 = distinct !{!210, !211, !"cmpfunc: %a"}
!211 = distinct !{!211, !"cmpfunc"}
!212 = !{!213}
!213 = distinct !{!213, !211, !"cmpfunc: %b"}
!214 = !{!215}
!215 = distinct !{!215, !216, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!216 = distinct !{!216, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!217 = !{!218}
!218 = distinct !{!218, !216, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!219 = !{!215, !210, !205, !200}
!220 = !{!218, !213, !208, !203}
!221 = !{!222}
!222 = distinct !{!222, !223, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h4bb58e431584b902E: %a"}
!223 = distinct !{!223, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h4bb58e431584b902E"}
!224 = !{!225}
!225 = distinct !{!225, !223, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h4bb58e431584b902E: %b"}
!226 = !{!227}
!227 = distinct !{!227, !228, !"_ZN4core3ops8function5FnMut8call_mut17hb4861b34bf1764a8E: argument 0"}
!228 = distinct !{!228, !"_ZN4core3ops8function5FnMut8call_mut17hb4861b34bf1764a8E"}
!229 = !{!230}
!230 = distinct !{!230, !228, !"_ZN4core3ops8function5FnMut8call_mut17hb4861b34bf1764a8E: argument 1"}
!231 = !{!232}
!232 = distinct !{!232, !233, !"cmpfunc: %a"}
!233 = distinct !{!233, !"cmpfunc"}
!234 = !{!235}
!235 = distinct !{!235, !233, !"cmpfunc: %b"}
!236 = !{!237}
!237 = distinct !{!237, !238, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!238 = distinct !{!238, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!239 = !{!240}
!240 = distinct !{!240, !238, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!241 = !{!237, !232, !227, !222}
!242 = !{!240, !235, !230, !225}
!243 = !{!244}
!244 = distinct !{!244, !245, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h4bb58e431584b902E: %a"}
!245 = distinct !{!245, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h4bb58e431584b902E"}
!246 = !{!247}
!247 = distinct !{!247, !245, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h4bb58e431584b902E: %b"}
!248 = !{!249}
!249 = distinct !{!249, !250, !"_ZN4core3ops8function5FnMut8call_mut17hb4861b34bf1764a8E: argument 0"}
!250 = distinct !{!250, !"_ZN4core3ops8function5FnMut8call_mut17hb4861b34bf1764a8E"}
!251 = !{!252}
!252 = distinct !{!252, !250, !"_ZN4core3ops8function5FnMut8call_mut17hb4861b34bf1764a8E: argument 1"}
!253 = !{!254}
!254 = distinct !{!254, !255, !"cmpfunc: %a"}
!255 = distinct !{!255, !"cmpfunc"}
!256 = !{!257}
!257 = distinct !{!257, !255, !"cmpfunc: %b"}
!258 = !{!259}
!259 = distinct !{!259, !260, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!260 = distinct !{!260, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!261 = !{!262}
!262 = distinct !{!262, !260, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!263 = !{!259, !254, !249, !244}
!264 = !{!262, !257, !252, !247}
!265 = !{!266}
!266 = distinct !{!266, !267, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h4bb58e431584b902E: %a"}
!267 = distinct !{!267, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h4bb58e431584b902E"}
!268 = !{!269}
!269 = distinct !{!269, !267, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h4bb58e431584b902E: %b"}
!270 = !{!271}
!271 = distinct !{!271, !272, !"_ZN4core3ops8function5FnMut8call_mut17hb4861b34bf1764a8E: argument 0"}
!272 = distinct !{!272, !"_ZN4core3ops8function5FnMut8call_mut17hb4861b34bf1764a8E"}
!273 = !{!274}
!274 = distinct !{!274, !272, !"_ZN4core3ops8function5FnMut8call_mut17hb4861b34bf1764a8E: argument 1"}
!275 = !{!276}
!276 = distinct !{!276, !277, !"cmpfunc: %a"}
!277 = distinct !{!277, !"cmpfunc"}
!278 = !{!279}
!279 = distinct !{!279, !277, !"cmpfunc: %b"}
!280 = !{!281}
!281 = distinct !{!281, !282, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!282 = distinct !{!282, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!283 = !{!284}
!284 = distinct !{!284, !282, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!285 = !{!281, !276, !271, !266}
!286 = !{!284, !279, !274, !269}
!287 = !{!288}
!288 = distinct !{!288, !289, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h4bb58e431584b902E: %a"}
!289 = distinct !{!289, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h4bb58e431584b902E"}
!290 = !{!291}
!291 = distinct !{!291, !289, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h4bb58e431584b902E: %b"}
!292 = !{!293}
!293 = distinct !{!293, !294, !"_ZN4core3ops8function5FnMut8call_mut17hb4861b34bf1764a8E: argument 0"}
!294 = distinct !{!294, !"_ZN4core3ops8function5FnMut8call_mut17hb4861b34bf1764a8E"}
!295 = !{!296}
!296 = distinct !{!296, !294, !"_ZN4core3ops8function5FnMut8call_mut17hb4861b34bf1764a8E: argument 1"}
!297 = !{!298}
!298 = distinct !{!298, !299, !"cmpfunc: %a"}
!299 = distinct !{!299, !"cmpfunc"}
!300 = !{!301}
!301 = distinct !{!301, !299, !"cmpfunc: %b"}
!302 = !{!303}
!303 = distinct !{!303, !304, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!304 = distinct !{!304, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!305 = !{!306}
!306 = distinct !{!306, !304, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!307 = !{!303, !298, !293, !288}
!308 = !{!306, !301, !296, !291}
!309 = !{!310}
!310 = distinct !{!310, !311, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h4bb58e431584b902E: %a"}
!311 = distinct !{!311, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h4bb58e431584b902E"}
!312 = !{!313}
!313 = distinct !{!313, !311, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h4bb58e431584b902E: %b"}
!314 = !{!315}
!315 = distinct !{!315, !316, !"_ZN4core3ops8function5FnMut8call_mut17hb4861b34bf1764a8E: argument 0"}
!316 = distinct !{!316, !"_ZN4core3ops8function5FnMut8call_mut17hb4861b34bf1764a8E"}
!317 = !{!318}
!318 = distinct !{!318, !316, !"_ZN4core3ops8function5FnMut8call_mut17hb4861b34bf1764a8E: argument 1"}
!319 = !{!320}
!320 = distinct !{!320, !321, !"cmpfunc: %a"}
!321 = distinct !{!321, !"cmpfunc"}
!322 = !{!323}
!323 = distinct !{!323, !321, !"cmpfunc: %b"}
!324 = !{!325}
!325 = distinct !{!325, !326, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!326 = distinct !{!326, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!327 = !{!328}
!328 = distinct !{!328, !326, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!329 = !{!325, !320, !315, !310}
!330 = !{!328, !323, !318, !313}
!331 = !{!332}
!332 = distinct !{!332, !333, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h4bb58e431584b902E: %a"}
!333 = distinct !{!333, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h4bb58e431584b902E"}
!334 = !{!335}
!335 = distinct !{!335, !333, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h4bb58e431584b902E: %b"}
!336 = !{!337}
!337 = distinct !{!337, !338, !"_ZN4core3ops8function5FnMut8call_mut17hb4861b34bf1764a8E: argument 0"}
!338 = distinct !{!338, !"_ZN4core3ops8function5FnMut8call_mut17hb4861b34bf1764a8E"}
!339 = !{!340}
!340 = distinct !{!340, !338, !"_ZN4core3ops8function5FnMut8call_mut17hb4861b34bf1764a8E: argument 1"}
!341 = !{!342}
!342 = distinct !{!342, !343, !"cmpfunc: %a"}
!343 = distinct !{!343, !"cmpfunc"}
!344 = !{!345}
!345 = distinct !{!345, !343, !"cmpfunc: %b"}
!346 = !{!347}
!347 = distinct !{!347, !348, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!348 = distinct !{!348, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!349 = !{!350}
!350 = distinct !{!350, !348, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!351 = !{!347, !342, !337, !332}
!352 = !{!350, !345, !340, !335}
!353 = !{!354}
!354 = distinct !{!354, !355, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h4bb58e431584b902E: %a"}
!355 = distinct !{!355, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h4bb58e431584b902E"}
!356 = !{!357}
!357 = distinct !{!357, !355, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h4bb58e431584b902E: %b"}
!358 = !{!359}
!359 = distinct !{!359, !360, !"_ZN4core3ops8function5FnMut8call_mut17hb4861b34bf1764a8E: argument 0"}
!360 = distinct !{!360, !"_ZN4core3ops8function5FnMut8call_mut17hb4861b34bf1764a8E"}
!361 = !{!362}
!362 = distinct !{!362, !360, !"_ZN4core3ops8function5FnMut8call_mut17hb4861b34bf1764a8E: argument 1"}
!363 = !{!364}
!364 = distinct !{!364, !365, !"cmpfunc: %a"}
!365 = distinct !{!365, !"cmpfunc"}
!366 = !{!367}
!367 = distinct !{!367, !365, !"cmpfunc: %b"}
!368 = !{!369}
!369 = distinct !{!369, !370, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!370 = distinct !{!370, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!371 = !{!372}
!372 = distinct !{!372, !370, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!373 = !{!369, !364, !359, !354}
!374 = !{!372, !367, !362, !357}
!375 = !{!376}
!376 = distinct !{!376, !377, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h4bb58e431584b902E: %a"}
!377 = distinct !{!377, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h4bb58e431584b902E"}
!378 = !{!379}
!379 = distinct !{!379, !377, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h4bb58e431584b902E: %b"}
!380 = !{!381}
!381 = distinct !{!381, !382, !"_ZN4core3ops8function5FnMut8call_mut17hb4861b34bf1764a8E: argument 0"}
!382 = distinct !{!382, !"_ZN4core3ops8function5FnMut8call_mut17hb4861b34bf1764a8E"}
!383 = !{!384}
!384 = distinct !{!384, !382, !"_ZN4core3ops8function5FnMut8call_mut17hb4861b34bf1764a8E: argument 1"}
!385 = !{!386}
!386 = distinct !{!386, !387, !"cmpfunc: %a"}
!387 = distinct !{!387, !"cmpfunc"}
!388 = !{!389}
!389 = distinct !{!389, !387, !"cmpfunc: %b"}
!390 = !{!391}
!391 = distinct !{!391, !392, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!392 = distinct !{!392, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!393 = !{!394}
!394 = distinct !{!394, !392, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!395 = !{!391, !386, !381, !376}
!396 = !{!394, !389, !384, !379}
!397 = !{!398}
!398 = distinct !{!398, !399, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h4bb58e431584b902E: %a"}
!399 = distinct !{!399, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h4bb58e431584b902E"}
!400 = !{!401}
!401 = distinct !{!401, !399, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h4bb58e431584b902E: %b"}
!402 = !{!403}
!403 = distinct !{!403, !404, !"_ZN4core3ops8function5FnMut8call_mut17hb4861b34bf1764a8E: argument 0"}
!404 = distinct !{!404, !"_ZN4core3ops8function5FnMut8call_mut17hb4861b34bf1764a8E"}
!405 = !{!406}
!406 = distinct !{!406, !404, !"_ZN4core3ops8function5FnMut8call_mut17hb4861b34bf1764a8E: argument 1"}
!407 = !{!408}
!408 = distinct !{!408, !409, !"cmpfunc: %a"}
!409 = distinct !{!409, !"cmpfunc"}
!410 = !{!411}
!411 = distinct !{!411, !409, !"cmpfunc: %b"}
!412 = !{!413}
!413 = distinct !{!413, !414, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!414 = distinct !{!414, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!415 = !{!416}
!416 = distinct !{!416, !414, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!417 = !{!413, !408, !403, !398}
!418 = !{!416, !411, !406, !401}
!419 = !{!420}
!420 = distinct !{!420, !421, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h4bb58e431584b902E: %a"}
!421 = distinct !{!421, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h4bb58e431584b902E"}
!422 = !{!423}
!423 = distinct !{!423, !421, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h4bb58e431584b902E: %b"}
!424 = !{!425}
!425 = distinct !{!425, !426, !"_ZN4core3ops8function5FnMut8call_mut17hb4861b34bf1764a8E: argument 0"}
!426 = distinct !{!426, !"_ZN4core3ops8function5FnMut8call_mut17hb4861b34bf1764a8E"}
!427 = !{!428}
!428 = distinct !{!428, !426, !"_ZN4core3ops8function5FnMut8call_mut17hb4861b34bf1764a8E: argument 1"}
!429 = !{!430}
!430 = distinct !{!430, !431, !"cmpfunc: %a"}
!431 = distinct !{!431, !"cmpfunc"}
!432 = !{!433}
!433 = distinct !{!433, !431, !"cmpfunc: %b"}
!434 = !{!435}
!435 = distinct !{!435, !436, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!436 = distinct !{!436, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!437 = !{!438}
!438 = distinct !{!438, !436, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!439 = !{!435, !430, !425, !420}
!440 = !{!438, !433, !428, !423}
!441 = !{!442}
!442 = distinct !{!442, !443, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h4bb58e431584b902E: %a"}
!443 = distinct !{!443, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h4bb58e431584b902E"}
!444 = !{!445}
!445 = distinct !{!445, !443, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h4bb58e431584b902E: %b"}
!446 = !{!447}
!447 = distinct !{!447, !448, !"_ZN4core3ops8function5FnMut8call_mut17hb4861b34bf1764a8E: argument 0"}
!448 = distinct !{!448, !"_ZN4core3ops8function5FnMut8call_mut17hb4861b34bf1764a8E"}
!449 = !{!450}
!450 = distinct !{!450, !448, !"_ZN4core3ops8function5FnMut8call_mut17hb4861b34bf1764a8E: argument 1"}
!451 = !{!452}
!452 = distinct !{!452, !453, !"cmpfunc: %a"}
!453 = distinct !{!453, !"cmpfunc"}
!454 = !{!455}
!455 = distinct !{!455, !453, !"cmpfunc: %b"}
!456 = !{!457}
!457 = distinct !{!457, !458, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!458 = distinct !{!458, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!459 = !{!460}
!460 = distinct !{!460, !458, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!461 = !{!457, !452, !447, !442}
!462 = !{!460, !455, !450, !445}
!463 = !{!464}
!464 = distinct !{!464, !465, !"_ZN4core5slice4sort6shared9smallsort19bidirectional_merge17hdcb44283c7f19263E: %v.0"}
!465 = distinct !{!465, !"_ZN4core5slice4sort6shared9smallsort19bidirectional_merge17hdcb44283c7f19263E"}
!466 = !{!467}
!467 = distinct !{!467, !468, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h4bb58e431584b902E: %a"}
!468 = distinct !{!468, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h4bb58e431584b902E"}
!469 = !{!470}
!470 = distinct !{!470, !468, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h4bb58e431584b902E: %b"}
!471 = !{!472}
!472 = distinct !{!472, !473, !"_ZN4core3ops8function5FnMut8call_mut17hb4861b34bf1764a8E: argument 0"}
!473 = distinct !{!473, !"_ZN4core3ops8function5FnMut8call_mut17hb4861b34bf1764a8E"}
!474 = !{!475}
!475 = distinct !{!475, !476, !"_ZN4core5slice4sort6shared9smallsort8merge_up17habcedab077b8c725E: %_0"}
!476 = distinct !{!476, !"_ZN4core5slice4sort6shared9smallsort8merge_up17habcedab077b8c725E"}
!477 = !{!478}
!478 = distinct !{!478, !473, !"_ZN4core3ops8function5FnMut8call_mut17hb4861b34bf1764a8E: argument 1"}
!479 = !{!480}
!480 = distinct !{!480, !481, !"cmpfunc: %a"}
!481 = distinct !{!481, !"cmpfunc"}
!482 = !{!483}
!483 = distinct !{!483, !481, !"cmpfunc: %b"}
!484 = !{!485}
!485 = distinct !{!485, !486, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!486 = distinct !{!486, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!487 = !{!488}
!488 = distinct !{!488, !486, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!489 = !{!485, !480, !472, !467, !464}
!490 = !{!488, !483, !478, !470, !475}
!491 = !{!488, !483, !478, !470, !464}
!492 = !{!485, !480, !472, !467, !475}
!493 = !{!475, !494, !464}
!494 = distinct !{!494, !476, !"_ZN4core5slice4sort6shared9smallsort8merge_up17habcedab077b8c725E: %is_less"}
!495 = !{!496}
!496 = distinct !{!496, !497, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h4bb58e431584b902E: %a"}
!497 = distinct !{!497, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h4bb58e431584b902E"}
!498 = !{!499}
!499 = distinct !{!499, !497, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h4bb58e431584b902E: %b"}
!500 = !{!501}
!501 = distinct !{!501, !502, !"_ZN4core3ops8function5FnMut8call_mut17hb4861b34bf1764a8E: argument 0"}
!502 = distinct !{!502, !"_ZN4core3ops8function5FnMut8call_mut17hb4861b34bf1764a8E"}
!503 = !{!504}
!504 = distinct !{!504, !505, !"_ZN4core5slice4sort6shared9smallsort10merge_down17h552af44049a4aedaE: %_0"}
!505 = distinct !{!505, !"_ZN4core5slice4sort6shared9smallsort10merge_down17h552af44049a4aedaE"}
!506 = !{!507}
!507 = distinct !{!507, !502, !"_ZN4core3ops8function5FnMut8call_mut17hb4861b34bf1764a8E: argument 1"}
!508 = !{!509}
!509 = distinct !{!509, !510, !"cmpfunc: %a"}
!510 = distinct !{!510, !"cmpfunc"}
!511 = !{!512}
!512 = distinct !{!512, !510, !"cmpfunc: %b"}
!513 = !{!514}
!514 = distinct !{!514, !515, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!515 = distinct !{!515, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!516 = !{!517}
!517 = distinct !{!517, !515, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!518 = !{!514, !509, !501, !496, !464}
!519 = !{!517, !512, !507, !499, !504}
!520 = !{!517, !512, !507, !499, !464}
!521 = !{!514, !509, !501, !496, !504}
!522 = !{!504, !523, !464}
!523 = distinct !{!523, !505, !"_ZN4core5slice4sort6shared9smallsort10merge_down17h552af44049a4aedaE: %is_less"}
!524 = !{!525}
!525 = distinct !{!525, !468, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h4bb58e431584b902E: %a:It1"}
!526 = !{!527}
!527 = distinct !{!527, !468, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h4bb58e431584b902E: %b:It1"}
!528 = !{!529}
!529 = distinct !{!529, !473, !"_ZN4core3ops8function5FnMut8call_mut17hb4861b34bf1764a8E: argument 0:It1"}
!530 = !{!531}
!531 = distinct !{!531, !473, !"_ZN4core3ops8function5FnMut8call_mut17hb4861b34bf1764a8E: argument 1:It1"}
!532 = !{!533}
!533 = distinct !{!533, !481, !"cmpfunc: %a:It1"}
!534 = !{!535}
!535 = distinct !{!535, !481, !"cmpfunc: %b:It1"}
!536 = !{!537}
!537 = distinct !{!537, !486, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self:It1"}
!538 = !{!539}
!539 = distinct !{!539, !486, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other:It1"}
!540 = !{!537, !533, !529, !525, !464}
!541 = !{!539, !535, !531, !527, !475}
!542 = !{!539, !535, !531, !527, !464}
!543 = !{!537, !533, !529, !525, !475}
!544 = !{!545}
!545 = distinct !{!545, !497, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h4bb58e431584b902E: %a:It1"}
!546 = !{!547}
!547 = distinct !{!547, !497, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h4bb58e431584b902E: %b:It1"}
!548 = !{!549}
!549 = distinct !{!549, !502, !"_ZN4core3ops8function5FnMut8call_mut17hb4861b34bf1764a8E: argument 0:It1"}
!550 = !{!551}
!551 = distinct !{!551, !502, !"_ZN4core3ops8function5FnMut8call_mut17hb4861b34bf1764a8E: argument 1:It1"}
!552 = !{!553}
!553 = distinct !{!553, !510, !"cmpfunc: %a:It1"}
!554 = !{!555}
!555 = distinct !{!555, !510, !"cmpfunc: %b:It1"}
!556 = !{!557}
!557 = distinct !{!557, !515, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self:It1"}
!558 = !{!559}
!559 = distinct !{!559, !515, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other:It1"}
!560 = !{!557, !553, !549, !545, !464}
!561 = !{!559, !555, !551, !547, !504}
!562 = !{!559, !555, !551, !547, !464}
!563 = !{!557, !553, !549, !545, !504}
!564 = !{!565}
!565 = distinct !{!565, !468, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h4bb58e431584b902E: %a:It2"}
!566 = !{!567}
!567 = distinct !{!567, !468, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h4bb58e431584b902E: %b:It2"}
!568 = !{!569}
!569 = distinct !{!569, !473, !"_ZN4core3ops8function5FnMut8call_mut17hb4861b34bf1764a8E: argument 0:It2"}
!570 = !{!571}
!571 = distinct !{!571, !473, !"_ZN4core3ops8function5FnMut8call_mut17hb4861b34bf1764a8E: argument 1:It2"}
!572 = !{!573}
!573 = distinct !{!573, !481, !"cmpfunc: %a:It2"}
!574 = !{!575}
!575 = distinct !{!575, !481, !"cmpfunc: %b:It2"}
!576 = !{!577}
!577 = distinct !{!577, !486, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self:It2"}
!578 = !{!579}
!579 = distinct !{!579, !486, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other:It2"}
!580 = !{!577, !573, !569, !565, !464}
!581 = !{!579, !575, !571, !567, !475}
!582 = !{!579, !575, !571, !567, !464}
!583 = !{!577, !573, !569, !565, !475}
!584 = !{!585}
!585 = distinct !{!585, !497, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h4bb58e431584b902E: %a:It2"}
!586 = !{!587}
!587 = distinct !{!587, !497, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h4bb58e431584b902E: %b:It2"}
!588 = !{!589}
!589 = distinct !{!589, !502, !"_ZN4core3ops8function5FnMut8call_mut17hb4861b34bf1764a8E: argument 0:It2"}
!590 = !{!591}
!591 = distinct !{!591, !502, !"_ZN4core3ops8function5FnMut8call_mut17hb4861b34bf1764a8E: argument 1:It2"}
!592 = !{!593}
!593 = distinct !{!593, !510, !"cmpfunc: %a:It2"}
!594 = !{!595}
!595 = distinct !{!595, !510, !"cmpfunc: %b:It2"}
!596 = !{!597}
!597 = distinct !{!597, !515, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self:It2"}
!598 = !{!599}
!599 = distinct !{!599, !515, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other:It2"}
!600 = !{!597, !593, !589, !585, !464}
!601 = !{!599, !595, !591, !587, !504}
!602 = !{!599, !595, !591, !587, !464}
!603 = !{!597, !593, !589, !585, !504}
!604 = !{!605}
!605 = distinct !{!605, !468, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h4bb58e431584b902E: %a:It3"}
!606 = !{!607}
!607 = distinct !{!607, !468, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h4bb58e431584b902E: %b:It3"}
!608 = !{!609}
!609 = distinct !{!609, !473, !"_ZN4core3ops8function5FnMut8call_mut17hb4861b34bf1764a8E: argument 0:It3"}
!610 = !{!611}
!611 = distinct !{!611, !473, !"_ZN4core3ops8function5FnMut8call_mut17hb4861b34bf1764a8E: argument 1:It3"}
!612 = !{!613}
!613 = distinct !{!613, !481, !"cmpfunc: %a:It3"}
!614 = !{!615}
!615 = distinct !{!615, !481, !"cmpfunc: %b:It3"}
!616 = !{!617}
!617 = distinct !{!617, !486, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self:It3"}
!618 = !{!619}
!619 = distinct !{!619, !486, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other:It3"}
!620 = !{!617, !613, !609, !605, !464}
!621 = !{!619, !615, !611, !607, !475}
!622 = !{!619, !615, !611, !607, !464}
!623 = !{!617, !613, !609, !605, !475}
!624 = !{!625}
!625 = distinct !{!625, !497, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h4bb58e431584b902E: %a:It3"}
!626 = !{!627}
!627 = distinct !{!627, !497, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h4bb58e431584b902E: %b:It3"}
!628 = !{!629}
!629 = distinct !{!629, !502, !"_ZN4core3ops8function5FnMut8call_mut17hb4861b34bf1764a8E: argument 0:It3"}
!630 = !{!631}
!631 = distinct !{!631, !502, !"_ZN4core3ops8function5FnMut8call_mut17hb4861b34bf1764a8E: argument 1:It3"}
!632 = !{!633}
!633 = distinct !{!633, !510, !"cmpfunc: %a:It3"}
!634 = !{!635}
!635 = distinct !{!635, !510, !"cmpfunc: %b:It3"}
!636 = !{!637}
!637 = distinct !{!637, !515, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self:It3"}
!638 = !{!639}
!639 = distinct !{!639, !515, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other:It3"}
!640 = !{!637, !633, !629, !625, !464}
!641 = !{!639, !635, !631, !627, !504}
!642 = !{!639, !635, !631, !627, !464}
!643 = !{!637, !633, !629, !625, !504}
!644 = !{!"branch_weights", i32 4001, i32 4000000}
!645 = !{!646}
!646 = distinct !{!646, !647, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h4bb58e431584b902E: %a"}
!647 = distinct !{!647, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h4bb58e431584b902E"}
!648 = !{!649}
!649 = distinct !{!649, !647, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h4bb58e431584b902E: %b"}
!650 = !{!651}
!651 = distinct !{!651, !652, !"_ZN4core3ops8function5FnMut8call_mut17hb4861b34bf1764a8E: argument 0"}
!652 = distinct !{!652, !"_ZN4core3ops8function5FnMut8call_mut17hb4861b34bf1764a8E"}
!653 = !{!654}
!654 = distinct !{!654, !655, !"_ZN4core5slice4sort6shared9smallsort8merge_up17habcedab077b8c725E: %_0"}
!655 = distinct !{!655, !"_ZN4core5slice4sort6shared9smallsort8merge_up17habcedab077b8c725E"}
!656 = !{!657}
!657 = distinct !{!657, !652, !"_ZN4core3ops8function5FnMut8call_mut17hb4861b34bf1764a8E: argument 1"}
!658 = !{!659}
!659 = distinct !{!659, !660, !"cmpfunc: %a"}
!660 = distinct !{!660, !"cmpfunc"}
!661 = !{!662}
!662 = distinct !{!662, !660, !"cmpfunc: %b"}
!663 = !{!664}
!664 = distinct !{!664, !665, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!665 = distinct !{!665, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!666 = !{!667}
!667 = distinct !{!667, !665, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!668 = !{!664, !659, !651, !646}
!669 = !{!667, !662, !657, !649, !654}
!670 = !{!667, !662, !657, !649}
!671 = !{!664, !659, !651, !646, !654}
!672 = !{!654, !673}
!673 = distinct !{!673, !655, !"_ZN4core5slice4sort6shared9smallsort8merge_up17habcedab077b8c725E: %is_less"}
!674 = !{!675}
!675 = distinct !{!675, !676, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h4bb58e431584b902E: %a"}
!676 = distinct !{!676, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h4bb58e431584b902E"}
!677 = !{!678}
!678 = distinct !{!678, !676, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h4bb58e431584b902E: %b"}
!679 = !{!680}
!680 = distinct !{!680, !681, !"_ZN4core3ops8function5FnMut8call_mut17hb4861b34bf1764a8E: argument 0"}
!681 = distinct !{!681, !"_ZN4core3ops8function5FnMut8call_mut17hb4861b34bf1764a8E"}
!682 = !{!683}
!683 = distinct !{!683, !684, !"_ZN4core5slice4sort6shared9smallsort10merge_down17h552af44049a4aedaE: %_0"}
!684 = distinct !{!684, !"_ZN4core5slice4sort6shared9smallsort10merge_down17h552af44049a4aedaE"}
!685 = !{!686}
!686 = distinct !{!686, !681, !"_ZN4core3ops8function5FnMut8call_mut17hb4861b34bf1764a8E: argument 1"}
!687 = !{!688}
!688 = distinct !{!688, !689, !"cmpfunc: %a"}
!689 = distinct !{!689, !"cmpfunc"}
!690 = !{!691}
!691 = distinct !{!691, !689, !"cmpfunc: %b"}
!692 = !{!693}
!693 = distinct !{!693, !694, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!694 = distinct !{!694, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!695 = !{!696}
!696 = distinct !{!696, !694, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!697 = !{!693, !688, !680, !675}
!698 = !{!696, !691, !686, !678, !683}
!699 = !{!696, !691, !686, !678}
!700 = !{!693, !688, !680, !675, !683}
!701 = !{!683, !702}
!702 = distinct !{!702, !684, !"_ZN4core5slice4sort6shared9smallsort10merge_down17h552af44049a4aedaE: %is_less"}
!703 = !{!704}
!704 = distinct !{!704, !705, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h4bb58e431584b902E: %a"}
!705 = distinct !{!705, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h4bb58e431584b902E"}
!706 = !{!707}
!707 = distinct !{!707, !705, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h4bb58e431584b902E: %b"}
!708 = !{!709}
!709 = distinct !{!709, !710, !"_ZN4core3ops8function5FnMut8call_mut17hb4861b34bf1764a8E: argument 0"}
!710 = distinct !{!710, !"_ZN4core3ops8function5FnMut8call_mut17hb4861b34bf1764a8E"}
!711 = !{!712}
!712 = distinct !{!712, !710, !"_ZN4core3ops8function5FnMut8call_mut17hb4861b34bf1764a8E: argument 1"}
!713 = !{!714}
!714 = distinct !{!714, !715, !"cmpfunc: %a"}
!715 = distinct !{!715, !"cmpfunc"}
!716 = !{!717}
!717 = distinct !{!717, !715, !"cmpfunc: %b"}
!718 = !{!719}
!719 = distinct !{!719, !720, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!720 = distinct !{!720, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!721 = !{!722}
!722 = distinct !{!722, !720, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!723 = !{!719, !714, !709, !704}
!724 = !{!722, !717, !712, !707}
!725 = !{!726, !728, !730, !732}
!726 = distinct !{!726, !727, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!727 = distinct !{!727, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!728 = distinct !{!728, !729, !"cmpfunc: %b"}
!729 = distinct !{!729, !"cmpfunc"}
!730 = distinct !{!730, !731, !"_ZN4core3ops8function5FnMut8call_mut17hb4861b34bf1764a8E: argument 1"}
!731 = distinct !{!731, !"_ZN4core3ops8function5FnMut8call_mut17hb4861b34bf1764a8E"}
!732 = distinct !{!732, !733, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h4bb58e431584b902E: %b"}
!733 = distinct !{!733, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h4bb58e431584b902E"}
!734 = !{!735, !736, !737, !738}
!735 = distinct !{!735, !727, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!736 = distinct !{!736, !729, !"cmpfunc: %a"}
!737 = distinct !{!737, !731, !"_ZN4core3ops8function5FnMut8call_mut17hb4861b34bf1764a8E: argument 0"}
!738 = distinct !{!738, !733, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h4bb58e431584b902E: %a"}
!739 = !{!740, !742}
!740 = distinct !{!740, !741, !"_ZN99_$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h4fdf3af4f97486a9E: %self"}
!741 = distinct !{!741, !"_ZN99_$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h4fdf3af4f97486a9E"}
!742 = distinct !{!742, !743, !"_ZN4core3ptr80drop_in_place$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$i32$GT$$GT$17hb53178595dbde494E: %_1"}
!743 = distinct !{!743, !"_ZN4core3ptr80drop_in_place$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$i32$GT$$GT$17hb53178595dbde494E"}
!744 = !{!745}
!745 = distinct !{!745, !746, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h4bb58e431584b902E: %a"}
!746 = distinct !{!746, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h4bb58e431584b902E"}
!747 = !{!748}
!748 = distinct !{!748, !746, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h4bb58e431584b902E: %b"}
!749 = !{!750}
!750 = distinct !{!750, !751, !"_ZN4core3ops8function5FnMut8call_mut17hb4861b34bf1764a8E: argument 0"}
!751 = distinct !{!751, !"_ZN4core3ops8function5FnMut8call_mut17hb4861b34bf1764a8E"}
!752 = !{!753}
!753 = distinct !{!753, !751, !"_ZN4core3ops8function5FnMut8call_mut17hb4861b34bf1764a8E: argument 1"}
!754 = !{!755}
!755 = distinct !{!755, !756, !"cmpfunc: %a"}
!756 = distinct !{!756, !"cmpfunc"}
!757 = !{!758}
!758 = distinct !{!758, !756, !"cmpfunc: %b"}
!759 = !{!760}
!760 = distinct !{!760, !761, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!761 = distinct !{!761, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!762 = !{!763}
!763 = distinct !{!763, !761, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!764 = !{!760, !755, !750, !745}
!765 = !{!763, !758, !753, !748}
!766 = !{!767}
!767 = distinct !{!767, !768, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h4bb58e431584b902E: %a"}
!768 = distinct !{!768, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h4bb58e431584b902E"}
!769 = !{!770}
!770 = distinct !{!770, !768, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h4bb58e431584b902E: %b"}
!771 = !{!772}
!772 = distinct !{!772, !773, !"_ZN4core3ops8function5FnMut8call_mut17hb4861b34bf1764a8E: argument 0"}
!773 = distinct !{!773, !"_ZN4core3ops8function5FnMut8call_mut17hb4861b34bf1764a8E"}
!774 = !{!775}
!775 = distinct !{!775, !773, !"_ZN4core3ops8function5FnMut8call_mut17hb4861b34bf1764a8E: argument 1"}
!776 = !{!777}
!777 = distinct !{!777, !778, !"cmpfunc: %a"}
!778 = distinct !{!778, !"cmpfunc"}
!779 = !{!780}
!780 = distinct !{!780, !778, !"cmpfunc: %b"}
!781 = !{!782}
!782 = distinct !{!782, !783, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!783 = distinct !{!783, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!784 = !{!785}
!785 = distinct !{!785, !783, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!786 = !{!782, !777, !772, !767}
!787 = !{!785, !780, !775, !770}
!788 = !{!789}
!789 = distinct !{!789, !790, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h4bb58e431584b902E: %a"}
!790 = distinct !{!790, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h4bb58e431584b902E"}
!791 = !{!792}
!792 = distinct !{!792, !790, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h4bb58e431584b902E: %b"}
!793 = !{!794}
!794 = distinct !{!794, !795, !"_ZN4core3ops8function5FnMut8call_mut17hb4861b34bf1764a8E: argument 0"}
!795 = distinct !{!795, !"_ZN4core3ops8function5FnMut8call_mut17hb4861b34bf1764a8E"}
!796 = !{!797}
!797 = distinct !{!797, !795, !"_ZN4core3ops8function5FnMut8call_mut17hb4861b34bf1764a8E: argument 1"}
!798 = !{!799}
!799 = distinct !{!799, !800, !"cmpfunc: %a"}
!800 = distinct !{!800, !"cmpfunc"}
!801 = !{!802}
!802 = distinct !{!802, !800, !"cmpfunc: %b"}
!803 = !{!804}
!804 = distinct !{!804, !805, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!805 = distinct !{!805, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!806 = !{!807}
!807 = distinct !{!807, !805, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!808 = !{!804, !799, !794, !789}
!809 = !{!807, !802, !797, !792}
!810 = !{!811}
!811 = distinct !{!811, !812, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h4bb58e431584b902E: %a"}
!812 = distinct !{!812, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h4bb58e431584b902E"}
!813 = !{!814}
!814 = distinct !{!814, !812, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h4bb58e431584b902E: %b"}
!815 = !{!816}
!816 = distinct !{!816, !817, !"_ZN4core3ops8function5FnMut8call_mut17hb4861b34bf1764a8E: argument 0"}
!817 = distinct !{!817, !"_ZN4core3ops8function5FnMut8call_mut17hb4861b34bf1764a8E"}
!818 = !{!819}
!819 = distinct !{!819, !817, !"_ZN4core3ops8function5FnMut8call_mut17hb4861b34bf1764a8E: argument 1"}
!820 = !{!821}
!821 = distinct !{!821, !822, !"cmpfunc: %a"}
!822 = distinct !{!822, !"cmpfunc"}
!823 = !{!824}
!824 = distinct !{!824, !822, !"cmpfunc: %b"}
!825 = !{!826}
!826 = distinct !{!826, !827, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!827 = distinct !{!827, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!828 = !{!829}
!829 = distinct !{!829, !827, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!830 = !{!826, !821, !816, !811}
!831 = !{!829, !824, !819, !814}
!832 = !{!833}
!833 = distinct !{!833, !834, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h4bb58e431584b902E: %a"}
!834 = distinct !{!834, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h4bb58e431584b902E"}
!835 = !{!836}
!836 = distinct !{!836, !834, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h4bb58e431584b902E: %b"}
!837 = !{!838}
!838 = distinct !{!838, !839, !"_ZN4core3ops8function5FnMut8call_mut17hb4861b34bf1764a8E: argument 0"}
!839 = distinct !{!839, !"_ZN4core3ops8function5FnMut8call_mut17hb4861b34bf1764a8E"}
!840 = !{!841}
!841 = distinct !{!841, !839, !"_ZN4core3ops8function5FnMut8call_mut17hb4861b34bf1764a8E: argument 1"}
!842 = !{!843}
!843 = distinct !{!843, !844, !"cmpfunc: %a"}
!844 = distinct !{!844, !"cmpfunc"}
!845 = !{!846}
!846 = distinct !{!846, !844, !"cmpfunc: %b"}
!847 = !{!848}
!848 = distinct !{!848, !849, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!849 = distinct !{!849, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!850 = !{!851}
!851 = distinct !{!851, !849, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!852 = !{!848, !843, !838, !833}
!853 = !{!851, !846, !841, !836}
!854 = !{!855}
!855 = distinct !{!855, !856, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h4bb58e431584b902E: %a"}
!856 = distinct !{!856, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h4bb58e431584b902E"}
!857 = !{!858}
!858 = distinct !{!858, !856, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h4bb58e431584b902E: %b"}
!859 = !{!860}
!860 = distinct !{!860, !861, !"_ZN4core3ops8function5FnMut8call_mut17hb4861b34bf1764a8E: argument 0"}
!861 = distinct !{!861, !"_ZN4core3ops8function5FnMut8call_mut17hb4861b34bf1764a8E"}
!862 = !{!863}
!863 = distinct !{!863, !861, !"_ZN4core3ops8function5FnMut8call_mut17hb4861b34bf1764a8E: argument 1"}
!864 = !{!865}
!865 = distinct !{!865, !866, !"cmpfunc: %a"}
!866 = distinct !{!866, !"cmpfunc"}
!867 = !{!868}
!868 = distinct !{!868, !866, !"cmpfunc: %b"}
!869 = !{!870}
!870 = distinct !{!870, !871, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!871 = distinct !{!871, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!872 = !{!873}
!873 = distinct !{!873, !871, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!874 = !{!870, !865, !860, !855}
!875 = !{!873, !868, !863, !858}
!876 = !{!877}
!877 = distinct !{!877, !878, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h4bb58e431584b902E: %a"}
!878 = distinct !{!878, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h4bb58e431584b902E"}
!879 = !{!880}
!880 = distinct !{!880, !878, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h4bb58e431584b902E: %b"}
!881 = !{!882}
!882 = distinct !{!882, !883, !"_ZN4core3ops8function5FnMut8call_mut17hb4861b34bf1764a8E: argument 0"}
!883 = distinct !{!883, !"_ZN4core3ops8function5FnMut8call_mut17hb4861b34bf1764a8E"}
!884 = !{!885}
!885 = distinct !{!885, !883, !"_ZN4core3ops8function5FnMut8call_mut17hb4861b34bf1764a8E: argument 1"}
!886 = !{!887}
!887 = distinct !{!887, !888, !"cmpfunc: %a"}
!888 = distinct !{!888, !"cmpfunc"}
!889 = !{!890}
!890 = distinct !{!890, !888, !"cmpfunc: %b"}
!891 = !{!892}
!892 = distinct !{!892, !893, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!893 = distinct !{!893, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!894 = !{!895}
!895 = distinct !{!895, !893, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!896 = !{!892, !887, !882, !877}
!897 = !{!895, !890, !885, !880}
!898 = !{!899}
!899 = distinct !{!899, !900, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h4bb58e431584b902E: %a"}
!900 = distinct !{!900, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h4bb58e431584b902E"}
!901 = !{!902}
!902 = distinct !{!902, !900, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h4bb58e431584b902E: %b"}
!903 = !{!904}
!904 = distinct !{!904, !905, !"_ZN4core3ops8function5FnMut8call_mut17hb4861b34bf1764a8E: argument 0"}
!905 = distinct !{!905, !"_ZN4core3ops8function5FnMut8call_mut17hb4861b34bf1764a8E"}
!906 = !{!907}
!907 = distinct !{!907, !905, !"_ZN4core3ops8function5FnMut8call_mut17hb4861b34bf1764a8E: argument 1"}
!908 = !{!909}
!909 = distinct !{!909, !910, !"cmpfunc: %a"}
!910 = distinct !{!910, !"cmpfunc"}
!911 = !{!912}
!912 = distinct !{!912, !910, !"cmpfunc: %b"}
!913 = !{!914}
!914 = distinct !{!914, !915, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!915 = distinct !{!915, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!916 = !{!917}
!917 = distinct !{!917, !915, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!918 = !{!914, !909, !904, !899}
!919 = !{!917, !912, !907, !902}
!920 = !{!921}
!921 = distinct !{!921, !922, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h4bb58e431584b902E: %a"}
!922 = distinct !{!922, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h4bb58e431584b902E"}
!923 = !{!924}
!924 = distinct !{!924, !922, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h4bb58e431584b902E: %b"}
!925 = !{!926}
!926 = distinct !{!926, !927, !"_ZN4core3ops8function5FnMut8call_mut17hb4861b34bf1764a8E: argument 0"}
!927 = distinct !{!927, !"_ZN4core3ops8function5FnMut8call_mut17hb4861b34bf1764a8E"}
!928 = !{!929}
!929 = distinct !{!929, !927, !"_ZN4core3ops8function5FnMut8call_mut17hb4861b34bf1764a8E: argument 1"}
!930 = !{!931}
!931 = distinct !{!931, !932, !"cmpfunc: %a"}
!932 = distinct !{!932, !"cmpfunc"}
!933 = !{!934}
!934 = distinct !{!934, !932, !"cmpfunc: %b"}
!935 = !{!936}
!936 = distinct !{!936, !937, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!937 = distinct !{!937, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!938 = !{!939}
!939 = distinct !{!939, !937, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!940 = !{!936, !931, !926, !921}
!941 = !{!939, !934, !929, !924}
!942 = !{!943}
!943 = distinct !{!943, !944, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h4bb58e431584b902E: %a"}
!944 = distinct !{!944, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h4bb58e431584b902E"}
!945 = !{!946}
!946 = distinct !{!946, !944, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h4bb58e431584b902E: %b"}
!947 = !{!948}
!948 = distinct !{!948, !949, !"_ZN4core3ops8function5FnMut8call_mut17hb4861b34bf1764a8E: argument 0"}
!949 = distinct !{!949, !"_ZN4core3ops8function5FnMut8call_mut17hb4861b34bf1764a8E"}
!950 = !{!951}
!951 = distinct !{!951, !949, !"_ZN4core3ops8function5FnMut8call_mut17hb4861b34bf1764a8E: argument 1"}
!952 = !{!953}
!953 = distinct !{!953, !954, !"cmpfunc: %a"}
!954 = distinct !{!954, !"cmpfunc"}
!955 = !{!956}
!956 = distinct !{!956, !954, !"cmpfunc: %b"}
!957 = !{!958}
!958 = distinct !{!958, !959, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!959 = distinct !{!959, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!960 = !{!961}
!961 = distinct !{!961, !959, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!962 = !{!958, !953, !948, !943}
!963 = !{!961, !956, !951, !946}
!964 = !{!965}
!965 = distinct !{!965, !966, !"_ZN4core5array4iter10iter_inner78PolymorphicIter$LT$$u5b$core..mem..maybe_uninit..MaybeUninit$LT$T$GT$$u5d$$GT$4next17hf9ec96c096e158c3E: %self.0"}
!966 = distinct !{!966, !"_ZN4core5array4iter10iter_inner78PolymorphicIter$LT$$u5b$core..mem..maybe_uninit..MaybeUninit$LT$T$GT$$u5d$$GT$4next17hf9ec96c096e158c3E"}
!967 = !{!968}
!968 = distinct !{!968, !969, !"_ZN4core5slice4sort6shared9smallsort19bidirectional_merge17hdcb44283c7f19263E: %v.0"}
!969 = distinct !{!969, !"_ZN4core5slice4sort6shared9smallsort19bidirectional_merge17hdcb44283c7f19263E"}
!970 = !{!971}
!971 = distinct !{!971, !972, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h4bb58e431584b902E: %a"}
!972 = distinct !{!972, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h4bb58e431584b902E"}
!973 = !{!974}
!974 = distinct !{!974, !972, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h4bb58e431584b902E: %b"}
!975 = !{!976}
!976 = distinct !{!976, !977, !"_ZN4core3ops8function5FnMut8call_mut17hb4861b34bf1764a8E: argument 0"}
!977 = distinct !{!977, !"_ZN4core3ops8function5FnMut8call_mut17hb4861b34bf1764a8E"}
!978 = !{!979}
!979 = distinct !{!979, !980, !"_ZN4core5slice4sort6shared9smallsort8merge_up17habcedab077b8c725E: %_0"}
!980 = distinct !{!980, !"_ZN4core5slice4sort6shared9smallsort8merge_up17habcedab077b8c725E"}
!981 = !{!982}
!982 = distinct !{!982, !977, !"_ZN4core3ops8function5FnMut8call_mut17hb4861b34bf1764a8E: argument 1"}
!983 = !{!984}
!984 = distinct !{!984, !985, !"cmpfunc: %a"}
!985 = distinct !{!985, !"cmpfunc"}
!986 = !{!987}
!987 = distinct !{!987, !985, !"cmpfunc: %b"}
!988 = !{!989}
!989 = distinct !{!989, !990, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!990 = distinct !{!990, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!991 = !{!992}
!992 = distinct !{!992, !990, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!993 = !{!989, !984, !976, !971, !968}
!994 = !{!992, !987, !982, !974, !979}
!995 = !{!992, !987, !982, !974, !968}
!996 = !{!989, !984, !976, !971, !979}
!997 = !{!979, !998, !968}
!998 = distinct !{!998, !980, !"_ZN4core5slice4sort6shared9smallsort8merge_up17habcedab077b8c725E: %is_less"}
!999 = !{!1000}
!1000 = distinct !{!1000, !1001, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h4bb58e431584b902E: %a"}
!1001 = distinct !{!1001, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h4bb58e431584b902E"}
!1002 = !{!1003}
!1003 = distinct !{!1003, !1001, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h4bb58e431584b902E: %b"}
!1004 = !{!1005}
!1005 = distinct !{!1005, !1006, !"_ZN4core3ops8function5FnMut8call_mut17hb4861b34bf1764a8E: argument 0"}
!1006 = distinct !{!1006, !"_ZN4core3ops8function5FnMut8call_mut17hb4861b34bf1764a8E"}
!1007 = !{!1008}
!1008 = distinct !{!1008, !1009, !"_ZN4core5slice4sort6shared9smallsort10merge_down17h552af44049a4aedaE: %_0"}
!1009 = distinct !{!1009, !"_ZN4core5slice4sort6shared9smallsort10merge_down17h552af44049a4aedaE"}
!1010 = !{!1011}
!1011 = distinct !{!1011, !1006, !"_ZN4core3ops8function5FnMut8call_mut17hb4861b34bf1764a8E: argument 1"}
!1012 = !{!1013}
!1013 = distinct !{!1013, !1014, !"cmpfunc: %a"}
!1014 = distinct !{!1014, !"cmpfunc"}
!1015 = !{!1016}
!1016 = distinct !{!1016, !1014, !"cmpfunc: %b"}
!1017 = !{!1018}
!1018 = distinct !{!1018, !1019, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!1019 = distinct !{!1019, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!1020 = !{!1021}
!1021 = distinct !{!1021, !1019, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!1022 = !{!1018, !1013, !1005, !1000, !968}
!1023 = !{!1021, !1016, !1011, !1003, !1008}
!1024 = !{!1021, !1016, !1011, !1003, !968}
!1025 = !{!1018, !1013, !1005, !1000, !1008}
!1026 = !{!1008, !1027, !968}
!1027 = distinct !{!1027, !1009, !"_ZN4core5slice4sort6shared9smallsort10merge_down17h552af44049a4aedaE: %is_less"}
!1028 = !{!1029, !1031}
!1029 = distinct !{!1029, !1030, !"_ZN99_$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h4fdf3af4f97486a9E: %self"}
!1030 = distinct !{!1030, !"_ZN99_$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h4fdf3af4f97486a9E"}
!1031 = distinct !{!1031, !1032, !"_ZN4core3ptr80drop_in_place$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$i32$GT$$GT$17hb53178595dbde494E: %_1"}
!1032 = distinct !{!1032, !"_ZN4core3ptr80drop_in_place$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$i32$GT$$GT$17hb53178595dbde494E"}
!1033 = !{!1034, !1036, !1038, !1040}
!1034 = distinct !{!1034, !1035, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!1035 = distinct !{!1035, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!1036 = distinct !{!1036, !1037, !"cmpfunc: %b"}
!1037 = distinct !{!1037, !"cmpfunc"}
!1038 = distinct !{!1038, !1039, !"_ZN4core3ops8function5FnMut8call_mut17hb4861b34bf1764a8E: argument 1"}
!1039 = distinct !{!1039, !"_ZN4core3ops8function5FnMut8call_mut17hb4861b34bf1764a8E"}
!1040 = distinct !{!1040, !1041, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h4bb58e431584b902E: %b"}
!1041 = distinct !{!1041, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h4bb58e431584b902E"}
!1042 = !{!1043, !1044, !1045, !1046}
!1043 = distinct !{!1043, !1035, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!1044 = distinct !{!1044, !1037, !"cmpfunc: %a"}
!1045 = distinct !{!1045, !1039, !"_ZN4core3ops8function5FnMut8call_mut17hb4861b34bf1764a8E: argument 0"}
!1046 = distinct !{!1046, !1041, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h4bb58e431584b902E: %a"}
!1047 = !{!1048, !1050, !1052, !1054}
!1048 = distinct !{!1048, !1049, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!1049 = distinct !{!1049, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!1050 = distinct !{!1050, !1051, !"cmpfunc: %b"}
!1051 = distinct !{!1051, !"cmpfunc"}
!1052 = distinct !{!1052, !1053, !"_ZN4core3ops8function5FnMut8call_mut17hb4861b34bf1764a8E: argument 1"}
!1053 = distinct !{!1053, !"_ZN4core3ops8function5FnMut8call_mut17hb4861b34bf1764a8E"}
!1054 = distinct !{!1054, !1055, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h4bb58e431584b902E: %b"}
!1055 = distinct !{!1055, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h4bb58e431584b902E"}
!1056 = !{!1057, !1058, !1059, !1060}
!1057 = distinct !{!1057, !1049, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!1058 = distinct !{!1058, !1051, !"cmpfunc: %a"}
!1059 = distinct !{!1059, !1053, !"_ZN4core3ops8function5FnMut8call_mut17hb4861b34bf1764a8E: argument 0"}
!1060 = distinct !{!1060, !1055, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h4bb58e431584b902E: %a"}
!1061 = !{!1062, !1064}
!1062 = distinct !{!1062, !1063, !"_ZN99_$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h4fdf3af4f97486a9E: %self"}
!1063 = distinct !{!1063, !"_ZN99_$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h4fdf3af4f97486a9E"}
!1064 = distinct !{!1064, !1065, !"_ZN4core3ptr80drop_in_place$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$i32$GT$$GT$17hb53178595dbde494E: %_1"}
!1065 = distinct !{!1065, !"_ZN4core3ptr80drop_in_place$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$i32$GT$$GT$17hb53178595dbde494E"}
!1066 = !{!1067}
!1067 = distinct !{!1067, !1068, !"_ZN5alloc5slice99_$LT$impl$u20$core..slice..sort..stable..BufGuard$LT$T$GT$$u20$for$u20$alloc..vec..Vec$LT$T$GT$$GT$13with_capacity17h6f674a30280871f1E: %_0"}
!1068 = distinct !{!1068, !"_ZN5alloc5slice99_$LT$impl$u20$core..slice..sort..stable..BufGuard$LT$T$GT$$u20$for$u20$alloc..vec..Vec$LT$T$GT$$GT$13with_capacity17h6f674a30280871f1E"}
!1069 = !{i64 0, i64 2}
!1070 = !{i64 0, i64 -9223372036854775807}
!1071 = !{!1072}
!1072 = distinct !{!1072, !1073, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h4bb58e431584b902E: %a"}
!1073 = distinct !{!1073, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h4bb58e431584b902E"}
!1074 = !{!1075}
!1075 = distinct !{!1075, !1073, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h4bb58e431584b902E: %b"}
!1076 = !{!1077}
!1077 = distinct !{!1077, !1078, !"_ZN4core3ops8function5FnMut8call_mut17hb4861b34bf1764a8E: argument 0"}
!1078 = distinct !{!1078, !"_ZN4core3ops8function5FnMut8call_mut17hb4861b34bf1764a8E"}
!1079 = !{!1080}
!1080 = distinct !{!1080, !1078, !"_ZN4core3ops8function5FnMut8call_mut17hb4861b34bf1764a8E: argument 1"}
!1081 = !{!1082}
!1082 = distinct !{!1082, !1083, !"cmpfunc: %a"}
!1083 = distinct !{!1083, !"cmpfunc"}
!1084 = !{!1085}
!1085 = distinct !{!1085, !1083, !"cmpfunc: %b"}
!1086 = !{!1087}
!1087 = distinct !{!1087, !1088, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!1088 = distinct !{!1088, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!1089 = !{!1090}
!1090 = distinct !{!1090, !1088, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!1091 = !{!1087, !1082, !1077, !1072}
!1092 = !{!1090, !1085, !1080, !1075}
!1093 = !{!1094}
!1094 = distinct !{!1094, !1095, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h4bb58e431584b902E: %a"}
!1095 = distinct !{!1095, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h4bb58e431584b902E"}
!1096 = !{!1097}
!1097 = distinct !{!1097, !1095, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h4bb58e431584b902E: %b"}
!1098 = !{!1099}
!1099 = distinct !{!1099, !1100, !"_ZN4core3ops8function5FnMut8call_mut17hb4861b34bf1764a8E: argument 0"}
!1100 = distinct !{!1100, !"_ZN4core3ops8function5FnMut8call_mut17hb4861b34bf1764a8E"}
!1101 = !{!1102}
!1102 = distinct !{!1102, !1100, !"_ZN4core3ops8function5FnMut8call_mut17hb4861b34bf1764a8E: argument 1"}
!1103 = !{!1104}
!1104 = distinct !{!1104, !1105, !"cmpfunc: %a"}
!1105 = distinct !{!1105, !"cmpfunc"}
!1106 = !{!1107}
!1107 = distinct !{!1107, !1105, !"cmpfunc: %b"}
!1108 = !{!1109}
!1109 = distinct !{!1109, !1110, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!1110 = distinct !{!1110, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!1111 = !{!1112}
!1112 = distinct !{!1112, !1110, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!1113 = !{!1109, !1104, !1099, !1094}
!1114 = !{!1112, !1107, !1102, !1097}
!1115 = !{!1116}
!1116 = distinct !{!1116, !1117, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h4bb58e431584b902E: %a"}
!1117 = distinct !{!1117, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h4bb58e431584b902E"}
!1118 = !{!1119}
!1119 = distinct !{!1119, !1117, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h4bb58e431584b902E: %b"}
!1120 = !{!1121}
!1121 = distinct !{!1121, !1122, !"_ZN4core3ops8function5FnMut8call_mut17hb4861b34bf1764a8E: argument 0"}
!1122 = distinct !{!1122, !"_ZN4core3ops8function5FnMut8call_mut17hb4861b34bf1764a8E"}
!1123 = !{!1124}
!1124 = distinct !{!1124, !1122, !"_ZN4core3ops8function5FnMut8call_mut17hb4861b34bf1764a8E: argument 1"}
!1125 = !{!1126}
!1126 = distinct !{!1126, !1127, !"cmpfunc: %a"}
!1127 = distinct !{!1127, !"cmpfunc"}
!1128 = !{!1129}
!1129 = distinct !{!1129, !1127, !"cmpfunc: %b"}
!1130 = !{!1131}
!1131 = distinct !{!1131, !1132, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!1132 = distinct !{!1132, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!1133 = !{!1134}
!1134 = distinct !{!1134, !1132, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!1135 = !{!1131, !1126, !1121, !1116}
!1136 = !{!1134, !1129, !1124, !1119}
!1137 = !{!1138, !1140}
!1138 = distinct !{!1138, !1139, !"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse7revswap17h914431803f4412f5E: %a.0"}
!1139 = distinct !{!1139, !"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse7revswap17h914431803f4412f5E"}
!1140 = distinct !{!1140, !1141, !"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17hc413f2b2c0f35c2dE: %self.0"}
!1141 = distinct !{!1141, !"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17hc413f2b2c0f35c2dE"}
!1142 = !{!1143}
!1143 = distinct !{!1143, !1139, !"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse7revswap17h914431803f4412f5E: %b.0"}
!1144 = !{!1143, !1140}
!1145 = !{!1138}
!1146 = !{!1147}
!1147 = distinct !{!1147, !1148, !"_ZN4core5slice4sort6stable5merge5merge17h57be0a8643bfab55E: %v.0"}
!1148 = distinct !{!1148, !"_ZN4core5slice4sort6stable5merge5merge17h57be0a8643bfab55E"}
!1149 = !{!1150}
!1150 = distinct !{!1150, !1148, !"_ZN4core5slice4sort6stable5merge5merge17h57be0a8643bfab55E: %scratch.0"}
!1151 = !{!1147, !1150}
!1152 = !{!1153}
!1153 = distinct !{!1153, !1154, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h4bb58e431584b902E: %a"}
!1154 = distinct !{!1154, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h4bb58e431584b902E"}
!1155 = !{!1156}
!1156 = distinct !{!1156, !1154, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h4bb58e431584b902E: %b"}
!1157 = !{!1158}
!1158 = distinct !{!1158, !1159, !"_ZN4core3ops8function5FnMut8call_mut17hb4861b34bf1764a8E: argument 0"}
!1159 = distinct !{!1159, !"_ZN4core3ops8function5FnMut8call_mut17hb4861b34bf1764a8E"}
!1160 = !{!1161}
!1161 = distinct !{!1161, !1159, !"_ZN4core3ops8function5FnMut8call_mut17hb4861b34bf1764a8E: argument 1"}
!1162 = !{!1163}
!1163 = distinct !{!1163, !1164, !"cmpfunc: %a"}
!1164 = distinct !{!1164, !"cmpfunc"}
!1165 = !{!1166}
!1166 = distinct !{!1166, !1164, !"cmpfunc: %b"}
!1167 = !{!1168}
!1168 = distinct !{!1168, !1169, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!1169 = distinct !{!1169, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!1170 = !{!1171}
!1171 = distinct !{!1171, !1169, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!1172 = !{!1168, !1163, !1158, !1153, !1150}
!1173 = !{!1171, !1166, !1161, !1156, !1174, !1147}
!1174 = distinct !{!1174, !1175, !"_ZN4core5slice4sort6stable5merge19MergeState$LT$T$GT$10merge_down17hd233a378b37db418E: %self"}
!1175 = distinct !{!1175, !"_ZN4core5slice4sort6stable5merge19MergeState$LT$T$GT$10merge_down17hd233a378b37db418E"}
!1176 = !{!1171, !1166, !1161, !1156, !1147}
!1177 = !{!1168, !1163, !1158, !1153, !1174, !1150}
!1178 = !{!1174, !1150}
!1179 = !{!1180}
!1180 = distinct !{!1180, !1181, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h4bb58e431584b902E: %a"}
!1181 = distinct !{!1181, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h4bb58e431584b902E"}
!1182 = !{!1183}
!1183 = distinct !{!1183, !1181, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h4bb58e431584b902E: %b"}
!1184 = !{!1185}
!1185 = distinct !{!1185, !1186, !"_ZN4core3ops8function5FnMut8call_mut17hb4861b34bf1764a8E: argument 0"}
!1186 = distinct !{!1186, !"_ZN4core3ops8function5FnMut8call_mut17hb4861b34bf1764a8E"}
!1187 = !{!1188}
!1188 = distinct !{!1188, !1186, !"_ZN4core3ops8function5FnMut8call_mut17hb4861b34bf1764a8E: argument 1"}
!1189 = !{!1190}
!1190 = distinct !{!1190, !1191, !"cmpfunc: %a"}
!1191 = distinct !{!1191, !"cmpfunc"}
!1192 = !{!1193}
!1193 = distinct !{!1193, !1191, !"cmpfunc: %b"}
!1194 = !{!1195}
!1195 = distinct !{!1195, !1196, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!1196 = distinct !{!1196, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!1197 = !{!1198}
!1198 = distinct !{!1198, !1196, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!1199 = !{!1195, !1190, !1185, !1180, !1147}
!1200 = !{!1198, !1193, !1188, !1183, !1201, !1150}
!1201 = distinct !{!1201, !1202, !"_ZN4core5slice4sort6stable5merge19MergeState$LT$T$GT$8merge_up17h7c109b648f8a06bbE: %self"}
!1202 = distinct !{!1202, !"_ZN4core5slice4sort6stable5merge19MergeState$LT$T$GT$8merge_up17h7c109b648f8a06bbE"}
!1203 = !{!1198, !1193, !1188, !1183, !1150}
!1204 = !{!1195, !1190, !1185, !1180, !1201, !1147}
!1205 = !{!1201, !1150}
!1206 = !{!1207, !1209}
!1207 = distinct !{!1207, !1208, !"_ZN95_$LT$core..slice..sort..stable..merge..MergeState$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hedfd3badb8f28800E: %self"}
!1208 = distinct !{!1208, !"_ZN95_$LT$core..slice..sort..stable..merge..MergeState$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hedfd3badb8f28800E"}
!1209 = distinct !{!1209, !1210, !"_ZN4core3ptr76drop_in_place$LT$core..slice..sort..stable..merge..MergeState$LT$i32$GT$$GT$17h136b57fb3f0eedaeE: %_1"}
!1210 = distinct !{!1210, !"_ZN4core3ptr76drop_in_place$LT$core..slice..sort..stable..merge..MergeState$LT$i32$GT$$GT$17h136b57fb3f0eedaeE"}
!1211 = !{!1212}
!1212 = distinct !{!1212, !1213, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h4bb58e431584b902E: %a"}
!1213 = distinct !{!1213, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h4bb58e431584b902E"}
!1214 = !{!1215}
!1215 = distinct !{!1215, !1213, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h4bb58e431584b902E: %b"}
!1216 = !{!1217}
!1217 = distinct !{!1217, !1218, !"_ZN4core3ops8function5FnMut8call_mut17hb4861b34bf1764a8E: argument 0"}
!1218 = distinct !{!1218, !"_ZN4core3ops8function5FnMut8call_mut17hb4861b34bf1764a8E"}
!1219 = !{!1220}
!1220 = distinct !{!1220, !1218, !"_ZN4core3ops8function5FnMut8call_mut17hb4861b34bf1764a8E: argument 1"}
!1221 = !{!1222}
!1222 = distinct !{!1222, !1223, !"cmpfunc: %a"}
!1223 = distinct !{!1223, !"cmpfunc"}
!1224 = !{!1225}
!1225 = distinct !{!1225, !1223, !"cmpfunc: %b"}
!1226 = !{!1227}
!1227 = distinct !{!1227, !1228, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!1228 = distinct !{!1228, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!1229 = !{!1230}
!1230 = distinct !{!1230, !1228, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!1231 = !{!1227, !1222, !1217, !1212}
!1232 = !{!1230, !1225, !1220, !1215}
!1233 = !{!1234}
!1234 = distinct !{!1234, !1235, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h4bb58e431584b902E: %a"}
!1235 = distinct !{!1235, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h4bb58e431584b902E"}
!1236 = !{!1237}
!1237 = distinct !{!1237, !1235, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h4bb58e431584b902E: %b"}
!1238 = !{!1239}
!1239 = distinct !{!1239, !1240, !"_ZN4core3ops8function5FnMut8call_mut17hb4861b34bf1764a8E: argument 0"}
!1240 = distinct !{!1240, !"_ZN4core3ops8function5FnMut8call_mut17hb4861b34bf1764a8E"}
!1241 = !{!1242}
!1242 = distinct !{!1242, !1240, !"_ZN4core3ops8function5FnMut8call_mut17hb4861b34bf1764a8E: argument 1"}
!1243 = !{!1244}
!1244 = distinct !{!1244, !1245, !"cmpfunc: %a"}
!1245 = distinct !{!1245, !"cmpfunc"}
!1246 = !{!1247}
!1247 = distinct !{!1247, !1245, !"cmpfunc: %b"}
!1248 = !{!1249}
!1249 = distinct !{!1249, !1250, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!1250 = distinct !{!1250, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!1251 = !{!1252}
!1252 = distinct !{!1252, !1250, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!1253 = !{!1249, !1244, !1239, !1234}
!1254 = !{!1252, !1247, !1242, !1237}
!1255 = !{!1256}
!1256 = distinct !{!1256, !1257, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h4bb58e431584b902E: %a"}
!1257 = distinct !{!1257, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h4bb58e431584b902E"}
!1258 = !{!1259}
!1259 = distinct !{!1259, !1257, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h4bb58e431584b902E: %b"}
!1260 = !{!1261}
!1261 = distinct !{!1261, !1262, !"_ZN4core3ops8function5FnMut8call_mut17hb4861b34bf1764a8E: argument 0"}
!1262 = distinct !{!1262, !"_ZN4core3ops8function5FnMut8call_mut17hb4861b34bf1764a8E"}
!1263 = !{!1264}
!1264 = distinct !{!1264, !1262, !"_ZN4core3ops8function5FnMut8call_mut17hb4861b34bf1764a8E: argument 1"}
!1265 = !{!1266}
!1266 = distinct !{!1266, !1267, !"cmpfunc: %a"}
!1267 = distinct !{!1267, !"cmpfunc"}
!1268 = !{!1269}
!1269 = distinct !{!1269, !1267, !"cmpfunc: %b"}
!1270 = !{!1271}
!1271 = distinct !{!1271, !1272, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!1272 = distinct !{!1272, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!1273 = !{!1274}
!1274 = distinct !{!1274, !1272, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!1275 = !{!1271, !1266, !1261, !1256}
!1276 = !{!1274, !1269, !1264, !1259, !1277}
!1277 = distinct !{!1277, !1278, !"_ZN4core5slice4sort6stable5merge19MergeState$LT$T$GT$10merge_down17hd233a378b37db418E: %self"}
!1278 = distinct !{!1278, !"_ZN4core5slice4sort6stable5merge19MergeState$LT$T$GT$10merge_down17hd233a378b37db418E"}
!1279 = !{!1274, !1269, !1264, !1259}
!1280 = !{!1271, !1266, !1261, !1256, !1277}
!1281 = !{!1277}
!1282 = !{!1283}
!1283 = distinct !{!1283, !1284, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h4bb58e431584b902E: %a"}
!1284 = distinct !{!1284, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h4bb58e431584b902E"}
!1285 = !{!1286}
!1286 = distinct !{!1286, !1284, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h4bb58e431584b902E: %b"}
!1287 = !{!1288}
!1288 = distinct !{!1288, !1289, !"_ZN4core3ops8function5FnMut8call_mut17hb4861b34bf1764a8E: argument 0"}
!1289 = distinct !{!1289, !"_ZN4core3ops8function5FnMut8call_mut17hb4861b34bf1764a8E"}
!1290 = !{!1291}
!1291 = distinct !{!1291, !1289, !"_ZN4core3ops8function5FnMut8call_mut17hb4861b34bf1764a8E: argument 1"}
!1292 = !{!1293}
!1293 = distinct !{!1293, !1294, !"cmpfunc: %a"}
!1294 = distinct !{!1294, !"cmpfunc"}
!1295 = !{!1296}
!1296 = distinct !{!1296, !1294, !"cmpfunc: %b"}
!1297 = !{!1298}
!1298 = distinct !{!1298, !1299, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!1299 = distinct !{!1299, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!1300 = !{!1301}
!1301 = distinct !{!1301, !1299, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!1302 = !{!1298, !1293, !1288, !1283}
!1303 = !{!1301, !1296, !1291, !1286, !1304}
!1304 = distinct !{!1304, !1305, !"_ZN4core5slice4sort6stable5merge19MergeState$LT$T$GT$8merge_up17h7c109b648f8a06bbE: %self"}
!1305 = distinct !{!1305, !"_ZN4core5slice4sort6stable5merge19MergeState$LT$T$GT$8merge_up17h7c109b648f8a06bbE"}
!1306 = !{!1301, !1296, !1291, !1286}
!1307 = !{!1298, !1293, !1288, !1283, !1304}
!1308 = !{!1304}
!1309 = !{!1310, !1312}
!1310 = distinct !{!1310, !1311, !"_ZN95_$LT$core..slice..sort..stable..merge..MergeState$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hedfd3badb8f28800E: %self"}
!1311 = distinct !{!1311, !"_ZN95_$LT$core..slice..sort..stable..merge..MergeState$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hedfd3badb8f28800E"}
!1312 = distinct !{!1312, !1313, !"_ZN4core3ptr76drop_in_place$LT$core..slice..sort..stable..merge..MergeState$LT$i32$GT$$GT$17h136b57fb3f0eedaeE: %_1"}
!1313 = distinct !{!1313, !"_ZN4core3ptr76drop_in_place$LT$core..slice..sort..stable..merge..MergeState$LT$i32$GT$$GT$17h136b57fb3f0eedaeE"}
!1314 = !{!"branch_weights", i32 4000000, i32 4001}
!1315 = !{!1316}
!1316 = distinct !{!1316, !1317, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17h5306525745da1f26E: %a"}
!1317 = distinct !{!1317, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17h5306525745da1f26E"}
!1318 = !{!1319}
!1319 = distinct !{!1319, !1317, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17h5306525745da1f26E: %b"}
!1320 = !{!1321}
!1321 = distinct !{!1321, !1322, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h4bb58e431584b902E: %a"}
!1322 = distinct !{!1322, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h4bb58e431584b902E"}
!1323 = !{!1324}
!1324 = distinct !{!1324, !1322, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h4bb58e431584b902E: %b"}
!1325 = !{!1326}
!1326 = distinct !{!1326, !1327, !"_ZN4core3ops8function5FnMut8call_mut17hb4861b34bf1764a8E: argument 0"}
!1327 = distinct !{!1327, !"_ZN4core3ops8function5FnMut8call_mut17hb4861b34bf1764a8E"}
!1328 = !{!1329}
!1329 = distinct !{!1329, !1327, !"_ZN4core3ops8function5FnMut8call_mut17hb4861b34bf1764a8E: argument 1"}
!1330 = !{!1331}
!1331 = distinct !{!1331, !1332, !"cmpfunc: %a"}
!1332 = distinct !{!1332, !"cmpfunc"}
!1333 = !{!1334}
!1334 = distinct !{!1334, !1332, !"cmpfunc: %b"}
!1335 = !{!1336}
!1336 = distinct !{!1336, !1337, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!1337 = distinct !{!1337, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!1338 = !{!1339}
!1339 = distinct !{!1339, !1337, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!1340 = !{!1336, !1331, !1326, !1321, !1319}
!1341 = !{!1339, !1334, !1329, !1324, !1316}
!1342 = !{!1343}
!1343 = distinct !{!1343, !1344, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h57bcd599e387b8b8E: %self"}
!1344 = distinct !{!1344, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h57bcd599e387b8b8E"}
!1345 = !{!1346}
!1346 = distinct !{!1346, !1347, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17h5306525745da1f26E: %a"}
!1347 = distinct !{!1347, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17h5306525745da1f26E"}
!1348 = !{!1349}
!1349 = distinct !{!1349, !1347, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17h5306525745da1f26E: %b"}
!1350 = !{!1351}
!1351 = distinct !{!1351, !1352, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h4bb58e431584b902E: %a"}
!1352 = distinct !{!1352, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h4bb58e431584b902E"}
!1353 = !{!1354}
!1354 = distinct !{!1354, !1352, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h4bb58e431584b902E: %b"}
!1355 = !{!1356}
!1356 = distinct !{!1356, !1357, !"_ZN4core3ops8function5FnMut8call_mut17hb4861b34bf1764a8E: argument 0"}
!1357 = distinct !{!1357, !"_ZN4core3ops8function5FnMut8call_mut17hb4861b34bf1764a8E"}
!1358 = !{!1359}
!1359 = distinct !{!1359, !1357, !"_ZN4core3ops8function5FnMut8call_mut17hb4861b34bf1764a8E: argument 1"}
!1360 = !{!1361}
!1361 = distinct !{!1361, !1362, !"cmpfunc: %a"}
!1362 = distinct !{!1362, !"cmpfunc"}
!1363 = !{!1364}
!1364 = distinct !{!1364, !1362, !"cmpfunc: %b"}
!1365 = !{!1366}
!1366 = distinct !{!1366, !1367, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!1367 = distinct !{!1367, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!1368 = !{!1369}
!1369 = distinct !{!1369, !1367, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!1370 = !{!1366, !1361, !1356, !1351, !1349}
!1371 = !{!1369, !1364, !1359, !1354, !1346}
!1372 = !{!1373}
!1373 = distinct !{!1373, !1374, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h57bcd599e387b8b8E: %self"}
!1374 = distinct !{!1374, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h57bcd599e387b8b8E"}
!1375 = !{!1376}
!1376 = distinct !{!1376, !1377, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17h5306525745da1f26E: %a"}
!1377 = distinct !{!1377, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17h5306525745da1f26E"}
!1378 = !{!1379}
!1379 = distinct !{!1379, !1377, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17h5306525745da1f26E: %b"}
!1380 = !{!1381}
!1381 = distinct !{!1381, !1382, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h4bb58e431584b902E: %a"}
!1382 = distinct !{!1382, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h4bb58e431584b902E"}
!1383 = !{!1384}
!1384 = distinct !{!1384, !1382, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h4bb58e431584b902E: %b"}
!1385 = !{!1386}
!1386 = distinct !{!1386, !1387, !"_ZN4core3ops8function5FnMut8call_mut17hb4861b34bf1764a8E: argument 0"}
!1387 = distinct !{!1387, !"_ZN4core3ops8function5FnMut8call_mut17hb4861b34bf1764a8E"}
!1388 = !{!1389}
!1389 = distinct !{!1389, !1387, !"_ZN4core3ops8function5FnMut8call_mut17hb4861b34bf1764a8E: argument 1"}
!1390 = !{!1391}
!1391 = distinct !{!1391, !1392, !"cmpfunc: %a"}
!1392 = distinct !{!1392, !"cmpfunc"}
!1393 = !{!1394}
!1394 = distinct !{!1394, !1392, !"cmpfunc: %b"}
!1395 = !{!1396}
!1396 = distinct !{!1396, !1397, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!1397 = distinct !{!1397, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!1398 = !{!1399}
!1399 = distinct !{!1399, !1397, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!1400 = !{!1396, !1391, !1386, !1381, !1379}
!1401 = !{!1399, !1394, !1389, !1384, !1376}
!1402 = !{!1403}
!1403 = distinct !{!1403, !1404, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h57bcd599e387b8b8E: %self"}
!1404 = distinct !{!1404, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h57bcd599e387b8b8E"}
!1405 = !{!1406}
!1406 = distinct !{!1406, !1407, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17h5306525745da1f26E: %a"}
!1407 = distinct !{!1407, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17h5306525745da1f26E"}
!1408 = !{!1409}
!1409 = distinct !{!1409, !1407, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17h5306525745da1f26E: %b"}
!1410 = !{!1411}
!1411 = distinct !{!1411, !1412, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h4bb58e431584b902E: %a"}
!1412 = distinct !{!1412, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h4bb58e431584b902E"}
!1413 = !{!1414}
!1414 = distinct !{!1414, !1412, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h4bb58e431584b902E: %b"}
!1415 = !{!1416}
!1416 = distinct !{!1416, !1417, !"_ZN4core3ops8function5FnMut8call_mut17hb4861b34bf1764a8E: argument 0"}
!1417 = distinct !{!1417, !"_ZN4core3ops8function5FnMut8call_mut17hb4861b34bf1764a8E"}
!1418 = !{!1419}
!1419 = distinct !{!1419, !1417, !"_ZN4core3ops8function5FnMut8call_mut17hb4861b34bf1764a8E: argument 1"}
!1420 = !{!1421}
!1421 = distinct !{!1421, !1422, !"cmpfunc: %a"}
!1422 = distinct !{!1422, !"cmpfunc"}
!1423 = !{!1424}
!1424 = distinct !{!1424, !1422, !"cmpfunc: %b"}
!1425 = !{!1426}
!1426 = distinct !{!1426, !1427, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!1427 = distinct !{!1427, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!1428 = !{!1429}
!1429 = distinct !{!1429, !1427, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!1430 = !{!1426, !1421, !1416, !1411, !1409}
!1431 = !{!1429, !1424, !1419, !1414, !1406}
!1432 = !{!1433}
!1433 = distinct !{!1433, !1434, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h57bcd599e387b8b8E: %self"}
!1434 = distinct !{!1434, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h57bcd599e387b8b8E"}
!1435 = !{!1436}
!1436 = distinct !{!1436, !1437, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17h5306525745da1f26E: %a"}
!1437 = distinct !{!1437, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17h5306525745da1f26E"}
!1438 = !{!1439}
!1439 = distinct !{!1439, !1437, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17h5306525745da1f26E: %b"}
!1440 = !{!1441}
!1441 = distinct !{!1441, !1442, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h4bb58e431584b902E: %a"}
!1442 = distinct !{!1442, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h4bb58e431584b902E"}
!1443 = !{!1444}
!1444 = distinct !{!1444, !1442, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h4bb58e431584b902E: %b"}
!1445 = !{!1446}
!1446 = distinct !{!1446, !1447, !"_ZN4core3ops8function5FnMut8call_mut17hb4861b34bf1764a8E: argument 0"}
!1447 = distinct !{!1447, !"_ZN4core3ops8function5FnMut8call_mut17hb4861b34bf1764a8E"}
!1448 = !{!1449}
!1449 = distinct !{!1449, !1447, !"_ZN4core3ops8function5FnMut8call_mut17hb4861b34bf1764a8E: argument 1"}
!1450 = !{!1451}
!1451 = distinct !{!1451, !1452, !"cmpfunc: %a"}
!1452 = distinct !{!1452, !"cmpfunc"}
!1453 = !{!1454}
!1454 = distinct !{!1454, !1452, !"cmpfunc: %b"}
!1455 = !{!1456}
!1456 = distinct !{!1456, !1457, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!1457 = distinct !{!1457, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!1458 = !{!1459}
!1459 = distinct !{!1459, !1457, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!1460 = !{!1456, !1451, !1446, !1441, !1439}
!1461 = !{!1459, !1454, !1449, !1444, !1436}
!1462 = !{!1463}
!1463 = distinct !{!1463, !1464, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h57bcd599e387b8b8E: %self"}
!1464 = distinct !{!1464, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h57bcd599e387b8b8E"}
!1465 = !{!1466}
!1466 = distinct !{!1466, !1467, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h57bcd599e387b8b8E: %self"}
!1467 = distinct !{!1467, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h57bcd599e387b8b8E"}
!1468 = distinct !{!1468, !1469}
!1469 = !{!"llvm.loop.unroll.disable"}
!1470 = !{!1471}
!1471 = distinct !{!1471, !1472, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h4bb58e431584b902E: %a"}
!1472 = distinct !{!1472, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h4bb58e431584b902E"}
!1473 = !{!1474}
!1474 = distinct !{!1474, !1472, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h4bb58e431584b902E: %b"}
!1475 = !{!1476}
!1476 = distinct !{!1476, !1477, !"_ZN4core3ops8function5FnMut8call_mut17hb4861b34bf1764a8E: argument 0"}
!1477 = distinct !{!1477, !"_ZN4core3ops8function5FnMut8call_mut17hb4861b34bf1764a8E"}
!1478 = !{!1479}
!1479 = distinct !{!1479, !1477, !"_ZN4core3ops8function5FnMut8call_mut17hb4861b34bf1764a8E: argument 1"}
!1480 = !{!1481}
!1481 = distinct !{!1481, !1482, !"cmpfunc: %a"}
!1482 = distinct !{!1482, !"cmpfunc"}
!1483 = !{!1484}
!1484 = distinct !{!1484, !1482, !"cmpfunc: %b"}
!1485 = !{!1486}
!1486 = distinct !{!1486, !1487, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!1487 = distinct !{!1487, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!1488 = !{!1489}
!1489 = distinct !{!1489, !1487, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!1490 = !{!1486, !1481, !1476, !1471}
!1491 = !{!1489, !1484, !1479, !1474}
!1492 = !{!1493}
!1493 = distinct !{!1493, !1494, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h57bcd599e387b8b8E: %self"}
!1494 = distinct !{!1494, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h57bcd599e387b8b8E"}
!1495 = !{!1496}
!1496 = distinct !{!1496, !1497, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h4bb58e431584b902E: %a"}
!1497 = distinct !{!1497, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h4bb58e431584b902E"}
!1498 = !{!1499}
!1499 = distinct !{!1499, !1497, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h4bb58e431584b902E: %b"}
!1500 = !{!1501}
!1501 = distinct !{!1501, !1502, !"_ZN4core3ops8function5FnMut8call_mut17hb4861b34bf1764a8E: argument 0"}
!1502 = distinct !{!1502, !"_ZN4core3ops8function5FnMut8call_mut17hb4861b34bf1764a8E"}
!1503 = !{!1504}
!1504 = distinct !{!1504, !1502, !"_ZN4core3ops8function5FnMut8call_mut17hb4861b34bf1764a8E: argument 1"}
!1505 = !{!1506}
!1506 = distinct !{!1506, !1507, !"cmpfunc: %a"}
!1507 = distinct !{!1507, !"cmpfunc"}
!1508 = !{!1509}
!1509 = distinct !{!1509, !1507, !"cmpfunc: %b"}
!1510 = !{!1511}
!1511 = distinct !{!1511, !1512, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!1512 = distinct !{!1512, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!1513 = !{!1514}
!1514 = distinct !{!1514, !1512, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!1515 = !{!1511, !1506, !1501, !1496}
!1516 = !{!1514, !1509, !1504, !1499}
!1517 = !{!1518}
!1518 = distinct !{!1518, !1519, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h57bcd599e387b8b8E: %self"}
!1519 = distinct !{!1519, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h57bcd599e387b8b8E"}
!1520 = !{!1521}
!1521 = distinct !{!1521, !1522, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h4bb58e431584b902E: %a"}
!1522 = distinct !{!1522, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h4bb58e431584b902E"}
!1523 = !{!1524}
!1524 = distinct !{!1524, !1522, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h4bb58e431584b902E: %b"}
!1525 = !{!1526}
!1526 = distinct !{!1526, !1527, !"_ZN4core3ops8function5FnMut8call_mut17hb4861b34bf1764a8E: argument 0"}
!1527 = distinct !{!1527, !"_ZN4core3ops8function5FnMut8call_mut17hb4861b34bf1764a8E"}
!1528 = !{!1529}
!1529 = distinct !{!1529, !1527, !"_ZN4core3ops8function5FnMut8call_mut17hb4861b34bf1764a8E: argument 1"}
!1530 = !{!1531}
!1531 = distinct !{!1531, !1532, !"cmpfunc: %a"}
!1532 = distinct !{!1532, !"cmpfunc"}
!1533 = !{!1534}
!1534 = distinct !{!1534, !1532, !"cmpfunc: %b"}
!1535 = !{!1536}
!1536 = distinct !{!1536, !1537, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!1537 = distinct !{!1537, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!1538 = !{!1539}
!1539 = distinct !{!1539, !1537, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!1540 = !{!1536, !1531, !1526, !1521}
!1541 = !{!1539, !1534, !1529, !1524}
!1542 = !{!1543}
!1543 = distinct !{!1543, !1544, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h57bcd599e387b8b8E: %self"}
!1544 = distinct !{!1544, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h57bcd599e387b8b8E"}
!1545 = !{!1546}
!1546 = distinct !{!1546, !1547, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h4bb58e431584b902E: %a"}
!1547 = distinct !{!1547, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h4bb58e431584b902E"}
!1548 = !{!1549}
!1549 = distinct !{!1549, !1547, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h4bb58e431584b902E: %b"}
!1550 = !{!1551}
!1551 = distinct !{!1551, !1552, !"_ZN4core3ops8function5FnMut8call_mut17hb4861b34bf1764a8E: argument 0"}
!1552 = distinct !{!1552, !"_ZN4core3ops8function5FnMut8call_mut17hb4861b34bf1764a8E"}
!1553 = !{!1554}
!1554 = distinct !{!1554, !1552, !"_ZN4core3ops8function5FnMut8call_mut17hb4861b34bf1764a8E: argument 1"}
!1555 = !{!1556}
!1556 = distinct !{!1556, !1557, !"cmpfunc: %a"}
!1557 = distinct !{!1557, !"cmpfunc"}
!1558 = !{!1559}
!1559 = distinct !{!1559, !1557, !"cmpfunc: %b"}
!1560 = !{!1561}
!1561 = distinct !{!1561, !1562, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!1562 = distinct !{!1562, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!1563 = !{!1564}
!1564 = distinct !{!1564, !1562, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!1565 = !{!1561, !1556, !1551, !1546}
!1566 = !{!1564, !1559, !1554, !1549}
!1567 = !{!1568}
!1568 = distinct !{!1568, !1569, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h57bcd599e387b8b8E: %self"}
!1569 = distinct !{!1569, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h57bcd599e387b8b8E"}
!1570 = !{!1571}
!1571 = distinct !{!1571, !1572, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h4bb58e431584b902E: %a"}
!1572 = distinct !{!1572, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h4bb58e431584b902E"}
!1573 = !{!1574}
!1574 = distinct !{!1574, !1572, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h4bb58e431584b902E: %b"}
!1575 = !{!1576}
!1576 = distinct !{!1576, !1577, !"_ZN4core3ops8function5FnMut8call_mut17hb4861b34bf1764a8E: argument 0"}
!1577 = distinct !{!1577, !"_ZN4core3ops8function5FnMut8call_mut17hb4861b34bf1764a8E"}
!1578 = !{!1579}
!1579 = distinct !{!1579, !1577, !"_ZN4core3ops8function5FnMut8call_mut17hb4861b34bf1764a8E: argument 1"}
!1580 = !{!1581}
!1581 = distinct !{!1581, !1582, !"cmpfunc: %a"}
!1582 = distinct !{!1582, !"cmpfunc"}
!1583 = !{!1584}
!1584 = distinct !{!1584, !1582, !"cmpfunc: %b"}
!1585 = !{!1586}
!1586 = distinct !{!1586, !1587, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!1587 = distinct !{!1587, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!1588 = !{!1589}
!1589 = distinct !{!1589, !1587, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!1590 = !{!1586, !1581, !1576, !1571}
!1591 = !{!1589, !1584, !1579, !1574}
!1592 = !{!1593}
!1593 = distinct !{!1593, !1594, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h57bcd599e387b8b8E: %self"}
!1594 = distinct !{!1594, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h57bcd599e387b8b8E"}
!1595 = !{!1596}
!1596 = distinct !{!1596, !1597, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h57bcd599e387b8b8E: %self"}
!1597 = distinct !{!1597, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h57bcd599e387b8b8E"}
!1598 = distinct !{!1598, !1469}
!1599 = !{!1600}
!1600 = distinct !{!1600, !1601, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h4bb58e431584b902E: %a"}
!1601 = distinct !{!1601, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h4bb58e431584b902E"}
!1602 = !{!1603}
!1603 = distinct !{!1603, !1601, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h4bb58e431584b902E: %b"}
!1604 = !{!1605}
!1605 = distinct !{!1605, !1606, !"_ZN4core3ops8function5FnMut8call_mut17hb4861b34bf1764a8E: argument 0"}
!1606 = distinct !{!1606, !"_ZN4core3ops8function5FnMut8call_mut17hb4861b34bf1764a8E"}
!1607 = !{!1608}
!1608 = distinct !{!1608, !1609, !"_ZN4core5slice4sort6shared5pivot7median317hcf40f420295b7b4aE: %c"}
!1609 = distinct !{!1609, !"_ZN4core5slice4sort6shared5pivot7median317hcf40f420295b7b4aE"}
!1610 = !{!1611}
!1611 = distinct !{!1611, !1606, !"_ZN4core3ops8function5FnMut8call_mut17hb4861b34bf1764a8E: argument 1"}
!1612 = !{!1613}
!1613 = distinct !{!1613, !1614, !"cmpfunc: %a"}
!1614 = distinct !{!1614, !"cmpfunc"}
!1615 = !{!1616}
!1616 = distinct !{!1616, !1614, !"cmpfunc: %b"}
!1617 = !{!1618}
!1618 = distinct !{!1618, !1619, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!1619 = distinct !{!1619, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!1620 = !{!1621}
!1621 = distinct !{!1621, !1619, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!1622 = !{!1618, !1613, !1605, !1600, !1623}
!1623 = distinct !{!1623, !1624, !"_ZN4core5slice4sort6shared5pivot12choose_pivot17hc728f59411a312eeE: %v.0"}
!1624 = distinct !{!1624, !"_ZN4core5slice4sort6shared5pivot12choose_pivot17hc728f59411a312eeE"}
!1625 = !{!1621, !1616, !1611, !1603, !1608, !1626}
!1626 = distinct !{!1626, !1624, !"_ZN4core5slice4sort6shared5pivot12choose_pivot17hc728f59411a312eeE: %is_less"}
!1627 = !{!1621, !1616, !1611, !1603, !1623}
!1628 = !{!1618, !1613, !1605, !1600, !1608, !1626}
!1629 = !{!1630, !1632, !1634, !1636, !1623}
!1630 = distinct !{!1630, !1631, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!1631 = distinct !{!1631, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!1632 = distinct !{!1632, !1633, !"cmpfunc: %b"}
!1633 = distinct !{!1633, !"cmpfunc"}
!1634 = distinct !{!1634, !1635, !"_ZN4core3ops8function5FnMut8call_mut17hb4861b34bf1764a8E: argument 1"}
!1635 = distinct !{!1635, !"_ZN4core3ops8function5FnMut8call_mut17hb4861b34bf1764a8E"}
!1636 = distinct !{!1636, !1637, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h4bb58e431584b902E: %b"}
!1637 = distinct !{!1637, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h4bb58e431584b902E"}
!1638 = !{!1639, !1640, !1641, !1642, !1626}
!1639 = distinct !{!1639, !1631, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!1640 = distinct !{!1640, !1633, !"cmpfunc: %a"}
!1641 = distinct !{!1641, !1635, !"_ZN4core3ops8function5FnMut8call_mut17hb4861b34bf1764a8E: argument 0"}
!1642 = distinct !{!1642, !1637, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h4bb58e431584b902E: %a"}
!1643 = !{!1644, !1646, !1648, !1650}
!1644 = distinct !{!1644, !1645, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!1645 = distinct !{!1645, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!1646 = distinct !{!1646, !1647, !"cmpfunc: %a"}
!1647 = distinct !{!1647, !"cmpfunc"}
!1648 = distinct !{!1648, !1649, !"_ZN4core3ops8function5FnMut8call_mut17hb4861b34bf1764a8E: argument 0"}
!1649 = distinct !{!1649, !"_ZN4core3ops8function5FnMut8call_mut17hb4861b34bf1764a8E"}
!1650 = distinct !{!1650, !1651, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h4bb58e431584b902E: %a"}
!1651 = distinct !{!1651, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h4bb58e431584b902E"}
!1652 = !{!1653, !1654, !1655, !1656}
!1653 = distinct !{!1653, !1645, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!1654 = distinct !{!1654, !1647, !"cmpfunc: %b"}
!1655 = distinct !{!1655, !1649, !"_ZN4core3ops8function5FnMut8call_mut17hb4861b34bf1764a8E: argument 1"}
!1656 = distinct !{!1656, !1651, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h4bb58e431584b902E: %b"}
!1657 = !{!1658, !1660}
!1658 = distinct !{!1658, !1659, !"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$12split_at_mut17h1400d91c62c2e5e3E: %pair"}
!1659 = distinct !{!1659, !"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$12split_at_mut17h1400d91c62c2e5e3E"}
!1660 = distinct !{!1660, !1659, !"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$12split_at_mut17h1400d91c62c2e5e3E: %self.0"}
!1661 = !{!1662}
!1662 = distinct !{!1662, !1663, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialEq$u20$for$u20$char$GT$2eq17hb8b6a535ea4bea97E: %self"}
!1663 = distinct !{!1663, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialEq$u20$for$u20$char$GT$2eq17hb8b6a535ea4bea97E"}
!1664 = !{!1665}
!1665 = distinct !{!1665, !1663, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialEq$u20$for$u20$char$GT$2eq17hb8b6a535ea4bea97E: %other"}
!1666 = !{i64 0, i64 -9223372036854775808}
!1667 = !{!1668}
!1668 = distinct !{!1668, !1669, !"_ZN9hashbrown3raw13RawTableInner16drop_inner_table17hbdff987bad8a68daE: %self"}
!1669 = distinct !{!1669, !"_ZN9hashbrown3raw13RawTableInner16drop_inner_table17hbdff987bad8a68daE"}
!1670 = !{!1671, !1673, !1675, !1677, !1679, !1680}
!1671 = distinct !{!1671, !1672, !"_ZN3std3sys12thread_local6native4lazy20Storage$LT$T$C$D$GT$11get_or_init17h5409bd098d5d7504E: %i"}
!1672 = distinct !{!1672, !"_ZN3std3sys12thread_local6native4lazy20Storage$LT$T$C$D$GT$11get_or_init17h5409bd098d5d7504E"}
!1673 = distinct !{!1673, !1674, !"_ZN3std4hash6random11RandomState3new4KEYS29_$u7b$$u7b$constant$u7d$$u7d$28_$u7b$$u7b$closure$u7d$$u7d$17h8ca9e071f0930868E: %__rust_std_internal_init"}
!1674 = distinct !{!1674, !"_ZN3std4hash6random11RandomState3new4KEYS29_$u7b$$u7b$constant$u7d$$u7d$28_$u7b$$u7b$closure$u7d$$u7d$17h8ca9e071f0930868E"}
!1675 = distinct !{!1675, !1676, !"_ZN4core3ops8function6FnOnce9call_once17h754dc77a8ea850c3E: argument 0"}
!1676 = distinct !{!1676, !"_ZN4core3ops8function6FnOnce9call_once17h754dc77a8ea850c3E"}
!1677 = distinct !{!1677, !1678, !"_ZN3std6thread5local17LocalKey$LT$T$GT$8try_with17h6d3208ed701a165aE: %_0"}
!1678 = distinct !{!1678, !"_ZN3std6thread5local17LocalKey$LT$T$GT$8try_with17h6d3208ed701a165aE"}
!1679 = distinct !{!1679, !1678, !"_ZN3std6thread5local17LocalKey$LT$T$GT$8try_with17h6d3208ed701a165aE: %self"}
!1680 = distinct !{!1680, !1681, !"_ZN3std6thread5local17LocalKey$LT$T$GT$4with17h0683d3cbc6ca50f6E: %self"}
!1681 = distinct !{!1681, !"_ZN3std6thread5local17LocalKey$LT$T$GT$4with17h0683d3cbc6ca50f6E"}
!1682 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!1683 = !{!1684, !1677, !1679, !1680}
!1684 = distinct !{!1684, !1685, !"_ZN3std3sys12thread_local6native4lazy20Storage$LT$T$C$D$GT$16get_or_init_slow17hb2b447367241d6bdE: argument 0"}
!1685 = distinct !{!1685, !"_ZN3std3sys12thread_local6native4lazy20Storage$LT$T$C$D$GT$16get_or_init_slow17hb2b447367241d6bdE"}
!1686 = !{!1677, !1679, !1680}
!1687 = !{!1688}
!1688 = distinct !{!1688, !1689, !"_ZN4core4hash11BuildHasher8hash_one17h405cf8b275c5e5e1E: %self"}
!1689 = distinct !{!1689, !"_ZN4core4hash11BuildHasher8hash_one17h405cf8b275c5e5e1E"}
!1690 = !{!1691}
!1691 = distinct !{!1691, !1689, !"_ZN4core4hash11BuildHasher8hash_one17h405cf8b275c5e5e1E: argument 1"}
!1692 = !{!1693, !1688}
!1693 = distinct !{!1693, !1694, !"_ZN74_$LT$std..hash..random..RandomState$u20$as$u20$core..hash..BuildHasher$GT$12build_hasher17h0f2f0c02d90c5e40E: %self"}
!1694 = distinct !{!1694, !"_ZN74_$LT$std..hash..random..RandomState$u20$as$u20$core..hash..BuildHasher$GT$12build_hasher17h0f2f0c02d90c5e40E"}
!1695 = !{!1696, !1691}
!1696 = distinct !{!1696, !1694, !"_ZN74_$LT$std..hash..random..RandomState$u20$as$u20$core..hash..BuildHasher$GT$12build_hasher17h0f2f0c02d90c5e40E: %_0"}
!1697 = !{!1698, !1691}
!1698 = distinct !{!1698, !1699, !"_ZN4core4hash5impls51_$LT$impl$u20$core..hash..Hash$u20$for$u20$char$GT$4hash17h8c4e576ed484173fE: %self"}
!1699 = distinct !{!1699, !"_ZN4core4hash5impls51_$LT$impl$u20$core..hash..Hash$u20$for$u20$char$GT$4hash17h8c4e576ed484173fE"}
!1700 = !{!1701, !1702, !1704, !1688}
!1701 = distinct !{!1701, !1699, !"_ZN4core4hash5impls51_$LT$impl$u20$core..hash..Hash$u20$for$u20$char$GT$4hash17h8c4e576ed484173fE: %state"}
!1702 = distinct !{!1702, !1703, !"_ZN4core4hash5impls52_$LT$impl$u20$core..hash..Hash$u20$for$u20$$RF$T$GT$4hash17h66c7ffc742178686E: %self"}
!1703 = distinct !{!1703, !"_ZN4core4hash5impls52_$LT$impl$u20$core..hash..Hash$u20$for$u20$$RF$T$GT$4hash17h66c7ffc742178686E"}
!1704 = distinct !{!1704, !1703, !"_ZN4core4hash5impls52_$LT$impl$u20$core..hash..Hash$u20$for$u20$$RF$T$GT$4hash17h66c7ffc742178686E: %state"}
!1705 = !{!1706}
!1706 = distinct !{!1706, !1707, !"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$4find17h099eb6b1ca84dda3E: %self"}
!1707 = distinct !{!1707, !"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$4find17h099eb6b1ca84dda3E"}
!1708 = !{!1709}
!1709 = distinct !{!1709, !1710, !"_ZN9hashbrown3raw13RawTableInner10find_inner17h63ff474dff1d1e61E: %self"}
!1710 = distinct !{!1710, !"_ZN9hashbrown3raw13RawTableInner10find_inner17h63ff474dff1d1e61E"}
!1711 = !{!1709, !1706}
!1712 = !{!1713}
!1713 = distinct !{!1713, !1707, !"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$4find17h099eb6b1ca84dda3E: argument 1"}
!1714 = !{!1715, !1709, !1706, !1713}
!1715 = distinct !{!1715, !1716, !"_ZN4core9core_arch3x864sse215_mm_loadu_si12817hacd8816d606c91f7E: %_0"}
!1716 = distinct !{!1716, !"_ZN4core9core_arch3x864sse215_mm_loadu_si12817hacd8816d606c91f7E"}
!1717 = !{!1718, !1720, !1722}
!1718 = distinct !{!1718, !1719, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialEq$u20$for$u20$char$GT$2eq17hb8b6a535ea4bea97E: %other"}
!1719 = distinct !{!1719, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialEq$u20$for$u20$char$GT$2eq17hb8b6a535ea4bea97E"}
!1720 = distinct !{!1720, !1721, !"_ZN52_$LT$Q$u20$as$u20$hashbrown..Equivalent$LT$K$GT$$GT$10equivalent17hb0de2a23fc7075ffE: %key"}
!1721 = distinct !{!1721, !"_ZN52_$LT$Q$u20$as$u20$hashbrown..Equivalent$LT$K$GT$$GT$10equivalent17hb0de2a23fc7075ffE"}
!1722 = distinct !{!1722, !1723, !"_ZN9hashbrown3map14equivalent_key28_$u7b$$u7b$closure$u7d$$u7d$17hfa00c74210e3b5caE: %x"}
!1723 = distinct !{!1723, !"_ZN9hashbrown3map14equivalent_key28_$u7b$$u7b$closure$u7d$$u7d$17hfa00c74210e3b5caE"}
!1724 = !{!1725, !1726, !1727, !1728, !1709, !1706, !1713}
!1725 = distinct !{!1725, !1719, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialEq$u20$for$u20$char$GT$2eq17hb8b6a535ea4bea97E: %self"}
!1726 = distinct !{!1726, !1721, !"_ZN52_$LT$Q$u20$as$u20$hashbrown..Equivalent$LT$K$GT$$GT$10equivalent17hb0de2a23fc7075ffE: %self"}
!1727 = distinct !{!1727, !1723, !"_ZN9hashbrown3map14equivalent_key28_$u7b$$u7b$closure$u7d$$u7d$17hfa00c74210e3b5caE: %_1"}
!1728 = distinct !{!1728, !1729, !"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$4find28_$u7b$$u7b$closure$u7d$$u7d$17h38604d1832bd2276E: %_1"}
!1729 = distinct !{!1729, !"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$4find28_$u7b$$u7b$closure$u7d$$u7d$17h38604d1832bd2276E"}
!1730 = !{!1731}
!1731 = distinct !{!1731, !1732, !"_ZN4core4hash11BuildHasher8hash_one17h405cf8b275c5e5e1E: %self"}
!1732 = distinct !{!1732, !"_ZN4core4hash11BuildHasher8hash_one17h405cf8b275c5e5e1E"}
!1733 = !{!1734}
!1734 = distinct !{!1734, !1732, !"_ZN4core4hash11BuildHasher8hash_one17h405cf8b275c5e5e1E: argument 1"}
!1735 = !{!1736, !1731}
!1736 = distinct !{!1736, !1737, !"_ZN74_$LT$std..hash..random..RandomState$u20$as$u20$core..hash..BuildHasher$GT$12build_hasher17h0f2f0c02d90c5e40E: %self"}
!1737 = distinct !{!1737, !"_ZN74_$LT$std..hash..random..RandomState$u20$as$u20$core..hash..BuildHasher$GT$12build_hasher17h0f2f0c02d90c5e40E"}
!1738 = !{!1739, !1734}
!1739 = distinct !{!1739, !1737, !"_ZN74_$LT$std..hash..random..RandomState$u20$as$u20$core..hash..BuildHasher$GT$12build_hasher17h0f2f0c02d90c5e40E: %_0"}
!1740 = !{!1741, !1734}
!1741 = distinct !{!1741, !1742, !"_ZN4core4hash5impls51_$LT$impl$u20$core..hash..Hash$u20$for$u20$char$GT$4hash17h8c4e576ed484173fE: %self"}
!1742 = distinct !{!1742, !"_ZN4core4hash5impls51_$LT$impl$u20$core..hash..Hash$u20$for$u20$char$GT$4hash17h8c4e576ed484173fE"}
!1743 = !{!1744, !1745, !1747, !1731}
!1744 = distinct !{!1744, !1742, !"_ZN4core4hash5impls51_$LT$impl$u20$core..hash..Hash$u20$for$u20$char$GT$4hash17h8c4e576ed484173fE: %state"}
!1745 = distinct !{!1745, !1746, !"_ZN4core4hash5impls52_$LT$impl$u20$core..hash..Hash$u20$for$u20$$RF$T$GT$4hash17h66c7ffc742178686E: %self"}
!1746 = distinct !{!1746, !"_ZN4core4hash5impls52_$LT$impl$u20$core..hash..Hash$u20$for$u20$$RF$T$GT$4hash17h66c7ffc742178686E"}
!1747 = distinct !{!1747, !1746, !"_ZN4core4hash5impls52_$LT$impl$u20$core..hash..Hash$u20$for$u20$$RF$T$GT$4hash17h66c7ffc742178686E: %state"}
!1748 = !{!1749}
!1749 = distinct !{!1749, !1750, !"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$12remove_entry17h4b9e890c1c3ca8c0E: %self"}
!1750 = distinct !{!1750, !"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$12remove_entry17h4b9e890c1c3ca8c0E"}
!1751 = !{!1752}
!1752 = distinct !{!1752, !1753, !"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$4find17h099eb6b1ca84dda3E: %self"}
!1753 = distinct !{!1753, !"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$4find17h099eb6b1ca84dda3E"}
!1754 = !{!1755}
!1755 = distinct !{!1755, !1756, !"_ZN9hashbrown3raw13RawTableInner10find_inner17h63ff474dff1d1e61E: %self"}
!1756 = distinct !{!1756, !"_ZN9hashbrown3raw13RawTableInner10find_inner17h63ff474dff1d1e61E"}
!1757 = !{!1755, !1752, !1749}
!1758 = !{!1759, !1760}
!1759 = distinct !{!1759, !1753, !"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$4find17h099eb6b1ca84dda3E: argument 1"}
!1760 = distinct !{!1760, !1750, !"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$12remove_entry17h4b9e890c1c3ca8c0E: %eq"}
!1761 = !{!1762, !1755, !1752, !1759, !1749, !1760}
!1762 = distinct !{!1762, !1763, !"_ZN4core9core_arch3x864sse215_mm_loadu_si12817hacd8816d606c91f7E: %_0"}
!1763 = distinct !{!1763, !"_ZN4core9core_arch3x864sse215_mm_loadu_si12817hacd8816d606c91f7E"}
!1764 = !{!1765, !1767, !1769}
!1765 = distinct !{!1765, !1766, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialEq$u20$for$u20$char$GT$2eq17hb8b6a535ea4bea97E: %other"}
!1766 = distinct !{!1766, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialEq$u20$for$u20$char$GT$2eq17hb8b6a535ea4bea97E"}
!1767 = distinct !{!1767, !1768, !"_ZN52_$LT$Q$u20$as$u20$hashbrown..Equivalent$LT$K$GT$$GT$10equivalent17hb0de2a23fc7075ffE: %key"}
!1768 = distinct !{!1768, !"_ZN52_$LT$Q$u20$as$u20$hashbrown..Equivalent$LT$K$GT$$GT$10equivalent17hb0de2a23fc7075ffE"}
!1769 = distinct !{!1769, !1770, !"_ZN9hashbrown3map14equivalent_key28_$u7b$$u7b$closure$u7d$$u7d$17hfa00c74210e3b5caE: %x"}
!1770 = distinct !{!1770, !"_ZN9hashbrown3map14equivalent_key28_$u7b$$u7b$closure$u7d$$u7d$17hfa00c74210e3b5caE"}
!1771 = !{!1772, !1773, !1774, !1775, !1755, !1752, !1759, !1749, !1760}
!1772 = distinct !{!1772, !1766, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialEq$u20$for$u20$char$GT$2eq17hb8b6a535ea4bea97E: %self"}
!1773 = distinct !{!1773, !1768, !"_ZN52_$LT$Q$u20$as$u20$hashbrown..Equivalent$LT$K$GT$$GT$10equivalent17hb0de2a23fc7075ffE: %self"}
!1774 = distinct !{!1774, !1770, !"_ZN9hashbrown3map14equivalent_key28_$u7b$$u7b$closure$u7d$$u7d$17hfa00c74210e3b5caE: %_1"}
!1775 = distinct !{!1775, !1776, !"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$4find28_$u7b$$u7b$closure$u7d$$u7d$17h38604d1832bd2276E: %_1"}
!1776 = distinct !{!1776, !"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$4find28_$u7b$$u7b$closure$u7d$$u7d$17h38604d1832bd2276E"}
!1777 = !{!1778}
!1778 = distinct !{!1778, !1779, !"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$6remove17h8d367b2999601316E: %self"}
!1779 = distinct !{!1779, !"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$6remove17h8d367b2999601316E"}
!1780 = !{!1781}
!1781 = distinct !{!1781, !1782, !"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$13erase_no_drop17h92401ca7795c8600E: %self"}
!1782 = distinct !{!1782, !"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$13erase_no_drop17h92401ca7795c8600E"}
!1783 = !{!1784}
!1784 = distinct !{!1784, !1785, !"_ZN9hashbrown3raw13RawTableInner5erase17hbb0723b963416dfbE: %self"}
!1785 = distinct !{!1785, !"_ZN9hashbrown3raw13RawTableInner5erase17hbb0723b963416dfbE"}
!1786 = !{!1787, !1784, !1781, !1789, !1778, !1749, !1760}
!1787 = distinct !{!1787, !1788, !"_ZN4core9core_arch3x864sse215_mm_loadu_si12817hacd8816d606c91f7E: %_0"}
!1788 = distinct !{!1788, !"_ZN4core9core_arch3x864sse215_mm_loadu_si12817hacd8816d606c91f7E"}
!1789 = distinct !{!1789, !1782, !"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$13erase_no_drop17h92401ca7795c8600E: %item"}
!1790 = !{!1791, !1784, !1781, !1789, !1778, !1749, !1760}
!1791 = distinct !{!1791, !1792, !"_ZN4core9core_arch3x864sse215_mm_loadu_si12817hacd8816d606c91f7E: %_0"}
!1792 = distinct !{!1792, !"_ZN4core9core_arch3x864sse215_mm_loadu_si12817hacd8816d606c91f7E"}
!1793 = !{!1784, !1781, !1778, !1749}
!1794 = !{!1789, !1760}
!1795 = !{!1784, !1781, !1789, !1778, !1749, !1760}
!1796 = !{!1778, !1749, !1760}
!1797 = !{!1798, !1800}
!1798 = distinct !{!1798, !1799, !"_ZN74_$LT$std..hash..random..RandomState$u20$as$u20$core..hash..BuildHasher$GT$12build_hasher17h0f2f0c02d90c5e40E: %self"}
!1799 = distinct !{!1799, !"_ZN74_$LT$std..hash..random..RandomState$u20$as$u20$core..hash..BuildHasher$GT$12build_hasher17h0f2f0c02d90c5e40E"}
!1800 = distinct !{!1800, !1801, !"_ZN4core4hash11BuildHasher8hash_one17h405cf8b275c5e5e1E: %self"}
!1801 = distinct !{!1801, !"_ZN4core4hash11BuildHasher8hash_one17h405cf8b275c5e5e1E"}
!1802 = !{!1803, !1804}
!1803 = distinct !{!1803, !1799, !"_ZN74_$LT$std..hash..random..RandomState$u20$as$u20$core..hash..BuildHasher$GT$12build_hasher17h0f2f0c02d90c5e40E: %_0"}
!1804 = distinct !{!1804, !1801, !"_ZN4core4hash11BuildHasher8hash_one17h405cf8b275c5e5e1E: argument 1"}
!1805 = !{!1806}
!1806 = distinct !{!1806, !1807, !"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$25find_or_find_insert_index17h91b5f00056c337cfE: %self"}
!1807 = distinct !{!1807, !"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$25find_or_find_insert_index17h91b5f00056c337cfE"}
!1808 = !{!1809, !1806}
!1809 = distinct !{!1809, !1810, !"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$7reserve17h3b0d1f8cf6e2c407E: %self"}
!1810 = distinct !{!1810, !"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$7reserve17h3b0d1f8cf6e2c407E"}
!1811 = !{!1812, !1813, !1814}
!1812 = distinct !{!1812, !1810, !"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$7reserve17h3b0d1f8cf6e2c407E: %hasher"}
!1813 = distinct !{!1813, !1807, !"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$25find_or_find_insert_index17h91b5f00056c337cfE: argument 1"}
!1814 = distinct !{!1814, !1807, !"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$25find_or_find_insert_index17h91b5f00056c337cfE: %hasher"}
!1815 = !{!1813}
!1816 = !{!1817}
!1817 = distinct !{!1817, !1818, !"_ZN9hashbrown3raw13RawTableInner31find_or_find_insert_index_inner17h961ad503800a0548E: %self"}
!1818 = distinct !{!1818, !"_ZN9hashbrown3raw13RawTableInner31find_or_find_insert_index_inner17h961ad503800a0548E"}
!1819 = !{!1817, !1806}
!1820 = !{!1813, !1814}
!1821 = !{!1822, !1817, !1806, !1813, !1814}
!1822 = distinct !{!1822, !1823, !"_ZN4core9core_arch3x864sse215_mm_loadu_si12817hacd8816d606c91f7E: %_0"}
!1823 = distinct !{!1823, !"_ZN4core9core_arch3x864sse215_mm_loadu_si12817hacd8816d606c91f7E"}
!1824 = !{!1825, !1827, !1829}
!1825 = distinct !{!1825, !1826, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialEq$u20$for$u20$char$GT$2eq17hb8b6a535ea4bea97E: %other"}
!1826 = distinct !{!1826, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialEq$u20$for$u20$char$GT$2eq17hb8b6a535ea4bea97E"}
!1827 = distinct !{!1827, !1828, !"_ZN52_$LT$Q$u20$as$u20$hashbrown..Equivalent$LT$K$GT$$GT$10equivalent17hb0de2a23fc7075ffE: %key"}
!1828 = distinct !{!1828, !"_ZN52_$LT$Q$u20$as$u20$hashbrown..Equivalent$LT$K$GT$$GT$10equivalent17hb0de2a23fc7075ffE"}
!1829 = distinct !{!1829, !1830, !"_ZN9hashbrown3map14equivalent_key28_$u7b$$u7b$closure$u7d$$u7d$17hfa00c74210e3b5caE: %x"}
!1830 = distinct !{!1830, !"_ZN9hashbrown3map14equivalent_key28_$u7b$$u7b$closure$u7d$$u7d$17hfa00c74210e3b5caE"}
!1831 = !{!1832, !1833, !1834, !1835, !1817, !1806, !1813, !1814}
!1832 = distinct !{!1832, !1826, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialEq$u20$for$u20$char$GT$2eq17hb8b6a535ea4bea97E: %self"}
!1833 = distinct !{!1833, !1828, !"_ZN52_$LT$Q$u20$as$u20$hashbrown..Equivalent$LT$K$GT$$GT$10equivalent17hb0de2a23fc7075ffE: %self"}
!1834 = distinct !{!1834, !1830, !"_ZN9hashbrown3map14equivalent_key28_$u7b$$u7b$closure$u7d$$u7d$17hfa00c74210e3b5caE: %_1"}
!1835 = distinct !{!1835, !1836, !"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$25find_or_find_insert_index28_$u7b$$u7b$closure$u7d$$u7d$17h8a765c39ba539a5dE: %_1"}
!1836 = distinct !{!1836, !"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$25find_or_find_insert_index28_$u7b$$u7b$closure$u7d$$u7d$17h8a765c39ba539a5dE"}
!1837 = !{!"branch_weights", i32 2000, i32 2002}
!1838 = !{!1839, !1817, !1806, !1813, !1814}
!1839 = distinct !{!1839, !1840, !"_ZN9hashbrown3raw13RawTableInner16fix_insert_index17h49a70ae2ff162b38E: %self"}
!1840 = distinct !{!1840, !"_ZN9hashbrown3raw13RawTableInner16fix_insert_index17h49a70ae2ff162b38E"}
!1841 = !{!1842, !1839, !1817, !1806, !1813, !1814}
!1842 = distinct !{!1842, !1843, !"_ZN4core9core_arch3x864sse214_mm_load_si12817h5ca5bf15f399be86E: %_0"}
!1843 = distinct !{!1843, !"_ZN4core9core_arch3x864sse214_mm_load_si12817h5ca5bf15f399be86E"}
!1844 = !{!1845}
!1845 = distinct !{!1845, !1846, !"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$22insert_tagged_at_index17h3cca5d044e204ce7E: %self"}
!1846 = distinct !{!1846, !"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$22insert_tagged_at_index17h3cca5d044e204ce7E"}
!1847 = !{!"branch_weights", i32 2002, i32 2000}
!1848 = !{!1849}
!1849 = distinct !{!1849, !1850, !"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$4find17h099eb6b1ca84dda3E: %self"}
!1850 = distinct !{!1850, !"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$4find17h099eb6b1ca84dda3E"}
!1851 = !{!1852}
!1852 = distinct !{!1852, !1850, !"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$4find17h099eb6b1ca84dda3E: argument 1"}
!1853 = !{!1854}
!1854 = distinct !{!1854, !1855, !"_ZN9hashbrown3raw13RawTableInner10find_inner17h63ff474dff1d1e61E: %self"}
!1855 = distinct !{!1855, !"_ZN9hashbrown3raw13RawTableInner10find_inner17h63ff474dff1d1e61E"}
!1856 = !{!1854, !1849}
!1857 = !{!1858, !1854, !1849, !1852}
!1858 = distinct !{!1858, !1859, !"_ZN4core9core_arch3x864sse215_mm_loadu_si12817hacd8816d606c91f7E: %_0"}
!1859 = distinct !{!1859, !"_ZN4core9core_arch3x864sse215_mm_loadu_si12817hacd8816d606c91f7E"}
!1860 = !{!1861, !1863, !1865}
!1861 = distinct !{!1861, !1862, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialEq$u20$for$u20$char$GT$2eq17hb8b6a535ea4bea97E: %other"}
!1862 = distinct !{!1862, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialEq$u20$for$u20$char$GT$2eq17hb8b6a535ea4bea97E"}
!1863 = distinct !{!1863, !1864, !"_ZN52_$LT$Q$u20$as$u20$hashbrown..Equivalent$LT$K$GT$$GT$10equivalent17hb0de2a23fc7075ffE: %key"}
!1864 = distinct !{!1864, !"_ZN52_$LT$Q$u20$as$u20$hashbrown..Equivalent$LT$K$GT$$GT$10equivalent17hb0de2a23fc7075ffE"}
!1865 = distinct !{!1865, !1866, !"_ZN9hashbrown3map14equivalent_key28_$u7b$$u7b$closure$u7d$$u7d$17hfa00c74210e3b5caE: %x"}
!1866 = distinct !{!1866, !"_ZN9hashbrown3map14equivalent_key28_$u7b$$u7b$closure$u7d$$u7d$17hfa00c74210e3b5caE"}
!1867 = !{!1868, !1869, !1870, !1871, !1854, !1849, !1852}
!1868 = distinct !{!1868, !1862, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialEq$u20$for$u20$char$GT$2eq17hb8b6a535ea4bea97E: %self"}
!1869 = distinct !{!1869, !1864, !"_ZN52_$LT$Q$u20$as$u20$hashbrown..Equivalent$LT$K$GT$$GT$10equivalent17hb0de2a23fc7075ffE: %self"}
!1870 = distinct !{!1870, !1866, !"_ZN9hashbrown3map14equivalent_key28_$u7b$$u7b$closure$u7d$$u7d$17hfa00c74210e3b5caE: %_1"}
!1871 = distinct !{!1871, !1872, !"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$4find28_$u7b$$u7b$closure$u7d$$u7d$17h38604d1832bd2276E: %_1"}
!1872 = distinct !{!1872, !"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$4find28_$u7b$$u7b$closure$u7d$$u7d$17h38604d1832bd2276E"}
!1873 = !{!1874}
!1874 = distinct !{!1874, !1875, !"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$6remove17h8d367b2999601316E: %self"}
!1875 = distinct !{!1875, !"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$6remove17h8d367b2999601316E"}
!1876 = !{!1877}
!1877 = distinct !{!1877, !1878, !"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$13erase_no_drop17h92401ca7795c8600E: %self"}
!1878 = distinct !{!1878, !"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$13erase_no_drop17h92401ca7795c8600E"}
!1879 = !{!1880}
!1880 = distinct !{!1880, !1881, !"_ZN9hashbrown3raw13RawTableInner5erase17hbb0723b963416dfbE: %self"}
!1881 = distinct !{!1881, !"_ZN9hashbrown3raw13RawTableInner5erase17hbb0723b963416dfbE"}
!1882 = !{!1883, !1880, !1877, !1885, !1874}
!1883 = distinct !{!1883, !1884, !"_ZN4core9core_arch3x864sse215_mm_loadu_si12817hacd8816d606c91f7E: %_0"}
!1884 = distinct !{!1884, !"_ZN4core9core_arch3x864sse215_mm_loadu_si12817hacd8816d606c91f7E"}
!1885 = distinct !{!1885, !1878, !"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$13erase_no_drop17h92401ca7795c8600E: %item"}
!1886 = !{!1887, !1880, !1877, !1885, !1874}
!1887 = distinct !{!1887, !1888, !"_ZN4core9core_arch3x864sse215_mm_loadu_si12817hacd8816d606c91f7E: %_0"}
!1888 = distinct !{!1888, !"_ZN4core9core_arch3x864sse215_mm_loadu_si12817hacd8816d606c91f7E"}
!1889 = !{!1880, !1877, !1874}
!1890 = !{!1885}
!1891 = !{!1880, !1877, !1885, !1874}
!1892 = !{!1893}
!1893 = distinct !{!1893, !1894, !"_ZN9hashbrown3raw13RawTableInner5erase17hbb0723b963416dfbE: %self"}
!1894 = distinct !{!1894, !"_ZN9hashbrown3raw13RawTableInner5erase17hbb0723b963416dfbE"}
!1895 = !{!1896, !1893}
!1896 = distinct !{!1896, !1897, !"_ZN4core9core_arch3x864sse215_mm_loadu_si12817hacd8816d606c91f7E: %_0"}
!1897 = distinct !{!1897, !"_ZN4core9core_arch3x864sse215_mm_loadu_si12817hacd8816d606c91f7E"}
!1898 = !{!1899, !1893}
!1899 = distinct !{!1899, !1900, !"_ZN4core9core_arch3x864sse215_mm_loadu_si12817hacd8816d606c91f7E: %_0"}
!1900 = distinct !{!1900, !"_ZN4core9core_arch3x864sse215_mm_loadu_si12817hacd8816d606c91f7E"}
!1901 = !{!1902}
!1902 = distinct !{!1902, !1903, !"_ZN9hashbrown3raw13RawTableInner20reserve_rehash_inner17h7ec2af33c7dfb99eE: %self"}
!1903 = distinct !{!1903, !"_ZN9hashbrown3raw13RawTableInner20reserve_rehash_inner17h7ec2af33c7dfb99eE"}
!1904 = !{!1905}
!1905 = distinct !{!1905, !1903, !"_ZN9hashbrown3raw13RawTableInner20reserve_rehash_inner17h7ec2af33c7dfb99eE: %alloc"}
!1906 = !{!1902, !1905}
!1907 = !{!1908}
!1908 = distinct !{!1908, !1909, !"_ZN9hashbrown3raw13RawTableInner12resize_inner17hc98973e5e0152c5eE: %self"}
!1909 = distinct !{!1909, !"_ZN9hashbrown3raw13RawTableInner12resize_inner17hc98973e5e0152c5eE"}
!1910 = !{!1911, !1913, !1908, !1902}
!1911 = distinct !{!1911, !1912, !"_ZN9hashbrown3raw13RawTableInner17new_uninitialized17hd439e4c49046c978E: %_0"}
!1912 = distinct !{!1912, !"_ZN9hashbrown3raw13RawTableInner17new_uninitialized17hd439e4c49046c978E"}
!1913 = distinct !{!1913, !1914, !"_ZN9hashbrown3raw13RawTableInner22fallible_with_capacity17h981b21e9722a5879E: %_0"}
!1914 = distinct !{!1914, !"_ZN9hashbrown3raw13RawTableInner22fallible_with_capacity17h981b21e9722a5879E"}
!1915 = !{!1913, !1908, !1902}
!1916 = !{!1908, !1902}
!1917 = !{!1918, !1905}
!1918 = distinct !{!1918, !1909, !"_ZN9hashbrown3raw13RawTableInner12resize_inner17hc98973e5e0152c5eE: %alloc"}
!1919 = !{!1920, !1908, !1902}
!1920 = distinct !{!1920, !1921, !"_ZN4core9core_arch3x864sse214_mm_load_si12817h5ca5bf15f399be86E: %_0"}
!1921 = distinct !{!1921, !"_ZN4core9core_arch3x864sse214_mm_load_si12817h5ca5bf15f399be86E"}
!1922 = !{!1923}
!1923 = distinct !{!1923, !1924, !"_ZN4core9core_arch3x864sse214_mm_load_si12817h5ca5bf15f399be86E: %_0"}
!1924 = distinct !{!1924, !"_ZN4core9core_arch3x864sse214_mm_load_si12817h5ca5bf15f399be86E"}
!1925 = !{!1926}
!1926 = distinct !{!1926, !1927, !"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$14reserve_rehash28_$u7b$$u7b$closure$u7d$$u7d$17h3ffc554747371a62E: %table"}
!1927 = distinct !{!1927, !"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$14reserve_rehash28_$u7b$$u7b$closure$u7d$$u7d$17h3ffc554747371a62E"}
!1928 = !{!1929}
!1929 = distinct !{!1929, !1927, !"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$14reserve_rehash28_$u7b$$u7b$closure$u7d$$u7d$17h3ffc554747371a62E: %_1"}
!1930 = !{!1931, !1933, !1935}
!1931 = distinct !{!1931, !1932, !"_ZN4core4hash5impls51_$LT$impl$u20$core..hash..Hash$u20$for$u20$char$GT$4hash17h8c4e576ed484173fE: %self"}
!1932 = distinct !{!1932, !"_ZN4core4hash5impls51_$LT$impl$u20$core..hash..Hash$u20$for$u20$char$GT$4hash17h8c4e576ed484173fE"}
!1933 = distinct !{!1933, !1934, !"_ZN4core4hash11BuildHasher8hash_one17h405cf8b275c5e5e1E: argument 1"}
!1934 = distinct !{!1934, !"_ZN4core4hash11BuildHasher8hash_one17h405cf8b275c5e5e1E"}
!1935 = distinct !{!1935, !1936, !"_ZN9hashbrown3map11make_hasher28_$u7b$$u7b$closure$u7d$$u7d$17hd9a6aedae0b0a765E: %val"}
!1936 = distinct !{!1936, !"_ZN9hashbrown3map11make_hasher28_$u7b$$u7b$closure$u7d$$u7d$17hd9a6aedae0b0a765E"}
!1937 = !{!1938, !1939, !1941, !1942, !1943, !1929, !1926}
!1938 = distinct !{!1938, !1932, !"_ZN4core4hash5impls51_$LT$impl$u20$core..hash..Hash$u20$for$u20$char$GT$4hash17h8c4e576ed484173fE: %state"}
!1939 = distinct !{!1939, !1940, !"_ZN4core4hash5impls52_$LT$impl$u20$core..hash..Hash$u20$for$u20$$RF$T$GT$4hash17h66c7ffc742178686E: %self"}
!1940 = distinct !{!1940, !"_ZN4core4hash5impls52_$LT$impl$u20$core..hash..Hash$u20$for$u20$$RF$T$GT$4hash17h66c7ffc742178686E"}
!1941 = distinct !{!1941, !1940, !"_ZN4core4hash5impls52_$LT$impl$u20$core..hash..Hash$u20$for$u20$$RF$T$GT$4hash17h66c7ffc742178686E: %state"}
!1942 = distinct !{!1942, !1934, !"_ZN4core4hash11BuildHasher8hash_one17h405cf8b275c5e5e1E: %self"}
!1943 = distinct !{!1943, !1936, !"_ZN9hashbrown3map11make_hasher28_$u7b$$u7b$closure$u7d$$u7d$17hd9a6aedae0b0a765E: %_1"}
!1944 = !{!1945}
!1945 = distinct !{!1945, !1946, !"_ZN4core3ptr10swap_chunk17hb16347bff0b70c4bE: %x"}
!1946 = distinct !{!1946, !"_ZN4core3ptr10swap_chunk17hb16347bff0b70c4bE"}
!1947 = !{!1948}
!1948 = distinct !{!1948, !1946, !"_ZN4core3ptr10swap_chunk17hb16347bff0b70c4bE: %y"}
!1949 = !{!1950}
!1950 = distinct !{!1950, !1946, !"_ZN4core3ptr10swap_chunk17hb16347bff0b70c4bE: %x:It1"}
!1951 = !{!1952}
!1952 = distinct !{!1952, !1946, !"_ZN4core3ptr10swap_chunk17hb16347bff0b70c4bE: %y:It1"}
!1953 = !{!1954}
!1954 = distinct !{!1954, !1946, !"_ZN4core3ptr10swap_chunk17hb16347bff0b70c4bE: %x:It2"}
!1955 = !{!1956}
!1956 = distinct !{!1956, !1946, !"_ZN4core3ptr10swap_chunk17hb16347bff0b70c4bE: %y:It2"}
!1957 = !{!1958, !1960, !1961, !1963}
!1958 = distinct !{!1958, !1959, !"_ZN9hashbrown3raw13RawTableInner14prepare_resize28_$u7b$$u7b$closure$u7d$$u7d$17h7bf2e7aaf9c0aad2E: %_1"}
!1959 = distinct !{!1959, !"_ZN9hashbrown3raw13RawTableInner14prepare_resize28_$u7b$$u7b$closure$u7d$$u7d$17h7bf2e7aaf9c0aad2E"}
!1960 = distinct !{!1960, !1959, !"_ZN9hashbrown3raw13RawTableInner14prepare_resize28_$u7b$$u7b$closure$u7d$$u7d$17h7bf2e7aaf9c0aad2E: %self_"}
!1961 = distinct !{!1961, !1962, !"_ZN88_$LT$hashbrown..scopeguard..ScopeGuard$LT$T$C$F$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h54f130f6b1d0bafbE: %self"}
!1962 = distinct !{!1962, !"_ZN88_$LT$hashbrown..scopeguard..ScopeGuard$LT$T$C$F$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h54f130f6b1d0bafbE"}
!1963 = distinct !{!1963, !1964, !"_ZN4core3ptr196drop_in_place$LT$hashbrown..scopeguard..ScopeGuard$LT$hashbrown..raw..RawTableInner$C$hashbrown..raw..RawTableInner..prepare_resize$LT$alloc..alloc..Global$GT$..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$17hcf038268e302d4f2E: %_1"}
!1964 = distinct !{!1964, !"_ZN4core3ptr196drop_in_place$LT$hashbrown..scopeguard..ScopeGuard$LT$hashbrown..raw..RawTableInner$C$hashbrown..raw..RawTableInner..prepare_resize$LT$alloc..alloc..Global$GT$..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$17hcf038268e302d4f2E"}
!1965 = !{!1966, !1968}
!1966 = distinct !{!1966, !1967, !"_ZN4core9core_arch3x864sse215_mm_loadu_si12817hacd8816d606c91f7E: %_0"}
!1967 = distinct !{!1967, !"_ZN4core9core_arch3x864sse215_mm_loadu_si12817hacd8816d606c91f7E"}
!1968 = distinct !{!1968, !1969, !"_ZN9hashbrown3raw13RawTableInner17find_insert_index17hefd304a0a25f3240E: %self"}
!1969 = distinct !{!1969, !"_ZN9hashbrown3raw13RawTableInner17find_insert_index17hefd304a0a25f3240E"}
!1970 = !{!1971, !1968}
!1971 = distinct !{!1971, !1972, !"_ZN9hashbrown3raw13RawTableInner16fix_insert_index17h49a70ae2ff162b38E: %self"}
!1972 = distinct !{!1972, !"_ZN9hashbrown3raw13RawTableInner16fix_insert_index17h49a70ae2ff162b38E"}
!1973 = !{!1974, !1971, !1968}
!1974 = distinct !{!1974, !1975, !"_ZN4core9core_arch3x864sse214_mm_load_si12817h5ca5bf15f399be86E: %_0"}
!1975 = distinct !{!1975, !"_ZN4core9core_arch3x864sse214_mm_load_si12817h5ca5bf15f399be86E"}
!1976 = !{!1977}
!1977 = distinct !{!1977, !1978, !"_ZN9hashbrown3raw13RawTableInner15rehash_in_place17haee1e6799e4651aaE: %self"}
!1978 = distinct !{!1978, !"_ZN9hashbrown3raw13RawTableInner15rehash_in_place17haee1e6799e4651aaE"}
!1979 = !{!1980}
!1980 = distinct !{!1980, !1981, !"_ZN9hashbrown3raw13RawTableInner23prepare_rehash_in_place17hcbd491505aa60c12E: %self"}
!1981 = distinct !{!1981, !"_ZN9hashbrown3raw13RawTableInner23prepare_rehash_in_place17hcbd491505aa60c12E"}
!1982 = !{!1980, !1977}
!1983 = !{!1984, !1980, !1977, !1905}
!1984 = distinct !{!1984, !1985, !"_ZN4core9core_arch3x864sse214_mm_load_si12817h5ca5bf15f399be86E: %_0"}
!1985 = distinct !{!1985, !"_ZN4core9core_arch3x864sse214_mm_load_si12817h5ca5bf15f399be86E"}
!1986 = !{!1987, !1980, !1977, !1905}
!1987 = distinct !{!1987, !1988, !"_ZN4core9core_arch3x864sse215_mm_store_si12817h0a8af9197e05ad46E: %a"}
!1988 = distinct !{!1988, !"_ZN4core9core_arch3x864sse215_mm_store_si12817h0a8af9197e05ad46E"}
!1989 = !{!1980, !1977, !1905}
!1990 = !{!1977, !1905}
!1991 = !{!1992, !1994, !1996}
!1992 = distinct !{!1992, !1993, !"_ZN4core4hash5impls51_$LT$impl$u20$core..hash..Hash$u20$for$u20$char$GT$4hash17h8c4e576ed484173fE: %self"}
!1993 = distinct !{!1993, !"_ZN4core4hash5impls51_$LT$impl$u20$core..hash..Hash$u20$for$u20$char$GT$4hash17h8c4e576ed484173fE"}
!1994 = distinct !{!1994, !1995, !"_ZN4core4hash11BuildHasher8hash_one17h405cf8b275c5e5e1E: argument 1"}
!1995 = distinct !{!1995, !"_ZN4core4hash11BuildHasher8hash_one17h405cf8b275c5e5e1E"}
!1996 = distinct !{!1996, !1997, !"_ZN9hashbrown3map11make_hasher28_$u7b$$u7b$closure$u7d$$u7d$17hd9a6aedae0b0a765E: %val"}
!1997 = distinct !{!1997, !"_ZN9hashbrown3map11make_hasher28_$u7b$$u7b$closure$u7d$$u7d$17hd9a6aedae0b0a765E"}
!1998 = !{!1999, !2000, !2002, !2003, !2004, !2005, !2007, !1977, !1905}
!1999 = distinct !{!1999, !1993, !"_ZN4core4hash5impls51_$LT$impl$u20$core..hash..Hash$u20$for$u20$char$GT$4hash17h8c4e576ed484173fE: %state"}
!2000 = distinct !{!2000, !2001, !"_ZN4core4hash5impls52_$LT$impl$u20$core..hash..Hash$u20$for$u20$$RF$T$GT$4hash17h66c7ffc742178686E: %self"}
!2001 = distinct !{!2001, !"_ZN4core4hash5impls52_$LT$impl$u20$core..hash..Hash$u20$for$u20$$RF$T$GT$4hash17h66c7ffc742178686E"}
!2002 = distinct !{!2002, !2001, !"_ZN4core4hash5impls52_$LT$impl$u20$core..hash..Hash$u20$for$u20$$RF$T$GT$4hash17h66c7ffc742178686E: %state"}
!2003 = distinct !{!2003, !1995, !"_ZN4core4hash11BuildHasher8hash_one17h405cf8b275c5e5e1E: %self"}
!2004 = distinct !{!2004, !1997, !"_ZN9hashbrown3map11make_hasher28_$u7b$$u7b$closure$u7d$$u7d$17hd9a6aedae0b0a765E: %_1"}
!2005 = distinct !{!2005, !2006, !"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$14reserve_rehash28_$u7b$$u7b$closure$u7d$$u7d$17h3ffc554747371a62E: %_1"}
!2006 = distinct !{!2006, !"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$14reserve_rehash28_$u7b$$u7b$closure$u7d$$u7d$17h3ffc554747371a62E"}
!2007 = distinct !{!2007, !2006, !"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$14reserve_rehash28_$u7b$$u7b$closure$u7d$$u7d$17h3ffc554747371a62E: %table"}
!2008 = !{!2009, !2011, !1977, !1905}
!2009 = distinct !{!2009, !2010, !"_ZN4core9core_arch3x864sse215_mm_loadu_si12817hacd8816d606c91f7E: %_0"}
!2010 = distinct !{!2010, !"_ZN4core9core_arch3x864sse215_mm_loadu_si12817hacd8816d606c91f7E"}
!2011 = distinct !{!2011, !2012, !"_ZN9hashbrown3raw13RawTableInner17find_insert_index17hefd304a0a25f3240E: %self"}
!2012 = distinct !{!2012, !"_ZN9hashbrown3raw13RawTableInner17find_insert_index17hefd304a0a25f3240E"}
!2013 = !{!2014, !2011, !1977, !1905}
!2014 = distinct !{!2014, !2015, !"_ZN9hashbrown3raw13RawTableInner16fix_insert_index17h49a70ae2ff162b38E: %self"}
!2015 = distinct !{!2015, !"_ZN9hashbrown3raw13RawTableInner16fix_insert_index17h49a70ae2ff162b38E"}
!2016 = !{!2017, !2014, !2011, !1977, !1905}
!2017 = distinct !{!2017, !2018, !"_ZN4core9core_arch3x864sse214_mm_load_si12817h5ca5bf15f399be86E: %_0"}
!2018 = distinct !{!2018, !"_ZN4core9core_arch3x864sse214_mm_load_si12817h5ca5bf15f399be86E"}
!2019 = !{!2020}
!2020 = distinct !{!2020, !2021, !"_ZN4core3ptr10swap_chunk17hc0eef21745a33698E: %x"}
!2021 = distinct !{!2021, !"_ZN4core3ptr10swap_chunk17hc0eef21745a33698E"}
!2022 = !{!2023}
!2023 = distinct !{!2023, !2021, !"_ZN4core3ptr10swap_chunk17hc0eef21745a33698E: %y"}
!2024 = !{!2023, !1977, !1905}
!2025 = !{!2020, !1977, !1905}
!2026 = !{!2027}
!2027 = distinct !{!2027, !2028, !"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$13erase_no_drop17h92401ca7795c8600E: %self"}
!2028 = distinct !{!2028, !"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$13erase_no_drop17h92401ca7795c8600E"}
!2029 = !{!2030}
!2030 = distinct !{!2030, !2028, !"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$13erase_no_drop17h92401ca7795c8600E: %item"}
!2031 = !{!2032}
!2032 = distinct !{!2032, !2033, !"_ZN9hashbrown3raw13RawTableInner5erase17hbb0723b963416dfbE: %self"}
!2033 = distinct !{!2033, !"_ZN9hashbrown3raw13RawTableInner5erase17hbb0723b963416dfbE"}
!2034 = !{!2032, !2027}
!2035 = !{!2036, !2032, !2027, !2030}
!2036 = distinct !{!2036, !2037, !"_ZN4core9core_arch3x864sse215_mm_loadu_si12817hacd8816d606c91f7E: %_0"}
!2037 = distinct !{!2037, !"_ZN4core9core_arch3x864sse215_mm_loadu_si12817hacd8816d606c91f7E"}
!2038 = !{!2039, !2032, !2027, !2030}
!2039 = distinct !{!2039, !2040, !"_ZN4core9core_arch3x864sse215_mm_loadu_si12817hacd8816d606c91f7E: %_0"}
!2040 = distinct !{!2040, !"_ZN4core9core_arch3x864sse215_mm_loadu_si12817hacd8816d606c91f7E"}
!2041 = !{!2032, !2027, !2030}
!2042 = !{!2043}
!2043 = distinct !{!2043, !2044, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!2044 = distinct !{!2044, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!2045 = !{!2046}
!2046 = distinct !{!2046, !2044, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!2047 = !{!2048}
!2048 = distinct !{!2048, !2049, !"_ZN3std11collections4hash3set16HashSet$LT$T$GT$3new17h262ff5ef219f3cecE: %_0"}
!2049 = distinct !{!2049, !"_ZN3std11collections4hash3set16HashSet$LT$T$GT$3new17h262ff5ef219f3cecE"}
!2050 = !{!2051, !2053, !2055, !2057, !2059, !2060, !2062, !2048}
!2051 = distinct !{!2051, !2052, !"_ZN3std3sys12thread_local6native4lazy20Storage$LT$T$C$D$GT$11get_or_init17h5409bd098d5d7504E: %i"}
!2052 = distinct !{!2052, !"_ZN3std3sys12thread_local6native4lazy20Storage$LT$T$C$D$GT$11get_or_init17h5409bd098d5d7504E"}
!2053 = distinct !{!2053, !2054, !"_ZN3std4hash6random11RandomState3new4KEYS29_$u7b$$u7b$constant$u7d$$u7d$28_$u7b$$u7b$closure$u7d$$u7d$17h8ca9e071f0930868E: %__rust_std_internal_init"}
!2054 = distinct !{!2054, !"_ZN3std4hash6random11RandomState3new4KEYS29_$u7b$$u7b$constant$u7d$$u7d$28_$u7b$$u7b$closure$u7d$$u7d$17h8ca9e071f0930868E"}
!2055 = distinct !{!2055, !2056, !"_ZN4core3ops8function6FnOnce9call_once17h754dc77a8ea850c3E: argument 0"}
!2056 = distinct !{!2056, !"_ZN4core3ops8function6FnOnce9call_once17h754dc77a8ea850c3E"}
!2057 = distinct !{!2057, !2058, !"_ZN3std6thread5local17LocalKey$LT$T$GT$8try_with17h6d3208ed701a165aE: %_0"}
!2058 = distinct !{!2058, !"_ZN3std6thread5local17LocalKey$LT$T$GT$8try_with17h6d3208ed701a165aE"}
!2059 = distinct !{!2059, !2058, !"_ZN3std6thread5local17LocalKey$LT$T$GT$8try_with17h6d3208ed701a165aE: %self"}
!2060 = distinct !{!2060, !2061, !"_ZN3std6thread5local17LocalKey$LT$T$GT$4with17h0683d3cbc6ca50f6E: %self"}
!2061 = distinct !{!2061, !"_ZN3std6thread5local17LocalKey$LT$T$GT$4with17h0683d3cbc6ca50f6E"}
!2062 = distinct !{!2062, !2063, !"_ZN87_$LT$hashbrown..map..HashMap$LT$K$C$V$C$S$C$A$GT$$u20$as$u20$core..default..Default$GT$7default17h0d99390d06b31d86E: %_0"}
!2063 = distinct !{!2063, !"_ZN87_$LT$hashbrown..map..HashMap$LT$K$C$V$C$S$C$A$GT$$u20$as$u20$core..default..Default$GT$7default17h0d99390d06b31d86E"}
!2064 = !{!2065, !2057, !2059, !2060, !2062, !2048}
!2065 = distinct !{!2065, !2066, !"_ZN3std3sys12thread_local6native4lazy20Storage$LT$T$C$D$GT$16get_or_init_slow17hb2b447367241d6bdE: argument 0"}
!2066 = distinct !{!2066, !"_ZN3std3sys12thread_local6native4lazy20Storage$LT$T$C$D$GT$16get_or_init_slow17hb2b447367241d6bdE"}
!2067 = !{!2057, !2059, !2060, !2062, !2048}
!2068 = !{!2069, !2071}
!2069 = distinct !{!2069, !2070, !"_ZN5alloc6string6String6as_str17h5d0f4124dd88b637E: %self"}
!2070 = distinct !{!2070, !"_ZN5alloc6string6String6as_str17h5d0f4124dd88b637E"}
!2071 = distinct !{!2071, !2072, !"_ZN65_$LT$alloc..string..String$u20$as$u20$core..ops..deref..Deref$GT$5deref17hf2dd8c0f474e3d11E: %self"}
!2072 = distinct !{!2072, !"_ZN65_$LT$alloc..string..String$u20$as$u20$core..ops..deref..Deref$GT$5deref17hf2dd8c0f474e3d11E"}
!2073 = !{!2074, !2076}
!2074 = distinct !{!2074, !2075, !"_ZN4core3str11validations15next_code_point17h6c00bea8f8c66228E: %bytes"}
!2075 = distinct !{!2075, !"_ZN4core3str11validations15next_code_point17h6c00bea8f8c66228E"}
!2076 = distinct !{!2076, !2077, !"_ZN81_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hfb982107525a3c91E: %self"}
!2077 = distinct !{!2077, !"_ZN81_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hfb982107525a3c91E"}
!2078 = !{!2079}
!2079 = distinct !{!2079, !2080, !"_ZN5alloc6string6String3len17hc147619d2ad1db0cE: %self"}
!2080 = distinct !{!2080, !"_ZN5alloc6string6String3len17hc147619d2ad1db0cE"}
!2081 = !{!2082}
!2082 = distinct !{!2082, !2083, !"_ZN4core3ptr69drop_in_place$LT$std..collections..hash..set..HashSet$LT$char$GT$$GT$17ha9c0ec42ee0b1b82E: %_1"}
!2083 = distinct !{!2083, !"_ZN4core3ptr69drop_in_place$LT$std..collections..hash..set..HashSet$LT$char$GT$$GT$17ha9c0ec42ee0b1b82E"}
!2084 = !{!2085}
!2085 = distinct !{!2085, !2086, !"_ZN4core3ptr89drop_in_place$LT$hashbrown..set..HashSet$LT$char$C$std..hash..random..RandomState$GT$$GT$17h08dfc12decfe16f5E: %_1"}
!2086 = distinct !{!2086, !"_ZN4core3ptr89drop_in_place$LT$hashbrown..set..HashSet$LT$char$C$std..hash..random..RandomState$GT$$GT$17h08dfc12decfe16f5E"}
!2087 = !{!2088}
!2088 = distinct !{!2088, !2089, !"_ZN4core3ptr100drop_in_place$LT$hashbrown..map..HashMap$LT$char$C$$LP$$RP$$C$std..hash..random..RandomState$GT$$GT$17h3698db7583c17365E: %_1"}
!2089 = distinct !{!2089, !"_ZN4core3ptr100drop_in_place$LT$hashbrown..map..HashMap$LT$char$C$$LP$$RP$$C$std..hash..random..RandomState$GT$$GT$17h3698db7583c17365E"}
!2090 = !{!2091}
!2091 = distinct !{!2091, !2092, !"_ZN4core3ptr76drop_in_place$LT$hashbrown..raw..RawTable$LT$$LP$char$C$$LP$$RP$$RP$$GT$$GT$17h9396a9d3d766a832E: %_1"}
!2092 = distinct !{!2092, !"_ZN4core3ptr76drop_in_place$LT$hashbrown..raw..RawTable$LT$$LP$char$C$$LP$$RP$$RP$$GT$$GT$17h9396a9d3d766a832E"}
!2093 = !{!2094}
!2094 = distinct !{!2094, !2095, !"_ZN79_$LT$hashbrown..raw..RawTable$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hfdcf3a01044366e6E: %self"}
!2095 = distinct !{!2095, !"_ZN79_$LT$hashbrown..raw..RawTable$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hfdcf3a01044366e6E"}
!2096 = !{!2097}
!2097 = distinct !{!2097, !2098, !"_ZN9hashbrown3raw13RawTableInner16drop_inner_table17hbdff987bad8a68daE: %self"}
!2098 = distinct !{!2098, !"_ZN9hashbrown3raw13RawTableInner16drop_inner_table17hbdff987bad8a68daE"}
!2099 = !{!2097, !2094, !2091, !2088, !2085, !2082}
!2100 = !{!2101}
!2101 = distinct !{!2101, !2102, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by17hd2eab5b061d5039dE: %self.0"}
!2102 = distinct !{!2102, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by17hd2eab5b061d5039dE"}
!2103 = !{!2104, !2106, !2101}
!2104 = distinct !{!2104, !2105, !"_ZN5alloc5slice11stable_sort17h08e4bd759891b613E: %v.0"}
!2105 = distinct !{!2105, !"_ZN5alloc5slice11stable_sort17h08e4bd759891b613E"}
!2106 = distinct !{!2106, !2105, !"_ZN5alloc5slice11stable_sort17h08e4bd759891b613E: argument 1"}

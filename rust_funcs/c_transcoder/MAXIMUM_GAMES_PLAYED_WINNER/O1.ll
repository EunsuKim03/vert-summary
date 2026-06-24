; ModuleID = 'MAXIMUM_GAMES_PLAYED_WINNER_emit.5057029d9f47eee9-cgu.0'
source_filename = "MAXIMUM_GAMES_PLAYED_WINNER_emit.5057029d9f47eee9-cgu.0"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%"std::sys::thread_local::native::lazy::Storage<core::cell::Cell<(u64, u64)>, !>" = type { %"core::cell::UnsafeCell<core::mem::maybe_uninit::MaybeUninit<core::cell::Cell<(u64, u64)>>>", i8, [7 x i8] }
%"core::cell::UnsafeCell<core::mem::maybe_uninit::MaybeUninit<core::cell::Cell<(u64, u64)>>>" = type { %"core::mem::maybe_uninit::MaybeUninit<core::cell::Cell<(u64, u64)>>" }
%"core::mem::maybe_uninit::MaybeUninit<core::cell::Cell<(u64, u64)>>" = type { [2 x i64] }
%"core::mem::maybe_uninit::MaybeUninit<[u8; 8]>" = type { [8 x i8] }

@alloc_d0776666182ad032bd1011cf266e2f3a = private unnamed_addr constant [16 x i8] c"\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF", align 16
@anon.7a906972c673e89958c2969de4f8eb3e.0 = private unnamed_addr constant <{ ptr, [24 x i8] }> <{ ptr @alloc_d0776666182ad032bd1011cf266e2f3a, [24 x i8] zeroinitializer }>, align 8
@"_ZN3std4hash6random11RandomState3new4KEYS29_$u7b$$u7b$constant$u7d$$u7d$28_$u7b$$u7b$closure$u7d$$u7d$23__RUST_STD_INTERNAL_VAL17h80d8e1569169cac2E" = external thread_local local_unnamed_addr global %"std::sys::thread_local::native::lazy::Storage<core::cell::Cell<(u64, u64)>, !>"
@alloc_8a597ff4ccc06c64324d5229815cbf3e = private unnamed_addr constant [110 x i8] c"/root/.rustup/toolchains/stable-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/std/src/thread/local.rs\00", align 1
@alloc_0266abf3f1ee48cd58e43ed1227693a2 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_8a597ff4ccc06c64324d5229815cbf3e, [16 x i8] c"m\00\00\00\00\00\00\00\DF\01\00\00\19\00\00\00" }>, align 8
@alloc_d1084648e479974e70c9329824bf76f9 = private unnamed_addr constant [9 x i8] c"mid > len", align 1
@alloc_e8e5fd9f509afcb950667480b3e3e42a = private unnamed_addr constant [126 x i8] c"/root/.rustup/toolchains/stable-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/slice/sort/stable/quicksort.rs\00", align 1
@alloc_58d434a1e795f965ef82c8e9c5db822a = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_e8e5fd9f509afcb950667480b3e3e42a, [16 x i8] c"}\00\00\00\00\00\00\00J\00\00\00\1F\00\00\00" }>, align 8
@alloc_0766b232215672ee1bd2195fdb153938 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_e8e5fd9f509afcb950667480b3e3e42a, [16 x i8] c"}\00\00\00\00\00\00\00D\00\00\00\17\00\00\00" }>, align 8
@alloc_1299f51153252b87bec55f9d8eb96ef9 = private unnamed_addr constant [107 x i8] c"/root/es/vert/vert/rust_funcs/c_transcoder/MAXIMUM_GAMES_PLAYED_WINNER/MAXIMUM_GAMES_PLAYED_WINNER_emit.rs\00", align 1
@alloc_259fc6b6cbee0e44773f194fbbadbd4a = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_1299f51153252b87bec55f9d8eb96ef9, [16 x i8] c"j\00\00\00\00\00\00\00\1B\00\00\00\1B\00\00\00" }>, align 8
@alloc_70a99ab46af915d240a8ccdd1b306a78 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_1299f51153252b87bec55f9d8eb96ef9, [16 x i8] c"j\00\00\00\00\00\00\00\1B\00\00\007\00\00\00" }>, align 8
@alloc_92d6528911e7980a8c7d58abe4cdd652 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_1299f51153252b87bec55f9d8eb96ef9, [16 x i8] c"j\00\00\00\00\00\00\00\1C\00\00\00&\00\00\00" }>, align 8
@alloc_848a8850280af43732882781277670ff = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_1299f51153252b87bec55f9d8eb96ef9, [16 x i8] c"j\00\00\00\00\00\00\00\1C\00\00\00B\00\00\00" }>, align 8

; std::collections::hash::map::HashMap<K,V,S>::get
; Function Attrs: inlinehint nofree norecurse nosync nounwind nonlazybind memory(read, inaccessiblemem: readwrite) uwtable
define internal fastcc noundef align 4 dereferenceable_or_null(4) ptr @"_ZN3std11collections4hash3map24HashMap$LT$K$C$V$C$S$GT$3get17h1abbfc889363e7eeE"(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(48) %self, ptr noalias noundef nonnull readonly align 4 captures(none) dereferenceable(4) %k) unnamed_addr #0 personality ptr @rust_eh_personality {
start:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6)
  %0 = getelementptr inbounds nuw i8, ptr %self, i64 24
  %_12.i = load i64, ptr %0, align 8, !alias.scope !3, !noalias !6, !noundef !8
  %_3.i = icmp eq i64 %_12.i, 0
  br i1 %_3.i, label %"_ZN9hashbrown3map28HashMap$LT$K$C$V$C$S$C$A$GT$3get17hde3daca946872274E.exit", label %bb2.i

bb2.i:                                            ; preds = %start
  %hash_builder.i = getelementptr inbounds nuw i8, ptr %self, i64 32
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12)
  %key0.i.i.i = load i64, ptr %hash_builder.i, align 8, !alias.scope !14, !noalias !17, !noundef !8
  %1 = getelementptr inbounds nuw i8, ptr %self, i64 40
  %key1.i.i.i = load i64, ptr %1, align 8, !alias.scope !14, !noalias !17, !noundef !8
  %_3.i.i.i.i = load i32, ptr %k, align 4, !alias.scope !19, !noalias !22, !noundef !8
  %2 = zext i32 %_3.i.i.i.i to i64
  %3 = xor i64 %key0.i.i.i, 7816392313619706465
  %4 = xor i64 %key1.i.i.i, 7237128888997146477
  %5 = xor i64 %key0.i.i.i, 8317987319222330741
  %b.i.i.i.i = or disjoint i64 %2, 288230376151711744
  %6 = xor i64 %key1.i.i.i, %b.i.i.i.i
  %7 = xor i64 %6, 8387220255154660723
  %_2.i.i.i.i.i = add i64 %4, %5
  %_5.i.i.i.i.i = add i64 %7, %3
  %8 = tail call noundef i64 @llvm.fshl.i64(i64 %4, i64 %4, i64 13)
  %9 = xor i64 %8, %_2.i.i.i.i.i
  %10 = tail call noundef i64 @llvm.fshl.i64(i64 %7, i64 %7, i64 16)
  %11 = xor i64 %10, %_5.i.i.i.i.i
  %12 = tail call noundef i64 @llvm.fshl.i64(i64 %_2.i.i.i.i.i, i64 %_2.i.i.i.i.i, i64 32)
  %_16.i.i.i.i.i = add i64 %_5.i.i.i.i.i, %9
  %_19.i.i.i.i.i = add i64 %11, %12
  %13 = tail call noundef i64 @llvm.fshl.i64(i64 %9, i64 %9, i64 17)
  %14 = xor i64 %_16.i.i.i.i.i, %13
  %15 = tail call noundef i64 @llvm.fshl.i64(i64 %11, i64 %11, i64 21)
  %16 = xor i64 %15, %_19.i.i.i.i.i
  %17 = tail call noundef i64 @llvm.fshl.i64(i64 %_16.i.i.i.i.i, i64 %_16.i.i.i.i.i, i64 32)
  %18 = xor i64 %_19.i.i.i.i.i, %b.i.i.i.i
  %19 = xor i64 %17, 255
  %_2.i3.i.i.i.i = add i64 %18, %14
  %_5.i6.i.i.i.i = add i64 %16, %19
  %20 = tail call noundef i64 @llvm.fshl.i64(i64 %14, i64 %14, i64 13)
  %21 = xor i64 %_2.i3.i.i.i.i, %20
  %22 = tail call noundef i64 @llvm.fshl.i64(i64 %16, i64 %16, i64 16)
  %23 = xor i64 %22, %_5.i6.i.i.i.i
  %24 = tail call noundef i64 @llvm.fshl.i64(i64 %_2.i3.i.i.i.i, i64 %_2.i3.i.i.i.i, i64 32)
  %_16.i7.i.i.i.i = add i64 %21, %_5.i6.i.i.i.i
  %_19.i8.i.i.i.i = add i64 %23, %24
  %25 = tail call noundef i64 @llvm.fshl.i64(i64 %21, i64 %21, i64 17)
  %26 = xor i64 %_16.i7.i.i.i.i, %25
  %27 = tail call noundef i64 @llvm.fshl.i64(i64 %23, i64 %23, i64 21)
  %28 = xor i64 %27, %_19.i8.i.i.i.i
  %29 = tail call noundef i64 @llvm.fshl.i64(i64 %_16.i7.i.i.i.i, i64 %_16.i7.i.i.i.i, i64 32)
  %_30.i.i.i.i.i = add i64 %26, %_19.i8.i.i.i.i
  %_33.i.i.i.i.i = add i64 %28, %29
  %30 = tail call noundef i64 @llvm.fshl.i64(i64 %26, i64 %26, i64 13)
  %31 = xor i64 %30, %_30.i.i.i.i.i
  %32 = tail call noundef i64 @llvm.fshl.i64(i64 %28, i64 %28, i64 16)
  %33 = xor i64 %32, %_33.i.i.i.i.i
  %34 = tail call noundef i64 @llvm.fshl.i64(i64 %_30.i.i.i.i.i, i64 %_30.i.i.i.i.i, i64 32)
  %_44.i.i.i.i.i = add i64 %31, %_33.i.i.i.i.i
  %_47.i.i.i.i.i = add i64 %33, %34
  %35 = tail call noundef i64 @llvm.fshl.i64(i64 %31, i64 %31, i64 17)
  %36 = xor i64 %35, %_44.i.i.i.i.i
  %37 = tail call noundef i64 @llvm.fshl.i64(i64 %33, i64 %33, i64 21)
  %38 = xor i64 %37, %_47.i.i.i.i.i
  %39 = tail call noundef i64 @llvm.fshl.i64(i64 %_44.i.i.i.i.i, i64 %_44.i.i.i.i.i, i64 32)
  %_58.i.i.i.i.i = add i64 %36, %_47.i.i.i.i.i
  %_61.i.i.i.i.i = add i64 %38, %39
  %40 = tail call noundef i64 @llvm.fshl.i64(i64 %36, i64 %36, i64 13)
  %41 = xor i64 %40, %_58.i.i.i.i.i
  %42 = tail call noundef i64 @llvm.fshl.i64(i64 %38, i64 %38, i64 16)
  %43 = xor i64 %42, %_61.i.i.i.i.i
  %_72.i.i.i.i.i = add i64 %41, %_61.i.i.i.i.i
  %44 = tail call noundef i64 @llvm.fshl.i64(i64 %41, i64 %41, i64 17)
  %45 = tail call noundef i64 @llvm.fshl.i64(i64 %43, i64 %43, i64 21)
  %46 = tail call noundef i64 @llvm.fshl.i64(i64 %_72.i.i.i.i.i, i64 %_72.i.i.i.i.i, i64 32)
  %47 = xor i64 %45, %44
  %48 = xor i64 %47, %46
  %_0.i.i.i.i = xor i64 %48, %_72.i.i.i.i.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !27)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !30)
  %_21.i.i.i = lshr i64 %_0.i.i.i.i, 57
  %tag_hash.i.i.i = trunc nuw nsw i64 %_21.i.i.i to i8
  %49 = getelementptr inbounds nuw i8, ptr %self, i64 8
  %_26.i.i.i = load i64, ptr %49, align 8, !alias.scope !33, !noalias !34, !noundef !8
  %_29.i.i.i = load ptr, ptr %self, align 8, !alias.scope !33, !noalias !34, !nonnull !8, !noundef !8
  %.sroa.0.0.vec.insert.i.i.i = insertelement <16 x i8> poison, i8 %tag_hash.i.i.i, i64 0
  %.sroa.0.15.vec.insert.i.i.i = shufflevector <16 x i8> %.sroa.0.0.vec.insert.i.i.i, <16 x i8> poison, <16 x i32> zeroinitializer
  %invariant.gep.i.i = getelementptr i8, ptr %_29.i.i.i, i64 -8
  br label %bb1.i.i.i

bb1.i.i.i:                                        ; preds = %bb20.i.i.i, %bb2.i
  %probe_seq.sroa.9.0.i.i.i = phi i64 [ 0, %bb2.i ], [ %56, %bb20.i.i.i ]
  %hash.pn.i.i = phi i64 [ %_0.i.i.i.i, %bb2.i ], [ %57, %bb20.i.i.i ]
  %probe_seq.sroa.0.0.i.i.i = and i64 %hash.pn.i.i, %_26.i.i.i
  %_27.i.i.i = getelementptr inbounds nuw i8, ptr %_29.i.i.i, i64 %probe_seq.sroa.0.0.i.i.i
  %dst.sroa.0.0.copyload.i17.i.i = load <16 x i8>, ptr %_27.i.i.i, align 1, !noalias !36
  %50 = icmp eq <16 x i8> %dst.sroa.0.0.copyload.i17.i.i, %.sroa.0.15.vec.insert.i.i.i
  %51 = bitcast <16 x i1> %50 to i16
  %.not.i.not23.i.i = icmp eq i16 %51, 0
  br i1 %.not.i.not23.i.i, label %bb11.i.i.i, label %bb10.i.i.i

bb10.i.i.i:                                       ; preds = %bb1.i.i.i, %bb17.i.i.i
  %iter.sroa.0.0.i24.i.i = phi i16 [ %_51.i.i.i, %bb17.i.i.i ], [ %51, %bb1.i.i.i ]
  %52 = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %iter.sroa.0.0.i24.i.i, i1 true)
  %_42.i.i.i = zext nneg i16 %52 to i64
  %_13.i.i.i = add i64 %probe_seq.sroa.0.0.i.i.i, %_42.i.i.i
  %index5.i.i.i = and i64 %_13.i.i.i, %_26.i.i.i
  %_18.i.i.i = sub nsw i64 0, %index5.i.i.i
  %gep.i.i = getelementptr { i32, i32 }, ptr %invariant.gep.i.i, i64 %_18.i.i.i
  %_4.i.i.i.i.i.i = load i32, ptr %gep.i.i, align 4, !alias.scope !39, !noalias !46, !noundef !8
  %_0.i.i.i.i.i.i = icmp eq i32 %_3.i.i.i.i, %_4.i.i.i.i.i.i
  br i1 %_0.i.i.i.i.i.i, label %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$4find17h8ccb979eb3c8b261E.exit.i", label %bb17.i.i.i, !prof !52

bb11.i.i.i:                                       ; preds = %bb17.i.i.i, %bb1.i.i.i
  %53 = icmp eq <16 x i8> %dst.sroa.0.0.copyload.i17.i.i, splat (i8 -1)
  %54 = bitcast <16 x i1> %53 to i16
  %b8.not.i.i.i = icmp eq i16 %54, 0
  br i1 %b8.not.i.i.i, label %bb20.i.i.i, label %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$4find17h8ccb979eb3c8b261E.exit.i", !prof !53

bb17.i.i.i:                                       ; preds = %bb10.i.i.i
  %55 = add i16 %iter.sroa.0.0.i24.i.i, -1
  %_51.i.i.i = and i16 %55, %iter.sroa.0.0.i24.i.i
  %.not.i.not.i.i = icmp eq i16 %_51.i.i.i, 0
  br i1 %.not.i.not.i.i, label %bb11.i.i.i, label %bb10.i.i.i

bb20.i.i.i:                                       ; preds = %bb11.i.i.i
  %56 = add i64 %probe_seq.sroa.9.0.i.i.i, 16
  %57 = add i64 %probe_seq.sroa.0.0.i.i.i, %56
  br label %bb1.i.i.i

"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$4find17h8ccb979eb3c8b261E.exit.i": ; preds = %bb11.i.i.i, %bb10.i.i.i
  %.not.i.not20.i.i = phi i1 [ false, %bb10.i.i.i ], [ true, %bb11.i.i.i ]
  %_0.sroa.3.0.i.i.i = phi i64 [ %index5.i.i.i, %bb10.i.i.i ], [ undef, %bb11.i.i.i ]
  %_23.i.i = sub nsw i64 0, %_0.sroa.3.0.i.i.i
  %58 = getelementptr inbounds { i32, i32 }, ptr %_29.i.i.i, i64 %_23.i.i
  %_0.sroa.0.0.i.i = select i1 %.not.i.not20.i.i, ptr null, ptr %58
  %v.i = getelementptr inbounds i8, ptr %_0.sroa.0.0.i.i, i64 -4
  %_0.sroa.0.0.i = select i1 %.not.i.not20.i.i, ptr null, ptr %v.i
  br label %"_ZN9hashbrown3map28HashMap$LT$K$C$V$C$S$C$A$GT$3get17hde3daca946872274E.exit"

"_ZN9hashbrown3map28HashMap$LT$K$C$V$C$S$C$A$GT$3get17hde3daca946872274E.exit": ; preds = %start, %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$4find17h8ccb979eb3c8b261E.exit.i"
  %_0.sroa.0.1.i = phi ptr [ %_0.sroa.0.0.i, %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$4find17h8ccb979eb3c8b261E.exit.i" ], [ null, %start ]
  ret ptr %_0.sroa.0.1.i
}

; std::sys::thread_local::native::lazy::Storage<T,D>::get_or_init_slow
; Function Attrs: cold nonlazybind uwtable
define noundef nonnull ptr @"_ZN3std3sys12thread_local6native4lazy20Storage$LT$T$C$D$GT$16get_or_init_slow17h2164e0f9696029b0E"(ptr noundef nonnull returned align 8 captures(ret: address, provenance) %self, ptr noalias noundef align 8 captures(address_is_null) dereferenceable_or_null(24) %0) unnamed_addr #1 {
start:
  %_26 = getelementptr inbounds nuw i8, ptr %self, i64 16
  %1 = load i8, ptr %_26, align 8, !range !54, !noundef !8
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
define { i64, i64 } @"_ZN3std6thread5local17LocalKey$LT$T$GT$4with17h8b0e374463f7b52fE"(ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %self) unnamed_addr #2 personality ptr @rust_eh_personality {
start:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !55)
  %_7.i = load ptr, ptr %self, align 8, !alias.scope !55, !noalias !58, !nonnull !8, !noundef !8
  %self3.i = tail call noundef ptr %_7.i(ptr noalias noundef align 8 dereferenceable_or_null(24) null), !noalias !60
  %_13.i = icmp eq ptr %self3.i, null
  br i1 %_13.i, label %"_ZN3std6thread5local17LocalKey$LT$T$GT$8try_with17hbaadd1d0225c0a95E.exit", label %bb8.i

bb8.i:                                            ; preds = %start
  %_9.i.i = load i64, ptr %self3.i, align 8, !noalias !60, !noundef !8
  %0 = getelementptr inbounds nuw i8, ptr %self3.i, i64 8
  %_10.i.i = load i64, ptr %0, align 8, !noalias !60, !noundef !8
  %_4.i.i = add i64 %_9.i.i, 1
  store i64 %_4.i.i, ptr %self3.i, align 8, !noalias !60
  br label %"_ZN3std6thread5local17LocalKey$LT$T$GT$8try_with17hbaadd1d0225c0a95E.exit"

"_ZN3std6thread5local17LocalKey$LT$T$GT$8try_with17hbaadd1d0225c0a95E.exit": ; preds = %start, %bb8.i
  %_3.sroa.4.0 = phi i64 [ undef, %start ], [ %_9.i.i, %bb8.i ]
  %_3.sroa.6.0 = phi i64 [ undef, %start ], [ %_10.i.i, %bb8.i ]
  br i1 %_13.i, label %bb3, label %bb4, !prof !53

bb3:                                              ; preds = %"_ZN3std6thread5local17LocalKey$LT$T$GT$8try_with17hbaadd1d0225c0a95E.exit"
; call std::thread::local::panic_access_error
  tail call void @_ZN3std6thread5local18panic_access_error17h889b72f0e071fac8E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_0266abf3f1ee48cd58e43ed1227693a2) #29
  unreachable

bb4:                                              ; preds = %"_ZN3std6thread5local17LocalKey$LT$T$GT$8try_with17hbaadd1d0225c0a95E.exit"
  %1 = insertvalue { i64, i64 } poison, i64 %_3.sroa.4.0, 0
  %2 = insertvalue { i64, i64 } %1, i64 %_3.sroa.6.0, 1
  ret { i64, i64 } %2
}

; core::ptr::swap_nonoverlapping_bytes::swap_nonoverlapping_chunks
; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable
define void @_ZN4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunks17hefac4d4a551e3f39E(ptr noundef captures(none) %x, ptr noundef captures(none) %y, i64 noundef range(i64 1, 0) %chunks) unnamed_addr #3 {
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !61)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !64)
  %_3.sroa.0.0.copyload.i.epil = load i64, ptr %_11.epil, align 1, !alias.scope !61, !noalias !64
  %_4.sroa.0.0.copyload.i.epil = load i64, ptr %_13.epil, align 1, !alias.scope !64, !noalias !61
  store i64 %_4.sroa.0.0.copyload.i.epil, ptr %_11.epil, align 1, !alias.scope !61, !noalias !64
  store i64 %_3.sroa.0.0.copyload.i.epil, ptr %_13.epil, align 1, !alias.scope !64, !noalias !61
  br label %bb4

bb4:                                              ; preds = %bb4.unr-lcssa, %bb3.epil
  ret void

bb3:                                              ; preds = %bb3, %start.new
  %iter.sroa.0.02 = phi i64 [ 0, %start.new ], [ %_18.1, %bb3 ]
  %niter = phi i64 [ 0, %start.new ], [ %niter.next.1, %bb3 ]
  %_18 = or disjoint i64 %iter.sroa.0.02, 1
  %_11 = getelementptr inbounds nuw %"core::mem::maybe_uninit::MaybeUninit<[u8; 8]>", ptr %x, i64 %iter.sroa.0.02
  %_13 = getelementptr inbounds nuw %"core::mem::maybe_uninit::MaybeUninit<[u8; 8]>", ptr %y, i64 %iter.sroa.0.02
  tail call void @llvm.experimental.noalias.scope.decl(metadata !61)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !64)
  %_3.sroa.0.0.copyload.i = load i64, ptr %_11, align 1, !alias.scope !61, !noalias !64
  %_4.sroa.0.0.copyload.i = load i64, ptr %_13, align 1, !alias.scope !64, !noalias !61
  store i64 %_4.sroa.0.0.copyload.i, ptr %_11, align 1, !alias.scope !61, !noalias !64
  store i64 %_3.sroa.0.0.copyload.i, ptr %_13, align 1, !alias.scope !64, !noalias !61
  %_18.1 = add nuw i64 %iter.sroa.0.02, 2
  %_11.1 = getelementptr inbounds nuw %"core::mem::maybe_uninit::MaybeUninit<[u8; 8]>", ptr %x, i64 %_18
  %_13.1 = getelementptr inbounds nuw %"core::mem::maybe_uninit::MaybeUninit<[u8; 8]>", ptr %y, i64 %_18
  tail call void @llvm.experimental.noalias.scope.decl(metadata !66)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !68)
  %_3.sroa.0.0.copyload.i.1 = load i64, ptr %_11.1, align 1, !alias.scope !66, !noalias !68
  %_4.sroa.0.0.copyload.i.1 = load i64, ptr %_13.1, align 1, !alias.scope !68, !noalias !66
  store i64 %_4.sroa.0.0.copyload.i.1, ptr %_11.1, align 1, !alias.scope !66, !noalias !68
  store i64 %_3.sroa.0.0.copyload.i.1, ptr %_13.1, align 1, !alias.scope !68, !noalias !66
  %niter.next.1 = add i64 %niter, 2
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %bb4.unr-lcssa, label %bb3
}

; core::hash::BuildHasher::hash_one
; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define noundef i64 @_ZN4core4hash11BuildHasher8hash_one17h1855698abe03691bE(ptr noalias noundef readonly align 8 captures(none) dereferenceable(16) %self, ptr noalias noundef readonly align 4 captures(none) dereferenceable(4) %0) unnamed_addr #4 personality ptr @rust_eh_personality {
start:
  %key0.i = load i64, ptr %self, align 8, !alias.scope !70, !noalias !73, !noundef !8
  %1 = getelementptr inbounds nuw i8, ptr %self, i64 8
  %key1.i = load i64, ptr %1, align 8, !alias.scope !70, !noalias !73, !noundef !8
  %_3.i.i = load i32, ptr %0, align 4, !alias.scope !75, !noalias !78, !noundef !8
  %2 = zext i32 %_3.i.i to i64
  %3 = xor i64 %key0.i, 7816392313619706465
  %4 = xor i64 %key1.i, 7237128888997146477
  %5 = xor i64 %key0.i, 8317987319222330741
  %b.i.i = or disjoint i64 %2, 288230376151711744
  %6 = xor i64 %key1.i, %b.i.i
  %7 = xor i64 %6, 8387220255154660723
  %_2.i.i.i = add i64 %4, %5
  %_5.i.i.i = add i64 %7, %3
  %8 = tail call noundef i64 @llvm.fshl.i64(i64 %4, i64 %4, i64 13)
  %9 = xor i64 %8, %_2.i.i.i
  %10 = tail call noundef i64 @llvm.fshl.i64(i64 %7, i64 %7, i64 16)
  %11 = xor i64 %10, %_5.i.i.i
  %12 = tail call noundef i64 @llvm.fshl.i64(i64 %_2.i.i.i, i64 %_2.i.i.i, i64 32)
  %_16.i.i.i = add i64 %_5.i.i.i, %9
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
define noundef nonnull ptr @_ZN4core5slice4sort6shared5pivot11median3_rec17h312ca1c06fa58cc3E(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %n, ptr noalias noundef align 8 dereferenceable(8) %is_less) unnamed_addr #5 {
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
  %4 = tail call noundef ptr @_ZN4core5slice4sort6shared5pivot11median3_rec17h312ca1c06fa58cc3E(ptr noundef %0, ptr noundef %_10, ptr noundef %_13, i64 noundef %n84, ptr noalias noundef align 8 dereferenceable(8) %is_less)
  %_16 = getelementptr inbounds nuw i32, ptr %1, i64 %count
  %_18 = getelementptr inbounds nuw i32, ptr %1, i64 %count1
; call core::slice::sort::shared::pivot::median3_rec
  %5 = tail call noundef ptr @_ZN4core5slice4sort6shared5pivot11median3_rec17h312ca1c06fa58cc3E(ptr noundef %1, ptr noundef %_16, ptr noundef %_18, i64 noundef %n84, ptr noalias noundef align 8 dereferenceable(8) %is_less)
  %_20 = getelementptr inbounds nuw i32, ptr %2, i64 %count
  %_22 = getelementptr inbounds nuw i32, ptr %2, i64 %count1
; call core::slice::sort::shared::pivot::median3_rec
  %6 = tail call noundef ptr @_ZN4core5slice4sort6shared5pivot11median3_rec17h312ca1c06fa58cc3E(ptr noundef %2, ptr noundef %_20, ptr noundef %_22, i64 noundef %n84, ptr noalias noundef align 8 dereferenceable(8) %is_less)
  br label %bb6

bb6:                                              ; preds = %start, %bb1
  %c.sroa.0.0 = phi ptr [ %6, %bb1 ], [ %2, %start ]
  %b.sroa.0.0 = phi ptr [ %5, %bb1 ], [ %1, %start ]
  %a.sroa.0.0 = phi ptr [ %4, %bb1 ], [ %0, %start ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !83)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !86)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !88), !noalias !91
  tail call void @llvm.experimental.noalias.scope.decl(metadata !94), !noalias !91
  tail call void @llvm.experimental.noalias.scope.decl(metadata !96), !noalias !91
  tail call void @llvm.experimental.noalias.scope.decl(metadata !99), !noalias !91
  tail call void @llvm.experimental.noalias.scope.decl(metadata !101), !noalias !91
  tail call void @llvm.experimental.noalias.scope.decl(metadata !104), !noalias !91
  %_3.i.i.i.i = load i32, ptr %a.sroa.0.0, align 4, !alias.scope !106, !noalias !107, !noundef !8
  %_4.i.i.i.i = load i32, ptr %b.sroa.0.0, align 4, !alias.scope !108, !noalias !109, !noundef !8
  %_0.i = icmp slt i32 %_3.i.i.i.i, %_4.i.i.i.i
  %_4.i.i.i.i6 = load i32, ptr %c.sroa.0.0, align 4, !alias.scope !110, !noalias !119, !noundef !8
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
define void @_ZN4core5slice4sort6shared9smallsort11insert_tail17hd66b5724334f6768E(ptr noundef readnone captures(address) %begin, ptr noundef captures(address) %tail, ptr noalias noundef readnone align 8 captures(none) dereferenceable(8) %is_less) unnamed_addr #3 personality ptr @rust_eh_personality {
start:
  %0 = getelementptr inbounds i8, ptr %tail, i64 -4
  tail call void @llvm.experimental.noalias.scope.decl(metadata !124)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !127)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !129)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !132)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !134)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !137)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !139)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !142)
  %_3.i.i.i.i = load i32, ptr %tail, align 4, !alias.scope !144, !noalias !145, !noundef !8
  %_4.i.i.i.i = load i32, ptr %0, align 4, !alias.scope !145, !noalias !144, !noundef !8
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
  %_4.i.i.i.i2 = load i32, ptr %2, align 4, !alias.scope !146, !noalias !155, !noundef !8
  %_0.i3 = icmp slt i32 %_3.i.i.i.i, %_4.i.i.i.i2
  br i1 %_0.i3, label %bb4, label %bb10

bb10:                                             ; preds = %bb6, %bb4
  store i32 %_3.i.i.i.i, ptr %sift.sroa.0.0, align 4, !noalias !160
  br label %bb12
}

; core::slice::sort::shared::smallsort::sort4_stable
; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable
define void @_ZN4core5slice4sort6shared9smallsort12sort4_stable17h144ecddaed5d1972E(ptr noundef readonly captures(none) %v_base, ptr noundef writeonly captures(none) initializes((0, 16)) %dst, ptr noalias noundef readnone align 8 captures(none) dereferenceable(8) %is_less) unnamed_addr #6 personality ptr @rust_eh_personality {
start:
  %_7 = getelementptr inbounds nuw i8, ptr %v_base, i64 4
  tail call void @llvm.experimental.noalias.scope.decl(metadata !165)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !168)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !170)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !173)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !175)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !178)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !180)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !183)
  %_3.i.i.i.i = load i32, ptr %_7, align 4, !alias.scope !185, !noalias !186, !noundef !8
  %_4.i.i.i.i = load i32, ptr %v_base, align 4, !alias.scope !186, !noalias !185, !noundef !8
  %_0.i = icmp slt i32 %_3.i.i.i.i, %_4.i.i.i.i
  %_12 = getelementptr inbounds nuw i8, ptr %v_base, i64 12
  %_14 = getelementptr inbounds nuw i8, ptr %v_base, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !187)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !190)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !192)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !195)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !197)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !200)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !202)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !205)
  %_3.i.i.i.i7 = load i32, ptr %_12, align 4, !alias.scope !207, !noalias !208, !noundef !8
  %_4.i.i.i.i8 = load i32, ptr %_14, align 4, !alias.scope !208, !noalias !207, !noundef !8
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !209)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !212)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !214)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !217)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !219)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !222)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !224)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !227)
  %_3.i.i.i.i10 = load i32, ptr %c, align 4, !alias.scope !229, !noalias !230, !noundef !8
  %_4.i.i.i.i11 = load i32, ptr %a, align 4, !alias.scope !230, !noalias !229, !noundef !8
  %_0.i12 = icmp slt i32 %_3.i.i.i.i10, %_4.i.i.i.i11
  tail call void @llvm.experimental.noalias.scope.decl(metadata !231)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !234)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !236)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !239)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !241)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !244)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !246)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !249)
  %_3.i.i.i.i13 = load i32, ptr %d, align 4, !alias.scope !251, !noalias !252, !noundef !8
  %_4.i.i.i.i14 = load i32, ptr %b, align 4, !alias.scope !252, !noalias !251, !noundef !8
  %_0.i15 = icmp slt i32 %_3.i.i.i.i13, %_4.i.i.i.i14
  %0 = select i1 %_0.i12, ptr %c, ptr %a, !unpredictable !8
  %1 = select i1 %_0.i15, ptr %c, ptr %b, !unpredictable !8
  %2 = select i1 %_0.i12, ptr %a, ptr %1, !unpredictable !8
  %3 = select i1 %_0.i12, ptr %b, ptr %c, !unpredictable !8
  %4 = select i1 %_0.i15, ptr %d, ptr %3, !unpredictable !8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !253)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !256)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !258)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !261)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !263)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !266)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !268)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !271)
  %_3.i.i.i.i16 = load i32, ptr %4, align 4, !alias.scope !273, !noalias !274, !noundef !8
  %_4.i.i.i.i17 = load i32, ptr %2, align 4, !alias.scope !274, !noalias !273, !noundef !8
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
define void @_ZN4core5slice4sort6shared9smallsort12sort8_stable17h279c1d0b1c14e64fE(ptr noundef readonly captures(none) %v_base, ptr noundef writeonly captures(none) initializes((0, 32)) %dst, ptr noundef captures(address) initializes((0, 32)) %scratch_base, ptr noalias readnone align 8 captures(none) %is_less) unnamed_addr #2 personality ptr @rust_eh_personality {
start:
  %_7.i = getelementptr inbounds nuw i8, ptr %v_base, i64 4
  tail call void @llvm.experimental.noalias.scope.decl(metadata !275)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !278)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !280)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !283)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !285)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !288)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !290)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !293)
  %_3.i.i.i.i.i = load i32, ptr %_7.i, align 4, !alias.scope !295, !noalias !296, !noundef !8
  %_4.i.i.i.i.i = load i32, ptr %v_base, align 4, !alias.scope !296, !noalias !295, !noundef !8
  %_0.i.i = icmp slt i32 %_3.i.i.i.i.i, %_4.i.i.i.i.i
  %_12.i = getelementptr inbounds nuw i8, ptr %v_base, i64 12
  %_14.i = getelementptr inbounds nuw i8, ptr %v_base, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !297)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !300)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !302)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !305)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !307)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !310)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !312)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !315)
  %_3.i.i.i.i7.i = load i32, ptr %_12.i, align 4, !alias.scope !317, !noalias !318, !noundef !8
  %_4.i.i.i.i8.i = load i32, ptr %_14.i, align 4, !alias.scope !318, !noalias !317, !noundef !8
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !319)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !322)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !324)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !327)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !329)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !332)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !334)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !337)
  %_3.i.i.i.i10.i = load i32, ptr %c.i, align 4, !alias.scope !339, !noalias !340, !noundef !8
  %_4.i.i.i.i11.i = load i32, ptr %a.i, align 4, !alias.scope !340, !noalias !339, !noundef !8
  %_0.i12.i = icmp slt i32 %_3.i.i.i.i10.i, %_4.i.i.i.i11.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !341)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !344)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !346)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !349)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !351)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !354)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !356)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !359)
  %_3.i.i.i.i13.i = load i32, ptr %d.i, align 4, !alias.scope !361, !noalias !362, !noundef !8
  %_4.i.i.i.i14.i = load i32, ptr %b.i, align 4, !alias.scope !362, !noalias !361, !noundef !8
  %_0.i15.i = icmp slt i32 %_3.i.i.i.i13.i, %_4.i.i.i.i14.i
  %0 = select i1 %_0.i12.i, ptr %c.i, ptr %a.i, !unpredictable !8
  %1 = select i1 %_0.i15.i, ptr %c.i, ptr %b.i, !unpredictable !8
  %2 = select i1 %_0.i12.i, ptr %a.i, ptr %1, !unpredictable !8
  %3 = select i1 %_0.i12.i, ptr %b.i, ptr %c.i, !unpredictable !8
  %4 = select i1 %_0.i15.i, ptr %d.i, ptr %3, !unpredictable !8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !363)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !366)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !368)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !371)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !373)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !376)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !378)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !381)
  %_3.i.i.i.i16.i = load i32, ptr %4, align 4, !alias.scope !383, !noalias !384, !noundef !8
  %_4.i.i.i.i17.i = load i32, ptr %2, align 4, !alias.scope !384, !noalias !383, !noundef !8
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !385)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !388)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !390)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !393)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !395)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !398)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !400)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !403)
  %_3.i.i.i.i.i2 = load i32, ptr %_7.i1, align 4, !alias.scope !405, !noalias !406, !noundef !8
  %_4.i.i.i.i.i3 = load i32, ptr %_9, align 4, !alias.scope !406, !noalias !405, !noundef !8
  %_0.i.i4 = icmp slt i32 %_3.i.i.i.i.i2, %_4.i.i.i.i.i3
  %_12.i5 = getelementptr inbounds nuw i8, ptr %v_base, i64 28
  %_14.i6 = getelementptr inbounds nuw i8, ptr %v_base, i64 24
  tail call void @llvm.experimental.noalias.scope.decl(metadata !407)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !410)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !412)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !415)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !417)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !420)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !422)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !425)
  %_3.i.i.i.i7.i7 = load i32, ptr %_12.i5, align 4, !alias.scope !427, !noalias !428, !noundef !8
  %_4.i.i.i.i8.i8 = load i32, ptr %_14.i6, align 4, !alias.scope !428, !noalias !427, !noundef !8
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !429)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !432)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !434)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !437)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !439)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !442)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !444)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !447)
  %_3.i.i.i.i10.i19 = load i32, ptr %c.i16, align 4, !alias.scope !449, !noalias !450, !noundef !8
  %_4.i.i.i.i11.i20 = load i32, ptr %a.i11, align 4, !alias.scope !450, !noalias !449, !noundef !8
  %_0.i12.i21 = icmp slt i32 %_3.i.i.i.i10.i19, %_4.i.i.i.i11.i20
  tail call void @llvm.experimental.noalias.scope.decl(metadata !451)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !454)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !456)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !459)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !461)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !464)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !466)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !469)
  %_3.i.i.i.i13.i22 = load i32, ptr %d.i18, align 4, !alias.scope !471, !noalias !472, !noundef !8
  %_4.i.i.i.i14.i23 = load i32, ptr %b.i14, align 4, !alias.scope !472, !noalias !471, !noundef !8
  %_0.i15.i24 = icmp slt i32 %_3.i.i.i.i13.i22, %_4.i.i.i.i14.i23
  %10 = select i1 %_0.i12.i21, ptr %c.i16, ptr %a.i11, !unpredictable !8
  %11 = select i1 %_0.i15.i24, ptr %c.i16, ptr %b.i14, !unpredictable !8
  %12 = select i1 %_0.i12.i21, ptr %a.i11, ptr %11, !unpredictable !8
  %13 = select i1 %_0.i12.i21, ptr %b.i14, ptr %c.i16, !unpredictable !8
  %14 = select i1 %_0.i15.i24, ptr %d.i18, ptr %13, !unpredictable !8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !473)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !476)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !478)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !481)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !483)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !486)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !488)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !491)
  %_3.i.i.i.i16.i25 = load i32, ptr %14, align 4, !alias.scope !493, !noalias !494, !noundef !8
  %_4.i.i.i.i17.i26 = load i32, ptr %12, align 4, !alias.scope !494, !noalias !493, !noundef !8
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !495)
  %20 = getelementptr i8, ptr %scratch_base, i64 12
  %21 = getelementptr inbounds nuw i8, ptr %scratch_base, i64 28
  %22 = getelementptr inbounds nuw i8, ptr %dst, i64 28
  tail call void @llvm.experimental.noalias.scope.decl(metadata !498)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !501)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !503), !noalias !506
  tail call void @llvm.experimental.noalias.scope.decl(metadata !509), !noalias !506
  tail call void @llvm.experimental.noalias.scope.decl(metadata !511), !noalias !506
  tail call void @llvm.experimental.noalias.scope.decl(metadata !514), !noalias !506
  tail call void @llvm.experimental.noalias.scope.decl(metadata !516), !noalias !506
  tail call void @llvm.experimental.noalias.scope.decl(metadata !519), !noalias !506
  %_3.i.i.i.i.i36 = load i32, ptr %_10, align 4, !alias.scope !521, !noalias !522, !noundef !8
  %_4.i.i.i.i.i37 = load i32, ptr %scratch_base, align 4, !alias.scope !523, !noalias !524, !noundef !8
  %_0.i.i38 = icmp slt i32 %_3.i.i.i.i.i36, %_4.i.i.i.i.i37
  %is_l.i18.i = xor i1 %_0.i.i38, true
  %23 = tail call i32 @llvm.smin.i32(i32 %_3.i.i.i.i.i36, i32 %_4.i.i.i.i.i37)
  store i32 %23, ptr %dst, align 4, !noalias !525
  %count.i.i = zext i1 %_0.i.i38 to i64
  %_12.i.i = getelementptr inbounds nuw i32, ptr %_10, i64 %count.i.i
  %count2.i.i = zext i1 %is_l.i18.i to i64
  %_14.i.i = getelementptr inbounds nuw i32, ptr %scratch_base, i64 %count2.i.i
  %_16.i.i = getelementptr inbounds nuw i8, ptr %dst, i64 4
  tail call void @llvm.experimental.noalias.scope.decl(metadata !527)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !530)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !532), !noalias !535
  tail call void @llvm.experimental.noalias.scope.decl(metadata !538), !noalias !535
  tail call void @llvm.experimental.noalias.scope.decl(metadata !540), !noalias !535
  tail call void @llvm.experimental.noalias.scope.decl(metadata !543), !noalias !535
  tail call void @llvm.experimental.noalias.scope.decl(metadata !545), !noalias !535
  tail call void @llvm.experimental.noalias.scope.decl(metadata !548), !noalias !535
  %_3.i.i.i.i19.i = load i32, ptr %21, align 4, !alias.scope !550, !noalias !551, !noundef !8
  %_4.i.i.i.i20.i = load i32, ptr %20, align 4, !alias.scope !552, !noalias !553, !noundef !8
  %_0.i21.i = icmp slt i32 %_3.i.i.i.i19.i, %_4.i.i.i.i20.i
  %is_l.i.i = xor i1 %_0.i21.i, true
  %24 = tail call i32 @llvm.smax.i32(i32 %_3.i.i.i.i19.i, i32 %_4.i.i.i.i20.i)
  store i32 %24, ptr %22, align 4, !noalias !554
  %count.neg.i.i = sext i1 %is_l.i.i to i64
  %25 = getelementptr i32, ptr %21, i64 %count.neg.i.i
  %count3.neg.i.i = sext i1 %_0.i21.i to i64
  %26 = getelementptr i32, ptr %20, i64 %count3.neg.i.i
  %27 = getelementptr inbounds nuw i8, ptr %dst, i64 24
  tail call void @llvm.experimental.noalias.scope.decl(metadata !556)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !558)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !560), !noalias !506
  tail call void @llvm.experimental.noalias.scope.decl(metadata !562), !noalias !506
  tail call void @llvm.experimental.noalias.scope.decl(metadata !564), !noalias !506
  tail call void @llvm.experimental.noalias.scope.decl(metadata !566), !noalias !506
  tail call void @llvm.experimental.noalias.scope.decl(metadata !568), !noalias !506
  tail call void @llvm.experimental.noalias.scope.decl(metadata !570), !noalias !506
  %_3.i.i.i.i.i36.1 = load i32, ptr %_12.i.i, align 4, !alias.scope !572, !noalias !573, !noundef !8
  %_4.i.i.i.i.i37.1 = load i32, ptr %_14.i.i, align 4, !alias.scope !574, !noalias !575, !noundef !8
  %_0.i.i38.1 = icmp slt i32 %_3.i.i.i.i.i36.1, %_4.i.i.i.i.i37.1
  %is_l.i18.i.1 = xor i1 %_0.i.i38.1, true
  %28 = tail call i32 @llvm.smin.i32(i32 %_3.i.i.i.i.i36.1, i32 %_4.i.i.i.i.i37.1)
  store i32 %28, ptr %_16.i.i, align 4, !noalias !525
  %count.i.i.1 = zext i1 %_0.i.i38.1 to i64
  %_12.i.i.1 = getelementptr inbounds nuw i32, ptr %_12.i.i, i64 %count.i.i.1
  %count2.i.i.1 = zext i1 %is_l.i18.i.1 to i64
  %_14.i.i.1 = getelementptr inbounds nuw i32, ptr %_14.i.i, i64 %count2.i.i.1
  %_16.i.i.1 = getelementptr inbounds nuw i8, ptr %dst, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !576)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !578)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !580), !noalias !535
  tail call void @llvm.experimental.noalias.scope.decl(metadata !582), !noalias !535
  tail call void @llvm.experimental.noalias.scope.decl(metadata !584), !noalias !535
  tail call void @llvm.experimental.noalias.scope.decl(metadata !586), !noalias !535
  tail call void @llvm.experimental.noalias.scope.decl(metadata !588), !noalias !535
  tail call void @llvm.experimental.noalias.scope.decl(metadata !590), !noalias !535
  %_3.i.i.i.i19.i.1 = load i32, ptr %25, align 4, !alias.scope !592, !noalias !593, !noundef !8
  %_4.i.i.i.i20.i.1 = load i32, ptr %26, align 4, !alias.scope !594, !noalias !595, !noundef !8
  %_0.i21.i.1 = icmp slt i32 %_3.i.i.i.i19.i.1, %_4.i.i.i.i20.i.1
  %is_l.i.i.1 = xor i1 %_0.i21.i.1, true
  %29 = tail call i32 @llvm.smax.i32(i32 %_3.i.i.i.i19.i.1, i32 %_4.i.i.i.i20.i.1)
  store i32 %29, ptr %27, align 4, !noalias !554
  %count.neg.i.i.1 = sext i1 %is_l.i.i.1 to i64
  %30 = getelementptr i32, ptr %25, i64 %count.neg.i.i.1
  %count3.neg.i.i.1 = sext i1 %_0.i21.i.1 to i64
  %31 = getelementptr i32, ptr %26, i64 %count3.neg.i.i.1
  %32 = getelementptr inbounds nuw i8, ptr %dst, i64 20
  tail call void @llvm.experimental.noalias.scope.decl(metadata !596)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !598)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !600), !noalias !506
  tail call void @llvm.experimental.noalias.scope.decl(metadata !602), !noalias !506
  tail call void @llvm.experimental.noalias.scope.decl(metadata !604), !noalias !506
  tail call void @llvm.experimental.noalias.scope.decl(metadata !606), !noalias !506
  tail call void @llvm.experimental.noalias.scope.decl(metadata !608), !noalias !506
  tail call void @llvm.experimental.noalias.scope.decl(metadata !610), !noalias !506
  %_3.i.i.i.i.i36.2 = load i32, ptr %_12.i.i.1, align 4, !alias.scope !612, !noalias !613, !noundef !8
  %_4.i.i.i.i.i37.2 = load i32, ptr %_14.i.i.1, align 4, !alias.scope !614, !noalias !615, !noundef !8
  %_0.i.i38.2 = icmp slt i32 %_3.i.i.i.i.i36.2, %_4.i.i.i.i.i37.2
  %is_l.i18.i.2 = xor i1 %_0.i.i38.2, true
  %33 = tail call i32 @llvm.smin.i32(i32 %_3.i.i.i.i.i36.2, i32 %_4.i.i.i.i.i37.2)
  store i32 %33, ptr %_16.i.i.1, align 4, !noalias !525
  %count.i.i.2 = zext i1 %_0.i.i38.2 to i64
  %_12.i.i.2 = getelementptr inbounds nuw i32, ptr %_12.i.i.1, i64 %count.i.i.2
  %count2.i.i.2 = zext i1 %is_l.i18.i.2 to i64
  %_14.i.i.2 = getelementptr inbounds nuw i32, ptr %_14.i.i.1, i64 %count2.i.i.2
  %_16.i.i.2 = getelementptr inbounds nuw i8, ptr %dst, i64 12
  tail call void @llvm.experimental.noalias.scope.decl(metadata !616)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !618)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !620), !noalias !535
  tail call void @llvm.experimental.noalias.scope.decl(metadata !622), !noalias !535
  tail call void @llvm.experimental.noalias.scope.decl(metadata !624), !noalias !535
  tail call void @llvm.experimental.noalias.scope.decl(metadata !626), !noalias !535
  tail call void @llvm.experimental.noalias.scope.decl(metadata !628), !noalias !535
  tail call void @llvm.experimental.noalias.scope.decl(metadata !630), !noalias !535
  %_3.i.i.i.i19.i.2 = load i32, ptr %30, align 4, !alias.scope !632, !noalias !633, !noundef !8
  %_4.i.i.i.i20.i.2 = load i32, ptr %31, align 4, !alias.scope !634, !noalias !635, !noundef !8
  %_0.i21.i.2 = icmp slt i32 %_3.i.i.i.i19.i.2, %_4.i.i.i.i20.i.2
  %is_l.i.i.2 = xor i1 %_0.i21.i.2, true
  %34 = tail call i32 @llvm.smax.i32(i32 %_3.i.i.i.i19.i.2, i32 %_4.i.i.i.i20.i.2)
  store i32 %34, ptr %32, align 4, !noalias !554
  %count.neg.i.i.2 = sext i1 %is_l.i.i.2 to i64
  %35 = getelementptr i32, ptr %30, i64 %count.neg.i.i.2
  %count3.neg.i.i.2 = sext i1 %_0.i21.i.2 to i64
  %36 = getelementptr i32, ptr %31, i64 %count3.neg.i.i.2
  %37 = getelementptr inbounds nuw i8, ptr %dst, i64 16
  tail call void @llvm.experimental.noalias.scope.decl(metadata !636)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !638)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !640), !noalias !506
  tail call void @llvm.experimental.noalias.scope.decl(metadata !642), !noalias !506
  tail call void @llvm.experimental.noalias.scope.decl(metadata !644), !noalias !506
  tail call void @llvm.experimental.noalias.scope.decl(metadata !646), !noalias !506
  tail call void @llvm.experimental.noalias.scope.decl(metadata !648), !noalias !506
  tail call void @llvm.experimental.noalias.scope.decl(metadata !650), !noalias !506
  %_3.i.i.i.i.i36.3 = load i32, ptr %_12.i.i.2, align 4, !alias.scope !652, !noalias !653, !noundef !8
  %_4.i.i.i.i.i37.3 = load i32, ptr %_14.i.i.2, align 4, !alias.scope !654, !noalias !655, !noundef !8
  %_0.i.i38.3 = icmp slt i32 %_3.i.i.i.i.i36.3, %_4.i.i.i.i.i37.3
  %is_l.i18.i.3 = xor i1 %_0.i.i38.3, true
  %38 = tail call i32 @llvm.smin.i32(i32 %_3.i.i.i.i.i36.3, i32 %_4.i.i.i.i.i37.3)
  store i32 %38, ptr %_16.i.i.2, align 4, !noalias !525
  %count.i.i.3 = zext i1 %_0.i.i38.3 to i64
  %_12.i.i.3 = getelementptr inbounds nuw i32, ptr %_12.i.i.2, i64 %count.i.i.3
  %count2.i.i.3 = zext i1 %is_l.i18.i.3 to i64
  %_14.i.i.3 = getelementptr inbounds nuw i32, ptr %_14.i.i.2, i64 %count2.i.i.3
  tail call void @llvm.experimental.noalias.scope.decl(metadata !656)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !658)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !660), !noalias !535
  tail call void @llvm.experimental.noalias.scope.decl(metadata !662), !noalias !535
  tail call void @llvm.experimental.noalias.scope.decl(metadata !664), !noalias !535
  tail call void @llvm.experimental.noalias.scope.decl(metadata !666), !noalias !535
  tail call void @llvm.experimental.noalias.scope.decl(metadata !668), !noalias !535
  tail call void @llvm.experimental.noalias.scope.decl(metadata !670), !noalias !535
  %_3.i.i.i.i19.i.3 = load i32, ptr %35, align 4, !alias.scope !672, !noalias !673, !noundef !8
  %_4.i.i.i.i20.i.3 = load i32, ptr %36, align 4, !alias.scope !674, !noalias !675, !noundef !8
  %_0.i21.i.3 = icmp slt i32 %_3.i.i.i.i19.i.3, %_4.i.i.i.i20.i.3
  %is_l.i.i.3 = xor i1 %_0.i21.i.3, true
  %39 = tail call i32 @llvm.smax.i32(i32 %_3.i.i.i.i19.i.3, i32 %_4.i.i.i.i20.i.3)
  store i32 %39, ptr %37, align 4, !noalias !554
  %count.neg.i.i.3 = sext i1 %is_l.i.i.3 to i64
  %40 = getelementptr i32, ptr %35, i64 %count.neg.i.i.3
  %count3.neg.i.i.3 = sext i1 %_0.i21.i.3 to i64
  %41 = getelementptr i32, ptr %36, i64 %count3.neg.i.i.3
  %42 = getelementptr i8, ptr %41, i64 4
  %43 = getelementptr i8, ptr %40, i64 4
  %_31.i = icmp ne ptr %_14.i.i.3, %42
  %_32.i = icmp ne ptr %_12.i.i.3, %43
  %or.cond.i = select i1 %_31.i, i1 true, i1 %_32.i
  br i1 %or.cond.i, label %bb13.i, label %_ZN4core5slice4sort6shared9smallsort19bidirectional_merge17ha5b44c109f16da34E.exit, !prof !676

bb13.i:                                           ; preds = %start
; call core::slice::sort::shared::smallsort::panic_on_ord_violation
  tail call void @_ZN4core5slice4sort6shared9smallsort22panic_on_ord_violation17hc77a22a2d50782cdE() #29, !noalias !495
  unreachable

_ZN4core5slice4sort6shared9smallsort19bidirectional_merge17ha5b44c109f16da34E.exit: ; preds = %start
  ret void
}

; core::slice::sort::shared::smallsort::bidirectional_merge
; Function Attrs: nonlazybind uwtable
define void @_ZN4core5slice4sort6shared9smallsort19bidirectional_merge17ha5b44c109f16da34E(ptr noalias noundef nonnull readonly align 4 captures(address) %v.0, i64 noundef range(i64 0, 2305843009213693952) %v.1, ptr noundef writeonly captures(none) %0, ptr noalias noundef readnone align 8 captures(none) dereferenceable(8) %is_less) unnamed_addr #2 {
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !677)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !680)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !682), !noalias !685
  tail call void @llvm.experimental.noalias.scope.decl(metadata !688), !noalias !685
  tail call void @llvm.experimental.noalias.scope.decl(metadata !690), !noalias !685
  tail call void @llvm.experimental.noalias.scope.decl(metadata !693), !noalias !685
  tail call void @llvm.experimental.noalias.scope.decl(metadata !695), !noalias !685
  tail call void @llvm.experimental.noalias.scope.decl(metadata !698), !noalias !685
  %_3.i.i.i.i = load i32, ptr %right.sroa.0.026, align 4, !alias.scope !700, !noalias !701, !noundef !8
  %_4.i.i.i.i = load i32, ptr %left.sroa.0.027, align 4, !alias.scope !702, !noalias !703, !noundef !8
  %_0.i = icmp slt i32 %_3.i.i.i.i, %_4.i.i.i.i
  %is_l.i18 = xor i1 %_0.i, true
  %7 = tail call i32 @llvm.smin.i32(i32 %_3.i.i.i.i, i32 %_4.i.i.i.i)
  store i32 %7, ptr %dst.sroa.0.029, align 4, !noalias !704
  %count.i = zext i1 %_0.i to i64
  %_12.i = getelementptr inbounds nuw i32, ptr %right.sroa.0.026, i64 %count.i
  %count2.i = zext i1 %is_l.i18 to i64
  %_14.i = getelementptr inbounds nuw i32, ptr %left.sroa.0.027, i64 %count2.i
  %_16.i = getelementptr inbounds nuw i8, ptr %dst.sroa.0.029, i64 4
  tail call void @llvm.experimental.noalias.scope.decl(metadata !706)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !709)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !711), !noalias !714
  tail call void @llvm.experimental.noalias.scope.decl(metadata !717), !noalias !714
  tail call void @llvm.experimental.noalias.scope.decl(metadata !719), !noalias !714
  tail call void @llvm.experimental.noalias.scope.decl(metadata !722), !noalias !714
  tail call void @llvm.experimental.noalias.scope.decl(metadata !724), !noalias !714
  tail call void @llvm.experimental.noalias.scope.decl(metadata !727), !noalias !714
  %_3.i.i.i.i19 = load i32, ptr %right_rev.sroa.0.024, align 4, !alias.scope !729, !noalias !730, !noundef !8
  %_4.i.i.i.i20 = load i32, ptr %left_rev.sroa.0.025, align 4, !alias.scope !731, !noalias !732, !noundef !8
  %_0.i21 = icmp slt i32 %_3.i.i.i.i19, %_4.i.i.i.i20
  %is_l.i = xor i1 %_0.i21, true
  %8 = tail call i32 @llvm.smax.i32(i32 %_3.i.i.i.i19, i32 %_4.i.i.i.i20)
  store i32 %8, ptr %dst_rev.sroa.0.023, align 4, !noalias !733
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
  br i1 %or.cond, label %bb13, label %bb14, !prof !676

bb14:                                             ; preds = %bb9
  ret void

bb13:                                             ; preds = %bb9
; call core::slice::sort::shared::smallsort::panic_on_ord_violation
  tail call void @_ZN4core5slice4sort6shared9smallsort22panic_on_ord_violation17hc77a22a2d50782cdE() #29
  unreachable
}

; core::slice::sort::shared::smallsort::insertion_sort_shift_left
; Function Attrs: nounwind nonlazybind memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable
define void @_ZN4core5slice4sort6shared9smallsort25insertion_sort_shift_left17h0491f74e5af5fb5dE(ptr noalias noundef nonnull align 4 captures(address) %v.0, i64 noundef range(i64 0, 2305843009213693952) %v.1, i64 noundef %offset, ptr noalias readnone align 8 captures(none) %is_less) unnamed_addr #7 personality ptr @rust_eh_personality {
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

bb7:                                              ; preds = %_ZN4core5slice4sort6shared9smallsort11insert_tail17hd66b5724334f6768E.exit, %bb3
  ret void

bb5:                                              ; preds = %bb5.preheader, %_ZN4core5slice4sort6shared9smallsort11insert_tail17hd66b5724334f6768E.exit
  %tail.sroa.0.02 = phi ptr [ %_15, %_ZN4core5slice4sort6shared9smallsort11insert_tail17hd66b5724334f6768E.exit ], [ %1, %bb5.preheader ]
  %2 = getelementptr inbounds i8, ptr %tail.sroa.0.02, i64 -4
  tail call void @llvm.experimental.noalias.scope.decl(metadata !735)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !738)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !740)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !743)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !745)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !748)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !750)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !753)
  %_3.i.i.i.i.i = load i32, ptr %tail.sroa.0.02, align 4, !alias.scope !755, !noalias !756, !noundef !8
  %_4.i.i.i.i.i = load i32, ptr %2, align 4, !alias.scope !756, !noalias !755, !noundef !8
  %_0.i.i = icmp slt i32 %_3.i.i.i.i.i, %_4.i.i.i.i.i
  br i1 %_0.i.i, label %bb4.i, label %_ZN4core5slice4sort6shared9smallsort11insert_tail17hd66b5724334f6768E.exit

bb4.i:                                            ; preds = %bb5, %bb6.i
  %gap_guard.sroa.5.0.i = phi ptr [ %sift.sroa.0.0.i, %bb6.i ], [ %tail.sroa.0.02, %bb5 ]
  %sift.sroa.0.0.i = phi ptr [ %4, %bb6.i ], [ %2, %bb5 ]
  %3 = load i32, ptr %sift.sroa.0.0.i, align 4
  store i32 %3, ptr %gap_guard.sroa.5.0.i, align 4
  %_18.i = icmp eq ptr %sift.sroa.0.0.i, %v.0
  br i1 %_18.i, label %bb10.i, label %bb6.i

bb6.i:                                            ; preds = %bb4.i
  %4 = getelementptr inbounds i8, ptr %sift.sroa.0.0.i, i64 -4
  %_4.i.i.i.i2.i = load i32, ptr %4, align 4, !alias.scope !757, !noalias !766, !noundef !8
  %_0.i3.i = icmp slt i32 %_3.i.i.i.i.i, %_4.i.i.i.i2.i
  br i1 %_0.i3.i, label %bb4.i, label %bb10.i

bb10.i:                                           ; preds = %bb6.i, %bb4.i
  store i32 %_3.i.i.i.i.i, ptr %sift.sroa.0.0.i, align 4, !noalias !771
  br label %_ZN4core5slice4sort6shared9smallsort11insert_tail17hd66b5724334f6768E.exit

_ZN4core5slice4sort6shared9smallsort11insert_tail17hd66b5724334f6768E.exit: ; preds = %bb5, %bb10.i
  %_15 = getelementptr inbounds nuw i8, ptr %tail.sroa.0.02, i64 4
  %_11.not = icmp eq ptr %_15, %v_end
  br i1 %_11.not, label %bb7, label %bb5
}

; core::slice::sort::shared::smallsort::small_sort_general_with_scratch
; Function Attrs: nonlazybind uwtable
define void @_ZN4core5slice4sort6shared9smallsort31small_sort_general_with_scratch17h5b12088cec49b9c1E(ptr noalias noundef nonnull align 4 captures(none) %v.0, i64 noundef range(i64 0, 2305843009213693952) %v.1, ptr noalias noundef nonnull align 4 captures(address) %scratch.0, i64 noundef range(i64 0, 2305843009213693952) %scratch.1, ptr noalias readnone align 8 captures(none) %is_less) unnamed_addr #2 personality ptr @rust_eh_personality {
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
  tail call void @_ZN4core5slice4sort6shared9smallsort12sort8_stable17h279c1d0b1c14e64fE(ptr noundef nonnull %v.0, ptr noundef nonnull %scratch.0, ptr noundef nonnull %_16, ptr noalias align 8 poison)
  %_18 = getelementptr inbounds nuw i32, ptr %v.0, i64 %len_div_211
  %_19 = getelementptr inbounds nuw i32, ptr %scratch.0, i64 %len_div_211
  %_20 = getelementptr inbounds nuw i8, ptr %_16, i64 32
; call core::slice::sort::shared::smallsort::sort8_stable
  tail call void @_ZN4core5slice4sort6shared9smallsort12sort8_stable17h279c1d0b1c14e64fE(ptr noundef nonnull %_18, ptr noundef nonnull %_19, ptr noundef nonnull %_20, ptr noalias align 8 poison)
  br label %bb15

bb10:                                             ; preds = %bb9
  %_7.i = getelementptr inbounds nuw i8, ptr %v.0, i64 4
  tail call void @llvm.experimental.noalias.scope.decl(metadata !776)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !779)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !781)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !784)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !786)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !789)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !791)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !794)
  %_3.i.i.i.i.i = load i32, ptr %_7.i, align 4, !alias.scope !796, !noalias !797, !noundef !8
  %_4.i.i.i.i.i = load i32, ptr %v.0, align 4, !alias.scope !797, !noalias !796, !noundef !8
  %_0.i.i = icmp slt i32 %_3.i.i.i.i.i, %_4.i.i.i.i.i
  %_12.i = getelementptr inbounds nuw i8, ptr %v.0, i64 12
  %_14.i = getelementptr inbounds nuw i8, ptr %v.0, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !798)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !801)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !803)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !806)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !808)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !811)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !813)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !816)
  %_3.i.i.i.i7.i = load i32, ptr %_12.i, align 4, !alias.scope !818, !noalias !819, !noundef !8
  %_4.i.i.i.i8.i = load i32, ptr %_14.i, align 4, !alias.scope !819, !noalias !818, !noundef !8
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !820)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !823)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !825)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !828)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !830)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !833)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !835)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !838)
  %_3.i.i.i.i10.i = load i32, ptr %c.i, align 4, !alias.scope !840, !noalias !841, !noundef !8
  %_4.i.i.i.i11.i = load i32, ptr %a.i, align 4, !alias.scope !841, !noalias !840, !noundef !8
  %_0.i12.i = icmp slt i32 %_3.i.i.i.i10.i, %_4.i.i.i.i11.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !842)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !845)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !847)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !850)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !852)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !855)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !857)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !860)
  %_3.i.i.i.i13.i = load i32, ptr %d.i, align 4, !alias.scope !862, !noalias !863, !noundef !8
  %_4.i.i.i.i14.i = load i32, ptr %b.i, align 4, !alias.scope !863, !noalias !862, !noundef !8
  %_0.i15.i = icmp slt i32 %_3.i.i.i.i13.i, %_4.i.i.i.i14.i
  %0 = select i1 %_0.i12.i, ptr %c.i, ptr %a.i, !unpredictable !8
  %1 = select i1 %_0.i15.i, ptr %c.i, ptr %b.i, !unpredictable !8
  %2 = select i1 %_0.i12.i, ptr %a.i, ptr %1, !unpredictable !8
  %3 = select i1 %_0.i12.i, ptr %b.i, ptr %c.i, !unpredictable !8
  %4 = select i1 %_0.i15.i, ptr %d.i, ptr %3, !unpredictable !8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !864)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !867)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !869)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !872)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !874)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !877)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !879)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !882)
  %_3.i.i.i.i16.i = load i32, ptr %4, align 4, !alias.scope !884, !noalias !885, !noundef !8
  %_4.i.i.i.i17.i = load i32, ptr %2, align 4, !alias.scope !885, !noalias !884, !noundef !8
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !886)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !889)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !891)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !894)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !896)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !899)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !901)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !904)
  %_3.i.i.i.i.i14 = load i32, ptr %_7.i13, align 4, !alias.scope !906, !noalias !907, !noundef !8
  %_4.i.i.i.i.i15 = load i32, ptr %_27, align 4, !alias.scope !907, !noalias !906, !noundef !8
  %_0.i.i16 = icmp slt i32 %_3.i.i.i.i.i14, %_4.i.i.i.i.i15
  %_12.i17 = getelementptr inbounds nuw i8, ptr %_27, i64 12
  %_14.i18 = getelementptr inbounds nuw i8, ptr %_27, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !908)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !911)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !913)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !916)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !918)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !921)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !923)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !926)
  %_3.i.i.i.i7.i19 = load i32, ptr %_12.i17, align 4, !alias.scope !928, !noalias !929, !noundef !8
  %_4.i.i.i.i8.i20 = load i32, ptr %_14.i18, align 4, !alias.scope !929, !noalias !928, !noundef !8
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !930)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !933)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !935)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !938)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !940)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !943)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !945)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !948)
  %_3.i.i.i.i10.i31 = load i32, ptr %c.i28, align 4, !alias.scope !950, !noalias !951, !noundef !8
  %_4.i.i.i.i11.i32 = load i32, ptr %a.i23, align 4, !alias.scope !951, !noalias !950, !noundef !8
  %_0.i12.i33 = icmp slt i32 %_3.i.i.i.i10.i31, %_4.i.i.i.i11.i32
  tail call void @llvm.experimental.noalias.scope.decl(metadata !952)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !955)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !957)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !960)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !962)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !965)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !967)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !970)
  %_3.i.i.i.i13.i34 = load i32, ptr %d.i30, align 4, !alias.scope !972, !noalias !973, !noundef !8
  %_4.i.i.i.i14.i35 = load i32, ptr %b.i26, align 4, !alias.scope !973, !noalias !972, !noundef !8
  %_0.i15.i36 = icmp slt i32 %_3.i.i.i.i13.i34, %_4.i.i.i.i14.i35
  %10 = select i1 %_0.i12.i33, ptr %c.i28, ptr %a.i23, !unpredictable !8
  %11 = select i1 %_0.i15.i36, ptr %c.i28, ptr %b.i26, !unpredictable !8
  %12 = select i1 %_0.i12.i33, ptr %a.i23, ptr %11, !unpredictable !8
  %13 = select i1 %_0.i12.i33, ptr %b.i26, ptr %c.i28, !unpredictable !8
  %14 = select i1 %_0.i15.i36, ptr %d.i30, ptr %13, !unpredictable !8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !974)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !977)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !979)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !982)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !984)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !987)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !989)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !992)
  %_3.i.i.i.i16.i37 = load i32, ptr %14, align 4, !alias.scope !994, !noalias !995, !noundef !8
  %_4.i.i.i.i17.i38 = load i32, ptr %12, align 4, !alias.scope !995, !noalias !994, !noundef !8
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
  br i1 %_5.not.i.not, label %"_ZN4core5array4iter10iter_inner78PolymorphicIter$LT$$u5b$core..mem..maybe_uninit..MaybeUninit$LT$T$GT$$u5d$$GT$4next17heebf9cc75c05c6b9E.exit", label %bb1.i

bb1.i:                                            ; preds = %bb16
  %_11.i = add nuw nsw i64 %24, 1
  store i64 %_11.i, ptr %iter, align 8, !alias.scope !996
  %_20.i = icmp ult i64 %24, 2
  tail call void @llvm.assume(i1 %_20.i)
  %self3.i = getelementptr inbounds nuw i64, ptr %_37.sroa.5.0.iter.sroa_idx, i64 %24
  %_15.i = load i64, ptr %self3.i, align 8, !alias.scope !996, !noundef !8
  br label %"_ZN4core5array4iter10iter_inner78PolymorphicIter$LT$$u5b$core..mem..maybe_uninit..MaybeUninit$LT$T$GT$$u5d$$GT$4next17heebf9cc75c05c6b9E.exit"

"_ZN4core5array4iter10iter_inner78PolymorphicIter$LT$$u5b$core..mem..maybe_uninit..MaybeUninit$LT$T$GT$$u5d$$GT$4next17heebf9cc75c05c6b9E.exit": ; preds = %bb16, %bb1.i
  %25 = phi i64 [ %_11.i, %bb1.i ], [ %24, %bb16 ]
  %_0.sroa.3.0.i = phi i64 [ %_15.i, %bb1.i ], [ undef, %bb16 ]
  br i1 %_5.not.i.not, label %bb19, label %bb18

bb18:                                             ; preds = %"_ZN4core5array4iter10iter_inner78PolymorphicIter$LT$$u5b$core..mem..maybe_uninit..MaybeUninit$LT$T$GT$$u5d$$GT$4next17heebf9cc75c05c6b9E.exit"
  %src5 = getelementptr inbounds nuw i32, ptr %v.0, i64 %_0.sroa.3.0.i
  %dst6 = getelementptr inbounds nuw i32, ptr %scratch.0, i64 %_0.sroa.3.0.i
  %_47 = icmp eq i64 %_0.sroa.3.0.i, 0
  %desired_len.sroa.0.0 = select i1 %_47, i64 %len_div_211, i64 %23
  %_8059 = icmp ult i64 %presorted_len.sroa.0.0, %desired_len.sroa.0.0
  br i1 %_8059, label %bb24, label %bb16.backedge

bb16.backedge:                                    ; preds = %_ZN4core5slice4sort6shared9smallsort11insert_tail17hd66b5724334f6768E.exit, %bb18
  br label %bb16

bb19:                                             ; preds = %"_ZN4core5array4iter10iter_inner78PolymorphicIter$LT$$u5b$core..mem..maybe_uninit..MaybeUninit$LT$T$GT$$u5d$$GT$4next17heebf9cc75c05c6b9E.exit"
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %iter)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !999)
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1002)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1005)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1007), !noalias !1010
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1013), !noalias !1010
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1015), !noalias !1010
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1018), !noalias !1010
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1020), !noalias !1010
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1023), !noalias !1010
  %_3.i.i.i.i.i49 = load i32, ptr %right.sroa.0.026.i, align 4, !alias.scope !1025, !noalias !1026, !noundef !8
  %_4.i.i.i.i.i50 = load i32, ptr %left.sroa.0.027.i, align 4, !alias.scope !1027, !noalias !1028, !noundef !8
  %_0.i.i51 = icmp slt i32 %_3.i.i.i.i.i49, %_4.i.i.i.i.i50
  %is_l.i18.i = xor i1 %_0.i.i51, true
  %32 = tail call i32 @llvm.smin.i32(i32 %_3.i.i.i.i.i49, i32 %_4.i.i.i.i.i50)
  store i32 %32, ptr %dst.sroa.0.029.i, align 4, !noalias !1029
  %count.i.i = zext i1 %_0.i.i51 to i64
  %_12.i.i = getelementptr inbounds nuw i32, ptr %right.sroa.0.026.i, i64 %count.i.i
  %count2.i.i = zext i1 %is_l.i18.i to i64
  %_14.i.i = getelementptr inbounds nuw i32, ptr %left.sroa.0.027.i, i64 %count2.i.i
  %_16.i.i = getelementptr inbounds nuw i8, ptr %dst.sroa.0.029.i, i64 4
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1031)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1034)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1036), !noalias !1039
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1042), !noalias !1039
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1044), !noalias !1039
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1047), !noalias !1039
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1049), !noalias !1039
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1052), !noalias !1039
  %_3.i.i.i.i19.i = load i32, ptr %right_rev.sroa.0.024.i, align 4, !alias.scope !1054, !noalias !1055, !noundef !8
  %_4.i.i.i.i20.i = load i32, ptr %left_rev.sroa.0.025.i, align 4, !alias.scope !1056, !noalias !1057, !noundef !8
  %_0.i21.i = icmp slt i32 %_3.i.i.i.i19.i, %_4.i.i.i.i20.i
  %is_l.i.i = xor i1 %_0.i21.i, true
  %33 = tail call i32 @llvm.smax.i32(i32 %_3.i.i.i.i19.i, i32 %_4.i.i.i.i20.i)
  store i32 %33, ptr %dst_rev.sroa.0.023.i, align 4, !noalias !1058
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
  %37 = load i32, ptr %left.sroa.0.0.right.sroa.0.0.i, align 4, !alias.scope !999
  store i32 %37, ptr %_16.i.i, align 4, !noalias !999
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
  br i1 %or.cond.i, label %bb13.i, label %bb29, !prof !676

bb13.i:                                           ; preds = %bb9.i
; invoke core::slice::sort::shared::smallsort::panic_on_ord_violation
  invoke void @_ZN4core5slice4sort6shared9smallsort22panic_on_ord_violation17hc77a22a2d50782cdE() #29
          to label %.noexc unwind label %cleanup2

.noexc:                                           ; preds = %bb13.i
  unreachable

cleanup2:                                         ; preds = %bb13.i
  %38 = landingpad { ptr, i32 }
          cleanup
  %39 = shl nuw nsw i64 %v.1, 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %v.0, ptr nonnull align 4 %scratch.0, i64 %39, i1 false), !noalias !1060
  resume { ptr, i32 } %38

bb29:                                             ; preds = %bb9.i, %start
  ret void

bb24:                                             ; preds = %bb18, %_ZN4core5slice4sort6shared9smallsort11insert_tail17hd66b5724334f6768E.exit
  %iter1.sroa.0.163 = phi i64 [ %iter1.sroa.0.1, %_ZN4core5slice4sort6shared9smallsort11insert_tail17hd66b5724334f6768E.exit ], [ %iter1.sroa.0.161, %bb18 ]
  %iter1.sroa.0.062 = phi i64 [ %iter1.sroa.0.163, %_ZN4core5slice4sort6shared9smallsort11insert_tail17hd66b5724334f6768E.exit ], [ %presorted_len.sroa.0.0, %bb18 ]
  %_55 = getelementptr inbounds nuw i32, ptr %src5, i64 %iter1.sroa.0.062
  %dst7 = getelementptr inbounds nuw i32, ptr %dst6, i64 %iter1.sroa.0.062
  %40 = load i32, ptr %_55, align 4
  store i32 %40, ptr %dst7, align 4
  %41 = getelementptr inbounds i8, ptr %dst7, i64 -4
  %_4.i.i.i.i.i56 = load i32, ptr %41, align 4, !alias.scope !1065, !noalias !1074, !noundef !8
  %_0.i.i57 = icmp slt i32 %40, %_4.i.i.i.i.i56
  br i1 %_0.i.i57, label %bb4.i, label %_ZN4core5slice4sort6shared9smallsort11insert_tail17hd66b5724334f6768E.exit

bb4.i:                                            ; preds = %bb24, %bb6.i
  %gap_guard.sroa.5.0.i = phi ptr [ %sift.sroa.0.0.i, %bb6.i ], [ %dst7, %bb24 ]
  %sift.sroa.0.0.i = phi ptr [ %43, %bb6.i ], [ %41, %bb24 ]
  %42 = load i32, ptr %sift.sroa.0.0.i, align 4
  store i32 %42, ptr %gap_guard.sroa.5.0.i, align 4
  %_18.i = icmp eq ptr %sift.sroa.0.0.i, %dst6
  br i1 %_18.i, label %bb10.i, label %bb6.i

bb6.i:                                            ; preds = %bb4.i
  %43 = getelementptr inbounds i8, ptr %sift.sroa.0.0.i, i64 -4
  %_4.i.i.i.i2.i = load i32, ptr %43, align 4, !alias.scope !1079, !noalias !1088, !noundef !8
  %_0.i3.i = icmp slt i32 %40, %_4.i.i.i.i2.i
  br i1 %_0.i3.i, label %bb4.i, label %bb10.i

bb10.i:                                           ; preds = %bb6.i, %bb4.i
  store i32 %40, ptr %sift.sroa.0.0.i, align 4, !noalias !1093
  br label %_ZN4core5slice4sort6shared9smallsort11insert_tail17hd66b5724334f6768E.exit

_ZN4core5slice4sort6shared9smallsort11insert_tail17hd66b5724334f6768E.exit: ; preds = %bb24, %bb10.i
  %_80 = icmp ult i64 %iter1.sroa.0.163, %desired_len.sroa.0.0
  %_84 = zext i1 %_80 to i64
  %iter1.sroa.0.1 = add nuw i64 %iter1.sroa.0.163, %_84
  br i1 %_80, label %bb24, label %bb16.backedge
}

; core::slice::sort::stable::driftsort_main
; Function Attrs: noinline nonlazybind uwtable
define void @_ZN4core5slice4sort6stable14driftsort_main17h12d5075cddc1e8d1E(ptr noalias noundef nonnull align 4 %v.0, i64 noundef range(i64 0, 2305843009213693952) %v.1, ptr noalias noundef align 8 dereferenceable(8) %is_less) unnamed_addr #8 personality ptr @rust_eh_personality {
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
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %_4.i.i), !noalias !1098
; invoke alloc::raw_vec::RawVecInner<A>::try_allocate_in
  invoke void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$15try_allocate_in17had089b3ffc2704ecE"(ptr noalias noundef sret([24 x i8]) align 8 captures(none) dereferenceable(24) %_4.i.i, i64 noundef %_0.sroa.0.0.i7, i1 noundef zeroext false, i64 noundef 4, i64 noundef 4)
          to label %.noexc unwind label %cleanup

.noexc:                                           ; preds = %bb4
  %_5.i.i = load i64, ptr %_4.i.i, align 8, !range !1101, !noalias !1098, !noundef !8
  %0 = trunc nuw i64 %_5.i.i to i1
  %1 = getelementptr inbounds nuw i8, ptr %_4.i.i, i64 8
  %err.0.i.i = load i64, ptr %1, align 8, !range !1102, !noalias !1098, !noundef !8
  %2 = getelementptr inbounds nuw i8, ptr %_4.i.i, i64 16
  br i1 %0, label %bb3.i.i, label %"_ZN5alloc5slice99_$LT$impl$u20$core..slice..sort..stable..BufGuard$LT$T$GT$$u20$for$u20$alloc..vec..Vec$LT$T$GT$$GT$13with_capacity17h7956de82b204896eE.exit", !prof !53

bb3.i.i:                                          ; preds = %.noexc
  %err.1.i.i = load i64, ptr %2, align 8, !noalias !1098
; invoke alloc::raw_vec::handle_error
  invoke void @_ZN5alloc7raw_vec12handle_error17h3a8c375904e593b2E(i64 noundef %err.0.i.i, i64 %err.1.i.i) #30
          to label %.noexc8 unwind label %cleanup

.noexc8:                                          ; preds = %bb3.i.i
  unreachable

"_ZN5alloc5slice99_$LT$impl$u20$core..slice..sort..stable..BufGuard$LT$T$GT$$u20$for$u20$alloc..vec..Vec$LT$T$GT$$GT$13with_capacity17h7956de82b204896eE.exit": ; preds = %.noexc
  %this.1.i.i = load ptr, ptr %2, align 8, !noalias !1098, !nonnull !8, !noundef !8
  %_7.i.i = icmp ule i64 %_0.sroa.0.0.i7, %err.0.i.i
  tail call void @llvm.assume(i1 %_7.i.i)
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %_4.i.i), !noalias !1098
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

bb8:                                              ; preds = %"_ZN5alloc5slice99_$LT$impl$u20$core..slice..sort..stable..BufGuard$LT$T$GT$$u20$for$u20$alloc..vec..Vec$LT$T$GT$$GT$13with_capacity17h7956de82b204896eE.exit", %start
  %_24.sroa.0.1 = phi i8 [ 0, %start ], [ 1, %"_ZN5alloc5slice99_$LT$impl$u20$core..slice..sort..stable..BufGuard$LT$T$GT$$u20$for$u20$alloc..vec..Vec$LT$T$GT$$GT$13with_capacity17h7956de82b204896eE.exit" ]
  %stack_scratch.sroa.4.0 = phi i64 [ 1024, %start ], [ %err.0.i.i, %"_ZN5alloc5slice99_$LT$impl$u20$core..slice..sort..stable..BufGuard$LT$T$GT$$u20$for$u20$alloc..vec..Vec$LT$T$GT$$GT$13with_capacity17h7956de82b204896eE.exit" ]
  %stack_buf.pn = phi ptr [ %stack_buf, %start ], [ %this.1.i.i, %"_ZN5alloc5slice99_$LT$impl$u20$core..slice..sort..stable..BufGuard$LT$T$GT$$u20$for$u20$alloc..vec..Vec$LT$T$GT$$GT$13with_capacity17h7956de82b204896eE.exit" ]
  %eager_sort = icmp samesign ult i64 %v.1, 65
; invoke core::slice::sort::stable::drift::sort
  invoke void @_ZN4core5slice4sort6stable5drift4sort17h33ed42dafbc2c528E(ptr noalias noundef nonnull align 4 %v.0, i64 noundef %v.1, ptr noalias noundef nonnull align 4 %stack_buf.pn, i64 noundef %stack_scratch.sroa.4.0, i1 noundef zeroext %eager_sort, ptr noalias noundef align 8 dereferenceable(8) %is_less)
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
define { ptr, i64 } @"_ZN4core5slice4sort6stable27AlignedStorage$LT$T$C$_$GT$19as_uninit_slice_mut17h970e709c0fc57400E"(ptr noalias noundef align 4 dereferenceable(4096) %self) unnamed_addr #9 {
start:
  %0 = insertvalue { ptr, i64 } poison, ptr %self, 0
  %1 = insertvalue { ptr, i64 } %0, i64 1024, 1
  ret { ptr, i64 } %1
}

; core::slice::sort::stable::drift::create_run
; Function Attrs: nonlazybind uwtable
define noundef range(i64 0, -1) i64 @_ZN4core5slice4sort6stable5drift10create_run17h93c2a62186e14e00E(ptr noalias noundef nonnull align 4 %v.0, i64 noundef range(i64 0, 2305843009213693952) %v.1, ptr noalias noundef nonnull align 4 %scratch.0, i64 noundef range(i64 0, 2305843009213693952) %scratch.1, i64 noundef %min_good_run_len, i1 noundef zeroext %eager_sort, ptr noalias noundef align 8 dereferenceable(8) %is_less) unnamed_addr #2 personality ptr @rust_eh_personality {
start:
  %_7.not = icmp ult i64 %v.1, %min_good_run_len
  br i1 %_7.not, label %bb7, label %bb1

bb7:                                              ; preds = %_ZN4core5slice4sort6shared17find_existing_run17h002da38516f675a8E.exit, %start
  br i1 %eager_sort, label %bb8, label %bb11

bb1:                                              ; preds = %start
  %_4.i = icmp samesign ult i64 %v.1, 2
  br i1 %_4.i, label %_ZN4core5slice4sort6shared17find_existing_run17h002da38516f675a8E.exit, label %bb2.i

bb2.i:                                            ; preds = %bb1
  %_28.i = getelementptr inbounds nuw i8, ptr %v.0, i64 4
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1103)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1106)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1108)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1111)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1113)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1116)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1118)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1121)
  %_3.i.i.i.i = load i32, ptr %_28.i, align 4, !alias.scope !1123, !noalias !1124, !noundef !8
  %_4.i.i.i.i = load i32, ptr %v.0, align 4, !alias.scope !1124, !noalias !1123, !noundef !8
  %_0.i = icmp slt i32 %_3.i.i.i.i, %_4.i.i.i.i
  %_10.i13.not = icmp eq i64 %v.1, 2
  br i1 %_0.i, label %bb4.i.preheader, label %bb11.i.preheader

bb11.i.preheader:                                 ; preds = %bb2.i
  br i1 %_10.i13.not, label %_ZN4core5slice4sort6shared17find_existing_run17h002da38516f675a8E.exit, label %bb12.i.preheader

bb12.i.preheader:                                 ; preds = %bb11.i.preheader
  %invariant.gep = getelementptr i8, ptr %v.0, i64 -4
  br label %bb12.i

bb4.i.preheader:                                  ; preds = %bb2.i
  br i1 %_10.i13.not, label %_ZN4core5slice4sort6shared17find_existing_run17h002da38516f675a8E.exit, label %bb5.i.preheader

bb5.i.preheader:                                  ; preds = %bb4.i.preheader
  %invariant.gep24 = getelementptr i8, ptr %v.0, i64 -4
  br label %bb5.i

bb12.i:                                           ; preds = %bb12.i.preheader, %bb15.i
  %run_len.sroa.0.0.i11 = phi i64 [ %1, %bb15.i ], [ 2, %bb12.i.preheader ]
  %0 = getelementptr inbounds nuw i32, ptr %v.0, i64 %run_len.sroa.0.0.i11
  %gep = getelementptr i32, ptr %invariant.gep, i64 %run_len.sroa.0.0.i11
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1125)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1128)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1130)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1133)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1135)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1138)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1140)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1143)
  %_3.i.i.i.i1 = load i32, ptr %0, align 4, !alias.scope !1145, !noalias !1146, !noundef !8
  %_4.i.i.i.i2 = load i32, ptr %gep, align 4, !alias.scope !1146, !noalias !1145, !noundef !8
  %_0.i3 = icmp slt i32 %_3.i.i.i.i1, %_4.i.i.i.i2
  br i1 %_0.i3, label %_ZN4core5slice4sort6shared17find_existing_run17h002da38516f675a8E.exit, label %bb15.i

bb15.i:                                           ; preds = %bb12.i
  %1 = add nuw nsw i64 %run_len.sroa.0.0.i11, 1
  %exitcond.not = icmp eq i64 %1, %v.1
  br i1 %exitcond.not, label %_ZN4core5slice4sort6shared17find_existing_run17h002da38516f675a8E.exit, label %bb12.i

bb5.i:                                            ; preds = %bb5.i.preheader, %bb7.i
  %run_len.sroa.0.1.i14 = phi i64 [ %3, %bb7.i ], [ 2, %bb5.i.preheader ]
  %2 = getelementptr inbounds nuw i32, ptr %v.0, i64 %run_len.sroa.0.1.i14
  %gep25 = getelementptr i32, ptr %invariant.gep24, i64 %run_len.sroa.0.1.i14
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1147)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1150)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1152)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1155)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1157)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1160)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1162)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1165)
  %_3.i.i.i.i4 = load i32, ptr %2, align 4, !alias.scope !1167, !noalias !1168, !noundef !8
  %_4.i.i.i.i5 = load i32, ptr %gep25, align 4, !alias.scope !1168, !noalias !1167, !noundef !8
  %_0.i6 = icmp slt i32 %_3.i.i.i.i4, %_4.i.i.i.i5
  br i1 %_0.i6, label %bb7.i, label %_ZN4core5slice4sort6shared17find_existing_run17h002da38516f675a8E.exit

bb7.i:                                            ; preds = %bb5.i
  %3 = add nuw nsw i64 %run_len.sroa.0.1.i14, 1
  %exitcond19.not = icmp eq i64 %3, %v.1
  br i1 %exitcond19.not, label %_ZN4core5slice4sort6shared17find_existing_run17h002da38516f675a8E.exit, label %bb5.i

_ZN4core5slice4sort6shared17find_existing_run17h002da38516f675a8E.exit: ; preds = %bb12.i, %bb15.i, %bb5.i, %bb7.i, %bb11.i.preheader, %bb4.i.preheader, %bb1
  %_0.sroa.3.0.i = phi i1 [ false, %bb1 ], [ true, %bb4.i.preheader ], [ false, %bb11.i.preheader ], [ true, %bb7.i ], [ true, %bb5.i ], [ false, %bb15.i ], [ false, %bb12.i ]
  %_0.sroa.0.0.i = phi i64 [ %v.1, %bb1 ], [ 2, %bb4.i.preheader ], [ 2, %bb11.i.preheader ], [ %run_len.sroa.0.1.i14, %bb5.i ], [ %v.1, %bb7.i ], [ %run_len.sroa.0.0.i11, %bb12.i ], [ %v.1, %bb15.i ]
  %_12 = icmp samesign ule i64 %_0.sroa.0.0.i, %v.1
  tail call void @llvm.assume(i1 %_12)
  %_13.not = icmp ult i64 %_0.sroa.0.0.i, %min_good_run_len
  br i1 %_13.not, label %bb7, label %bb3

bb3:                                              ; preds = %_ZN4core5slice4sort6shared17find_existing_run17h002da38516f675a8E.exit
  br i1 %_0.sroa.3.0.i, label %bb14, label %bb5

bb11:                                             ; preds = %bb7
  %_0.sroa.0.0.i7 = tail call noundef i64 @llvm.umin.i64(i64 %v.1, i64 %min_good_run_len)
  %_36 = shl nuw nsw i64 %_0.sroa.0.0.i7, 1
  br label %bb12

bb8:                                              ; preds = %bb7
  %_0.sroa.0.0.i8 = tail call noundef i64 @llvm.umin.i64(i64 %v.1, i64 32)
; call core::slice::sort::stable::quicksort::quicksort
  tail call void @_ZN4core5slice4sort6stable9quicksort9quicksort17h7d5ef47d16b62464E(ptr noalias noundef nonnull align 4 %v.0, i64 noundef %_0.sroa.0.0.i8, ptr noalias noundef nonnull align 4 %scratch.0, i64 noundef %scratch.1, i32 noundef 0, ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable_or_null(4) null, ptr noalias noundef align 8 dereferenceable(8) %is_less) #32
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
  %6 = load i32, ptr %x.i.i.epil, align 4, !alias.scope !1169, !noalias !1174, !noundef !8
  %7 = load i32, ptr %y.i.i.epil, align 4, !alias.scope !1176, !noalias !1177
  store i32 %7, ptr %x.i.i.epil, align 4, !alias.scope !1169, !noalias !1174
  store i32 %6, ptr %y.i.i.epil, align 4, !alias.scope !1176, !noalias !1177
  br label %bb5

bb5:                                              ; preds = %bb5.i.i.epil, %bb5.loopexit.unr-lcssa, %bb14, %bb3
  %_27 = shl nuw nsw i64 %_0.sroa.0.0.i, 1
  %_26 = or disjoint i64 %_27, 1
  br label %bb12

bb14:                                             ; preds = %bb3
  %half_len2.i = lshr i64 %_0.sroa.0.0.i, 1
  %end.i = getelementptr inbounds nuw i32, ptr %v.0, i64 %_0.sroa.0.0.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1177)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1174)
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
  %10 = load i32, ptr %x.i.i, align 4, !alias.scope !1169, !noalias !1174, !noundef !8
  %11 = load i32, ptr %y.i.i, align 4, !alias.scope !1176, !noalias !1177
  store i32 %11, ptr %x.i.i, align 4, !alias.scope !1169, !noalias !1174
  store i32 %10, ptr %y.i.i, align 4, !alias.scope !1176, !noalias !1177
  %12 = xor i64 %i.sroa.0.016.i.i, -2
  %gep27 = getelementptr inbounds i32, ptr %invariant.gep26, i64 %i.sroa.0.016.i.i
  %y.i.i.1 = getelementptr i32, ptr %end.i, i64 %12
  %13 = load i32, ptr %gep27, align 4, !alias.scope !1169, !noalias !1174, !noundef !8
  %14 = load i32, ptr %y.i.i.1, align 4, !alias.scope !1176, !noalias !1177
  store i32 %14, ptr %gep27, align 4, !alias.scope !1169, !noalias !1174
  store i32 %13, ptr %y.i.i.1, align 4, !alias.scope !1176, !noalias !1177
  %15 = add nuw nsw i64 %i.sroa.0.016.i.i, 2
  %niter.next.1 = add i64 %niter, 2
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %bb5.loopexit.unr-lcssa, label %bb5.i.i
}

; core::slice::sort::stable::drift::stable_quicksort
; Function Attrs: nonlazybind uwtable
define void @_ZN4core5slice4sort6stable5drift16stable_quicksort17h89519477e2fd00a1E(ptr noalias noundef nonnull align 4 %v.0, i64 noundef range(i64 0, 2305843009213693952) %v.1, ptr noalias noundef nonnull align 4 %scratch.0, i64 noundef range(i64 0, 2305843009213693952) %scratch.1, ptr noalias noundef align 8 dereferenceable(8) %is_less) unnamed_addr #2 {
start:
  %self = or i64 %v.1, 1
  %0 = tail call range(i64 3, 64) i64 @llvm.ctlz.i64(i64 %self, i1 true)
  %1 = trunc nuw nsw i64 %0 to i32
  %log = shl nuw nsw i32 %1, 1
  %limit = xor i32 %log, 126
; call core::slice::sort::stable::quicksort::quicksort
  tail call void @_ZN4core5slice4sort6stable9quicksort9quicksort17h7d5ef47d16b62464E(ptr noalias noundef nonnull align 4 %v.0, i64 noundef %v.1, ptr noalias noundef nonnull align 4 %scratch.0, i64 noundef %scratch.1, i32 noundef %limit, ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable_or_null(4) null, ptr noalias noundef align 8 dereferenceable(8) %is_less) #32
  ret void
}

; core::slice::sort::stable::drift::sort
; Function Attrs: nonlazybind uwtable
define void @_ZN4core5slice4sort6stable5drift4sort17h33ed42dafbc2c528E(ptr noalias noundef nonnull align 4 %v.0, i64 noundef range(i64 0, 2305843009213693952) %v.1, ptr noalias noundef nonnull align 4 %scratch.0, i64 noundef range(i64 0, 2305843009213693952) %scratch.1, i1 noundef zeroext %eager_sort, ptr noalias noundef align 8 dereferenceable(8) %is_less) unnamed_addr #2 personality ptr @rust_eh_personality {
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
  %2 = tail call noundef i64 @_ZN4core5slice4sort6stable5drift10create_run17h93c2a62186e14e00E(ptr noalias noundef nonnull align 4 %_82, i64 noundef %new_len, ptr noalias noundef nonnull align 4 %scratch.0, i64 noundef %scratch.1, i64 noundef %min_good_run_len.sroa.0.0, i1 noundef zeroext %eager_sort, ptr noalias noundef align 8 dereferenceable(8) %is_less)
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

bb12:                                             ; preds = %bb12.lr.ph, %_ZN4core5slice4sort6stable5drift13logical_merge17h61345f0bc9f8b861E.exit
  %stack_len.sroa.0.150 = phi i64 [ %stack_len.sroa.0.0, %bb12.lr.ph ], [ %count, %_ZN4core5slice4sort6stable5drift13logical_merge17h61345f0bc9f8b861E.exit ]
  %prev_run.sroa.0.149 = phi i64 [ %prev_run.sroa.0.0, %bb12.lr.ph ], [ %_0.sroa.0.0.i, %_ZN4core5slice4sort6stable5drift13logical_merge17h61345f0bc9f8b861E.exit ]
  %count = add i64 %stack_len.sroa.0.150, -1
  %_41 = getelementptr inbounds nuw i8, ptr %desired_depth_storage, i64 %count
  %_40 = load i8, ptr %_41, align 1, !noundef !8
  %_39.not = icmp ult i8 %_40, %desired_depth.sroa.0.0
  br i1 %_39.not, label %bb17, label %bb13

bb17:                                             ; preds = %_ZN4core5slice4sort6stable5drift13logical_merge17h61345f0bc9f8b861E.exit, %bb12, %bb10
  %prev_run.sroa.0.1.lcssa = phi i64 [ %prev_run.sroa.0.0, %bb10 ], [ %_0.sroa.0.0.i, %_ZN4core5slice4sort6stable5drift13logical_merge17h61345f0bc9f8b861E.exit ], [ %prev_run.sroa.0.149, %bb12 ]
  %stack_len.sroa.0.1.lcssa = phi i64 [ %stack_len.sroa.0.0, %bb10 ], [ 1, %_ZN4core5slice4sort6stable5drift13logical_merge17h61345f0bc9f8b861E.exit ], [ %stack_len.sroa.0.150, %bb12 ]
  %_59 = getelementptr inbounds nuw i64, ptr %run_storage, i64 %stack_len.sroa.0.1.lcssa
  store i64 %prev_run.sroa.0.1.lcssa, ptr %_59, align 8
  %_61 = getelementptr inbounds nuw i8, ptr %desired_depth_storage, i64 %stack_len.sroa.0.1.lcssa
  store i8 %desired_depth.sroa.0.0, ptr %_61, align 1
  br i1 %_22, label %bb19, label %bb18

bb13:                                             ; preds = %bb12
  %_46 = getelementptr inbounds nuw i64, ptr %run_storage, i64 %count
  %left10 = load i64, ptr %_46, align 8, !noundef !8
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
  br label %_ZN4core5slice4sort6stable5drift13logical_merge17h61345f0bc9f8b861E.exit

bb5.i:                                            ; preds = %bb11.i, %bb3.i
  br i1 %_10.not.i, label %bb16.i, label %bb7.i

bb11.i:                                           ; preds = %bb3.i
  %self.i = or i64 %_50, 1
  %8 = tail call range(i64 3, 64) i64 @llvm.ctlz.i64(i64 %self.i, i1 true)
  %9 = trunc nuw nsw i64 %8 to i32
  %log.i = shl nuw nsw i32 %9, 1
  %limit.i = xor i32 %log.i, 126
; call core::slice::sort::stable::quicksort::quicksort
  tail call void @_ZN4core5slice4sort6stable9quicksort9quicksort17h7d5ef47d16b62464E(ptr noalias noundef nonnull align 4 %_98, i64 noundef range(i64 0, 2305843009213693952) %_50, ptr noalias noundef nonnull align 4 %scratch.0, i64 noundef range(i64 0, 2305843009213693952) %scratch.1, i32 noundef %limit.i, ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable_or_null(4) null, ptr noalias noundef nonnull align 8 dereferenceable(8) %is_less) #32
  br label %bb5.i

bb7.i:                                            ; preds = %bb16.i, %bb5.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1178)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1181)
  %_6.i = icmp ult i64 %left10, 2
  %_7.i = icmp ult i64 %prev_run.sroa.0.149, 2
  %or.cond.i = or i1 %_7.i, %_6.i
  br i1 %or.cond.i, label %_ZN4core5slice4sort6stable5merge5merge17h7cc0b173c91abb5eE.exit, label %bb2.i

bb2.i:                                            ; preds = %bb7.i
  %_0.sroa.0.0.i.i = tail call i64 @llvm.umin.i64(i64 %_51, i64 %_50)
  %_8.i = icmp samesign ult i64 %scratch.1, %_0.sroa.0.0.i.i
  br i1 %_8.i, label %_ZN4core5slice4sort6stable5merge5merge17h7cc0b173c91abb5eE.exit, label %bb5.i37

bb5.i37:                                          ; preds = %bb2.i
  %v_mid.i = getelementptr inbounds nuw i32, ptr %_98, i64 %_50
  %left_is_shorter.not.i = icmp samesign ugt i64 %_50, %_51
  %spec.select.i = select i1 %left_is_shorter.not.i, ptr %v_mid.i, ptr %_98
  %10 = shl nuw nsw i64 %_0.sroa.0.0.i.i, 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %scratch.0, ptr nonnull align 4 %spec.select.i, i64 %10, i1 false), !alias.scope !1183
  %_22.i38 = getelementptr inbounds nuw i8, ptr %scratch.0, i64 %10
  br i1 %left_is_shorter.not.i, label %bb1.i.i, label %bb3.i.i

bb1.i.i:                                          ; preds = %bb5.i37, %bb1.i.i
  %_2110.i.i = phi ptr [ %_21.i.i, %bb1.i.i ], [ %_22.i38, %bb5.i37 ]
  %_188.i.i = phi ptr [ %_18.i.i, %bb1.i.i ], [ %spec.select.i, %bb5.i37 ]
  %out.sroa.0.0.i.i = phi ptr [ %13, %bb1.i.i ], [ %v_end.i, %bb5.i37 ]
  %11 = getelementptr inbounds i8, ptr %_188.i.i, i64 -4
  %12 = getelementptr inbounds i8, ptr %_2110.i.i, i64 -4
  %13 = getelementptr inbounds i8, ptr %out.sroa.0.0.i.i, i64 -4
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1184)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1187)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1189)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1192)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1194)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1197)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1199)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1202)
  %_3.i.i.i.i.i.i = load i32, ptr %12, align 4, !alias.scope !1204, !noalias !1205, !noundef !8
  %_4.i.i.i.i.i.i = load i32, ptr %11, align 4, !alias.scope !1208, !noalias !1209, !noundef !8
  %_0.i.i.i = icmp slt i32 %_3.i.i.i.i.i.i, %_4.i.i.i.i.i.i
  %14 = tail call i32 @llvm.smax.i32(i32 %_3.i.i.i.i.i.i, i32 %_4.i.i.i.i.i.i)
  store i32 %14, ptr %13, align 4, !alias.scope !1178, !noalias !1210
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1211)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1214)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1216)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1219)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1221)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1224)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1226)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1229)
  %_3.i.i.i.i.i12.i = load i32, ptr %right.sroa.0.010.i.i, align 4, !alias.scope !1231, !noalias !1232, !noundef !8
  %_4.i.i.i.i.i13.i = load i32, ptr %_2059.i.i, align 4, !alias.scope !1235, !noalias !1236, !noundef !8
  %_0.i.i14.i = icmp slt i32 %_3.i.i.i.i.i12.i, %_4.i.i.i.i.i13.i
  %consume_left.i.i = xor i1 %_0.i.i14.i, true
  %15 = tail call i32 @llvm.smin.i32(i32 %_3.i.i.i.i.i12.i, i32 %_4.i.i.i.i.i13.i)
  store i32 %15, ptr %_2511.i.i, align 4, !alias.scope !1178, !noalias !1237
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
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %merge_state.sroa.13.0.i, ptr align 4 %merge_state.sroa.0.0.i, i64 %18, i1 false), !alias.scope !1183, !noalias !1238
  br label %_ZN4core5slice4sort6stable5merge5merge17h7cc0b173c91abb5eE.exit

_ZN4core5slice4sort6stable5merge5merge17h7cc0b173c91abb5eE.exit: ; preds = %bb7.i, %bb2.i, %bb16.i40
  %_39.i = shl nuw nsw i64 %merged_len, 1
  %_38.i = or disjoint i64 %_39.i, 1
  br label %_ZN4core5slice4sort6stable5drift13logical_merge17h61345f0bc9f8b861E.exit

bb16.i:                                           ; preds = %bb5.i
  %_37.i = getelementptr inbounds nuw i32, ptr %_98, i64 %_50
  %self.i41 = or i64 %_51, 1
  %19 = tail call range(i64 3, 64) i64 @llvm.ctlz.i64(i64 %self.i41, i1 true)
  %20 = trunc nuw nsw i64 %19 to i32
  %log.i42 = shl nuw nsw i32 %20, 1
  %limit.i43 = xor i32 %log.i42, 126
; call core::slice::sort::stable::quicksort::quicksort
  tail call void @_ZN4core5slice4sort6stable9quicksort9quicksort17h7d5ef47d16b62464E(ptr noalias noundef nonnull align 4 %_37.i, i64 noundef range(i64 0, 2305843009213693952) %_51, ptr noalias noundef nonnull align 4 %scratch.0, i64 noundef range(i64 0, 2305843009213693952) %scratch.1, i32 noundef %limit.i43, ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable_or_null(4) null, ptr noalias noundef nonnull align 8 dereferenceable(8) %is_less) #32
  br label %bb7.i

_ZN4core5slice4sort6stable5drift13logical_merge17h61345f0bc9f8b861E.exit: ; preds = %bb9.i, %_ZN4core5slice4sort6stable5merge5merge17h7cc0b173c91abb5eE.exit
  %_0.sroa.0.0.i = phi i64 [ %_38.i, %_ZN4core5slice4sort6stable5merge5merge17h7cc0b173c91abb5eE.exit ], [ %_40.i, %bb9.i ]
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
  tail call void @_ZN4core5slice4sort6stable9quicksort9quicksort17h7d5ef47d16b62464E(ptr noalias noundef nonnull align 4 %v.0, i64 noundef range(i64 0, 2305843009213693952) %v.1, ptr noalias noundef nonnull align 4 %scratch.0, i64 noundef range(i64 0, 2305843009213693952) %scratch.1, i32 noundef %limit.i46, ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable_or_null(4) null, ptr noalias noundef align 8 dereferenceable(8) %is_less) #32
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
define void @"_ZN4core5slice4sort6stable5merge19MergeState$LT$T$GT$10merge_down17h50b3f4f9cf1213a5E"(ptr noalias noundef align 8 captures(none) dereferenceable(24) %self, ptr noundef readnone captures(address) %left_end, ptr noundef readnone captures(address) %right_end, ptr noundef writeonly captures(none) %0, ptr noalias noundef readnone align 8 captures(none) dereferenceable(8) %is_less) unnamed_addr #10 {
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1243)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1246)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1248)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1251)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1253)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1256)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1258)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1261)
  %_3.i.i.i.i = load i32, ptr %4, align 4, !alias.scope !1263, !noalias !1264, !noundef !8
  %_4.i.i.i.i = load i32, ptr %3, align 4, !alias.scope !1264, !noalias !1263, !noundef !8
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
define void @"_ZN4core5slice4sort6stable5merge19MergeState$LT$T$GT$8merge_up17h6b836eea6eccfc19E"(ptr noalias noundef align 8 captures(none) dereferenceable(24) %self, ptr noundef readonly captures(address) %0, ptr noundef readnone captures(address) %right_end, ptr noalias noundef readnone align 8 captures(none) dereferenceable(8) %is_less) unnamed_addr #11 {
start:
  %1 = getelementptr inbounds nuw i8, ptr %self, i64 8
  %_9 = load ptr, ptr %1, align 8, !noundef !8
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1265)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1268)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1270)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1273)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1275)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1278)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1280)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1283)
  %_3.i.i.i.i = load i32, ptr %right.sroa.0.010, align 4, !alias.scope !1285, !noalias !1286, !noundef !8
  %_4.i.i.i.i = load i32, ptr %_2059, align 4, !alias.scope !1286, !noalias !1285, !noundef !8
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
define void @_ZN4core5slice4sort6stable5merge5merge17h7cc0b173c91abb5eE(ptr noalias noundef nonnull align 4 captures(address) %v.0, i64 noundef range(i64 0, 2305843009213693952) %v.1, ptr noalias noundef nonnull align 4 %scratch.0, i64 noundef range(i64 0, 2305843009213693952) %scratch.1, i64 noundef %0, ptr noalias noundef readnone align 8 captures(none) dereferenceable(8) %is_less) unnamed_addr #3 personality ptr @rust_eh_personality {
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1287)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1290)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1292)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1295)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1297)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1300)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1302)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1305)
  %_3.i.i.i.i.i = load i32, ptr %3, align 4, !alias.scope !1307, !noalias !1308, !noundef !8
  %_4.i.i.i.i.i = load i32, ptr %2, align 4, !alias.scope !1311, !noalias !1312, !noundef !8
  %_0.i.i = icmp slt i32 %_3.i.i.i.i.i, %_4.i.i.i.i.i
  %5 = tail call i32 @llvm.smax.i32(i32 %_3.i.i.i.i.i, i32 %_4.i.i.i.i.i)
  store i32 %5, ptr %4, align 4, !noalias !1313
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1314)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1317)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1319)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1322)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1324)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1327)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1329)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1332)
  %_3.i.i.i.i.i12 = load i32, ptr %right.sroa.0.010.i, align 4, !alias.scope !1334, !noalias !1335, !noundef !8
  %_4.i.i.i.i.i13 = load i32, ptr %_2059.i, align 4, !alias.scope !1338, !noalias !1339, !noundef !8
  %_0.i.i14 = icmp slt i32 %_3.i.i.i.i.i12, %_4.i.i.i.i.i13
  %consume_left.i = xor i1 %_0.i.i14, true
  %6 = tail call i32 @llvm.smin.i32(i32 %_3.i.i.i.i.i12, i32 %_4.i.i.i.i.i13)
  store i32 %6, ptr %_2511.i, align 4, !noalias !1340
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
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %merge_state.sroa.13.0, ptr align 4 %merge_state.sroa.0.0, i64 %9, i1 false), !noalias !1341
  br label %bb18

bb18:                                             ; preds = %bb2, %start, %bb16
  ret void
}

; core::slice::sort::stable::quicksort::stable_partition
; Function Attrs: nounwind nonlazybind memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable
define noundef i64 @_ZN4core5slice4sort6stable9quicksort16stable_partition17h0a705b4c72c6ae77E(ptr noalias noundef nonnull align 4 captures(address) %v.0, i64 noundef range(i64 0, 2305843009213693952) %v.1, ptr noalias noundef nonnull align 4 captures(none) %scratch.0, i64 noundef range(i64 0, 2305843009213693952) %scratch.1, i64 noundef %0, i1 noundef zeroext %pivot_goes_left, ptr noalias readnone align 8 captures(none) %is_less) unnamed_addr #7 {
start:
  %_8 = icmp samesign uge i64 %scratch.1, %v.1
  %.not = icmp ult i64 %0, %v.1
  %or.cond = and i1 %_8, %.not
  br i1 %or.cond, label %bb33, label %bb31, !prof !1346

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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1347)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1350)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1352)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1355)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1357)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1360)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1362)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1365)
  %_3.i.i.i.i = load i32, ptr %state.sroa.9.187, align 4, !alias.scope !1367, !noalias !1368, !noundef !8
  %_4.i.i.i.i = load i32, ptr %pivot, align 4, !alias.scope !1368, !noalias !1367, !noundef !8
  %_0.i = icmp slt i32 %_3.i.i.i.i, %_4.i.i.i.i
  %2 = getelementptr inbounds i8, ptr %state.sroa.43.188, i64 -4
  %dst_base.sroa.0.0.i = select i1 %_0.i, ptr %scratch.0, ptr %2
  %dst.i = getelementptr inbounds nuw i32, ptr %dst_base.sroa.0.0.i, i64 %state.sroa.27.186
  store i32 %_3.i.i.i.i, ptr %dst.i, align 4, !noalias !1369
  %_8.i = zext i1 %_0.i to i64
  %3 = add i64 %state.sroa.27.186, %_8.i
  %_9.i = getelementptr inbounds nuw i8, ptr %state.sroa.9.187, i64 4
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1372)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1375)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1377)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1380)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1382)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1385)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1387)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1390)
  %_3.i.i.i.i25 = load i32, ptr %_9.i, align 4, !alias.scope !1392, !noalias !1393, !noundef !8
  %_4.i.i.i.i26 = load i32, ptr %pivot, align 4, !alias.scope !1393, !noalias !1392, !noundef !8
  %_0.i27 = icmp slt i32 %_3.i.i.i.i25, %_4.i.i.i.i26
  %4 = getelementptr inbounds i8, ptr %state.sroa.43.188, i64 -8
  %dst_base.sroa.0.0.i29 = select i1 %_0.i27, ptr %scratch.0, ptr %4
  %dst.i31 = getelementptr inbounds nuw i32, ptr %dst_base.sroa.0.0.i29, i64 %3
  store i32 %_3.i.i.i.i25, ptr %dst.i31, align 4, !noalias !1394
  %_8.i33 = zext i1 %_0.i27 to i64
  %5 = add i64 %3, %_8.i33
  %_9.i34 = getelementptr inbounds nuw i8, ptr %state.sroa.9.187, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1397)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1400)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1402)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1405)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1407)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1410)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1412)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1415)
  %_3.i.i.i.i35 = load i32, ptr %_9.i34, align 4, !alias.scope !1417, !noalias !1418, !noundef !8
  %_4.i.i.i.i36 = load i32, ptr %pivot, align 4, !alias.scope !1418, !noalias !1417, !noundef !8
  %_0.i37 = icmp slt i32 %_3.i.i.i.i35, %_4.i.i.i.i36
  %6 = getelementptr inbounds i8, ptr %state.sroa.43.188, i64 -12
  %dst_base.sroa.0.0.i39 = select i1 %_0.i37, ptr %scratch.0, ptr %6
  %dst.i41 = getelementptr inbounds nuw i32, ptr %dst_base.sroa.0.0.i39, i64 %5
  store i32 %_3.i.i.i.i35, ptr %dst.i41, align 4, !noalias !1419
  %_8.i43 = zext i1 %_0.i37 to i64
  %7 = add i64 %5, %_8.i43
  %_9.i44 = getelementptr inbounds nuw i8, ptr %state.sroa.9.187, i64 12
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1422)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1425)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1427)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1430)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1432)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1435)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1437)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1440)
  %_3.i.i.i.i45 = load i32, ptr %_9.i44, align 4, !alias.scope !1442, !noalias !1443, !noundef !8
  %_4.i.i.i.i46 = load i32, ptr %pivot, align 4, !alias.scope !1443, !noalias !1442, !noundef !8
  %_0.i47 = icmp slt i32 %_3.i.i.i.i45, %_4.i.i.i.i46
  %8 = getelementptr inbounds i8, ptr %state.sroa.43.188, i64 -16
  %dst_base.sroa.0.0.i49 = select i1 %_0.i47, ptr %scratch.0, ptr %8
  %dst.i51 = getelementptr inbounds nuw i32, ptr %dst_base.sroa.0.0.i49, i64 %7
  store i32 %_3.i.i.i.i45, ptr %dst.i51, align 4, !noalias !1444
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1447)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1450)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1452)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1455)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1457)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1460)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1462)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1465)
  %_3.i.i.i.i55 = load i32, ptr %state.sroa.9.293, align 4, !alias.scope !1467, !noalias !1468, !noundef !8
  %_4.i.i.i.i56 = load i32, ptr %pivot, align 4, !alias.scope !1468, !noalias !1467, !noundef !8
  %_0.i57 = icmp slt i32 %_3.i.i.i.i55, %_4.i.i.i.i56
  %10 = getelementptr inbounds i8, ptr %state.sroa.43.294, i64 -4
  %dst_base.sroa.0.0.i59 = select i1 %_0.i57, ptr %scratch.0, ptr %10
  %dst.i61 = getelementptr inbounds nuw i32, ptr %dst_base.sroa.0.0.i59, i64 %state.sroa.27.292
  store i32 %_3.i.i.i.i55, ptr %dst.i61, align 4, !noalias !1469
  %_8.i63 = zext i1 %_0.i57 to i64
  %11 = add i64 %state.sroa.27.292, %_8.i63
  %_9.i64 = getelementptr inbounds nuw i8, ptr %state.sroa.9.293, i64 4
  %_47 = icmp ult ptr %_9.i64, %loop_end
  br i1 %_47, label %bb18, label %bb21

bb23:                                             ; preds = %bb21
  %12 = getelementptr inbounds i8, ptr %state.sroa.43.2.lcssa, i64 -4
  %dst_base.sroa.0.0.i66 = select i1 %pivot_goes_left, ptr %scratch.0, ptr %12
  %dst.i68 = getelementptr inbounds nuw i32, ptr %dst_base.sroa.0.0.i66, i64 %state.sroa.27.2.lcssa
  %13 = load i32, ptr %state.sroa.9.2.lcssa, align 4, !noalias !1472
  store i32 %13, ptr %dst.i68, align 4, !noalias !1472
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
  br i1 %epil.iter.cmp.not, label %bb30, label %bb42.epil, !llvm.loop !1475

bb30:                                             ; preds = %bb30.loopexit.unr-lcssa, %bb42.epil, %bb22
  ret i64 %state.sroa.27.2.lcssa
}

; core::slice::sort::stable::quicksort::stable_partition
; Function Attrs: nounwind nonlazybind memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable
define noundef i64 @_ZN4core5slice4sort6stable9quicksort16stable_partition17h3a7d494d270a0aa6E(ptr noalias noundef nonnull align 4 captures(address) %v.0, i64 noundef range(i64 0, 2305843009213693952) %v.1, ptr noalias noundef nonnull align 4 captures(none) %scratch.0, i64 noundef range(i64 0, 2305843009213693952) %scratch.1, i64 noundef %0, i1 noundef zeroext %pivot_goes_left, ptr noalias readnone align 8 captures(none) %is_less) unnamed_addr #7 {
start:
  %_8 = icmp samesign uge i64 %scratch.1, %v.1
  %.not = icmp ult i64 %0, %v.1
  %or.cond = and i1 %_8, %.not
  br i1 %or.cond, label %bb33, label %bb31, !prof !1346

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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1477)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1480)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1482)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1485)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1487)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1490)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1492)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1495)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1497)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1500)
  %_3.i.i.i.i.i = load i32, ptr %pivot, align 4, !alias.scope !1502, !noalias !1503, !noundef !8
  %_4.i.i.i.i.i = load i32, ptr %state.sroa.9.187, align 4, !alias.scope !1503, !noalias !1502, !noundef !8
  %_0.i.i = icmp sge i32 %_3.i.i.i.i.i, %_4.i.i.i.i.i
  %2 = getelementptr inbounds i8, ptr %state.sroa.43.188, i64 -4
  %dst_base.sroa.0.0.i = select i1 %_0.i.i, ptr %scratch.0, ptr %2
  %dst.i = getelementptr inbounds nuw i32, ptr %dst_base.sroa.0.0.i, i64 %state.sroa.27.186
  store i32 %_4.i.i.i.i.i, ptr %dst.i, align 4, !noalias !1504
  %_8.i = zext i1 %_0.i.i to i64
  %3 = add i64 %state.sroa.27.186, %_8.i
  %_9.i = getelementptr inbounds nuw i8, ptr %state.sroa.9.187, i64 4
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1507)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1510)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1512)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1515)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1517)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1520)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1522)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1525)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1527)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1530)
  %_3.i.i.i.i.i25 = load i32, ptr %pivot, align 4, !alias.scope !1532, !noalias !1533, !noundef !8
  %_4.i.i.i.i.i26 = load i32, ptr %_9.i, align 4, !alias.scope !1533, !noalias !1532, !noundef !8
  %_0.i.i27 = icmp sge i32 %_3.i.i.i.i.i25, %_4.i.i.i.i.i26
  %4 = getelementptr inbounds i8, ptr %state.sroa.43.188, i64 -8
  %dst_base.sroa.0.0.i29 = select i1 %_0.i.i27, ptr %scratch.0, ptr %4
  %dst.i31 = getelementptr inbounds nuw i32, ptr %dst_base.sroa.0.0.i29, i64 %3
  store i32 %_4.i.i.i.i.i26, ptr %dst.i31, align 4, !noalias !1534
  %_8.i33 = zext i1 %_0.i.i27 to i64
  %5 = add i64 %3, %_8.i33
  %_9.i34 = getelementptr inbounds nuw i8, ptr %state.sroa.9.187, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1537)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1540)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1542)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1545)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1547)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1550)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1552)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1555)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1557)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1560)
  %_3.i.i.i.i.i35 = load i32, ptr %pivot, align 4, !alias.scope !1562, !noalias !1563, !noundef !8
  %_4.i.i.i.i.i36 = load i32, ptr %_9.i34, align 4, !alias.scope !1563, !noalias !1562, !noundef !8
  %_0.i.i37 = icmp sge i32 %_3.i.i.i.i.i35, %_4.i.i.i.i.i36
  %6 = getelementptr inbounds i8, ptr %state.sroa.43.188, i64 -12
  %dst_base.sroa.0.0.i39 = select i1 %_0.i.i37, ptr %scratch.0, ptr %6
  %dst.i41 = getelementptr inbounds nuw i32, ptr %dst_base.sroa.0.0.i39, i64 %5
  store i32 %_4.i.i.i.i.i36, ptr %dst.i41, align 4, !noalias !1564
  %_8.i43 = zext i1 %_0.i.i37 to i64
  %7 = add i64 %5, %_8.i43
  %_9.i44 = getelementptr inbounds nuw i8, ptr %state.sroa.9.187, i64 12
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1567)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1570)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1572)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1575)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1577)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1580)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1582)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1585)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1587)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1590)
  %_3.i.i.i.i.i45 = load i32, ptr %pivot, align 4, !alias.scope !1592, !noalias !1593, !noundef !8
  %_4.i.i.i.i.i46 = load i32, ptr %_9.i44, align 4, !alias.scope !1593, !noalias !1592, !noundef !8
  %_0.i.i47 = icmp sge i32 %_3.i.i.i.i.i45, %_4.i.i.i.i.i46
  %8 = getelementptr inbounds i8, ptr %state.sroa.43.188, i64 -16
  %dst_base.sroa.0.0.i49 = select i1 %_0.i.i47, ptr %scratch.0, ptr %8
  %dst.i51 = getelementptr inbounds nuw i32, ptr %dst_base.sroa.0.0.i49, i64 %7
  store i32 %_4.i.i.i.i.i46, ptr %dst.i51, align 4, !noalias !1594
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1597)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1600)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1602)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1605)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1607)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1610)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1612)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1615)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1617)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1620)
  %_3.i.i.i.i.i55 = load i32, ptr %pivot, align 4, !alias.scope !1622, !noalias !1623, !noundef !8
  %_4.i.i.i.i.i56 = load i32, ptr %state.sroa.9.293, align 4, !alias.scope !1623, !noalias !1622, !noundef !8
  %_0.i.i57 = icmp sge i32 %_3.i.i.i.i.i55, %_4.i.i.i.i.i56
  %10 = getelementptr inbounds i8, ptr %state.sroa.43.294, i64 -4
  %dst_base.sroa.0.0.i59 = select i1 %_0.i.i57, ptr %scratch.0, ptr %10
  %dst.i61 = getelementptr inbounds nuw i32, ptr %dst_base.sroa.0.0.i59, i64 %state.sroa.27.292
  store i32 %_4.i.i.i.i.i56, ptr %dst.i61, align 4, !noalias !1624
  %_8.i63 = zext i1 %_0.i.i57 to i64
  %11 = add i64 %state.sroa.27.292, %_8.i63
  %_9.i64 = getelementptr inbounds nuw i8, ptr %state.sroa.9.293, i64 4
  %_47 = icmp ult ptr %_9.i64, %loop_end
  br i1 %_47, label %bb18, label %bb21

bb23:                                             ; preds = %bb21
  %12 = getelementptr inbounds i8, ptr %state.sroa.43.2.lcssa, i64 -4
  %dst_base.sroa.0.0.i66 = select i1 %pivot_goes_left, ptr %scratch.0, ptr %12
  %dst.i68 = getelementptr inbounds nuw i32, ptr %dst_base.sroa.0.0.i66, i64 %state.sroa.27.2.lcssa
  %13 = load i32, ptr %state.sroa.9.2.lcssa, align 4, !noalias !1627
  store i32 %13, ptr %dst.i68, align 4, !noalias !1627
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
  br i1 %epil.iter.cmp.not, label %bb30, label %bb42.epil, !llvm.loop !1630

bb30:                                             ; preds = %bb30.loopexit.unr-lcssa, %bb42.epil, %bb22
  ret i64 %state.sroa.27.2.lcssa
}

; core::slice::sort::stable::quicksort::PartitionState<T>::partition_one
; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define noundef ptr @"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h8e7c987dd7215355E"(ptr noalias noundef align 8 captures(none) dereferenceable(32) %self, i1 noundef zeroext %towards_left) unnamed_addr #12 {
start:
  %0 = getelementptr inbounds nuw i8, ptr %self, i64 24
  %self1 = load ptr, ptr %0, align 8, !noundef !8
  %1 = getelementptr inbounds i8, ptr %self1, i64 -4
  store ptr %1, ptr %0, align 8
  %2 = load ptr, ptr %self, align 8
  %dst_base.sroa.0.0 = select i1 %towards_left, ptr %2, ptr %1
  %3 = getelementptr inbounds nuw i8, ptr %self, i64 16
  %count = load i64, ptr %3, align 8, !noundef !8
  %dst = getelementptr inbounds nuw i32, ptr %dst_base.sroa.0.0, i64 %count
  %4 = getelementptr inbounds nuw i8, ptr %self, i64 8
  %src = load ptr, ptr %4, align 8, !noundef !8
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
define void @_ZN4core5slice4sort6stable9quicksort9quicksort17h7d5ef47d16b62464E(ptr noalias noundef nonnull align 4 %0, i64 noundef range(i64 0, 2305843009213693952) %1, ptr noalias noundef nonnull align 4 %scratch.0, i64 noundef range(i64 0, 2305843009213693952) %scratch.1, i32 noundef %2, ptr noalias noundef readonly align 4 captures(address) dereferenceable_or_null(4) %3, ptr noalias noundef align 8 dereferenceable(8) %is_less) unnamed_addr #8 {
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

bb5:                                              ; preds = %bb5.lr.ph, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$12split_at_mut17h292dc99e94580613E.exit"
  %v.sroa.16.034 = phi i64 [ %v.sroa.16.0.ph41, %bb5.lr.ph ], [ %left_partition_len.sroa.0.0, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$12split_at_mut17h292dc99e94580613E.exit" ]
  %limit.sroa.0.033 = phi i32 [ %limit.sroa.0.0.ph40, %bb5.lr.ph ], [ %4, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$12split_at_mut17h292dc99e94580613E.exit" ]
  %_11 = icmp eq i32 %limit.sroa.0.033, 0
  br i1 %_11, label %bb6, label %bb7

bb3:                                              ; preds = %bb28, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$12split_at_mut17h292dc99e94580613E.exit", %start
  %v.sroa.0.0.ph.lcssa31 = phi ptr [ %0, %start ], [ %v.sroa.0.0.ph42, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$12split_at_mut17h292dc99e94580613E.exit" ], [ %_54, %bb28 ]
  %v.sroa.16.0.lcssa = phi i64 [ %1, %start ], [ %left_partition_len.sroa.0.0, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$12split_at_mut17h292dc99e94580613E.exit" ], [ %new_len, %bb28 ]
; call core::slice::sort::shared::smallsort::small_sort_general_with_scratch
  call void @_ZN4core5slice4sort6shared9smallsort31small_sort_general_with_scratch17h5b12088cec49b9c1E(ptr noalias noundef nonnull align 4 %v.sroa.0.0.ph.lcssa31, i64 noundef range(i64 0, 33) %v.sroa.16.0.lcssa, ptr noalias noundef nonnull align 4 %scratch.0, i64 noundef range(i64 0, 2305843009213693952) %scratch.1, ptr noalias nonnull align 8 poison)
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
  %self.i = call noundef ptr @_ZN4core5slice4sort6shared5pivot11median3_rec17h312ca1c06fa58cc3E(ptr noundef nonnull readonly align 4 %v.sroa.0.0.ph42, ptr noundef nonnull readonly %b.i, ptr noundef nonnull readonly %c.i, i64 noundef %len_div_84.i, ptr noalias noundef nonnull align 8 dereferenceable(8) %is_less)
  br label %_ZN4core5slice4sort6shared5pivot12choose_pivot17h10dc2c1619e2aff0E.exit

bb3.i:                                            ; preds = %bb7
  call void @llvm.experimental.noalias.scope.decl(metadata !1631)
  call void @llvm.experimental.noalias.scope.decl(metadata !1634)
  call void @llvm.experimental.noalias.scope.decl(metadata !1636), !noalias !1639
  call void @llvm.experimental.noalias.scope.decl(metadata !1642), !noalias !1639
  call void @llvm.experimental.noalias.scope.decl(metadata !1644), !noalias !1639
  call void @llvm.experimental.noalias.scope.decl(metadata !1647), !noalias !1639
  call void @llvm.experimental.noalias.scope.decl(metadata !1649), !noalias !1639
  call void @llvm.experimental.noalias.scope.decl(metadata !1652), !noalias !1639
  %_3.i.i.i.i.i = load i32, ptr %v.sroa.0.0.ph42, align 4, !alias.scope !1654, !noalias !1657, !noundef !8
  %_4.i.i.i.i.i = load i32, ptr %b.i, align 4, !alias.scope !1659, !noalias !1660, !noundef !8
  %_0.i.i = icmp slt i32 %_3.i.i.i.i.i, %_4.i.i.i.i.i
  %_4.i.i.i.i6.i = load i32, ptr %c.i, align 4, !alias.scope !1661, !noalias !1670, !noundef !8
  %_0.i7.i = icmp slt i32 %_3.i.i.i.i.i, %_4.i.i.i.i6.i
  %5 = xor i1 %_0.i.i, %_0.i7.i
  %_0.i10.i = icmp slt i32 %_4.i.i.i.i.i, %_4.i.i.i.i6.i
  %_12.i.i = xor i1 %_0.i.i, %_0.i10.i
  %c.b.i.i = select i1 %_12.i.i, ptr %c.i, ptr %b.i
  %_0.sroa.0.0.i.i = select i1 %5, ptr %v.sroa.0.0.ph42, ptr %c.b.i.i
  br label %_ZN4core5slice4sort6shared5pivot12choose_pivot17h10dc2c1619e2aff0E.exit

_ZN4core5slice4sort6shared5pivot12choose_pivot17h10dc2c1619e2aff0E.exit: ; preds = %bb5.i, %bb3.i
  %self.i.sink = phi ptr [ %self.i, %bb5.i ], [ %_0.sroa.0.0.i.i, %bb3.i ]
  %6 = ptrtoint ptr %self.i.sink to i64
  %7 = sub nuw i64 %6, %.sink77
  %index.sroa.0.0.i = lshr exact i64 %7, 2
  %cond.i = icmp samesign ult i64 %index.sroa.0.0.i, %v.sroa.16.034
  call void @llvm.assume(i1 %cond.i)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %pivot_copy)
  %src = getelementptr inbounds nuw i8, ptr %v.sroa.0.0.ph42, i64 %7
  %value = load i32, ptr %src, align 4, !noundef !8
  store i32 %value, ptr %pivot_copy, align 4
  br i1 %.not, label %bb14, label %bb12

bb6:                                              ; preds = %bb5
; call core::slice::sort::stable::drift::sort
  call void @_ZN4core5slice4sort6stable5drift4sort17h33ed42dafbc2c528E(ptr noalias noundef nonnull align 4 %v.sroa.0.0.ph42, i64 noundef %v.sroa.16.034, ptr noalias noundef nonnull align 4 %scratch.0, i64 noundef %scratch.1, i1 noundef zeroext true, ptr noalias noundef align 8 dereferenceable(8) %is_less)
  br label %bb22

bb12:                                             ; preds = %_ZN4core5slice4sort6shared5pivot12choose_pivot17h10dc2c1619e2aff0E.exit
  %_3.i.i.i.i = load i32, ptr %left_ancestor_pivot.sroa.0.0.ph39, align 4, !alias.scope !1675, !noalias !1684, !noundef !8
  %_0.i.not = icmp slt i32 %_3.i.i.i.i, %value
  br i1 %_0.i.not, label %bb14, label %bb16

bb14:                                             ; preds = %_ZN4core5slice4sort6shared5pivot12choose_pivot17h10dc2c1619e2aff0E.exit, %bb12
; call core::slice::sort::stable::quicksort::stable_partition
  %8 = call noundef i64 @_ZN4core5slice4sort6stable9quicksort16stable_partition17h0a705b4c72c6ae77E(ptr noalias noundef nonnull align 4 %v.sroa.0.0.ph42, i64 noundef %v.sroa.16.034, ptr noalias noundef nonnull align 4 %scratch.0, i64 noundef %scratch.1, i64 noundef %index.sroa.0.0.i, i1 noundef zeroext false, ptr noalias align 8 poison)
  %9 = icmp eq i64 %8, 0
  br label %bb16

bb16:                                             ; preds = %bb14, %bb12
  %left_partition_len.sroa.0.0 = phi i64 [ 0, %bb12 ], [ %8, %bb14 ]
  %perform_equal_partition.sroa.0.0.in = phi i1 [ true, %bb12 ], [ %9, %bb14 ]
  br i1 %perform_equal_partition.sroa.0.0.in, label %bb17, label %bb19

bb19:                                             ; preds = %bb16
  %_6.not.i = icmp ugt i64 %left_partition_len.sroa.0.0, %v.sroa.16.034
  br i1 %_6.not.i, label %bb3.i23, label %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$12split_at_mut17h292dc99e94580613E.exit", !prof !53

bb3.i23:                                          ; preds = %bb19
; call core::panicking::panic_fmt
  call void @_ZN4core9panicking9panic_fmt17ha4414e4328fe24a0E(ptr noundef nonnull @alloc_d1084648e479974e70c9329824bf76f9, ptr noundef nonnull inttoptr (i64 19 to ptr), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_58d434a1e795f965ef82c8e9c5db822a) #29, !noalias !1689
  unreachable

"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$12split_at_mut17h292dc99e94580613E.exit": ; preds = %bb19
  %10 = getelementptr inbounds nuw i32, ptr %v.sroa.0.0.ph42, i64 %left_partition_len.sroa.0.0
  %11 = sub nuw nsw i64 %v.sroa.16.034, %left_partition_len.sroa.0.0
; call core::slice::sort::stable::quicksort::quicksort
  call void @_ZN4core5slice4sort6stable9quicksort9quicksort17h7d5ef47d16b62464E(ptr noalias noundef nonnull align 4 %10, i64 noundef %11, ptr noalias noundef nonnull align 4 %scratch.0, i64 noundef %scratch.1, i32 noundef %4, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable_or_null(4) %pivot_copy, ptr noalias noundef align 8 dereferenceable(8) %is_less) #32
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pivot_copy)
  %_8 = icmp ult i64 %left_partition_len.sroa.0.0, 33
  br i1 %_8, label %bb3, label %bb5

bb17:                                             ; preds = %bb16
; call core::slice::sort::stable::quicksort::stable_partition
  %mid_eq = call noundef i64 @_ZN4core5slice4sort6stable9quicksort16stable_partition17h3a7d494d270a0aa6E(ptr noalias noundef nonnull align 4 %v.sroa.0.0.ph42, i64 noundef %v.sroa.16.034, ptr noalias noundef nonnull align 4 %scratch.0, i64 noundef %scratch.1, i64 noundef %index.sroa.0.0.i, i1 noundef zeroext true, ptr noalias align 8 poison)
  %_47 = icmp ugt i64 %mid_eq, %v.sroa.16.034
  br i1 %_47, label %bb27, label %bb28, !prof !53

bb28:                                             ; preds = %bb17
  %new_len = sub nuw i64 %v.sroa.16.034, %mid_eq
  %_54 = getelementptr inbounds nuw i32, ptr %v.sroa.0.0.ph42, i64 %mid_eq
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pivot_copy)
  %_832 = icmp ult i64 %new_len, 33
  br i1 %_832, label %bb3, label %bb5.lr.ph

bb27:                                             ; preds = %bb17
; call core::slice::index::slice_index_fail
  call void @_ZN4core5slice5index16slice_index_fail17h62807bcaa490c9c1E(i64 noundef %mid_eq, i64 noundef %v.sroa.16.034, i64 noundef %v.sroa.16.034, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_0766b232215672ee1bd2195fdb153938) #29
  unreachable

bb22:                                             ; preds = %bb3, %bb6
  ret void
}

; <Q as hashbrown::Equivalent<K>>::equivalent
; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read, inaccessiblemem: read) uwtable
define noundef zeroext i1 @"_ZN52_$LT$Q$u20$as$u20$hashbrown..Equivalent$LT$K$GT$$GT$10equivalent17h5463d2eafb616768E"(ptr noalias noundef readonly align 4 captures(none) dereferenceable(4) %self, ptr noalias noundef readonly align 4 captures(none) dereferenceable(4) %key) unnamed_addr #13 {
start:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1693)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1696)
  %_3.i = load i32, ptr %self, align 4, !alias.scope !1693, !noalias !1696, !noundef !8
  %_4.i = load i32, ptr %key, align 4, !alias.scope !1696, !noalias !1693, !noundef !8
  %_0.i = icmp eq i32 %_3.i, %_4.i
  ret i1 %_0.i
}

; alloc::slice::<impl core::slice::sort::stable::BufGuard<T> for alloc::vec::Vec<T>>::with_capacity
; Function Attrs: nonlazybind uwtable
define void @"_ZN5alloc5slice99_$LT$impl$u20$core..slice..sort..stable..BufGuard$LT$T$GT$$u20$for$u20$alloc..vec..Vec$LT$T$GT$$GT$13with_capacity17h7956de82b204896eE"(ptr dead_on_unwind noalias noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %_0, i64 noundef %capacity) unnamed_addr #2 {
start:
  %_4.i = alloca [24 x i8], align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %_4.i)
; call alloc::raw_vec::RawVecInner<A>::try_allocate_in
  call void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$15try_allocate_in17had089b3ffc2704ecE"(ptr noalias noundef sret([24 x i8]) align 8 captures(none) dereferenceable(24) %_4.i, i64 noundef %capacity, i1 noundef zeroext false, i64 noundef 4, i64 noundef 4)
  %_5.i = load i64, ptr %_4.i, align 8, !range !1101, !noundef !8
  %0 = trunc nuw i64 %_5.i to i1
  %1 = getelementptr inbounds nuw i8, ptr %_4.i, i64 8
  %err.0.i = load i64, ptr %1, align 8, !range !1102, !noundef !8
  %2 = getelementptr inbounds nuw i8, ptr %_4.i, i64 16
  br i1 %0, label %bb3.i, label %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h90641477060d719fE.exit", !prof !53

bb3.i:                                            ; preds = %start
  %err.1.i = load i64, ptr %2, align 8
; call alloc::raw_vec::handle_error
  tail call void @_ZN5alloc7raw_vec12handle_error17h3a8c375904e593b2E(i64 noundef %err.0.i, i64 %err.1.i) #30
  unreachable

"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h90641477060d719fE.exit": ; preds = %start
  %this.1.i = load ptr, ptr %2, align 8, !nonnull !8, !noundef !8
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
define { ptr, i64 } @"_ZN5alloc5slice99_$LT$impl$u20$core..slice..sort..stable..BufGuard$LT$T$GT$$u20$for$u20$alloc..vec..Vec$LT$T$GT$$GT$19as_uninit_slice_mut17h983752d17ff2fa0bE"(ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) %self) unnamed_addr #4 {
start:
  %0 = getelementptr inbounds nuw i8, ptr %self, i64 8
  %_10 = load ptr, ptr %0, align 8, !nonnull !8, !noundef !8
  %1 = getelementptr inbounds nuw i8, ptr %self, i64 16
  %count = load i64, ptr %1, align 8, !noundef !8
  %_3 = getelementptr inbounds nuw i32, ptr %_10, i64 %count
  %self1 = load i64, ptr %self, align 8, !range !1698, !noundef !8
  %len = sub i64 %self1, %count
  %2 = insertvalue { ptr, i64 } poison, ptr %_3, 0
  %3 = insertvalue { ptr, i64 } %2, i64 %len, 1
  ret { ptr, i64 } %3
}

; <alloc::vec::Vec<T,A> as core::ops::drop::Drop>::drop
; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define void @"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h2a917e52e6e54e27E"(ptr noalias noundef readnone align 8 captures(none) dereferenceable(24) %self) unnamed_addr #9 {
start:
  ret void
}

; <alloc::raw_vec::RawVec<T,A> as core::ops::drop::Drop>::drop
; Function Attrs: nonlazybind uwtable
define void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hc92daf98dc298d77E"(ptr noalias noundef align 8 dereferenceable(16) %self) unnamed_addr #2 {
start:
; call alloc::raw_vec::RawVecInner<A>::deallocate
  tail call void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$10deallocate17h6ddf8733b0451bb9E"(ptr noalias noundef align 8 dereferenceable(16) %self, i64 noundef 4, i64 noundef 4)
  ret void
}

; <hashbrown::raw::RawTable<T,A> as core::ops::drop::Drop>::drop
; Function Attrs: nounwind nonlazybind uwtable
define void @"_ZN79_$LT$hashbrown..raw..RawTable$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h0a96ee9768e3f12bE"(ptr noalias noundef readonly align 8 captures(none) dereferenceable(32) %self) unnamed_addr #14 {
start:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1699)
  %0 = getelementptr inbounds nuw i8, ptr %self, i64 8
  %_6.i = load i64, ptr %0, align 8, !alias.scope !1699, !noundef !8
  %_4.i = icmp eq i64 %_6.i, 0
  br i1 %_4.i, label %_ZN9hashbrown3raw13RawTableInner16drop_inner_table17hdb88847ed13daaebE.exit, label %bb1.i

bb1.i:                                            ; preds = %start
  %_10.i = add i64 %_6.i, 1
  %or.cond = icmp ult i64 %_10.i, 2305843009213693951
  tail call void @llvm.assume(i1 %or.cond)
  %_25.0.i.i = shl nuw i64 %_10.i, 3
  %_32.0.i.i = add i64 %_25.0.i.i, 15
  %ctrl_offset.i.i = and i64 %_32.0.i.i, -16
  %rhs5.i.i = add i64 %_6.i, 17
  %_37.0.i.i = add i64 %rhs5.i.i, %ctrl_offset.i.i
  %_37.1.i.i = icmp uge i64 %_37.0.i.i, %ctrl_offset.i.i
  %_19.i.i = icmp ult i64 %_37.0.i.i, 9223372036854775793
  tail call void @llvm.assume(i1 %_37.1.i.i)
  tail call void @llvm.assume(i1 %_19.i.i)
  %_4.not.i.i = icmp eq i64 %_37.0.i.i, 0
  br i1 %_4.not.i.i, label %_ZN9hashbrown3raw13RawTableInner16drop_inner_table17hdb88847ed13daaebE.exit, label %bb1.i2.i

bb1.i2.i:                                         ; preds = %bb1.i
  %self1.i = load ptr, ptr %self, align 8, !alias.scope !1699, !nonnull !8, !noundef !8
  %_18.i = sub nsw i64 0, %ctrl_offset.i.i
  %ptr.i = getelementptr inbounds i8, ptr %self1.i, i64 %_18.i
; call __rustc::__rust_dealloc
  tail call void @_RNvCsdBezzDwma51_7___rustc14___rust_dealloc(ptr noundef nonnull %ptr.i, i64 noundef %_37.0.i.i, i64 noundef range(i64 1, -9223372036854775807) 16) #33, !noalias !1699
  br label %_ZN9hashbrown3raw13RawTableInner16drop_inner_table17hdb88847ed13daaebE.exit

_ZN9hashbrown3raw13RawTableInner16drop_inner_table17hdb88847ed13daaebE.exit: ; preds = %start, %bb1.i, %bb1.i2.i
  ret void
}

; <core::slice::sort::stable::merge::MergeState<T> as core::ops::drop::Drop>::drop
; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define void @"_ZN95_$LT$core..slice..sort..stable..merge..MergeState$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h0365dedc9904ee7bE"(ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) %self) unnamed_addr #12 {
start:
  %0 = getelementptr inbounds nuw i8, ptr %self, i64 8
  %self1 = load ptr, ptr %0, align 8, !noundef !8
  %_5 = load ptr, ptr %self, align 8, !noundef !8
  %1 = ptrtoint ptr %self1 to i64
  %2 = ptrtoint ptr %_5 to i64
  %3 = sub nuw i64 %1, %2
  %4 = getelementptr inbounds nuw i8, ptr %self, i64 16
  %5 = load ptr, ptr %4, align 8, !noundef !8
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %5, ptr align 4 %_5, i64 %3, i1 false)
  ret void
}

; <core::hint::select_unpredictable::DropOnPanic<T> as core::ops::drop::Drop>::drop
; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define void @"_ZN96_$LT$core..hint..select_unpredictable..DropOnPanic$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h33478b3ad0c20415E"(ptr noalias noundef readnone align 8 captures(none) dereferenceable(8) %self) unnamed_addr #9 {
start:
  ret void
}

; <core::slice::sort::shared::smallsort::CopyOnDrop<T> as core::ops::drop::Drop>::drop
; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define void @"_ZN99_$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h1cb39cb50bab9592E"(ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) %self) unnamed_addr #12 {
start:
  %src = load ptr, ptr %self, align 8, !noundef !8
  %0 = getelementptr inbounds nuw i8, ptr %self, i64 8
  %dst = load ptr, ptr %0, align 8, !noundef !8
  %1 = getelementptr inbounds nuw i8, ptr %self, i64 16
  %count = load i64, ptr %1, align 8, !noundef !8
  %2 = shl i64 %count, 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %dst, ptr align 4 %src, i64 %2, i1 false)
  ret void
}

; hashbrown::map::HashMap<K,V,S,A>::insert
; Function Attrs: nonlazybind uwtable
define { i32, i32 } @"_ZN9hashbrown3map28HashMap$LT$K$C$V$C$S$C$A$GT$6insert17h3f2ebe8d303a8ca8E"(ptr noalias noundef align 8 captures(none) dereferenceable(48) %self, i32 noundef %0, i32 noundef %v) unnamed_addr #2 personality ptr @rust_eh_personality {
start:
  %hash_builder = getelementptr inbounds nuw i8, ptr %self, i64 32
  %key0.i.i = load i64, ptr %hash_builder, align 8, !alias.scope !1702, !noalias !1707, !noundef !8
  %1 = getelementptr inbounds nuw i8, ptr %self, i64 40
  %key1.i.i = load i64, ptr %1, align 8, !alias.scope !1702, !noalias !1707, !noundef !8
  %2 = zext i32 %0 to i64
  %3 = xor i64 %key0.i.i, 7816392313619706465
  %4 = xor i64 %key1.i.i, 7237128888997146477
  %5 = xor i64 %key0.i.i, 8317987319222330741
  %b.i.i.i = or disjoint i64 %2, 288230376151711744
  %6 = xor i64 %key1.i.i, %2
  %7 = xor i64 %6, 8098989879002948979
  %_2.i.i.i.i = add i64 %4, %5
  %_5.i.i.i.i = add i64 %7, %3
  %8 = tail call noundef i64 @llvm.fshl.i64(i64 %4, i64 %4, i64 13)
  %9 = xor i64 %8, %_2.i.i.i.i
  %10 = tail call noundef i64 @llvm.fshl.i64(i64 %7, i64 %7, i64 16)
  %11 = xor i64 %10, %_5.i.i.i.i
  %12 = tail call noundef i64 @llvm.fshl.i64(i64 %_2.i.i.i.i, i64 %_2.i.i.i.i, i64 32)
  %_16.i.i.i.i = add i64 %9, %_5.i.i.i.i
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1710)
  %49 = getelementptr inbounds nuw i8, ptr %self, i64 16
  %_5.i.i = load i64, ptr %49, align 8, !alias.scope !1713, !noalias !1716, !noundef !8
  %b.i.i = icmp eq i64 %_5.i.i, 0
  br i1 %b.i.i, label %bb8.i.i, label %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$7reserve17h8286d0de47522977E.exit.i", !prof !53

bb8.i.i:                                          ; preds = %start
; call hashbrown::raw::RawTable<T,A>::reserve_rehash
  %50 = tail call { i64, i64 } @"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$14reserve_rehash17h83aafb7e25988a67E"(ptr noalias noundef nonnull align 8 dereferenceable(32) %self, i64 noundef 1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %hash_builder, i1 noundef zeroext true), !noalias !1720
  %_8.0.i.i = extractvalue { i64, i64 } %50, 0
  %51 = icmp eq i64 %_8.0.i.i, -9223372036854775807
  tail call void @llvm.assume(i1 %51)
  br label %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$7reserve17h8286d0de47522977E.exit.i"

"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$7reserve17h8286d0de47522977E.exit.i": ; preds = %bb8.i.i, %start
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1721)
  %_30.i.i = lshr i64 %_0.i.i.i, 57
  %tag_hash.i.i = trunc nuw nsw i64 %_30.i.i to i8
  %52 = getelementptr inbounds nuw i8, ptr %self, i64 8
  %_35.i.i = load i64, ptr %52, align 8, !alias.scope !1724, !noalias !1725, !noundef !8
  %_38.i.i = load ptr, ptr %self, align 8, !alias.scope !1724, !noalias !1725, !nonnull !8, !noundef !8
  %.sroa.0.0.vec.insert.i.i.i = insertelement <16 x i8> poison, i8 %tag_hash.i.i, i64 0
  %.sroa.0.15.vec.insert.i.i.i = shufflevector <16 x i8> %.sroa.0.0.vec.insert.i.i.i, <16 x i8> poison, <16 x i32> zeroinitializer
  %invariant.gep.i.i = getelementptr i8, ptr %_38.i.i, i64 -8
  br label %bb1.i.i

bb1.i.i:                                          ; preds = %bb9.i.i, %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$7reserve17h8286d0de47522977E.exit.i"
  %hash.pn.i.i = phi i64 [ %_0.i.i.i, %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$7reserve17h8286d0de47522977E.exit.i" ], [ %65, %bb9.i.i ]
  %insert_index.sroa.4.0.i.i = phi i64 [ undef, %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$7reserve17h8286d0de47522977E.exit.i" ], [ %insert_index.sroa.4.1.i.i, %bb9.i.i ]
  %insert_index.sroa.0.0.i.i = phi i64 [ 0, %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$7reserve17h8286d0de47522977E.exit.i" ], [ %insert_index.sroa.0.1.i.i, %bb9.i.i ]
  %53 = phi i64 [ 0, %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$7reserve17h8286d0de47522977E.exit.i" ], [ %64, %bb9.i.i ]
  %probe_seq.sroa.0.0.i.i = and i64 %hash.pn.i.i, %_35.i.i
  %_36.i.i = getelementptr inbounds nuw i8, ptr %_38.i.i, i64 %probe_seq.sroa.0.0.i.i
  %dst.sroa.0.0.copyload.i35.i.i = load <16 x i8>, ptr %_36.i.i, align 1, !noalias !1726
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
  %gep.i.i = getelementptr { i32, i32 }, ptr %invariant.gep.i.i, i64 %_18.i.i.i
  %_4.i.i.i.i.i.i = load i32, ptr %gep.i.i, align 4, !alias.scope !1729, !noalias !1736, !noundef !8
  %_0.i.i.i.i.i.i = icmp eq i32 %0, %_4.i.i.i.i.i.i
  br i1 %_0.i.i.i.i.i.i, label %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$25find_or_find_insert_index17ha45d5bd688ebceaeE.exit", label %bb19.i.i, !prof !52

bb16.i.i:                                         ; preds = %bb19.i.i, %bb1.i.i
  %_64.not.i.i = icmp eq i64 %insert_index.sroa.0.0.i.i, 1
  br i1 %_64.not.i.i, label %bb6.i.i, label %bb21.i.i, !prof !53

bb19.i.i:                                         ; preds = %bb15.i.i
  %57 = add i16 %iter.sroa.0.040.i.i, -1
  %_60.i.i = and i16 %57, %iter.sroa.0.040.i.i
  %.not.i.i = icmp eq i16 %_60.i.i, 0
  br i1 %.not.i.i, label %bb16.i.i, label %bb15.i.i

bb21.i.i:                                         ; preds = %bb16.i.i
  %58 = icmp slt <16 x i8> %dst.sroa.0.0.copyload.i35.i.i, zeroinitializer
  %59 = bitcast <16 x i1> %58 to i16
  %.not.i.i.i = icmp eq i16 %59, 0
  br i1 %.not.i.i.i, label %bb6.i.i, label %bb3.i.i.i, !prof !53

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
  br i1 %or.cond.not.i.i, label %bb27.i.i, label %bb9.i.i, !prof !1742

bb9.i.i:                                          ; preds = %bb6.i.i
  %64 = add i64 %53, 16
  %65 = add i64 %64, %probe_seq.sroa.0.0.i.i
  br label %bb1.i.i

bb27.i.i:                                         ; preds = %bb6.i.i
  %_8.i19.i.i = getelementptr inbounds nuw i8, ptr %_38.i.i, i64 %insert_index.sroa.4.1.i.i
  %_12.i20.i.i = load i8, ptr %_8.i19.i.i, align 1, !noalias !1743, !noundef !8
  %b.i.i.i2 = icmp sgt i8 %_12.i20.i.i, -1
  br i1 %b.i.i.i2, label %bb2.i.i.i, label %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$25find_or_find_insert_index17ha45d5bd688ebceaeE.exit", !prof !53

bb2.i.i.i:                                        ; preds = %bb27.i.i
  %66 = load <16 x i8>, ptr %_38.i.i, align 16, !noalias !1746
  %67 = icmp slt <16 x i8> %66, zeroinitializer
  %68 = bitcast <16 x i1> %67 to i16
  %69 = icmp ne i16 %68, 0
  tail call void @llvm.assume(i1 %69)
  %70 = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %68, i1 true)
  %_25.i.i.i = zext nneg i16 %70 to i64
  br label %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$25find_or_find_insert_index17ha45d5bd688ebceaeE.exit"

"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$25find_or_find_insert_index17ha45d5bd688ebceaeE.exit": ; preds = %bb15.i.i, %bb27.i.i, %bb2.i.i.i
  %_0.sroa.3.0.i.i = phi i64 [ %_25.i.i.i, %bb2.i.i.i ], [ %insert_index.sroa.4.1.i.i, %bb27.i.i ], [ %index6.i.i, %bb15.i.i ]
  %_0.sroa.0.0.i.i = phi i1 [ true, %bb2.i.i.i ], [ true, %bb27.i.i ], [ false, %bb15.i.i ]
  %71 = inttoptr i64 %_0.sroa.3.0.i.i to ptr
  %_27.i = sub nsw i64 0, %_0.sroa.3.0.i.i
  %72 = getelementptr inbounds { i32, i32 }, ptr %_38.i.i, i64 %_27.i
  %_0.sroa.3.0.i = select i1 %_0.sroa.0.0.i.i, ptr %71, ptr %72
  br i1 %_0.sroa.0.0.i.i, label %bb2, label %bb3

bb2:                                              ; preds = %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$25find_or_find_insert_index17ha45d5bd688ebceaeE.exit"
  %73 = ptrtoint ptr %_0.sroa.3.0.i to i64
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1749)
  %_9.i = getelementptr inbounds nuw i8, ptr %_38.i.i, i64 %73
  %old_ctrl.i = load i8, ptr %_9.i, align 1, !noalias !1749, !noundef !8
  %_14.i = and i8 %old_ctrl.i, 1
  %_12.i = zext nneg i8 %_14.i to i64
  %74 = load i64, ptr %49, align 8, !alias.scope !1749, !noundef !8
  %75 = sub i64 %74, %_12.i
  store i64 %75, ptr %49, align 8, !alias.scope !1749
  %_17.i = add i64 %73, -16
  %_16.i = and i64 %_17.i, %_35.i.i
  store i8 %tag_hash.i.i, ptr %_9.i, align 1, !noalias !1749
  %76 = getelementptr i8, ptr %_38.i.i, i64 %_16.i
  %_24.i = getelementptr i8, ptr %76, i64 16
  store i8 %tag_hash.i.i, ptr %_24.i, align 1, !noalias !1749
  %77 = getelementptr inbounds nuw i8, ptr %self, i64 24
  %78 = load i64, ptr %77, align 8, !alias.scope !1749, !noundef !8
  %79 = add i64 %78, 1
  store i64 %79, ptr %77, align 8, !alias.scope !1749
  %_37.i = sub nsw i64 0, %73
  %80 = getelementptr inbounds { i32, i32 }, ptr %_38.i.i, i64 %_37.i
  %81 = getelementptr inbounds i8, ptr %80, i64 -8
  store i32 %0, ptr %81, align 4, !noalias !1749
  %82 = getelementptr inbounds i8, ptr %80, i64 -4
  store i32 %v, ptr %82, align 4, !noalias !1749
  br label %bb4

bb3:                                              ; preds = %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$25find_or_find_insert_index17ha45d5bd688ebceaeE.exit"
  %83 = icmp ne ptr %_0.sroa.3.0.i, null
  tail call void @llvm.assume(i1 %83)
  %84 = getelementptr inbounds i8, ptr %_0.sroa.3.0.i, i64 -4
  %_11 = load i32, ptr %84, align 4, !noundef !8
  store i32 %v, ptr %84, align 4
  br label %bb4

bb4:                                              ; preds = %bb2, %bb3
  %_0.sroa.3.0 = phi i32 [ undef, %bb2 ], [ %_11, %bb3 ]
  %_0.sroa.0.0 = phi i32 [ 0, %bb2 ], [ 1, %bb3 ]
  %85 = insertvalue { i32, i32 } poison, i32 %_0.sroa.0.0, 0
  %86 = insertvalue { i32, i32 } %85, i32 %_0.sroa.3.0, 1
  ret { i32, i32 } %86
}

; hashbrown::raw::RawTableInner::drop_elements
; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define void @_ZN9hashbrown3raw13RawTableInner13drop_elements17h84f4cba9ffb4e470E(ptr noalias noundef readnone align 8 captures(none) dereferenceable(32) %self) unnamed_addr #9 {
start:
  ret void
}

; hashbrown::raw::RawTableInner::drop_inner_table
; Function Attrs: nounwind nonlazybind uwtable
define void @_ZN9hashbrown3raw13RawTableInner16drop_inner_table17hdb88847ed13daaebE(ptr noalias noundef readonly align 8 captures(none) dereferenceable(32) %self, ptr noalias noundef nonnull readonly align 1 captures(none) %alloc, i64 noundef %table_layout.0, i64 noundef %table_layout.1) unnamed_addr #14 {
start:
  %0 = getelementptr inbounds nuw i8, ptr %self, i64 8
  %_6 = load i64, ptr %0, align 8, !noundef !8
  %_4 = icmp eq i64 %_6, 0
  br i1 %_4, label %bb3, label %bb1

bb1:                                              ; preds = %start
  %_10 = add i64 %_6, 1
  %1 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %table_layout.0, i64 %_10)
  %_25.1.i = extractvalue { i64, i1 } %1, 1
  br i1 %_25.1.i, label %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hded40b9ddefe4757E.exit, label %bb8.i, !prof !53

bb8.i:                                            ; preds = %bb1
  %_25.0.i = extractvalue { i64, i1 } %1, 0
  %rhs.i = add i64 %table_layout.1, -1
  %_32.0.i = add i64 %_25.0.i, %rhs.i
  %_32.1.i = icmp ult i64 %_32.0.i, %_25.0.i
  br i1 %_32.1.i, label %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hded40b9ddefe4757E.exit, label %bb11.i, !prof !53

bb11.i:                                           ; preds = %bb8.i
  %_14.i = sub i64 0, %table_layout.1
  %ctrl_offset.i = and i64 %_32.0.i, %_14.i
  %rhs5.i = add i64 %_6, 17
  %_37.0.i = add i64 %rhs5.i, %ctrl_offset.i
  %_37.1.i = icmp ult i64 %_37.0.i, %ctrl_offset.i
  %_20.i = sub i64 -9223372036854775808, %table_layout.1
  %_19.i = icmp ugt i64 %_37.0.i, %_20.i
  %or.cond = or i1 %_37.1.i, %_19.i
  br i1 %or.cond, label %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hded40b9ddefe4757E.exit, label %bb2.i, !prof !1752

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
  %self1 = load ptr, ptr %self, align 8, !nonnull !8, !noundef !8
  %_18 = sub nsw i64 0, %_9.sroa.9.0
  %ptr = getelementptr inbounds i8, ptr %self1, i64 %_18
; call __rustc::__rust_dealloc
  tail call void @_RNvCsdBezzDwma51_7___rustc14___rust_dealloc(ptr noundef nonnull %ptr, i64 noundef %_9.sroa.7.0, i64 noundef range(i64 1, -9223372036854775807) %_9.sroa.0.0) #33
  br label %bb3

bb3:                                              ; preds = %bb1.i2, %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hded40b9ddefe4757E.exit, %start
  ret void
}

; hashbrown::raw::RawTableInner::new_uninitialized
; Function Attrs: nonlazybind uwtable
define void @_ZN9hashbrown3raw13RawTableInner17new_uninitialized17hd5b45c5239ed3bf0E(ptr dead_on_unwind noalias noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) initializes((0, 24)) %_0, ptr noalias noundef nonnull readonly align 1 captures(none) %alloc, i64 noundef %table_layout.0, i64 noundef %table_layout.1, i64 noundef %0, i1 noundef zeroext %fallibility) unnamed_addr #2 {
start:
  %1 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %table_layout.0, i64 %0)
  %_25.1.i = extractvalue { i64, i1 } %1, 1
  br i1 %_25.1.i, label %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hded40b9ddefe4757E.exit, label %bb8.i, !prof !53

bb8.i:                                            ; preds = %start
  %_25.0.i = extractvalue { i64, i1 } %1, 0
  %rhs.i = add i64 %table_layout.1, -1
  %_32.0.i = add i64 %_25.0.i, %rhs.i
  %_32.1.i = icmp ult i64 %_32.0.i, %_25.0.i
  br i1 %_32.1.i, label %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hded40b9ddefe4757E.exit, label %bb11.i, !prof !53

bb11.i:                                           ; preds = %bb8.i
  %_14.i = sub i64 0, %table_layout.1
  %ctrl_offset.i = and i64 %_32.0.i, %_14.i
  %rhs5.i = add i64 %0, 16
  %_37.0.i = add i64 %rhs5.i, %ctrl_offset.i
  %_37.1.i = icmp ult i64 %_37.0.i, %ctrl_offset.i
  %_20.i = sub i64 -9223372036854775808, %table_layout.1
  %_19.i = icmp ugt i64 %_37.0.i, %_20.i
  %or.cond = or i1 %_37.1.i, %_19.i
  br i1 %or.cond, label %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hded40b9ddefe4757E.exit, label %bb2.i, !prof !1752

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
  tail call void @_RNvCsdBezzDwma51_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #33
; call __rustc::__rust_alloc
  %4 = tail call noundef ptr @_RNvCsdBezzDwma51_7___rustc12___rust_alloc(i64 noundef %_6.sroa.8.0, i64 noundef range(i64 1, -9223372036854775807) %_6.sroa.0.0) #33
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

; hashbrown::raw::RawTable<T,A>::reserve_rehash
; Function Attrs: cold noinline nonlazybind uwtable
define { i64, i64 } @"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$14reserve_rehash17h83aafb7e25988a67E"(ptr noalias noundef align 8 captures(none) dereferenceable(32) %self, i64 noundef %additional, ptr noalias noundef readonly align 8 captures(none) dereferenceable(16) %0, i1 noundef zeroext %fallibility) unnamed_addr #15 personality ptr @rust_eh_personality {
start:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1753)
  %1 = getelementptr inbounds nuw i8, ptr %self, i64 24
  %self1.i = load i64, ptr %1, align 8, !alias.scope !1753, !noalias !1756, !noundef !8
  %_21.0.i = add i64 %self1.i, %additional
  %_21.1.i = icmp ult i64 %_21.0.i, %self1.i
  br i1 %_21.1.i, label %bb9.i, label %bb11.i, !prof !53

bb11.i:                                           ; preds = %start
  %2 = getelementptr inbounds nuw i8, ptr %self, i64 8
  %3 = load i64, ptr %2, align 8, !alias.scope !1753, !noalias !1756, !noundef !8
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
  %5 = tail call { i64, i64 } @_ZN9hashbrown3raw11Fallibility17capacity_overflow17h2ba85003cd4f3895E(i1 noundef zeroext %fallibility), !noalias !1758
  %_11.0.i = extractvalue { i64, i64 } %5, 0
  %_11.1.i = extractvalue { i64, i64 } %5, 1
  br label %_ZN9hashbrown3raw13RawTableInner20reserve_rehash_inner17h09a725d9f5f6ce5aE.exit

bb4.i:                                            ; preds = %bb11.i
  %_19.i = add nuw i64 %full_capacity.sroa.0.0.i, 1
  %_0.sroa.0.0.i3 = tail call noundef i64 @llvm.umax.i64(i64 %_19.i, i64 %_21.0.i)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1759)
  %_6.i.i = icmp ult i64 %_0.sroa.0.0.i3, 15
  br i1 %_6.i.i, label %bb8.i.i, label %bb16.i.i6

bb16.i.i6:                                        ; preds = %bb4.i
  %_33.1.i.i = icmp ugt i64 %_0.sroa.0.0.i3, 2305843009213693951
  br i1 %_33.1.i.i, label %_ZN9hashbrown3raw19capacity_to_buckets17h868826abfb220acaE.exit.i, label %bb29.i.i, !prof !53

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
  %or.cond.i = icmp ugt i64 %_0.sroa.4.0.i.i, 2305843009213693950
  br i1 %or.cond.i, label %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hded40b9ddefe4757E.exit.i.i, label %bb11.i.i.i, !prof !676

bb11.i.i.i:                                       ; preds = %bb10.i
  %_25.0.i.i.i = shl nuw i64 %_0.sroa.4.0.i.i, 3
  %_32.0.i.i.i = add i64 %_25.0.i.i.i, 15
  %ctrl_offset.i.i.i = and i64 %_32.0.i.i.i, -16
  %rhs5.i.i.i = add nuw nsw i64 %_0.sroa.4.0.i.i, 16
  %_37.0.i.i.i = add i64 %rhs5.i.i.i, %ctrl_offset.i.i.i
  %_37.1.i.i.i = icmp ult i64 %_37.0.i.i.i, %ctrl_offset.i.i.i
  %_19.i.i.i = icmp ugt i64 %_37.0.i.i.i, 9223372036854775792
  %or.cond.i.i = or i1 %_37.1.i.i.i, %_19.i.i.i
  br i1 %or.cond.i.i, label %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hded40b9ddefe4757E.exit.i.i, label %bb2.i.i.i, !prof !1752

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
  tail call void @_RNvCsdBezzDwma51_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #33, !noalias !1762
; call __rustc::__rust_alloc
  %11 = tail call noundef ptr @_RNvCsdBezzDwma51_7___rustc12___rust_alloc(i64 noundef %_6.sroa.8.0.i.i, i64 noundef range(i64 1, -9223372036854775807) %_6.sroa.0.0.i.i) #33, !noalias !1762
  br label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h02618852de544ee2E.exit.i.i"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h02618852de544ee2E.exit.i.i": ; preds = %bb4.i.i.i.i, %bb2.i.i.i.i
  %_0.sroa.0.0.i.i.i.i = phi ptr [ %_17.i.i.i.i, %bb2.i.i.i.i ], [ %11, %bb4.i.i.i.i ]
  %12 = icmp eq ptr %_0.sroa.0.0.i.i.i.i, null
  br i1 %12, label %bb15.i.i13, label %bb11.i.i12

bb3.i.i14:                                        ; preds = %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hded40b9ddefe4757E.exit.i.i
; call hashbrown::raw::Fallibility::capacity_overflow
  %13 = tail call { i64, i64 } @_ZN9hashbrown3raw11Fallibility17capacity_overflow17h2ba85003cd4f3895E(i1 noundef zeroext %fallibility), !noalias !1762
  %_9.0.i.i = extractvalue { i64, i64 } %13, 0
  %_9.1.i.i = extractvalue { i64, i64 } %13, 1
  br label %_ZN9hashbrown3raw13RawTableInner17new_uninitialized17hd5b45c5239ed3bf0E.exit.i

bb15.i.i13:                                       ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h02618852de544ee2E.exit.i.i"
; call hashbrown::raw::Fallibility::alloc_err
  %14 = tail call { i64, i64 } @_ZN9hashbrown3raw11Fallibility9alloc_err17hdec7f04e13c07ca8E(i1 noundef zeroext %fallibility, i64 noundef %_6.sroa.0.0.i.i, i64 noundef %_6.sroa.8.0.i.i), !noalias !1762
  %_21.0.i.i = extractvalue { i64, i64 } %14, 0
  %_21.1.i.i = extractvalue { i64, i64 } %14, 1
  br label %_ZN9hashbrown3raw13RawTableInner17new_uninitialized17hd5b45c5239ed3bf0E.exit.i

bb11.i.i12:                                       ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h02618852de544ee2E.exit.i.i"
  %ptr.i.i = getelementptr inbounds nuw i8, ptr %_0.sroa.0.0.i.i.i.i, i64 %_6.sroa.10.0.i.i
  %_26.i.i = add i64 %_0.sroa.4.0.i.i, -1
  %_35.i.i = icmp ult i64 %_26.i.i, 8
  %_367.i.i = lshr i64 %_0.sroa.4.0.i.i, 3
  %15 = mul nuw i64 %_367.i.i, 7
  %bucket_mask.sroa.0.0.i.i = select i1 %_35.i.i, i64 %_26.i.i, i64 %15
  br label %_ZN9hashbrown3raw13RawTableInner17new_uninitialized17hd5b45c5239ed3bf0E.exit.i

_ZN9hashbrown3raw13RawTableInner17new_uninitialized17hd5b45c5239ed3bf0E.exit.i: ; preds = %bb11.i.i12, %bb15.i.i13, %bb3.i.i14
  %self2.sroa.12.0.i = phi i64 [ %_9.1.i.i, %bb3.i.i14 ], [ %_21.1.i.i, %bb15.i.i13 ], [ %bucket_mask.sroa.0.0.i.i, %bb11.i.i12 ]
  %self2.sroa.7.0.i = phi i64 [ %_9.0.i.i, %bb3.i.i14 ], [ %_21.0.i.i, %bb15.i.i13 ], [ %_26.i.i, %bb11.i.i12 ]
  %self2.sroa.0.0.i = phi ptr [ null, %bb3.i.i14 ], [ null, %bb15.i.i13 ], [ %ptr.i.i, %bb11.i.i12 ]
  %16 = icmp eq ptr %self2.sroa.0.0.i, null
  br i1 %16, label %_ZN9hashbrown3raw13RawTableInner22fallible_with_capacity17h82eb3b2f6ae7aa56E.exit, label %bb13.i

bb9.i8:                                           ; preds = %_ZN9hashbrown3raw19capacity_to_buckets17h868826abfb220acaE.exit.i
; call hashbrown::raw::Fallibility::capacity_overflow
  %17 = tail call { i64, i64 } @_ZN9hashbrown3raw11Fallibility17capacity_overflow17h2ba85003cd4f3895E(i1 noundef zeroext %fallibility), !noalias !1767
  %_21.0.i9 = extractvalue { i64, i64 } %17, 0
  %_21.1.i10 = extractvalue { i64, i64 } %17, 1
  br label %_ZN9hashbrown3raw13RawTableInner22fallible_with_capacity17h82eb3b2f6ae7aa56E.exit

bb13.i:                                           ; preds = %_ZN9hashbrown3raw13RawTableInner17new_uninitialized17hd5b45c5239ed3bf0E.exit.i
  %count.i = add i64 %self2.sroa.7.0.i, 17
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %self2.sroa.0.0.i, i8 -1, i64 %count.i, i1 false), !noalias !1767
  br label %_ZN9hashbrown3raw13RawTableInner22fallible_with_capacity17h82eb3b2f6ae7aa56E.exit

_ZN9hashbrown3raw13RawTableInner22fallible_with_capacity17h82eb3b2f6ae7aa56E.exit: ; preds = %_ZN9hashbrown3raw13RawTableInner17new_uninitialized17hd5b45c5239ed3bf0E.exit.i, %bb9.i8, %bb13.i
  %self3.i.i.sroa.0.0 = phi ptr [ %self2.sroa.0.0.i, %bb13.i ], [ null, %bb9.i8 ], [ null, %_ZN9hashbrown3raw13RawTableInner17new_uninitialized17hd5b45c5239ed3bf0E.exit.i ]
  %self3.i.i.sroa.7.0 = phi i64 [ %self2.sroa.7.0.i, %bb13.i ], [ %_21.0.i9, %bb9.i8 ], [ %self2.sroa.7.0.i, %_ZN9hashbrown3raw13RawTableInner17new_uninitialized17hd5b45c5239ed3bf0E.exit.i ]
  %self3.i.i.sroa.12.0 = phi i64 [ %self2.sroa.12.0.i, %bb13.i ], [ %_21.1.i10, %bb9.i8 ], [ %self2.sroa.12.0.i, %_ZN9hashbrown3raw13RawTableInner17new_uninitialized17hd5b45c5239ed3bf0E.exit.i ]
  %18 = icmp eq ptr %self3.i.i.sroa.0.0, null
  %.self3.i.i.sroa.7.0 = select i1 %18, i64 undef, i64 %self3.i.i.sroa.7.0
  %.self3.i.i.sroa.12.0 = select i1 %18, i64 undef, i64 %self3.i.i.sroa.12.0
  %self3.i.i.sroa.12.0. = select i1 %18, i64 %self3.i.i.sroa.12.0, i64 16
  %self3.i.i.sroa.7.0. = select i1 %18, i64 %self3.i.i.sroa.7.0, i64 8
  br i1 %18, label %_ZN9hashbrown3raw13RawTableInner20reserve_rehash_inner17h09a725d9f5f6ce5aE.exit, label %bb15.i.i

bb15.i.i:                                         ; preds = %_ZN9hashbrown3raw13RawTableInner22fallible_with_capacity17h82eb3b2f6ae7aa56E.exit
  %19 = ptrtoint ptr %self3.i.i.sroa.0.0 to i64
  %_58.i.i = load ptr, ptr %self, align 8, !alias.scope !1768, !noalias !1769, !nonnull !8, !noundef !8
  %20 = load <16 x i8>, ptr %_58.i.i, align 16, !noalias !1771
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
  %invariant.op51 = add i64 %24, %28
  %30 = tail call i64 @llvm.fshl.i64(i64 %28, i64 %28, i64 17)
  %invariant.op60 = xor i64 %key1.i.i.i.i, 8387220255154660723
  %invariant.gep62 = getelementptr i8, ptr %self3.i.i.sroa.0.0, i64 16
  br label %bb2.i.i

bb2.i.i:                                          ; preds = %bb22.i.i, %bb15.i.i
  %iter.i.i.sroa.13.0 = phi i16 [ %_67.i.i, %bb15.i.i ], [ %iter.i.i.sroa.13.1, %bb22.i.i ]
  %iter.i.i.sroa.9.0 = phi i64 [ %self1.i, %bb15.i.i ], [ %iter.i.i.sroa.9.1, %bb22.i.i ]
  %iter.i.i.sroa.5.0 = phi i64 [ 0, %bb15.i.i ], [ %iter.i.i.sroa.5.1, %bb22.i.i ]
  %iter.i.i.sroa.0.0 = phi ptr [ %_58.i.i, %bb15.i.i ], [ %iter.i.i.sroa.0.1, %bb22.i.i ]
  %_69.not.i.i = icmp eq i64 %iter.i.i.sroa.9.0, 0
  br i1 %_69.not.i.i, label %bb18.i.i, label %bb1.i.preheader

bb1.i.preheader:                                  ; preds = %bb2.i.i
  %.not.i46 = icmp eq i16 %iter.i.i.sroa.13.0, 0
  br i1 %.not.i46, label %bb4.i1, label %_ZN9hashbrown3raw18FullBucketsIndices9next_impl17hb85f7b7e286b9d5dE.exit

bb4.i1:                                           ; preds = %bb1.i.preheader, %bb4.i1
  %iter.i.i.sroa.0.248 = phi ptr [ %ptr.i, %bb4.i1 ], [ %iter.i.i.sroa.0.0, %bb1.i.preheader ]
  %iter.i.i.sroa.5.247 = phi i64 [ %34, %bb4.i1 ], [ %iter.i.i.sroa.5.0, %bb1.i.preheader ]
  %ptr.i = getelementptr inbounds nuw i8, ptr %iter.i.i.sroa.0.248, i64 16
  %31 = load <16 x i8>, ptr %ptr.i, align 16, !noalias !1774
  %32 = icmp slt <16 x i8> %31, zeroinitializer
  %33 = bitcast <16 x i1> %32 to i16
  %34 = add i64 %iter.i.i.sroa.5.247, 16
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1777)
  %_12.i = load ptr, ptr %self, align 8, !alias.scope !1777, !noalias !1780, !nonnull !8, !noundef !8
  %_18.i = sub nsw i64 0, %nxt.sroa.6.0.i.i
  %38 = getelementptr inbounds { i32, i32 }, ptr %_12.i, i64 %_18.i
  %39 = getelementptr inbounds i8, ptr %38, i64 -8
  %_3.i.i.i.i.i = load i32, ptr %39, align 4, !alias.scope !1782, !noalias !1789, !noundef !8
  %40 = zext i32 %_3.i.i.i.i.i to i64
  %b.i.i.i.i.i = or disjoint i64 %40, 288230376151711744
  %.reass61 = xor i64 %b.i.i.i.i.i, %invariant.op60
  %_5.i.i.i.i.i.i = add i64 %.reass61, %24
  %41 = tail call noundef i64 @llvm.fshl.i64(i64 %.reass61, i64 %.reass61, i64 16)
  %42 = xor i64 %41, %_5.i.i.i.i.i.i
  %_16.i.i.i.i.i.i.reass = add i64 %.reass61, %invariant.op51
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
  %_28.i.i = load i64, ptr %1, align 8, !alias.scope !1768, !noalias !1769, !noundef !8
  %78 = sub i64 %.self3.i.i.sroa.12.0, %_28.i.i
  %_3.sroa.0.0.copyload.i.i.i.i.i = load i64, ptr %self, align 8, !alias.scope !1796, !noalias !1799
  store i64 %19, ptr %self, align 8, !alias.scope !1796, !noalias !1799
  %_3.sroa.0.0.copyload.i.i.i.1.i.i = load i64, ptr %2, align 8, !alias.scope !1801, !noalias !1803
  store i64 %.self3.i.i.sroa.7.0, ptr %2, align 8, !alias.scope !1801, !noalias !1803
  %_11.i.i.2.i.i = getelementptr inbounds nuw i8, ptr %self, i64 16
  store i64 %78, ptr %_11.i.i.2.i.i, align 8, !alias.scope !1805, !noalias !1807
  %_3.i.i.i = icmp eq i64 %_3.sroa.0.0.copyload.i.i.i.1.i.i, 0
  br i1 %_3.i.i.i, label %_ZN9hashbrown3raw13RawTableInner20reserve_rehash_inner17h09a725d9f5f6ce5aE.exit, label %bb1.i.i.i

bb1.i.i.i:                                        ; preds = %bb4.i.i
  %_10.i.i.i = add i64 %_3.sroa.0.0.copyload.i.i.i.1.i.i, 1
  %79 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %self3.i.i.sroa.7.0., i64 %_10.i.i.i)
  %_25.1.i.i.i.i = extractvalue { i64, i1 } %79, 1
  br i1 %_25.1.i.i.i.i, label %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hded40b9ddefe4757E.exit.i.i.i, label %bb8.i.i.i.i, !prof !53

bb8.i.i.i.i:                                      ; preds = %bb1.i.i.i
  %_25.0.i.i.i.i = extractvalue { i64, i1 } %79, 0
  %rhs.i.i.i.i = add i64 %self3.i.i.sroa.12.0., -1
  %_32.0.i.i.i.i = add i64 %_25.0.i.i.i.i, %rhs.i.i.i.i
  %_32.1.i.i.i.i = icmp ult i64 %_32.0.i.i.i.i, %_25.0.i.i.i.i
  br i1 %_32.1.i.i.i.i, label %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hded40b9ddefe4757E.exit.i.i.i, label %bb11.i.i.i.i, !prof !53

bb11.i.i.i.i:                                     ; preds = %bb8.i.i.i.i
  %_14.i.i.i.i = sub i64 0, %self3.i.i.sroa.12.0.
  %ctrl_offset.i.i.i.i = and i64 %_32.0.i.i.i.i, %_14.i.i.i.i
  %rhs5.i.i.i.i = add i64 %_3.sroa.0.0.copyload.i.i.i.1.i.i, 17
  %_37.0.i.i.i.i = add i64 %rhs5.i.i.i.i, %ctrl_offset.i.i.i.i
  %_37.1.i.i.i.i = icmp ult i64 %_37.0.i.i.i.i, %ctrl_offset.i.i.i.i
  %_20.i.i.i.i = sub i64 -9223372036854775808, %self3.i.i.sroa.12.0.
  %_19.i.i.i.i = icmp ugt i64 %_37.0.i.i.i.i, %_20.i.i.i.i
  %or.cond.i.i.i = or i1 %_37.1.i.i.i.i, %_19.i.i.i.i
  br i1 %or.cond.i.i.i, label %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hded40b9ddefe4757E.exit.i.i.i, label %bb2.i.i.i.i17, !prof !1752

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
  br i1 %_4.not.i.i.i.i, label %_ZN9hashbrown3raw13RawTableInner20reserve_rehash_inner17h09a725d9f5f6ce5aE.exit, label %bb1.i1.i.i.i

bb1.i1.i.i.i:                                     ; preds = %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hded40b9ddefe4757E.exit.i.i.i
  %82 = inttoptr i64 %_3.sroa.0.0.copyload.i.i.i.i.i to ptr
  %_18.i.i.i = sub nsw i64 0, %_9.sroa.9.0.i.i.i
  %ptr.i.i.i = getelementptr inbounds i8, ptr %82, i64 %_18.i.i.i
; call __rustc::__rust_dealloc
  tail call void @_RNvCsdBezzDwma51_7___rustc14___rust_dealloc(ptr noundef nonnull %ptr.i.i.i, i64 noundef %_9.sroa.7.0.i.i.i, i64 noundef range(i64 1, -9223372036854775807) %_9.sroa.0.0.i.i.i) #33, !noalias !1809
  br label %_ZN9hashbrown3raw13RawTableInner20reserve_rehash_inner17h09a725d9f5f6ce5aE.exit

bb1.i18:                                          ; preds = %bb6.i, %bb3.i.i
  %hash.pn.i = phi i64 [ %_0.i.i.i.i.i, %bb3.i.i ], [ %88, %bb6.i ]
  %83 = phi i64 [ 0, %bb3.i.i ], [ %87, %bb6.i ]
  %probe_seq.sroa.0.0.i = and i64 %hash.pn.i, %.self3.i.i.sroa.7.0
  %_18.i19 = getelementptr inbounds nuw i8, ptr %self3.i.i.sroa.0.0, i64 %probe_seq.sroa.0.0.i
  %dst.sroa.0.0.copyload.i5.i = load <16 x i8>, ptr %_18.i19, align 1, !noalias !1817
  %84 = icmp slt <16 x i8> %dst.sroa.0.0.copyload.i5.i, zeroinitializer
  %85 = bitcast <16 x i1> %84 to i16
  %.not.i.not.i = icmp eq i16 %85, 0
  br i1 %.not.i.not.i, label %_ZN9hashbrown3raw13RawTableInner26find_insert_index_in_group17h3300eba0ea035b7cE.exit.i, label %bb3.i.i20, !prof !53

bb3.i.i20:                                        ; preds = %bb1.i18
  %86 = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %85, i1 true)
  %_17.i.i = zext nneg i16 %86 to i64
  %_8.i.i = add i64 %probe_seq.sroa.0.0.i, %_17.i.i
  %_7.i.i = and i64 %_8.i.i, %.self3.i.i.sroa.7.0
  br label %_ZN9hashbrown3raw13RawTableInner26find_insert_index_in_group17h3300eba0ea035b7cE.exit.i

_ZN9hashbrown3raw13RawTableInner26find_insert_index_in_group17h3300eba0ea035b7cE.exit.i: ; preds = %bb3.i.i20, %bb1.i18
  %_0.sroa.3.0.i.i21 = phi i64 [ %_7.i.i, %bb3.i.i20 ], [ undef, %bb1.i18 ]
  br i1 %.not.i.not.i, label %bb6.i, label %bb9.i22, !prof !53

bb6.i:                                            ; preds = %_ZN9hashbrown3raw13RawTableInner26find_insert_index_in_group17h3300eba0ea035b7cE.exit.i
  %87 = add i64 %83, 16
  %88 = add i64 %87, %probe_seq.sroa.0.0.i
  br label %bb1.i18

bb9.i22:                                          ; preds = %_ZN9hashbrown3raw13RawTableInner26find_insert_index_in_group17h3300eba0ea035b7cE.exit.i
  %_8.i4.i = getelementptr inbounds nuw i8, ptr %self3.i.i.sroa.0.0, i64 %_0.sroa.3.0.i.i21
  %_12.i.i = load i8, ptr %_8.i4.i, align 1, !noalias !1822, !noundef !8
  %b.i.i = icmp sgt i8 %_12.i.i, -1
  br i1 %b.i.i, label %bb2.i.i23, label %bb22.i.i, !prof !53

bb2.i.i23:                                        ; preds = %bb9.i22
  %89 = load <16 x i8>, ptr %self3.i.i.sroa.0.0, align 16, !noalias !1825
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
  %gep63 = getelementptr i8, ptr %invariant.gep62, i64 %_83.i.i
  store i8 %_80.i.i, ptr %gep63, align 1
  %_97.i.i = load ptr, ptr %self, align 8, !alias.scope !1768, !noalias !1769, !nonnull !8, !noundef !8
  %_96.i.i = shl i64 %nxt.sroa.6.0.i.i, 3
  %_98.i.i = sub nuw nsw i64 -8, %_96.i.i
  %_23.i.i = getelementptr inbounds i8, ptr %_97.i.i, i64 %_98.i.i
  %_102.i.i = shl i64 %index.sroa.0.0.i.i, 3
  %_104.i.i = sub nuw nsw i64 -8, %_102.i.i
  %dst.i.i = getelementptr inbounds i8, ptr %self3.i.i.sroa.0.0, i64 %_104.i.i
  %94 = load i64, ptr %_23.i.i, align 1
  store i64 %94, ptr %dst.i.i, align 1
  br label %bb2.i.i

bb2.i:                                            ; preds = %bb11.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1828)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1831), !noalias !1756
  %_27.not6.i.i = icmp eq i64 %_26.i, 0
  br i1 %_27.not6.i.i, label %_ZN9hashbrown3raw13RawTableInner15rehash_in_place17haee1e6799e4651aaE.exit.critedge, label %bb6.lr.ph.i.i

bb6.lr.ph.i.i:                                    ; preds = %bb2.i
  %d9.i.i.i.i = lshr i64 %_26.i, 4
  %r2.i.i.i.i = and i64 %_26.i, 15
  %_19.not.i.i.i.i = icmp ne i64 %r2.i.i.i.i, 0
  %95 = zext i1 %_19.not.i.i.i.i to i64
  %yield_count.sroa.0.0.i.i.i.i = add nuw nsw i64 %d9.i.i.i.i, %95
  %_36.i.i = load ptr, ptr %self, align 8, !alias.scope !1834, !noalias !1756, !nonnull !8, !noundef !8
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
  %97 = load <16 x i8>, ptr %_34.i.i.epil, align 16, !noalias !1835
  %_410.lobit.i.i.i.epil = ashr <16 x i8> %97, splat (i8 7)
  %98 = bitcast <16 x i8> %_410.lobit.i.i.i.epil to <2 x i64>
  %99 = or <2 x i64> %98, splat (i64 -9187201950435737472)
  store <2 x i64> %99, ptr %_34.i.i.epil, align 16, !noalias !1838
  br label %bb7.i.i

bb7.i.i:                                          ; preds = %bb7.i.i.unr-lcssa, %bb6.i.i.epil
  %_52.i.i = load ptr, ptr %self, align 8, !alias.scope !1834, !noalias !1756, !nonnull !8, !noundef !8
  %._26.i = tail call i64 @llvm.umax.i64(i64 %_26.i, i64 16)
  %_26.i. = tail call i64 @llvm.umin.i64(i64 %_26.i, i64 16)
  %_53.i.i = getelementptr inbounds nuw i8, ptr %_52.i.i, i64 %._26.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %_53.i.i, ptr nonnull align 1 %_52.i.i, i64 %_26.i., i1 false), !noalias !1841
  %_71.i = load ptr, ptr %self, align 8, !alias.scope !1828, !noalias !1756, !nonnull !8, !noundef !8
  %invariant.gep28.i = getelementptr i8, ptr %_71.i, i64 -8
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
  %invariant.op59 = xor i64 %key1.i.i.i.i.i, 8387220255154660723
  br label %bb4.i28

bb6.i.i:                                          ; preds = %bb6.i.i, %bb6.lr.ph.i.i.new
  %iter.sroa.0.08.i.i = phi i64 [ 0, %bb6.lr.ph.i.i.new ], [ %_29.i.i.1, %bb6.i.i ]
  %niter = phi i64 [ 0, %bb6.lr.ph.i.i.new ], [ %niter.next.1, %bb6.i.i ]
  %_34.i.i = getelementptr inbounds nuw i8, ptr %_36.i.i, i64 %iter.sroa.0.08.i.i
  %108 = load <16 x i8>, ptr %_34.i.i, align 16, !noalias !1835
  %_410.lobit.i.i.i = ashr <16 x i8> %108, splat (i8 7)
  %109 = bitcast <16 x i8> %_410.lobit.i.i.i to <2 x i64>
  %110 = or <2 x i64> %109, splat (i64 -9187201950435737472)
  store <2 x i64> %110, ptr %_34.i.i, align 16, !noalias !1838
  %_29.i.i.1 = add i64 %iter.sroa.0.08.i.i, 32
  %gep = getelementptr i8, ptr %invariant.gep, i64 %iter.sroa.0.08.i.i
  %111 = load <16 x i8>, ptr %gep, align 16, !noalias !1835
  %_410.lobit.i.i.i.1 = ashr <16 x i8> %111, splat (i8 7)
  %112 = bitcast <16 x i8> %_410.lobit.i.i.i.1 to <2 x i64>
  %113 = or <2 x i64> %112, splat (i64 -9187201950435737472)
  store <2 x i64> %113, ptr %gep, align 16, !noalias !1838
  %niter.next.1 = add i64 %niter, 2
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %bb7.i.i.unr-lcssa, label %bb6.i.i

bb4.i28:                                          ; preds = %bb14.i, %bb7.i.i
  %iter.sroa.0.127.i = phi i64 [ 1, %bb7.i.i ], [ %iter.sroa.0.1.i, %bb14.i ]
  %iter.sroa.0.026.i = phi i64 [ 0, %bb7.i.i ], [ %iter.sroa.0.127.i, %bb14.i ]
  %_69.i = getelementptr inbounds nuw i8, ptr %_71.i, i64 %iter.sroa.0.026.i
  %_73.i = load i8, ptr %_69.i, align 1, !noalias !1842, !noundef !8
  %_72.not.i = icmp eq i8 %_73.i, -128
  br i1 %_72.not.i, label %bb7.i, label %bb14.i

bb7.i:                                            ; preds = %bb4.i28
  %_76.i = shl i64 %iter.sroa.0.026.i, 3
  %_78.i = sub nuw nsw i64 -8, %_76.i
  %i_p.i = getelementptr inbounds i8, ptr %_71.i, i64 %_78.i
  %_18.i.i = sub nsw i64 0, %iter.sroa.0.026.i
  %gep29.i = getelementptr { i32, i32 }, ptr %invariant.gep28.i, i64 %_18.i.i
  br label %bb8.i

bb8.i:                                            ; preds = %bb12.i32, %bb7.i
  %_3.i.i.i.i.i.i = load i32, ptr %gep29.i, align 4, !alias.scope !1843, !noalias !1850, !noundef !8
  %114 = zext i32 %_3.i.i.i.i.i.i to i64
  %b.i.i.i.i.i.i = or disjoint i64 %114, 288230376151711744
  %.reass = xor i64 %b.i.i.i.i.i.i, %invariant.op59
  %_5.i.i.i.i.i.i.i = add i64 %.reass, %101
  %115 = tail call noundef i64 @llvm.fshl.i64(i64 %.reass, i64 %.reass, i64 16)
  %116 = xor i64 %115, %_5.i.i.i.i.i.i.i
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
  %dst.sroa.0.0.copyload.i5.i.i = load <16 x i8>, ptr %_18.i19.i, align 1, !noalias !1860
  %153 = icmp slt <16 x i8> %dst.sroa.0.0.copyload.i5.i.i, zeroinitializer
  %154 = bitcast <16 x i1> %153 to i16
  %.not.i.not.i.i = icmp eq i16 %154, 0
  br i1 %.not.i.not.i.i, label %_ZN9hashbrown3raw13RawTableInner26find_insert_index_in_group17h3300eba0ea035b7cE.exit.i.i, label %bb3.i.i.i, !prof !53

bb3.i.i.i:                                        ; preds = %bb1.i.i
  %155 = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %154, i1 true)
  %_17.i.i.i = zext nneg i16 %155 to i64
  %_8.i.i.i = add i64 %probe_seq.sroa.0.0.i.i, %_17.i.i.i
  %_7.i.i.i = and i64 %_8.i.i.i, %3
  br label %_ZN9hashbrown3raw13RawTableInner26find_insert_index_in_group17h3300eba0ea035b7cE.exit.i.i

_ZN9hashbrown3raw13RawTableInner26find_insert_index_in_group17h3300eba0ea035b7cE.exit.i.i: ; preds = %bb3.i.i.i, %bb1.i.i
  %_0.sroa.3.0.i.i.i = phi i64 [ %_7.i.i.i, %bb3.i.i.i ], [ undef, %bb1.i.i ]
  br i1 %.not.i.not.i.i, label %bb6.i20.i, label %bb9.i.i30, !prof !53

bb6.i20.i:                                        ; preds = %_ZN9hashbrown3raw13RawTableInner26find_insert_index_in_group17h3300eba0ea035b7cE.exit.i.i
  %156 = add i64 %152, 16
  %157 = add i64 %156, %probe_seq.sroa.0.0.i.i
  br label %bb1.i.i

bb9.i.i30:                                        ; preds = %_ZN9hashbrown3raw13RawTableInner26find_insert_index_in_group17h3300eba0ea035b7cE.exit.i.i
  %_8.i4.i.i = getelementptr inbounds nuw i8, ptr %_71.i, i64 %_0.sroa.3.0.i.i.i
  %_12.i.i.i = load i8, ptr %_8.i4.i.i, align 1, !noalias !1865, !noundef !8
  %b.i.i.i = icmp sgt i8 %_12.i.i.i, -1
  br i1 %b.i.i.i, label %bb2.i.i.i36, label %bb10.i31, !prof !53

bb2.i.i.i36:                                      ; preds = %bb9.i.i30
  %158 = load <16 x i8>, ptr %_71.i, align 16, !noalias !1868
  %159 = icmp slt <16 x i8> %158, zeroinitializer
  %160 = bitcast <16 x i1> %159 to i16
  %161 = icmp ne i16 %160, 0
  tail call void @llvm.assume(i1 %161), !noalias !1756
  %162 = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %160, i1 true)
  %_25.i.i.i = zext nneg i16 %162 to i64
  br label %bb10.i31

bb10.i31:                                         ; preds = %bb2.i.i.i36, %bb9.i.i30
  %index.sroa.0.0.i.i.i = phi i64 [ %_25.i.i.i, %bb2.i.i.i36 ], [ %_0.sroa.3.0.i.i.i, %bb9.i.i30 ]
  %_82.i = and i64 %_0.i.i.i.i.i.i, %3
  %_86.i = sub i64 %iter.sroa.0.026.i, %_82.i
  %_88.i = sub i64 %index.sroa.0.0.i.i.i, %_82.i
  %_8518.i = xor i64 %_88.i, %_86.i
  %b.unshifted.i = and i64 %_8518.i, %3
  %b.i = icmp ult i64 %b.unshifted.i, 16
  br i1 %b.i, label %bb20.i, label %bb21.i, !prof !52

bb21.i:                                           ; preds = %bb10.i31
  %_108.i = shl i64 %index.sroa.0.0.i.i.i, 3
  %_110.i = sub nuw nsw i64 -8, %_108.i
  %new_i_p.i = getelementptr inbounds i8, ptr %_71.i, i64 %_110.i
  %_113.i = getelementptr inbounds nuw i8, ptr %_71.i, i64 %index.sroa.0.0.i.i.i
  %prev_ctrl.i = load i8, ptr %_113.i, align 1, !noalias !1842, !noundef !8
  %_117.i = lshr i64 %_0.i.i.i.i.i.i, 57
  %_118.i = trunc nuw nsw i64 %_117.i to i8
  %_122.i = add i64 %index.sroa.0.0.i.i.i, -16
  %_121.i = and i64 %_122.i, %3
  store i8 %_118.i, ptr %_113.i, align 1, !noalias !1842
  %gep.i = getelementptr i8, ptr %invariant.gep.i, i64 %_121.i
  store i8 %_118.i, ptr %gep.i, align 1, !noalias !1842
  %_33.i = icmp eq i8 %prev_ctrl.i, -1
  br i1 %_33.i, label %bb11.i35, label %bb12.i32

bb20.i:                                           ; preds = %bb10.i31
  %_91.i = lshr i64 %_0.i.i.i.i.i.i, 57
  %_92.i = trunc nuw nsw i64 %_91.i to i8
  %_96.i = add i64 %iter.sroa.0.026.i, -16
  %_95.i = and i64 %_96.i, %3
  store i8 %_92.i, ptr %_69.i, align 1, !noalias !1842
  %gep33.i = getelementptr i8, ptr %invariant.gep.i, i64 %_95.i
  store i8 %_92.i, ptr %gep33.i, align 1, !noalias !1842
  br label %bb14.i

bb12.i32:                                         ; preds = %bb21.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1871), !noalias !1756
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1874), !noalias !1756
  %_3.sroa.0.0.copyload.i.i.i.i.i33 = load i64, ptr %i_p.i, align 1, !alias.scope !1871, !noalias !1876
  %_4.sroa.0.0.copyload.i.i.i.i.i34 = load i64, ptr %new_i_p.i, align 1, !alias.scope !1874, !noalias !1877
  store i64 %_4.sroa.0.0.copyload.i.i.i.i.i34, ptr %i_p.i, align 1, !alias.scope !1871, !noalias !1876
  store i64 %_3.sroa.0.0.copyload.i.i.i.i.i33, ptr %new_i_p.i, align 1, !alias.scope !1874, !noalias !1877
  br label %bb8.i

bb11.i35:                                         ; preds = %bb21.i
  %_135.i = add i64 %iter.sroa.0.026.i, -16
  %_134.i = and i64 %_135.i, %3
  store i8 -1, ptr %_69.i, align 1, !noalias !1842
  %gep31.i = getelementptr i8, ptr %invariant.gep.i, i64 %_134.i
  store i8 -1, ptr %gep31.i, align 1, !noalias !1842
  %163 = load i64, ptr %i_p.i, align 1, !noalias !1842
  store i64 %163, ptr %new_i_p.i, align 1, !noalias !1842
  br label %bb14.i

bb14.i:                                           ; preds = %bb11.i35, %bb20.i, %bb4.i28
  %_62.i = icmp ult i64 %iter.sroa.0.127.i, %_26.i
  %_66.i = zext i1 %_62.i to i64
  %iter.sroa.0.1.i = add nuw i64 %iter.sroa.0.127.i, %_66.i
  br i1 %_62.i, label %bb4.i28, label %_ZN9hashbrown3raw13RawTableInner15rehash_in_place17haee1e6799e4651aaE.exit

_ZN9hashbrown3raw13RawTableInner15rehash_in_place17haee1e6799e4651aaE.exit.critedge: ; preds = %bb2.i
  %_52.i.i.c = load ptr, ptr %self, align 8, !alias.scope !1834, !noalias !1756, !nonnull !8, !noundef !8
  %_53.i.i.c = getelementptr inbounds nuw i8, ptr %_52.i.i.c, i64 16
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %_53.i.i.c, ptr nonnull align 1 %_52.i.i.c, i64 %_26.i, i1 false), !noalias !1841
  br label %_ZN9hashbrown3raw13RawTableInner15rehash_in_place17haee1e6799e4651aaE.exit

_ZN9hashbrown3raw13RawTableInner15rehash_in_place17haee1e6799e4651aaE.exit: ; preds = %bb14.i, %_ZN9hashbrown3raw13RawTableInner15rehash_in_place17haee1e6799e4651aaE.exit.critedge
  %164 = getelementptr inbounds nuw i8, ptr %self, i64 16
  %165 = sub i64 %full_capacity.sroa.0.0.i, %self1.i
  store i64 %165, ptr %164, align 8, !alias.scope !1828, !noalias !1756
  br label %_ZN9hashbrown3raw13RawTableInner20reserve_rehash_inner17h09a725d9f5f6ce5aE.exit

_ZN9hashbrown3raw13RawTableInner20reserve_rehash_inner17h09a725d9f5f6ce5aE.exit: ; preds = %bb1.i1.i.i.i, %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hded40b9ddefe4757E.exit.i.i.i, %bb4.i.i, %_ZN9hashbrown3raw13RawTableInner22fallible_with_capacity17h82eb3b2f6ae7aa56E.exit, %bb9.i, %_ZN9hashbrown3raw13RawTableInner15rehash_in_place17haee1e6799e4651aaE.exit
  %_0.sroa.4.0.i = phi i64 [ %_11.1.i, %bb9.i ], [ undef, %_ZN9hashbrown3raw13RawTableInner15rehash_in_place17haee1e6799e4651aaE.exit ], [ %self3.i.i.sroa.12.0., %_ZN9hashbrown3raw13RawTableInner22fallible_with_capacity17h82eb3b2f6ae7aa56E.exit ], [ undef, %bb4.i.i ], [ undef, %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hded40b9ddefe4757E.exit.i.i.i ], [ undef, %bb1.i1.i.i.i ]
  %_0.sroa.0.0.i = phi i64 [ %_11.0.i, %bb9.i ], [ -9223372036854775807, %_ZN9hashbrown3raw13RawTableInner15rehash_in_place17haee1e6799e4651aaE.exit ], [ %self3.i.i.sroa.7.0., %_ZN9hashbrown3raw13RawTableInner22fallible_with_capacity17h82eb3b2f6ae7aa56E.exit ], [ -9223372036854775807, %bb4.i.i ], [ -9223372036854775807, %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hded40b9ddefe4757E.exit.i.i.i ], [ -9223372036854775807, %bb1.i1.i.i.i ]
  %166 = insertvalue { i64, i64 } poison, i64 %_0.sroa.0.0.i, 0
  %167 = insertvalue { i64, i64 } %166, i64 %_0.sroa.4.0.i, 1
  ret { i64, i64 } %167
}

; hashbrown::raw::RawTable<T,A>::reserve
; Function Attrs: nonlazybind uwtable
define void @"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$7reserve17h8286d0de47522977E"(ptr noalias noundef align 8 captures(none) dereferenceable(32) %self, i64 noundef %additional, ptr noalias noundef readonly align 8 captures(none) dereferenceable(16) %hasher) unnamed_addr #2 personality ptr @rust_eh_personality {
start:
  %0 = getelementptr inbounds nuw i8, ptr %self, i64 16
  %_5 = load i64, ptr %0, align 8, !noundef !8
  %b = icmp ugt i64 %additional, %_5
  br i1 %b, label %bb8, label %bb4, !prof !53

bb8:                                              ; preds = %start
; call hashbrown::raw::RawTable<T,A>::reserve_rehash
  %1 = tail call { i64, i64 } @"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$14reserve_rehash17h83aafb7e25988a67E"(ptr noalias noundef align 8 dereferenceable(32) %self, i64 noundef %additional, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %hasher, i1 noundef zeroext true)
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1878)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1881)
  %_3.i = load i32, ptr %a, align 4, !alias.scope !1878, !noalias !1881, !noundef !8
  %_4.i = load i32, ptr %b, align 4, !alias.scope !1881, !noalias !1878, !noundef !8
  %_0.i = tail call noundef range(i8 -1, 2) i8 @llvm.scmp.i8.i32(i32 %_3.i, i32 %_4.i)
  ret i8 %_0.i
}

; Function Attrs: nonlazybind uwtable
define noundef i32 @f_gold(i32 noundef %N) unnamed_addr #2 personality ptr @rust_eh_personality {
start:
  %_36 = alloca [4 x i8], align 4
  %_30 = alloca [4 x i8], align 4
  %_20 = alloca [4 x i8], align 4
  %_14 = alloca [4 x i8], align 4
  %dp = alloca [48 x i8], align 8
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %dp)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1883)
  %_3.i.i.i = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr @"_ZN3std4hash6random11RandomState3new4KEYS29_$u7b$$u7b$constant$u7d$$u7d$28_$u7b$$u7b$closure$u7d$$u7d$23__RUST_STD_INTERNAL_VAL17h80d8e1569169cac2E")
  %_12.i.i.i.i = getelementptr inbounds nuw i8, ptr %_3.i.i.i, i64 16
  %0 = load i8, ptr %_12.i.i.i.i, align 8, !range !54, !noalias !1886, !noundef !8
  %_4.i.i.i1.i = trunc nuw i8 %0 to i1
  br i1 %_4.i.i.i1.i, label %"_ZN3std11collections4hash3map20HashMap$LT$K$C$V$GT$3new17hfd1883de9fe6b1e7E.exit", label %bb2.i.i.i.i, !prof !52

bb2.i.i.i.i:                                      ; preds = %start
; call std::sys::random::linux::hashmap_random_keys
  %1 = tail call { i64, i64 } @_ZN3std3sys6random5linux19hashmap_random_keys17h6146797cc86fe2ccE(), !noalias !1898
  %2 = extractvalue { i64, i64 } %1, 0
  %3 = extractvalue { i64, i64 } %1, 1
  %4 = getelementptr inbounds nuw i8, ptr %_3.i.i.i, i64 8
  store i64 %2, ptr %_3.i.i.i, align 8, !noalias !1898
  store i64 %3, ptr %4, align 8, !noalias !1898
  store i8 1, ptr %_12.i.i.i.i, align 8, !noalias !1898
  br label %"_ZN3std11collections4hash3map20HashMap$LT$K$C$V$GT$3new17hfd1883de9fe6b1e7E.exit"

"_ZN3std11collections4hash3map20HashMap$LT$K$C$V$GT$3new17hfd1883de9fe6b1e7E.exit": ; preds = %start, %bb2.i.i.i.i
  %_9.i.i.i.i = load i64, ptr %_3.i.i.i, align 8, !noalias !1901, !noundef !8
  %5 = getelementptr inbounds nuw i8, ptr %_3.i.i.i, i64 8
  %_10.i.i.i.i = load i64, ptr %5, align 8, !noalias !1901, !noundef !8
  %_4.i.i.i.i = add i64 %_9.i.i.i.i, 1
  store i64 %_4.i.i.i.i, ptr %_3.i.i.i, align 8, !noalias !1901
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %dp, ptr noundef nonnull align 8 dereferenceable(32) @anon.7a906972c673e89958c2969de4f8eb3e.0, i64 32, i1 false)
  %_2.sroa.4.0._0.sroa_idx.i = getelementptr inbounds nuw i8, ptr %dp, i64 32
  store i64 %_9.i.i.i.i, ptr %_2.sroa.4.0._0.sroa_idx.i, align 8, !alias.scope !1883
  %_2.sroa.5.0._0.sroa_idx.i = getelementptr inbounds nuw i8, ptr %dp, i64 40
  store i64 %_10.i.i.i.i, ptr %_2.sroa.5.0._0.sroa_idx.i, align 8, !alias.scope !1883
; invoke hashbrown::map::HashMap<K,V,S,A>::insert
  %6 = invoke { i32, i32 } @"_ZN9hashbrown3map28HashMap$LT$K$C$V$C$S$C$A$GT$6insert17h3f2ebe8d303a8ca8E"(ptr noalias noundef nonnull align 8 dereferenceable(48) %dp, i32 noundef 0, i32 noundef 1)
          to label %bb2 unwind label %cleanup.loopexit.split-lp

cleanup.loopexit:                                 ; preds = %bb14
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %cleanup

cleanup.loopexit.split-lp:                        ; preds = %bb2.i.invoke, %"_ZN3std11collections4hash3map20HashMap$LT$K$C$V$GT$3new17hfd1883de9fe6b1e7E.exit", %bb2
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %cleanup

cleanup:                                          ; preds = %cleanup.loopexit.split-lp, %cleanup.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %cleanup.loopexit ], [ %lpad.loopexit.split-lp, %cleanup.loopexit.split-lp ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1902)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1905)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1908)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1911)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1914)
  %7 = getelementptr inbounds nuw i8, ptr %dp, i64 8
  %_6.i.i.i.i.i = load i64, ptr %7, align 8, !alias.scope !1917, !noundef !8
  %_4.i.i.i.i.i = icmp eq i64 %_6.i.i.i.i.i, 0
  br i1 %_4.i.i.i.i.i, label %bb20, label %bb1.i.i.i.i.i

bb1.i.i.i.i.i:                                    ; preds = %cleanup
  %_10.i.i.i.i.i = add i64 %_6.i.i.i.i.i, 1
  %or.cond.i.i.i.i = icmp ult i64 %_10.i.i.i.i.i, 2305843009213693951
  tail call void @llvm.assume(i1 %or.cond.i.i.i.i)
  %_25.0.i.i.i.i.i.i = shl nuw i64 %_10.i.i.i.i.i, 3
  %_32.0.i.i.i.i.i.i = add i64 %_25.0.i.i.i.i.i.i, 15
  %ctrl_offset.i.i.i.i.i.i = and i64 %_32.0.i.i.i.i.i.i, -16
  %rhs5.i.i.i.i.i.i = add i64 %_6.i.i.i.i.i, 17
  %_37.0.i.i.i.i.i.i = add i64 %rhs5.i.i.i.i.i.i, %ctrl_offset.i.i.i.i.i.i
  %_37.1.i.i.i.i.i.i = icmp uge i64 %_37.0.i.i.i.i.i.i, %ctrl_offset.i.i.i.i.i.i
  %_19.i.i.i.i.i.i = icmp ult i64 %_37.0.i.i.i.i.i.i, 9223372036854775793
  tail call void @llvm.assume(i1 %_37.1.i.i.i.i.i.i)
  tail call void @llvm.assume(i1 %_19.i.i.i.i.i.i)
  %_4.not.i.i.i.i.i.i = icmp eq i64 %_37.0.i.i.i.i.i.i, 0
  br i1 %_4.not.i.i.i.i.i.i, label %bb20, label %bb1.i2.i.i.i.i.i

bb1.i2.i.i.i.i.i:                                 ; preds = %bb1.i.i.i.i.i
  %self1.i.i.i.i.i = load ptr, ptr %dp, align 8, !alias.scope !1917, !nonnull !8, !noundef !8
  %_18.i.i.i.i.i = sub nsw i64 0, %ctrl_offset.i.i.i.i.i.i
  %ptr.i.i.i.i.i = getelementptr inbounds i8, ptr %self1.i.i.i.i.i, i64 %_18.i.i.i.i.i
; call __rustc::__rust_dealloc
  tail call void @_RNvCsdBezzDwma51_7___rustc14___rust_dealloc(ptr noundef nonnull %ptr.i.i.i.i.i, i64 noundef %_37.0.i.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 16) #33, !noalias !1917
  br label %bb20

bb2:                                              ; preds = %"_ZN3std11collections4hash3map20HashMap$LT$K$C$V$GT$3new17hfd1883de9fe6b1e7E.exit"
; invoke hashbrown::map::HashMap<K,V,S,A>::insert
  %8 = invoke { i32, i32 } @"_ZN9hashbrown3map28HashMap$LT$K$C$V$C$S$C$A$GT$6insert17h3f2ebe8d303a8ca8E"(ptr noalias noundef nonnull align 8 dereferenceable(48) %dp, i32 noundef 1, i32 noundef 2)
          to label %bb4.preheader unwind label %cleanup.loopexit.split-lp

bb4.preheader:                                    ; preds = %bb2
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %_14)
  store i32 1, ptr %_14, align 4
; call std::collections::hash::map::HashMap<K,V,S>::get
  %_1149 = call fastcc noundef align 4 dereferenceable_or_null(4) ptr @"_ZN3std11collections4hash3map24HashMap$LT$K$C$V$C$S$GT$3get17h1abbfc889363e7eeE"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) %dp, ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable(4) %_14)
  %.not.i1550 = icmp eq ptr %_1149, null
  br i1 %.not.i1550, label %bb2.i.invoke, label %bb6, !prof !1918

bb6:                                              ; preds = %bb4.preheader, %bb16
  %_1152 = phi ptr [ %_11, %bb16 ], [ %_1149, %bb4.preheader ]
  %9 = phi i32 [ %i.sroa.0.051, %bb16 ], [ 1, %bb4.preheader ]
  %i.sroa.0.051 = phi i32 [ %14, %bb16 ], [ 2, %bb4.preheader ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %_20)
  %10 = add i32 %i.sroa.0.051, -2
  store i32 %10, ptr %_20, align 4
; call std::collections::hash::map::HashMap<K,V,S>::get
  %_17 = call fastcc noundef align 4 dereferenceable_or_null(4) ptr @"_ZN3std11collections4hash3map24HashMap$LT$K$C$V$C$S$GT$3get17h1abbfc889363e7eeE"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) %dp, ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable(4) %_20)
  %.not.i11 = icmp eq ptr %_17, null
  br i1 %.not.i11, label %bb2.i.invoke, label %bb8, !prof !53

bb8:                                              ; preds = %bb6
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1919)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1922)
  %self1.i = load i32, ptr %_1152, align 4, !alias.scope !1919, !noalias !1922, !noundef !8
  %other2.i = load i32, ptr %_17, align 4, !alias.scope !1922, !noalias !1919, !noundef !8
  %_5.0.i = add i32 %other2.i, %self1.i
  %_8.not = icmp sgt i32 %_5.0.i, %N
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %_20)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %_14)
  br i1 %_8.not, label %bb17, label %bb10

bb17:                                             ; preds = %bb8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1924)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1927)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1930)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1933)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1936)
  %11 = getelementptr inbounds nuw i8, ptr %dp, i64 8
  %_6.i.i.i.i.i22 = load i64, ptr %11, align 8, !alias.scope !1939, !noundef !8
  %_4.i.i.i.i.i23 = icmp eq i64 %_6.i.i.i.i.i22, 0
  br i1 %_4.i.i.i.i.i23, label %"_ZN4core3ptr74drop_in_place$LT$std..collections..hash..map..HashMap$LT$i32$C$i32$GT$$GT$17haecec49db4630a32E.exit39", label %bb1.i.i.i.i.i24

bb1.i.i.i.i.i24:                                  ; preds = %bb17
  %_10.i.i.i.i.i25 = add i64 %_6.i.i.i.i.i22, 1
  %or.cond.i.i.i.i26 = icmp ult i64 %_10.i.i.i.i.i25, 2305843009213693951
  tail call void @llvm.assume(i1 %or.cond.i.i.i.i26)
  %_25.0.i.i.i.i.i.i27 = shl nuw i64 %_10.i.i.i.i.i25, 3
  %_32.0.i.i.i.i.i.i28 = add i64 %_25.0.i.i.i.i.i.i27, 15
  %ctrl_offset.i.i.i.i.i.i29 = and i64 %_32.0.i.i.i.i.i.i28, -16
  %rhs5.i.i.i.i.i.i30 = add i64 %_6.i.i.i.i.i22, 17
  %_37.0.i.i.i.i.i.i31 = add i64 %rhs5.i.i.i.i.i.i30, %ctrl_offset.i.i.i.i.i.i29
  %_37.1.i.i.i.i.i.i32 = icmp uge i64 %_37.0.i.i.i.i.i.i31, %ctrl_offset.i.i.i.i.i.i29
  %_19.i.i.i.i.i.i33 = icmp ult i64 %_37.0.i.i.i.i.i.i31, 9223372036854775793
  tail call void @llvm.assume(i1 %_37.1.i.i.i.i.i.i32)
  tail call void @llvm.assume(i1 %_19.i.i.i.i.i.i33)
  %_4.not.i.i.i.i.i.i34 = icmp eq i64 %_37.0.i.i.i.i.i.i31, 0
  br i1 %_4.not.i.i.i.i.i.i34, label %"_ZN4core3ptr74drop_in_place$LT$std..collections..hash..map..HashMap$LT$i32$C$i32$GT$$GT$17haecec49db4630a32E.exit39", label %bb1.i2.i.i.i.i.i35

bb1.i2.i.i.i.i.i35:                               ; preds = %bb1.i.i.i.i.i24
  %self1.i.i.i.i.i36 = load ptr, ptr %dp, align 8, !alias.scope !1939, !nonnull !8, !noundef !8
  %_18.i.i.i.i.i37 = sub nsw i64 0, %ctrl_offset.i.i.i.i.i.i29
  %ptr.i.i.i.i.i38 = getelementptr inbounds i8, ptr %self1.i.i.i.i.i36, i64 %_18.i.i.i.i.i37
; call __rustc::__rust_dealloc
  tail call void @_RNvCsdBezzDwma51_7___rustc14___rust_dealloc(ptr noundef nonnull %ptr.i.i.i.i.i38, i64 noundef %_37.0.i.i.i.i.i.i31, i64 noundef range(i64 1, -9223372036854775807) 16) #33, !noalias !1939
  br label %"_ZN4core3ptr74drop_in_place$LT$std..collections..hash..map..HashMap$LT$i32$C$i32$GT$$GT$17haecec49db4630a32E.exit39"

"_ZN4core3ptr74drop_in_place$LT$std..collections..hash..map..HashMap$LT$i32$C$i32$GT$$GT$17haecec49db4630a32E.exit39": ; preds = %bb17, %bb1.i.i.i.i.i24, %bb1.i2.i.i.i.i.i35
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %dp)
  ret i32 %10

bb10:                                             ; preds = %bb8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %_30)
  store i32 %9, ptr %_30, align 4
; call std::collections::hash::map::HashMap<K,V,S>::get
  %_27 = call fastcc noundef align 4 dereferenceable_or_null(4) ptr @"_ZN3std11collections4hash3map24HashMap$LT$K$C$V$C$S$GT$3get17h1abbfc889363e7eeE"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) %dp, ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable(4) %_30)
  %.not.i7 = icmp eq ptr %_27, null
  br i1 %.not.i7, label %bb2.i.invoke, label %bb12, !prof !53

bb12:                                             ; preds = %bb10
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %_36)
  store i32 %10, ptr %_36, align 4
; call std::collections::hash::map::HashMap<K,V,S>::get
  %_33 = call fastcc noundef align 4 dereferenceable_or_null(4) ptr @"_ZN3std11collections4hash3map24HashMap$LT$K$C$V$C$S$GT$3get17h1abbfc889363e7eeE"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) %dp, ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable(4) %_36)
  %.not.i = icmp eq ptr %_33, null
  br i1 %.not.i, label %bb2.i.invoke, label %bb14, !prof !53

bb2.i.invoke:                                     ; preds = %bb12, %bb10, %bb6, %bb16, %bb4.preheader
  %12 = phi ptr [ @alloc_259fc6b6cbee0e44773f194fbbadbd4a, %bb4.preheader ], [ @alloc_848a8850280af43732882781277670ff, %bb12 ], [ @alloc_92d6528911e7980a8c7d58abe4cdd652, %bb10 ], [ @alloc_70a99ab46af915d240a8ccdd1b306a78, %bb6 ], [ @alloc_259fc6b6cbee0e44773f194fbbadbd4a, %bb16 ]
; invoke core::option::unwrap_failed
  invoke void @_ZN4core6option13unwrap_failed17hef2534b77b89c04fE(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %12) #29
          to label %bb2.i.cont unwind label %cleanup.loopexit.split-lp

bb2.i.cont:                                       ; preds = %bb2.i.invoke
  unreachable

bb14:                                             ; preds = %bb12
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1940)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1943)
  %self1.i40 = load i32, ptr %_27, align 4, !alias.scope !1940, !noalias !1943, !noundef !8
  %other2.i41 = load i32, ptr %_33, align 4, !alias.scope !1943, !noalias !1940, !noundef !8
  %_5.0.i42 = add i32 %other2.i41, %self1.i40
; invoke hashbrown::map::HashMap<K,V,S,A>::insert
  %13 = invoke { i32, i32 } @"_ZN9hashbrown3map28HashMap$LT$K$C$V$C$S$C$A$GT$6insert17h3f2ebe8d303a8ca8E"(ptr noalias noundef nonnull align 8 dereferenceable(48) %dp, i32 noundef %i.sroa.0.051, i32 noundef %_5.0.i42)
          to label %bb16 unwind label %cleanup.loopexit

bb16:                                             ; preds = %bb14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %_36)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %_30)
  %14 = add i32 %i.sroa.0.051, 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %_14)
  store i32 %i.sroa.0.051, ptr %_14, align 4
; call std::collections::hash::map::HashMap<K,V,S>::get
  %_11 = call fastcc noundef align 4 dereferenceable_or_null(4) ptr @"_ZN3std11collections4hash3map24HashMap$LT$K$C$V$C$S$GT$3get17h1abbfc889363e7eeE"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) %dp, ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable(4) %_14)
  %.not.i15 = icmp eq ptr %_11, null
  br i1 %.not.i15, label %bb2.i.invoke, label %bb6, !prof !1945

bb20:                                             ; preds = %bb1.i2.i.i.i.i.i, %bb1.i.i.i.i.i, %cleanup
  resume { ptr, i32 } %lpad.phi
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
define void @sort(ptr noalias noundef nonnull align 4 %arr.0, i64 noundef range(i64 0, 2305843009213693952) %arr.1) unnamed_addr #2 personality ptr @rust_eh_personality {
start:
  %compare.i = alloca [0 x i8], align 1
  %is_less.i.i = alloca [8 x i8], align 8
  call void @llvm.lifetime.start.p0(i64 0, ptr nonnull %compare.i)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %is_less.i.i), !noalias !1946
  store ptr %compare.i, ptr %is_less.i.i, align 8, !noalias !1949
  %b.i.i = icmp samesign ult i64 %arr.1, 2
  br i1 %b.i.i, label %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by17hb5335e09377b4facE.exit", label %bb7.i.i, !prof !52

bb7.i.i:                                          ; preds = %start
  %b1.i.i = icmp samesign ult i64 %arr.1, 21
  br i1 %b1.i.i, label %bb9.i.i, label %bb10.i.i, !prof !52

bb10.i.i:                                         ; preds = %bb7.i.i
; call core::slice::sort::stable::driftsort_main
  call void @_ZN4core5slice4sort6stable14driftsort_main17h12d5075cddc1e8d1E(ptr noalias noundef nonnull align 4 %arr.0, i64 noundef range(i64 0, 2305843009213693952) %arr.1, ptr noalias noundef align 8 dereferenceable(8) %is_less.i.i)
  br label %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by17hb5335e09377b4facE.exit"

bb9.i.i:                                          ; preds = %bb7.i.i
; call core::slice::sort::shared::smallsort::insertion_sort_shift_left
  call void @_ZN4core5slice4sort6shared9smallsort25insertion_sort_shift_left17h0491f74e5af5fb5dE(ptr noalias noundef nonnull align 4 %arr.0, i64 noundef range(i64 0, 2305843009213693952) %arr.1, i64 noundef 1, ptr noalias align 8 poison)
  br label %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by17hb5335e09377b4facE.exit"

"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by17hb5335e09377b4facE.exit": ; preds = %start, %bb10.i.i, %bb9.i.i
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %is_less.i.i), !noalias !1946
  call void @llvm.lifetime.end.p0(i64 0, ptr nonnull %compare.i)
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #16

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #17

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #16

; Function Attrs: nounwind nonlazybind uwtable
declare noundef range(i32 0, 10) i32 @rust_eh_personality(i32 noundef, i32 noundef, i64 noundef, ptr noundef, ptr noundef) unnamed_addr #14

; std::sys::random::linux::hashmap_random_keys
; Function Attrs: nonlazybind uwtable
declare { i64, i64 } @_ZN3std3sys6random5linux19hashmap_random_keys17h6146797cc86fe2ccE() unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare nonnull ptr @llvm.threadlocal.address.p0(ptr nonnull) #18

; std::thread::local::panic_access_error
; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_ZN3std6thread5local18panic_access_error17h889b72f0e071fac8E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #19

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.fshl.i64(i64, i64, i64) #18

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare range(i8 -1, 2) i8 @llvm.scmp.i8.i32(i32, i32) #18

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #20

; core::panicking::panic_in_cleanup
; Function Attrs: cold minsize noinline noreturn nounwind nonlazybind optsize uwtable
declare void @_ZN4core9panicking16panic_in_cleanup17h5f6bde45d17ae243E() unnamed_addr #21

; core::panicking::panic_fmt
; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_ZN4core9panicking9panic_fmt17ha4414e4328fe24a0E(ptr noundef nonnull, ptr noundef nonnull, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #19

; Function Attrs: cold noreturn nounwind memory(inaccessiblemem: write)
declare void @llvm.trap() #22

; core::slice::sort::shared::smallsort::panic_on_ord_violation
; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_ZN4core5slice4sort6shared9smallsort22panic_on_ord_violation17hc77a22a2d50782cdE() unnamed_addr #19

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #23

; core::slice::index::slice_index_fail
; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_ZN4core5slice5index16slice_index_fail17h62807bcaa490c9c1E(i64 noundef, i64 noundef, i64 noundef, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #19

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctlz.i64(i64, i1 immarg) #18

; core::slice::sort::stable::drift::sqrt_approx
; Function Attrs: nonlazybind uwtable
declare noundef i64 @_ZN4core5slice4sort6stable5drift11sqrt_approx17h72a4dc1ae46294f4E(i64 noundef) unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.usub.sat.i64(i64, i64) #18

; core::option::unwrap_failed
; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_ZN4core6option13unwrap_failed17hef2534b77b89c04fE(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #19

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #18

; __rustc::__rust_no_alloc_shim_is_unstable_v2
; Function Attrs: nounwind nonlazybind uwtable
declare void @_RNvCsdBezzDwma51_7___rustc35___rust_no_alloc_shim_is_unstable_v2() unnamed_addr #14

; __rustc::__rust_alloc
; Function Attrs: nounwind nonlazybind allockind("alloc,uninitialized,aligned") allocsize(0) uwtable
declare noalias noundef ptr @_RNvCsdBezzDwma51_7___rustc12___rust_alloc(i64 noundef, i64 allocalign noundef) unnamed_addr #24

; alloc::raw_vec::RawVecInner<A>::try_allocate_in
; Function Attrs: nonlazybind uwtable
declare void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$15try_allocate_in17had089b3ffc2704ecE"(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), i64 noundef, i1 noundef zeroext, i64 noundef range(i64 1, -9223372036854775807), i64 noundef) unnamed_addr #2

; alloc::raw_vec::handle_error
; Function Attrs: cold minsize noreturn nonlazybind optsize uwtable
declare void @_ZN5alloc7raw_vec12handle_error17h3a8c375904e593b2E(i64 noundef range(i64 0, -9223372036854775807), i64) unnamed_addr #25

; __rustc::__rust_dealloc
; Function Attrs: nounwind nonlazybind allockind("free") uwtable
declare void @_RNvCsdBezzDwma51_7___rustc14___rust_dealloc(ptr allocptr noundef, i64 noundef, i64 noundef) unnamed_addr #26

; alloc::raw_vec::RawVecInner<A>::deallocate
; Function Attrs: nonlazybind uwtable
declare void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$10deallocate17h6ddf8733b0451bb9E"(ptr noalias noundef align 8 dereferenceable(16), i64 noundef range(i64 1, -9223372036854775807), i64 noundef) unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.cttz.i16(i16, i1 immarg) #18

; hashbrown::raw::Fallibility::capacity_overflow
; Function Attrs: nonlazybind uwtable
declare { i64, i64 } @_ZN9hashbrown3raw11Fallibility17capacity_overflow17h2ba85003cd4f3895E(i1 noundef zeroext) unnamed_addr #2

; hashbrown::raw::Fallibility::alloc_err
; Function Attrs: nonlazybind uwtable
declare { i64, i64 } @_ZN9hashbrown3raw11Fallibility9alloc_err17hdec7f04e13c07ca8E(i1 noundef zeroext, i64 noundef range(i64 1, -9223372036854775807), i64 noundef) unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #17

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #27

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #28

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #28

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #28

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #28

attributes #0 = { inlinehint nofree norecurse nosync nounwind nonlazybind memory(read, inaccessiblemem: readwrite) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #1 = { cold nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #2 = { nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #3 = { nofree norecurse nosync nounwind nonlazybind memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
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
attributes #14 = { nounwind nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #15 = { cold noinline nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #16 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #17 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #18 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #19 = { cold noinline noreturn nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #20 = { mustprogress nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #21 = { cold minsize noinline noreturn nounwind nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #22 = { cold noreturn nounwind memory(inaccessiblemem: write) }
attributes #23 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #24 = { nounwind nonlazybind allockind("alloc,uninitialized,aligned") allocsize(0) uwtable "alloc-family"="__rust_alloc" "alloc-variant-zeroed"="_RNvCsdBezzDwma51_7___rustc19___rust_alloc_zeroed" "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #25 = { cold minsize noreturn nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #26 = { nounwind nonlazybind allockind("free") uwtable "alloc-family"="__rust_alloc" "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #27 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #28 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #29 = { noinline noreturn }
attributes #30 = { noreturn }
attributes #31 = { cold noreturn nounwind }
attributes #32 = { noinline }
attributes #33 = { nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 2, !"RtLibUseGOT", i32 1}
!2 = !{!"rustc version 1.93.1 (01f6ddf75 2026-02-11)"}
!3 = !{!4}
!4 = distinct !{!4, !5, !"_ZN9hashbrown3map28HashMap$LT$K$C$V$C$S$C$A$GT$3get17hde3daca946872274E: %self"}
!5 = distinct !{!5, !"_ZN9hashbrown3map28HashMap$LT$K$C$V$C$S$C$A$GT$3get17hde3daca946872274E"}
!6 = !{!7}
!7 = distinct !{!7, !5, !"_ZN9hashbrown3map28HashMap$LT$K$C$V$C$S$C$A$GT$3get17hde3daca946872274E: %k"}
!8 = !{}
!9 = !{!10}
!10 = distinct !{!10, !11, !"_ZN4core4hash11BuildHasher8hash_one17h1855698abe03691bE: %self"}
!11 = distinct !{!11, !"_ZN4core4hash11BuildHasher8hash_one17h1855698abe03691bE"}
!12 = !{!13}
!13 = distinct !{!13, !11, !"_ZN4core4hash11BuildHasher8hash_one17h1855698abe03691bE: argument 1"}
!14 = !{!15, !10, !4}
!15 = distinct !{!15, !16, !"_ZN74_$LT$std..hash..random..RandomState$u20$as$u20$core..hash..BuildHasher$GT$12build_hasher17h0f2f0c02d90c5e40E: %self"}
!16 = distinct !{!16, !"_ZN74_$LT$std..hash..random..RandomState$u20$as$u20$core..hash..BuildHasher$GT$12build_hasher17h0f2f0c02d90c5e40E"}
!17 = !{!18, !13, !7}
!18 = distinct !{!18, !16, !"_ZN74_$LT$std..hash..random..RandomState$u20$as$u20$core..hash..BuildHasher$GT$12build_hasher17h0f2f0c02d90c5e40E: %_0"}
!19 = !{!20, !13, !7}
!20 = distinct !{!20, !21, !"_ZN4core4hash5impls50_$LT$impl$u20$core..hash..Hash$u20$for$u20$i32$GT$4hash17h1aef32ef9e3c75e1E: %self"}
!21 = distinct !{!21, !"_ZN4core4hash5impls50_$LT$impl$u20$core..hash..Hash$u20$for$u20$i32$GT$4hash17h1aef32ef9e3c75e1E"}
!22 = !{!23, !24, !26, !10, !4}
!23 = distinct !{!23, !21, !"_ZN4core4hash5impls50_$LT$impl$u20$core..hash..Hash$u20$for$u20$i32$GT$4hash17h1aef32ef9e3c75e1E: %state"}
!24 = distinct !{!24, !25, !"_ZN4core4hash5impls52_$LT$impl$u20$core..hash..Hash$u20$for$u20$$RF$T$GT$4hash17h52ecffb2dabfdc07E: %self"}
!25 = distinct !{!25, !"_ZN4core4hash5impls52_$LT$impl$u20$core..hash..Hash$u20$for$u20$$RF$T$GT$4hash17h52ecffb2dabfdc07E"}
!26 = distinct !{!26, !25, !"_ZN4core4hash5impls52_$LT$impl$u20$core..hash..Hash$u20$for$u20$$RF$T$GT$4hash17h52ecffb2dabfdc07E: %state"}
!27 = !{!28}
!28 = distinct !{!28, !29, !"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$4find17h8ccb979eb3c8b261E: %self"}
!29 = distinct !{!29, !"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$4find17h8ccb979eb3c8b261E"}
!30 = !{!31}
!31 = distinct !{!31, !32, !"_ZN9hashbrown3raw13RawTableInner10find_inner17h63ff474dff1d1e61E: %self"}
!32 = distinct !{!32, !"_ZN9hashbrown3raw13RawTableInner10find_inner17h63ff474dff1d1e61E"}
!33 = !{!31, !28, !4}
!34 = !{!35, !7}
!35 = distinct !{!35, !29, !"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$4find17h8ccb979eb3c8b261E: argument 1"}
!36 = !{!37, !31, !28, !35, !4, !7}
!37 = distinct !{!37, !38, !"_ZN4core9core_arch3x864sse215_mm_loadu_si12817hacd8816d606c91f7E: %_0"}
!38 = distinct !{!38, !"_ZN4core9core_arch3x864sse215_mm_loadu_si12817hacd8816d606c91f7E"}
!39 = !{!40, !42, !44}
!40 = distinct !{!40, !41, !"_ZN4core3cmp5impls54_$LT$impl$u20$core..cmp..PartialEq$u20$for$u20$i32$GT$2eq17had97b358009ebb28E: %other"}
!41 = distinct !{!41, !"_ZN4core3cmp5impls54_$LT$impl$u20$core..cmp..PartialEq$u20$for$u20$i32$GT$2eq17had97b358009ebb28E"}
!42 = distinct !{!42, !43, !"_ZN52_$LT$Q$u20$as$u20$hashbrown..Equivalent$LT$K$GT$$GT$10equivalent17h5463d2eafb616768E: %key"}
!43 = distinct !{!43, !"_ZN52_$LT$Q$u20$as$u20$hashbrown..Equivalent$LT$K$GT$$GT$10equivalent17h5463d2eafb616768E"}
!44 = distinct !{!44, !45, !"_ZN9hashbrown3map14equivalent_key28_$u7b$$u7b$closure$u7d$$u7d$17hcd8ee0e393e2f483E: %x"}
!45 = distinct !{!45, !"_ZN9hashbrown3map14equivalent_key28_$u7b$$u7b$closure$u7d$$u7d$17hcd8ee0e393e2f483E"}
!46 = !{!47, !48, !49, !50, !31, !28, !35, !4, !7}
!47 = distinct !{!47, !41, !"_ZN4core3cmp5impls54_$LT$impl$u20$core..cmp..PartialEq$u20$for$u20$i32$GT$2eq17had97b358009ebb28E: %self"}
!48 = distinct !{!48, !43, !"_ZN52_$LT$Q$u20$as$u20$hashbrown..Equivalent$LT$K$GT$$GT$10equivalent17h5463d2eafb616768E: %self"}
!49 = distinct !{!49, !45, !"_ZN9hashbrown3map14equivalent_key28_$u7b$$u7b$closure$u7d$$u7d$17hcd8ee0e393e2f483E: %_1"}
!50 = distinct !{!50, !51, !"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$4find28_$u7b$$u7b$closure$u7d$$u7d$17hd329a06fb6164e13E: %_1"}
!51 = distinct !{!51, !"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$4find28_$u7b$$u7b$closure$u7d$$u7d$17hd329a06fb6164e13E"}
!52 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!53 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!54 = !{i8 0, i8 2}
!55 = !{!56}
!56 = distinct !{!56, !57, !"_ZN3std6thread5local17LocalKey$LT$T$GT$8try_with17hbaadd1d0225c0a95E: %self"}
!57 = distinct !{!57, !"_ZN3std6thread5local17LocalKey$LT$T$GT$8try_with17hbaadd1d0225c0a95E"}
!58 = !{!59}
!59 = distinct !{!59, !57, !"_ZN3std6thread5local17LocalKey$LT$T$GT$8try_with17hbaadd1d0225c0a95E: %_0"}
!60 = !{!59, !56}
!61 = !{!62}
!62 = distinct !{!62, !63, !"_ZN4core3ptr10swap_chunk17h902d7b0077ac05c9E: %x"}
!63 = distinct !{!63, !"_ZN4core3ptr10swap_chunk17h902d7b0077ac05c9E"}
!64 = !{!65}
!65 = distinct !{!65, !63, !"_ZN4core3ptr10swap_chunk17h902d7b0077ac05c9E: %y"}
!66 = !{!67}
!67 = distinct !{!67, !63, !"_ZN4core3ptr10swap_chunk17h902d7b0077ac05c9E: %x:It1"}
!68 = !{!69}
!69 = distinct !{!69, !63, !"_ZN4core3ptr10swap_chunk17h902d7b0077ac05c9E: %y:It1"}
!70 = !{!71}
!71 = distinct !{!71, !72, !"_ZN74_$LT$std..hash..random..RandomState$u20$as$u20$core..hash..BuildHasher$GT$12build_hasher17h0f2f0c02d90c5e40E: %self"}
!72 = distinct !{!72, !"_ZN74_$LT$std..hash..random..RandomState$u20$as$u20$core..hash..BuildHasher$GT$12build_hasher17h0f2f0c02d90c5e40E"}
!73 = !{!74}
!74 = distinct !{!74, !72, !"_ZN74_$LT$std..hash..random..RandomState$u20$as$u20$core..hash..BuildHasher$GT$12build_hasher17h0f2f0c02d90c5e40E: %_0"}
!75 = !{!76}
!76 = distinct !{!76, !77, !"_ZN4core4hash5impls50_$LT$impl$u20$core..hash..Hash$u20$for$u20$i32$GT$4hash17h1aef32ef9e3c75e1E: %self"}
!77 = distinct !{!77, !"_ZN4core4hash5impls50_$LT$impl$u20$core..hash..Hash$u20$for$u20$i32$GT$4hash17h1aef32ef9e3c75e1E"}
!78 = !{!79, !80, !82}
!79 = distinct !{!79, !77, !"_ZN4core4hash5impls50_$LT$impl$u20$core..hash..Hash$u20$for$u20$i32$GT$4hash17h1aef32ef9e3c75e1E: %state"}
!80 = distinct !{!80, !81, !"_ZN4core4hash5impls52_$LT$impl$u20$core..hash..Hash$u20$for$u20$$RF$T$GT$4hash17h52ecffb2dabfdc07E: %self"}
!81 = distinct !{!81, !"_ZN4core4hash5impls52_$LT$impl$u20$core..hash..Hash$u20$for$u20$$RF$T$GT$4hash17h52ecffb2dabfdc07E"}
!82 = distinct !{!82, !81, !"_ZN4core4hash5impls52_$LT$impl$u20$core..hash..Hash$u20$for$u20$$RF$T$GT$4hash17h52ecffb2dabfdc07E: %state"}
!83 = !{!84}
!84 = distinct !{!84, !85, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17he77f6fb165360dbcE: %a"}
!85 = distinct !{!85, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17he77f6fb165360dbcE"}
!86 = !{!87}
!87 = distinct !{!87, !85, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17he77f6fb165360dbcE: %b"}
!88 = !{!89}
!89 = distinct !{!89, !90, !"_ZN4core3ops8function5FnMut8call_mut17hfdaebbc4127ebd2fE: argument 0"}
!90 = distinct !{!90, !"_ZN4core3ops8function5FnMut8call_mut17hfdaebbc4127ebd2fE"}
!91 = !{!92}
!92 = distinct !{!92, !93, !"_ZN4core5slice4sort6shared5pivot7median317h1989c5927d84e428E: %c"}
!93 = distinct !{!93, !"_ZN4core5slice4sort6shared5pivot7median317h1989c5927d84e428E"}
!94 = !{!95}
!95 = distinct !{!95, !90, !"_ZN4core3ops8function5FnMut8call_mut17hfdaebbc4127ebd2fE: argument 1"}
!96 = !{!97}
!97 = distinct !{!97, !98, !"cmpfunc: %a"}
!98 = distinct !{!98, !"cmpfunc"}
!99 = !{!100}
!100 = distinct !{!100, !98, !"cmpfunc: %b"}
!101 = !{!102}
!102 = distinct !{!102, !103, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!103 = distinct !{!103, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!104 = !{!105}
!105 = distinct !{!105, !103, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!106 = !{!102, !97, !89, !84}
!107 = !{!105, !100, !95, !87, !92}
!108 = !{!105, !100, !95, !87}
!109 = !{!102, !97, !89, !84, !92}
!110 = !{!111, !113, !115, !117}
!111 = distinct !{!111, !112, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!112 = distinct !{!112, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!113 = distinct !{!113, !114, !"cmpfunc: %b"}
!114 = distinct !{!114, !"cmpfunc"}
!115 = distinct !{!115, !116, !"_ZN4core3ops8function5FnMut8call_mut17hfdaebbc4127ebd2fE: argument 1"}
!116 = distinct !{!116, !"_ZN4core3ops8function5FnMut8call_mut17hfdaebbc4127ebd2fE"}
!117 = distinct !{!117, !118, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17he77f6fb165360dbcE: %b"}
!118 = distinct !{!118, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17he77f6fb165360dbcE"}
!119 = !{!120, !121, !122, !123}
!120 = distinct !{!120, !112, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!121 = distinct !{!121, !114, !"cmpfunc: %a"}
!122 = distinct !{!122, !116, !"_ZN4core3ops8function5FnMut8call_mut17hfdaebbc4127ebd2fE: argument 0"}
!123 = distinct !{!123, !118, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17he77f6fb165360dbcE: %a"}
!124 = !{!125}
!125 = distinct !{!125, !126, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17he77f6fb165360dbcE: %a"}
!126 = distinct !{!126, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17he77f6fb165360dbcE"}
!127 = !{!128}
!128 = distinct !{!128, !126, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17he77f6fb165360dbcE: %b"}
!129 = !{!130}
!130 = distinct !{!130, !131, !"_ZN4core3ops8function5FnMut8call_mut17hfdaebbc4127ebd2fE: argument 0"}
!131 = distinct !{!131, !"_ZN4core3ops8function5FnMut8call_mut17hfdaebbc4127ebd2fE"}
!132 = !{!133}
!133 = distinct !{!133, !131, !"_ZN4core3ops8function5FnMut8call_mut17hfdaebbc4127ebd2fE: argument 1"}
!134 = !{!135}
!135 = distinct !{!135, !136, !"cmpfunc: %a"}
!136 = distinct !{!136, !"cmpfunc"}
!137 = !{!138}
!138 = distinct !{!138, !136, !"cmpfunc: %b"}
!139 = !{!140}
!140 = distinct !{!140, !141, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!141 = distinct !{!141, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!142 = !{!143}
!143 = distinct !{!143, !141, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!144 = !{!140, !135, !130, !125}
!145 = !{!143, !138, !133, !128}
!146 = !{!147, !149, !151, !153}
!147 = distinct !{!147, !148, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!148 = distinct !{!148, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!149 = distinct !{!149, !150, !"cmpfunc: %b"}
!150 = distinct !{!150, !"cmpfunc"}
!151 = distinct !{!151, !152, !"_ZN4core3ops8function5FnMut8call_mut17hfdaebbc4127ebd2fE: argument 1"}
!152 = distinct !{!152, !"_ZN4core3ops8function5FnMut8call_mut17hfdaebbc4127ebd2fE"}
!153 = distinct !{!153, !154, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17he77f6fb165360dbcE: %b"}
!154 = distinct !{!154, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17he77f6fb165360dbcE"}
!155 = !{!156, !157, !158, !159}
!156 = distinct !{!156, !148, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!157 = distinct !{!157, !150, !"cmpfunc: %a"}
!158 = distinct !{!158, !152, !"_ZN4core3ops8function5FnMut8call_mut17hfdaebbc4127ebd2fE: argument 0"}
!159 = distinct !{!159, !154, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17he77f6fb165360dbcE: %a"}
!160 = !{!161, !163}
!161 = distinct !{!161, !162, !"_ZN99_$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h1cb39cb50bab9592E: %self"}
!162 = distinct !{!162, !"_ZN99_$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h1cb39cb50bab9592E"}
!163 = distinct !{!163, !164, !"_ZN4core3ptr80drop_in_place$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$i32$GT$$GT$17h29b5ceebc9567873E: %_1"}
!164 = distinct !{!164, !"_ZN4core3ptr80drop_in_place$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$i32$GT$$GT$17h29b5ceebc9567873E"}
!165 = !{!166}
!166 = distinct !{!166, !167, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17he77f6fb165360dbcE: %a"}
!167 = distinct !{!167, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17he77f6fb165360dbcE"}
!168 = !{!169}
!169 = distinct !{!169, !167, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17he77f6fb165360dbcE: %b"}
!170 = !{!171}
!171 = distinct !{!171, !172, !"_ZN4core3ops8function5FnMut8call_mut17hfdaebbc4127ebd2fE: argument 0"}
!172 = distinct !{!172, !"_ZN4core3ops8function5FnMut8call_mut17hfdaebbc4127ebd2fE"}
!173 = !{!174}
!174 = distinct !{!174, !172, !"_ZN4core3ops8function5FnMut8call_mut17hfdaebbc4127ebd2fE: argument 1"}
!175 = !{!176}
!176 = distinct !{!176, !177, !"cmpfunc: %a"}
!177 = distinct !{!177, !"cmpfunc"}
!178 = !{!179}
!179 = distinct !{!179, !177, !"cmpfunc: %b"}
!180 = !{!181}
!181 = distinct !{!181, !182, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!182 = distinct !{!182, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!183 = !{!184}
!184 = distinct !{!184, !182, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!185 = !{!181, !176, !171, !166}
!186 = !{!184, !179, !174, !169}
!187 = !{!188}
!188 = distinct !{!188, !189, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17he77f6fb165360dbcE: %a"}
!189 = distinct !{!189, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17he77f6fb165360dbcE"}
!190 = !{!191}
!191 = distinct !{!191, !189, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17he77f6fb165360dbcE: %b"}
!192 = !{!193}
!193 = distinct !{!193, !194, !"_ZN4core3ops8function5FnMut8call_mut17hfdaebbc4127ebd2fE: argument 0"}
!194 = distinct !{!194, !"_ZN4core3ops8function5FnMut8call_mut17hfdaebbc4127ebd2fE"}
!195 = !{!196}
!196 = distinct !{!196, !194, !"_ZN4core3ops8function5FnMut8call_mut17hfdaebbc4127ebd2fE: argument 1"}
!197 = !{!198}
!198 = distinct !{!198, !199, !"cmpfunc: %a"}
!199 = distinct !{!199, !"cmpfunc"}
!200 = !{!201}
!201 = distinct !{!201, !199, !"cmpfunc: %b"}
!202 = !{!203}
!203 = distinct !{!203, !204, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!204 = distinct !{!204, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!205 = !{!206}
!206 = distinct !{!206, !204, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!207 = !{!203, !198, !193, !188}
!208 = !{!206, !201, !196, !191}
!209 = !{!210}
!210 = distinct !{!210, !211, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17he77f6fb165360dbcE: %a"}
!211 = distinct !{!211, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17he77f6fb165360dbcE"}
!212 = !{!213}
!213 = distinct !{!213, !211, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17he77f6fb165360dbcE: %b"}
!214 = !{!215}
!215 = distinct !{!215, !216, !"_ZN4core3ops8function5FnMut8call_mut17hfdaebbc4127ebd2fE: argument 0"}
!216 = distinct !{!216, !"_ZN4core3ops8function5FnMut8call_mut17hfdaebbc4127ebd2fE"}
!217 = !{!218}
!218 = distinct !{!218, !216, !"_ZN4core3ops8function5FnMut8call_mut17hfdaebbc4127ebd2fE: argument 1"}
!219 = !{!220}
!220 = distinct !{!220, !221, !"cmpfunc: %a"}
!221 = distinct !{!221, !"cmpfunc"}
!222 = !{!223}
!223 = distinct !{!223, !221, !"cmpfunc: %b"}
!224 = !{!225}
!225 = distinct !{!225, !226, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!226 = distinct !{!226, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!227 = !{!228}
!228 = distinct !{!228, !226, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!229 = !{!225, !220, !215, !210}
!230 = !{!228, !223, !218, !213}
!231 = !{!232}
!232 = distinct !{!232, !233, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17he77f6fb165360dbcE: %a"}
!233 = distinct !{!233, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17he77f6fb165360dbcE"}
!234 = !{!235}
!235 = distinct !{!235, !233, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17he77f6fb165360dbcE: %b"}
!236 = !{!237}
!237 = distinct !{!237, !238, !"_ZN4core3ops8function5FnMut8call_mut17hfdaebbc4127ebd2fE: argument 0"}
!238 = distinct !{!238, !"_ZN4core3ops8function5FnMut8call_mut17hfdaebbc4127ebd2fE"}
!239 = !{!240}
!240 = distinct !{!240, !238, !"_ZN4core3ops8function5FnMut8call_mut17hfdaebbc4127ebd2fE: argument 1"}
!241 = !{!242}
!242 = distinct !{!242, !243, !"cmpfunc: %a"}
!243 = distinct !{!243, !"cmpfunc"}
!244 = !{!245}
!245 = distinct !{!245, !243, !"cmpfunc: %b"}
!246 = !{!247}
!247 = distinct !{!247, !248, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!248 = distinct !{!248, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!249 = !{!250}
!250 = distinct !{!250, !248, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!251 = !{!247, !242, !237, !232}
!252 = !{!250, !245, !240, !235}
!253 = !{!254}
!254 = distinct !{!254, !255, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17he77f6fb165360dbcE: %a"}
!255 = distinct !{!255, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17he77f6fb165360dbcE"}
!256 = !{!257}
!257 = distinct !{!257, !255, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17he77f6fb165360dbcE: %b"}
!258 = !{!259}
!259 = distinct !{!259, !260, !"_ZN4core3ops8function5FnMut8call_mut17hfdaebbc4127ebd2fE: argument 0"}
!260 = distinct !{!260, !"_ZN4core3ops8function5FnMut8call_mut17hfdaebbc4127ebd2fE"}
!261 = !{!262}
!262 = distinct !{!262, !260, !"_ZN4core3ops8function5FnMut8call_mut17hfdaebbc4127ebd2fE: argument 1"}
!263 = !{!264}
!264 = distinct !{!264, !265, !"cmpfunc: %a"}
!265 = distinct !{!265, !"cmpfunc"}
!266 = !{!267}
!267 = distinct !{!267, !265, !"cmpfunc: %b"}
!268 = !{!269}
!269 = distinct !{!269, !270, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!270 = distinct !{!270, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!271 = !{!272}
!272 = distinct !{!272, !270, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!273 = !{!269, !264, !259, !254}
!274 = !{!272, !267, !262, !257}
!275 = !{!276}
!276 = distinct !{!276, !277, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17he77f6fb165360dbcE: %a"}
!277 = distinct !{!277, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17he77f6fb165360dbcE"}
!278 = !{!279}
!279 = distinct !{!279, !277, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17he77f6fb165360dbcE: %b"}
!280 = !{!281}
!281 = distinct !{!281, !282, !"_ZN4core3ops8function5FnMut8call_mut17hfdaebbc4127ebd2fE: argument 0"}
!282 = distinct !{!282, !"_ZN4core3ops8function5FnMut8call_mut17hfdaebbc4127ebd2fE"}
!283 = !{!284}
!284 = distinct !{!284, !282, !"_ZN4core3ops8function5FnMut8call_mut17hfdaebbc4127ebd2fE: argument 1"}
!285 = !{!286}
!286 = distinct !{!286, !287, !"cmpfunc: %a"}
!287 = distinct !{!287, !"cmpfunc"}
!288 = !{!289}
!289 = distinct !{!289, !287, !"cmpfunc: %b"}
!290 = !{!291}
!291 = distinct !{!291, !292, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!292 = distinct !{!292, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!293 = !{!294}
!294 = distinct !{!294, !292, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!295 = !{!291, !286, !281, !276}
!296 = !{!294, !289, !284, !279}
!297 = !{!298}
!298 = distinct !{!298, !299, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17he77f6fb165360dbcE: %a"}
!299 = distinct !{!299, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17he77f6fb165360dbcE"}
!300 = !{!301}
!301 = distinct !{!301, !299, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17he77f6fb165360dbcE: %b"}
!302 = !{!303}
!303 = distinct !{!303, !304, !"_ZN4core3ops8function5FnMut8call_mut17hfdaebbc4127ebd2fE: argument 0"}
!304 = distinct !{!304, !"_ZN4core3ops8function5FnMut8call_mut17hfdaebbc4127ebd2fE"}
!305 = !{!306}
!306 = distinct !{!306, !304, !"_ZN4core3ops8function5FnMut8call_mut17hfdaebbc4127ebd2fE: argument 1"}
!307 = !{!308}
!308 = distinct !{!308, !309, !"cmpfunc: %a"}
!309 = distinct !{!309, !"cmpfunc"}
!310 = !{!311}
!311 = distinct !{!311, !309, !"cmpfunc: %b"}
!312 = !{!313}
!313 = distinct !{!313, !314, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!314 = distinct !{!314, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!315 = !{!316}
!316 = distinct !{!316, !314, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!317 = !{!313, !308, !303, !298}
!318 = !{!316, !311, !306, !301}
!319 = !{!320}
!320 = distinct !{!320, !321, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17he77f6fb165360dbcE: %a"}
!321 = distinct !{!321, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17he77f6fb165360dbcE"}
!322 = !{!323}
!323 = distinct !{!323, !321, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17he77f6fb165360dbcE: %b"}
!324 = !{!325}
!325 = distinct !{!325, !326, !"_ZN4core3ops8function5FnMut8call_mut17hfdaebbc4127ebd2fE: argument 0"}
!326 = distinct !{!326, !"_ZN4core3ops8function5FnMut8call_mut17hfdaebbc4127ebd2fE"}
!327 = !{!328}
!328 = distinct !{!328, !326, !"_ZN4core3ops8function5FnMut8call_mut17hfdaebbc4127ebd2fE: argument 1"}
!329 = !{!330}
!330 = distinct !{!330, !331, !"cmpfunc: %a"}
!331 = distinct !{!331, !"cmpfunc"}
!332 = !{!333}
!333 = distinct !{!333, !331, !"cmpfunc: %b"}
!334 = !{!335}
!335 = distinct !{!335, !336, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!336 = distinct !{!336, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!337 = !{!338}
!338 = distinct !{!338, !336, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!339 = !{!335, !330, !325, !320}
!340 = !{!338, !333, !328, !323}
!341 = !{!342}
!342 = distinct !{!342, !343, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17he77f6fb165360dbcE: %a"}
!343 = distinct !{!343, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17he77f6fb165360dbcE"}
!344 = !{!345}
!345 = distinct !{!345, !343, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17he77f6fb165360dbcE: %b"}
!346 = !{!347}
!347 = distinct !{!347, !348, !"_ZN4core3ops8function5FnMut8call_mut17hfdaebbc4127ebd2fE: argument 0"}
!348 = distinct !{!348, !"_ZN4core3ops8function5FnMut8call_mut17hfdaebbc4127ebd2fE"}
!349 = !{!350}
!350 = distinct !{!350, !348, !"_ZN4core3ops8function5FnMut8call_mut17hfdaebbc4127ebd2fE: argument 1"}
!351 = !{!352}
!352 = distinct !{!352, !353, !"cmpfunc: %a"}
!353 = distinct !{!353, !"cmpfunc"}
!354 = !{!355}
!355 = distinct !{!355, !353, !"cmpfunc: %b"}
!356 = !{!357}
!357 = distinct !{!357, !358, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!358 = distinct !{!358, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!359 = !{!360}
!360 = distinct !{!360, !358, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!361 = !{!357, !352, !347, !342}
!362 = !{!360, !355, !350, !345}
!363 = !{!364}
!364 = distinct !{!364, !365, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17he77f6fb165360dbcE: %a"}
!365 = distinct !{!365, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17he77f6fb165360dbcE"}
!366 = !{!367}
!367 = distinct !{!367, !365, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17he77f6fb165360dbcE: %b"}
!368 = !{!369}
!369 = distinct !{!369, !370, !"_ZN4core3ops8function5FnMut8call_mut17hfdaebbc4127ebd2fE: argument 0"}
!370 = distinct !{!370, !"_ZN4core3ops8function5FnMut8call_mut17hfdaebbc4127ebd2fE"}
!371 = !{!372}
!372 = distinct !{!372, !370, !"_ZN4core3ops8function5FnMut8call_mut17hfdaebbc4127ebd2fE: argument 1"}
!373 = !{!374}
!374 = distinct !{!374, !375, !"cmpfunc: %a"}
!375 = distinct !{!375, !"cmpfunc"}
!376 = !{!377}
!377 = distinct !{!377, !375, !"cmpfunc: %b"}
!378 = !{!379}
!379 = distinct !{!379, !380, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!380 = distinct !{!380, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!381 = !{!382}
!382 = distinct !{!382, !380, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!383 = !{!379, !374, !369, !364}
!384 = !{!382, !377, !372, !367}
!385 = !{!386}
!386 = distinct !{!386, !387, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17he77f6fb165360dbcE: %a"}
!387 = distinct !{!387, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17he77f6fb165360dbcE"}
!388 = !{!389}
!389 = distinct !{!389, !387, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17he77f6fb165360dbcE: %b"}
!390 = !{!391}
!391 = distinct !{!391, !392, !"_ZN4core3ops8function5FnMut8call_mut17hfdaebbc4127ebd2fE: argument 0"}
!392 = distinct !{!392, !"_ZN4core3ops8function5FnMut8call_mut17hfdaebbc4127ebd2fE"}
!393 = !{!394}
!394 = distinct !{!394, !392, !"_ZN4core3ops8function5FnMut8call_mut17hfdaebbc4127ebd2fE: argument 1"}
!395 = !{!396}
!396 = distinct !{!396, !397, !"cmpfunc: %a"}
!397 = distinct !{!397, !"cmpfunc"}
!398 = !{!399}
!399 = distinct !{!399, !397, !"cmpfunc: %b"}
!400 = !{!401}
!401 = distinct !{!401, !402, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!402 = distinct !{!402, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!403 = !{!404}
!404 = distinct !{!404, !402, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!405 = !{!401, !396, !391, !386}
!406 = !{!404, !399, !394, !389}
!407 = !{!408}
!408 = distinct !{!408, !409, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17he77f6fb165360dbcE: %a"}
!409 = distinct !{!409, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17he77f6fb165360dbcE"}
!410 = !{!411}
!411 = distinct !{!411, !409, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17he77f6fb165360dbcE: %b"}
!412 = !{!413}
!413 = distinct !{!413, !414, !"_ZN4core3ops8function5FnMut8call_mut17hfdaebbc4127ebd2fE: argument 0"}
!414 = distinct !{!414, !"_ZN4core3ops8function5FnMut8call_mut17hfdaebbc4127ebd2fE"}
!415 = !{!416}
!416 = distinct !{!416, !414, !"_ZN4core3ops8function5FnMut8call_mut17hfdaebbc4127ebd2fE: argument 1"}
!417 = !{!418}
!418 = distinct !{!418, !419, !"cmpfunc: %a"}
!419 = distinct !{!419, !"cmpfunc"}
!420 = !{!421}
!421 = distinct !{!421, !419, !"cmpfunc: %b"}
!422 = !{!423}
!423 = distinct !{!423, !424, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!424 = distinct !{!424, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!425 = !{!426}
!426 = distinct !{!426, !424, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!427 = !{!423, !418, !413, !408}
!428 = !{!426, !421, !416, !411}
!429 = !{!430}
!430 = distinct !{!430, !431, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17he77f6fb165360dbcE: %a"}
!431 = distinct !{!431, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17he77f6fb165360dbcE"}
!432 = !{!433}
!433 = distinct !{!433, !431, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17he77f6fb165360dbcE: %b"}
!434 = !{!435}
!435 = distinct !{!435, !436, !"_ZN4core3ops8function5FnMut8call_mut17hfdaebbc4127ebd2fE: argument 0"}
!436 = distinct !{!436, !"_ZN4core3ops8function5FnMut8call_mut17hfdaebbc4127ebd2fE"}
!437 = !{!438}
!438 = distinct !{!438, !436, !"_ZN4core3ops8function5FnMut8call_mut17hfdaebbc4127ebd2fE: argument 1"}
!439 = !{!440}
!440 = distinct !{!440, !441, !"cmpfunc: %a"}
!441 = distinct !{!441, !"cmpfunc"}
!442 = !{!443}
!443 = distinct !{!443, !441, !"cmpfunc: %b"}
!444 = !{!445}
!445 = distinct !{!445, !446, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!446 = distinct !{!446, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!447 = !{!448}
!448 = distinct !{!448, !446, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!449 = !{!445, !440, !435, !430}
!450 = !{!448, !443, !438, !433}
!451 = !{!452}
!452 = distinct !{!452, !453, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17he77f6fb165360dbcE: %a"}
!453 = distinct !{!453, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17he77f6fb165360dbcE"}
!454 = !{!455}
!455 = distinct !{!455, !453, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17he77f6fb165360dbcE: %b"}
!456 = !{!457}
!457 = distinct !{!457, !458, !"_ZN4core3ops8function5FnMut8call_mut17hfdaebbc4127ebd2fE: argument 0"}
!458 = distinct !{!458, !"_ZN4core3ops8function5FnMut8call_mut17hfdaebbc4127ebd2fE"}
!459 = !{!460}
!460 = distinct !{!460, !458, !"_ZN4core3ops8function5FnMut8call_mut17hfdaebbc4127ebd2fE: argument 1"}
!461 = !{!462}
!462 = distinct !{!462, !463, !"cmpfunc: %a"}
!463 = distinct !{!463, !"cmpfunc"}
!464 = !{!465}
!465 = distinct !{!465, !463, !"cmpfunc: %b"}
!466 = !{!467}
!467 = distinct !{!467, !468, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!468 = distinct !{!468, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!469 = !{!470}
!470 = distinct !{!470, !468, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!471 = !{!467, !462, !457, !452}
!472 = !{!470, !465, !460, !455}
!473 = !{!474}
!474 = distinct !{!474, !475, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17he77f6fb165360dbcE: %a"}
!475 = distinct !{!475, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17he77f6fb165360dbcE"}
!476 = !{!477}
!477 = distinct !{!477, !475, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17he77f6fb165360dbcE: %b"}
!478 = !{!479}
!479 = distinct !{!479, !480, !"_ZN4core3ops8function5FnMut8call_mut17hfdaebbc4127ebd2fE: argument 0"}
!480 = distinct !{!480, !"_ZN4core3ops8function5FnMut8call_mut17hfdaebbc4127ebd2fE"}
!481 = !{!482}
!482 = distinct !{!482, !480, !"_ZN4core3ops8function5FnMut8call_mut17hfdaebbc4127ebd2fE: argument 1"}
!483 = !{!484}
!484 = distinct !{!484, !485, !"cmpfunc: %a"}
!485 = distinct !{!485, !"cmpfunc"}
!486 = !{!487}
!487 = distinct !{!487, !485, !"cmpfunc: %b"}
!488 = !{!489}
!489 = distinct !{!489, !490, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!490 = distinct !{!490, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!491 = !{!492}
!492 = distinct !{!492, !490, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!493 = !{!489, !484, !479, !474}
!494 = !{!492, !487, !482, !477}
!495 = !{!496}
!496 = distinct !{!496, !497, !"_ZN4core5slice4sort6shared9smallsort19bidirectional_merge17ha5b44c109f16da34E: %v.0"}
!497 = distinct !{!497, !"_ZN4core5slice4sort6shared9smallsort19bidirectional_merge17ha5b44c109f16da34E"}
!498 = !{!499}
!499 = distinct !{!499, !500, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17he77f6fb165360dbcE: %a"}
!500 = distinct !{!500, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17he77f6fb165360dbcE"}
!501 = !{!502}
!502 = distinct !{!502, !500, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17he77f6fb165360dbcE: %b"}
!503 = !{!504}
!504 = distinct !{!504, !505, !"_ZN4core3ops8function5FnMut8call_mut17hfdaebbc4127ebd2fE: argument 0"}
!505 = distinct !{!505, !"_ZN4core3ops8function5FnMut8call_mut17hfdaebbc4127ebd2fE"}
!506 = !{!507}
!507 = distinct !{!507, !508, !"_ZN4core5slice4sort6shared9smallsort8merge_up17h8c1eb54c25e1e75cE: %_0"}
!508 = distinct !{!508, !"_ZN4core5slice4sort6shared9smallsort8merge_up17h8c1eb54c25e1e75cE"}
!509 = !{!510}
!510 = distinct !{!510, !505, !"_ZN4core3ops8function5FnMut8call_mut17hfdaebbc4127ebd2fE: argument 1"}
!511 = !{!512}
!512 = distinct !{!512, !513, !"cmpfunc: %a"}
!513 = distinct !{!513, !"cmpfunc"}
!514 = !{!515}
!515 = distinct !{!515, !513, !"cmpfunc: %b"}
!516 = !{!517}
!517 = distinct !{!517, !518, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!518 = distinct !{!518, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!519 = !{!520}
!520 = distinct !{!520, !518, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!521 = !{!517, !512, !504, !499, !496}
!522 = !{!520, !515, !510, !502, !507}
!523 = !{!520, !515, !510, !502, !496}
!524 = !{!517, !512, !504, !499, !507}
!525 = !{!507, !526, !496}
!526 = distinct !{!526, !508, !"_ZN4core5slice4sort6shared9smallsort8merge_up17h8c1eb54c25e1e75cE: %is_less"}
!527 = !{!528}
!528 = distinct !{!528, !529, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17he77f6fb165360dbcE: %a"}
!529 = distinct !{!529, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17he77f6fb165360dbcE"}
!530 = !{!531}
!531 = distinct !{!531, !529, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17he77f6fb165360dbcE: %b"}
!532 = !{!533}
!533 = distinct !{!533, !534, !"_ZN4core3ops8function5FnMut8call_mut17hfdaebbc4127ebd2fE: argument 0"}
!534 = distinct !{!534, !"_ZN4core3ops8function5FnMut8call_mut17hfdaebbc4127ebd2fE"}
!535 = !{!536}
!536 = distinct !{!536, !537, !"_ZN4core5slice4sort6shared9smallsort10merge_down17hf04f9d4747dc391bE: %_0"}
!537 = distinct !{!537, !"_ZN4core5slice4sort6shared9smallsort10merge_down17hf04f9d4747dc391bE"}
!538 = !{!539}
!539 = distinct !{!539, !534, !"_ZN4core3ops8function5FnMut8call_mut17hfdaebbc4127ebd2fE: argument 1"}
!540 = !{!541}
!541 = distinct !{!541, !542, !"cmpfunc: %a"}
!542 = distinct !{!542, !"cmpfunc"}
!543 = !{!544}
!544 = distinct !{!544, !542, !"cmpfunc: %b"}
!545 = !{!546}
!546 = distinct !{!546, !547, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!547 = distinct !{!547, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!548 = !{!549}
!549 = distinct !{!549, !547, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!550 = !{!546, !541, !533, !528, !496}
!551 = !{!549, !544, !539, !531, !536}
!552 = !{!549, !544, !539, !531, !496}
!553 = !{!546, !541, !533, !528, !536}
!554 = !{!536, !555, !496}
!555 = distinct !{!555, !537, !"_ZN4core5slice4sort6shared9smallsort10merge_down17hf04f9d4747dc391bE: %is_less"}
!556 = !{!557}
!557 = distinct !{!557, !500, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17he77f6fb165360dbcE: %a:It1"}
!558 = !{!559}
!559 = distinct !{!559, !500, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17he77f6fb165360dbcE: %b:It1"}
!560 = !{!561}
!561 = distinct !{!561, !505, !"_ZN4core3ops8function5FnMut8call_mut17hfdaebbc4127ebd2fE: argument 0:It1"}
!562 = !{!563}
!563 = distinct !{!563, !505, !"_ZN4core3ops8function5FnMut8call_mut17hfdaebbc4127ebd2fE: argument 1:It1"}
!564 = !{!565}
!565 = distinct !{!565, !513, !"cmpfunc: %a:It1"}
!566 = !{!567}
!567 = distinct !{!567, !513, !"cmpfunc: %b:It1"}
!568 = !{!569}
!569 = distinct !{!569, !518, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self:It1"}
!570 = !{!571}
!571 = distinct !{!571, !518, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other:It1"}
!572 = !{!569, !565, !561, !557, !496}
!573 = !{!571, !567, !563, !559, !507}
!574 = !{!571, !567, !563, !559, !496}
!575 = !{!569, !565, !561, !557, !507}
!576 = !{!577}
!577 = distinct !{!577, !529, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17he77f6fb165360dbcE: %a:It1"}
!578 = !{!579}
!579 = distinct !{!579, !529, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17he77f6fb165360dbcE: %b:It1"}
!580 = !{!581}
!581 = distinct !{!581, !534, !"_ZN4core3ops8function5FnMut8call_mut17hfdaebbc4127ebd2fE: argument 0:It1"}
!582 = !{!583}
!583 = distinct !{!583, !534, !"_ZN4core3ops8function5FnMut8call_mut17hfdaebbc4127ebd2fE: argument 1:It1"}
!584 = !{!585}
!585 = distinct !{!585, !542, !"cmpfunc: %a:It1"}
!586 = !{!587}
!587 = distinct !{!587, !542, !"cmpfunc: %b:It1"}
!588 = !{!589}
!589 = distinct !{!589, !547, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self:It1"}
!590 = !{!591}
!591 = distinct !{!591, !547, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other:It1"}
!592 = !{!589, !585, !581, !577, !496}
!593 = !{!591, !587, !583, !579, !536}
!594 = !{!591, !587, !583, !579, !496}
!595 = !{!589, !585, !581, !577, !536}
!596 = !{!597}
!597 = distinct !{!597, !500, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17he77f6fb165360dbcE: %a:It2"}
!598 = !{!599}
!599 = distinct !{!599, !500, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17he77f6fb165360dbcE: %b:It2"}
!600 = !{!601}
!601 = distinct !{!601, !505, !"_ZN4core3ops8function5FnMut8call_mut17hfdaebbc4127ebd2fE: argument 0:It2"}
!602 = !{!603}
!603 = distinct !{!603, !505, !"_ZN4core3ops8function5FnMut8call_mut17hfdaebbc4127ebd2fE: argument 1:It2"}
!604 = !{!605}
!605 = distinct !{!605, !513, !"cmpfunc: %a:It2"}
!606 = !{!607}
!607 = distinct !{!607, !513, !"cmpfunc: %b:It2"}
!608 = !{!609}
!609 = distinct !{!609, !518, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self:It2"}
!610 = !{!611}
!611 = distinct !{!611, !518, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other:It2"}
!612 = !{!609, !605, !601, !597, !496}
!613 = !{!611, !607, !603, !599, !507}
!614 = !{!611, !607, !603, !599, !496}
!615 = !{!609, !605, !601, !597, !507}
!616 = !{!617}
!617 = distinct !{!617, !529, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17he77f6fb165360dbcE: %a:It2"}
!618 = !{!619}
!619 = distinct !{!619, !529, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17he77f6fb165360dbcE: %b:It2"}
!620 = !{!621}
!621 = distinct !{!621, !534, !"_ZN4core3ops8function5FnMut8call_mut17hfdaebbc4127ebd2fE: argument 0:It2"}
!622 = !{!623}
!623 = distinct !{!623, !534, !"_ZN4core3ops8function5FnMut8call_mut17hfdaebbc4127ebd2fE: argument 1:It2"}
!624 = !{!625}
!625 = distinct !{!625, !542, !"cmpfunc: %a:It2"}
!626 = !{!627}
!627 = distinct !{!627, !542, !"cmpfunc: %b:It2"}
!628 = !{!629}
!629 = distinct !{!629, !547, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self:It2"}
!630 = !{!631}
!631 = distinct !{!631, !547, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other:It2"}
!632 = !{!629, !625, !621, !617, !496}
!633 = !{!631, !627, !623, !619, !536}
!634 = !{!631, !627, !623, !619, !496}
!635 = !{!629, !625, !621, !617, !536}
!636 = !{!637}
!637 = distinct !{!637, !500, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17he77f6fb165360dbcE: %a:It3"}
!638 = !{!639}
!639 = distinct !{!639, !500, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17he77f6fb165360dbcE: %b:It3"}
!640 = !{!641}
!641 = distinct !{!641, !505, !"_ZN4core3ops8function5FnMut8call_mut17hfdaebbc4127ebd2fE: argument 0:It3"}
!642 = !{!643}
!643 = distinct !{!643, !505, !"_ZN4core3ops8function5FnMut8call_mut17hfdaebbc4127ebd2fE: argument 1:It3"}
!644 = !{!645}
!645 = distinct !{!645, !513, !"cmpfunc: %a:It3"}
!646 = !{!647}
!647 = distinct !{!647, !513, !"cmpfunc: %b:It3"}
!648 = !{!649}
!649 = distinct !{!649, !518, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self:It3"}
!650 = !{!651}
!651 = distinct !{!651, !518, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other:It3"}
!652 = !{!649, !645, !641, !637, !496}
!653 = !{!651, !647, !643, !639, !507}
!654 = !{!651, !647, !643, !639, !496}
!655 = !{!649, !645, !641, !637, !507}
!656 = !{!657}
!657 = distinct !{!657, !529, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17he77f6fb165360dbcE: %a:It3"}
!658 = !{!659}
!659 = distinct !{!659, !529, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17he77f6fb165360dbcE: %b:It3"}
!660 = !{!661}
!661 = distinct !{!661, !534, !"_ZN4core3ops8function5FnMut8call_mut17hfdaebbc4127ebd2fE: argument 0:It3"}
!662 = !{!663}
!663 = distinct !{!663, !534, !"_ZN4core3ops8function5FnMut8call_mut17hfdaebbc4127ebd2fE: argument 1:It3"}
!664 = !{!665}
!665 = distinct !{!665, !542, !"cmpfunc: %a:It3"}
!666 = !{!667}
!667 = distinct !{!667, !542, !"cmpfunc: %b:It3"}
!668 = !{!669}
!669 = distinct !{!669, !547, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self:It3"}
!670 = !{!671}
!671 = distinct !{!671, !547, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other:It3"}
!672 = !{!669, !665, !661, !657, !496}
!673 = !{!671, !667, !663, !659, !536}
!674 = !{!671, !667, !663, !659, !496}
!675 = !{!669, !665, !661, !657, !536}
!676 = !{!"branch_weights", i32 4001, i32 4000000}
!677 = !{!678}
!678 = distinct !{!678, !679, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17he77f6fb165360dbcE: %a"}
!679 = distinct !{!679, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17he77f6fb165360dbcE"}
!680 = !{!681}
!681 = distinct !{!681, !679, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17he77f6fb165360dbcE: %b"}
!682 = !{!683}
!683 = distinct !{!683, !684, !"_ZN4core3ops8function5FnMut8call_mut17hfdaebbc4127ebd2fE: argument 0"}
!684 = distinct !{!684, !"_ZN4core3ops8function5FnMut8call_mut17hfdaebbc4127ebd2fE"}
!685 = !{!686}
!686 = distinct !{!686, !687, !"_ZN4core5slice4sort6shared9smallsort8merge_up17h8c1eb54c25e1e75cE: %_0"}
!687 = distinct !{!687, !"_ZN4core5slice4sort6shared9smallsort8merge_up17h8c1eb54c25e1e75cE"}
!688 = !{!689}
!689 = distinct !{!689, !684, !"_ZN4core3ops8function5FnMut8call_mut17hfdaebbc4127ebd2fE: argument 1"}
!690 = !{!691}
!691 = distinct !{!691, !692, !"cmpfunc: %a"}
!692 = distinct !{!692, !"cmpfunc"}
!693 = !{!694}
!694 = distinct !{!694, !692, !"cmpfunc: %b"}
!695 = !{!696}
!696 = distinct !{!696, !697, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!697 = distinct !{!697, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!698 = !{!699}
!699 = distinct !{!699, !697, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!700 = !{!696, !691, !683, !678}
!701 = !{!699, !694, !689, !681, !686}
!702 = !{!699, !694, !689, !681}
!703 = !{!696, !691, !683, !678, !686}
!704 = !{!686, !705}
!705 = distinct !{!705, !687, !"_ZN4core5slice4sort6shared9smallsort8merge_up17h8c1eb54c25e1e75cE: %is_less"}
!706 = !{!707}
!707 = distinct !{!707, !708, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17he77f6fb165360dbcE: %a"}
!708 = distinct !{!708, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17he77f6fb165360dbcE"}
!709 = !{!710}
!710 = distinct !{!710, !708, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17he77f6fb165360dbcE: %b"}
!711 = !{!712}
!712 = distinct !{!712, !713, !"_ZN4core3ops8function5FnMut8call_mut17hfdaebbc4127ebd2fE: argument 0"}
!713 = distinct !{!713, !"_ZN4core3ops8function5FnMut8call_mut17hfdaebbc4127ebd2fE"}
!714 = !{!715}
!715 = distinct !{!715, !716, !"_ZN4core5slice4sort6shared9smallsort10merge_down17hf04f9d4747dc391bE: %_0"}
!716 = distinct !{!716, !"_ZN4core5slice4sort6shared9smallsort10merge_down17hf04f9d4747dc391bE"}
!717 = !{!718}
!718 = distinct !{!718, !713, !"_ZN4core3ops8function5FnMut8call_mut17hfdaebbc4127ebd2fE: argument 1"}
!719 = !{!720}
!720 = distinct !{!720, !721, !"cmpfunc: %a"}
!721 = distinct !{!721, !"cmpfunc"}
!722 = !{!723}
!723 = distinct !{!723, !721, !"cmpfunc: %b"}
!724 = !{!725}
!725 = distinct !{!725, !726, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!726 = distinct !{!726, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!727 = !{!728}
!728 = distinct !{!728, !726, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!729 = !{!725, !720, !712, !707}
!730 = !{!728, !723, !718, !710, !715}
!731 = !{!728, !723, !718, !710}
!732 = !{!725, !720, !712, !707, !715}
!733 = !{!715, !734}
!734 = distinct !{!734, !716, !"_ZN4core5slice4sort6shared9smallsort10merge_down17hf04f9d4747dc391bE: %is_less"}
!735 = !{!736}
!736 = distinct !{!736, !737, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17he77f6fb165360dbcE: %a"}
!737 = distinct !{!737, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17he77f6fb165360dbcE"}
!738 = !{!739}
!739 = distinct !{!739, !737, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17he77f6fb165360dbcE: %b"}
!740 = !{!741}
!741 = distinct !{!741, !742, !"_ZN4core3ops8function5FnMut8call_mut17hfdaebbc4127ebd2fE: argument 0"}
!742 = distinct !{!742, !"_ZN4core3ops8function5FnMut8call_mut17hfdaebbc4127ebd2fE"}
!743 = !{!744}
!744 = distinct !{!744, !742, !"_ZN4core3ops8function5FnMut8call_mut17hfdaebbc4127ebd2fE: argument 1"}
!745 = !{!746}
!746 = distinct !{!746, !747, !"cmpfunc: %a"}
!747 = distinct !{!747, !"cmpfunc"}
!748 = !{!749}
!749 = distinct !{!749, !747, !"cmpfunc: %b"}
!750 = !{!751}
!751 = distinct !{!751, !752, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!752 = distinct !{!752, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!753 = !{!754}
!754 = distinct !{!754, !752, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!755 = !{!751, !746, !741, !736}
!756 = !{!754, !749, !744, !739}
!757 = !{!758, !760, !762, !764}
!758 = distinct !{!758, !759, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!759 = distinct !{!759, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!760 = distinct !{!760, !761, !"cmpfunc: %b"}
!761 = distinct !{!761, !"cmpfunc"}
!762 = distinct !{!762, !763, !"_ZN4core3ops8function5FnMut8call_mut17hfdaebbc4127ebd2fE: argument 1"}
!763 = distinct !{!763, !"_ZN4core3ops8function5FnMut8call_mut17hfdaebbc4127ebd2fE"}
!764 = distinct !{!764, !765, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17he77f6fb165360dbcE: %b"}
!765 = distinct !{!765, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17he77f6fb165360dbcE"}
!766 = !{!767, !768, !769, !770}
!767 = distinct !{!767, !759, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!768 = distinct !{!768, !761, !"cmpfunc: %a"}
!769 = distinct !{!769, !763, !"_ZN4core3ops8function5FnMut8call_mut17hfdaebbc4127ebd2fE: argument 0"}
!770 = distinct !{!770, !765, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17he77f6fb165360dbcE: %a"}
!771 = !{!772, !774}
!772 = distinct !{!772, !773, !"_ZN99_$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h1cb39cb50bab9592E: %self"}
!773 = distinct !{!773, !"_ZN99_$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h1cb39cb50bab9592E"}
!774 = distinct !{!774, !775, !"_ZN4core3ptr80drop_in_place$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$i32$GT$$GT$17h29b5ceebc9567873E: %_1"}
!775 = distinct !{!775, !"_ZN4core3ptr80drop_in_place$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$i32$GT$$GT$17h29b5ceebc9567873E"}
!776 = !{!777}
!777 = distinct !{!777, !778, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17he77f6fb165360dbcE: %a"}
!778 = distinct !{!778, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17he77f6fb165360dbcE"}
!779 = !{!780}
!780 = distinct !{!780, !778, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17he77f6fb165360dbcE: %b"}
!781 = !{!782}
!782 = distinct !{!782, !783, !"_ZN4core3ops8function5FnMut8call_mut17hfdaebbc4127ebd2fE: argument 0"}
!783 = distinct !{!783, !"_ZN4core3ops8function5FnMut8call_mut17hfdaebbc4127ebd2fE"}
!784 = !{!785}
!785 = distinct !{!785, !783, !"_ZN4core3ops8function5FnMut8call_mut17hfdaebbc4127ebd2fE: argument 1"}
!786 = !{!787}
!787 = distinct !{!787, !788, !"cmpfunc: %a"}
!788 = distinct !{!788, !"cmpfunc"}
!789 = !{!790}
!790 = distinct !{!790, !788, !"cmpfunc: %b"}
!791 = !{!792}
!792 = distinct !{!792, !793, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!793 = distinct !{!793, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!794 = !{!795}
!795 = distinct !{!795, !793, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!796 = !{!792, !787, !782, !777}
!797 = !{!795, !790, !785, !780}
!798 = !{!799}
!799 = distinct !{!799, !800, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17he77f6fb165360dbcE: %a"}
!800 = distinct !{!800, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17he77f6fb165360dbcE"}
!801 = !{!802}
!802 = distinct !{!802, !800, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17he77f6fb165360dbcE: %b"}
!803 = !{!804}
!804 = distinct !{!804, !805, !"_ZN4core3ops8function5FnMut8call_mut17hfdaebbc4127ebd2fE: argument 0"}
!805 = distinct !{!805, !"_ZN4core3ops8function5FnMut8call_mut17hfdaebbc4127ebd2fE"}
!806 = !{!807}
!807 = distinct !{!807, !805, !"_ZN4core3ops8function5FnMut8call_mut17hfdaebbc4127ebd2fE: argument 1"}
!808 = !{!809}
!809 = distinct !{!809, !810, !"cmpfunc: %a"}
!810 = distinct !{!810, !"cmpfunc"}
!811 = !{!812}
!812 = distinct !{!812, !810, !"cmpfunc: %b"}
!813 = !{!814}
!814 = distinct !{!814, !815, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!815 = distinct !{!815, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!816 = !{!817}
!817 = distinct !{!817, !815, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!818 = !{!814, !809, !804, !799}
!819 = !{!817, !812, !807, !802}
!820 = !{!821}
!821 = distinct !{!821, !822, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17he77f6fb165360dbcE: %a"}
!822 = distinct !{!822, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17he77f6fb165360dbcE"}
!823 = !{!824}
!824 = distinct !{!824, !822, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17he77f6fb165360dbcE: %b"}
!825 = !{!826}
!826 = distinct !{!826, !827, !"_ZN4core3ops8function5FnMut8call_mut17hfdaebbc4127ebd2fE: argument 0"}
!827 = distinct !{!827, !"_ZN4core3ops8function5FnMut8call_mut17hfdaebbc4127ebd2fE"}
!828 = !{!829}
!829 = distinct !{!829, !827, !"_ZN4core3ops8function5FnMut8call_mut17hfdaebbc4127ebd2fE: argument 1"}
!830 = !{!831}
!831 = distinct !{!831, !832, !"cmpfunc: %a"}
!832 = distinct !{!832, !"cmpfunc"}
!833 = !{!834}
!834 = distinct !{!834, !832, !"cmpfunc: %b"}
!835 = !{!836}
!836 = distinct !{!836, !837, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!837 = distinct !{!837, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!838 = !{!839}
!839 = distinct !{!839, !837, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!840 = !{!836, !831, !826, !821}
!841 = !{!839, !834, !829, !824}
!842 = !{!843}
!843 = distinct !{!843, !844, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17he77f6fb165360dbcE: %a"}
!844 = distinct !{!844, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17he77f6fb165360dbcE"}
!845 = !{!846}
!846 = distinct !{!846, !844, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17he77f6fb165360dbcE: %b"}
!847 = !{!848}
!848 = distinct !{!848, !849, !"_ZN4core3ops8function5FnMut8call_mut17hfdaebbc4127ebd2fE: argument 0"}
!849 = distinct !{!849, !"_ZN4core3ops8function5FnMut8call_mut17hfdaebbc4127ebd2fE"}
!850 = !{!851}
!851 = distinct !{!851, !849, !"_ZN4core3ops8function5FnMut8call_mut17hfdaebbc4127ebd2fE: argument 1"}
!852 = !{!853}
!853 = distinct !{!853, !854, !"cmpfunc: %a"}
!854 = distinct !{!854, !"cmpfunc"}
!855 = !{!856}
!856 = distinct !{!856, !854, !"cmpfunc: %b"}
!857 = !{!858}
!858 = distinct !{!858, !859, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!859 = distinct !{!859, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!860 = !{!861}
!861 = distinct !{!861, !859, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!862 = !{!858, !853, !848, !843}
!863 = !{!861, !856, !851, !846}
!864 = !{!865}
!865 = distinct !{!865, !866, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17he77f6fb165360dbcE: %a"}
!866 = distinct !{!866, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17he77f6fb165360dbcE"}
!867 = !{!868}
!868 = distinct !{!868, !866, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17he77f6fb165360dbcE: %b"}
!869 = !{!870}
!870 = distinct !{!870, !871, !"_ZN4core3ops8function5FnMut8call_mut17hfdaebbc4127ebd2fE: argument 0"}
!871 = distinct !{!871, !"_ZN4core3ops8function5FnMut8call_mut17hfdaebbc4127ebd2fE"}
!872 = !{!873}
!873 = distinct !{!873, !871, !"_ZN4core3ops8function5FnMut8call_mut17hfdaebbc4127ebd2fE: argument 1"}
!874 = !{!875}
!875 = distinct !{!875, !876, !"cmpfunc: %a"}
!876 = distinct !{!876, !"cmpfunc"}
!877 = !{!878}
!878 = distinct !{!878, !876, !"cmpfunc: %b"}
!879 = !{!880}
!880 = distinct !{!880, !881, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!881 = distinct !{!881, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!882 = !{!883}
!883 = distinct !{!883, !881, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!884 = !{!880, !875, !870, !865}
!885 = !{!883, !878, !873, !868}
!886 = !{!887}
!887 = distinct !{!887, !888, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17he77f6fb165360dbcE: %a"}
!888 = distinct !{!888, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17he77f6fb165360dbcE"}
!889 = !{!890}
!890 = distinct !{!890, !888, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17he77f6fb165360dbcE: %b"}
!891 = !{!892}
!892 = distinct !{!892, !893, !"_ZN4core3ops8function5FnMut8call_mut17hfdaebbc4127ebd2fE: argument 0"}
!893 = distinct !{!893, !"_ZN4core3ops8function5FnMut8call_mut17hfdaebbc4127ebd2fE"}
!894 = !{!895}
!895 = distinct !{!895, !893, !"_ZN4core3ops8function5FnMut8call_mut17hfdaebbc4127ebd2fE: argument 1"}
!896 = !{!897}
!897 = distinct !{!897, !898, !"cmpfunc: %a"}
!898 = distinct !{!898, !"cmpfunc"}
!899 = !{!900}
!900 = distinct !{!900, !898, !"cmpfunc: %b"}
!901 = !{!902}
!902 = distinct !{!902, !903, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!903 = distinct !{!903, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!904 = !{!905}
!905 = distinct !{!905, !903, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!906 = !{!902, !897, !892, !887}
!907 = !{!905, !900, !895, !890}
!908 = !{!909}
!909 = distinct !{!909, !910, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17he77f6fb165360dbcE: %a"}
!910 = distinct !{!910, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17he77f6fb165360dbcE"}
!911 = !{!912}
!912 = distinct !{!912, !910, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17he77f6fb165360dbcE: %b"}
!913 = !{!914}
!914 = distinct !{!914, !915, !"_ZN4core3ops8function5FnMut8call_mut17hfdaebbc4127ebd2fE: argument 0"}
!915 = distinct !{!915, !"_ZN4core3ops8function5FnMut8call_mut17hfdaebbc4127ebd2fE"}
!916 = !{!917}
!917 = distinct !{!917, !915, !"_ZN4core3ops8function5FnMut8call_mut17hfdaebbc4127ebd2fE: argument 1"}
!918 = !{!919}
!919 = distinct !{!919, !920, !"cmpfunc: %a"}
!920 = distinct !{!920, !"cmpfunc"}
!921 = !{!922}
!922 = distinct !{!922, !920, !"cmpfunc: %b"}
!923 = !{!924}
!924 = distinct !{!924, !925, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!925 = distinct !{!925, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!926 = !{!927}
!927 = distinct !{!927, !925, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!928 = !{!924, !919, !914, !909}
!929 = !{!927, !922, !917, !912}
!930 = !{!931}
!931 = distinct !{!931, !932, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17he77f6fb165360dbcE: %a"}
!932 = distinct !{!932, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17he77f6fb165360dbcE"}
!933 = !{!934}
!934 = distinct !{!934, !932, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17he77f6fb165360dbcE: %b"}
!935 = !{!936}
!936 = distinct !{!936, !937, !"_ZN4core3ops8function5FnMut8call_mut17hfdaebbc4127ebd2fE: argument 0"}
!937 = distinct !{!937, !"_ZN4core3ops8function5FnMut8call_mut17hfdaebbc4127ebd2fE"}
!938 = !{!939}
!939 = distinct !{!939, !937, !"_ZN4core3ops8function5FnMut8call_mut17hfdaebbc4127ebd2fE: argument 1"}
!940 = !{!941}
!941 = distinct !{!941, !942, !"cmpfunc: %a"}
!942 = distinct !{!942, !"cmpfunc"}
!943 = !{!944}
!944 = distinct !{!944, !942, !"cmpfunc: %b"}
!945 = !{!946}
!946 = distinct !{!946, !947, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!947 = distinct !{!947, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!948 = !{!949}
!949 = distinct !{!949, !947, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!950 = !{!946, !941, !936, !931}
!951 = !{!949, !944, !939, !934}
!952 = !{!953}
!953 = distinct !{!953, !954, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17he77f6fb165360dbcE: %a"}
!954 = distinct !{!954, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17he77f6fb165360dbcE"}
!955 = !{!956}
!956 = distinct !{!956, !954, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17he77f6fb165360dbcE: %b"}
!957 = !{!958}
!958 = distinct !{!958, !959, !"_ZN4core3ops8function5FnMut8call_mut17hfdaebbc4127ebd2fE: argument 0"}
!959 = distinct !{!959, !"_ZN4core3ops8function5FnMut8call_mut17hfdaebbc4127ebd2fE"}
!960 = !{!961}
!961 = distinct !{!961, !959, !"_ZN4core3ops8function5FnMut8call_mut17hfdaebbc4127ebd2fE: argument 1"}
!962 = !{!963}
!963 = distinct !{!963, !964, !"cmpfunc: %a"}
!964 = distinct !{!964, !"cmpfunc"}
!965 = !{!966}
!966 = distinct !{!966, !964, !"cmpfunc: %b"}
!967 = !{!968}
!968 = distinct !{!968, !969, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!969 = distinct !{!969, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!970 = !{!971}
!971 = distinct !{!971, !969, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!972 = !{!968, !963, !958, !953}
!973 = !{!971, !966, !961, !956}
!974 = !{!975}
!975 = distinct !{!975, !976, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17he77f6fb165360dbcE: %a"}
!976 = distinct !{!976, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17he77f6fb165360dbcE"}
!977 = !{!978}
!978 = distinct !{!978, !976, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17he77f6fb165360dbcE: %b"}
!979 = !{!980}
!980 = distinct !{!980, !981, !"_ZN4core3ops8function5FnMut8call_mut17hfdaebbc4127ebd2fE: argument 0"}
!981 = distinct !{!981, !"_ZN4core3ops8function5FnMut8call_mut17hfdaebbc4127ebd2fE"}
!982 = !{!983}
!983 = distinct !{!983, !981, !"_ZN4core3ops8function5FnMut8call_mut17hfdaebbc4127ebd2fE: argument 1"}
!984 = !{!985}
!985 = distinct !{!985, !986, !"cmpfunc: %a"}
!986 = distinct !{!986, !"cmpfunc"}
!987 = !{!988}
!988 = distinct !{!988, !986, !"cmpfunc: %b"}
!989 = !{!990}
!990 = distinct !{!990, !991, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!991 = distinct !{!991, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!992 = !{!993}
!993 = distinct !{!993, !991, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!994 = !{!990, !985, !980, !975}
!995 = !{!993, !988, !983, !978}
!996 = !{!997}
!997 = distinct !{!997, !998, !"_ZN4core5array4iter10iter_inner78PolymorphicIter$LT$$u5b$core..mem..maybe_uninit..MaybeUninit$LT$T$GT$$u5d$$GT$4next17heebf9cc75c05c6b9E: %self.0"}
!998 = distinct !{!998, !"_ZN4core5array4iter10iter_inner78PolymorphicIter$LT$$u5b$core..mem..maybe_uninit..MaybeUninit$LT$T$GT$$u5d$$GT$4next17heebf9cc75c05c6b9E"}
!999 = !{!1000}
!1000 = distinct !{!1000, !1001, !"_ZN4core5slice4sort6shared9smallsort19bidirectional_merge17ha5b44c109f16da34E: %v.0"}
!1001 = distinct !{!1001, !"_ZN4core5slice4sort6shared9smallsort19bidirectional_merge17ha5b44c109f16da34E"}
!1002 = !{!1003}
!1003 = distinct !{!1003, !1004, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17he77f6fb165360dbcE: %a"}
!1004 = distinct !{!1004, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17he77f6fb165360dbcE"}
!1005 = !{!1006}
!1006 = distinct !{!1006, !1004, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17he77f6fb165360dbcE: %b"}
!1007 = !{!1008}
!1008 = distinct !{!1008, !1009, !"_ZN4core3ops8function5FnMut8call_mut17hfdaebbc4127ebd2fE: argument 0"}
!1009 = distinct !{!1009, !"_ZN4core3ops8function5FnMut8call_mut17hfdaebbc4127ebd2fE"}
!1010 = !{!1011}
!1011 = distinct !{!1011, !1012, !"_ZN4core5slice4sort6shared9smallsort8merge_up17h8c1eb54c25e1e75cE: %_0"}
!1012 = distinct !{!1012, !"_ZN4core5slice4sort6shared9smallsort8merge_up17h8c1eb54c25e1e75cE"}
!1013 = !{!1014}
!1014 = distinct !{!1014, !1009, !"_ZN4core3ops8function5FnMut8call_mut17hfdaebbc4127ebd2fE: argument 1"}
!1015 = !{!1016}
!1016 = distinct !{!1016, !1017, !"cmpfunc: %a"}
!1017 = distinct !{!1017, !"cmpfunc"}
!1018 = !{!1019}
!1019 = distinct !{!1019, !1017, !"cmpfunc: %b"}
!1020 = !{!1021}
!1021 = distinct !{!1021, !1022, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!1022 = distinct !{!1022, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!1023 = !{!1024}
!1024 = distinct !{!1024, !1022, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!1025 = !{!1021, !1016, !1008, !1003, !1000}
!1026 = !{!1024, !1019, !1014, !1006, !1011}
!1027 = !{!1024, !1019, !1014, !1006, !1000}
!1028 = !{!1021, !1016, !1008, !1003, !1011}
!1029 = !{!1011, !1030, !1000}
!1030 = distinct !{!1030, !1012, !"_ZN4core5slice4sort6shared9smallsort8merge_up17h8c1eb54c25e1e75cE: %is_less"}
!1031 = !{!1032}
!1032 = distinct !{!1032, !1033, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17he77f6fb165360dbcE: %a"}
!1033 = distinct !{!1033, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17he77f6fb165360dbcE"}
!1034 = !{!1035}
!1035 = distinct !{!1035, !1033, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17he77f6fb165360dbcE: %b"}
!1036 = !{!1037}
!1037 = distinct !{!1037, !1038, !"_ZN4core3ops8function5FnMut8call_mut17hfdaebbc4127ebd2fE: argument 0"}
!1038 = distinct !{!1038, !"_ZN4core3ops8function5FnMut8call_mut17hfdaebbc4127ebd2fE"}
!1039 = !{!1040}
!1040 = distinct !{!1040, !1041, !"_ZN4core5slice4sort6shared9smallsort10merge_down17hf04f9d4747dc391bE: %_0"}
!1041 = distinct !{!1041, !"_ZN4core5slice4sort6shared9smallsort10merge_down17hf04f9d4747dc391bE"}
!1042 = !{!1043}
!1043 = distinct !{!1043, !1038, !"_ZN4core3ops8function5FnMut8call_mut17hfdaebbc4127ebd2fE: argument 1"}
!1044 = !{!1045}
!1045 = distinct !{!1045, !1046, !"cmpfunc: %a"}
!1046 = distinct !{!1046, !"cmpfunc"}
!1047 = !{!1048}
!1048 = distinct !{!1048, !1046, !"cmpfunc: %b"}
!1049 = !{!1050}
!1050 = distinct !{!1050, !1051, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!1051 = distinct !{!1051, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!1052 = !{!1053}
!1053 = distinct !{!1053, !1051, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!1054 = !{!1050, !1045, !1037, !1032, !1000}
!1055 = !{!1053, !1048, !1043, !1035, !1040}
!1056 = !{!1053, !1048, !1043, !1035, !1000}
!1057 = !{!1050, !1045, !1037, !1032, !1040}
!1058 = !{!1040, !1059, !1000}
!1059 = distinct !{!1059, !1041, !"_ZN4core5slice4sort6shared9smallsort10merge_down17hf04f9d4747dc391bE: %is_less"}
!1060 = !{!1061, !1063}
!1061 = distinct !{!1061, !1062, !"_ZN99_$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h1cb39cb50bab9592E: %self"}
!1062 = distinct !{!1062, !"_ZN99_$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h1cb39cb50bab9592E"}
!1063 = distinct !{!1063, !1064, !"_ZN4core3ptr80drop_in_place$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$i32$GT$$GT$17h29b5ceebc9567873E: %_1"}
!1064 = distinct !{!1064, !"_ZN4core3ptr80drop_in_place$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$i32$GT$$GT$17h29b5ceebc9567873E"}
!1065 = !{!1066, !1068, !1070, !1072}
!1066 = distinct !{!1066, !1067, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!1067 = distinct !{!1067, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!1068 = distinct !{!1068, !1069, !"cmpfunc: %b"}
!1069 = distinct !{!1069, !"cmpfunc"}
!1070 = distinct !{!1070, !1071, !"_ZN4core3ops8function5FnMut8call_mut17hfdaebbc4127ebd2fE: argument 1"}
!1071 = distinct !{!1071, !"_ZN4core3ops8function5FnMut8call_mut17hfdaebbc4127ebd2fE"}
!1072 = distinct !{!1072, !1073, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17he77f6fb165360dbcE: %b"}
!1073 = distinct !{!1073, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17he77f6fb165360dbcE"}
!1074 = !{!1075, !1076, !1077, !1078}
!1075 = distinct !{!1075, !1067, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!1076 = distinct !{!1076, !1069, !"cmpfunc: %a"}
!1077 = distinct !{!1077, !1071, !"_ZN4core3ops8function5FnMut8call_mut17hfdaebbc4127ebd2fE: argument 0"}
!1078 = distinct !{!1078, !1073, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17he77f6fb165360dbcE: %a"}
!1079 = !{!1080, !1082, !1084, !1086}
!1080 = distinct !{!1080, !1081, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!1081 = distinct !{!1081, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!1082 = distinct !{!1082, !1083, !"cmpfunc: %b"}
!1083 = distinct !{!1083, !"cmpfunc"}
!1084 = distinct !{!1084, !1085, !"_ZN4core3ops8function5FnMut8call_mut17hfdaebbc4127ebd2fE: argument 1"}
!1085 = distinct !{!1085, !"_ZN4core3ops8function5FnMut8call_mut17hfdaebbc4127ebd2fE"}
!1086 = distinct !{!1086, !1087, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17he77f6fb165360dbcE: %b"}
!1087 = distinct !{!1087, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17he77f6fb165360dbcE"}
!1088 = !{!1089, !1090, !1091, !1092}
!1089 = distinct !{!1089, !1081, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!1090 = distinct !{!1090, !1083, !"cmpfunc: %a"}
!1091 = distinct !{!1091, !1085, !"_ZN4core3ops8function5FnMut8call_mut17hfdaebbc4127ebd2fE: argument 0"}
!1092 = distinct !{!1092, !1087, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17he77f6fb165360dbcE: %a"}
!1093 = !{!1094, !1096}
!1094 = distinct !{!1094, !1095, !"_ZN99_$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h1cb39cb50bab9592E: %self"}
!1095 = distinct !{!1095, !"_ZN99_$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h1cb39cb50bab9592E"}
!1096 = distinct !{!1096, !1097, !"_ZN4core3ptr80drop_in_place$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$i32$GT$$GT$17h29b5ceebc9567873E: %_1"}
!1097 = distinct !{!1097, !"_ZN4core3ptr80drop_in_place$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$i32$GT$$GT$17h29b5ceebc9567873E"}
!1098 = !{!1099}
!1099 = distinct !{!1099, !1100, !"_ZN5alloc5slice99_$LT$impl$u20$core..slice..sort..stable..BufGuard$LT$T$GT$$u20$for$u20$alloc..vec..Vec$LT$T$GT$$GT$13with_capacity17h7956de82b204896eE: %_0"}
!1100 = distinct !{!1100, !"_ZN5alloc5slice99_$LT$impl$u20$core..slice..sort..stable..BufGuard$LT$T$GT$$u20$for$u20$alloc..vec..Vec$LT$T$GT$$GT$13with_capacity17h7956de82b204896eE"}
!1101 = !{i64 0, i64 2}
!1102 = !{i64 0, i64 -9223372036854775807}
!1103 = !{!1104}
!1104 = distinct !{!1104, !1105, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17he77f6fb165360dbcE: %a"}
!1105 = distinct !{!1105, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17he77f6fb165360dbcE"}
!1106 = !{!1107}
!1107 = distinct !{!1107, !1105, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17he77f6fb165360dbcE: %b"}
!1108 = !{!1109}
!1109 = distinct !{!1109, !1110, !"_ZN4core3ops8function5FnMut8call_mut17hfdaebbc4127ebd2fE: argument 0"}
!1110 = distinct !{!1110, !"_ZN4core3ops8function5FnMut8call_mut17hfdaebbc4127ebd2fE"}
!1111 = !{!1112}
!1112 = distinct !{!1112, !1110, !"_ZN4core3ops8function5FnMut8call_mut17hfdaebbc4127ebd2fE: argument 1"}
!1113 = !{!1114}
!1114 = distinct !{!1114, !1115, !"cmpfunc: %a"}
!1115 = distinct !{!1115, !"cmpfunc"}
!1116 = !{!1117}
!1117 = distinct !{!1117, !1115, !"cmpfunc: %b"}
!1118 = !{!1119}
!1119 = distinct !{!1119, !1120, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!1120 = distinct !{!1120, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!1121 = !{!1122}
!1122 = distinct !{!1122, !1120, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!1123 = !{!1119, !1114, !1109, !1104}
!1124 = !{!1122, !1117, !1112, !1107}
!1125 = !{!1126}
!1126 = distinct !{!1126, !1127, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17he77f6fb165360dbcE: %a"}
!1127 = distinct !{!1127, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17he77f6fb165360dbcE"}
!1128 = !{!1129}
!1129 = distinct !{!1129, !1127, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17he77f6fb165360dbcE: %b"}
!1130 = !{!1131}
!1131 = distinct !{!1131, !1132, !"_ZN4core3ops8function5FnMut8call_mut17hfdaebbc4127ebd2fE: argument 0"}
!1132 = distinct !{!1132, !"_ZN4core3ops8function5FnMut8call_mut17hfdaebbc4127ebd2fE"}
!1133 = !{!1134}
!1134 = distinct !{!1134, !1132, !"_ZN4core3ops8function5FnMut8call_mut17hfdaebbc4127ebd2fE: argument 1"}
!1135 = !{!1136}
!1136 = distinct !{!1136, !1137, !"cmpfunc: %a"}
!1137 = distinct !{!1137, !"cmpfunc"}
!1138 = !{!1139}
!1139 = distinct !{!1139, !1137, !"cmpfunc: %b"}
!1140 = !{!1141}
!1141 = distinct !{!1141, !1142, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!1142 = distinct !{!1142, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!1143 = !{!1144}
!1144 = distinct !{!1144, !1142, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!1145 = !{!1141, !1136, !1131, !1126}
!1146 = !{!1144, !1139, !1134, !1129}
!1147 = !{!1148}
!1148 = distinct !{!1148, !1149, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17he77f6fb165360dbcE: %a"}
!1149 = distinct !{!1149, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17he77f6fb165360dbcE"}
!1150 = !{!1151}
!1151 = distinct !{!1151, !1149, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17he77f6fb165360dbcE: %b"}
!1152 = !{!1153}
!1153 = distinct !{!1153, !1154, !"_ZN4core3ops8function5FnMut8call_mut17hfdaebbc4127ebd2fE: argument 0"}
!1154 = distinct !{!1154, !"_ZN4core3ops8function5FnMut8call_mut17hfdaebbc4127ebd2fE"}
!1155 = !{!1156}
!1156 = distinct !{!1156, !1154, !"_ZN4core3ops8function5FnMut8call_mut17hfdaebbc4127ebd2fE: argument 1"}
!1157 = !{!1158}
!1158 = distinct !{!1158, !1159, !"cmpfunc: %a"}
!1159 = distinct !{!1159, !"cmpfunc"}
!1160 = !{!1161}
!1161 = distinct !{!1161, !1159, !"cmpfunc: %b"}
!1162 = !{!1163}
!1163 = distinct !{!1163, !1164, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!1164 = distinct !{!1164, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!1165 = !{!1166}
!1166 = distinct !{!1166, !1164, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!1167 = !{!1163, !1158, !1153, !1148}
!1168 = !{!1166, !1161, !1156, !1151}
!1169 = !{!1170, !1172}
!1170 = distinct !{!1170, !1171, !"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse7revswap17h9d356c7084fee5b3E: %a.0"}
!1171 = distinct !{!1171, !"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse7revswap17h9d356c7084fee5b3E"}
!1172 = distinct !{!1172, !1173, !"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17h7dcd433349684bb7E: %self.0"}
!1173 = distinct !{!1173, !"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17h7dcd433349684bb7E"}
!1174 = !{!1175}
!1175 = distinct !{!1175, !1171, !"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse7revswap17h9d356c7084fee5b3E: %b.0"}
!1176 = !{!1175, !1172}
!1177 = !{!1170}
!1178 = !{!1179}
!1179 = distinct !{!1179, !1180, !"_ZN4core5slice4sort6stable5merge5merge17h7cc0b173c91abb5eE: %v.0"}
!1180 = distinct !{!1180, !"_ZN4core5slice4sort6stable5merge5merge17h7cc0b173c91abb5eE"}
!1181 = !{!1182}
!1182 = distinct !{!1182, !1180, !"_ZN4core5slice4sort6stable5merge5merge17h7cc0b173c91abb5eE: %scratch.0"}
!1183 = !{!1179, !1182}
!1184 = !{!1185}
!1185 = distinct !{!1185, !1186, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17he77f6fb165360dbcE: %a"}
!1186 = distinct !{!1186, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17he77f6fb165360dbcE"}
!1187 = !{!1188}
!1188 = distinct !{!1188, !1186, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17he77f6fb165360dbcE: %b"}
!1189 = !{!1190}
!1190 = distinct !{!1190, !1191, !"_ZN4core3ops8function5FnMut8call_mut17hfdaebbc4127ebd2fE: argument 0"}
!1191 = distinct !{!1191, !"_ZN4core3ops8function5FnMut8call_mut17hfdaebbc4127ebd2fE"}
!1192 = !{!1193}
!1193 = distinct !{!1193, !1191, !"_ZN4core3ops8function5FnMut8call_mut17hfdaebbc4127ebd2fE: argument 1"}
!1194 = !{!1195}
!1195 = distinct !{!1195, !1196, !"cmpfunc: %a"}
!1196 = distinct !{!1196, !"cmpfunc"}
!1197 = !{!1198}
!1198 = distinct !{!1198, !1196, !"cmpfunc: %b"}
!1199 = !{!1200}
!1200 = distinct !{!1200, !1201, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!1201 = distinct !{!1201, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!1202 = !{!1203}
!1203 = distinct !{!1203, !1201, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!1204 = !{!1200, !1195, !1190, !1185, !1182}
!1205 = !{!1203, !1198, !1193, !1188, !1206, !1179}
!1206 = distinct !{!1206, !1207, !"_ZN4core5slice4sort6stable5merge19MergeState$LT$T$GT$10merge_down17h50b3f4f9cf1213a5E: %self"}
!1207 = distinct !{!1207, !"_ZN4core5slice4sort6stable5merge19MergeState$LT$T$GT$10merge_down17h50b3f4f9cf1213a5E"}
!1208 = !{!1203, !1198, !1193, !1188, !1179}
!1209 = !{!1200, !1195, !1190, !1185, !1206, !1182}
!1210 = !{!1206, !1182}
!1211 = !{!1212}
!1212 = distinct !{!1212, !1213, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17he77f6fb165360dbcE: %a"}
!1213 = distinct !{!1213, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17he77f6fb165360dbcE"}
!1214 = !{!1215}
!1215 = distinct !{!1215, !1213, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17he77f6fb165360dbcE: %b"}
!1216 = !{!1217}
!1217 = distinct !{!1217, !1218, !"_ZN4core3ops8function5FnMut8call_mut17hfdaebbc4127ebd2fE: argument 0"}
!1218 = distinct !{!1218, !"_ZN4core3ops8function5FnMut8call_mut17hfdaebbc4127ebd2fE"}
!1219 = !{!1220}
!1220 = distinct !{!1220, !1218, !"_ZN4core3ops8function5FnMut8call_mut17hfdaebbc4127ebd2fE: argument 1"}
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
!1231 = !{!1227, !1222, !1217, !1212, !1179}
!1232 = !{!1230, !1225, !1220, !1215, !1233, !1182}
!1233 = distinct !{!1233, !1234, !"_ZN4core5slice4sort6stable5merge19MergeState$LT$T$GT$8merge_up17h6b836eea6eccfc19E: %self"}
!1234 = distinct !{!1234, !"_ZN4core5slice4sort6stable5merge19MergeState$LT$T$GT$8merge_up17h6b836eea6eccfc19E"}
!1235 = !{!1230, !1225, !1220, !1215, !1182}
!1236 = !{!1227, !1222, !1217, !1212, !1233, !1179}
!1237 = !{!1233, !1182}
!1238 = !{!1239, !1241}
!1239 = distinct !{!1239, !1240, !"_ZN95_$LT$core..slice..sort..stable..merge..MergeState$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h0365dedc9904ee7bE: %self"}
!1240 = distinct !{!1240, !"_ZN95_$LT$core..slice..sort..stable..merge..MergeState$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h0365dedc9904ee7bE"}
!1241 = distinct !{!1241, !1242, !"_ZN4core3ptr76drop_in_place$LT$core..slice..sort..stable..merge..MergeState$LT$i32$GT$$GT$17he36c853752653ab1E: %_1"}
!1242 = distinct !{!1242, !"_ZN4core3ptr76drop_in_place$LT$core..slice..sort..stable..merge..MergeState$LT$i32$GT$$GT$17he36c853752653ab1E"}
!1243 = !{!1244}
!1244 = distinct !{!1244, !1245, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17he77f6fb165360dbcE: %a"}
!1245 = distinct !{!1245, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17he77f6fb165360dbcE"}
!1246 = !{!1247}
!1247 = distinct !{!1247, !1245, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17he77f6fb165360dbcE: %b"}
!1248 = !{!1249}
!1249 = distinct !{!1249, !1250, !"_ZN4core3ops8function5FnMut8call_mut17hfdaebbc4127ebd2fE: argument 0"}
!1250 = distinct !{!1250, !"_ZN4core3ops8function5FnMut8call_mut17hfdaebbc4127ebd2fE"}
!1251 = !{!1252}
!1252 = distinct !{!1252, !1250, !"_ZN4core3ops8function5FnMut8call_mut17hfdaebbc4127ebd2fE: argument 1"}
!1253 = !{!1254}
!1254 = distinct !{!1254, !1255, !"cmpfunc: %a"}
!1255 = distinct !{!1255, !"cmpfunc"}
!1256 = !{!1257}
!1257 = distinct !{!1257, !1255, !"cmpfunc: %b"}
!1258 = !{!1259}
!1259 = distinct !{!1259, !1260, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!1260 = distinct !{!1260, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!1261 = !{!1262}
!1262 = distinct !{!1262, !1260, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!1263 = !{!1259, !1254, !1249, !1244}
!1264 = !{!1262, !1257, !1252, !1247}
!1265 = !{!1266}
!1266 = distinct !{!1266, !1267, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17he77f6fb165360dbcE: %a"}
!1267 = distinct !{!1267, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17he77f6fb165360dbcE"}
!1268 = !{!1269}
!1269 = distinct !{!1269, !1267, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17he77f6fb165360dbcE: %b"}
!1270 = !{!1271}
!1271 = distinct !{!1271, !1272, !"_ZN4core3ops8function5FnMut8call_mut17hfdaebbc4127ebd2fE: argument 0"}
!1272 = distinct !{!1272, !"_ZN4core3ops8function5FnMut8call_mut17hfdaebbc4127ebd2fE"}
!1273 = !{!1274}
!1274 = distinct !{!1274, !1272, !"_ZN4core3ops8function5FnMut8call_mut17hfdaebbc4127ebd2fE: argument 1"}
!1275 = !{!1276}
!1276 = distinct !{!1276, !1277, !"cmpfunc: %a"}
!1277 = distinct !{!1277, !"cmpfunc"}
!1278 = !{!1279}
!1279 = distinct !{!1279, !1277, !"cmpfunc: %b"}
!1280 = !{!1281}
!1281 = distinct !{!1281, !1282, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!1282 = distinct !{!1282, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!1283 = !{!1284}
!1284 = distinct !{!1284, !1282, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!1285 = !{!1281, !1276, !1271, !1266}
!1286 = !{!1284, !1279, !1274, !1269}
!1287 = !{!1288}
!1288 = distinct !{!1288, !1289, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17he77f6fb165360dbcE: %a"}
!1289 = distinct !{!1289, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17he77f6fb165360dbcE"}
!1290 = !{!1291}
!1291 = distinct !{!1291, !1289, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17he77f6fb165360dbcE: %b"}
!1292 = !{!1293}
!1293 = distinct !{!1293, !1294, !"_ZN4core3ops8function5FnMut8call_mut17hfdaebbc4127ebd2fE: argument 0"}
!1294 = distinct !{!1294, !"_ZN4core3ops8function5FnMut8call_mut17hfdaebbc4127ebd2fE"}
!1295 = !{!1296}
!1296 = distinct !{!1296, !1294, !"_ZN4core3ops8function5FnMut8call_mut17hfdaebbc4127ebd2fE: argument 1"}
!1297 = !{!1298}
!1298 = distinct !{!1298, !1299, !"cmpfunc: %a"}
!1299 = distinct !{!1299, !"cmpfunc"}
!1300 = !{!1301}
!1301 = distinct !{!1301, !1299, !"cmpfunc: %b"}
!1302 = !{!1303}
!1303 = distinct !{!1303, !1304, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!1304 = distinct !{!1304, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!1305 = !{!1306}
!1306 = distinct !{!1306, !1304, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!1307 = !{!1303, !1298, !1293, !1288}
!1308 = !{!1306, !1301, !1296, !1291, !1309}
!1309 = distinct !{!1309, !1310, !"_ZN4core5slice4sort6stable5merge19MergeState$LT$T$GT$10merge_down17h50b3f4f9cf1213a5E: %self"}
!1310 = distinct !{!1310, !"_ZN4core5slice4sort6stable5merge19MergeState$LT$T$GT$10merge_down17h50b3f4f9cf1213a5E"}
!1311 = !{!1306, !1301, !1296, !1291}
!1312 = !{!1303, !1298, !1293, !1288, !1309}
!1313 = !{!1309}
!1314 = !{!1315}
!1315 = distinct !{!1315, !1316, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17he77f6fb165360dbcE: %a"}
!1316 = distinct !{!1316, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17he77f6fb165360dbcE"}
!1317 = !{!1318}
!1318 = distinct !{!1318, !1316, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17he77f6fb165360dbcE: %b"}
!1319 = !{!1320}
!1320 = distinct !{!1320, !1321, !"_ZN4core3ops8function5FnMut8call_mut17hfdaebbc4127ebd2fE: argument 0"}
!1321 = distinct !{!1321, !"_ZN4core3ops8function5FnMut8call_mut17hfdaebbc4127ebd2fE"}
!1322 = !{!1323}
!1323 = distinct !{!1323, !1321, !"_ZN4core3ops8function5FnMut8call_mut17hfdaebbc4127ebd2fE: argument 1"}
!1324 = !{!1325}
!1325 = distinct !{!1325, !1326, !"cmpfunc: %a"}
!1326 = distinct !{!1326, !"cmpfunc"}
!1327 = !{!1328}
!1328 = distinct !{!1328, !1326, !"cmpfunc: %b"}
!1329 = !{!1330}
!1330 = distinct !{!1330, !1331, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!1331 = distinct !{!1331, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!1332 = !{!1333}
!1333 = distinct !{!1333, !1331, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!1334 = !{!1330, !1325, !1320, !1315}
!1335 = !{!1333, !1328, !1323, !1318, !1336}
!1336 = distinct !{!1336, !1337, !"_ZN4core5slice4sort6stable5merge19MergeState$LT$T$GT$8merge_up17h6b836eea6eccfc19E: %self"}
!1337 = distinct !{!1337, !"_ZN4core5slice4sort6stable5merge19MergeState$LT$T$GT$8merge_up17h6b836eea6eccfc19E"}
!1338 = !{!1333, !1328, !1323, !1318}
!1339 = !{!1330, !1325, !1320, !1315, !1336}
!1340 = !{!1336}
!1341 = !{!1342, !1344}
!1342 = distinct !{!1342, !1343, !"_ZN95_$LT$core..slice..sort..stable..merge..MergeState$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h0365dedc9904ee7bE: %self"}
!1343 = distinct !{!1343, !"_ZN95_$LT$core..slice..sort..stable..merge..MergeState$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h0365dedc9904ee7bE"}
!1344 = distinct !{!1344, !1345, !"_ZN4core3ptr76drop_in_place$LT$core..slice..sort..stable..merge..MergeState$LT$i32$GT$$GT$17he36c853752653ab1E: %_1"}
!1345 = distinct !{!1345, !"_ZN4core3ptr76drop_in_place$LT$core..slice..sort..stable..merge..MergeState$LT$i32$GT$$GT$17he36c853752653ab1E"}
!1346 = !{!"branch_weights", i32 4000000, i32 4001}
!1347 = !{!1348}
!1348 = distinct !{!1348, !1349, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17he77f6fb165360dbcE: %a"}
!1349 = distinct !{!1349, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17he77f6fb165360dbcE"}
!1350 = !{!1351}
!1351 = distinct !{!1351, !1349, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17he77f6fb165360dbcE: %b"}
!1352 = !{!1353}
!1353 = distinct !{!1353, !1354, !"_ZN4core3ops8function5FnMut8call_mut17hfdaebbc4127ebd2fE: argument 0"}
!1354 = distinct !{!1354, !"_ZN4core3ops8function5FnMut8call_mut17hfdaebbc4127ebd2fE"}
!1355 = !{!1356}
!1356 = distinct !{!1356, !1354, !"_ZN4core3ops8function5FnMut8call_mut17hfdaebbc4127ebd2fE: argument 1"}
!1357 = !{!1358}
!1358 = distinct !{!1358, !1359, !"cmpfunc: %a"}
!1359 = distinct !{!1359, !"cmpfunc"}
!1360 = !{!1361}
!1361 = distinct !{!1361, !1359, !"cmpfunc: %b"}
!1362 = !{!1363}
!1363 = distinct !{!1363, !1364, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!1364 = distinct !{!1364, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!1365 = !{!1366}
!1366 = distinct !{!1366, !1364, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!1367 = !{!1363, !1358, !1353, !1348}
!1368 = !{!1366, !1361, !1356, !1351}
!1369 = !{!1370}
!1370 = distinct !{!1370, !1371, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h8e7c987dd7215355E: %self"}
!1371 = distinct !{!1371, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h8e7c987dd7215355E"}
!1372 = !{!1373}
!1373 = distinct !{!1373, !1374, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17he77f6fb165360dbcE: %a"}
!1374 = distinct !{!1374, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17he77f6fb165360dbcE"}
!1375 = !{!1376}
!1376 = distinct !{!1376, !1374, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17he77f6fb165360dbcE: %b"}
!1377 = !{!1378}
!1378 = distinct !{!1378, !1379, !"_ZN4core3ops8function5FnMut8call_mut17hfdaebbc4127ebd2fE: argument 0"}
!1379 = distinct !{!1379, !"_ZN4core3ops8function5FnMut8call_mut17hfdaebbc4127ebd2fE"}
!1380 = !{!1381}
!1381 = distinct !{!1381, !1379, !"_ZN4core3ops8function5FnMut8call_mut17hfdaebbc4127ebd2fE: argument 1"}
!1382 = !{!1383}
!1383 = distinct !{!1383, !1384, !"cmpfunc: %a"}
!1384 = distinct !{!1384, !"cmpfunc"}
!1385 = !{!1386}
!1386 = distinct !{!1386, !1384, !"cmpfunc: %b"}
!1387 = !{!1388}
!1388 = distinct !{!1388, !1389, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!1389 = distinct !{!1389, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!1390 = !{!1391}
!1391 = distinct !{!1391, !1389, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!1392 = !{!1388, !1383, !1378, !1373}
!1393 = !{!1391, !1386, !1381, !1376}
!1394 = !{!1395}
!1395 = distinct !{!1395, !1396, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h8e7c987dd7215355E: %self"}
!1396 = distinct !{!1396, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h8e7c987dd7215355E"}
!1397 = !{!1398}
!1398 = distinct !{!1398, !1399, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17he77f6fb165360dbcE: %a"}
!1399 = distinct !{!1399, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17he77f6fb165360dbcE"}
!1400 = !{!1401}
!1401 = distinct !{!1401, !1399, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17he77f6fb165360dbcE: %b"}
!1402 = !{!1403}
!1403 = distinct !{!1403, !1404, !"_ZN4core3ops8function5FnMut8call_mut17hfdaebbc4127ebd2fE: argument 0"}
!1404 = distinct !{!1404, !"_ZN4core3ops8function5FnMut8call_mut17hfdaebbc4127ebd2fE"}
!1405 = !{!1406}
!1406 = distinct !{!1406, !1404, !"_ZN4core3ops8function5FnMut8call_mut17hfdaebbc4127ebd2fE: argument 1"}
!1407 = !{!1408}
!1408 = distinct !{!1408, !1409, !"cmpfunc: %a"}
!1409 = distinct !{!1409, !"cmpfunc"}
!1410 = !{!1411}
!1411 = distinct !{!1411, !1409, !"cmpfunc: %b"}
!1412 = !{!1413}
!1413 = distinct !{!1413, !1414, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!1414 = distinct !{!1414, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!1415 = !{!1416}
!1416 = distinct !{!1416, !1414, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!1417 = !{!1413, !1408, !1403, !1398}
!1418 = !{!1416, !1411, !1406, !1401}
!1419 = !{!1420}
!1420 = distinct !{!1420, !1421, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h8e7c987dd7215355E: %self"}
!1421 = distinct !{!1421, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h8e7c987dd7215355E"}
!1422 = !{!1423}
!1423 = distinct !{!1423, !1424, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17he77f6fb165360dbcE: %a"}
!1424 = distinct !{!1424, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17he77f6fb165360dbcE"}
!1425 = !{!1426}
!1426 = distinct !{!1426, !1424, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17he77f6fb165360dbcE: %b"}
!1427 = !{!1428}
!1428 = distinct !{!1428, !1429, !"_ZN4core3ops8function5FnMut8call_mut17hfdaebbc4127ebd2fE: argument 0"}
!1429 = distinct !{!1429, !"_ZN4core3ops8function5FnMut8call_mut17hfdaebbc4127ebd2fE"}
!1430 = !{!1431}
!1431 = distinct !{!1431, !1429, !"_ZN4core3ops8function5FnMut8call_mut17hfdaebbc4127ebd2fE: argument 1"}
!1432 = !{!1433}
!1433 = distinct !{!1433, !1434, !"cmpfunc: %a"}
!1434 = distinct !{!1434, !"cmpfunc"}
!1435 = !{!1436}
!1436 = distinct !{!1436, !1434, !"cmpfunc: %b"}
!1437 = !{!1438}
!1438 = distinct !{!1438, !1439, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!1439 = distinct !{!1439, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!1440 = !{!1441}
!1441 = distinct !{!1441, !1439, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!1442 = !{!1438, !1433, !1428, !1423}
!1443 = !{!1441, !1436, !1431, !1426}
!1444 = !{!1445}
!1445 = distinct !{!1445, !1446, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h8e7c987dd7215355E: %self"}
!1446 = distinct !{!1446, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h8e7c987dd7215355E"}
!1447 = !{!1448}
!1448 = distinct !{!1448, !1449, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17he77f6fb165360dbcE: %a"}
!1449 = distinct !{!1449, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17he77f6fb165360dbcE"}
!1450 = !{!1451}
!1451 = distinct !{!1451, !1449, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17he77f6fb165360dbcE: %b"}
!1452 = !{!1453}
!1453 = distinct !{!1453, !1454, !"_ZN4core3ops8function5FnMut8call_mut17hfdaebbc4127ebd2fE: argument 0"}
!1454 = distinct !{!1454, !"_ZN4core3ops8function5FnMut8call_mut17hfdaebbc4127ebd2fE"}
!1455 = !{!1456}
!1456 = distinct !{!1456, !1454, !"_ZN4core3ops8function5FnMut8call_mut17hfdaebbc4127ebd2fE: argument 1"}
!1457 = !{!1458}
!1458 = distinct !{!1458, !1459, !"cmpfunc: %a"}
!1459 = distinct !{!1459, !"cmpfunc"}
!1460 = !{!1461}
!1461 = distinct !{!1461, !1459, !"cmpfunc: %b"}
!1462 = !{!1463}
!1463 = distinct !{!1463, !1464, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!1464 = distinct !{!1464, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!1465 = !{!1466}
!1466 = distinct !{!1466, !1464, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!1467 = !{!1463, !1458, !1453, !1448}
!1468 = !{!1466, !1461, !1456, !1451}
!1469 = !{!1470}
!1470 = distinct !{!1470, !1471, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h8e7c987dd7215355E: %self"}
!1471 = distinct !{!1471, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h8e7c987dd7215355E"}
!1472 = !{!1473}
!1473 = distinct !{!1473, !1474, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h8e7c987dd7215355E: %self"}
!1474 = distinct !{!1474, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h8e7c987dd7215355E"}
!1475 = distinct !{!1475, !1476}
!1476 = !{!"llvm.loop.unroll.disable"}
!1477 = !{!1478}
!1478 = distinct !{!1478, !1479, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17h765278c3b1aab14fE: %a"}
!1479 = distinct !{!1479, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17h765278c3b1aab14fE"}
!1480 = !{!1481}
!1481 = distinct !{!1481, !1479, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17h765278c3b1aab14fE: %b"}
!1482 = !{!1483}
!1483 = distinct !{!1483, !1484, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17he77f6fb165360dbcE: %a"}
!1484 = distinct !{!1484, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17he77f6fb165360dbcE"}
!1485 = !{!1486}
!1486 = distinct !{!1486, !1484, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17he77f6fb165360dbcE: %b"}
!1487 = !{!1488}
!1488 = distinct !{!1488, !1489, !"_ZN4core3ops8function5FnMut8call_mut17hfdaebbc4127ebd2fE: argument 0"}
!1489 = distinct !{!1489, !"_ZN4core3ops8function5FnMut8call_mut17hfdaebbc4127ebd2fE"}
!1490 = !{!1491}
!1491 = distinct !{!1491, !1489, !"_ZN4core3ops8function5FnMut8call_mut17hfdaebbc4127ebd2fE: argument 1"}
!1492 = !{!1493}
!1493 = distinct !{!1493, !1494, !"cmpfunc: %a"}
!1494 = distinct !{!1494, !"cmpfunc"}
!1495 = !{!1496}
!1496 = distinct !{!1496, !1494, !"cmpfunc: %b"}
!1497 = !{!1498}
!1498 = distinct !{!1498, !1499, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!1499 = distinct !{!1499, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!1500 = !{!1501}
!1501 = distinct !{!1501, !1499, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!1502 = !{!1498, !1493, !1488, !1483, !1481}
!1503 = !{!1501, !1496, !1491, !1486, !1478}
!1504 = !{!1505}
!1505 = distinct !{!1505, !1506, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h8e7c987dd7215355E: %self"}
!1506 = distinct !{!1506, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h8e7c987dd7215355E"}
!1507 = !{!1508}
!1508 = distinct !{!1508, !1509, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17h765278c3b1aab14fE: %a"}
!1509 = distinct !{!1509, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17h765278c3b1aab14fE"}
!1510 = !{!1511}
!1511 = distinct !{!1511, !1509, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17h765278c3b1aab14fE: %b"}
!1512 = !{!1513}
!1513 = distinct !{!1513, !1514, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17he77f6fb165360dbcE: %a"}
!1514 = distinct !{!1514, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17he77f6fb165360dbcE"}
!1515 = !{!1516}
!1516 = distinct !{!1516, !1514, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17he77f6fb165360dbcE: %b"}
!1517 = !{!1518}
!1518 = distinct !{!1518, !1519, !"_ZN4core3ops8function5FnMut8call_mut17hfdaebbc4127ebd2fE: argument 0"}
!1519 = distinct !{!1519, !"_ZN4core3ops8function5FnMut8call_mut17hfdaebbc4127ebd2fE"}
!1520 = !{!1521}
!1521 = distinct !{!1521, !1519, !"_ZN4core3ops8function5FnMut8call_mut17hfdaebbc4127ebd2fE: argument 1"}
!1522 = !{!1523}
!1523 = distinct !{!1523, !1524, !"cmpfunc: %a"}
!1524 = distinct !{!1524, !"cmpfunc"}
!1525 = !{!1526}
!1526 = distinct !{!1526, !1524, !"cmpfunc: %b"}
!1527 = !{!1528}
!1528 = distinct !{!1528, !1529, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!1529 = distinct !{!1529, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!1530 = !{!1531}
!1531 = distinct !{!1531, !1529, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!1532 = !{!1528, !1523, !1518, !1513, !1511}
!1533 = !{!1531, !1526, !1521, !1516, !1508}
!1534 = !{!1535}
!1535 = distinct !{!1535, !1536, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h8e7c987dd7215355E: %self"}
!1536 = distinct !{!1536, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h8e7c987dd7215355E"}
!1537 = !{!1538}
!1538 = distinct !{!1538, !1539, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17h765278c3b1aab14fE: %a"}
!1539 = distinct !{!1539, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17h765278c3b1aab14fE"}
!1540 = !{!1541}
!1541 = distinct !{!1541, !1539, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17h765278c3b1aab14fE: %b"}
!1542 = !{!1543}
!1543 = distinct !{!1543, !1544, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17he77f6fb165360dbcE: %a"}
!1544 = distinct !{!1544, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17he77f6fb165360dbcE"}
!1545 = !{!1546}
!1546 = distinct !{!1546, !1544, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17he77f6fb165360dbcE: %b"}
!1547 = !{!1548}
!1548 = distinct !{!1548, !1549, !"_ZN4core3ops8function5FnMut8call_mut17hfdaebbc4127ebd2fE: argument 0"}
!1549 = distinct !{!1549, !"_ZN4core3ops8function5FnMut8call_mut17hfdaebbc4127ebd2fE"}
!1550 = !{!1551}
!1551 = distinct !{!1551, !1549, !"_ZN4core3ops8function5FnMut8call_mut17hfdaebbc4127ebd2fE: argument 1"}
!1552 = !{!1553}
!1553 = distinct !{!1553, !1554, !"cmpfunc: %a"}
!1554 = distinct !{!1554, !"cmpfunc"}
!1555 = !{!1556}
!1556 = distinct !{!1556, !1554, !"cmpfunc: %b"}
!1557 = !{!1558}
!1558 = distinct !{!1558, !1559, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!1559 = distinct !{!1559, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!1560 = !{!1561}
!1561 = distinct !{!1561, !1559, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!1562 = !{!1558, !1553, !1548, !1543, !1541}
!1563 = !{!1561, !1556, !1551, !1546, !1538}
!1564 = !{!1565}
!1565 = distinct !{!1565, !1566, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h8e7c987dd7215355E: %self"}
!1566 = distinct !{!1566, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h8e7c987dd7215355E"}
!1567 = !{!1568}
!1568 = distinct !{!1568, !1569, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17h765278c3b1aab14fE: %a"}
!1569 = distinct !{!1569, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17h765278c3b1aab14fE"}
!1570 = !{!1571}
!1571 = distinct !{!1571, !1569, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17h765278c3b1aab14fE: %b"}
!1572 = !{!1573}
!1573 = distinct !{!1573, !1574, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17he77f6fb165360dbcE: %a"}
!1574 = distinct !{!1574, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17he77f6fb165360dbcE"}
!1575 = !{!1576}
!1576 = distinct !{!1576, !1574, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17he77f6fb165360dbcE: %b"}
!1577 = !{!1578}
!1578 = distinct !{!1578, !1579, !"_ZN4core3ops8function5FnMut8call_mut17hfdaebbc4127ebd2fE: argument 0"}
!1579 = distinct !{!1579, !"_ZN4core3ops8function5FnMut8call_mut17hfdaebbc4127ebd2fE"}
!1580 = !{!1581}
!1581 = distinct !{!1581, !1579, !"_ZN4core3ops8function5FnMut8call_mut17hfdaebbc4127ebd2fE: argument 1"}
!1582 = !{!1583}
!1583 = distinct !{!1583, !1584, !"cmpfunc: %a"}
!1584 = distinct !{!1584, !"cmpfunc"}
!1585 = !{!1586}
!1586 = distinct !{!1586, !1584, !"cmpfunc: %b"}
!1587 = !{!1588}
!1588 = distinct !{!1588, !1589, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!1589 = distinct !{!1589, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!1590 = !{!1591}
!1591 = distinct !{!1591, !1589, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!1592 = !{!1588, !1583, !1578, !1573, !1571}
!1593 = !{!1591, !1586, !1581, !1576, !1568}
!1594 = !{!1595}
!1595 = distinct !{!1595, !1596, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h8e7c987dd7215355E: %self"}
!1596 = distinct !{!1596, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h8e7c987dd7215355E"}
!1597 = !{!1598}
!1598 = distinct !{!1598, !1599, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17h765278c3b1aab14fE: %a"}
!1599 = distinct !{!1599, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17h765278c3b1aab14fE"}
!1600 = !{!1601}
!1601 = distinct !{!1601, !1599, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17h765278c3b1aab14fE: %b"}
!1602 = !{!1603}
!1603 = distinct !{!1603, !1604, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17he77f6fb165360dbcE: %a"}
!1604 = distinct !{!1604, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17he77f6fb165360dbcE"}
!1605 = !{!1606}
!1606 = distinct !{!1606, !1604, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17he77f6fb165360dbcE: %b"}
!1607 = !{!1608}
!1608 = distinct !{!1608, !1609, !"_ZN4core3ops8function5FnMut8call_mut17hfdaebbc4127ebd2fE: argument 0"}
!1609 = distinct !{!1609, !"_ZN4core3ops8function5FnMut8call_mut17hfdaebbc4127ebd2fE"}
!1610 = !{!1611}
!1611 = distinct !{!1611, !1609, !"_ZN4core3ops8function5FnMut8call_mut17hfdaebbc4127ebd2fE: argument 1"}
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
!1622 = !{!1618, !1613, !1608, !1603, !1601}
!1623 = !{!1621, !1616, !1611, !1606, !1598}
!1624 = !{!1625}
!1625 = distinct !{!1625, !1626, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h8e7c987dd7215355E: %self"}
!1626 = distinct !{!1626, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h8e7c987dd7215355E"}
!1627 = !{!1628}
!1628 = distinct !{!1628, !1629, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h8e7c987dd7215355E: %self"}
!1629 = distinct !{!1629, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h8e7c987dd7215355E"}
!1630 = distinct !{!1630, !1476}
!1631 = !{!1632}
!1632 = distinct !{!1632, !1633, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17he77f6fb165360dbcE: %a"}
!1633 = distinct !{!1633, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17he77f6fb165360dbcE"}
!1634 = !{!1635}
!1635 = distinct !{!1635, !1633, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17he77f6fb165360dbcE: %b"}
!1636 = !{!1637}
!1637 = distinct !{!1637, !1638, !"_ZN4core3ops8function5FnMut8call_mut17hfdaebbc4127ebd2fE: argument 0"}
!1638 = distinct !{!1638, !"_ZN4core3ops8function5FnMut8call_mut17hfdaebbc4127ebd2fE"}
!1639 = !{!1640}
!1640 = distinct !{!1640, !1641, !"_ZN4core5slice4sort6shared5pivot7median317h1989c5927d84e428E: %c"}
!1641 = distinct !{!1641, !"_ZN4core5slice4sort6shared5pivot7median317h1989c5927d84e428E"}
!1642 = !{!1643}
!1643 = distinct !{!1643, !1638, !"_ZN4core3ops8function5FnMut8call_mut17hfdaebbc4127ebd2fE: argument 1"}
!1644 = !{!1645}
!1645 = distinct !{!1645, !1646, !"cmpfunc: %a"}
!1646 = distinct !{!1646, !"cmpfunc"}
!1647 = !{!1648}
!1648 = distinct !{!1648, !1646, !"cmpfunc: %b"}
!1649 = !{!1650}
!1650 = distinct !{!1650, !1651, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!1651 = distinct !{!1651, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!1652 = !{!1653}
!1653 = distinct !{!1653, !1651, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!1654 = !{!1650, !1645, !1637, !1632, !1655}
!1655 = distinct !{!1655, !1656, !"_ZN4core5slice4sort6shared5pivot12choose_pivot17h10dc2c1619e2aff0E: %v.0"}
!1656 = distinct !{!1656, !"_ZN4core5slice4sort6shared5pivot12choose_pivot17h10dc2c1619e2aff0E"}
!1657 = !{!1653, !1648, !1643, !1635, !1640, !1658}
!1658 = distinct !{!1658, !1656, !"_ZN4core5slice4sort6shared5pivot12choose_pivot17h10dc2c1619e2aff0E: %is_less"}
!1659 = !{!1653, !1648, !1643, !1635, !1655}
!1660 = !{!1650, !1645, !1637, !1632, !1640, !1658}
!1661 = !{!1662, !1664, !1666, !1668, !1655}
!1662 = distinct !{!1662, !1663, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!1663 = distinct !{!1663, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!1664 = distinct !{!1664, !1665, !"cmpfunc: %b"}
!1665 = distinct !{!1665, !"cmpfunc"}
!1666 = distinct !{!1666, !1667, !"_ZN4core3ops8function5FnMut8call_mut17hfdaebbc4127ebd2fE: argument 1"}
!1667 = distinct !{!1667, !"_ZN4core3ops8function5FnMut8call_mut17hfdaebbc4127ebd2fE"}
!1668 = distinct !{!1668, !1669, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17he77f6fb165360dbcE: %b"}
!1669 = distinct !{!1669, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17he77f6fb165360dbcE"}
!1670 = !{!1671, !1672, !1673, !1674, !1658}
!1671 = distinct !{!1671, !1663, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!1672 = distinct !{!1672, !1665, !"cmpfunc: %a"}
!1673 = distinct !{!1673, !1667, !"_ZN4core3ops8function5FnMut8call_mut17hfdaebbc4127ebd2fE: argument 0"}
!1674 = distinct !{!1674, !1669, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17he77f6fb165360dbcE: %a"}
!1675 = !{!1676, !1678, !1680, !1682}
!1676 = distinct !{!1676, !1677, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!1677 = distinct !{!1677, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!1678 = distinct !{!1678, !1679, !"cmpfunc: %a"}
!1679 = distinct !{!1679, !"cmpfunc"}
!1680 = distinct !{!1680, !1681, !"_ZN4core3ops8function5FnMut8call_mut17hfdaebbc4127ebd2fE: argument 0"}
!1681 = distinct !{!1681, !"_ZN4core3ops8function5FnMut8call_mut17hfdaebbc4127ebd2fE"}
!1682 = distinct !{!1682, !1683, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17he77f6fb165360dbcE: %a"}
!1683 = distinct !{!1683, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17he77f6fb165360dbcE"}
!1684 = !{!1685, !1686, !1687, !1688}
!1685 = distinct !{!1685, !1677, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!1686 = distinct !{!1686, !1679, !"cmpfunc: %b"}
!1687 = distinct !{!1687, !1681, !"_ZN4core3ops8function5FnMut8call_mut17hfdaebbc4127ebd2fE: argument 1"}
!1688 = distinct !{!1688, !1683, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17he77f6fb165360dbcE: %b"}
!1689 = !{!1690, !1692}
!1690 = distinct !{!1690, !1691, !"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$12split_at_mut17h292dc99e94580613E: %pair"}
!1691 = distinct !{!1691, !"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$12split_at_mut17h292dc99e94580613E"}
!1692 = distinct !{!1692, !1691, !"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$12split_at_mut17h292dc99e94580613E: %self.0"}
!1693 = !{!1694}
!1694 = distinct !{!1694, !1695, !"_ZN4core3cmp5impls54_$LT$impl$u20$core..cmp..PartialEq$u20$for$u20$i32$GT$2eq17had97b358009ebb28E: %self"}
!1695 = distinct !{!1695, !"_ZN4core3cmp5impls54_$LT$impl$u20$core..cmp..PartialEq$u20$for$u20$i32$GT$2eq17had97b358009ebb28E"}
!1696 = !{!1697}
!1697 = distinct !{!1697, !1695, !"_ZN4core3cmp5impls54_$LT$impl$u20$core..cmp..PartialEq$u20$for$u20$i32$GT$2eq17had97b358009ebb28E: %other"}
!1698 = !{i64 0, i64 -9223372036854775808}
!1699 = !{!1700}
!1700 = distinct !{!1700, !1701, !"_ZN9hashbrown3raw13RawTableInner16drop_inner_table17hdb88847ed13daaebE: %self"}
!1701 = distinct !{!1701, !"_ZN9hashbrown3raw13RawTableInner16drop_inner_table17hdb88847ed13daaebE"}
!1702 = !{!1703, !1705}
!1703 = distinct !{!1703, !1704, !"_ZN74_$LT$std..hash..random..RandomState$u20$as$u20$core..hash..BuildHasher$GT$12build_hasher17h0f2f0c02d90c5e40E: %self"}
!1704 = distinct !{!1704, !"_ZN74_$LT$std..hash..random..RandomState$u20$as$u20$core..hash..BuildHasher$GT$12build_hasher17h0f2f0c02d90c5e40E"}
!1705 = distinct !{!1705, !1706, !"_ZN4core4hash11BuildHasher8hash_one17h1855698abe03691bE: %self"}
!1706 = distinct !{!1706, !"_ZN4core4hash11BuildHasher8hash_one17h1855698abe03691bE"}
!1707 = !{!1708, !1709}
!1708 = distinct !{!1708, !1704, !"_ZN74_$LT$std..hash..random..RandomState$u20$as$u20$core..hash..BuildHasher$GT$12build_hasher17h0f2f0c02d90c5e40E: %_0"}
!1709 = distinct !{!1709, !1706, !"_ZN4core4hash11BuildHasher8hash_one17h1855698abe03691bE: argument 1"}
!1710 = !{!1711}
!1711 = distinct !{!1711, !1712, !"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$25find_or_find_insert_index17ha45d5bd688ebceaeE: %self"}
!1712 = distinct !{!1712, !"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$25find_or_find_insert_index17ha45d5bd688ebceaeE"}
!1713 = !{!1714, !1711}
!1714 = distinct !{!1714, !1715, !"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$7reserve17h8286d0de47522977E: %self"}
!1715 = distinct !{!1715, !"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$7reserve17h8286d0de47522977E"}
!1716 = !{!1717, !1718, !1719}
!1717 = distinct !{!1717, !1715, !"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$7reserve17h8286d0de47522977E: %hasher"}
!1718 = distinct !{!1718, !1712, !"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$25find_or_find_insert_index17ha45d5bd688ebceaeE: argument 1"}
!1719 = distinct !{!1719, !1712, !"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$25find_or_find_insert_index17ha45d5bd688ebceaeE: %hasher"}
!1720 = !{!1718}
!1721 = !{!1722}
!1722 = distinct !{!1722, !1723, !"_ZN9hashbrown3raw13RawTableInner31find_or_find_insert_index_inner17h961ad503800a0548E: %self"}
!1723 = distinct !{!1723, !"_ZN9hashbrown3raw13RawTableInner31find_or_find_insert_index_inner17h961ad503800a0548E"}
!1724 = !{!1722, !1711}
!1725 = !{!1718, !1719}
!1726 = !{!1727, !1722, !1711, !1718, !1719}
!1727 = distinct !{!1727, !1728, !"_ZN4core9core_arch3x864sse215_mm_loadu_si12817hacd8816d606c91f7E: %_0"}
!1728 = distinct !{!1728, !"_ZN4core9core_arch3x864sse215_mm_loadu_si12817hacd8816d606c91f7E"}
!1729 = !{!1730, !1732, !1734}
!1730 = distinct !{!1730, !1731, !"_ZN4core3cmp5impls54_$LT$impl$u20$core..cmp..PartialEq$u20$for$u20$i32$GT$2eq17had97b358009ebb28E: %other"}
!1731 = distinct !{!1731, !"_ZN4core3cmp5impls54_$LT$impl$u20$core..cmp..PartialEq$u20$for$u20$i32$GT$2eq17had97b358009ebb28E"}
!1732 = distinct !{!1732, !1733, !"_ZN52_$LT$Q$u20$as$u20$hashbrown..Equivalent$LT$K$GT$$GT$10equivalent17h5463d2eafb616768E: %key"}
!1733 = distinct !{!1733, !"_ZN52_$LT$Q$u20$as$u20$hashbrown..Equivalent$LT$K$GT$$GT$10equivalent17h5463d2eafb616768E"}
!1734 = distinct !{!1734, !1735, !"_ZN9hashbrown3map14equivalent_key28_$u7b$$u7b$closure$u7d$$u7d$17hcd8ee0e393e2f483E: %x"}
!1735 = distinct !{!1735, !"_ZN9hashbrown3map14equivalent_key28_$u7b$$u7b$closure$u7d$$u7d$17hcd8ee0e393e2f483E"}
!1736 = !{!1737, !1738, !1739, !1740, !1722, !1711, !1718, !1719}
!1737 = distinct !{!1737, !1731, !"_ZN4core3cmp5impls54_$LT$impl$u20$core..cmp..PartialEq$u20$for$u20$i32$GT$2eq17had97b358009ebb28E: %self"}
!1738 = distinct !{!1738, !1733, !"_ZN52_$LT$Q$u20$as$u20$hashbrown..Equivalent$LT$K$GT$$GT$10equivalent17h5463d2eafb616768E: %self"}
!1739 = distinct !{!1739, !1735, !"_ZN9hashbrown3map14equivalent_key28_$u7b$$u7b$closure$u7d$$u7d$17hcd8ee0e393e2f483E: %_1"}
!1740 = distinct !{!1740, !1741, !"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$25find_or_find_insert_index28_$u7b$$u7b$closure$u7d$$u7d$17hb56753ae23eb0d01E: %_1"}
!1741 = distinct !{!1741, !"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$25find_or_find_insert_index28_$u7b$$u7b$closure$u7d$$u7d$17hb56753ae23eb0d01E"}
!1742 = !{!"branch_weights", i32 2000, i32 2002}
!1743 = !{!1744, !1722, !1711, !1718, !1719}
!1744 = distinct !{!1744, !1745, !"_ZN9hashbrown3raw13RawTableInner16fix_insert_index17h49a70ae2ff162b38E: %self"}
!1745 = distinct !{!1745, !"_ZN9hashbrown3raw13RawTableInner16fix_insert_index17h49a70ae2ff162b38E"}
!1746 = !{!1747, !1744, !1722, !1711, !1718, !1719}
!1747 = distinct !{!1747, !1748, !"_ZN4core9core_arch3x864sse214_mm_load_si12817h5ca5bf15f399be86E: %_0"}
!1748 = distinct !{!1748, !"_ZN4core9core_arch3x864sse214_mm_load_si12817h5ca5bf15f399be86E"}
!1749 = !{!1750}
!1750 = distinct !{!1750, !1751, !"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$22insert_tagged_at_index17h812ce0c1ba82202dE: %self"}
!1751 = distinct !{!1751, !"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$22insert_tagged_at_index17h812ce0c1ba82202dE"}
!1752 = !{!"branch_weights", i32 2002, i32 2000}
!1753 = !{!1754}
!1754 = distinct !{!1754, !1755, !"_ZN9hashbrown3raw13RawTableInner20reserve_rehash_inner17h09a725d9f5f6ce5aE: %self"}
!1755 = distinct !{!1755, !"_ZN9hashbrown3raw13RawTableInner20reserve_rehash_inner17h09a725d9f5f6ce5aE"}
!1756 = !{!1757}
!1757 = distinct !{!1757, !1755, !"_ZN9hashbrown3raw13RawTableInner20reserve_rehash_inner17h09a725d9f5f6ce5aE: %alloc"}
!1758 = !{!1754, !1757}
!1759 = !{!1760}
!1760 = distinct !{!1760, !1761, !"_ZN9hashbrown3raw13RawTableInner12resize_inner17h4f9c1a421c5f10beE: %self"}
!1761 = distinct !{!1761, !"_ZN9hashbrown3raw13RawTableInner12resize_inner17h4f9c1a421c5f10beE"}
!1762 = !{!1763, !1765, !1760, !1754}
!1763 = distinct !{!1763, !1764, !"_ZN9hashbrown3raw13RawTableInner17new_uninitialized17hd5b45c5239ed3bf0E: %_0"}
!1764 = distinct !{!1764, !"_ZN9hashbrown3raw13RawTableInner17new_uninitialized17hd5b45c5239ed3bf0E"}
!1765 = distinct !{!1765, !1766, !"_ZN9hashbrown3raw13RawTableInner22fallible_with_capacity17h82eb3b2f6ae7aa56E: %_0"}
!1766 = distinct !{!1766, !"_ZN9hashbrown3raw13RawTableInner22fallible_with_capacity17h82eb3b2f6ae7aa56E"}
!1767 = !{!1765, !1760, !1754}
!1768 = !{!1760, !1754}
!1769 = !{!1770, !1757}
!1770 = distinct !{!1770, !1761, !"_ZN9hashbrown3raw13RawTableInner12resize_inner17h4f9c1a421c5f10beE: %alloc"}
!1771 = !{!1772, !1760, !1754}
!1772 = distinct !{!1772, !1773, !"_ZN4core9core_arch3x864sse214_mm_load_si12817h5ca5bf15f399be86E: %_0"}
!1773 = distinct !{!1773, !"_ZN4core9core_arch3x864sse214_mm_load_si12817h5ca5bf15f399be86E"}
!1774 = !{!1775}
!1775 = distinct !{!1775, !1776, !"_ZN4core9core_arch3x864sse214_mm_load_si12817h5ca5bf15f399be86E: %_0"}
!1776 = distinct !{!1776, !"_ZN4core9core_arch3x864sse214_mm_load_si12817h5ca5bf15f399be86E"}
!1777 = !{!1778}
!1778 = distinct !{!1778, !1779, !"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$14reserve_rehash28_$u7b$$u7b$closure$u7d$$u7d$17ha9638e1ca1f78d71E: %table"}
!1779 = distinct !{!1779, !"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$14reserve_rehash28_$u7b$$u7b$closure$u7d$$u7d$17ha9638e1ca1f78d71E"}
!1780 = !{!1781}
!1781 = distinct !{!1781, !1779, !"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$14reserve_rehash28_$u7b$$u7b$closure$u7d$$u7d$17ha9638e1ca1f78d71E: %_1"}
!1782 = !{!1783, !1785, !1787}
!1783 = distinct !{!1783, !1784, !"_ZN4core4hash5impls50_$LT$impl$u20$core..hash..Hash$u20$for$u20$i32$GT$4hash17h1aef32ef9e3c75e1E: %self"}
!1784 = distinct !{!1784, !"_ZN4core4hash5impls50_$LT$impl$u20$core..hash..Hash$u20$for$u20$i32$GT$4hash17h1aef32ef9e3c75e1E"}
!1785 = distinct !{!1785, !1786, !"_ZN4core4hash11BuildHasher8hash_one17h1855698abe03691bE: argument 1"}
!1786 = distinct !{!1786, !"_ZN4core4hash11BuildHasher8hash_one17h1855698abe03691bE"}
!1787 = distinct !{!1787, !1788, !"_ZN9hashbrown3map11make_hasher28_$u7b$$u7b$closure$u7d$$u7d$17hcf36c344707da63fE: %val"}
!1788 = distinct !{!1788, !"_ZN9hashbrown3map11make_hasher28_$u7b$$u7b$closure$u7d$$u7d$17hcf36c344707da63fE"}
!1789 = !{!1790, !1791, !1793, !1794, !1795, !1781, !1778}
!1790 = distinct !{!1790, !1784, !"_ZN4core4hash5impls50_$LT$impl$u20$core..hash..Hash$u20$for$u20$i32$GT$4hash17h1aef32ef9e3c75e1E: %state"}
!1791 = distinct !{!1791, !1792, !"_ZN4core4hash5impls52_$LT$impl$u20$core..hash..Hash$u20$for$u20$$RF$T$GT$4hash17h52ecffb2dabfdc07E: %self"}
!1792 = distinct !{!1792, !"_ZN4core4hash5impls52_$LT$impl$u20$core..hash..Hash$u20$for$u20$$RF$T$GT$4hash17h52ecffb2dabfdc07E"}
!1793 = distinct !{!1793, !1792, !"_ZN4core4hash5impls52_$LT$impl$u20$core..hash..Hash$u20$for$u20$$RF$T$GT$4hash17h52ecffb2dabfdc07E: %state"}
!1794 = distinct !{!1794, !1786, !"_ZN4core4hash11BuildHasher8hash_one17h1855698abe03691bE: %self"}
!1795 = distinct !{!1795, !1788, !"_ZN9hashbrown3map11make_hasher28_$u7b$$u7b$closure$u7d$$u7d$17hcf36c344707da63fE: %_1"}
!1796 = !{!1797}
!1797 = distinct !{!1797, !1798, !"_ZN4core3ptr10swap_chunk17h902d7b0077ac05c9E: %x"}
!1798 = distinct !{!1798, !"_ZN4core3ptr10swap_chunk17h902d7b0077ac05c9E"}
!1799 = !{!1800}
!1800 = distinct !{!1800, !1798, !"_ZN4core3ptr10swap_chunk17h902d7b0077ac05c9E: %y"}
!1801 = !{!1802}
!1802 = distinct !{!1802, !1798, !"_ZN4core3ptr10swap_chunk17h902d7b0077ac05c9E: %x:It1"}
!1803 = !{!1804}
!1804 = distinct !{!1804, !1798, !"_ZN4core3ptr10swap_chunk17h902d7b0077ac05c9E: %y:It1"}
!1805 = !{!1806}
!1806 = distinct !{!1806, !1798, !"_ZN4core3ptr10swap_chunk17h902d7b0077ac05c9E: %x:It2"}
!1807 = !{!1808}
!1808 = distinct !{!1808, !1798, !"_ZN4core3ptr10swap_chunk17h902d7b0077ac05c9E: %y:It2"}
!1809 = !{!1810, !1812, !1813, !1815}
!1810 = distinct !{!1810, !1811, !"_ZN9hashbrown3raw13RawTableInner14prepare_resize28_$u7b$$u7b$closure$u7d$$u7d$17h0781ead78ab8a9b7E: %_1"}
!1811 = distinct !{!1811, !"_ZN9hashbrown3raw13RawTableInner14prepare_resize28_$u7b$$u7b$closure$u7d$$u7d$17h0781ead78ab8a9b7E"}
!1812 = distinct !{!1812, !1811, !"_ZN9hashbrown3raw13RawTableInner14prepare_resize28_$u7b$$u7b$closure$u7d$$u7d$17h0781ead78ab8a9b7E: %self_"}
!1813 = distinct !{!1813, !1814, !"_ZN88_$LT$hashbrown..scopeguard..ScopeGuard$LT$T$C$F$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hc8cc4207d19f3cabE: %self"}
!1814 = distinct !{!1814, !"_ZN88_$LT$hashbrown..scopeguard..ScopeGuard$LT$T$C$F$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hc8cc4207d19f3cabE"}
!1815 = distinct !{!1815, !1816, !"_ZN4core3ptr196drop_in_place$LT$hashbrown..scopeguard..ScopeGuard$LT$hashbrown..raw..RawTableInner$C$hashbrown..raw..RawTableInner..prepare_resize$LT$alloc..alloc..Global$GT$..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$17h470c7daf7ddbbdccE: %_1"}
!1816 = distinct !{!1816, !"_ZN4core3ptr196drop_in_place$LT$hashbrown..scopeguard..ScopeGuard$LT$hashbrown..raw..RawTableInner$C$hashbrown..raw..RawTableInner..prepare_resize$LT$alloc..alloc..Global$GT$..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$17h470c7daf7ddbbdccE"}
!1817 = !{!1818, !1820}
!1818 = distinct !{!1818, !1819, !"_ZN4core9core_arch3x864sse215_mm_loadu_si12817hacd8816d606c91f7E: %_0"}
!1819 = distinct !{!1819, !"_ZN4core9core_arch3x864sse215_mm_loadu_si12817hacd8816d606c91f7E"}
!1820 = distinct !{!1820, !1821, !"_ZN9hashbrown3raw13RawTableInner17find_insert_index17hefd304a0a25f3240E: %self"}
!1821 = distinct !{!1821, !"_ZN9hashbrown3raw13RawTableInner17find_insert_index17hefd304a0a25f3240E"}
!1822 = !{!1823, !1820}
!1823 = distinct !{!1823, !1824, !"_ZN9hashbrown3raw13RawTableInner16fix_insert_index17h49a70ae2ff162b38E: %self"}
!1824 = distinct !{!1824, !"_ZN9hashbrown3raw13RawTableInner16fix_insert_index17h49a70ae2ff162b38E"}
!1825 = !{!1826, !1823, !1820}
!1826 = distinct !{!1826, !1827, !"_ZN4core9core_arch3x864sse214_mm_load_si12817h5ca5bf15f399be86E: %_0"}
!1827 = distinct !{!1827, !"_ZN4core9core_arch3x864sse214_mm_load_si12817h5ca5bf15f399be86E"}
!1828 = !{!1829}
!1829 = distinct !{!1829, !1830, !"_ZN9hashbrown3raw13RawTableInner15rehash_in_place17haee1e6799e4651aaE: %self"}
!1830 = distinct !{!1830, !"_ZN9hashbrown3raw13RawTableInner15rehash_in_place17haee1e6799e4651aaE"}
!1831 = !{!1832}
!1832 = distinct !{!1832, !1833, !"_ZN9hashbrown3raw13RawTableInner23prepare_rehash_in_place17hcbd491505aa60c12E: %self"}
!1833 = distinct !{!1833, !"_ZN9hashbrown3raw13RawTableInner23prepare_rehash_in_place17hcbd491505aa60c12E"}
!1834 = !{!1832, !1829}
!1835 = !{!1836, !1832, !1829, !1757}
!1836 = distinct !{!1836, !1837, !"_ZN4core9core_arch3x864sse214_mm_load_si12817h5ca5bf15f399be86E: %_0"}
!1837 = distinct !{!1837, !"_ZN4core9core_arch3x864sse214_mm_load_si12817h5ca5bf15f399be86E"}
!1838 = !{!1839, !1832, !1829, !1757}
!1839 = distinct !{!1839, !1840, !"_ZN4core9core_arch3x864sse215_mm_store_si12817h0a8af9197e05ad46E: %a"}
!1840 = distinct !{!1840, !"_ZN4core9core_arch3x864sse215_mm_store_si12817h0a8af9197e05ad46E"}
!1841 = !{!1832, !1829, !1757}
!1842 = !{!1829, !1757}
!1843 = !{!1844, !1846, !1848}
!1844 = distinct !{!1844, !1845, !"_ZN4core4hash5impls50_$LT$impl$u20$core..hash..Hash$u20$for$u20$i32$GT$4hash17h1aef32ef9e3c75e1E: %self"}
!1845 = distinct !{!1845, !"_ZN4core4hash5impls50_$LT$impl$u20$core..hash..Hash$u20$for$u20$i32$GT$4hash17h1aef32ef9e3c75e1E"}
!1846 = distinct !{!1846, !1847, !"_ZN4core4hash11BuildHasher8hash_one17h1855698abe03691bE: argument 1"}
!1847 = distinct !{!1847, !"_ZN4core4hash11BuildHasher8hash_one17h1855698abe03691bE"}
!1848 = distinct !{!1848, !1849, !"_ZN9hashbrown3map11make_hasher28_$u7b$$u7b$closure$u7d$$u7d$17hcf36c344707da63fE: %val"}
!1849 = distinct !{!1849, !"_ZN9hashbrown3map11make_hasher28_$u7b$$u7b$closure$u7d$$u7d$17hcf36c344707da63fE"}
!1850 = !{!1851, !1852, !1854, !1855, !1856, !1857, !1859, !1829, !1757}
!1851 = distinct !{!1851, !1845, !"_ZN4core4hash5impls50_$LT$impl$u20$core..hash..Hash$u20$for$u20$i32$GT$4hash17h1aef32ef9e3c75e1E: %state"}
!1852 = distinct !{!1852, !1853, !"_ZN4core4hash5impls52_$LT$impl$u20$core..hash..Hash$u20$for$u20$$RF$T$GT$4hash17h52ecffb2dabfdc07E: %self"}
!1853 = distinct !{!1853, !"_ZN4core4hash5impls52_$LT$impl$u20$core..hash..Hash$u20$for$u20$$RF$T$GT$4hash17h52ecffb2dabfdc07E"}
!1854 = distinct !{!1854, !1853, !"_ZN4core4hash5impls52_$LT$impl$u20$core..hash..Hash$u20$for$u20$$RF$T$GT$4hash17h52ecffb2dabfdc07E: %state"}
!1855 = distinct !{!1855, !1847, !"_ZN4core4hash11BuildHasher8hash_one17h1855698abe03691bE: %self"}
!1856 = distinct !{!1856, !1849, !"_ZN9hashbrown3map11make_hasher28_$u7b$$u7b$closure$u7d$$u7d$17hcf36c344707da63fE: %_1"}
!1857 = distinct !{!1857, !1858, !"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$14reserve_rehash28_$u7b$$u7b$closure$u7d$$u7d$17ha9638e1ca1f78d71E: %_1"}
!1858 = distinct !{!1858, !"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$14reserve_rehash28_$u7b$$u7b$closure$u7d$$u7d$17ha9638e1ca1f78d71E"}
!1859 = distinct !{!1859, !1858, !"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$14reserve_rehash28_$u7b$$u7b$closure$u7d$$u7d$17ha9638e1ca1f78d71E: %table"}
!1860 = !{!1861, !1863, !1829, !1757}
!1861 = distinct !{!1861, !1862, !"_ZN4core9core_arch3x864sse215_mm_loadu_si12817hacd8816d606c91f7E: %_0"}
!1862 = distinct !{!1862, !"_ZN4core9core_arch3x864sse215_mm_loadu_si12817hacd8816d606c91f7E"}
!1863 = distinct !{!1863, !1864, !"_ZN9hashbrown3raw13RawTableInner17find_insert_index17hefd304a0a25f3240E: %self"}
!1864 = distinct !{!1864, !"_ZN9hashbrown3raw13RawTableInner17find_insert_index17hefd304a0a25f3240E"}
!1865 = !{!1866, !1863, !1829, !1757}
!1866 = distinct !{!1866, !1867, !"_ZN9hashbrown3raw13RawTableInner16fix_insert_index17h49a70ae2ff162b38E: %self"}
!1867 = distinct !{!1867, !"_ZN9hashbrown3raw13RawTableInner16fix_insert_index17h49a70ae2ff162b38E"}
!1868 = !{!1869, !1866, !1863, !1829, !1757}
!1869 = distinct !{!1869, !1870, !"_ZN4core9core_arch3x864sse214_mm_load_si12817h5ca5bf15f399be86E: %_0"}
!1870 = distinct !{!1870, !"_ZN4core9core_arch3x864sse214_mm_load_si12817h5ca5bf15f399be86E"}
!1871 = !{!1872}
!1872 = distinct !{!1872, !1873, !"_ZN4core3ptr10swap_chunk17h902d7b0077ac05c9E: %x"}
!1873 = distinct !{!1873, !"_ZN4core3ptr10swap_chunk17h902d7b0077ac05c9E"}
!1874 = !{!1875}
!1875 = distinct !{!1875, !1873, !"_ZN4core3ptr10swap_chunk17h902d7b0077ac05c9E: %y"}
!1876 = !{!1875, !1829, !1757}
!1877 = !{!1872, !1829, !1757}
!1878 = !{!1879}
!1879 = distinct !{!1879, !1880, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!1880 = distinct !{!1880, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!1881 = !{!1882}
!1882 = distinct !{!1882, !1880, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!1883 = !{!1884}
!1884 = distinct !{!1884, !1885, !"_ZN3std11collections4hash3map20HashMap$LT$K$C$V$GT$3new17hfd1883de9fe6b1e7E: %_0"}
!1885 = distinct !{!1885, !"_ZN3std11collections4hash3map20HashMap$LT$K$C$V$GT$3new17hfd1883de9fe6b1e7E"}
!1886 = !{!1887, !1889, !1891, !1893, !1895, !1896, !1884}
!1887 = distinct !{!1887, !1888, !"_ZN3std3sys12thread_local6native4lazy20Storage$LT$T$C$D$GT$11get_or_init17h7f490380c4d7ca30E: %i"}
!1888 = distinct !{!1888, !"_ZN3std3sys12thread_local6native4lazy20Storage$LT$T$C$D$GT$11get_or_init17h7f490380c4d7ca30E"}
!1889 = distinct !{!1889, !1890, !"_ZN3std4hash6random11RandomState3new4KEYS29_$u7b$$u7b$constant$u7d$$u7d$28_$u7b$$u7b$closure$u7d$$u7d$17hdfee8c15ffb41402E: %__rust_std_internal_init"}
!1890 = distinct !{!1890, !"_ZN3std4hash6random11RandomState3new4KEYS29_$u7b$$u7b$constant$u7d$$u7d$28_$u7b$$u7b$closure$u7d$$u7d$17hdfee8c15ffb41402E"}
!1891 = distinct !{!1891, !1892, !"_ZN4core3ops8function6FnOnce9call_once17h2c588f9833ffad73E: argument 0"}
!1892 = distinct !{!1892, !"_ZN4core3ops8function6FnOnce9call_once17h2c588f9833ffad73E"}
!1893 = distinct !{!1893, !1894, !"_ZN3std6thread5local17LocalKey$LT$T$GT$8try_with17hbaadd1d0225c0a95E: %_0"}
!1894 = distinct !{!1894, !"_ZN3std6thread5local17LocalKey$LT$T$GT$8try_with17hbaadd1d0225c0a95E"}
!1895 = distinct !{!1895, !1894, !"_ZN3std6thread5local17LocalKey$LT$T$GT$8try_with17hbaadd1d0225c0a95E: %self"}
!1896 = distinct !{!1896, !1897, !"_ZN3std6thread5local17LocalKey$LT$T$GT$4with17h8b0e374463f7b52fE: %self"}
!1897 = distinct !{!1897, !"_ZN3std6thread5local17LocalKey$LT$T$GT$4with17h8b0e374463f7b52fE"}
!1898 = !{!1899, !1893, !1895, !1896, !1884}
!1899 = distinct !{!1899, !1900, !"_ZN3std3sys12thread_local6native4lazy20Storage$LT$T$C$D$GT$16get_or_init_slow17h2164e0f9696029b0E: argument 0"}
!1900 = distinct !{!1900, !"_ZN3std3sys12thread_local6native4lazy20Storage$LT$T$C$D$GT$16get_or_init_slow17h2164e0f9696029b0E"}
!1901 = !{!1893, !1895, !1896, !1884}
!1902 = !{!1903}
!1903 = distinct !{!1903, !1904, !"_ZN4core3ptr74drop_in_place$LT$std..collections..hash..map..HashMap$LT$i32$C$i32$GT$$GT$17haecec49db4630a32E: %_1"}
!1904 = distinct !{!1904, !"_ZN4core3ptr74drop_in_place$LT$std..collections..hash..map..HashMap$LT$i32$C$i32$GT$$GT$17haecec49db4630a32E"}
!1905 = !{!1906}
!1906 = distinct !{!1906, !1907, !"_ZN4core3ptr94drop_in_place$LT$hashbrown..map..HashMap$LT$i32$C$i32$C$std..hash..random..RandomState$GT$$GT$17hb58494acf46a3698E: %_1"}
!1907 = distinct !{!1907, !"_ZN4core3ptr94drop_in_place$LT$hashbrown..map..HashMap$LT$i32$C$i32$C$std..hash..random..RandomState$GT$$GT$17hb58494acf46a3698E"}
!1908 = !{!1909}
!1909 = distinct !{!1909, !1910, !"_ZN4core3ptr70drop_in_place$LT$hashbrown..raw..RawTable$LT$$LP$i32$C$i32$RP$$GT$$GT$17ha4500afe9c89997dE: %_1"}
!1910 = distinct !{!1910, !"_ZN4core3ptr70drop_in_place$LT$hashbrown..raw..RawTable$LT$$LP$i32$C$i32$RP$$GT$$GT$17ha4500afe9c89997dE"}
!1911 = !{!1912}
!1912 = distinct !{!1912, !1913, !"_ZN79_$LT$hashbrown..raw..RawTable$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h0a96ee9768e3f12bE: %self"}
!1913 = distinct !{!1913, !"_ZN79_$LT$hashbrown..raw..RawTable$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h0a96ee9768e3f12bE"}
!1914 = !{!1915}
!1915 = distinct !{!1915, !1916, !"_ZN9hashbrown3raw13RawTableInner16drop_inner_table17hdb88847ed13daaebE: %self"}
!1916 = distinct !{!1916, !"_ZN9hashbrown3raw13RawTableInner16drop_inner_table17hdb88847ed13daaebE"}
!1917 = !{!1915, !1912, !1909, !1906, !1903}
!1918 = !{!"branch_weights", i32 1, i32 127}
!1919 = !{!1920}
!1920 = distinct !{!1920, !1921, !"_ZN49_$LT$$RF$i32$u20$as$u20$core..ops..arith..Add$GT$3add17h6bbcd2b6ca89f51eE: %self"}
!1921 = distinct !{!1921, !"_ZN49_$LT$$RF$i32$u20$as$u20$core..ops..arith..Add$GT$3add17h6bbcd2b6ca89f51eE"}
!1922 = !{!1923}
!1923 = distinct !{!1923, !1921, !"_ZN49_$LT$$RF$i32$u20$as$u20$core..ops..arith..Add$GT$3add17h6bbcd2b6ca89f51eE: %other"}
!1924 = !{!1925}
!1925 = distinct !{!1925, !1926, !"_ZN4core3ptr74drop_in_place$LT$std..collections..hash..map..HashMap$LT$i32$C$i32$GT$$GT$17haecec49db4630a32E: %_1"}
!1926 = distinct !{!1926, !"_ZN4core3ptr74drop_in_place$LT$std..collections..hash..map..HashMap$LT$i32$C$i32$GT$$GT$17haecec49db4630a32E"}
!1927 = !{!1928}
!1928 = distinct !{!1928, !1929, !"_ZN4core3ptr94drop_in_place$LT$hashbrown..map..HashMap$LT$i32$C$i32$C$std..hash..random..RandomState$GT$$GT$17hb58494acf46a3698E: %_1"}
!1929 = distinct !{!1929, !"_ZN4core3ptr94drop_in_place$LT$hashbrown..map..HashMap$LT$i32$C$i32$C$std..hash..random..RandomState$GT$$GT$17hb58494acf46a3698E"}
!1930 = !{!1931}
!1931 = distinct !{!1931, !1932, !"_ZN4core3ptr70drop_in_place$LT$hashbrown..raw..RawTable$LT$$LP$i32$C$i32$RP$$GT$$GT$17ha4500afe9c89997dE: %_1"}
!1932 = distinct !{!1932, !"_ZN4core3ptr70drop_in_place$LT$hashbrown..raw..RawTable$LT$$LP$i32$C$i32$RP$$GT$$GT$17ha4500afe9c89997dE"}
!1933 = !{!1934}
!1934 = distinct !{!1934, !1935, !"_ZN79_$LT$hashbrown..raw..RawTable$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h0a96ee9768e3f12bE: %self"}
!1935 = distinct !{!1935, !"_ZN79_$LT$hashbrown..raw..RawTable$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h0a96ee9768e3f12bE"}
!1936 = !{!1937}
!1937 = distinct !{!1937, !1938, !"_ZN9hashbrown3raw13RawTableInner16drop_inner_table17hdb88847ed13daaebE: %self"}
!1938 = distinct !{!1938, !"_ZN9hashbrown3raw13RawTableInner16drop_inner_table17hdb88847ed13daaebE"}
!1939 = !{!1937, !1934, !1931, !1928, !1925}
!1940 = !{!1941}
!1941 = distinct !{!1941, !1942, !"_ZN49_$LT$$RF$i32$u20$as$u20$core..ops..arith..Add$GT$3add17h6bbcd2b6ca89f51eE: %self"}
!1942 = distinct !{!1942, !"_ZN49_$LT$$RF$i32$u20$as$u20$core..ops..arith..Add$GT$3add17h6bbcd2b6ca89f51eE"}
!1943 = !{!1944}
!1944 = distinct !{!1944, !1942, !"_ZN49_$LT$$RF$i32$u20$as$u20$core..ops..arith..Add$GT$3add17h6bbcd2b6ca89f51eE: %other"}
!1945 = !{!"branch_weights", i32 127, i32 255873}
!1946 = !{!1947}
!1947 = distinct !{!1947, !1948, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by17hb5335e09377b4facE: %self.0"}
!1948 = distinct !{!1948, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by17hb5335e09377b4facE"}
!1949 = !{!1950, !1952, !1947}
!1950 = distinct !{!1950, !1951, !"_ZN5alloc5slice11stable_sort17hedeef39d2ce4d690E: %v.0"}
!1951 = distinct !{!1951, !"_ZN5alloc5slice11stable_sort17hedeef39d2ce4d690E"}
!1952 = distinct !{!1952, !1951, !"_ZN5alloc5slice11stable_sort17hedeef39d2ce4d690E: argument 1"}

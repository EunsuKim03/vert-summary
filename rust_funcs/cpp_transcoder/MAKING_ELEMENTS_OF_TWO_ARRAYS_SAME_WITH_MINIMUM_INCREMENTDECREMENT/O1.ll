; ModuleID = 'MAKING_ELEMENTS_OF_TWO_ARRAYS_SAME_WITH_MINIMUM_INCREMENTDECREMENT_emit.ff5e9c73dda353e5-cgu.0'
source_filename = "MAKING_ELEMENTS_OF_TWO_ARRAYS_SAME_WITH_MINIMUM_INCREMENTDECREMENT_emit.ff5e9c73dda353e5-cgu.0"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%"core::mem::maybe_uninit::MaybeUninit<[u8; 8]>" = type { [8 x i8] }

@alloc_d1084648e479974e70c9329824bf76f9 = private unnamed_addr constant [9 x i8] c"mid > len", align 1
@alloc_e8e5fd9f509afcb950667480b3e3e42a = private unnamed_addr constant [126 x i8] c"/root/.rustup/toolchains/stable-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/slice/sort/stable/quicksort.rs\00", align 1
@alloc_58d434a1e795f965ef82c8e9c5db822a = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_e8e5fd9f509afcb950667480b3e3e42a, [16 x i8] c"}\00\00\00\00\00\00\00J\00\00\00\1F\00\00\00" }>, align 8
@alloc_0766b232215672ee1bd2195fdb153938 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_e8e5fd9f509afcb950667480b3e3e42a, [16 x i8] c"}\00\00\00\00\00\00\00D\00\00\00\17\00\00\00" }>, align 8
@alloc_ffa344d1d1f7bccc060435600714cafe = private unnamed_addr constant [187 x i8] c"/root/es/vert/vert/rust_funcs/cpp_transcoder/MAKING_ELEMENTS_OF_TWO_ARRAYS_SAME_WITH_MINIMUM_INCREMENTDECREMENT/MAKING_ELEMENTS_OF_TWO_ARRAYS_SAME_WITH_MINIMUM_INCREMENTDECREMENT_emit.rs\00", align 1
@alloc_4a4e7fec44b84c1472b04d0c86f3e1b7 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_ffa344d1d1f7bccc060435600714cafe, [16 x i8] c"\BA\00\00\00\00\00\00\00\18\00\00\00'\00\00\00" }>, align 8
@alloc_b0e33ba48ef5fa15e44a55a18226b5ac = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_ffa344d1d1f7bccc060435600714cafe, [16 x i8] c"\BA\00\00\00\00\00\00\00\17\00\00\00'\00\00\00" }>, align 8
@alloc_bb80c4294bf98485d1cae0b45be62c99 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_ffa344d1d1f7bccc060435600714cafe, [16 x i8] c"\BA\00\00\00\00\00\00\00\1B\00\00\00\14\00\00\00" }>, align 8
@alloc_f4ef7df7705ab5192cda3ed35c9cf9c8 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_ffa344d1d1f7bccc060435600714cafe, [16 x i8] c"\BA\00\00\00\00\00\00\00\1B\00\00\00\1B\00\00\00" }>, align 8

; core::ptr::swap_nonoverlapping_bytes::swap_nonoverlapping_chunks
; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable
define void @_ZN4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunks17h184d732f1d003149E(ptr noundef captures(none) %x, ptr noundef captures(none) %y, i64 noundef range(i64 1, 0) %chunks) unnamed_addr #0 {
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6)
  %_3.sroa.0.0.copyload.i.epil = load i64, ptr %_11.epil, align 1, !alias.scope !3, !noalias !6
  %_4.sroa.0.0.copyload.i.epil = load i64, ptr %_13.epil, align 1, !alias.scope !6, !noalias !3
  store i64 %_4.sroa.0.0.copyload.i.epil, ptr %_11.epil, align 1, !alias.scope !3, !noalias !6
  store i64 %_3.sroa.0.0.copyload.i.epil, ptr %_13.epil, align 1, !alias.scope !6, !noalias !3
  br label %bb4

bb4:                                              ; preds = %bb4.unr-lcssa, %bb3.epil
  ret void

bb3:                                              ; preds = %bb3, %start.new
  %iter.sroa.0.02 = phi i64 [ 0, %start.new ], [ %_18.1, %bb3 ]
  %niter = phi i64 [ 0, %start.new ], [ %niter.next.1, %bb3 ]
  %_18 = or disjoint i64 %iter.sroa.0.02, 1
  %_11 = getelementptr inbounds nuw %"core::mem::maybe_uninit::MaybeUninit<[u8; 8]>", ptr %x, i64 %iter.sroa.0.02
  %_13 = getelementptr inbounds nuw %"core::mem::maybe_uninit::MaybeUninit<[u8; 8]>", ptr %y, i64 %iter.sroa.0.02
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6)
  %_3.sroa.0.0.copyload.i = load i64, ptr %_11, align 1, !alias.scope !3, !noalias !6
  %_4.sroa.0.0.copyload.i = load i64, ptr %_13, align 1, !alias.scope !6, !noalias !3
  store i64 %_4.sroa.0.0.copyload.i, ptr %_11, align 1, !alias.scope !3, !noalias !6
  store i64 %_3.sroa.0.0.copyload.i, ptr %_13, align 1, !alias.scope !6, !noalias !3
  %_18.1 = add nuw i64 %iter.sroa.0.02, 2
  %_11.1 = getelementptr inbounds nuw %"core::mem::maybe_uninit::MaybeUninit<[u8; 8]>", ptr %x, i64 %_18
  %_13.1 = getelementptr inbounds nuw %"core::mem::maybe_uninit::MaybeUninit<[u8; 8]>", ptr %y, i64 %_18
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10)
  %_3.sroa.0.0.copyload.i.1 = load i64, ptr %_11.1, align 1, !alias.scope !8, !noalias !10
  %_4.sroa.0.0.copyload.i.1 = load i64, ptr %_13.1, align 1, !alias.scope !10, !noalias !8
  store i64 %_4.sroa.0.0.copyload.i.1, ptr %_11.1, align 1, !alias.scope !8, !noalias !10
  store i64 %_3.sroa.0.0.copyload.i.1, ptr %_13.1, align 1, !alias.scope !10, !noalias !8
  %niter.next.1 = add i64 %niter, 2
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %bb4.unr-lcssa, label %bb3
}

; core::slice::sort::shared::pivot::median3_rec
; Function Attrs: nonlazybind uwtable
define noundef nonnull ptr @_ZN4core5slice4sort6shared5pivot11median3_rec17h16032f23b0df01aeE(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %n, ptr noalias noundef align 8 dereferenceable(8) %is_less) unnamed_addr #1 {
start:
  %3 = and i64 %n, 2305843009213693944
  %_6.not = icmp eq i64 %3, 0
  br i1 %_6.not, label %bb6, label %bb1

bb1:                                              ; preds = %start
  %n84 = lshr i64 %n, 3
  %count = shl nuw nsw i64 %n84, 2
  %_10 = getelementptr inbounds nuw float, ptr %0, i64 %count
  %count1 = mul nuw i64 %n84, 7
  %_13 = getelementptr inbounds nuw float, ptr %0, i64 %count1
; call core::slice::sort::shared::pivot::median3_rec
  %4 = tail call noundef ptr @_ZN4core5slice4sort6shared5pivot11median3_rec17h16032f23b0df01aeE(ptr noundef %0, ptr noundef %_10, ptr noundef %_13, i64 noundef %n84, ptr noalias noundef align 8 dereferenceable(8) %is_less)
  %_16 = getelementptr inbounds nuw float, ptr %1, i64 %count
  %_18 = getelementptr inbounds nuw float, ptr %1, i64 %count1
; call core::slice::sort::shared::pivot::median3_rec
  %5 = tail call noundef ptr @_ZN4core5slice4sort6shared5pivot11median3_rec17h16032f23b0df01aeE(ptr noundef %1, ptr noundef %_16, ptr noundef %_18, i64 noundef %n84, ptr noalias noundef align 8 dereferenceable(8) %is_less)
  %_20 = getelementptr inbounds nuw float, ptr %2, i64 %count
  %_22 = getelementptr inbounds nuw float, ptr %2, i64 %count1
; call core::slice::sort::shared::pivot::median3_rec
  %6 = tail call noundef ptr @_ZN4core5slice4sort6shared5pivot11median3_rec17h16032f23b0df01aeE(ptr noundef %2, ptr noundef %_20, ptr noundef %_22, i64 noundef %n84, ptr noalias noundef align 8 dereferenceable(8) %is_less)
  br label %bb6

bb6:                                              ; preds = %start, %bb1
  %c.sroa.0.0 = phi ptr [ %6, %bb1 ], [ %2, %start ]
  %b.sroa.0.0 = phi ptr [ %5, %bb1 ], [ %1, %start ]
  %a.sroa.0.0 = phi ptr [ %4, %bb1 ], [ %0, %start ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !15)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !17), !noalias !20
  tail call void @llvm.experimental.noalias.scope.decl(metadata !23), !noalias !20
  tail call void @llvm.experimental.noalias.scope.decl(metadata !25), !noalias !20
  tail call void @llvm.experimental.noalias.scope.decl(metadata !28), !noalias !20
  %_4.i.i.i = load float, ptr %a.sroa.0.0, align 4, !alias.scope !30, !noalias !31, !noundef !32
  %_5.i.i.i = load float, ptr %b.sroa.0.0, align 4, !alias.scope !33, !noalias !34, !noundef !32
  %.not.i.i.i = fcmp uno float %_4.i.i.i, %_5.i.i.i
  br i1 %.not.i.i.i, label %bb2.i.i.i, label %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf5b8f37855ac0c3dE.exit", !prof !35

bb2.i.i.i:                                        ; preds = %bb6
; call core::option::unwrap_failed
  tail call void @_ZN4core6option13unwrap_failed17hef2534b77b89c04fE(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_b0e33ba48ef5fa15e44a55a18226b5ac) #24, !noalias !36
  unreachable

"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf5b8f37855ac0c3dE.exit": ; preds = %bb6
  %_0.i = fcmp olt float %_4.i.i.i, %_5.i.i.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !37)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !40)
  %_5.i.i.i6 = load float, ptr %c.sroa.0.0, align 4, !alias.scope !43, !noalias !46, !noundef !32
  %.not.i.i.i7 = fcmp uno float %_4.i.i.i, %_5.i.i.i6
  br i1 %.not.i.i.i7, label %bb2.i.i.i9, label %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf5b8f37855ac0c3dE.exit10", !prof !35

bb2.i.i.i9:                                       ; preds = %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf5b8f37855ac0c3dE.exit"
; call core::option::unwrap_failed
  tail call void @_ZN4core6option13unwrap_failed17hef2534b77b89c04fE(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_b0e33ba48ef5fa15e44a55a18226b5ac) #24, !noalias !50
  unreachable

"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf5b8f37855ac0c3dE.exit10": ; preds = %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf5b8f37855ac0c3dE.exit"
  %_0.i8 = fcmp olt float %_4.i.i.i, %_5.i.i.i6
  %7 = xor i1 %_0.i, %_0.i8
  br i1 %7, label %_ZN4core5slice4sort6shared5pivot7median317h997f2f4aad5b9139E.exit, label %bb3.i

bb3.i:                                            ; preds = %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf5b8f37855ac0c3dE.exit10"
  %.not.i.i.i13 = fcmp uno float %_5.i.i.i, %_5.i.i.i6
  br i1 %.not.i.i.i13, label %bb2.i.i.i15, label %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf5b8f37855ac0c3dE.exit16", !prof !35

bb2.i.i.i15:                                      ; preds = %bb3.i
; call core::option::unwrap_failed
  tail call void @_ZN4core6option13unwrap_failed17hef2534b77b89c04fE(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_b0e33ba48ef5fa15e44a55a18226b5ac) #24, !noalias !51
  unreachable

"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf5b8f37855ac0c3dE.exit16": ; preds = %bb3.i
  %_0.i14 = fcmp olt float %_5.i.i.i, %_5.i.i.i6
  %_12.i = xor i1 %_0.i, %_0.i14
  %c.b.i = select i1 %_12.i, ptr %c.sroa.0.0, ptr %b.sroa.0.0
  br label %_ZN4core5slice4sort6shared5pivot7median317h997f2f4aad5b9139E.exit

_ZN4core5slice4sort6shared5pivot7median317h997f2f4aad5b9139E.exit: ; preds = %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf5b8f37855ac0c3dE.exit10", %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf5b8f37855ac0c3dE.exit16"
  %_0.sroa.0.0.i = phi ptr [ %a.sroa.0.0, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf5b8f37855ac0c3dE.exit10" ], [ %c.b.i, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf5b8f37855ac0c3dE.exit16" ]
  ret ptr %_0.sroa.0.0.i
}

; core::slice::sort::shared::pivot::median3_rec
; Function Attrs: nofree nosync nounwind nonlazybind memory(read, inaccessiblemem: readwrite) uwtable
define noundef nonnull ptr @_ZN4core5slice4sort6shared5pivot11median3_rec17h48858054538ba0a9E(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %n, ptr noalias noundef align 8 dereferenceable(8) %is_less) unnamed_addr #2 {
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
  %4 = tail call noundef ptr @_ZN4core5slice4sort6shared5pivot11median3_rec17h48858054538ba0a9E(ptr noundef %0, ptr noundef %_10, ptr noundef %_13, i64 noundef %n84, ptr noalias noundef align 8 dereferenceable(8) %is_less)
  %_16 = getelementptr inbounds nuw i32, ptr %1, i64 %count
  %_18 = getelementptr inbounds nuw i32, ptr %1, i64 %count1
; call core::slice::sort::shared::pivot::median3_rec
  %5 = tail call noundef ptr @_ZN4core5slice4sort6shared5pivot11median3_rec17h48858054538ba0a9E(ptr noundef %1, ptr noundef %_16, ptr noundef %_18, i64 noundef %n84, ptr noalias noundef align 8 dereferenceable(8) %is_less)
  %_20 = getelementptr inbounds nuw i32, ptr %2, i64 %count
  %_22 = getelementptr inbounds nuw i32, ptr %2, i64 %count1
; call core::slice::sort::shared::pivot::median3_rec
  %6 = tail call noundef ptr @_ZN4core5slice4sort6shared5pivot11median3_rec17h48858054538ba0a9E(ptr noundef %2, ptr noundef %_20, ptr noundef %_22, i64 noundef %n84, ptr noalias noundef align 8 dereferenceable(8) %is_less)
  br label %bb6

bb6:                                              ; preds = %start, %bb1
  %c.sroa.0.0 = phi ptr [ %6, %bb1 ], [ %2, %start ]
  %b.sroa.0.0 = phi ptr [ %5, %bb1 ], [ %1, %start ]
  %a.sroa.0.0 = phi ptr [ %4, %bb1 ], [ %0, %start ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !58)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !61)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !63), !noalias !66
  tail call void @llvm.experimental.noalias.scope.decl(metadata !69), !noalias !66
  tail call void @llvm.experimental.noalias.scope.decl(metadata !71), !noalias !66
  tail call void @llvm.experimental.noalias.scope.decl(metadata !74), !noalias !66
  tail call void @llvm.experimental.noalias.scope.decl(metadata !76), !noalias !66
  tail call void @llvm.experimental.noalias.scope.decl(metadata !79), !noalias !66
  %_3.i.i.i.i = load i32, ptr %a.sroa.0.0, align 4, !alias.scope !81, !noalias !82, !noundef !32
  %_4.i.i.i.i = load i32, ptr %b.sroa.0.0, align 4, !alias.scope !83, !noalias !84, !noundef !32
  %_0.i = icmp slt i32 %_3.i.i.i.i, %_4.i.i.i.i
  %_4.i.i.i.i6 = load i32, ptr %c.sroa.0.0, align 4, !alias.scope !85, !noalias !94, !noundef !32
  %_0.i7 = icmp slt i32 %_3.i.i.i.i, %_4.i.i.i.i6
  %7 = xor i1 %_0.i, %_0.i7
  %_0.i10 = icmp slt i32 %_4.i.i.i.i, %_4.i.i.i.i6
  %_12.i = xor i1 %_0.i, %_0.i10
  %c.b.i = select i1 %_12.i, ptr %c.sroa.0.0, ptr %b.sroa.0.0
  %_0.sroa.0.0.i = select i1 %7, ptr %a.sroa.0.0, ptr %c.b.i
  ret ptr %_0.sroa.0.0.i
}

; core::slice::sort::shared::pivot::median3_rec
; Function Attrs: nonlazybind uwtable
define noundef nonnull ptr @_ZN4core5slice4sort6shared5pivot11median3_rec17hff9a90d9cd780c94E(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %n, ptr noalias noundef align 8 dereferenceable(8) %is_less) unnamed_addr #1 {
start:
  %3 = and i64 %n, 2305843009213693944
  %_6.not = icmp eq i64 %3, 0
  br i1 %_6.not, label %bb6, label %bb1

bb1:                                              ; preds = %start
  %n84 = lshr i64 %n, 3
  %count = shl nuw nsw i64 %n84, 2
  %_10 = getelementptr inbounds nuw float, ptr %0, i64 %count
  %count1 = mul nuw i64 %n84, 7
  %_13 = getelementptr inbounds nuw float, ptr %0, i64 %count1
; call core::slice::sort::shared::pivot::median3_rec
  %4 = tail call noundef ptr @_ZN4core5slice4sort6shared5pivot11median3_rec17hff9a90d9cd780c94E(ptr noundef %0, ptr noundef %_10, ptr noundef %_13, i64 noundef %n84, ptr noalias noundef align 8 dereferenceable(8) %is_less)
  %_16 = getelementptr inbounds nuw float, ptr %1, i64 %count
  %_18 = getelementptr inbounds nuw float, ptr %1, i64 %count1
; call core::slice::sort::shared::pivot::median3_rec
  %5 = tail call noundef ptr @_ZN4core5slice4sort6shared5pivot11median3_rec17hff9a90d9cd780c94E(ptr noundef %1, ptr noundef %_16, ptr noundef %_18, i64 noundef %n84, ptr noalias noundef align 8 dereferenceable(8) %is_less)
  %_20 = getelementptr inbounds nuw float, ptr %2, i64 %count
  %_22 = getelementptr inbounds nuw float, ptr %2, i64 %count1
; call core::slice::sort::shared::pivot::median3_rec
  %6 = tail call noundef ptr @_ZN4core5slice4sort6shared5pivot11median3_rec17hff9a90d9cd780c94E(ptr noundef %2, ptr noundef %_20, ptr noundef %_22, i64 noundef %n84, ptr noalias noundef align 8 dereferenceable(8) %is_less)
  br label %bb6

bb6:                                              ; preds = %start, %bb1
  %c.sroa.0.0 = phi ptr [ %6, %bb1 ], [ %2, %start ]
  %b.sroa.0.0 = phi ptr [ %5, %bb1 ], [ %1, %start ]
  %a.sroa.0.0 = phi ptr [ %4, %bb1 ], [ %0, %start ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !99)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !102)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !104), !noalias !107
  tail call void @llvm.experimental.noalias.scope.decl(metadata !110), !noalias !107
  tail call void @llvm.experimental.noalias.scope.decl(metadata !112), !noalias !107
  tail call void @llvm.experimental.noalias.scope.decl(metadata !115), !noalias !107
  %_4.i.i.i = load float, ptr %a.sroa.0.0, align 4, !alias.scope !117, !noalias !118, !noundef !32
  %_5.i.i.i = load float, ptr %b.sroa.0.0, align 4, !alias.scope !119, !noalias !120, !noundef !32
  %.not.i.i.i = fcmp uno float %_4.i.i.i, %_5.i.i.i
  br i1 %.not.i.i.i, label %bb2.i.i.i, label %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfaa75802b1959b0aE.exit", !prof !35

bb2.i.i.i:                                        ; preds = %bb6
; call core::option::unwrap_failed
  tail call void @_ZN4core6option13unwrap_failed17hef2534b77b89c04fE(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_4a4e7fec44b84c1472b04d0c86f3e1b7) #24, !noalias !121
  unreachable

"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfaa75802b1959b0aE.exit": ; preds = %bb6
  %_0.i = fcmp olt float %_4.i.i.i, %_5.i.i.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !122)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !125)
  %_5.i.i.i6 = load float, ptr %c.sroa.0.0, align 4, !alias.scope !128, !noalias !131, !noundef !32
  %.not.i.i.i7 = fcmp uno float %_4.i.i.i, %_5.i.i.i6
  br i1 %.not.i.i.i7, label %bb2.i.i.i9, label %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfaa75802b1959b0aE.exit10", !prof !35

bb2.i.i.i9:                                       ; preds = %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfaa75802b1959b0aE.exit"
; call core::option::unwrap_failed
  tail call void @_ZN4core6option13unwrap_failed17hef2534b77b89c04fE(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_4a4e7fec44b84c1472b04d0c86f3e1b7) #24, !noalias !135
  unreachable

"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfaa75802b1959b0aE.exit10": ; preds = %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfaa75802b1959b0aE.exit"
  %_0.i8 = fcmp olt float %_4.i.i.i, %_5.i.i.i6
  %7 = xor i1 %_0.i, %_0.i8
  br i1 %7, label %_ZN4core5slice4sort6shared5pivot7median317hfc7ca460ee81ac1fE.exit, label %bb3.i

bb3.i:                                            ; preds = %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfaa75802b1959b0aE.exit10"
  %.not.i.i.i13 = fcmp uno float %_5.i.i.i, %_5.i.i.i6
  br i1 %.not.i.i.i13, label %bb2.i.i.i15, label %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfaa75802b1959b0aE.exit16", !prof !35

bb2.i.i.i15:                                      ; preds = %bb3.i
; call core::option::unwrap_failed
  tail call void @_ZN4core6option13unwrap_failed17hef2534b77b89c04fE(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_4a4e7fec44b84c1472b04d0c86f3e1b7) #24, !noalias !136
  unreachable

"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfaa75802b1959b0aE.exit16": ; preds = %bb3.i
  %_0.i14 = fcmp olt float %_5.i.i.i, %_5.i.i.i6
  %_12.i = xor i1 %_0.i, %_0.i14
  %c.b.i = select i1 %_12.i, ptr %c.sroa.0.0, ptr %b.sroa.0.0
  br label %_ZN4core5slice4sort6shared5pivot7median317hfc7ca460ee81ac1fE.exit

_ZN4core5slice4sort6shared5pivot7median317hfc7ca460ee81ac1fE.exit: ; preds = %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfaa75802b1959b0aE.exit10", %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfaa75802b1959b0aE.exit16"
  %_0.sroa.0.0.i = phi ptr [ %a.sroa.0.0, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfaa75802b1959b0aE.exit10" ], [ %c.b.i, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfaa75802b1959b0aE.exit16" ]
  ret ptr %_0.sroa.0.0.i
}

; core::slice::sort::shared::smallsort::insert_tail
; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable
define void @_ZN4core5slice4sort6shared9smallsort11insert_tail17h95ccd783a40617a3E(ptr noundef readnone captures(address) %begin, ptr noundef captures(address) %tail, ptr noalias noundef readnone align 8 captures(none) dereferenceable(8) %is_less) unnamed_addr #0 personality ptr @rust_eh_personality {
start:
  %0 = getelementptr inbounds i8, ptr %tail, i64 -4
  tail call void @llvm.experimental.noalias.scope.decl(metadata !143)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !146)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !148)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !151)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !153)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !156)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !158)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !161)
  %_3.i.i.i.i = load i32, ptr %tail, align 4, !alias.scope !163, !noalias !164, !noundef !32
  %_4.i.i.i.i = load i32, ptr %0, align 4, !alias.scope !164, !noalias !163, !noundef !32
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
  %_4.i.i.i.i2 = load i32, ptr %2, align 4, !alias.scope !165, !noalias !174, !noundef !32
  %_0.i3 = icmp slt i32 %_3.i.i.i.i, %_4.i.i.i.i2
  br i1 %_0.i3, label %bb4, label %bb10

bb10:                                             ; preds = %bb6, %bb4
  store i32 %_3.i.i.i.i, ptr %sift.sroa.0.0, align 4, !noalias !179
  br label %bb12
}

; core::slice::sort::shared::smallsort::insert_tail
; Function Attrs: nonlazybind uwtable
define void @_ZN4core5slice4sort6shared9smallsort11insert_tail17ha468f4743064a81cE(ptr noundef readnone captures(address) %begin, ptr noundef captures(address) %tail, ptr noalias noundef readnone align 8 captures(none) dereferenceable(8) %is_less) unnamed_addr #1 personality ptr @rust_eh_personality {
start:
  %0 = getelementptr inbounds i8, ptr %tail, i64 -4
  tail call void @llvm.experimental.noalias.scope.decl(metadata !184)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !187)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !189)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !192)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !194)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !197)
  %_4.i.i.i = load float, ptr %tail, align 4, !alias.scope !199, !noalias !200, !noundef !32
  %_5.i.i.i = load float, ptr %0, align 4, !alias.scope !200, !noalias !199, !noundef !32
  %.not.i.i.i = fcmp uno float %_4.i.i.i, %_5.i.i.i
  br i1 %.not.i.i.i, label %bb2.i.i.i, label %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfaa75802b1959b0aE.exit", !prof !35

bb2.i.i.i:                                        ; preds = %start
; call core::option::unwrap_failed
  tail call void @_ZN4core6option13unwrap_failed17hef2534b77b89c04fE(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_4a4e7fec44b84c1472b04d0c86f3e1b7) #24, !noalias !201
  unreachable

"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfaa75802b1959b0aE.exit": ; preds = %start
  %_0.i = fcmp olt float %_4.i.i.i, %_5.i.i.i
  br i1 %_0.i, label %bb4, label %bb12

bb12:                                             ; preds = %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfaa75802b1959b0aE.exit", %bb10
  ret void

bb4:                                              ; preds = %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfaa75802b1959b0aE.exit", %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfaa75802b1959b0aE.exit6"
  %gap_guard.sroa.5.0 = phi ptr [ %sift.sroa.0.0, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfaa75802b1959b0aE.exit6" ], [ %tail, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfaa75802b1959b0aE.exit" ]
  %sift.sroa.0.0 = phi ptr [ %2, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfaa75802b1959b0aE.exit6" ], [ %0, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfaa75802b1959b0aE.exit" ]
  %1 = load i32, ptr %sift.sroa.0.0, align 4
  store i32 %1, ptr %gap_guard.sroa.5.0, align 4
  %_18 = icmp eq ptr %sift.sroa.0.0, %begin
  br i1 %_18, label %bb10, label %bb6

bb6:                                              ; preds = %bb4
  %2 = getelementptr inbounds i8, ptr %sift.sroa.0.0, i64 -4
  %_5.i.i.i2 = load float, ptr %2, align 4, !alias.scope !202, !noalias !209, !noundef !32
  %.not.i.i.i3 = fcmp uno float %_4.i.i.i, %_5.i.i.i2
  br i1 %.not.i.i.i3, label %bb2.i.i.i5, label %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfaa75802b1959b0aE.exit6", !prof !35

bb2.i.i.i5:                                       ; preds = %bb6
; invoke core::option::unwrap_failed
  invoke void @_ZN4core6option13unwrap_failed17hef2534b77b89c04fE(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_4a4e7fec44b84c1472b04d0c86f3e1b7) #24
          to label %.noexc unwind label %cleanup

.noexc:                                           ; preds = %bb2.i.i.i5
  unreachable

"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfaa75802b1959b0aE.exit6": ; preds = %bb6
  %_0.i4 = fcmp olt float %_4.i.i.i, %_5.i.i.i2
  br i1 %_0.i4, label %bb4, label %bb10

cleanup:                                          ; preds = %bb2.i.i.i5
  %3 = landingpad { ptr, i32 }
          cleanup
  store float %_4.i.i.i, ptr %sift.sroa.0.0, align 4, !noalias !213
  resume { ptr, i32 } %3

bb10:                                             ; preds = %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfaa75802b1959b0aE.exit6", %bb4
  store float %_4.i.i.i, ptr %sift.sroa.0.0, align 4, !noalias !218
  br label %bb12
}

; core::slice::sort::shared::smallsort::insert_tail
; Function Attrs: nonlazybind uwtable
define void @_ZN4core5slice4sort6shared9smallsort11insert_tail17he511fa7eb43a47edE(ptr noundef readnone captures(address) %begin, ptr noundef captures(address) %tail, ptr noalias noundef readnone align 8 captures(none) dereferenceable(8) %is_less) unnamed_addr #1 personality ptr @rust_eh_personality {
start:
  %0 = getelementptr inbounds i8, ptr %tail, i64 -4
  tail call void @llvm.experimental.noalias.scope.decl(metadata !223)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !226)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !228)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !231)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !233)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !236)
  %_4.i.i.i = load float, ptr %tail, align 4, !alias.scope !238, !noalias !239, !noundef !32
  %_5.i.i.i = load float, ptr %0, align 4, !alias.scope !239, !noalias !238, !noundef !32
  %.not.i.i.i = fcmp uno float %_4.i.i.i, %_5.i.i.i
  br i1 %.not.i.i.i, label %bb2.i.i.i, label %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf5b8f37855ac0c3dE.exit", !prof !35

bb2.i.i.i:                                        ; preds = %start
; call core::option::unwrap_failed
  tail call void @_ZN4core6option13unwrap_failed17hef2534b77b89c04fE(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_b0e33ba48ef5fa15e44a55a18226b5ac) #24, !noalias !240
  unreachable

"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf5b8f37855ac0c3dE.exit": ; preds = %start
  %_0.i = fcmp olt float %_4.i.i.i, %_5.i.i.i
  br i1 %_0.i, label %bb4, label %bb12

bb12:                                             ; preds = %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf5b8f37855ac0c3dE.exit", %bb10
  ret void

bb4:                                              ; preds = %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf5b8f37855ac0c3dE.exit", %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf5b8f37855ac0c3dE.exit6"
  %gap_guard.sroa.5.0 = phi ptr [ %sift.sroa.0.0, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf5b8f37855ac0c3dE.exit6" ], [ %tail, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf5b8f37855ac0c3dE.exit" ]
  %sift.sroa.0.0 = phi ptr [ %2, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf5b8f37855ac0c3dE.exit6" ], [ %0, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf5b8f37855ac0c3dE.exit" ]
  %1 = load i32, ptr %sift.sroa.0.0, align 4
  store i32 %1, ptr %gap_guard.sroa.5.0, align 4
  %_18 = icmp eq ptr %sift.sroa.0.0, %begin
  br i1 %_18, label %bb10, label %bb6

bb6:                                              ; preds = %bb4
  %2 = getelementptr inbounds i8, ptr %sift.sroa.0.0, i64 -4
  %_5.i.i.i2 = load float, ptr %2, align 4, !alias.scope !241, !noalias !248, !noundef !32
  %.not.i.i.i3 = fcmp uno float %_4.i.i.i, %_5.i.i.i2
  br i1 %.not.i.i.i3, label %bb2.i.i.i5, label %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf5b8f37855ac0c3dE.exit6", !prof !35

bb2.i.i.i5:                                       ; preds = %bb6
; invoke core::option::unwrap_failed
  invoke void @_ZN4core6option13unwrap_failed17hef2534b77b89c04fE(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_b0e33ba48ef5fa15e44a55a18226b5ac) #24
          to label %.noexc unwind label %cleanup

.noexc:                                           ; preds = %bb2.i.i.i5
  unreachable

"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf5b8f37855ac0c3dE.exit6": ; preds = %bb6
  %_0.i4 = fcmp olt float %_4.i.i.i, %_5.i.i.i2
  br i1 %_0.i4, label %bb4, label %bb10

cleanup:                                          ; preds = %bb2.i.i.i5
  %3 = landingpad { ptr, i32 }
          cleanup
  store float %_4.i.i.i, ptr %sift.sroa.0.0, align 4, !noalias !252
  resume { ptr, i32 } %3

bb10:                                             ; preds = %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf5b8f37855ac0c3dE.exit6", %bb4
  store float %_4.i.i.i, ptr %sift.sroa.0.0, align 4, !noalias !257
  br label %bb12
}

; core::slice::sort::shared::smallsort::sort4_stable
; Function Attrs: nonlazybind uwtable
define void @_ZN4core5slice4sort6shared9smallsort12sort4_stable17h1c3fb6f95c737a92E(ptr noundef readonly captures(none) %v_base, ptr noundef writeonly captures(none) %dst, ptr noalias readnone align 8 captures(none) %is_less) unnamed_addr #1 personality ptr @rust_eh_personality {
start:
  %_7 = getelementptr inbounds nuw i8, ptr %v_base, i64 4
  tail call void @llvm.experimental.noalias.scope.decl(metadata !262)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !265)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !267)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !270)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !272)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !275)
  %_4.i.i.i = load float, ptr %_7, align 4, !alias.scope !277, !noalias !278, !noundef !32
  %_5.i.i.i = load float, ptr %v_base, align 4, !alias.scope !278, !noalias !277, !noundef !32
  %.not.i.i.i = fcmp uno float %_4.i.i.i, %_5.i.i.i
  br i1 %.not.i.i.i, label %bb2.i.i.i, label %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf5b8f37855ac0c3dE.exit", !prof !35

bb2.i.i.i:                                        ; preds = %start
; call core::option::unwrap_failed
  tail call void @_ZN4core6option13unwrap_failed17hef2534b77b89c04fE(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_b0e33ba48ef5fa15e44a55a18226b5ac) #24, !noalias !279
  unreachable

"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf5b8f37855ac0c3dE.exit": ; preds = %start
  %_12 = getelementptr inbounds nuw i8, ptr %v_base, i64 12
  %_14 = getelementptr inbounds nuw i8, ptr %v_base, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !280)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !283)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !285)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !288)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !290)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !293)
  %_4.i.i.i7 = load float, ptr %_12, align 4, !alias.scope !295, !noalias !296, !noundef !32
  %_5.i.i.i8 = load float, ptr %_14, align 4, !alias.scope !296, !noalias !295, !noundef !32
  %.not.i.i.i9 = fcmp uno float %_4.i.i.i7, %_5.i.i.i8
  br i1 %.not.i.i.i9, label %bb2.i.i.i11, label %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf5b8f37855ac0c3dE.exit12", !prof !35

bb2.i.i.i11:                                      ; preds = %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf5b8f37855ac0c3dE.exit"
; call core::option::unwrap_failed
  tail call void @_ZN4core6option13unwrap_failed17hef2534b77b89c04fE(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_b0e33ba48ef5fa15e44a55a18226b5ac) #24, !noalias !297
  unreachable

"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf5b8f37855ac0c3dE.exit12": ; preds = %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf5b8f37855ac0c3dE.exit"
  %_0.i = fcmp olt float %_4.i.i.i, %_5.i.i.i
  %_0.i10 = fcmp olt float %_4.i.i.i7, %_5.i.i.i8
  %count = zext i1 %_0.i to i64
  %a = getelementptr inbounds nuw float, ptr %v_base, i64 %count
  %_19 = xor i1 %_0.i, true
  %count2 = zext i1 %_19 to i64
  %b = getelementptr inbounds nuw float, ptr %v_base, i64 %count2
  %count3 = select i1 %_0.i10, i64 3, i64 2
  %c = getelementptr inbounds nuw float, ptr %v_base, i64 %count3
  %count4 = select i1 %_0.i10, i64 2, i64 3
  %d = getelementptr inbounds nuw float, ptr %v_base, i64 %count4
  tail call void @llvm.experimental.noalias.scope.decl(metadata !298)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !301)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !303)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !306)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !308)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !311)
  %_4.i.i.i13 = load float, ptr %c, align 4, !alias.scope !313, !noalias !314, !noundef !32
  %_5.i.i.i14 = load float, ptr %a, align 4, !alias.scope !314, !noalias !313, !noundef !32
  %.not.i.i.i15 = fcmp uno float %_4.i.i.i13, %_5.i.i.i14
  br i1 %.not.i.i.i15, label %bb2.i.i.i17, label %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf5b8f37855ac0c3dE.exit18", !prof !35

bb2.i.i.i17:                                      ; preds = %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf5b8f37855ac0c3dE.exit12"
; call core::option::unwrap_failed
  tail call void @_ZN4core6option13unwrap_failed17hef2534b77b89c04fE(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_b0e33ba48ef5fa15e44a55a18226b5ac) #24, !noalias !315
  unreachable

"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf5b8f37855ac0c3dE.exit18": ; preds = %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf5b8f37855ac0c3dE.exit12"
  tail call void @llvm.experimental.noalias.scope.decl(metadata !316)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !319)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !321)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !324)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !326)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !329)
  %_4.i.i.i19 = load float, ptr %d, align 4, !alias.scope !331, !noalias !332, !noundef !32
  %_5.i.i.i20 = load float, ptr %b, align 4, !alias.scope !332, !noalias !331, !noundef !32
  %.not.i.i.i21 = fcmp uno float %_4.i.i.i19, %_5.i.i.i20
  br i1 %.not.i.i.i21, label %bb2.i.i.i23, label %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf5b8f37855ac0c3dE.exit24", !prof !35

bb2.i.i.i23:                                      ; preds = %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf5b8f37855ac0c3dE.exit18"
; call core::option::unwrap_failed
  tail call void @_ZN4core6option13unwrap_failed17hef2534b77b89c04fE(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_b0e33ba48ef5fa15e44a55a18226b5ac) #24, !noalias !333
  unreachable

"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf5b8f37855ac0c3dE.exit24": ; preds = %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf5b8f37855ac0c3dE.exit18"
  %_0.i16 = fcmp olt float %_4.i.i.i13, %_5.i.i.i14
  %_0.i22 = fcmp olt float %_4.i.i.i19, %_5.i.i.i20
  %0 = select i1 %_0.i22, ptr %c, ptr %b, !unpredictable !32
  %1 = select i1 %_0.i16, ptr %a, ptr %0, !unpredictable !32
  %2 = select i1 %_0.i16, ptr %b, ptr %c, !unpredictable !32
  %3 = select i1 %_0.i22, ptr %d, ptr %2, !unpredictable !32
  tail call void @llvm.experimental.noalias.scope.decl(metadata !334)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !337)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !339)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !342)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !344)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !347)
  %_4.i.i.i25 = load float, ptr %3, align 4, !alias.scope !349, !noalias !350, !noundef !32
  %_5.i.i.i26 = load float, ptr %1, align 4, !alias.scope !350, !noalias !349, !noundef !32
  %.not.i.i.i27 = fcmp uno float %_4.i.i.i25, %_5.i.i.i26
  br i1 %.not.i.i.i27, label %bb2.i.i.i29, label %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf5b8f37855ac0c3dE.exit30", !prof !35

bb2.i.i.i29:                                      ; preds = %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf5b8f37855ac0c3dE.exit24"
; call core::option::unwrap_failed
  tail call void @_ZN4core6option13unwrap_failed17hef2534b77b89c04fE(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_b0e33ba48ef5fa15e44a55a18226b5ac) #24, !noalias !351
  unreachable

"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf5b8f37855ac0c3dE.exit30": ; preds = %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf5b8f37855ac0c3dE.exit24"
  %4 = select i1 %_0.i22, ptr %b, ptr %d, !unpredictable !32
  %5 = select i1 %_0.i16, ptr %c, ptr %a, !unpredictable !32
  %_0.i28 = fcmp olt float %_4.i.i.i25, %_5.i.i.i26
  %6 = select i1 %_0.i28, ptr %3, ptr %1, !unpredictable !32
  %7 = select i1 %_0.i28, ptr %1, ptr %3, !unpredictable !32
  %8 = load i32, ptr %5, align 4
  store i32 %8, ptr %dst, align 4
  %dst5 = getelementptr inbounds nuw i8, ptr %dst, i64 4
  %9 = load i32, ptr %6, align 4
  store i32 %9, ptr %dst5, align 4
  %dst6 = getelementptr inbounds nuw i8, ptr %dst, i64 8
  %10 = load i32, ptr %7, align 4
  store i32 %10, ptr %dst6, align 4
  %11 = getelementptr inbounds nuw i8, ptr %dst, i64 12
  %12 = load i32, ptr %4, align 4
  store i32 %12, ptr %11, align 4
  ret void
}

; core::slice::sort::shared::smallsort::sort4_stable
; Function Attrs: nonlazybind uwtable
define void @_ZN4core5slice4sort6shared9smallsort12sort4_stable17h7be21866dd44a082E(ptr noundef readonly captures(none) %v_base, ptr noundef writeonly captures(none) %dst, ptr noalias readnone align 8 captures(none) %is_less) unnamed_addr #1 personality ptr @rust_eh_personality {
start:
  %_7 = getelementptr inbounds nuw i8, ptr %v_base, i64 4
  tail call void @llvm.experimental.noalias.scope.decl(metadata !352)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !355)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !357)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !360)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !362)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !365)
  %_4.i.i.i = load float, ptr %_7, align 4, !alias.scope !367, !noalias !368, !noundef !32
  %_5.i.i.i = load float, ptr %v_base, align 4, !alias.scope !368, !noalias !367, !noundef !32
  %.not.i.i.i = fcmp uno float %_4.i.i.i, %_5.i.i.i
  br i1 %.not.i.i.i, label %bb2.i.i.i, label %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfaa75802b1959b0aE.exit", !prof !35

bb2.i.i.i:                                        ; preds = %start
; call core::option::unwrap_failed
  tail call void @_ZN4core6option13unwrap_failed17hef2534b77b89c04fE(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_4a4e7fec44b84c1472b04d0c86f3e1b7) #24, !noalias !369
  unreachable

"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfaa75802b1959b0aE.exit": ; preds = %start
  %_12 = getelementptr inbounds nuw i8, ptr %v_base, i64 12
  %_14 = getelementptr inbounds nuw i8, ptr %v_base, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !370)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !373)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !375)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !378)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !380)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !383)
  %_4.i.i.i7 = load float, ptr %_12, align 4, !alias.scope !385, !noalias !386, !noundef !32
  %_5.i.i.i8 = load float, ptr %_14, align 4, !alias.scope !386, !noalias !385, !noundef !32
  %.not.i.i.i9 = fcmp uno float %_4.i.i.i7, %_5.i.i.i8
  br i1 %.not.i.i.i9, label %bb2.i.i.i11, label %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfaa75802b1959b0aE.exit12", !prof !35

bb2.i.i.i11:                                      ; preds = %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfaa75802b1959b0aE.exit"
; call core::option::unwrap_failed
  tail call void @_ZN4core6option13unwrap_failed17hef2534b77b89c04fE(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_4a4e7fec44b84c1472b04d0c86f3e1b7) #24, !noalias !387
  unreachable

"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfaa75802b1959b0aE.exit12": ; preds = %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfaa75802b1959b0aE.exit"
  %_0.i = fcmp olt float %_4.i.i.i, %_5.i.i.i
  %_0.i10 = fcmp olt float %_4.i.i.i7, %_5.i.i.i8
  %count = zext i1 %_0.i to i64
  %a = getelementptr inbounds nuw float, ptr %v_base, i64 %count
  %_19 = xor i1 %_0.i, true
  %count2 = zext i1 %_19 to i64
  %b = getelementptr inbounds nuw float, ptr %v_base, i64 %count2
  %count3 = select i1 %_0.i10, i64 3, i64 2
  %c = getelementptr inbounds nuw float, ptr %v_base, i64 %count3
  %count4 = select i1 %_0.i10, i64 2, i64 3
  %d = getelementptr inbounds nuw float, ptr %v_base, i64 %count4
  tail call void @llvm.experimental.noalias.scope.decl(metadata !388)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !391)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !393)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !396)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !398)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !401)
  %_4.i.i.i13 = load float, ptr %c, align 4, !alias.scope !403, !noalias !404, !noundef !32
  %_5.i.i.i14 = load float, ptr %a, align 4, !alias.scope !404, !noalias !403, !noundef !32
  %.not.i.i.i15 = fcmp uno float %_4.i.i.i13, %_5.i.i.i14
  br i1 %.not.i.i.i15, label %bb2.i.i.i17, label %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfaa75802b1959b0aE.exit18", !prof !35

bb2.i.i.i17:                                      ; preds = %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfaa75802b1959b0aE.exit12"
; call core::option::unwrap_failed
  tail call void @_ZN4core6option13unwrap_failed17hef2534b77b89c04fE(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_4a4e7fec44b84c1472b04d0c86f3e1b7) #24, !noalias !405
  unreachable

"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfaa75802b1959b0aE.exit18": ; preds = %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfaa75802b1959b0aE.exit12"
  tail call void @llvm.experimental.noalias.scope.decl(metadata !406)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !409)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !411)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !414)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !416)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !419)
  %_4.i.i.i19 = load float, ptr %d, align 4, !alias.scope !421, !noalias !422, !noundef !32
  %_5.i.i.i20 = load float, ptr %b, align 4, !alias.scope !422, !noalias !421, !noundef !32
  %.not.i.i.i21 = fcmp uno float %_4.i.i.i19, %_5.i.i.i20
  br i1 %.not.i.i.i21, label %bb2.i.i.i23, label %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfaa75802b1959b0aE.exit24", !prof !35

bb2.i.i.i23:                                      ; preds = %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfaa75802b1959b0aE.exit18"
; call core::option::unwrap_failed
  tail call void @_ZN4core6option13unwrap_failed17hef2534b77b89c04fE(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_4a4e7fec44b84c1472b04d0c86f3e1b7) #24, !noalias !423
  unreachable

"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfaa75802b1959b0aE.exit24": ; preds = %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfaa75802b1959b0aE.exit18"
  %_0.i16 = fcmp olt float %_4.i.i.i13, %_5.i.i.i14
  %_0.i22 = fcmp olt float %_4.i.i.i19, %_5.i.i.i20
  %0 = select i1 %_0.i22, ptr %c, ptr %b, !unpredictable !32
  %1 = select i1 %_0.i16, ptr %a, ptr %0, !unpredictable !32
  %2 = select i1 %_0.i16, ptr %b, ptr %c, !unpredictable !32
  %3 = select i1 %_0.i22, ptr %d, ptr %2, !unpredictable !32
  tail call void @llvm.experimental.noalias.scope.decl(metadata !424)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !427)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !429)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !432)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !434)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !437)
  %_4.i.i.i25 = load float, ptr %3, align 4, !alias.scope !439, !noalias !440, !noundef !32
  %_5.i.i.i26 = load float, ptr %1, align 4, !alias.scope !440, !noalias !439, !noundef !32
  %.not.i.i.i27 = fcmp uno float %_4.i.i.i25, %_5.i.i.i26
  br i1 %.not.i.i.i27, label %bb2.i.i.i29, label %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfaa75802b1959b0aE.exit30", !prof !35

bb2.i.i.i29:                                      ; preds = %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfaa75802b1959b0aE.exit24"
; call core::option::unwrap_failed
  tail call void @_ZN4core6option13unwrap_failed17hef2534b77b89c04fE(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_4a4e7fec44b84c1472b04d0c86f3e1b7) #24, !noalias !441
  unreachable

"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfaa75802b1959b0aE.exit30": ; preds = %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfaa75802b1959b0aE.exit24"
  %4 = select i1 %_0.i22, ptr %b, ptr %d, !unpredictable !32
  %5 = select i1 %_0.i16, ptr %c, ptr %a, !unpredictable !32
  %_0.i28 = fcmp olt float %_4.i.i.i25, %_5.i.i.i26
  %6 = select i1 %_0.i28, ptr %3, ptr %1, !unpredictable !32
  %7 = select i1 %_0.i28, ptr %1, ptr %3, !unpredictable !32
  %8 = load i32, ptr %5, align 4
  store i32 %8, ptr %dst, align 4
  %dst5 = getelementptr inbounds nuw i8, ptr %dst, i64 4
  %9 = load i32, ptr %6, align 4
  store i32 %9, ptr %dst5, align 4
  %dst6 = getelementptr inbounds nuw i8, ptr %dst, i64 8
  %10 = load i32, ptr %7, align 4
  store i32 %10, ptr %dst6, align 4
  %11 = getelementptr inbounds nuw i8, ptr %dst, i64 12
  %12 = load i32, ptr %4, align 4
  store i32 %12, ptr %11, align 4
  ret void
}

; core::slice::sort::shared::smallsort::sort4_stable
; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable
define void @_ZN4core5slice4sort6shared9smallsort12sort4_stable17he826004845105613E(ptr noundef readonly captures(none) %v_base, ptr noundef writeonly captures(none) initializes((0, 16)) %dst, ptr noalias noundef readnone align 8 captures(none) dereferenceable(8) %is_less) unnamed_addr #3 personality ptr @rust_eh_personality {
start:
  %_7 = getelementptr inbounds nuw i8, ptr %v_base, i64 4
  tail call void @llvm.experimental.noalias.scope.decl(metadata !442)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !445)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !447)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !450)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !452)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !455)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !457)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !460)
  %_3.i.i.i.i = load i32, ptr %_7, align 4, !alias.scope !462, !noalias !463, !noundef !32
  %_4.i.i.i.i = load i32, ptr %v_base, align 4, !alias.scope !463, !noalias !462, !noundef !32
  %_0.i = icmp slt i32 %_3.i.i.i.i, %_4.i.i.i.i
  %_12 = getelementptr inbounds nuw i8, ptr %v_base, i64 12
  %_14 = getelementptr inbounds nuw i8, ptr %v_base, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !464)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !467)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !469)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !472)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !474)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !477)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !479)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !482)
  %_3.i.i.i.i7 = load i32, ptr %_12, align 4, !alias.scope !484, !noalias !485, !noundef !32
  %_4.i.i.i.i8 = load i32, ptr %_14, align 4, !alias.scope !485, !noalias !484, !noundef !32
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !486)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !489)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !491)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !494)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !496)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !499)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !501)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !504)
  %_3.i.i.i.i10 = load i32, ptr %c, align 4, !alias.scope !506, !noalias !507, !noundef !32
  %_4.i.i.i.i11 = load i32, ptr %a, align 4, !alias.scope !507, !noalias !506, !noundef !32
  %_0.i12 = icmp slt i32 %_3.i.i.i.i10, %_4.i.i.i.i11
  tail call void @llvm.experimental.noalias.scope.decl(metadata !508)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !511)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !513)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !516)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !518)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !521)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !523)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !526)
  %_3.i.i.i.i13 = load i32, ptr %d, align 4, !alias.scope !528, !noalias !529, !noundef !32
  %_4.i.i.i.i14 = load i32, ptr %b, align 4, !alias.scope !529, !noalias !528, !noundef !32
  %_0.i15 = icmp slt i32 %_3.i.i.i.i13, %_4.i.i.i.i14
  %0 = select i1 %_0.i12, ptr %c, ptr %a, !unpredictable !32
  %1 = select i1 %_0.i15, ptr %c, ptr %b, !unpredictable !32
  %2 = select i1 %_0.i12, ptr %a, ptr %1, !unpredictable !32
  %3 = select i1 %_0.i12, ptr %b, ptr %c, !unpredictable !32
  %4 = select i1 %_0.i15, ptr %d, ptr %3, !unpredictable !32
  tail call void @llvm.experimental.noalias.scope.decl(metadata !530)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !533)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !535)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !538)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !540)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !543)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !545)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !548)
  %_3.i.i.i.i16 = load i32, ptr %4, align 4, !alias.scope !550, !noalias !551, !noundef !32
  %_4.i.i.i.i17 = load i32, ptr %2, align 4, !alias.scope !551, !noalias !550, !noundef !32
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
define void @_ZN4core5slice4sort6shared9smallsort12sort8_stable17h0c524828a1a47f46E(ptr noundef readonly captures(none) %v_base, ptr noundef writeonly captures(none) %dst, ptr noundef captures(address) %scratch_base, ptr noalias readnone align 8 captures(none) %is_less) unnamed_addr #1 {
start:
; call core::slice::sort::shared::smallsort::sort4_stable
  tail call void @_ZN4core5slice4sort6shared9smallsort12sort4_stable17h1c3fb6f95c737a92E(ptr noundef %v_base, ptr noundef %scratch_base, ptr noalias align 8 poison)
  %_9 = getelementptr inbounds nuw i8, ptr %v_base, i64 16
  %_10 = getelementptr inbounds nuw i8, ptr %scratch_base, i64 16
; call core::slice::sort::shared::smallsort::sort4_stable
  tail call void @_ZN4core5slice4sort6shared9smallsort12sort4_stable17h1c3fb6f95c737a92E(ptr noundef nonnull %_9, ptr noundef nonnull %_10, ptr noalias align 8 poison)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !552)
  %0 = getelementptr inbounds nuw i8, ptr %dst, i64 28
  %1 = getelementptr inbounds nuw i8, ptr %scratch_base, i64 28
  %2 = getelementptr i8, ptr %scratch_base, i64 12
  tail call void @llvm.experimental.noalias.scope.decl(metadata !555)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !558)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !560), !noalias !563
  tail call void @llvm.experimental.noalias.scope.decl(metadata !566), !noalias !563
  tail call void @llvm.experimental.noalias.scope.decl(metadata !568), !noalias !563
  tail call void @llvm.experimental.noalias.scope.decl(metadata !571), !noalias !563
  %_4.i.i.i.i = load float, ptr %_10, align 4, !alias.scope !573, !noalias !574, !noundef !32
  %_5.i.i.i.i = load float, ptr %scratch_base, align 4, !alias.scope !575, !noalias !576, !noundef !32
  %.not.i.i.i.i = fcmp uno float %_4.i.i.i.i, %_5.i.i.i.i
  br i1 %.not.i.i.i.i, label %bb2.i.i.i.i, label %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf5b8f37855ac0c3dE.exit.i", !prof !35

bb2.i.i.i.i:                                      ; preds = %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf5b8f37855ac0c3dE.exit24.i.2", %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf5b8f37855ac0c3dE.exit24.i.1", %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf5b8f37855ac0c3dE.exit24.i", %start
; call core::option::unwrap_failed
  tail call void @_ZN4core6option13unwrap_failed17hef2534b77b89c04fE(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_b0e33ba48ef5fa15e44a55a18226b5ac) #24, !noalias !577
  unreachable

"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf5b8f37855ac0c3dE.exit.i": ; preds = %start
  %_0.i.i = fcmp olt float %_4.i.i.i.i, %_5.i.i.i.i
  %..i17.i = select i1 %_0.i.i, ptr %_10, ptr %scratch_base
  %3 = load i32, ptr %..i17.i, align 4, !alias.scope !552, !noalias !578
  store i32 %3, ptr %dst, align 4, !noalias !580
  tail call void @llvm.experimental.noalias.scope.decl(metadata !581)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !584)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !586), !noalias !589
  tail call void @llvm.experimental.noalias.scope.decl(metadata !592), !noalias !589
  tail call void @llvm.experimental.noalias.scope.decl(metadata !594), !noalias !589
  tail call void @llvm.experimental.noalias.scope.decl(metadata !597), !noalias !589
  %_4.i.i.i19.i = load float, ptr %1, align 4, !alias.scope !599, !noalias !600, !noundef !32
  %_5.i.i.i20.i = load float, ptr %2, align 4, !alias.scope !601, !noalias !602, !noundef !32
  %.not.i.i.i21.i = fcmp uno float %_4.i.i.i19.i, %_5.i.i.i20.i
  br i1 %.not.i.i.i21.i, label %bb2.i.i.i23.i, label %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf5b8f37855ac0c3dE.exit24.i", !prof !35

bb2.i.i.i23.i:                                    ; preds = %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf5b8f37855ac0c3dE.exit.i.3", %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf5b8f37855ac0c3dE.exit.i.2", %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf5b8f37855ac0c3dE.exit.i.1", %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf5b8f37855ac0c3dE.exit.i"
; call core::option::unwrap_failed
  tail call void @_ZN4core6option13unwrap_failed17hef2534b77b89c04fE(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_b0e33ba48ef5fa15e44a55a18226b5ac) #24, !noalias !603
  unreachable

"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf5b8f37855ac0c3dE.exit24.i": ; preds = %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf5b8f37855ac0c3dE.exit.i"
  %is_l.i18.i = xor i1 %_0.i.i, true
  %count2.i.i = zext i1 %is_l.i18.i to i64
  %_14.i.i = getelementptr inbounds nuw float, ptr %scratch_base, i64 %count2.i.i
  %count.i.i = zext i1 %_0.i.i to i64
  %_12.i.i = getelementptr inbounds nuw float, ptr %_10, i64 %count.i.i
  %_0.i22.i = fcmp olt float %_4.i.i.i19.i, %_5.i.i.i20.i
  %..i.i = select i1 %_0.i22.i, ptr %2, ptr %1
  %is_l.i.i = xor i1 %_0.i22.i, true
  %4 = load i32, ptr %..i.i, align 4, !alias.scope !552, !noalias !604
  store i32 %4, ptr %0, align 4, !noalias !606
  %count.neg.i.i = sext i1 %is_l.i.i to i64
  %5 = getelementptr float, ptr %1, i64 %count.neg.i.i
  %count3.neg.i.i = sext i1 %_0.i22.i to i64
  %6 = getelementptr float, ptr %2, i64 %count3.neg.i.i
  %7 = getelementptr inbounds nuw i8, ptr %dst, i64 24
  tail call void @llvm.experimental.noalias.scope.decl(metadata !607)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !609)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !611), !noalias !563
  tail call void @llvm.experimental.noalias.scope.decl(metadata !613), !noalias !563
  tail call void @llvm.experimental.noalias.scope.decl(metadata !615), !noalias !563
  tail call void @llvm.experimental.noalias.scope.decl(metadata !617), !noalias !563
  %_4.i.i.i.i.1 = load float, ptr %_12.i.i, align 4, !alias.scope !619, !noalias !620, !noundef !32
  %_5.i.i.i.i.1 = load float, ptr %_14.i.i, align 4, !alias.scope !621, !noalias !622, !noundef !32
  %.not.i.i.i.i.1 = fcmp uno float %_4.i.i.i.i.1, %_5.i.i.i.i.1
  br i1 %.not.i.i.i.i.1, label %bb2.i.i.i.i, label %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf5b8f37855ac0c3dE.exit.i.1", !prof !35

"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf5b8f37855ac0c3dE.exit.i.1": ; preds = %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf5b8f37855ac0c3dE.exit24.i"
  %_16.i.i = getelementptr inbounds nuw i8, ptr %dst, i64 4
  %_0.i.i.1 = fcmp olt float %_4.i.i.i.i.1, %_5.i.i.i.i.1
  %..i17.i.1 = select i1 %_0.i.i.1, ptr %_12.i.i, ptr %_14.i.i
  %8 = load i32, ptr %..i17.i.1, align 4, !alias.scope !552, !noalias !578
  store i32 %8, ptr %_16.i.i, align 4, !noalias !580
  tail call void @llvm.experimental.noalias.scope.decl(metadata !623)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !625)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !627), !noalias !589
  tail call void @llvm.experimental.noalias.scope.decl(metadata !629), !noalias !589
  tail call void @llvm.experimental.noalias.scope.decl(metadata !631), !noalias !589
  tail call void @llvm.experimental.noalias.scope.decl(metadata !633), !noalias !589
  %_4.i.i.i19.i.1 = load float, ptr %5, align 4, !alias.scope !635, !noalias !636, !noundef !32
  %_5.i.i.i20.i.1 = load float, ptr %6, align 4, !alias.scope !637, !noalias !638, !noundef !32
  %.not.i.i.i21.i.1 = fcmp uno float %_4.i.i.i19.i.1, %_5.i.i.i20.i.1
  br i1 %.not.i.i.i21.i.1, label %bb2.i.i.i23.i, label %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf5b8f37855ac0c3dE.exit24.i.1", !prof !35

"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf5b8f37855ac0c3dE.exit24.i.1": ; preds = %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf5b8f37855ac0c3dE.exit.i.1"
  %is_l.i18.i.1 = xor i1 %_0.i.i.1, true
  %count2.i.i.1 = zext i1 %is_l.i18.i.1 to i64
  %_14.i.i.1 = getelementptr inbounds nuw float, ptr %_14.i.i, i64 %count2.i.i.1
  %count.i.i.1 = zext i1 %_0.i.i.1 to i64
  %_12.i.i.1 = getelementptr inbounds nuw float, ptr %_12.i.i, i64 %count.i.i.1
  %_0.i22.i.1 = fcmp olt float %_4.i.i.i19.i.1, %_5.i.i.i20.i.1
  %..i.i.1 = select i1 %_0.i22.i.1, ptr %6, ptr %5
  %is_l.i.i.1 = xor i1 %_0.i22.i.1, true
  %9 = load i32, ptr %..i.i.1, align 4, !alias.scope !552, !noalias !604
  store i32 %9, ptr %7, align 4, !noalias !606
  %count.neg.i.i.1 = sext i1 %is_l.i.i.1 to i64
  %10 = getelementptr float, ptr %5, i64 %count.neg.i.i.1
  %count3.neg.i.i.1 = sext i1 %_0.i22.i.1 to i64
  %11 = getelementptr float, ptr %6, i64 %count3.neg.i.i.1
  %12 = getelementptr inbounds nuw i8, ptr %dst, i64 20
  tail call void @llvm.experimental.noalias.scope.decl(metadata !639)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !641)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !643), !noalias !563
  tail call void @llvm.experimental.noalias.scope.decl(metadata !645), !noalias !563
  tail call void @llvm.experimental.noalias.scope.decl(metadata !647), !noalias !563
  tail call void @llvm.experimental.noalias.scope.decl(metadata !649), !noalias !563
  %_4.i.i.i.i.2 = load float, ptr %_12.i.i.1, align 4, !alias.scope !651, !noalias !652, !noundef !32
  %_5.i.i.i.i.2 = load float, ptr %_14.i.i.1, align 4, !alias.scope !653, !noalias !654, !noundef !32
  %.not.i.i.i.i.2 = fcmp uno float %_4.i.i.i.i.2, %_5.i.i.i.i.2
  br i1 %.not.i.i.i.i.2, label %bb2.i.i.i.i, label %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf5b8f37855ac0c3dE.exit.i.2", !prof !35

"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf5b8f37855ac0c3dE.exit.i.2": ; preds = %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf5b8f37855ac0c3dE.exit24.i.1"
  %_16.i.i.1 = getelementptr inbounds nuw i8, ptr %dst, i64 8
  %_0.i.i.2 = fcmp olt float %_4.i.i.i.i.2, %_5.i.i.i.i.2
  %..i17.i.2 = select i1 %_0.i.i.2, ptr %_12.i.i.1, ptr %_14.i.i.1
  %13 = load i32, ptr %..i17.i.2, align 4, !alias.scope !552, !noalias !578
  store i32 %13, ptr %_16.i.i.1, align 4, !noalias !580
  tail call void @llvm.experimental.noalias.scope.decl(metadata !655)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !657)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !659), !noalias !589
  tail call void @llvm.experimental.noalias.scope.decl(metadata !661), !noalias !589
  tail call void @llvm.experimental.noalias.scope.decl(metadata !663), !noalias !589
  tail call void @llvm.experimental.noalias.scope.decl(metadata !665), !noalias !589
  %_4.i.i.i19.i.2 = load float, ptr %10, align 4, !alias.scope !667, !noalias !668, !noundef !32
  %_5.i.i.i20.i.2 = load float, ptr %11, align 4, !alias.scope !669, !noalias !670, !noundef !32
  %.not.i.i.i21.i.2 = fcmp uno float %_4.i.i.i19.i.2, %_5.i.i.i20.i.2
  br i1 %.not.i.i.i21.i.2, label %bb2.i.i.i23.i, label %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf5b8f37855ac0c3dE.exit24.i.2", !prof !35

"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf5b8f37855ac0c3dE.exit24.i.2": ; preds = %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf5b8f37855ac0c3dE.exit.i.2"
  %is_l.i18.i.2 = xor i1 %_0.i.i.2, true
  %count2.i.i.2 = zext i1 %is_l.i18.i.2 to i64
  %_14.i.i.2 = getelementptr inbounds nuw float, ptr %_14.i.i.1, i64 %count2.i.i.2
  %count.i.i.2 = zext i1 %_0.i.i.2 to i64
  %_12.i.i.2 = getelementptr inbounds nuw float, ptr %_12.i.i.1, i64 %count.i.i.2
  %_0.i22.i.2 = fcmp olt float %_4.i.i.i19.i.2, %_5.i.i.i20.i.2
  %..i.i.2 = select i1 %_0.i22.i.2, ptr %11, ptr %10
  %is_l.i.i.2 = xor i1 %_0.i22.i.2, true
  %14 = load i32, ptr %..i.i.2, align 4, !alias.scope !552, !noalias !604
  store i32 %14, ptr %12, align 4, !noalias !606
  %count.neg.i.i.2 = sext i1 %is_l.i.i.2 to i64
  %15 = getelementptr float, ptr %10, i64 %count.neg.i.i.2
  %count3.neg.i.i.2 = sext i1 %_0.i22.i.2 to i64
  %16 = getelementptr float, ptr %11, i64 %count3.neg.i.i.2
  %17 = getelementptr inbounds nuw i8, ptr %dst, i64 16
  tail call void @llvm.experimental.noalias.scope.decl(metadata !671)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !673)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !675), !noalias !563
  tail call void @llvm.experimental.noalias.scope.decl(metadata !677), !noalias !563
  tail call void @llvm.experimental.noalias.scope.decl(metadata !679), !noalias !563
  tail call void @llvm.experimental.noalias.scope.decl(metadata !681), !noalias !563
  %_4.i.i.i.i.3 = load float, ptr %_12.i.i.2, align 4, !alias.scope !683, !noalias !684, !noundef !32
  %_5.i.i.i.i.3 = load float, ptr %_14.i.i.2, align 4, !alias.scope !685, !noalias !686, !noundef !32
  %.not.i.i.i.i.3 = fcmp uno float %_4.i.i.i.i.3, %_5.i.i.i.i.3
  br i1 %.not.i.i.i.i.3, label %bb2.i.i.i.i, label %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf5b8f37855ac0c3dE.exit.i.3", !prof !35

"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf5b8f37855ac0c3dE.exit.i.3": ; preds = %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf5b8f37855ac0c3dE.exit24.i.2"
  %_16.i.i.2 = getelementptr inbounds nuw i8, ptr %dst, i64 12
  %_0.i.i.3 = fcmp olt float %_4.i.i.i.i.3, %_5.i.i.i.i.3
  %..i17.i.3 = select i1 %_0.i.i.3, ptr %_12.i.i.2, ptr %_14.i.i.2
  %18 = load i32, ptr %..i17.i.3, align 4, !alias.scope !552, !noalias !578
  store i32 %18, ptr %_16.i.i.2, align 4, !noalias !580
  tail call void @llvm.experimental.noalias.scope.decl(metadata !687)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !689)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !691), !noalias !589
  tail call void @llvm.experimental.noalias.scope.decl(metadata !693), !noalias !589
  tail call void @llvm.experimental.noalias.scope.decl(metadata !695), !noalias !589
  tail call void @llvm.experimental.noalias.scope.decl(metadata !697), !noalias !589
  %_4.i.i.i19.i.3 = load float, ptr %15, align 4, !alias.scope !699, !noalias !700, !noundef !32
  %_5.i.i.i20.i.3 = load float, ptr %16, align 4, !alias.scope !701, !noalias !702, !noundef !32
  %.not.i.i.i21.i.3 = fcmp uno float %_4.i.i.i19.i.3, %_5.i.i.i20.i.3
  br i1 %.not.i.i.i21.i.3, label %bb2.i.i.i23.i, label %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf5b8f37855ac0c3dE.exit24.i.3", !prof !35

"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf5b8f37855ac0c3dE.exit24.i.3": ; preds = %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf5b8f37855ac0c3dE.exit.i.3"
  %is_l.i18.i.3 = xor i1 %_0.i.i.3, true
  %count2.i.i.3 = zext i1 %is_l.i18.i.3 to i64
  %_14.i.i.3 = getelementptr inbounds nuw float, ptr %_14.i.i.2, i64 %count2.i.i.3
  %count.i.i.3 = zext i1 %_0.i.i.3 to i64
  %_12.i.i.3 = getelementptr inbounds nuw float, ptr %_12.i.i.2, i64 %count.i.i.3
  %_0.i22.i.3 = fcmp olt float %_4.i.i.i19.i.3, %_5.i.i.i20.i.3
  %..i.i.3 = select i1 %_0.i22.i.3, ptr %16, ptr %15
  %is_l.i.i.3 = xor i1 %_0.i22.i.3, true
  %19 = load i32, ptr %..i.i.3, align 4, !alias.scope !552, !noalias !604
  store i32 %19, ptr %17, align 4, !noalias !606
  %count.neg.i.i.3 = sext i1 %is_l.i.i.3 to i64
  %20 = getelementptr float, ptr %15, i64 %count.neg.i.i.3
  %count3.neg.i.i.3 = sext i1 %_0.i22.i.3 to i64
  %21 = getelementptr float, ptr %16, i64 %count3.neg.i.i.3
  %22 = getelementptr i8, ptr %21, i64 4
  %23 = getelementptr i8, ptr %20, i64 4
  %_31.i = icmp ne ptr %_14.i.i.3, %22
  %_32.i = icmp ne ptr %_12.i.i.3, %23
  %or.cond.i = select i1 %_31.i, i1 true, i1 %_32.i
  br i1 %or.cond.i, label %bb13.i, label %_ZN4core5slice4sort6shared9smallsort19bidirectional_merge17ha5355d97ee5c682eE.exit, !prof !703

bb13.i:                                           ; preds = %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf5b8f37855ac0c3dE.exit24.i.3"
; call core::slice::sort::shared::smallsort::panic_on_ord_violation
  tail call void @_ZN4core5slice4sort6shared9smallsort22panic_on_ord_violation17hc77a22a2d50782cdE() #24, !noalias !552
  unreachable

_ZN4core5slice4sort6shared9smallsort19bidirectional_merge17ha5355d97ee5c682eE.exit: ; preds = %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf5b8f37855ac0c3dE.exit24.i.3"
  ret void
}

; core::slice::sort::shared::smallsort::sort8_stable
; Function Attrs: nonlazybind uwtable
define void @_ZN4core5slice4sort6shared9smallsort12sort8_stable17h3ae107a90c900d55E(ptr noundef readonly captures(none) %v_base, ptr noundef writeonly captures(none) %dst, ptr noundef captures(address) %scratch_base, ptr noalias readnone align 8 captures(none) %is_less) unnamed_addr #1 {
start:
; call core::slice::sort::shared::smallsort::sort4_stable
  tail call void @_ZN4core5slice4sort6shared9smallsort12sort4_stable17h7be21866dd44a082E(ptr noundef %v_base, ptr noundef %scratch_base, ptr noalias align 8 poison)
  %_9 = getelementptr inbounds nuw i8, ptr %v_base, i64 16
  %_10 = getelementptr inbounds nuw i8, ptr %scratch_base, i64 16
; call core::slice::sort::shared::smallsort::sort4_stable
  tail call void @_ZN4core5slice4sort6shared9smallsort12sort4_stable17h7be21866dd44a082E(ptr noundef nonnull %_9, ptr noundef nonnull %_10, ptr noalias align 8 poison)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !704)
  %0 = getelementptr inbounds nuw i8, ptr %dst, i64 28
  %1 = getelementptr inbounds nuw i8, ptr %scratch_base, i64 28
  %2 = getelementptr i8, ptr %scratch_base, i64 12
  tail call void @llvm.experimental.noalias.scope.decl(metadata !707)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !710)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !712), !noalias !715
  tail call void @llvm.experimental.noalias.scope.decl(metadata !718), !noalias !715
  tail call void @llvm.experimental.noalias.scope.decl(metadata !720), !noalias !715
  tail call void @llvm.experimental.noalias.scope.decl(metadata !723), !noalias !715
  %_4.i.i.i.i = load float, ptr %_10, align 4, !alias.scope !725, !noalias !726, !noundef !32
  %_5.i.i.i.i = load float, ptr %scratch_base, align 4, !alias.scope !727, !noalias !728, !noundef !32
  %.not.i.i.i.i = fcmp uno float %_4.i.i.i.i, %_5.i.i.i.i
  br i1 %.not.i.i.i.i, label %bb2.i.i.i.i, label %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfaa75802b1959b0aE.exit.i", !prof !35

bb2.i.i.i.i:                                      ; preds = %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfaa75802b1959b0aE.exit24.i.2", %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfaa75802b1959b0aE.exit24.i.1", %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfaa75802b1959b0aE.exit24.i", %start
; call core::option::unwrap_failed
  tail call void @_ZN4core6option13unwrap_failed17hef2534b77b89c04fE(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_4a4e7fec44b84c1472b04d0c86f3e1b7) #24, !noalias !729
  unreachable

"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfaa75802b1959b0aE.exit.i": ; preds = %start
  %_0.i.i = fcmp olt float %_4.i.i.i.i, %_5.i.i.i.i
  %..i17.i = select i1 %_0.i.i, ptr %_10, ptr %scratch_base
  %3 = load i32, ptr %..i17.i, align 4, !alias.scope !704, !noalias !730
  store i32 %3, ptr %dst, align 4, !noalias !732
  tail call void @llvm.experimental.noalias.scope.decl(metadata !733)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !736)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !738), !noalias !741
  tail call void @llvm.experimental.noalias.scope.decl(metadata !744), !noalias !741
  tail call void @llvm.experimental.noalias.scope.decl(metadata !746), !noalias !741
  tail call void @llvm.experimental.noalias.scope.decl(metadata !749), !noalias !741
  %_4.i.i.i19.i = load float, ptr %1, align 4, !alias.scope !751, !noalias !752, !noundef !32
  %_5.i.i.i20.i = load float, ptr %2, align 4, !alias.scope !753, !noalias !754, !noundef !32
  %.not.i.i.i21.i = fcmp uno float %_4.i.i.i19.i, %_5.i.i.i20.i
  br i1 %.not.i.i.i21.i, label %bb2.i.i.i23.i, label %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfaa75802b1959b0aE.exit24.i", !prof !35

bb2.i.i.i23.i:                                    ; preds = %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfaa75802b1959b0aE.exit.i.3", %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfaa75802b1959b0aE.exit.i.2", %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfaa75802b1959b0aE.exit.i.1", %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfaa75802b1959b0aE.exit.i"
; call core::option::unwrap_failed
  tail call void @_ZN4core6option13unwrap_failed17hef2534b77b89c04fE(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_4a4e7fec44b84c1472b04d0c86f3e1b7) #24, !noalias !755
  unreachable

"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfaa75802b1959b0aE.exit24.i": ; preds = %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfaa75802b1959b0aE.exit.i"
  %is_l.i18.i = xor i1 %_0.i.i, true
  %count2.i.i = zext i1 %is_l.i18.i to i64
  %_14.i.i = getelementptr inbounds nuw float, ptr %scratch_base, i64 %count2.i.i
  %count.i.i = zext i1 %_0.i.i to i64
  %_12.i.i = getelementptr inbounds nuw float, ptr %_10, i64 %count.i.i
  %_0.i22.i = fcmp olt float %_4.i.i.i19.i, %_5.i.i.i20.i
  %..i.i = select i1 %_0.i22.i, ptr %2, ptr %1
  %is_l.i.i = xor i1 %_0.i22.i, true
  %4 = load i32, ptr %..i.i, align 4, !alias.scope !704, !noalias !756
  store i32 %4, ptr %0, align 4, !noalias !758
  %count.neg.i.i = sext i1 %is_l.i.i to i64
  %5 = getelementptr float, ptr %1, i64 %count.neg.i.i
  %count3.neg.i.i = sext i1 %_0.i22.i to i64
  %6 = getelementptr float, ptr %2, i64 %count3.neg.i.i
  %7 = getelementptr inbounds nuw i8, ptr %dst, i64 24
  tail call void @llvm.experimental.noalias.scope.decl(metadata !759)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !761)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !763), !noalias !715
  tail call void @llvm.experimental.noalias.scope.decl(metadata !765), !noalias !715
  tail call void @llvm.experimental.noalias.scope.decl(metadata !767), !noalias !715
  tail call void @llvm.experimental.noalias.scope.decl(metadata !769), !noalias !715
  %_4.i.i.i.i.1 = load float, ptr %_12.i.i, align 4, !alias.scope !771, !noalias !772, !noundef !32
  %_5.i.i.i.i.1 = load float, ptr %_14.i.i, align 4, !alias.scope !773, !noalias !774, !noundef !32
  %.not.i.i.i.i.1 = fcmp uno float %_4.i.i.i.i.1, %_5.i.i.i.i.1
  br i1 %.not.i.i.i.i.1, label %bb2.i.i.i.i, label %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfaa75802b1959b0aE.exit.i.1", !prof !35

"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfaa75802b1959b0aE.exit.i.1": ; preds = %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfaa75802b1959b0aE.exit24.i"
  %_16.i.i = getelementptr inbounds nuw i8, ptr %dst, i64 4
  %_0.i.i.1 = fcmp olt float %_4.i.i.i.i.1, %_5.i.i.i.i.1
  %..i17.i.1 = select i1 %_0.i.i.1, ptr %_12.i.i, ptr %_14.i.i
  %8 = load i32, ptr %..i17.i.1, align 4, !alias.scope !704, !noalias !730
  store i32 %8, ptr %_16.i.i, align 4, !noalias !732
  tail call void @llvm.experimental.noalias.scope.decl(metadata !775)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !777)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !779), !noalias !741
  tail call void @llvm.experimental.noalias.scope.decl(metadata !781), !noalias !741
  tail call void @llvm.experimental.noalias.scope.decl(metadata !783), !noalias !741
  tail call void @llvm.experimental.noalias.scope.decl(metadata !785), !noalias !741
  %_4.i.i.i19.i.1 = load float, ptr %5, align 4, !alias.scope !787, !noalias !788, !noundef !32
  %_5.i.i.i20.i.1 = load float, ptr %6, align 4, !alias.scope !789, !noalias !790, !noundef !32
  %.not.i.i.i21.i.1 = fcmp uno float %_4.i.i.i19.i.1, %_5.i.i.i20.i.1
  br i1 %.not.i.i.i21.i.1, label %bb2.i.i.i23.i, label %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfaa75802b1959b0aE.exit24.i.1", !prof !35

"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfaa75802b1959b0aE.exit24.i.1": ; preds = %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfaa75802b1959b0aE.exit.i.1"
  %is_l.i18.i.1 = xor i1 %_0.i.i.1, true
  %count2.i.i.1 = zext i1 %is_l.i18.i.1 to i64
  %_14.i.i.1 = getelementptr inbounds nuw float, ptr %_14.i.i, i64 %count2.i.i.1
  %count.i.i.1 = zext i1 %_0.i.i.1 to i64
  %_12.i.i.1 = getelementptr inbounds nuw float, ptr %_12.i.i, i64 %count.i.i.1
  %_0.i22.i.1 = fcmp olt float %_4.i.i.i19.i.1, %_5.i.i.i20.i.1
  %..i.i.1 = select i1 %_0.i22.i.1, ptr %6, ptr %5
  %is_l.i.i.1 = xor i1 %_0.i22.i.1, true
  %9 = load i32, ptr %..i.i.1, align 4, !alias.scope !704, !noalias !756
  store i32 %9, ptr %7, align 4, !noalias !758
  %count.neg.i.i.1 = sext i1 %is_l.i.i.1 to i64
  %10 = getelementptr float, ptr %5, i64 %count.neg.i.i.1
  %count3.neg.i.i.1 = sext i1 %_0.i22.i.1 to i64
  %11 = getelementptr float, ptr %6, i64 %count3.neg.i.i.1
  %12 = getelementptr inbounds nuw i8, ptr %dst, i64 20
  tail call void @llvm.experimental.noalias.scope.decl(metadata !791)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !793)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !795), !noalias !715
  tail call void @llvm.experimental.noalias.scope.decl(metadata !797), !noalias !715
  tail call void @llvm.experimental.noalias.scope.decl(metadata !799), !noalias !715
  tail call void @llvm.experimental.noalias.scope.decl(metadata !801), !noalias !715
  %_4.i.i.i.i.2 = load float, ptr %_12.i.i.1, align 4, !alias.scope !803, !noalias !804, !noundef !32
  %_5.i.i.i.i.2 = load float, ptr %_14.i.i.1, align 4, !alias.scope !805, !noalias !806, !noundef !32
  %.not.i.i.i.i.2 = fcmp uno float %_4.i.i.i.i.2, %_5.i.i.i.i.2
  br i1 %.not.i.i.i.i.2, label %bb2.i.i.i.i, label %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfaa75802b1959b0aE.exit.i.2", !prof !35

"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfaa75802b1959b0aE.exit.i.2": ; preds = %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfaa75802b1959b0aE.exit24.i.1"
  %_16.i.i.1 = getelementptr inbounds nuw i8, ptr %dst, i64 8
  %_0.i.i.2 = fcmp olt float %_4.i.i.i.i.2, %_5.i.i.i.i.2
  %..i17.i.2 = select i1 %_0.i.i.2, ptr %_12.i.i.1, ptr %_14.i.i.1
  %13 = load i32, ptr %..i17.i.2, align 4, !alias.scope !704, !noalias !730
  store i32 %13, ptr %_16.i.i.1, align 4, !noalias !732
  tail call void @llvm.experimental.noalias.scope.decl(metadata !807)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !809)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !811), !noalias !741
  tail call void @llvm.experimental.noalias.scope.decl(metadata !813), !noalias !741
  tail call void @llvm.experimental.noalias.scope.decl(metadata !815), !noalias !741
  tail call void @llvm.experimental.noalias.scope.decl(metadata !817), !noalias !741
  %_4.i.i.i19.i.2 = load float, ptr %10, align 4, !alias.scope !819, !noalias !820, !noundef !32
  %_5.i.i.i20.i.2 = load float, ptr %11, align 4, !alias.scope !821, !noalias !822, !noundef !32
  %.not.i.i.i21.i.2 = fcmp uno float %_4.i.i.i19.i.2, %_5.i.i.i20.i.2
  br i1 %.not.i.i.i21.i.2, label %bb2.i.i.i23.i, label %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfaa75802b1959b0aE.exit24.i.2", !prof !35

"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfaa75802b1959b0aE.exit24.i.2": ; preds = %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfaa75802b1959b0aE.exit.i.2"
  %is_l.i18.i.2 = xor i1 %_0.i.i.2, true
  %count2.i.i.2 = zext i1 %is_l.i18.i.2 to i64
  %_14.i.i.2 = getelementptr inbounds nuw float, ptr %_14.i.i.1, i64 %count2.i.i.2
  %count.i.i.2 = zext i1 %_0.i.i.2 to i64
  %_12.i.i.2 = getelementptr inbounds nuw float, ptr %_12.i.i.1, i64 %count.i.i.2
  %_0.i22.i.2 = fcmp olt float %_4.i.i.i19.i.2, %_5.i.i.i20.i.2
  %..i.i.2 = select i1 %_0.i22.i.2, ptr %11, ptr %10
  %is_l.i.i.2 = xor i1 %_0.i22.i.2, true
  %14 = load i32, ptr %..i.i.2, align 4, !alias.scope !704, !noalias !756
  store i32 %14, ptr %12, align 4, !noalias !758
  %count.neg.i.i.2 = sext i1 %is_l.i.i.2 to i64
  %15 = getelementptr float, ptr %10, i64 %count.neg.i.i.2
  %count3.neg.i.i.2 = sext i1 %_0.i22.i.2 to i64
  %16 = getelementptr float, ptr %11, i64 %count3.neg.i.i.2
  %17 = getelementptr inbounds nuw i8, ptr %dst, i64 16
  tail call void @llvm.experimental.noalias.scope.decl(metadata !823)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !825)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !827), !noalias !715
  tail call void @llvm.experimental.noalias.scope.decl(metadata !829), !noalias !715
  tail call void @llvm.experimental.noalias.scope.decl(metadata !831), !noalias !715
  tail call void @llvm.experimental.noalias.scope.decl(metadata !833), !noalias !715
  %_4.i.i.i.i.3 = load float, ptr %_12.i.i.2, align 4, !alias.scope !835, !noalias !836, !noundef !32
  %_5.i.i.i.i.3 = load float, ptr %_14.i.i.2, align 4, !alias.scope !837, !noalias !838, !noundef !32
  %.not.i.i.i.i.3 = fcmp uno float %_4.i.i.i.i.3, %_5.i.i.i.i.3
  br i1 %.not.i.i.i.i.3, label %bb2.i.i.i.i, label %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfaa75802b1959b0aE.exit.i.3", !prof !35

"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfaa75802b1959b0aE.exit.i.3": ; preds = %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfaa75802b1959b0aE.exit24.i.2"
  %_16.i.i.2 = getelementptr inbounds nuw i8, ptr %dst, i64 12
  %_0.i.i.3 = fcmp olt float %_4.i.i.i.i.3, %_5.i.i.i.i.3
  %..i17.i.3 = select i1 %_0.i.i.3, ptr %_12.i.i.2, ptr %_14.i.i.2
  %18 = load i32, ptr %..i17.i.3, align 4, !alias.scope !704, !noalias !730
  store i32 %18, ptr %_16.i.i.2, align 4, !noalias !732
  tail call void @llvm.experimental.noalias.scope.decl(metadata !839)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !841)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !843), !noalias !741
  tail call void @llvm.experimental.noalias.scope.decl(metadata !845), !noalias !741
  tail call void @llvm.experimental.noalias.scope.decl(metadata !847), !noalias !741
  tail call void @llvm.experimental.noalias.scope.decl(metadata !849), !noalias !741
  %_4.i.i.i19.i.3 = load float, ptr %15, align 4, !alias.scope !851, !noalias !852, !noundef !32
  %_5.i.i.i20.i.3 = load float, ptr %16, align 4, !alias.scope !853, !noalias !854, !noundef !32
  %.not.i.i.i21.i.3 = fcmp uno float %_4.i.i.i19.i.3, %_5.i.i.i20.i.3
  br i1 %.not.i.i.i21.i.3, label %bb2.i.i.i23.i, label %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfaa75802b1959b0aE.exit24.i.3", !prof !35

"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfaa75802b1959b0aE.exit24.i.3": ; preds = %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfaa75802b1959b0aE.exit.i.3"
  %is_l.i18.i.3 = xor i1 %_0.i.i.3, true
  %count2.i.i.3 = zext i1 %is_l.i18.i.3 to i64
  %_14.i.i.3 = getelementptr inbounds nuw float, ptr %_14.i.i.2, i64 %count2.i.i.3
  %count.i.i.3 = zext i1 %_0.i.i.3 to i64
  %_12.i.i.3 = getelementptr inbounds nuw float, ptr %_12.i.i.2, i64 %count.i.i.3
  %_0.i22.i.3 = fcmp olt float %_4.i.i.i19.i.3, %_5.i.i.i20.i.3
  %..i.i.3 = select i1 %_0.i22.i.3, ptr %16, ptr %15
  %is_l.i.i.3 = xor i1 %_0.i22.i.3, true
  %19 = load i32, ptr %..i.i.3, align 4, !alias.scope !704, !noalias !756
  store i32 %19, ptr %17, align 4, !noalias !758
  %count.neg.i.i.3 = sext i1 %is_l.i.i.3 to i64
  %20 = getelementptr float, ptr %15, i64 %count.neg.i.i.3
  %count3.neg.i.i.3 = sext i1 %_0.i22.i.3 to i64
  %21 = getelementptr float, ptr %16, i64 %count3.neg.i.i.3
  %22 = getelementptr i8, ptr %21, i64 4
  %23 = getelementptr i8, ptr %20, i64 4
  %_31.i = icmp ne ptr %_14.i.i.3, %22
  %_32.i = icmp ne ptr %_12.i.i.3, %23
  %or.cond.i = select i1 %_31.i, i1 true, i1 %_32.i
  br i1 %or.cond.i, label %bb13.i, label %_ZN4core5slice4sort6shared9smallsort19bidirectional_merge17h8fd5afa469382f2aE.exit, !prof !703

bb13.i:                                           ; preds = %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfaa75802b1959b0aE.exit24.i.3"
; call core::slice::sort::shared::smallsort::panic_on_ord_violation
  tail call void @_ZN4core5slice4sort6shared9smallsort22panic_on_ord_violation17hc77a22a2d50782cdE() #24, !noalias !704
  unreachable

_ZN4core5slice4sort6shared9smallsort19bidirectional_merge17h8fd5afa469382f2aE.exit: ; preds = %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfaa75802b1959b0aE.exit24.i.3"
  ret void
}

; core::slice::sort::shared::smallsort::sort8_stable
; Function Attrs: nonlazybind uwtable
define void @_ZN4core5slice4sort6shared9smallsort12sort8_stable17had7ded36d12690dcE(ptr noundef readonly captures(none) %v_base, ptr noundef writeonly captures(none) initializes((0, 32)) %dst, ptr noundef captures(address) initializes((0, 32)) %scratch_base, ptr noalias readnone align 8 captures(none) %is_less) unnamed_addr #1 personality ptr @rust_eh_personality {
start:
  %_7.i = getelementptr inbounds nuw i8, ptr %v_base, i64 4
  tail call void @llvm.experimental.noalias.scope.decl(metadata !855)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !858)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !860)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !863)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !865)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !868)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !870)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !873)
  %_3.i.i.i.i.i = load i32, ptr %_7.i, align 4, !alias.scope !875, !noalias !876, !noundef !32
  %_4.i.i.i.i.i = load i32, ptr %v_base, align 4, !alias.scope !876, !noalias !875, !noundef !32
  %_0.i.i = icmp slt i32 %_3.i.i.i.i.i, %_4.i.i.i.i.i
  %_12.i = getelementptr inbounds nuw i8, ptr %v_base, i64 12
  %_14.i = getelementptr inbounds nuw i8, ptr %v_base, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !877)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !880)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !882)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !885)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !887)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !890)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !892)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !895)
  %_3.i.i.i.i7.i = load i32, ptr %_12.i, align 4, !alias.scope !897, !noalias !898, !noundef !32
  %_4.i.i.i.i8.i = load i32, ptr %_14.i, align 4, !alias.scope !898, !noalias !897, !noundef !32
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !899)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !902)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !904)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !907)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !909)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !912)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !914)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !917)
  %_3.i.i.i.i10.i = load i32, ptr %c.i, align 4, !alias.scope !919, !noalias !920, !noundef !32
  %_4.i.i.i.i11.i = load i32, ptr %a.i, align 4, !alias.scope !920, !noalias !919, !noundef !32
  %_0.i12.i = icmp slt i32 %_3.i.i.i.i10.i, %_4.i.i.i.i11.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !921)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !924)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !926)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !929)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !931)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !934)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !936)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !939)
  %_3.i.i.i.i13.i = load i32, ptr %d.i, align 4, !alias.scope !941, !noalias !942, !noundef !32
  %_4.i.i.i.i14.i = load i32, ptr %b.i, align 4, !alias.scope !942, !noalias !941, !noundef !32
  %_0.i15.i = icmp slt i32 %_3.i.i.i.i13.i, %_4.i.i.i.i14.i
  %0 = select i1 %_0.i12.i, ptr %c.i, ptr %a.i, !unpredictable !32
  %1 = select i1 %_0.i15.i, ptr %c.i, ptr %b.i, !unpredictable !32
  %2 = select i1 %_0.i12.i, ptr %a.i, ptr %1, !unpredictable !32
  %3 = select i1 %_0.i12.i, ptr %b.i, ptr %c.i, !unpredictable !32
  %4 = select i1 %_0.i15.i, ptr %d.i, ptr %3, !unpredictable !32
  tail call void @llvm.experimental.noalias.scope.decl(metadata !943)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !946)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !948)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !951)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !953)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !956)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !958)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !961)
  %_3.i.i.i.i16.i = load i32, ptr %4, align 4, !alias.scope !963, !noalias !964, !noundef !32
  %_4.i.i.i.i17.i = load i32, ptr %2, align 4, !alias.scope !964, !noalias !963, !noundef !32
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !965)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !968)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !970)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !973)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !975)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !978)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !980)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !983)
  %_3.i.i.i.i.i2 = load i32, ptr %_7.i1, align 4, !alias.scope !985, !noalias !986, !noundef !32
  %_4.i.i.i.i.i3 = load i32, ptr %_9, align 4, !alias.scope !986, !noalias !985, !noundef !32
  %_0.i.i4 = icmp slt i32 %_3.i.i.i.i.i2, %_4.i.i.i.i.i3
  %_12.i5 = getelementptr inbounds nuw i8, ptr %v_base, i64 28
  %_14.i6 = getelementptr inbounds nuw i8, ptr %v_base, i64 24
  tail call void @llvm.experimental.noalias.scope.decl(metadata !987)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !990)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !992)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !995)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !997)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1000)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1002)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1005)
  %_3.i.i.i.i7.i7 = load i32, ptr %_12.i5, align 4, !alias.scope !1007, !noalias !1008, !noundef !32
  %_4.i.i.i.i8.i8 = load i32, ptr %_14.i6, align 4, !alias.scope !1008, !noalias !1007, !noundef !32
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1009)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1012)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1014)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1017)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1019)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1022)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1024)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1027)
  %_3.i.i.i.i10.i19 = load i32, ptr %c.i16, align 4, !alias.scope !1029, !noalias !1030, !noundef !32
  %_4.i.i.i.i11.i20 = load i32, ptr %a.i11, align 4, !alias.scope !1030, !noalias !1029, !noundef !32
  %_0.i12.i21 = icmp slt i32 %_3.i.i.i.i10.i19, %_4.i.i.i.i11.i20
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1031)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1034)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1036)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1039)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1041)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1044)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1046)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1049)
  %_3.i.i.i.i13.i22 = load i32, ptr %d.i18, align 4, !alias.scope !1051, !noalias !1052, !noundef !32
  %_4.i.i.i.i14.i23 = load i32, ptr %b.i14, align 4, !alias.scope !1052, !noalias !1051, !noundef !32
  %_0.i15.i24 = icmp slt i32 %_3.i.i.i.i13.i22, %_4.i.i.i.i14.i23
  %10 = select i1 %_0.i12.i21, ptr %c.i16, ptr %a.i11, !unpredictable !32
  %11 = select i1 %_0.i15.i24, ptr %c.i16, ptr %b.i14, !unpredictable !32
  %12 = select i1 %_0.i12.i21, ptr %a.i11, ptr %11, !unpredictable !32
  %13 = select i1 %_0.i12.i21, ptr %b.i14, ptr %c.i16, !unpredictable !32
  %14 = select i1 %_0.i15.i24, ptr %d.i18, ptr %13, !unpredictable !32
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1053)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1056)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1058)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1061)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1063)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1066)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1068)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1071)
  %_3.i.i.i.i16.i25 = load i32, ptr %14, align 4, !alias.scope !1073, !noalias !1074, !noundef !32
  %_4.i.i.i.i17.i26 = load i32, ptr %12, align 4, !alias.scope !1074, !noalias !1073, !noundef !32
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1075)
  %20 = getelementptr i8, ptr %scratch_base, i64 12
  %21 = getelementptr inbounds nuw i8, ptr %scratch_base, i64 28
  %22 = getelementptr inbounds nuw i8, ptr %dst, i64 28
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1078)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1081)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1083), !noalias !1086
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1089), !noalias !1086
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1091), !noalias !1086
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1094), !noalias !1086
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1096), !noalias !1086
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1099), !noalias !1086
  %_3.i.i.i.i.i36 = load i32, ptr %_10, align 4, !alias.scope !1101, !noalias !1102, !noundef !32
  %_4.i.i.i.i.i37 = load i32, ptr %scratch_base, align 4, !alias.scope !1103, !noalias !1104, !noundef !32
  %_0.i.i38 = icmp slt i32 %_3.i.i.i.i.i36, %_4.i.i.i.i.i37
  %is_l.i18.i = xor i1 %_0.i.i38, true
  %23 = tail call i32 @llvm.smin.i32(i32 %_3.i.i.i.i.i36, i32 %_4.i.i.i.i.i37)
  store i32 %23, ptr %dst, align 4, !noalias !1105
  %count.i.i = zext i1 %_0.i.i38 to i64
  %_12.i.i = getelementptr inbounds nuw i32, ptr %_10, i64 %count.i.i
  %count2.i.i = zext i1 %is_l.i18.i to i64
  %_14.i.i = getelementptr inbounds nuw i32, ptr %scratch_base, i64 %count2.i.i
  %_16.i.i = getelementptr inbounds nuw i8, ptr %dst, i64 4
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1107)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1110)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1112), !noalias !1115
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1118), !noalias !1115
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1120), !noalias !1115
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1123), !noalias !1115
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1125), !noalias !1115
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1128), !noalias !1115
  %_3.i.i.i.i19.i = load i32, ptr %21, align 4, !alias.scope !1130, !noalias !1131, !noundef !32
  %_4.i.i.i.i20.i = load i32, ptr %20, align 4, !alias.scope !1132, !noalias !1133, !noundef !32
  %_0.i21.i = icmp slt i32 %_3.i.i.i.i19.i, %_4.i.i.i.i20.i
  %is_l.i.i = xor i1 %_0.i21.i, true
  %24 = tail call i32 @llvm.smax.i32(i32 %_3.i.i.i.i19.i, i32 %_4.i.i.i.i20.i)
  store i32 %24, ptr %22, align 4, !noalias !1134
  %count.neg.i.i = sext i1 %is_l.i.i to i64
  %25 = getelementptr i32, ptr %21, i64 %count.neg.i.i
  %count3.neg.i.i = sext i1 %_0.i21.i to i64
  %26 = getelementptr i32, ptr %20, i64 %count3.neg.i.i
  %27 = getelementptr inbounds nuw i8, ptr %dst, i64 24
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1136)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1138)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1140), !noalias !1086
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1142), !noalias !1086
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1144), !noalias !1086
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1146), !noalias !1086
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1148), !noalias !1086
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1150), !noalias !1086
  %_3.i.i.i.i.i36.1 = load i32, ptr %_12.i.i, align 4, !alias.scope !1152, !noalias !1153, !noundef !32
  %_4.i.i.i.i.i37.1 = load i32, ptr %_14.i.i, align 4, !alias.scope !1154, !noalias !1155, !noundef !32
  %_0.i.i38.1 = icmp slt i32 %_3.i.i.i.i.i36.1, %_4.i.i.i.i.i37.1
  %is_l.i18.i.1 = xor i1 %_0.i.i38.1, true
  %28 = tail call i32 @llvm.smin.i32(i32 %_3.i.i.i.i.i36.1, i32 %_4.i.i.i.i.i37.1)
  store i32 %28, ptr %_16.i.i, align 4, !noalias !1105
  %count.i.i.1 = zext i1 %_0.i.i38.1 to i64
  %_12.i.i.1 = getelementptr inbounds nuw i32, ptr %_12.i.i, i64 %count.i.i.1
  %count2.i.i.1 = zext i1 %is_l.i18.i.1 to i64
  %_14.i.i.1 = getelementptr inbounds nuw i32, ptr %_14.i.i, i64 %count2.i.i.1
  %_16.i.i.1 = getelementptr inbounds nuw i8, ptr %dst, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1156)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1158)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1160), !noalias !1115
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1162), !noalias !1115
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1164), !noalias !1115
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1166), !noalias !1115
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1168), !noalias !1115
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1170), !noalias !1115
  %_3.i.i.i.i19.i.1 = load i32, ptr %25, align 4, !alias.scope !1172, !noalias !1173, !noundef !32
  %_4.i.i.i.i20.i.1 = load i32, ptr %26, align 4, !alias.scope !1174, !noalias !1175, !noundef !32
  %_0.i21.i.1 = icmp slt i32 %_3.i.i.i.i19.i.1, %_4.i.i.i.i20.i.1
  %is_l.i.i.1 = xor i1 %_0.i21.i.1, true
  %29 = tail call i32 @llvm.smax.i32(i32 %_3.i.i.i.i19.i.1, i32 %_4.i.i.i.i20.i.1)
  store i32 %29, ptr %27, align 4, !noalias !1134
  %count.neg.i.i.1 = sext i1 %is_l.i.i.1 to i64
  %30 = getelementptr i32, ptr %25, i64 %count.neg.i.i.1
  %count3.neg.i.i.1 = sext i1 %_0.i21.i.1 to i64
  %31 = getelementptr i32, ptr %26, i64 %count3.neg.i.i.1
  %32 = getelementptr inbounds nuw i8, ptr %dst, i64 20
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1176)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1178)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1180), !noalias !1086
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1182), !noalias !1086
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1184), !noalias !1086
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1186), !noalias !1086
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1188), !noalias !1086
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1190), !noalias !1086
  %_3.i.i.i.i.i36.2 = load i32, ptr %_12.i.i.1, align 4, !alias.scope !1192, !noalias !1193, !noundef !32
  %_4.i.i.i.i.i37.2 = load i32, ptr %_14.i.i.1, align 4, !alias.scope !1194, !noalias !1195, !noundef !32
  %_0.i.i38.2 = icmp slt i32 %_3.i.i.i.i.i36.2, %_4.i.i.i.i.i37.2
  %is_l.i18.i.2 = xor i1 %_0.i.i38.2, true
  %33 = tail call i32 @llvm.smin.i32(i32 %_3.i.i.i.i.i36.2, i32 %_4.i.i.i.i.i37.2)
  store i32 %33, ptr %_16.i.i.1, align 4, !noalias !1105
  %count.i.i.2 = zext i1 %_0.i.i38.2 to i64
  %_12.i.i.2 = getelementptr inbounds nuw i32, ptr %_12.i.i.1, i64 %count.i.i.2
  %count2.i.i.2 = zext i1 %is_l.i18.i.2 to i64
  %_14.i.i.2 = getelementptr inbounds nuw i32, ptr %_14.i.i.1, i64 %count2.i.i.2
  %_16.i.i.2 = getelementptr inbounds nuw i8, ptr %dst, i64 12
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1196)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1198)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1200), !noalias !1115
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1202), !noalias !1115
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1204), !noalias !1115
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1206), !noalias !1115
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1208), !noalias !1115
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1210), !noalias !1115
  %_3.i.i.i.i19.i.2 = load i32, ptr %30, align 4, !alias.scope !1212, !noalias !1213, !noundef !32
  %_4.i.i.i.i20.i.2 = load i32, ptr %31, align 4, !alias.scope !1214, !noalias !1215, !noundef !32
  %_0.i21.i.2 = icmp slt i32 %_3.i.i.i.i19.i.2, %_4.i.i.i.i20.i.2
  %is_l.i.i.2 = xor i1 %_0.i21.i.2, true
  %34 = tail call i32 @llvm.smax.i32(i32 %_3.i.i.i.i19.i.2, i32 %_4.i.i.i.i20.i.2)
  store i32 %34, ptr %32, align 4, !noalias !1134
  %count.neg.i.i.2 = sext i1 %is_l.i.i.2 to i64
  %35 = getelementptr i32, ptr %30, i64 %count.neg.i.i.2
  %count3.neg.i.i.2 = sext i1 %_0.i21.i.2 to i64
  %36 = getelementptr i32, ptr %31, i64 %count3.neg.i.i.2
  %37 = getelementptr inbounds nuw i8, ptr %dst, i64 16
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1216)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1218)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1220), !noalias !1086
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1222), !noalias !1086
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1224), !noalias !1086
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1226), !noalias !1086
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1228), !noalias !1086
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1230), !noalias !1086
  %_3.i.i.i.i.i36.3 = load i32, ptr %_12.i.i.2, align 4, !alias.scope !1232, !noalias !1233, !noundef !32
  %_4.i.i.i.i.i37.3 = load i32, ptr %_14.i.i.2, align 4, !alias.scope !1234, !noalias !1235, !noundef !32
  %_0.i.i38.3 = icmp slt i32 %_3.i.i.i.i.i36.3, %_4.i.i.i.i.i37.3
  %is_l.i18.i.3 = xor i1 %_0.i.i38.3, true
  %38 = tail call i32 @llvm.smin.i32(i32 %_3.i.i.i.i.i36.3, i32 %_4.i.i.i.i.i37.3)
  store i32 %38, ptr %_16.i.i.2, align 4, !noalias !1105
  %count.i.i.3 = zext i1 %_0.i.i38.3 to i64
  %_12.i.i.3 = getelementptr inbounds nuw i32, ptr %_12.i.i.2, i64 %count.i.i.3
  %count2.i.i.3 = zext i1 %is_l.i18.i.3 to i64
  %_14.i.i.3 = getelementptr inbounds nuw i32, ptr %_14.i.i.2, i64 %count2.i.i.3
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1236)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1238)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1240), !noalias !1115
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1242), !noalias !1115
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1244), !noalias !1115
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1246), !noalias !1115
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1248), !noalias !1115
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1250), !noalias !1115
  %_3.i.i.i.i19.i.3 = load i32, ptr %35, align 4, !alias.scope !1252, !noalias !1253, !noundef !32
  %_4.i.i.i.i20.i.3 = load i32, ptr %36, align 4, !alias.scope !1254, !noalias !1255, !noundef !32
  %_0.i21.i.3 = icmp slt i32 %_3.i.i.i.i19.i.3, %_4.i.i.i.i20.i.3
  %is_l.i.i.3 = xor i1 %_0.i21.i.3, true
  %39 = tail call i32 @llvm.smax.i32(i32 %_3.i.i.i.i19.i.3, i32 %_4.i.i.i.i20.i.3)
  store i32 %39, ptr %37, align 4, !noalias !1134
  %count.neg.i.i.3 = sext i1 %is_l.i.i.3 to i64
  %40 = getelementptr i32, ptr %35, i64 %count.neg.i.i.3
  %count3.neg.i.i.3 = sext i1 %_0.i21.i.3 to i64
  %41 = getelementptr i32, ptr %36, i64 %count3.neg.i.i.3
  %42 = getelementptr i8, ptr %41, i64 4
  %43 = getelementptr i8, ptr %40, i64 4
  %_31.i = icmp ne ptr %_14.i.i.3, %42
  %_32.i = icmp ne ptr %_12.i.i.3, %43
  %or.cond.i = select i1 %_31.i, i1 true, i1 %_32.i
  br i1 %or.cond.i, label %bb13.i, label %_ZN4core5slice4sort6shared9smallsort19bidirectional_merge17h88e3c5d50b4d1a5aE.exit, !prof !703

bb13.i:                                           ; preds = %start
; call core::slice::sort::shared::smallsort::panic_on_ord_violation
  tail call void @_ZN4core5slice4sort6shared9smallsort22panic_on_ord_violation17hc77a22a2d50782cdE() #24, !noalias !1075
  unreachable

_ZN4core5slice4sort6shared9smallsort19bidirectional_merge17h88e3c5d50b4d1a5aE.exit: ; preds = %start
  ret void
}

; core::slice::sort::shared::smallsort::bidirectional_merge
; Function Attrs: nonlazybind uwtable
define void @_ZN4core5slice4sort6shared9smallsort19bidirectional_merge17h88e3c5d50b4d1a5aE(ptr noalias noundef nonnull readonly align 4 captures(address) %v.0, i64 noundef range(i64 0, 2305843009213693952) %v.1, ptr noundef writeonly captures(none) %0, ptr noalias noundef readnone align 8 captures(none) dereferenceable(8) %is_less) unnamed_addr #1 {
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1256)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1259)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1261), !noalias !1264
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1267), !noalias !1264
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1269), !noalias !1264
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1272), !noalias !1264
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1274), !noalias !1264
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1277), !noalias !1264
  %_3.i.i.i.i = load i32, ptr %right.sroa.0.026, align 4, !alias.scope !1279, !noalias !1280, !noundef !32
  %_4.i.i.i.i = load i32, ptr %left.sroa.0.027, align 4, !alias.scope !1281, !noalias !1282, !noundef !32
  %_0.i = icmp slt i32 %_3.i.i.i.i, %_4.i.i.i.i
  %is_l.i18 = xor i1 %_0.i, true
  %7 = tail call i32 @llvm.smin.i32(i32 %_3.i.i.i.i, i32 %_4.i.i.i.i)
  store i32 %7, ptr %dst.sroa.0.029, align 4, !noalias !1283
  %count.i = zext i1 %_0.i to i64
  %_12.i = getelementptr inbounds nuw i32, ptr %right.sroa.0.026, i64 %count.i
  %count2.i = zext i1 %is_l.i18 to i64
  %_14.i = getelementptr inbounds nuw i32, ptr %left.sroa.0.027, i64 %count2.i
  %_16.i = getelementptr inbounds nuw i8, ptr %dst.sroa.0.029, i64 4
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1285)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1288)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1290), !noalias !1293
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1296), !noalias !1293
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1298), !noalias !1293
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1301), !noalias !1293
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1303), !noalias !1293
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1306), !noalias !1293
  %_3.i.i.i.i19 = load i32, ptr %right_rev.sroa.0.024, align 4, !alias.scope !1308, !noalias !1309, !noundef !32
  %_4.i.i.i.i20 = load i32, ptr %left_rev.sroa.0.025, align 4, !alias.scope !1310, !noalias !1311, !noundef !32
  %_0.i21 = icmp slt i32 %_3.i.i.i.i19, %_4.i.i.i.i20
  %is_l.i = xor i1 %_0.i21, true
  %8 = tail call i32 @llvm.smax.i32(i32 %_3.i.i.i.i19, i32 %_4.i.i.i.i20)
  store i32 %8, ptr %dst_rev.sroa.0.023, align 4, !noalias !1312
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
  br i1 %or.cond, label %bb13, label %bb14, !prof !703

bb14:                                             ; preds = %bb9
  ret void

bb13:                                             ; preds = %bb9
; call core::slice::sort::shared::smallsort::panic_on_ord_violation
  tail call void @_ZN4core5slice4sort6shared9smallsort22panic_on_ord_violation17hc77a22a2d50782cdE() #24
  unreachable
}

; core::slice::sort::shared::smallsort::bidirectional_merge
; Function Attrs: nonlazybind uwtable
define void @_ZN4core5slice4sort6shared9smallsort19bidirectional_merge17h8fd5afa469382f2aE(ptr noalias noundef nonnull readonly align 4 captures(address) %v.0, i64 noundef range(i64 0, 2305843009213693952) %v.1, ptr noundef writeonly captures(none) %0, ptr noalias readnone align 8 captures(none) %is_less) unnamed_addr #1 {
start:
  %len_div_215 = lshr i64 %v.1, 1
  %_7 = icmp samesign ugt i64 %v.1, 1
  tail call void @llvm.assume(i1 %_7)
  %count1 = add nsw i64 %v.1, -1
  %1 = getelementptr inbounds nuw float, ptr %0, i64 %count1
  %2 = getelementptr inbounds nuw float, ptr %v.0, i64 %count1
  %3 = getelementptr float, ptr %v.0, i64 %len_div_215
  %4 = getelementptr i8, ptr %3, i64 -4
  br label %bb15

bb16:                                             ; preds = %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfaa75802b1959b0aE.exit24"
  %5 = getelementptr i8, ptr %10, i64 4
  %6 = getelementptr i8, ptr %9, i64 4
  %_44 = and i64 %v.1, 1
  %_22 = icmp eq i64 %_44, 0
  br i1 %_22, label %bb9, label %bb5

bb15:                                             ; preds = %start, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfaa75802b1959b0aE.exit24"
  %dst.sroa.0.042 = phi ptr [ %_16.i, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfaa75802b1959b0aE.exit24" ], [ %0, %start ]
  %iter.sroa.0.041 = phi i64 [ %_39, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfaa75802b1959b0aE.exit24" ], [ 0, %start ]
  %left.sroa.0.040 = phi ptr [ %_14.i, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfaa75802b1959b0aE.exit24" ], [ %v.0, %start ]
  %right.sroa.0.039 = phi ptr [ %_12.i, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfaa75802b1959b0aE.exit24" ], [ %3, %start ]
  %left_rev.sroa.0.038 = phi ptr [ %10, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfaa75802b1959b0aE.exit24" ], [ %4, %start ]
  %right_rev.sroa.0.037 = phi ptr [ %9, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfaa75802b1959b0aE.exit24" ], [ %2, %start ]
  %dst_rev.sroa.0.036 = phi ptr [ %11, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfaa75802b1959b0aE.exit24" ], [ %1, %start ]
  %_39 = add nuw nsw i64 %iter.sroa.0.041, 1
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1314)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1317)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1319), !noalias !1322
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1325), !noalias !1322
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1327), !noalias !1322
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1330), !noalias !1322
  %_4.i.i.i = load float, ptr %right.sroa.0.039, align 4, !alias.scope !1332, !noalias !1333, !noundef !32
  %_5.i.i.i = load float, ptr %left.sroa.0.040, align 4, !alias.scope !1334, !noalias !1335, !noundef !32
  %.not.i.i.i = fcmp uno float %_4.i.i.i, %_5.i.i.i
  br i1 %.not.i.i.i, label %bb2.i.i.i, label %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfaa75802b1959b0aE.exit", !prof !35

bb2.i.i.i:                                        ; preds = %bb15
; call core::option::unwrap_failed
  tail call void @_ZN4core6option13unwrap_failed17hef2534b77b89c04fE(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_4a4e7fec44b84c1472b04d0c86f3e1b7) #24, !noalias !1336
  unreachable

"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfaa75802b1959b0aE.exit": ; preds = %bb15
  %_0.i = fcmp olt float %_4.i.i.i, %_5.i.i.i
  %..i17 = select i1 %_0.i, ptr %right.sroa.0.039, ptr %left.sroa.0.040
  %7 = load i32, ptr %..i17, align 4, !noalias !1337
  store i32 %7, ptr %dst.sroa.0.042, align 4, !noalias !1337
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1339)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1342)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1344), !noalias !1347
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1350), !noalias !1347
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1352), !noalias !1347
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1355), !noalias !1347
  %_4.i.i.i19 = load float, ptr %right_rev.sroa.0.037, align 4, !alias.scope !1357, !noalias !1358, !noundef !32
  %_5.i.i.i20 = load float, ptr %left_rev.sroa.0.038, align 4, !alias.scope !1359, !noalias !1360, !noundef !32
  %.not.i.i.i21 = fcmp uno float %_4.i.i.i19, %_5.i.i.i20
  br i1 %.not.i.i.i21, label %bb2.i.i.i23, label %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfaa75802b1959b0aE.exit24", !prof !35

bb2.i.i.i23:                                      ; preds = %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfaa75802b1959b0aE.exit"
; call core::option::unwrap_failed
  tail call void @_ZN4core6option13unwrap_failed17hef2534b77b89c04fE(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_4a4e7fec44b84c1472b04d0c86f3e1b7) #24, !noalias !1361
  unreachable

"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfaa75802b1959b0aE.exit24": ; preds = %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfaa75802b1959b0aE.exit"
  %_16.i = getelementptr inbounds nuw i8, ptr %dst.sroa.0.042, i64 4
  %is_l.i18 = xor i1 %_0.i, true
  %count2.i = zext i1 %is_l.i18 to i64
  %_14.i = getelementptr inbounds nuw float, ptr %left.sroa.0.040, i64 %count2.i
  %count.i = zext i1 %_0.i to i64
  %_12.i = getelementptr inbounds nuw float, ptr %right.sroa.0.039, i64 %count.i
  %_0.i22 = fcmp olt float %_4.i.i.i19, %_5.i.i.i20
  %..i = select i1 %_0.i22, ptr %left_rev.sroa.0.038, ptr %right_rev.sroa.0.037
  %is_l.i = xor i1 %_0.i22, true
  %8 = load i32, ptr %..i, align 4, !noalias !1362
  store i32 %8, ptr %dst_rev.sroa.0.036, align 4, !noalias !1362
  %count.neg.i = sext i1 %is_l.i to i64
  %9 = getelementptr float, ptr %right_rev.sroa.0.037, i64 %count.neg.i
  %count3.neg.i = sext i1 %_0.i22 to i64
  %10 = getelementptr float, ptr %left_rev.sroa.0.038, i64 %count3.neg.i
  %11 = getelementptr inbounds i8, ptr %dst_rev.sroa.0.036, i64 -4
  %exitcond.not = icmp eq i64 %_39, %len_div_215
  br i1 %exitcond.not, label %bb16, label %bb15

bb5:                                              ; preds = %bb16
  %left_nonempty = icmp ult ptr %_14.i, %5
  %left.sroa.0.0.right.sroa.0.0 = select i1 %left_nonempty, ptr %_14.i, ptr %_12.i
  %12 = load i32, ptr %left.sroa.0.0.right.sroa.0.0, align 4
  store i32 %12, ptr %_16.i, align 4
  %count2 = zext i1 %left_nonempty to i64
  %_26 = getelementptr inbounds nuw float, ptr %_14.i, i64 %count2
  %_30 = xor i1 %left_nonempty, true
  %count3 = zext i1 %_30 to i64
  %_28 = getelementptr inbounds nuw float, ptr %_12.i, i64 %count3
  br label %bb9

bb9:                                              ; preds = %bb16, %bb5
  %right.sroa.0.1 = phi ptr [ %_12.i, %bb16 ], [ %_28, %bb5 ]
  %left.sroa.0.1 = phi ptr [ %_14.i, %bb16 ], [ %_26, %bb5 ]
  %_31 = icmp ne ptr %left.sroa.0.1, %5
  %_32 = icmp ne ptr %right.sroa.0.1, %6
  %or.cond = select i1 %_31, i1 true, i1 %_32
  br i1 %or.cond, label %bb13, label %bb14, !prof !703

bb14:                                             ; preds = %bb9
  ret void

bb13:                                             ; preds = %bb9
; call core::slice::sort::shared::smallsort::panic_on_ord_violation
  tail call void @_ZN4core5slice4sort6shared9smallsort22panic_on_ord_violation17hc77a22a2d50782cdE() #24
  unreachable
}

; core::slice::sort::shared::smallsort::bidirectional_merge
; Function Attrs: nonlazybind uwtable
define void @_ZN4core5slice4sort6shared9smallsort19bidirectional_merge17ha5355d97ee5c682eE(ptr noalias noundef nonnull readonly align 4 captures(address) %v.0, i64 noundef range(i64 0, 2305843009213693952) %v.1, ptr noundef writeonly captures(none) %0, ptr noalias readnone align 8 captures(none) %is_less) unnamed_addr #1 {
start:
  %len_div_215 = lshr i64 %v.1, 1
  %_7 = icmp samesign ugt i64 %v.1, 1
  tail call void @llvm.assume(i1 %_7)
  %count1 = add nsw i64 %v.1, -1
  %1 = getelementptr inbounds nuw float, ptr %0, i64 %count1
  %2 = getelementptr inbounds nuw float, ptr %v.0, i64 %count1
  %3 = getelementptr float, ptr %v.0, i64 %len_div_215
  %4 = getelementptr i8, ptr %3, i64 -4
  br label %bb15

bb16:                                             ; preds = %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf5b8f37855ac0c3dE.exit24"
  %5 = getelementptr i8, ptr %10, i64 4
  %6 = getelementptr i8, ptr %9, i64 4
  %_44 = and i64 %v.1, 1
  %_22 = icmp eq i64 %_44, 0
  br i1 %_22, label %bb9, label %bb5

bb15:                                             ; preds = %start, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf5b8f37855ac0c3dE.exit24"
  %dst.sroa.0.042 = phi ptr [ %_16.i, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf5b8f37855ac0c3dE.exit24" ], [ %0, %start ]
  %iter.sroa.0.041 = phi i64 [ %_39, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf5b8f37855ac0c3dE.exit24" ], [ 0, %start ]
  %left.sroa.0.040 = phi ptr [ %_14.i, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf5b8f37855ac0c3dE.exit24" ], [ %v.0, %start ]
  %right.sroa.0.039 = phi ptr [ %_12.i, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf5b8f37855ac0c3dE.exit24" ], [ %3, %start ]
  %left_rev.sroa.0.038 = phi ptr [ %10, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf5b8f37855ac0c3dE.exit24" ], [ %4, %start ]
  %right_rev.sroa.0.037 = phi ptr [ %9, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf5b8f37855ac0c3dE.exit24" ], [ %2, %start ]
  %dst_rev.sroa.0.036 = phi ptr [ %11, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf5b8f37855ac0c3dE.exit24" ], [ %1, %start ]
  %_39 = add nuw nsw i64 %iter.sroa.0.041, 1
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1364)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1367)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1369), !noalias !1372
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1375), !noalias !1372
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1377), !noalias !1372
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1380), !noalias !1372
  %_4.i.i.i = load float, ptr %right.sroa.0.039, align 4, !alias.scope !1382, !noalias !1383, !noundef !32
  %_5.i.i.i = load float, ptr %left.sroa.0.040, align 4, !alias.scope !1384, !noalias !1385, !noundef !32
  %.not.i.i.i = fcmp uno float %_4.i.i.i, %_5.i.i.i
  br i1 %.not.i.i.i, label %bb2.i.i.i, label %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf5b8f37855ac0c3dE.exit", !prof !35

bb2.i.i.i:                                        ; preds = %bb15
; call core::option::unwrap_failed
  tail call void @_ZN4core6option13unwrap_failed17hef2534b77b89c04fE(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_b0e33ba48ef5fa15e44a55a18226b5ac) #24, !noalias !1386
  unreachable

"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf5b8f37855ac0c3dE.exit": ; preds = %bb15
  %_0.i = fcmp olt float %_4.i.i.i, %_5.i.i.i
  %..i17 = select i1 %_0.i, ptr %right.sroa.0.039, ptr %left.sroa.0.040
  %7 = load i32, ptr %..i17, align 4, !noalias !1387
  store i32 %7, ptr %dst.sroa.0.042, align 4, !noalias !1387
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1389)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1392)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1394), !noalias !1397
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1400), !noalias !1397
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1402), !noalias !1397
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1405), !noalias !1397
  %_4.i.i.i19 = load float, ptr %right_rev.sroa.0.037, align 4, !alias.scope !1407, !noalias !1408, !noundef !32
  %_5.i.i.i20 = load float, ptr %left_rev.sroa.0.038, align 4, !alias.scope !1409, !noalias !1410, !noundef !32
  %.not.i.i.i21 = fcmp uno float %_4.i.i.i19, %_5.i.i.i20
  br i1 %.not.i.i.i21, label %bb2.i.i.i23, label %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf5b8f37855ac0c3dE.exit24", !prof !35

bb2.i.i.i23:                                      ; preds = %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf5b8f37855ac0c3dE.exit"
; call core::option::unwrap_failed
  tail call void @_ZN4core6option13unwrap_failed17hef2534b77b89c04fE(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_b0e33ba48ef5fa15e44a55a18226b5ac) #24, !noalias !1411
  unreachable

"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf5b8f37855ac0c3dE.exit24": ; preds = %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf5b8f37855ac0c3dE.exit"
  %_16.i = getelementptr inbounds nuw i8, ptr %dst.sroa.0.042, i64 4
  %is_l.i18 = xor i1 %_0.i, true
  %count2.i = zext i1 %is_l.i18 to i64
  %_14.i = getelementptr inbounds nuw float, ptr %left.sroa.0.040, i64 %count2.i
  %count.i = zext i1 %_0.i to i64
  %_12.i = getelementptr inbounds nuw float, ptr %right.sroa.0.039, i64 %count.i
  %_0.i22 = fcmp olt float %_4.i.i.i19, %_5.i.i.i20
  %..i = select i1 %_0.i22, ptr %left_rev.sroa.0.038, ptr %right_rev.sroa.0.037
  %is_l.i = xor i1 %_0.i22, true
  %8 = load i32, ptr %..i, align 4, !noalias !1412
  store i32 %8, ptr %dst_rev.sroa.0.036, align 4, !noalias !1412
  %count.neg.i = sext i1 %is_l.i to i64
  %9 = getelementptr float, ptr %right_rev.sroa.0.037, i64 %count.neg.i
  %count3.neg.i = sext i1 %_0.i22 to i64
  %10 = getelementptr float, ptr %left_rev.sroa.0.038, i64 %count3.neg.i
  %11 = getelementptr inbounds i8, ptr %dst_rev.sroa.0.036, i64 -4
  %exitcond.not = icmp eq i64 %_39, %len_div_215
  br i1 %exitcond.not, label %bb16, label %bb15

bb5:                                              ; preds = %bb16
  %left_nonempty = icmp ult ptr %_14.i, %5
  %left.sroa.0.0.right.sroa.0.0 = select i1 %left_nonempty, ptr %_14.i, ptr %_12.i
  %12 = load i32, ptr %left.sroa.0.0.right.sroa.0.0, align 4
  store i32 %12, ptr %_16.i, align 4
  %count2 = zext i1 %left_nonempty to i64
  %_26 = getelementptr inbounds nuw float, ptr %_14.i, i64 %count2
  %_30 = xor i1 %left_nonempty, true
  %count3 = zext i1 %_30 to i64
  %_28 = getelementptr inbounds nuw float, ptr %_12.i, i64 %count3
  br label %bb9

bb9:                                              ; preds = %bb16, %bb5
  %right.sroa.0.1 = phi ptr [ %_12.i, %bb16 ], [ %_28, %bb5 ]
  %left.sroa.0.1 = phi ptr [ %_14.i, %bb16 ], [ %_26, %bb5 ]
  %_31 = icmp ne ptr %left.sroa.0.1, %5
  %_32 = icmp ne ptr %right.sroa.0.1, %6
  %or.cond = select i1 %_31, i1 true, i1 %_32
  br i1 %or.cond, label %bb13, label %bb14, !prof !703

bb14:                                             ; preds = %bb9
  ret void

bb13:                                             ; preds = %bb9
; call core::slice::sort::shared::smallsort::panic_on_ord_violation
  tail call void @_ZN4core5slice4sort6shared9smallsort22panic_on_ord_violation17hc77a22a2d50782cdE() #24
  unreachable
}

; core::slice::sort::shared::smallsort::insertion_sort_shift_left
; Function Attrs: nonlazybind uwtable
define void @_ZN4core5slice4sort6shared9smallsort25insertion_sort_shift_left17h34510fd470fc988eE(ptr noalias noundef nonnull align 4 captures(address) %v.0, i64 noundef range(i64 0, 2305843009213693952) %v.1, i64 noundef %offset, ptr noalias readnone align 8 captures(none) %is_less) unnamed_addr #1 personality ptr @rust_eh_personality {
start:
  %0 = add i64 %offset, -1
  %or.cond.not = icmp ult i64 %0, %v.1
  br i1 %or.cond.not, label %bb3, label %bb2

bb2:                                              ; preds = %start
  tail call void @llvm.trap()
  unreachable

bb3:                                              ; preds = %start
  %v_end = getelementptr inbounds nuw float, ptr %v.0, i64 %v.1
  %_11.not3 = icmp samesign eq i64 %offset, %v.1
  br i1 %_11.not3, label %bb7, label %bb5.preheader

bb5.preheader:                                    ; preds = %bb3
  %1 = getelementptr inbounds nuw float, ptr %v.0, i64 %offset
  br label %bb5

bb7:                                              ; preds = %_ZN4core5slice4sort6shared9smallsort11insert_tail17ha468f4743064a81cE.exit, %bb3
  ret void

bb5:                                              ; preds = %bb5.preheader, %_ZN4core5slice4sort6shared9smallsort11insert_tail17ha468f4743064a81cE.exit
  %tail.sroa.0.04 = phi ptr [ %_15, %_ZN4core5slice4sort6shared9smallsort11insert_tail17ha468f4743064a81cE.exit ], [ %1, %bb5.preheader ]
  %2 = getelementptr inbounds i8, ptr %tail.sroa.0.04, i64 -4
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1414)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1417)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1419)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1422)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1424)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1427)
  %_4.i.i.i.i = load float, ptr %tail.sroa.0.04, align 4, !alias.scope !1429, !noalias !1430, !noundef !32
  %_5.i.i.i.i = load float, ptr %2, align 4, !alias.scope !1430, !noalias !1429, !noundef !32
  %.not.i.i.i.i = fcmp uno float %_4.i.i.i.i, %_5.i.i.i.i
  br i1 %.not.i.i.i.i, label %bb2.i.i.i.i, label %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfaa75802b1959b0aE.exit.i", !prof !35

bb2.i.i.i.i:                                      ; preds = %bb5
; call core::option::unwrap_failed
  tail call void @_ZN4core6option13unwrap_failed17hef2534b77b89c04fE(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_4a4e7fec44b84c1472b04d0c86f3e1b7) #24, !noalias !1431
  unreachable

"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfaa75802b1959b0aE.exit.i": ; preds = %bb5
  %_0.i.i = fcmp olt float %_4.i.i.i.i, %_5.i.i.i.i
  br i1 %_0.i.i, label %bb4.i, label %_ZN4core5slice4sort6shared9smallsort11insert_tail17ha468f4743064a81cE.exit

bb4.i:                                            ; preds = %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfaa75802b1959b0aE.exit.i", %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfaa75802b1959b0aE.exit6.i"
  %gap_guard.sroa.5.0.i = phi ptr [ %sift.sroa.0.0.i, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfaa75802b1959b0aE.exit6.i" ], [ %tail.sroa.0.04, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfaa75802b1959b0aE.exit.i" ]
  %sift.sroa.0.0.i = phi ptr [ %4, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfaa75802b1959b0aE.exit6.i" ], [ %2, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfaa75802b1959b0aE.exit.i" ]
  %3 = load i32, ptr %sift.sroa.0.0.i, align 4
  store i32 %3, ptr %gap_guard.sroa.5.0.i, align 4
  %_18.i = icmp eq ptr %sift.sroa.0.0.i, %v.0
  br i1 %_18.i, label %bb10.i, label %bb6.i

bb6.i:                                            ; preds = %bb4.i
  %4 = getelementptr inbounds i8, ptr %sift.sroa.0.0.i, i64 -4
  %_5.i.i.i2.i = load float, ptr %4, align 4, !alias.scope !1432, !noalias !1439, !noundef !32
  %.not.i.i.i3.i = fcmp uno float %_4.i.i.i.i, %_5.i.i.i2.i
  br i1 %.not.i.i.i3.i, label %bb2.i.i.i5.i, label %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfaa75802b1959b0aE.exit6.i", !prof !35

bb2.i.i.i5.i:                                     ; preds = %bb6.i
; invoke core::option::unwrap_failed
  invoke void @_ZN4core6option13unwrap_failed17hef2534b77b89c04fE(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_4a4e7fec44b84c1472b04d0c86f3e1b7) #24
          to label %.noexc.i unwind label %cleanup.i

.noexc.i:                                         ; preds = %bb2.i.i.i5.i
  unreachable

"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfaa75802b1959b0aE.exit6.i": ; preds = %bb6.i
  %_0.i4.i = fcmp olt float %_4.i.i.i.i, %_5.i.i.i2.i
  br i1 %_0.i4.i, label %bb4.i, label %bb10.i

cleanup.i:                                        ; preds = %bb2.i.i.i5.i
  %5 = landingpad { ptr, i32 }
          cleanup
  store float %_4.i.i.i.i, ptr %sift.sroa.0.0.i, align 4, !noalias !1443
  resume { ptr, i32 } %5

bb10.i:                                           ; preds = %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfaa75802b1959b0aE.exit6.i", %bb4.i
  store float %_4.i.i.i.i, ptr %sift.sroa.0.0.i, align 4, !noalias !1448
  br label %_ZN4core5slice4sort6shared9smallsort11insert_tail17ha468f4743064a81cE.exit

_ZN4core5slice4sort6shared9smallsort11insert_tail17ha468f4743064a81cE.exit: ; preds = %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfaa75802b1959b0aE.exit.i", %bb10.i
  %_15 = getelementptr inbounds nuw i8, ptr %tail.sroa.0.04, i64 4
  %_11.not = icmp eq ptr %_15, %v_end
  br i1 %_11.not, label %bb7, label %bb5
}

; core::slice::sort::shared::smallsort::insertion_sort_shift_left
; Function Attrs: nounwind nonlazybind memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable
define void @_ZN4core5slice4sort6shared9smallsort25insertion_sort_shift_left17h73d95d3ba583ee1dE(ptr noalias noundef nonnull align 4 captures(address) %v.0, i64 noundef range(i64 0, 2305843009213693952) %v.1, i64 noundef %offset, ptr noalias readnone align 8 captures(none) %is_less) unnamed_addr #4 personality ptr @rust_eh_personality {
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

bb7:                                              ; preds = %_ZN4core5slice4sort6shared9smallsort11insert_tail17h95ccd783a40617a3E.exit, %bb3
  ret void

bb5:                                              ; preds = %bb5.preheader, %_ZN4core5slice4sort6shared9smallsort11insert_tail17h95ccd783a40617a3E.exit
  %tail.sroa.0.02 = phi ptr [ %_15, %_ZN4core5slice4sort6shared9smallsort11insert_tail17h95ccd783a40617a3E.exit ], [ %1, %bb5.preheader ]
  %2 = getelementptr inbounds i8, ptr %tail.sroa.0.02, i64 -4
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1453)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1456)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1458)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1461)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1463)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1466)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1468)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1471)
  %_3.i.i.i.i.i = load i32, ptr %tail.sroa.0.02, align 4, !alias.scope !1473, !noalias !1474, !noundef !32
  %_4.i.i.i.i.i = load i32, ptr %2, align 4, !alias.scope !1474, !noalias !1473, !noundef !32
  %_0.i.i = icmp slt i32 %_3.i.i.i.i.i, %_4.i.i.i.i.i
  br i1 %_0.i.i, label %bb4.i, label %_ZN4core5slice4sort6shared9smallsort11insert_tail17h95ccd783a40617a3E.exit

bb4.i:                                            ; preds = %bb5, %bb6.i
  %gap_guard.sroa.5.0.i = phi ptr [ %sift.sroa.0.0.i, %bb6.i ], [ %tail.sroa.0.02, %bb5 ]
  %sift.sroa.0.0.i = phi ptr [ %4, %bb6.i ], [ %2, %bb5 ]
  %3 = load i32, ptr %sift.sroa.0.0.i, align 4
  store i32 %3, ptr %gap_guard.sroa.5.0.i, align 4
  %_18.i = icmp eq ptr %sift.sroa.0.0.i, %v.0
  br i1 %_18.i, label %bb10.i, label %bb6.i

bb6.i:                                            ; preds = %bb4.i
  %4 = getelementptr inbounds i8, ptr %sift.sroa.0.0.i, i64 -4
  %_4.i.i.i.i2.i = load i32, ptr %4, align 4, !alias.scope !1475, !noalias !1484, !noundef !32
  %_0.i3.i = icmp slt i32 %_3.i.i.i.i.i, %_4.i.i.i.i2.i
  br i1 %_0.i3.i, label %bb4.i, label %bb10.i

bb10.i:                                           ; preds = %bb6.i, %bb4.i
  store i32 %_3.i.i.i.i.i, ptr %sift.sroa.0.0.i, align 4, !noalias !1489
  br label %_ZN4core5slice4sort6shared9smallsort11insert_tail17h95ccd783a40617a3E.exit

_ZN4core5slice4sort6shared9smallsort11insert_tail17h95ccd783a40617a3E.exit: ; preds = %bb5, %bb10.i
  %_15 = getelementptr inbounds nuw i8, ptr %tail.sroa.0.02, i64 4
  %_11.not = icmp eq ptr %_15, %v_end
  br i1 %_11.not, label %bb7, label %bb5
}

; core::slice::sort::shared::smallsort::insertion_sort_shift_left
; Function Attrs: nonlazybind uwtable
define void @_ZN4core5slice4sort6shared9smallsort25insertion_sort_shift_left17h8c39bce6e1229ee3E(ptr noalias noundef nonnull align 4 captures(address) %v.0, i64 noundef range(i64 0, 2305843009213693952) %v.1, i64 noundef %offset, ptr noalias readnone align 8 captures(none) %is_less) unnamed_addr #1 personality ptr @rust_eh_personality {
start:
  %0 = add i64 %offset, -1
  %or.cond.not = icmp ult i64 %0, %v.1
  br i1 %or.cond.not, label %bb3, label %bb2

bb2:                                              ; preds = %start
  tail call void @llvm.trap()
  unreachable

bb3:                                              ; preds = %start
  %v_end = getelementptr inbounds nuw float, ptr %v.0, i64 %v.1
  %_11.not3 = icmp samesign eq i64 %offset, %v.1
  br i1 %_11.not3, label %bb7, label %bb5.preheader

bb5.preheader:                                    ; preds = %bb3
  %1 = getelementptr inbounds nuw float, ptr %v.0, i64 %offset
  br label %bb5

bb7:                                              ; preds = %_ZN4core5slice4sort6shared9smallsort11insert_tail17he511fa7eb43a47edE.exit, %bb3
  ret void

bb5:                                              ; preds = %bb5.preheader, %_ZN4core5slice4sort6shared9smallsort11insert_tail17he511fa7eb43a47edE.exit
  %tail.sroa.0.04 = phi ptr [ %_15, %_ZN4core5slice4sort6shared9smallsort11insert_tail17he511fa7eb43a47edE.exit ], [ %1, %bb5.preheader ]
  %2 = getelementptr inbounds i8, ptr %tail.sroa.0.04, i64 -4
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1494)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1497)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1499)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1502)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1504)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1507)
  %_4.i.i.i.i = load float, ptr %tail.sroa.0.04, align 4, !alias.scope !1509, !noalias !1510, !noundef !32
  %_5.i.i.i.i = load float, ptr %2, align 4, !alias.scope !1510, !noalias !1509, !noundef !32
  %.not.i.i.i.i = fcmp uno float %_4.i.i.i.i, %_5.i.i.i.i
  br i1 %.not.i.i.i.i, label %bb2.i.i.i.i, label %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf5b8f37855ac0c3dE.exit.i", !prof !35

bb2.i.i.i.i:                                      ; preds = %bb5
; call core::option::unwrap_failed
  tail call void @_ZN4core6option13unwrap_failed17hef2534b77b89c04fE(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_b0e33ba48ef5fa15e44a55a18226b5ac) #24, !noalias !1511
  unreachable

"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf5b8f37855ac0c3dE.exit.i": ; preds = %bb5
  %_0.i.i = fcmp olt float %_4.i.i.i.i, %_5.i.i.i.i
  br i1 %_0.i.i, label %bb4.i, label %_ZN4core5slice4sort6shared9smallsort11insert_tail17he511fa7eb43a47edE.exit

bb4.i:                                            ; preds = %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf5b8f37855ac0c3dE.exit.i", %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf5b8f37855ac0c3dE.exit6.i"
  %gap_guard.sroa.5.0.i = phi ptr [ %sift.sroa.0.0.i, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf5b8f37855ac0c3dE.exit6.i" ], [ %tail.sroa.0.04, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf5b8f37855ac0c3dE.exit.i" ]
  %sift.sroa.0.0.i = phi ptr [ %4, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf5b8f37855ac0c3dE.exit6.i" ], [ %2, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf5b8f37855ac0c3dE.exit.i" ]
  %3 = load i32, ptr %sift.sroa.0.0.i, align 4
  store i32 %3, ptr %gap_guard.sroa.5.0.i, align 4
  %_18.i = icmp eq ptr %sift.sroa.0.0.i, %v.0
  br i1 %_18.i, label %bb10.i, label %bb6.i

bb6.i:                                            ; preds = %bb4.i
  %4 = getelementptr inbounds i8, ptr %sift.sroa.0.0.i, i64 -4
  %_5.i.i.i2.i = load float, ptr %4, align 4, !alias.scope !1512, !noalias !1519, !noundef !32
  %.not.i.i.i3.i = fcmp uno float %_4.i.i.i.i, %_5.i.i.i2.i
  br i1 %.not.i.i.i3.i, label %bb2.i.i.i5.i, label %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf5b8f37855ac0c3dE.exit6.i", !prof !35

bb2.i.i.i5.i:                                     ; preds = %bb6.i
; invoke core::option::unwrap_failed
  invoke void @_ZN4core6option13unwrap_failed17hef2534b77b89c04fE(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_b0e33ba48ef5fa15e44a55a18226b5ac) #24
          to label %.noexc.i unwind label %cleanup.i

.noexc.i:                                         ; preds = %bb2.i.i.i5.i
  unreachable

"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf5b8f37855ac0c3dE.exit6.i": ; preds = %bb6.i
  %_0.i4.i = fcmp olt float %_4.i.i.i.i, %_5.i.i.i2.i
  br i1 %_0.i4.i, label %bb4.i, label %bb10.i

cleanup.i:                                        ; preds = %bb2.i.i.i5.i
  %5 = landingpad { ptr, i32 }
          cleanup
  store float %_4.i.i.i.i, ptr %sift.sroa.0.0.i, align 4, !noalias !1523
  resume { ptr, i32 } %5

bb10.i:                                           ; preds = %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf5b8f37855ac0c3dE.exit6.i", %bb4.i
  store float %_4.i.i.i.i, ptr %sift.sroa.0.0.i, align 4, !noalias !1528
  br label %_ZN4core5slice4sort6shared9smallsort11insert_tail17he511fa7eb43a47edE.exit

_ZN4core5slice4sort6shared9smallsort11insert_tail17he511fa7eb43a47edE.exit: ; preds = %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf5b8f37855ac0c3dE.exit.i", %bb10.i
  %_15 = getelementptr inbounds nuw i8, ptr %tail.sroa.0.04, i64 4
  %_11.not = icmp eq ptr %_15, %v_end
  br i1 %_11.not, label %bb7, label %bb5
}

; core::slice::sort::shared::smallsort::small_sort_general_with_scratch
; Function Attrs: nonlazybind uwtable
define void @_ZN4core5slice4sort6shared9smallsort31small_sort_general_with_scratch17h1c5ee7389c23e2efE(ptr noalias noundef nonnull align 4 captures(none) %v.0, i64 noundef range(i64 0, 2305843009213693952) %v.1, ptr noalias noundef nonnull align 4 captures(address) %scratch.0, i64 noundef range(i64 0, 2305843009213693952) %scratch.1, ptr noalias readnone align 8 captures(none) %is_less) unnamed_addr #1 personality ptr @rust_eh_personality {
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
  tail call void @_ZN4core5slice4sort6shared9smallsort12sort8_stable17had7ded36d12690dcE(ptr noundef nonnull %v.0, ptr noundef nonnull %scratch.0, ptr noundef nonnull %_16, ptr noalias align 8 poison)
  %_18 = getelementptr inbounds nuw i32, ptr %v.0, i64 %len_div_211
  %_19 = getelementptr inbounds nuw i32, ptr %scratch.0, i64 %len_div_211
  %_20 = getelementptr inbounds nuw i8, ptr %_16, i64 32
; call core::slice::sort::shared::smallsort::sort8_stable
  tail call void @_ZN4core5slice4sort6shared9smallsort12sort8_stable17had7ded36d12690dcE(ptr noundef nonnull %_18, ptr noundef nonnull %_19, ptr noundef nonnull %_20, ptr noalias align 8 poison)
  br label %bb15

bb10:                                             ; preds = %bb9
  %_7.i = getelementptr inbounds nuw i8, ptr %v.0, i64 4
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1533)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1536)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1538)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1541)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1543)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1546)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1548)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1551)
  %_3.i.i.i.i.i = load i32, ptr %_7.i, align 4, !alias.scope !1553, !noalias !1554, !noundef !32
  %_4.i.i.i.i.i = load i32, ptr %v.0, align 4, !alias.scope !1554, !noalias !1553, !noundef !32
  %_0.i.i = icmp slt i32 %_3.i.i.i.i.i, %_4.i.i.i.i.i
  %_12.i = getelementptr inbounds nuw i8, ptr %v.0, i64 12
  %_14.i = getelementptr inbounds nuw i8, ptr %v.0, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1555)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1558)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1560)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1563)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1565)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1568)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1570)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1573)
  %_3.i.i.i.i7.i = load i32, ptr %_12.i, align 4, !alias.scope !1575, !noalias !1576, !noundef !32
  %_4.i.i.i.i8.i = load i32, ptr %_14.i, align 4, !alias.scope !1576, !noalias !1575, !noundef !32
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1577)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1580)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1582)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1585)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1587)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1590)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1592)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1595)
  %_3.i.i.i.i10.i = load i32, ptr %c.i, align 4, !alias.scope !1597, !noalias !1598, !noundef !32
  %_4.i.i.i.i11.i = load i32, ptr %a.i, align 4, !alias.scope !1598, !noalias !1597, !noundef !32
  %_0.i12.i = icmp slt i32 %_3.i.i.i.i10.i, %_4.i.i.i.i11.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1599)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1602)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1604)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1607)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1609)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1612)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1614)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1617)
  %_3.i.i.i.i13.i = load i32, ptr %d.i, align 4, !alias.scope !1619, !noalias !1620, !noundef !32
  %_4.i.i.i.i14.i = load i32, ptr %b.i, align 4, !alias.scope !1620, !noalias !1619, !noundef !32
  %_0.i15.i = icmp slt i32 %_3.i.i.i.i13.i, %_4.i.i.i.i14.i
  %0 = select i1 %_0.i12.i, ptr %c.i, ptr %a.i, !unpredictable !32
  %1 = select i1 %_0.i15.i, ptr %c.i, ptr %b.i, !unpredictable !32
  %2 = select i1 %_0.i12.i, ptr %a.i, ptr %1, !unpredictable !32
  %3 = select i1 %_0.i12.i, ptr %b.i, ptr %c.i, !unpredictable !32
  %4 = select i1 %_0.i15.i, ptr %d.i, ptr %3, !unpredictable !32
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1621)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1624)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1626)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1629)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1631)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1634)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1636)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1639)
  %_3.i.i.i.i16.i = load i32, ptr %4, align 4, !alias.scope !1641, !noalias !1642, !noundef !32
  %_4.i.i.i.i17.i = load i32, ptr %2, align 4, !alias.scope !1642, !noalias !1641, !noundef !32
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1643)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1646)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1648)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1651)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1653)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1656)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1658)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1661)
  %_3.i.i.i.i.i14 = load i32, ptr %_7.i13, align 4, !alias.scope !1663, !noalias !1664, !noundef !32
  %_4.i.i.i.i.i15 = load i32, ptr %_27, align 4, !alias.scope !1664, !noalias !1663, !noundef !32
  %_0.i.i16 = icmp slt i32 %_3.i.i.i.i.i14, %_4.i.i.i.i.i15
  %_12.i17 = getelementptr inbounds nuw i8, ptr %_27, i64 12
  %_14.i18 = getelementptr inbounds nuw i8, ptr %_27, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1665)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1668)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1670)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1673)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1675)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1678)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1680)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1683)
  %_3.i.i.i.i7.i19 = load i32, ptr %_12.i17, align 4, !alias.scope !1685, !noalias !1686, !noundef !32
  %_4.i.i.i.i8.i20 = load i32, ptr %_14.i18, align 4, !alias.scope !1686, !noalias !1685, !noundef !32
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1687)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1690)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1692)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1695)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1697)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1700)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1702)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1705)
  %_3.i.i.i.i10.i31 = load i32, ptr %c.i28, align 4, !alias.scope !1707, !noalias !1708, !noundef !32
  %_4.i.i.i.i11.i32 = load i32, ptr %a.i23, align 4, !alias.scope !1708, !noalias !1707, !noundef !32
  %_0.i12.i33 = icmp slt i32 %_3.i.i.i.i10.i31, %_4.i.i.i.i11.i32
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1709)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1712)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1714)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1717)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1719)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1722)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1724)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1727)
  %_3.i.i.i.i13.i34 = load i32, ptr %d.i30, align 4, !alias.scope !1729, !noalias !1730, !noundef !32
  %_4.i.i.i.i14.i35 = load i32, ptr %b.i26, align 4, !alias.scope !1730, !noalias !1729, !noundef !32
  %_0.i15.i36 = icmp slt i32 %_3.i.i.i.i13.i34, %_4.i.i.i.i14.i35
  %10 = select i1 %_0.i12.i33, ptr %c.i28, ptr %a.i23, !unpredictable !32
  %11 = select i1 %_0.i15.i36, ptr %c.i28, ptr %b.i26, !unpredictable !32
  %12 = select i1 %_0.i12.i33, ptr %a.i23, ptr %11, !unpredictable !32
  %13 = select i1 %_0.i12.i33, ptr %b.i26, ptr %c.i28, !unpredictable !32
  %14 = select i1 %_0.i15.i36, ptr %d.i30, ptr %13, !unpredictable !32
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1731)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1734)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1736)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1739)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1741)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1744)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1746)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1749)
  %_3.i.i.i.i16.i37 = load i32, ptr %14, align 4, !alias.scope !1751, !noalias !1752, !noundef !32
  %_4.i.i.i.i17.i38 = load i32, ptr %12, align 4, !alias.scope !1752, !noalias !1751, !noundef !32
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
  br i1 %_5.not.i.not, label %"_ZN4core5array4iter10iter_inner78PolymorphicIter$LT$$u5b$core..mem..maybe_uninit..MaybeUninit$LT$T$GT$$u5d$$GT$4next17h596baefaffcedcbfE.exit", label %bb1.i

bb1.i:                                            ; preds = %bb16
  %_11.i = add nuw nsw i64 %24, 1
  store i64 %_11.i, ptr %iter, align 8, !alias.scope !1753
  %_20.i = icmp ult i64 %24, 2
  tail call void @llvm.assume(i1 %_20.i)
  %self3.i = getelementptr inbounds nuw i64, ptr %_37.sroa.5.0.iter.sroa_idx, i64 %24
  %_15.i = load i64, ptr %self3.i, align 8, !alias.scope !1753, !noundef !32
  br label %"_ZN4core5array4iter10iter_inner78PolymorphicIter$LT$$u5b$core..mem..maybe_uninit..MaybeUninit$LT$T$GT$$u5d$$GT$4next17h596baefaffcedcbfE.exit"

"_ZN4core5array4iter10iter_inner78PolymorphicIter$LT$$u5b$core..mem..maybe_uninit..MaybeUninit$LT$T$GT$$u5d$$GT$4next17h596baefaffcedcbfE.exit": ; preds = %bb16, %bb1.i
  %25 = phi i64 [ %_11.i, %bb1.i ], [ %24, %bb16 ]
  %_0.sroa.3.0.i = phi i64 [ %_15.i, %bb1.i ], [ undef, %bb16 ]
  br i1 %_5.not.i.not, label %bb19, label %bb18

bb18:                                             ; preds = %"_ZN4core5array4iter10iter_inner78PolymorphicIter$LT$$u5b$core..mem..maybe_uninit..MaybeUninit$LT$T$GT$$u5d$$GT$4next17h596baefaffcedcbfE.exit"
  %src5 = getelementptr inbounds nuw i32, ptr %v.0, i64 %_0.sroa.3.0.i
  %dst6 = getelementptr inbounds nuw i32, ptr %scratch.0, i64 %_0.sroa.3.0.i
  %_47 = icmp eq i64 %_0.sroa.3.0.i, 0
  %desired_len.sroa.0.0 = select i1 %_47, i64 %len_div_211, i64 %23
  %_8059 = icmp ult i64 %presorted_len.sroa.0.0, %desired_len.sroa.0.0
  br i1 %_8059, label %bb24, label %bb16.backedge

bb16.backedge:                                    ; preds = %_ZN4core5slice4sort6shared9smallsort11insert_tail17h95ccd783a40617a3E.exit, %bb18
  br label %bb16

bb19:                                             ; preds = %"_ZN4core5array4iter10iter_inner78PolymorphicIter$LT$$u5b$core..mem..maybe_uninit..MaybeUninit$LT$T$GT$$u5d$$GT$4next17h596baefaffcedcbfE.exit"
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %iter)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1756)
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1759)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1762)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1764), !noalias !1767
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1770), !noalias !1767
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1772), !noalias !1767
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1775), !noalias !1767
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1777), !noalias !1767
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1780), !noalias !1767
  %_3.i.i.i.i.i49 = load i32, ptr %right.sroa.0.026.i, align 4, !alias.scope !1782, !noalias !1783, !noundef !32
  %_4.i.i.i.i.i50 = load i32, ptr %left.sroa.0.027.i, align 4, !alias.scope !1784, !noalias !1785, !noundef !32
  %_0.i.i51 = icmp slt i32 %_3.i.i.i.i.i49, %_4.i.i.i.i.i50
  %is_l.i18.i = xor i1 %_0.i.i51, true
  %32 = tail call i32 @llvm.smin.i32(i32 %_3.i.i.i.i.i49, i32 %_4.i.i.i.i.i50)
  store i32 %32, ptr %dst.sroa.0.029.i, align 4, !noalias !1786
  %count.i.i = zext i1 %_0.i.i51 to i64
  %_12.i.i = getelementptr inbounds nuw i32, ptr %right.sroa.0.026.i, i64 %count.i.i
  %count2.i.i = zext i1 %is_l.i18.i to i64
  %_14.i.i = getelementptr inbounds nuw i32, ptr %left.sroa.0.027.i, i64 %count2.i.i
  %_16.i.i = getelementptr inbounds nuw i8, ptr %dst.sroa.0.029.i, i64 4
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1788)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1791)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1793), !noalias !1796
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1799), !noalias !1796
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1801), !noalias !1796
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1804), !noalias !1796
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1806), !noalias !1796
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1809), !noalias !1796
  %_3.i.i.i.i19.i = load i32, ptr %right_rev.sroa.0.024.i, align 4, !alias.scope !1811, !noalias !1812, !noundef !32
  %_4.i.i.i.i20.i = load i32, ptr %left_rev.sroa.0.025.i, align 4, !alias.scope !1813, !noalias !1814, !noundef !32
  %_0.i21.i = icmp slt i32 %_3.i.i.i.i19.i, %_4.i.i.i.i20.i
  %is_l.i.i = xor i1 %_0.i21.i, true
  %33 = tail call i32 @llvm.smax.i32(i32 %_3.i.i.i.i19.i, i32 %_4.i.i.i.i20.i)
  store i32 %33, ptr %dst_rev.sroa.0.023.i, align 4, !noalias !1815
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
  %37 = load i32, ptr %left.sroa.0.0.right.sroa.0.0.i, align 4, !alias.scope !1756
  store i32 %37, ptr %_16.i.i, align 4, !noalias !1756
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
  br i1 %or.cond.i, label %bb13.i, label %bb29, !prof !703

bb13.i:                                           ; preds = %bb9.i
; invoke core::slice::sort::shared::smallsort::panic_on_ord_violation
  invoke void @_ZN4core5slice4sort6shared9smallsort22panic_on_ord_violation17hc77a22a2d50782cdE() #24
          to label %.noexc unwind label %cleanup2

.noexc:                                           ; preds = %bb13.i
  unreachable

cleanup2:                                         ; preds = %bb13.i
  %38 = landingpad { ptr, i32 }
          cleanup
  %39 = shl nuw nsw i64 %v.1, 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %v.0, ptr nonnull align 4 %scratch.0, i64 %39, i1 false), !noalias !1817
  resume { ptr, i32 } %38

bb29:                                             ; preds = %bb9.i, %start
  ret void

bb24:                                             ; preds = %bb18, %_ZN4core5slice4sort6shared9smallsort11insert_tail17h95ccd783a40617a3E.exit
  %iter1.sroa.0.163 = phi i64 [ %iter1.sroa.0.1, %_ZN4core5slice4sort6shared9smallsort11insert_tail17h95ccd783a40617a3E.exit ], [ %iter1.sroa.0.161, %bb18 ]
  %iter1.sroa.0.062 = phi i64 [ %iter1.sroa.0.163, %_ZN4core5slice4sort6shared9smallsort11insert_tail17h95ccd783a40617a3E.exit ], [ %presorted_len.sroa.0.0, %bb18 ]
  %_55 = getelementptr inbounds nuw i32, ptr %src5, i64 %iter1.sroa.0.062
  %dst7 = getelementptr inbounds nuw i32, ptr %dst6, i64 %iter1.sroa.0.062
  %40 = load i32, ptr %_55, align 4
  store i32 %40, ptr %dst7, align 4
  %41 = getelementptr inbounds i8, ptr %dst7, i64 -4
  %_4.i.i.i.i.i56 = load i32, ptr %41, align 4, !alias.scope !1822, !noalias !1831, !noundef !32
  %_0.i.i57 = icmp slt i32 %40, %_4.i.i.i.i.i56
  br i1 %_0.i.i57, label %bb4.i, label %_ZN4core5slice4sort6shared9smallsort11insert_tail17h95ccd783a40617a3E.exit

bb4.i:                                            ; preds = %bb24, %bb6.i
  %gap_guard.sroa.5.0.i = phi ptr [ %sift.sroa.0.0.i, %bb6.i ], [ %dst7, %bb24 ]
  %sift.sroa.0.0.i = phi ptr [ %43, %bb6.i ], [ %41, %bb24 ]
  %42 = load i32, ptr %sift.sroa.0.0.i, align 4
  store i32 %42, ptr %gap_guard.sroa.5.0.i, align 4
  %_18.i = icmp eq ptr %sift.sroa.0.0.i, %dst6
  br i1 %_18.i, label %bb10.i, label %bb6.i

bb6.i:                                            ; preds = %bb4.i
  %43 = getelementptr inbounds i8, ptr %sift.sroa.0.0.i, i64 -4
  %_4.i.i.i.i2.i = load i32, ptr %43, align 4, !alias.scope !1836, !noalias !1845, !noundef !32
  %_0.i3.i = icmp slt i32 %40, %_4.i.i.i.i2.i
  br i1 %_0.i3.i, label %bb4.i, label %bb10.i

bb10.i:                                           ; preds = %bb6.i, %bb4.i
  store i32 %40, ptr %sift.sroa.0.0.i, align 4, !noalias !1850
  br label %_ZN4core5slice4sort6shared9smallsort11insert_tail17h95ccd783a40617a3E.exit

_ZN4core5slice4sort6shared9smallsort11insert_tail17h95ccd783a40617a3E.exit: ; preds = %bb24, %bb10.i
  %_80 = icmp ult i64 %iter1.sroa.0.163, %desired_len.sroa.0.0
  %_84 = zext i1 %_80 to i64
  %iter1.sroa.0.1 = add nuw i64 %iter1.sroa.0.163, %_84
  br i1 %_80, label %bb24, label %bb16.backedge
}

; core::slice::sort::shared::smallsort::small_sort_general_with_scratch
; Function Attrs: nonlazybind uwtable
define void @_ZN4core5slice4sort6shared9smallsort31small_sort_general_with_scratch17h7c018c816a9da747E(ptr noalias noundef nonnull align 4 captures(none) %v.0, i64 noundef range(i64 0, 2305843009213693952) %v.1, ptr noalias noundef nonnull align 4 captures(address) %scratch.0, i64 noundef range(i64 0, 2305843009213693952) %scratch.1, ptr noalias readnone align 8 captures(none) %is_less) unnamed_addr #1 personality ptr @rust_eh_personality {
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
  %_16 = getelementptr inbounds nuw float, ptr %scratch.0, i64 %v.1
; call core::slice::sort::shared::smallsort::sort8_stable
  tail call void @_ZN4core5slice4sort6shared9smallsort12sort8_stable17h0c524828a1a47f46E(ptr noundef nonnull %v.0, ptr noundef nonnull %scratch.0, ptr noundef nonnull %_16, ptr noalias align 8 poison)
  %_18 = getelementptr inbounds nuw float, ptr %v.0, i64 %len_div_211
  %_19 = getelementptr inbounds nuw float, ptr %scratch.0, i64 %len_div_211
  %_20 = getelementptr inbounds nuw i8, ptr %_16, i64 32
; call core::slice::sort::shared::smallsort::sort8_stable
  tail call void @_ZN4core5slice4sort6shared9smallsort12sort8_stable17h0c524828a1a47f46E(ptr noundef nonnull %_18, ptr noundef nonnull %_19, ptr noundef nonnull %_20, ptr noalias align 8 poison)
  br label %bb15

bb10:                                             ; preds = %bb9
; call core::slice::sort::shared::smallsort::sort4_stable
  tail call void @_ZN4core5slice4sort6shared9smallsort12sort4_stable17h1c3fb6f95c737a92E(ptr noundef nonnull %v.0, ptr noundef nonnull %scratch.0, ptr noalias align 8 poison)
  %_27 = getelementptr inbounds nuw float, ptr %v.0, i64 %len_div_211
  %_28 = getelementptr inbounds nuw float, ptr %scratch.0, i64 %len_div_211
; call core::slice::sort::shared::smallsort::sort4_stable
  tail call void @_ZN4core5slice4sort6shared9smallsort12sort4_stable17h1c3fb6f95c737a92E(ptr noundef nonnull %_27, ptr noundef nonnull %_28, ptr noalias align 8 poison)
  br label %bb15

bb46:                                             ; preds = %bb9
  %0 = load i32, ptr %v.0, align 4
  store i32 %0, ptr %scratch.0, align 4
  %_31 = getelementptr inbounds nuw float, ptr %v.0, i64 %len_div_211
  %1 = getelementptr inbounds nuw float, ptr %scratch.0, i64 %len_div_211
  %2 = load i32, ptr %_31, align 4
  store i32 %2, ptr %1, align 4
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
  %3 = sub nsw i64 %v.1, %len_div_211
  %iter1.sroa.0.117 = add nuw nsw i64 %presorted_len.sroa.0.0, 1
  br label %bb16

bb16:                                             ; preds = %bb16.backedge, %bb15
  %4 = phi i64 [ 0, %bb15 ], [ %5, %bb16.backedge ]
  %_5.not.i.not = icmp eq i64 %4, 2
  br i1 %_5.not.i.not, label %"_ZN4core5array4iter10iter_inner78PolymorphicIter$LT$$u5b$core..mem..maybe_uninit..MaybeUninit$LT$T$GT$$u5d$$GT$4next17h596baefaffcedcbfE.exit", label %bb1.i

bb1.i:                                            ; preds = %bb16
  %_11.i = add nuw nsw i64 %4, 1
  store i64 %_11.i, ptr %iter, align 8, !alias.scope !1855
  %_20.i = icmp ult i64 %4, 2
  tail call void @llvm.assume(i1 %_20.i)
  %self3.i = getelementptr inbounds nuw i64, ptr %_37.sroa.5.0.iter.sroa_idx, i64 %4
  %_15.i = load i64, ptr %self3.i, align 8, !alias.scope !1855, !noundef !32
  br label %"_ZN4core5array4iter10iter_inner78PolymorphicIter$LT$$u5b$core..mem..maybe_uninit..MaybeUninit$LT$T$GT$$u5d$$GT$4next17h596baefaffcedcbfE.exit"

"_ZN4core5array4iter10iter_inner78PolymorphicIter$LT$$u5b$core..mem..maybe_uninit..MaybeUninit$LT$T$GT$$u5d$$GT$4next17h596baefaffcedcbfE.exit": ; preds = %bb16, %bb1.i
  %5 = phi i64 [ %_11.i, %bb1.i ], [ %4, %bb16 ]
  %_0.sroa.3.0.i = phi i64 [ %_15.i, %bb1.i ], [ undef, %bb16 ]
  br i1 %_5.not.i.not, label %bb19, label %bb18

bb18:                                             ; preds = %"_ZN4core5array4iter10iter_inner78PolymorphicIter$LT$$u5b$core..mem..maybe_uninit..MaybeUninit$LT$T$GT$$u5d$$GT$4next17h596baefaffcedcbfE.exit"
  %src5 = getelementptr inbounds nuw float, ptr %v.0, i64 %_0.sroa.3.0.i
  %dst6 = getelementptr inbounds nuw float, ptr %scratch.0, i64 %_0.sroa.3.0.i
  %_47 = icmp eq i64 %_0.sroa.3.0.i, 0
  %desired_len.sroa.0.0 = select i1 %_47, i64 %len_div_211, i64 %3
  %_8015 = icmp ult i64 %presorted_len.sroa.0.0, %desired_len.sroa.0.0
  br i1 %_8015, label %bb24, label %bb16.backedge

bb16.backedge:                                    ; preds = %_ZN4core5slice4sort6shared9smallsort11insert_tail17he511fa7eb43a47edE.exit, %bb18
  br label %bb16

bb19:                                             ; preds = %"_ZN4core5array4iter10iter_inner78PolymorphicIter$LT$$u5b$core..mem..maybe_uninit..MaybeUninit$LT$T$GT$$u5d$$GT$4next17h596baefaffcedcbfE.exit"
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %iter)
; invoke core::slice::sort::shared::smallsort::bidirectional_merge
  invoke void @_ZN4core5slice4sort6shared9smallsort19bidirectional_merge17ha5355d97ee5c682eE(ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) %scratch.0, i64 noundef %v.1, ptr noundef nonnull %v.0, ptr noalias align 8 poison)
          to label %bb29 unwind label %cleanup2

cleanup2:                                         ; preds = %bb19
  %6 = landingpad { ptr, i32 }
          cleanup
  %7 = shl nuw nsw i64 %v.1, 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %v.0, ptr nonnull align 4 %scratch.0, i64 %7, i1 false), !noalias !1858
  br label %bb31

bb29:                                             ; preds = %bb19, %start
  ret void

bb31:                                             ; preds = %cleanup.i, %cleanup2
  %.pn = phi { ptr, i32 } [ %6, %cleanup2 ], [ %12, %cleanup.i ]
  resume { ptr, i32 } %.pn

bb24:                                             ; preds = %bb18, %_ZN4core5slice4sort6shared9smallsort11insert_tail17he511fa7eb43a47edE.exit
  %iter1.sroa.0.119 = phi i64 [ %iter1.sroa.0.1, %_ZN4core5slice4sort6shared9smallsort11insert_tail17he511fa7eb43a47edE.exit ], [ %iter1.sroa.0.117, %bb18 ]
  %iter1.sroa.0.018 = phi i64 [ %iter1.sroa.0.119, %_ZN4core5slice4sort6shared9smallsort11insert_tail17he511fa7eb43a47edE.exit ], [ %presorted_len.sroa.0.0, %bb18 ]
  %_55 = getelementptr inbounds nuw float, ptr %src5, i64 %iter1.sroa.0.018
  %dst7 = getelementptr inbounds nuw float, ptr %dst6, i64 %iter1.sroa.0.018
  %8 = load i32, ptr %_55, align 4
  store i32 %8, ptr %dst7, align 4
  %9 = getelementptr inbounds i8, ptr %dst7, i64 -4
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1863)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1866)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1868)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1871)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1873)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1876)
  %_4.i.i.i.i = load float, ptr %dst7, align 4, !alias.scope !1878, !noalias !1879, !noundef !32
  %_5.i.i.i.i = load float, ptr %9, align 4, !alias.scope !1879, !noalias !1878, !noundef !32
  %.not.i.i.i.i = fcmp uno float %_4.i.i.i.i, %_5.i.i.i.i
  br i1 %.not.i.i.i.i, label %bb2.i.i.i.i, label %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf5b8f37855ac0c3dE.exit.i", !prof !35

bb2.i.i.i.i:                                      ; preds = %bb24
; call core::option::unwrap_failed
  tail call void @_ZN4core6option13unwrap_failed17hef2534b77b89c04fE(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_b0e33ba48ef5fa15e44a55a18226b5ac) #24
  unreachable

"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf5b8f37855ac0c3dE.exit.i": ; preds = %bb24
  %_0.i.i = fcmp olt float %_4.i.i.i.i, %_5.i.i.i.i
  br i1 %_0.i.i, label %bb4.i, label %_ZN4core5slice4sort6shared9smallsort11insert_tail17he511fa7eb43a47edE.exit

bb4.i:                                            ; preds = %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf5b8f37855ac0c3dE.exit.i", %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf5b8f37855ac0c3dE.exit6.i"
  %gap_guard.sroa.5.0.i = phi ptr [ %sift.sroa.0.0.i, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf5b8f37855ac0c3dE.exit6.i" ], [ %dst7, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf5b8f37855ac0c3dE.exit.i" ]
  %sift.sroa.0.0.i = phi ptr [ %11, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf5b8f37855ac0c3dE.exit6.i" ], [ %9, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf5b8f37855ac0c3dE.exit.i" ]
  %10 = load i32, ptr %sift.sroa.0.0.i, align 4
  store i32 %10, ptr %gap_guard.sroa.5.0.i, align 4
  %_18.i = icmp eq ptr %sift.sroa.0.0.i, %dst6
  br i1 %_18.i, label %bb10.i, label %bb6.i

bb6.i:                                            ; preds = %bb4.i
  %11 = getelementptr inbounds i8, ptr %sift.sroa.0.0.i, i64 -4
  %_5.i.i.i2.i = load float, ptr %11, align 4, !alias.scope !1880, !noalias !1887, !noundef !32
  %.not.i.i.i3.i = fcmp uno float %_4.i.i.i.i, %_5.i.i.i2.i
  br i1 %.not.i.i.i3.i, label %bb2.i.i.i5.i, label %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf5b8f37855ac0c3dE.exit6.i", !prof !35

bb2.i.i.i5.i:                                     ; preds = %bb6.i
; invoke core::option::unwrap_failed
  invoke void @_ZN4core6option13unwrap_failed17hef2534b77b89c04fE(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_b0e33ba48ef5fa15e44a55a18226b5ac) #24
          to label %.noexc.i unwind label %cleanup.i

.noexc.i:                                         ; preds = %bb2.i.i.i5.i
  unreachable

"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf5b8f37855ac0c3dE.exit6.i": ; preds = %bb6.i
  %_0.i4.i = fcmp olt float %_4.i.i.i.i, %_5.i.i.i2.i
  br i1 %_0.i4.i, label %bb4.i, label %bb10.i

cleanup.i:                                        ; preds = %bb2.i.i.i5.i
  %12 = landingpad { ptr, i32 }
          cleanup
  store float %_4.i.i.i.i, ptr %sift.sroa.0.0.i, align 4, !noalias !1891
  br label %bb31

bb10.i:                                           ; preds = %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf5b8f37855ac0c3dE.exit6.i", %bb4.i
  store float %_4.i.i.i.i, ptr %sift.sroa.0.0.i, align 4, !noalias !1896
  br label %_ZN4core5slice4sort6shared9smallsort11insert_tail17he511fa7eb43a47edE.exit

_ZN4core5slice4sort6shared9smallsort11insert_tail17he511fa7eb43a47edE.exit: ; preds = %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf5b8f37855ac0c3dE.exit.i", %bb10.i
  %_80 = icmp ult i64 %iter1.sroa.0.119, %desired_len.sroa.0.0
  %_84 = zext i1 %_80 to i64
  %iter1.sroa.0.1 = add nuw i64 %iter1.sroa.0.119, %_84
  br i1 %_80, label %bb24, label %bb16.backedge
}

; core::slice::sort::shared::smallsort::small_sort_general_with_scratch
; Function Attrs: nonlazybind uwtable
define void @_ZN4core5slice4sort6shared9smallsort31small_sort_general_with_scratch17hf5953e2e9b96ff03E(ptr noalias noundef nonnull align 4 captures(none) %v.0, i64 noundef range(i64 0, 2305843009213693952) %v.1, ptr noalias noundef nonnull align 4 captures(address) %scratch.0, i64 noundef range(i64 0, 2305843009213693952) %scratch.1, ptr noalias readnone align 8 captures(none) %is_less) unnamed_addr #1 personality ptr @rust_eh_personality {
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
  %_16 = getelementptr inbounds nuw float, ptr %scratch.0, i64 %v.1
; call core::slice::sort::shared::smallsort::sort8_stable
  tail call void @_ZN4core5slice4sort6shared9smallsort12sort8_stable17h3ae107a90c900d55E(ptr noundef nonnull %v.0, ptr noundef nonnull %scratch.0, ptr noundef nonnull %_16, ptr noalias align 8 poison)
  %_18 = getelementptr inbounds nuw float, ptr %v.0, i64 %len_div_211
  %_19 = getelementptr inbounds nuw float, ptr %scratch.0, i64 %len_div_211
  %_20 = getelementptr inbounds nuw i8, ptr %_16, i64 32
; call core::slice::sort::shared::smallsort::sort8_stable
  tail call void @_ZN4core5slice4sort6shared9smallsort12sort8_stable17h3ae107a90c900d55E(ptr noundef nonnull %_18, ptr noundef nonnull %_19, ptr noundef nonnull %_20, ptr noalias align 8 poison)
  br label %bb15

bb10:                                             ; preds = %bb9
; call core::slice::sort::shared::smallsort::sort4_stable
  tail call void @_ZN4core5slice4sort6shared9smallsort12sort4_stable17h7be21866dd44a082E(ptr noundef nonnull %v.0, ptr noundef nonnull %scratch.0, ptr noalias align 8 poison)
  %_27 = getelementptr inbounds nuw float, ptr %v.0, i64 %len_div_211
  %_28 = getelementptr inbounds nuw float, ptr %scratch.0, i64 %len_div_211
; call core::slice::sort::shared::smallsort::sort4_stable
  tail call void @_ZN4core5slice4sort6shared9smallsort12sort4_stable17h7be21866dd44a082E(ptr noundef nonnull %_27, ptr noundef nonnull %_28, ptr noalias align 8 poison)
  br label %bb15

bb46:                                             ; preds = %bb9
  %0 = load i32, ptr %v.0, align 4
  store i32 %0, ptr %scratch.0, align 4
  %_31 = getelementptr inbounds nuw float, ptr %v.0, i64 %len_div_211
  %1 = getelementptr inbounds nuw float, ptr %scratch.0, i64 %len_div_211
  %2 = load i32, ptr %_31, align 4
  store i32 %2, ptr %1, align 4
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
  %3 = sub nsw i64 %v.1, %len_div_211
  %iter1.sroa.0.117 = add nuw nsw i64 %presorted_len.sroa.0.0, 1
  br label %bb16

bb16:                                             ; preds = %bb16.backedge, %bb15
  %4 = phi i64 [ 0, %bb15 ], [ %5, %bb16.backedge ]
  %_5.not.i.not = icmp eq i64 %4, 2
  br i1 %_5.not.i.not, label %"_ZN4core5array4iter10iter_inner78PolymorphicIter$LT$$u5b$core..mem..maybe_uninit..MaybeUninit$LT$T$GT$$u5d$$GT$4next17h596baefaffcedcbfE.exit", label %bb1.i

bb1.i:                                            ; preds = %bb16
  %_11.i = add nuw nsw i64 %4, 1
  store i64 %_11.i, ptr %iter, align 8, !alias.scope !1901
  %_20.i = icmp ult i64 %4, 2
  tail call void @llvm.assume(i1 %_20.i)
  %self3.i = getelementptr inbounds nuw i64, ptr %_37.sroa.5.0.iter.sroa_idx, i64 %4
  %_15.i = load i64, ptr %self3.i, align 8, !alias.scope !1901, !noundef !32
  br label %"_ZN4core5array4iter10iter_inner78PolymorphicIter$LT$$u5b$core..mem..maybe_uninit..MaybeUninit$LT$T$GT$$u5d$$GT$4next17h596baefaffcedcbfE.exit"

"_ZN4core5array4iter10iter_inner78PolymorphicIter$LT$$u5b$core..mem..maybe_uninit..MaybeUninit$LT$T$GT$$u5d$$GT$4next17h596baefaffcedcbfE.exit": ; preds = %bb16, %bb1.i
  %5 = phi i64 [ %_11.i, %bb1.i ], [ %4, %bb16 ]
  %_0.sroa.3.0.i = phi i64 [ %_15.i, %bb1.i ], [ undef, %bb16 ]
  br i1 %_5.not.i.not, label %bb19, label %bb18

bb18:                                             ; preds = %"_ZN4core5array4iter10iter_inner78PolymorphicIter$LT$$u5b$core..mem..maybe_uninit..MaybeUninit$LT$T$GT$$u5d$$GT$4next17h596baefaffcedcbfE.exit"
  %src5 = getelementptr inbounds nuw float, ptr %v.0, i64 %_0.sroa.3.0.i
  %dst6 = getelementptr inbounds nuw float, ptr %scratch.0, i64 %_0.sroa.3.0.i
  %_47 = icmp eq i64 %_0.sroa.3.0.i, 0
  %desired_len.sroa.0.0 = select i1 %_47, i64 %len_div_211, i64 %3
  %_8015 = icmp ult i64 %presorted_len.sroa.0.0, %desired_len.sroa.0.0
  br i1 %_8015, label %bb24, label %bb16.backedge

bb16.backedge:                                    ; preds = %_ZN4core5slice4sort6shared9smallsort11insert_tail17ha468f4743064a81cE.exit, %bb18
  br label %bb16

bb19:                                             ; preds = %"_ZN4core5array4iter10iter_inner78PolymorphicIter$LT$$u5b$core..mem..maybe_uninit..MaybeUninit$LT$T$GT$$u5d$$GT$4next17h596baefaffcedcbfE.exit"
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %iter)
; invoke core::slice::sort::shared::smallsort::bidirectional_merge
  invoke void @_ZN4core5slice4sort6shared9smallsort19bidirectional_merge17h8fd5afa469382f2aE(ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) %scratch.0, i64 noundef %v.1, ptr noundef nonnull %v.0, ptr noalias align 8 poison)
          to label %bb29 unwind label %cleanup2

cleanup2:                                         ; preds = %bb19
  %6 = landingpad { ptr, i32 }
          cleanup
  %7 = shl nuw nsw i64 %v.1, 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %v.0, ptr nonnull align 4 %scratch.0, i64 %7, i1 false), !noalias !1904
  br label %bb31

bb29:                                             ; preds = %bb19, %start
  ret void

bb31:                                             ; preds = %cleanup.i, %cleanup2
  %.pn = phi { ptr, i32 } [ %6, %cleanup2 ], [ %12, %cleanup.i ]
  resume { ptr, i32 } %.pn

bb24:                                             ; preds = %bb18, %_ZN4core5slice4sort6shared9smallsort11insert_tail17ha468f4743064a81cE.exit
  %iter1.sroa.0.119 = phi i64 [ %iter1.sroa.0.1, %_ZN4core5slice4sort6shared9smallsort11insert_tail17ha468f4743064a81cE.exit ], [ %iter1.sroa.0.117, %bb18 ]
  %iter1.sroa.0.018 = phi i64 [ %iter1.sroa.0.119, %_ZN4core5slice4sort6shared9smallsort11insert_tail17ha468f4743064a81cE.exit ], [ %presorted_len.sroa.0.0, %bb18 ]
  %_55 = getelementptr inbounds nuw float, ptr %src5, i64 %iter1.sroa.0.018
  %dst7 = getelementptr inbounds nuw float, ptr %dst6, i64 %iter1.sroa.0.018
  %8 = load i32, ptr %_55, align 4
  store i32 %8, ptr %dst7, align 4
  %9 = getelementptr inbounds i8, ptr %dst7, i64 -4
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1909)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1912)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1914)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1917)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1919)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1922)
  %_4.i.i.i.i = load float, ptr %dst7, align 4, !alias.scope !1924, !noalias !1925, !noundef !32
  %_5.i.i.i.i = load float, ptr %9, align 4, !alias.scope !1925, !noalias !1924, !noundef !32
  %.not.i.i.i.i = fcmp uno float %_4.i.i.i.i, %_5.i.i.i.i
  br i1 %.not.i.i.i.i, label %bb2.i.i.i.i, label %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfaa75802b1959b0aE.exit.i", !prof !35

bb2.i.i.i.i:                                      ; preds = %bb24
; call core::option::unwrap_failed
  tail call void @_ZN4core6option13unwrap_failed17hef2534b77b89c04fE(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_4a4e7fec44b84c1472b04d0c86f3e1b7) #24
  unreachable

"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfaa75802b1959b0aE.exit.i": ; preds = %bb24
  %_0.i.i = fcmp olt float %_4.i.i.i.i, %_5.i.i.i.i
  br i1 %_0.i.i, label %bb4.i, label %_ZN4core5slice4sort6shared9smallsort11insert_tail17ha468f4743064a81cE.exit

bb4.i:                                            ; preds = %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfaa75802b1959b0aE.exit.i", %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfaa75802b1959b0aE.exit6.i"
  %gap_guard.sroa.5.0.i = phi ptr [ %sift.sroa.0.0.i, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfaa75802b1959b0aE.exit6.i" ], [ %dst7, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfaa75802b1959b0aE.exit.i" ]
  %sift.sroa.0.0.i = phi ptr [ %11, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfaa75802b1959b0aE.exit6.i" ], [ %9, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfaa75802b1959b0aE.exit.i" ]
  %10 = load i32, ptr %sift.sroa.0.0.i, align 4
  store i32 %10, ptr %gap_guard.sroa.5.0.i, align 4
  %_18.i = icmp eq ptr %sift.sroa.0.0.i, %dst6
  br i1 %_18.i, label %bb10.i, label %bb6.i

bb6.i:                                            ; preds = %bb4.i
  %11 = getelementptr inbounds i8, ptr %sift.sroa.0.0.i, i64 -4
  %_5.i.i.i2.i = load float, ptr %11, align 4, !alias.scope !1926, !noalias !1933, !noundef !32
  %.not.i.i.i3.i = fcmp uno float %_4.i.i.i.i, %_5.i.i.i2.i
  br i1 %.not.i.i.i3.i, label %bb2.i.i.i5.i, label %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfaa75802b1959b0aE.exit6.i", !prof !35

bb2.i.i.i5.i:                                     ; preds = %bb6.i
; invoke core::option::unwrap_failed
  invoke void @_ZN4core6option13unwrap_failed17hef2534b77b89c04fE(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_4a4e7fec44b84c1472b04d0c86f3e1b7) #24
          to label %.noexc.i unwind label %cleanup.i

.noexc.i:                                         ; preds = %bb2.i.i.i5.i
  unreachable

"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfaa75802b1959b0aE.exit6.i": ; preds = %bb6.i
  %_0.i4.i = fcmp olt float %_4.i.i.i.i, %_5.i.i.i2.i
  br i1 %_0.i4.i, label %bb4.i, label %bb10.i

cleanup.i:                                        ; preds = %bb2.i.i.i5.i
  %12 = landingpad { ptr, i32 }
          cleanup
  store float %_4.i.i.i.i, ptr %sift.sroa.0.0.i, align 4, !noalias !1937
  br label %bb31

bb10.i:                                           ; preds = %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfaa75802b1959b0aE.exit6.i", %bb4.i
  store float %_4.i.i.i.i, ptr %sift.sroa.0.0.i, align 4, !noalias !1942
  br label %_ZN4core5slice4sort6shared9smallsort11insert_tail17ha468f4743064a81cE.exit

_ZN4core5slice4sort6shared9smallsort11insert_tail17ha468f4743064a81cE.exit: ; preds = %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfaa75802b1959b0aE.exit.i", %bb10.i
  %_80 = icmp ult i64 %iter1.sroa.0.119, %desired_len.sroa.0.0
  %_84 = zext i1 %_80 to i64
  %iter1.sroa.0.1 = add nuw i64 %iter1.sroa.0.119, %_84
  br i1 %_80, label %bb24, label %bb16.backedge
}

; core::slice::sort::stable::driftsort_main
; Function Attrs: noinline nonlazybind uwtable
define void @_ZN4core5slice4sort6stable14driftsort_main17h0c6f5cb65c6269aaE(ptr noalias noundef nonnull align 4 %v.0, i64 noundef range(i64 0, 2305843009213693952) %v.1, ptr noalias noundef align 8 dereferenceable(8) %is_less) unnamed_addr #5 personality ptr @rust_eh_personality {
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
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %_4.i.i), !noalias !1947
; invoke alloc::raw_vec::RawVecInner<A>::try_allocate_in
  invoke void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$15try_allocate_in17had089b3ffc2704ecE"(ptr noalias noundef sret([24 x i8]) align 8 captures(none) dereferenceable(24) %_4.i.i, i64 noundef %_0.sroa.0.0.i7, i1 noundef zeroext false, i64 noundef 4, i64 noundef 4)
          to label %.noexc unwind label %cleanup

.noexc:                                           ; preds = %bb4
  %_5.i.i = load i64, ptr %_4.i.i, align 8, !range !1950, !noalias !1947, !noundef !32
  %0 = trunc nuw i64 %_5.i.i to i1
  %1 = getelementptr inbounds nuw i8, ptr %_4.i.i, i64 8
  %err.0.i.i = load i64, ptr %1, align 8, !range !1951, !noalias !1947, !noundef !32
  %2 = getelementptr inbounds nuw i8, ptr %_4.i.i, i64 16
  br i1 %0, label %bb3.i.i, label %"_ZN5alloc5slice99_$LT$impl$u20$core..slice..sort..stable..BufGuard$LT$T$GT$$u20$for$u20$alloc..vec..Vec$LT$T$GT$$GT$13with_capacity17hecd4caf4aa0eb5ebE.exit", !prof !35

bb3.i.i:                                          ; preds = %.noexc
  %err.1.i.i = load i64, ptr %2, align 8, !noalias !1947
; invoke alloc::raw_vec::handle_error
  invoke void @_ZN5alloc7raw_vec12handle_error17h3a8c375904e593b2E(i64 noundef %err.0.i.i, i64 %err.1.i.i) #25
          to label %.noexc8 unwind label %cleanup

.noexc8:                                          ; preds = %bb3.i.i
  unreachable

"_ZN5alloc5slice99_$LT$impl$u20$core..slice..sort..stable..BufGuard$LT$T$GT$$u20$for$u20$alloc..vec..Vec$LT$T$GT$$GT$13with_capacity17hecd4caf4aa0eb5ebE.exit": ; preds = %.noexc
  %this.1.i.i = load ptr, ptr %2, align 8, !noalias !1947, !nonnull !32, !noundef !32
  %_7.i.i = icmp ule i64 %_0.sroa.0.0.i7, %err.0.i.i
  tail call void @llvm.assume(i1 %_7.i.i)
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %_4.i.i), !noalias !1947
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

bb8:                                              ; preds = %"_ZN5alloc5slice99_$LT$impl$u20$core..slice..sort..stable..BufGuard$LT$T$GT$$u20$for$u20$alloc..vec..Vec$LT$T$GT$$GT$13with_capacity17hecd4caf4aa0eb5ebE.exit", %start
  %_24.sroa.0.1 = phi i8 [ 0, %start ], [ 1, %"_ZN5alloc5slice99_$LT$impl$u20$core..slice..sort..stable..BufGuard$LT$T$GT$$u20$for$u20$alloc..vec..Vec$LT$T$GT$$GT$13with_capacity17hecd4caf4aa0eb5ebE.exit" ]
  %stack_scratch.sroa.4.0 = phi i64 [ 1024, %start ], [ %err.0.i.i, %"_ZN5alloc5slice99_$LT$impl$u20$core..slice..sort..stable..BufGuard$LT$T$GT$$u20$for$u20$alloc..vec..Vec$LT$T$GT$$GT$13with_capacity17hecd4caf4aa0eb5ebE.exit" ]
  %stack_buf.pn = phi ptr [ %stack_buf, %start ], [ %this.1.i.i, %"_ZN5alloc5slice99_$LT$impl$u20$core..slice..sort..stable..BufGuard$LT$T$GT$$u20$for$u20$alloc..vec..Vec$LT$T$GT$$GT$13with_capacity17hecd4caf4aa0eb5ebE.exit" ]
  %eager_sort = icmp samesign ult i64 %v.1, 65
; invoke core::slice::sort::stable::drift::sort
  invoke void @_ZN4core5slice4sort6stable5drift4sort17h077ef0bcbe90118aE(ptr noalias noundef nonnull align 4 %v.0, i64 noundef %v.1, ptr noalias noundef nonnull align 4 %stack_buf.pn, i64 noundef %stack_scratch.sroa.4.0, i1 noundef zeroext %eager_sort, ptr noalias noundef align 8 dereferenceable(8) %is_less)
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
  call void @_ZN4core9panicking16panic_in_cleanup17h5f6bde45d17ae243E() #26
  unreachable
}

; core::slice::sort::stable::driftsort_main
; Function Attrs: noinline nonlazybind uwtable
define void @_ZN4core5slice4sort6stable14driftsort_main17h54296ad700b061c7E(ptr noalias noundef nonnull align 4 %v.0, i64 noundef range(i64 0, 2305843009213693952) %v.1, ptr noalias noundef align 8 dereferenceable(8) %is_less) unnamed_addr #5 personality ptr @rust_eh_personality {
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
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %_4.i.i), !noalias !1952
; invoke alloc::raw_vec::RawVecInner<A>::try_allocate_in
  invoke void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$15try_allocate_in17had089b3ffc2704ecE"(ptr noalias noundef sret([24 x i8]) align 8 captures(none) dereferenceable(24) %_4.i.i, i64 noundef %_0.sroa.0.0.i7, i1 noundef zeroext false, i64 noundef 4, i64 noundef 4)
          to label %.noexc unwind label %cleanup

.noexc:                                           ; preds = %bb4
  %_5.i.i = load i64, ptr %_4.i.i, align 8, !range !1950, !noalias !1952, !noundef !32
  %0 = trunc nuw i64 %_5.i.i to i1
  %1 = getelementptr inbounds nuw i8, ptr %_4.i.i, i64 8
  %err.0.i.i = load i64, ptr %1, align 8, !range !1951, !noalias !1952, !noundef !32
  %2 = getelementptr inbounds nuw i8, ptr %_4.i.i, i64 16
  br i1 %0, label %bb3.i.i, label %"_ZN5alloc5slice99_$LT$impl$u20$core..slice..sort..stable..BufGuard$LT$T$GT$$u20$for$u20$alloc..vec..Vec$LT$T$GT$$GT$13with_capacity17h8984867f4936b1d4E.exit", !prof !35

bb3.i.i:                                          ; preds = %.noexc
  %err.1.i.i = load i64, ptr %2, align 8, !noalias !1952
; invoke alloc::raw_vec::handle_error
  invoke void @_ZN5alloc7raw_vec12handle_error17h3a8c375904e593b2E(i64 noundef %err.0.i.i, i64 %err.1.i.i) #25
          to label %.noexc8 unwind label %cleanup

.noexc8:                                          ; preds = %bb3.i.i
  unreachable

"_ZN5alloc5slice99_$LT$impl$u20$core..slice..sort..stable..BufGuard$LT$T$GT$$u20$for$u20$alloc..vec..Vec$LT$T$GT$$GT$13with_capacity17h8984867f4936b1d4E.exit": ; preds = %.noexc
  %this.1.i.i = load ptr, ptr %2, align 8, !noalias !1952, !nonnull !32, !noundef !32
  %_7.i.i = icmp ule i64 %_0.sroa.0.0.i7, %err.0.i.i
  tail call void @llvm.assume(i1 %_7.i.i)
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %_4.i.i), !noalias !1952
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

bb8:                                              ; preds = %"_ZN5alloc5slice99_$LT$impl$u20$core..slice..sort..stable..BufGuard$LT$T$GT$$u20$for$u20$alloc..vec..Vec$LT$T$GT$$GT$13with_capacity17h8984867f4936b1d4E.exit", %start
  %_24.sroa.0.1 = phi i8 [ 0, %start ], [ 1, %"_ZN5alloc5slice99_$LT$impl$u20$core..slice..sort..stable..BufGuard$LT$T$GT$$u20$for$u20$alloc..vec..Vec$LT$T$GT$$GT$13with_capacity17h8984867f4936b1d4E.exit" ]
  %stack_scratch.sroa.4.0 = phi i64 [ 1024, %start ], [ %err.0.i.i, %"_ZN5alloc5slice99_$LT$impl$u20$core..slice..sort..stable..BufGuard$LT$T$GT$$u20$for$u20$alloc..vec..Vec$LT$T$GT$$GT$13with_capacity17h8984867f4936b1d4E.exit" ]
  %stack_buf.pn = phi ptr [ %stack_buf, %start ], [ %this.1.i.i, %"_ZN5alloc5slice99_$LT$impl$u20$core..slice..sort..stable..BufGuard$LT$T$GT$$u20$for$u20$alloc..vec..Vec$LT$T$GT$$GT$13with_capacity17h8984867f4936b1d4E.exit" ]
  %eager_sort = icmp samesign ult i64 %v.1, 65
; invoke core::slice::sort::stable::drift::sort
  invoke void @_ZN4core5slice4sort6stable5drift4sort17hf2c114673cd91d61E(ptr noalias noundef nonnull align 4 %v.0, i64 noundef %v.1, ptr noalias noundef nonnull align 4 %stack_buf.pn, i64 noundef %stack_scratch.sroa.4.0, i1 noundef zeroext %eager_sort, ptr noalias noundef align 8 dereferenceable(8) %is_less)
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
  call void @_ZN4core9panicking16panic_in_cleanup17h5f6bde45d17ae243E() #26
  unreachable
}

; core::slice::sort::stable::driftsort_main
; Function Attrs: noinline nonlazybind uwtable
define void @_ZN4core5slice4sort6stable14driftsort_main17hcb049b11f4721df8E(ptr noalias noundef nonnull align 4 %v.0, i64 noundef range(i64 0, 2305843009213693952) %v.1, ptr noalias noundef align 8 dereferenceable(8) %is_less) unnamed_addr #5 personality ptr @rust_eh_personality {
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
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %_4.i.i), !noalias !1955
; invoke alloc::raw_vec::RawVecInner<A>::try_allocate_in
  invoke void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$15try_allocate_in17had089b3ffc2704ecE"(ptr noalias noundef sret([24 x i8]) align 8 captures(none) dereferenceable(24) %_4.i.i, i64 noundef %_0.sroa.0.0.i7, i1 noundef zeroext false, i64 noundef 4, i64 noundef 4)
          to label %.noexc unwind label %cleanup

.noexc:                                           ; preds = %bb4
  %_5.i.i = load i64, ptr %_4.i.i, align 8, !range !1950, !noalias !1955, !noundef !32
  %0 = trunc nuw i64 %_5.i.i to i1
  %1 = getelementptr inbounds nuw i8, ptr %_4.i.i, i64 8
  %err.0.i.i = load i64, ptr %1, align 8, !range !1951, !noalias !1955, !noundef !32
  %2 = getelementptr inbounds nuw i8, ptr %_4.i.i, i64 16
  br i1 %0, label %bb3.i.i, label %"_ZN5alloc5slice99_$LT$impl$u20$core..slice..sort..stable..BufGuard$LT$T$GT$$u20$for$u20$alloc..vec..Vec$LT$T$GT$$GT$13with_capacity17h8984867f4936b1d4E.exit", !prof !35

bb3.i.i:                                          ; preds = %.noexc
  %err.1.i.i = load i64, ptr %2, align 8, !noalias !1955
; invoke alloc::raw_vec::handle_error
  invoke void @_ZN5alloc7raw_vec12handle_error17h3a8c375904e593b2E(i64 noundef %err.0.i.i, i64 %err.1.i.i) #25
          to label %.noexc8 unwind label %cleanup

.noexc8:                                          ; preds = %bb3.i.i
  unreachable

"_ZN5alloc5slice99_$LT$impl$u20$core..slice..sort..stable..BufGuard$LT$T$GT$$u20$for$u20$alloc..vec..Vec$LT$T$GT$$GT$13with_capacity17h8984867f4936b1d4E.exit": ; preds = %.noexc
  %this.1.i.i = load ptr, ptr %2, align 8, !noalias !1955, !nonnull !32, !noundef !32
  %_7.i.i = icmp ule i64 %_0.sroa.0.0.i7, %err.0.i.i
  tail call void @llvm.assume(i1 %_7.i.i)
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %_4.i.i), !noalias !1955
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

bb8:                                              ; preds = %"_ZN5alloc5slice99_$LT$impl$u20$core..slice..sort..stable..BufGuard$LT$T$GT$$u20$for$u20$alloc..vec..Vec$LT$T$GT$$GT$13with_capacity17h8984867f4936b1d4E.exit", %start
  %_24.sroa.0.1 = phi i8 [ 0, %start ], [ 1, %"_ZN5alloc5slice99_$LT$impl$u20$core..slice..sort..stable..BufGuard$LT$T$GT$$u20$for$u20$alloc..vec..Vec$LT$T$GT$$GT$13with_capacity17h8984867f4936b1d4E.exit" ]
  %stack_scratch.sroa.4.0 = phi i64 [ 1024, %start ], [ %err.0.i.i, %"_ZN5alloc5slice99_$LT$impl$u20$core..slice..sort..stable..BufGuard$LT$T$GT$$u20$for$u20$alloc..vec..Vec$LT$T$GT$$GT$13with_capacity17h8984867f4936b1d4E.exit" ]
  %stack_buf.pn = phi ptr [ %stack_buf, %start ], [ %this.1.i.i, %"_ZN5alloc5slice99_$LT$impl$u20$core..slice..sort..stable..BufGuard$LT$T$GT$$u20$for$u20$alloc..vec..Vec$LT$T$GT$$GT$13with_capacity17h8984867f4936b1d4E.exit" ]
  %eager_sort = icmp samesign ult i64 %v.1, 65
; invoke core::slice::sort::stable::drift::sort
  invoke void @_ZN4core5slice4sort6stable5drift4sort17h4e9143ba5e79da94E(ptr noalias noundef nonnull align 4 %v.0, i64 noundef %v.1, ptr noalias noundef nonnull align 4 %stack_buf.pn, i64 noundef %stack_scratch.sroa.4.0, i1 noundef zeroext %eager_sort, ptr noalias noundef align 8 dereferenceable(8) %is_less)
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
  call void @_ZN4core9panicking16panic_in_cleanup17h5f6bde45d17ae243E() #26
  unreachable
}

; core::slice::sort::stable::AlignedStorage<T,_>::as_uninit_slice_mut
; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define { ptr, i64 } @"_ZN4core5slice4sort6stable27AlignedStorage$LT$T$C$_$GT$19as_uninit_slice_mut17h5d98ffe19f539ea3E"(ptr noalias noundef align 4 dereferenceable(4096) %self) unnamed_addr #6 {
start:
  %0 = insertvalue { ptr, i64 } poison, ptr %self, 0
  %1 = insertvalue { ptr, i64 } %0, i64 1024, 1
  ret { ptr, i64 } %1
}

; core::slice::sort::stable::AlignedStorage<T,_>::as_uninit_slice_mut
; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define { ptr, i64 } @"_ZN4core5slice4sort6stable27AlignedStorage$LT$T$C$_$GT$19as_uninit_slice_mut17h738aa8407fb0d028E"(ptr noalias noundef align 4 dereferenceable(4096) %self) unnamed_addr #6 {
start:
  %0 = insertvalue { ptr, i64 } poison, ptr %self, 0
  %1 = insertvalue { ptr, i64 } %0, i64 1024, 1
  ret { ptr, i64 } %1
}

; core::slice::sort::stable::drift::create_run
; Function Attrs: nonlazybind uwtable
define noundef range(i64 0, -1) i64 @_ZN4core5slice4sort6stable5drift10create_run17h06c467a4bb8b67c5E(ptr noalias noundef nonnull align 4 %v.0, i64 noundef range(i64 0, 2305843009213693952) %v.1, ptr noalias noundef nonnull align 4 %scratch.0, i64 noundef range(i64 0, 2305843009213693952) %scratch.1, i64 noundef %min_good_run_len, i1 noundef zeroext %eager_sort, ptr noalias noundef align 8 dereferenceable(8) %is_less) unnamed_addr #1 personality ptr @rust_eh_personality {
start:
  %_7.not = icmp ult i64 %v.1, %min_good_run_len
  br i1 %_7.not, label %bb7, label %bb1

bb7:                                              ; preds = %_ZN4core5slice4sort6shared17find_existing_run17hfff9c6e1c581eeebE.exit, %start
  br i1 %eager_sort, label %bb8, label %bb11

bb1:                                              ; preds = %start
  %_4.i = icmp samesign ult i64 %v.1, 2
  br i1 %_4.i, label %_ZN4core5slice4sort6shared17find_existing_run17hfff9c6e1c581eeebE.exit, label %bb2.i

bb2.i:                                            ; preds = %bb1
  %_28.i = getelementptr inbounds nuw i8, ptr %v.0, i64 4
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1958)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1961)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1963)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1966)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1968)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1971)
  %_4.i.i.i = load float, ptr %_28.i, align 4, !alias.scope !1973, !noalias !1974, !noundef !32
  %_5.i.i.i = load float, ptr %v.0, align 4, !alias.scope !1974, !noalias !1973, !noundef !32
  %.not.i.i.i = fcmp uno float %_4.i.i.i, %_5.i.i.i
  br i1 %.not.i.i.i, label %bb2.i.i.i, label %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf5b8f37855ac0c3dE.exit", !prof !35

bb2.i.i.i:                                        ; preds = %bb2.i
; call core::option::unwrap_failed
  tail call void @_ZN4core6option13unwrap_failed17hef2534b77b89c04fE(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_b0e33ba48ef5fa15e44a55a18226b5ac) #24, !noalias !1975
  unreachable

"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf5b8f37855ac0c3dE.exit": ; preds = %bb2.i
  %_0.i = fcmp olt float %_4.i.i.i, %_5.i.i.i
  %_10.i21.not = icmp eq i64 %v.1, 2
  br i1 %_0.i, label %bb4.i.preheader, label %bb11.i.preheader

bb11.i.preheader:                                 ; preds = %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf5b8f37855ac0c3dE.exit"
  br i1 %_10.i21.not, label %_ZN4core5slice4sort6shared17find_existing_run17hfff9c6e1c581eeebE.exit, label %bb12.i.preheader

bb12.i.preheader:                                 ; preds = %bb11.i.preheader
  %invariant.gep = getelementptr i8, ptr %v.0, i64 -4
  br label %bb12.i

bb4.i.preheader:                                  ; preds = %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf5b8f37855ac0c3dE.exit"
  br i1 %_10.i21.not, label %_ZN4core5slice4sort6shared17find_existing_run17hfff9c6e1c581eeebE.exit, label %bb5.i.preheader

bb5.i.preheader:                                  ; preds = %bb4.i.preheader
  %invariant.gep32 = getelementptr i8, ptr %v.0, i64 -4
  br label %bb5.i

bb12.i:                                           ; preds = %bb12.i.preheader, %bb15.i
  %run_len.sroa.0.0.i19 = phi i64 [ %1, %bb15.i ], [ 2, %bb12.i.preheader ]
  %0 = getelementptr inbounds nuw float, ptr %v.0, i64 %run_len.sroa.0.0.i19
  %gep = getelementptr float, ptr %invariant.gep, i64 %run_len.sroa.0.0.i19
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1976)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1979)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1981)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1984)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1986)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1989)
  %_4.i.i.i1 = load float, ptr %0, align 4, !alias.scope !1991, !noalias !1992, !noundef !32
  %_5.i.i.i2 = load float, ptr %gep, align 4, !alias.scope !1992, !noalias !1991, !noundef !32
  %.not.i.i.i3 = fcmp uno float %_4.i.i.i1, %_5.i.i.i2
  br i1 %.not.i.i.i3, label %bb2.i.i.i5, label %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf5b8f37855ac0c3dE.exit6", !prof !35

bb2.i.i.i5:                                       ; preds = %bb12.i
; call core::option::unwrap_failed
  tail call void @_ZN4core6option13unwrap_failed17hef2534b77b89c04fE(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_b0e33ba48ef5fa15e44a55a18226b5ac) #24, !noalias !1993
  unreachable

"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf5b8f37855ac0c3dE.exit6": ; preds = %bb12.i
  %_0.i4 = fcmp olt float %_4.i.i.i1, %_5.i.i.i2
  br i1 %_0.i4, label %_ZN4core5slice4sort6shared17find_existing_run17hfff9c6e1c581eeebE.exit, label %bb15.i

bb15.i:                                           ; preds = %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf5b8f37855ac0c3dE.exit6"
  %1 = add nuw nsw i64 %run_len.sroa.0.0.i19, 1
  %exitcond.not = icmp eq i64 %1, %v.1
  br i1 %exitcond.not, label %_ZN4core5slice4sort6shared17find_existing_run17hfff9c6e1c581eeebE.exit, label %bb12.i

bb5.i:                                            ; preds = %bb5.i.preheader, %bb7.i
  %run_len.sroa.0.1.i22 = phi i64 [ %3, %bb7.i ], [ 2, %bb5.i.preheader ]
  %2 = getelementptr inbounds nuw float, ptr %v.0, i64 %run_len.sroa.0.1.i22
  %gep33 = getelementptr float, ptr %invariant.gep32, i64 %run_len.sroa.0.1.i22
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1994)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1997)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1999)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2002)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2004)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2007)
  %_4.i.i.i7 = load float, ptr %2, align 4, !alias.scope !2009, !noalias !2010, !noundef !32
  %_5.i.i.i8 = load float, ptr %gep33, align 4, !alias.scope !2010, !noalias !2009, !noundef !32
  %.not.i.i.i9 = fcmp uno float %_4.i.i.i7, %_5.i.i.i8
  br i1 %.not.i.i.i9, label %bb2.i.i.i11, label %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf5b8f37855ac0c3dE.exit12", !prof !35

bb2.i.i.i11:                                      ; preds = %bb5.i
; call core::option::unwrap_failed
  tail call void @_ZN4core6option13unwrap_failed17hef2534b77b89c04fE(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_b0e33ba48ef5fa15e44a55a18226b5ac) #24, !noalias !2011
  unreachable

"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf5b8f37855ac0c3dE.exit12": ; preds = %bb5.i
  %_0.i10 = fcmp olt float %_4.i.i.i7, %_5.i.i.i8
  br i1 %_0.i10, label %bb7.i, label %_ZN4core5slice4sort6shared17find_existing_run17hfff9c6e1c581eeebE.exit

bb7.i:                                            ; preds = %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf5b8f37855ac0c3dE.exit12"
  %3 = add nuw nsw i64 %run_len.sroa.0.1.i22, 1
  %exitcond27.not = icmp eq i64 %3, %v.1
  br i1 %exitcond27.not, label %_ZN4core5slice4sort6shared17find_existing_run17hfff9c6e1c581eeebE.exit, label %bb5.i

_ZN4core5slice4sort6shared17find_existing_run17hfff9c6e1c581eeebE.exit: ; preds = %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf5b8f37855ac0c3dE.exit6", %bb15.i, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf5b8f37855ac0c3dE.exit12", %bb7.i, %bb11.i.preheader, %bb4.i.preheader, %bb1
  %_0.sroa.3.0.i = phi i1 [ false, %bb1 ], [ true, %bb4.i.preheader ], [ false, %bb11.i.preheader ], [ true, %bb7.i ], [ true, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf5b8f37855ac0c3dE.exit12" ], [ false, %bb15.i ], [ false, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf5b8f37855ac0c3dE.exit6" ]
  %_0.sroa.0.0.i = phi i64 [ %v.1, %bb1 ], [ 2, %bb4.i.preheader ], [ 2, %bb11.i.preheader ], [ %run_len.sroa.0.1.i22, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf5b8f37855ac0c3dE.exit12" ], [ %v.1, %bb7.i ], [ %run_len.sroa.0.0.i19, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf5b8f37855ac0c3dE.exit6" ], [ %v.1, %bb15.i ]
  %_12 = icmp samesign ule i64 %_0.sroa.0.0.i, %v.1
  tail call void @llvm.assume(i1 %_12)
  %_13.not = icmp ult i64 %_0.sroa.0.0.i, %min_good_run_len
  br i1 %_13.not, label %bb7, label %bb3

bb3:                                              ; preds = %_ZN4core5slice4sort6shared17find_existing_run17hfff9c6e1c581eeebE.exit
  br i1 %_0.sroa.3.0.i, label %bb14, label %bb5

bb11:                                             ; preds = %bb7
  %_0.sroa.0.0.i13 = tail call noundef i64 @llvm.umin.i64(i64 range(i64 -2305843009213693950, 2305843009213693952) %v.1, i64 %min_good_run_len)
  %_36 = shl nuw nsw i64 %_0.sroa.0.0.i13, 1
  br label %bb12

bb8:                                              ; preds = %bb7
  %_0.sroa.0.0.i14 = tail call noundef i64 @llvm.umin.i64(i64 range(i64 -2305843009213693950, 2305843009213693952) %v.1, i64 32)
; call core::slice::sort::stable::quicksort::quicksort
  tail call void @_ZN4core5slice4sort6stable9quicksort9quicksort17h23ee1f5ec6e131a2E(ptr noalias noundef nonnull align 4 %v.0, i64 noundef %_0.sroa.0.0.i14, ptr noalias noundef nonnull align 4 %scratch.0, i64 noundef %scratch.1, i32 noundef 0, ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable_or_null(4) null, ptr noalias noundef align 8 dereferenceable(8) %is_less) #27
  %_35 = shl nuw nsw i64 %_0.sroa.0.0.i14, 1
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
  %x.i.i.epil = getelementptr inbounds nuw float, ptr %v.0, i64 %i.sroa.0.016.i.i.unr
  %y.i.i.epil = getelementptr float, ptr %end.i, i64 %5
  %6 = load float, ptr %x.i.i.epil, align 4, !alias.scope !2012, !noalias !2017, !noundef !32
  %7 = load i32, ptr %y.i.i.epil, align 4, !alias.scope !2019, !noalias !2020
  store i32 %7, ptr %x.i.i.epil, align 4, !alias.scope !2012, !noalias !2017
  store float %6, ptr %y.i.i.epil, align 4, !alias.scope !2019, !noalias !2020
  br label %bb5

bb5:                                              ; preds = %bb5.i.i.epil, %bb5.loopexit.unr-lcssa, %bb14, %bb3
  %_27 = shl nuw nsw i64 %_0.sroa.0.0.i, 1
  %_26 = or disjoint i64 %_27, 1
  br label %bb12

bb14:                                             ; preds = %bb3
  %half_len2.i = lshr i64 %_0.sroa.0.0.i, 1
  %end.i = getelementptr inbounds nuw float, ptr %v.0, i64 %_0.sroa.0.0.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2020)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2017)
  %_915.not.i.i = icmp samesign ult i64 %_0.sroa.0.0.i, 2
  br i1 %_915.not.i.i, label %bb5, label %bb5.i.i.preheader

bb5.i.i.preheader:                                ; preds = %bb14
  %8 = icmp eq i64 %half_len2.i, 1
  br i1 %8, label %bb5.loopexit.unr-lcssa, label %bb5.i.i.preheader.new

bb5.i.i.preheader.new:                            ; preds = %bb5.i.i.preheader
  %unroll_iter = and i64 %half_len2.i, 9223372036854775806
  %invariant.gep34 = getelementptr inbounds i8, ptr %v.0, i64 4
  br label %bb5.i.i

bb5.i.i:                                          ; preds = %bb5.i.i, %bb5.i.i.preheader.new
  %i.sroa.0.016.i.i = phi i64 [ 0, %bb5.i.i.preheader.new ], [ %15, %bb5.i.i ]
  %niter = phi i64 [ 0, %bb5.i.i.preheader.new ], [ %niter.next.1, %bb5.i.i ]
  %9 = xor i64 %i.sroa.0.016.i.i, -1
  %x.i.i = getelementptr inbounds nuw float, ptr %v.0, i64 %i.sroa.0.016.i.i
  %y.i.i = getelementptr float, ptr %end.i, i64 %9
  %10 = load float, ptr %x.i.i, align 4, !alias.scope !2012, !noalias !2017, !noundef !32
  %11 = load i32, ptr %y.i.i, align 4, !alias.scope !2019, !noalias !2020
  store i32 %11, ptr %x.i.i, align 4, !alias.scope !2012, !noalias !2017
  store float %10, ptr %y.i.i, align 4, !alias.scope !2019, !noalias !2020
  %12 = xor i64 %i.sroa.0.016.i.i, -2
  %gep35 = getelementptr inbounds float, ptr %invariant.gep34, i64 %i.sroa.0.016.i.i
  %y.i.i.1 = getelementptr float, ptr %end.i, i64 %12
  %13 = load float, ptr %gep35, align 4, !alias.scope !2012, !noalias !2017, !noundef !32
  %14 = load i32, ptr %y.i.i.1, align 4, !alias.scope !2019, !noalias !2020
  store i32 %14, ptr %gep35, align 4, !alias.scope !2012, !noalias !2017
  store float %13, ptr %y.i.i.1, align 4, !alias.scope !2019, !noalias !2020
  %15 = add nuw nsw i64 %i.sroa.0.016.i.i, 2
  %niter.next.1 = add i64 %niter, 2
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %bb5.loopexit.unr-lcssa, label %bb5.i.i
}

; core::slice::sort::stable::drift::create_run
; Function Attrs: nonlazybind uwtable
define noundef range(i64 0, -1) i64 @_ZN4core5slice4sort6stable5drift10create_run17h144ae69255ff16a4E(ptr noalias noundef nonnull align 4 %v.0, i64 noundef range(i64 0, 2305843009213693952) %v.1, ptr noalias noundef nonnull align 4 %scratch.0, i64 noundef range(i64 0, 2305843009213693952) %scratch.1, i64 noundef %min_good_run_len, i1 noundef zeroext %eager_sort, ptr noalias noundef align 8 dereferenceable(8) %is_less) unnamed_addr #1 personality ptr @rust_eh_personality {
start:
  %_7.not = icmp ult i64 %v.1, %min_good_run_len
  br i1 %_7.not, label %bb7, label %bb1

bb7:                                              ; preds = %_ZN4core5slice4sort6shared17find_existing_run17h00496244fb14ca66E.exit, %start
  br i1 %eager_sort, label %bb8, label %bb11

bb1:                                              ; preds = %start
  %_4.i = icmp samesign ult i64 %v.1, 2
  br i1 %_4.i, label %_ZN4core5slice4sort6shared17find_existing_run17h00496244fb14ca66E.exit, label %bb2.i

bb2.i:                                            ; preds = %bb1
  %_28.i = getelementptr inbounds nuw i8, ptr %v.0, i64 4
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2021)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2024)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2026)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2029)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2031)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2034)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2036)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2039)
  %_3.i.i.i.i = load i32, ptr %_28.i, align 4, !alias.scope !2041, !noalias !2042, !noundef !32
  %_4.i.i.i.i = load i32, ptr %v.0, align 4, !alias.scope !2042, !noalias !2041, !noundef !32
  %_0.i = icmp slt i32 %_3.i.i.i.i, %_4.i.i.i.i
  %_10.i13.not = icmp eq i64 %v.1, 2
  br i1 %_0.i, label %bb4.i.preheader, label %bb11.i.preheader

bb11.i.preheader:                                 ; preds = %bb2.i
  br i1 %_10.i13.not, label %_ZN4core5slice4sort6shared17find_existing_run17h00496244fb14ca66E.exit, label %bb12.i.preheader

bb12.i.preheader:                                 ; preds = %bb11.i.preheader
  %invariant.gep = getelementptr i8, ptr %v.0, i64 -4
  br label %bb12.i

bb4.i.preheader:                                  ; preds = %bb2.i
  br i1 %_10.i13.not, label %_ZN4core5slice4sort6shared17find_existing_run17h00496244fb14ca66E.exit, label %bb5.i.preheader

bb5.i.preheader:                                  ; preds = %bb4.i.preheader
  %invariant.gep24 = getelementptr i8, ptr %v.0, i64 -4
  br label %bb5.i

bb12.i:                                           ; preds = %bb12.i.preheader, %bb15.i
  %run_len.sroa.0.0.i11 = phi i64 [ %1, %bb15.i ], [ 2, %bb12.i.preheader ]
  %0 = getelementptr inbounds nuw i32, ptr %v.0, i64 %run_len.sroa.0.0.i11
  %gep = getelementptr i32, ptr %invariant.gep, i64 %run_len.sroa.0.0.i11
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2043)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2046)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2048)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2051)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2053)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2056)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2058)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2061)
  %_3.i.i.i.i1 = load i32, ptr %0, align 4, !alias.scope !2063, !noalias !2064, !noundef !32
  %_4.i.i.i.i2 = load i32, ptr %gep, align 4, !alias.scope !2064, !noalias !2063, !noundef !32
  %_0.i3 = icmp slt i32 %_3.i.i.i.i1, %_4.i.i.i.i2
  br i1 %_0.i3, label %_ZN4core5slice4sort6shared17find_existing_run17h00496244fb14ca66E.exit, label %bb15.i

bb15.i:                                           ; preds = %bb12.i
  %1 = add nuw nsw i64 %run_len.sroa.0.0.i11, 1
  %exitcond.not = icmp eq i64 %1, %v.1
  br i1 %exitcond.not, label %_ZN4core5slice4sort6shared17find_existing_run17h00496244fb14ca66E.exit, label %bb12.i

bb5.i:                                            ; preds = %bb5.i.preheader, %bb7.i
  %run_len.sroa.0.1.i14 = phi i64 [ %3, %bb7.i ], [ 2, %bb5.i.preheader ]
  %2 = getelementptr inbounds nuw i32, ptr %v.0, i64 %run_len.sroa.0.1.i14
  %gep25 = getelementptr i32, ptr %invariant.gep24, i64 %run_len.sroa.0.1.i14
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2065)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2068)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2070)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2073)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2075)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2078)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2080)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2083)
  %_3.i.i.i.i4 = load i32, ptr %2, align 4, !alias.scope !2085, !noalias !2086, !noundef !32
  %_4.i.i.i.i5 = load i32, ptr %gep25, align 4, !alias.scope !2086, !noalias !2085, !noundef !32
  %_0.i6 = icmp slt i32 %_3.i.i.i.i4, %_4.i.i.i.i5
  br i1 %_0.i6, label %bb7.i, label %_ZN4core5slice4sort6shared17find_existing_run17h00496244fb14ca66E.exit

bb7.i:                                            ; preds = %bb5.i
  %3 = add nuw nsw i64 %run_len.sroa.0.1.i14, 1
  %exitcond19.not = icmp eq i64 %3, %v.1
  br i1 %exitcond19.not, label %_ZN4core5slice4sort6shared17find_existing_run17h00496244fb14ca66E.exit, label %bb5.i

_ZN4core5slice4sort6shared17find_existing_run17h00496244fb14ca66E.exit: ; preds = %bb12.i, %bb15.i, %bb5.i, %bb7.i, %bb11.i.preheader, %bb4.i.preheader, %bb1
  %_0.sroa.3.0.i = phi i1 [ false, %bb1 ], [ true, %bb4.i.preheader ], [ false, %bb11.i.preheader ], [ true, %bb7.i ], [ true, %bb5.i ], [ false, %bb15.i ], [ false, %bb12.i ]
  %_0.sroa.0.0.i = phi i64 [ %v.1, %bb1 ], [ 2, %bb4.i.preheader ], [ 2, %bb11.i.preheader ], [ %run_len.sroa.0.1.i14, %bb5.i ], [ %v.1, %bb7.i ], [ %run_len.sroa.0.0.i11, %bb12.i ], [ %v.1, %bb15.i ]
  %_12 = icmp samesign ule i64 %_0.sroa.0.0.i, %v.1
  tail call void @llvm.assume(i1 %_12)
  %_13.not = icmp ult i64 %_0.sroa.0.0.i, %min_good_run_len
  br i1 %_13.not, label %bb7, label %bb3

bb3:                                              ; preds = %_ZN4core5slice4sort6shared17find_existing_run17h00496244fb14ca66E.exit
  br i1 %_0.sroa.3.0.i, label %bb14, label %bb5

bb11:                                             ; preds = %bb7
  %_0.sroa.0.0.i7 = tail call noundef i64 @llvm.umin.i64(i64 range(i64 -2305843009213693950, 2305843009213693952) %v.1, i64 %min_good_run_len)
  %_36 = shl nuw nsw i64 %_0.sroa.0.0.i7, 1
  br label %bb12

bb8:                                              ; preds = %bb7
  %_0.sroa.0.0.i8 = tail call noundef i64 @llvm.umin.i64(i64 range(i64 -2305843009213693950, 2305843009213693952) %v.1, i64 32)
; call core::slice::sort::stable::quicksort::quicksort
  tail call void @_ZN4core5slice4sort6stable9quicksort9quicksort17h960dc2f6c4bef9a8E(ptr noalias noundef nonnull align 4 %v.0, i64 noundef %_0.sroa.0.0.i8, ptr noalias noundef nonnull align 4 %scratch.0, i64 noundef %scratch.1, i32 noundef 0, ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable_or_null(4) null, ptr noalias noundef align 8 dereferenceable(8) %is_less) #27
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
  %6 = load i32, ptr %x.i.i.epil, align 4, !alias.scope !2087, !noalias !2092, !noundef !32
  %7 = load i32, ptr %y.i.i.epil, align 4, !alias.scope !2094, !noalias !2095
  store i32 %7, ptr %x.i.i.epil, align 4, !alias.scope !2087, !noalias !2092
  store i32 %6, ptr %y.i.i.epil, align 4, !alias.scope !2094, !noalias !2095
  br label %bb5

bb5:                                              ; preds = %bb5.i.i.epil, %bb5.loopexit.unr-lcssa, %bb14, %bb3
  %_27 = shl nuw nsw i64 %_0.sroa.0.0.i, 1
  %_26 = or disjoint i64 %_27, 1
  br label %bb12

bb14:                                             ; preds = %bb3
  %half_len2.i = lshr i64 %_0.sroa.0.0.i, 1
  %end.i = getelementptr inbounds nuw i32, ptr %v.0, i64 %_0.sroa.0.0.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2095)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2092)
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
  %10 = load i32, ptr %x.i.i, align 4, !alias.scope !2087, !noalias !2092, !noundef !32
  %11 = load i32, ptr %y.i.i, align 4, !alias.scope !2094, !noalias !2095
  store i32 %11, ptr %x.i.i, align 4, !alias.scope !2087, !noalias !2092
  store i32 %10, ptr %y.i.i, align 4, !alias.scope !2094, !noalias !2095
  %12 = xor i64 %i.sroa.0.016.i.i, -2
  %gep27 = getelementptr inbounds i32, ptr %invariant.gep26, i64 %i.sroa.0.016.i.i
  %y.i.i.1 = getelementptr i32, ptr %end.i, i64 %12
  %13 = load i32, ptr %gep27, align 4, !alias.scope !2087, !noalias !2092, !noundef !32
  %14 = load i32, ptr %y.i.i.1, align 4, !alias.scope !2094, !noalias !2095
  store i32 %14, ptr %gep27, align 4, !alias.scope !2087, !noalias !2092
  store i32 %13, ptr %y.i.i.1, align 4, !alias.scope !2094, !noalias !2095
  %15 = add nuw nsw i64 %i.sroa.0.016.i.i, 2
  %niter.next.1 = add i64 %niter, 2
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %bb5.loopexit.unr-lcssa, label %bb5.i.i
}

; core::slice::sort::stable::drift::create_run
; Function Attrs: nonlazybind uwtable
define noundef range(i64 0, -1) i64 @_ZN4core5slice4sort6stable5drift10create_run17h4119af24d47959b6E(ptr noalias noundef nonnull align 4 %v.0, i64 noundef range(i64 0, 2305843009213693952) %v.1, ptr noalias noundef nonnull align 4 %scratch.0, i64 noundef range(i64 0, 2305843009213693952) %scratch.1, i64 noundef %min_good_run_len, i1 noundef zeroext %eager_sort, ptr noalias noundef align 8 dereferenceable(8) %is_less) unnamed_addr #1 personality ptr @rust_eh_personality {
start:
  %_7.not = icmp ult i64 %v.1, %min_good_run_len
  br i1 %_7.not, label %bb7, label %bb1

bb7:                                              ; preds = %_ZN4core5slice4sort6shared17find_existing_run17h017626d65394a468E.exit, %start
  br i1 %eager_sort, label %bb8, label %bb11

bb1:                                              ; preds = %start
  %_4.i = icmp samesign ult i64 %v.1, 2
  br i1 %_4.i, label %_ZN4core5slice4sort6shared17find_existing_run17h017626d65394a468E.exit, label %bb2.i

bb2.i:                                            ; preds = %bb1
  %_28.i = getelementptr inbounds nuw i8, ptr %v.0, i64 4
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2096)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2099)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2101)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2104)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2106)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2109)
  %_4.i.i.i = load float, ptr %_28.i, align 4, !alias.scope !2111, !noalias !2112, !noundef !32
  %_5.i.i.i = load float, ptr %v.0, align 4, !alias.scope !2112, !noalias !2111, !noundef !32
  %.not.i.i.i = fcmp uno float %_4.i.i.i, %_5.i.i.i
  br i1 %.not.i.i.i, label %bb2.i.i.i, label %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfaa75802b1959b0aE.exit", !prof !35

bb2.i.i.i:                                        ; preds = %bb2.i
; call core::option::unwrap_failed
  tail call void @_ZN4core6option13unwrap_failed17hef2534b77b89c04fE(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_4a4e7fec44b84c1472b04d0c86f3e1b7) #24, !noalias !2113
  unreachable

"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfaa75802b1959b0aE.exit": ; preds = %bb2.i
  %_0.i = fcmp olt float %_4.i.i.i, %_5.i.i.i
  %_10.i21.not = icmp eq i64 %v.1, 2
  br i1 %_0.i, label %bb4.i.preheader, label %bb11.i.preheader

bb11.i.preheader:                                 ; preds = %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfaa75802b1959b0aE.exit"
  br i1 %_10.i21.not, label %_ZN4core5slice4sort6shared17find_existing_run17h017626d65394a468E.exit, label %bb12.i.preheader

bb12.i.preheader:                                 ; preds = %bb11.i.preheader
  %invariant.gep = getelementptr i8, ptr %v.0, i64 -4
  br label %bb12.i

bb4.i.preheader:                                  ; preds = %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfaa75802b1959b0aE.exit"
  br i1 %_10.i21.not, label %_ZN4core5slice4sort6shared17find_existing_run17h017626d65394a468E.exit, label %bb5.i.preheader

bb5.i.preheader:                                  ; preds = %bb4.i.preheader
  %invariant.gep32 = getelementptr i8, ptr %v.0, i64 -4
  br label %bb5.i

bb12.i:                                           ; preds = %bb12.i.preheader, %bb15.i
  %run_len.sroa.0.0.i19 = phi i64 [ %1, %bb15.i ], [ 2, %bb12.i.preheader ]
  %0 = getelementptr inbounds nuw float, ptr %v.0, i64 %run_len.sroa.0.0.i19
  %gep = getelementptr float, ptr %invariant.gep, i64 %run_len.sroa.0.0.i19
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2114)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2117)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2119)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2122)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2124)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2127)
  %_4.i.i.i1 = load float, ptr %0, align 4, !alias.scope !2129, !noalias !2130, !noundef !32
  %_5.i.i.i2 = load float, ptr %gep, align 4, !alias.scope !2130, !noalias !2129, !noundef !32
  %.not.i.i.i3 = fcmp uno float %_4.i.i.i1, %_5.i.i.i2
  br i1 %.not.i.i.i3, label %bb2.i.i.i5, label %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfaa75802b1959b0aE.exit6", !prof !35

bb2.i.i.i5:                                       ; preds = %bb12.i
; call core::option::unwrap_failed
  tail call void @_ZN4core6option13unwrap_failed17hef2534b77b89c04fE(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_4a4e7fec44b84c1472b04d0c86f3e1b7) #24, !noalias !2131
  unreachable

"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfaa75802b1959b0aE.exit6": ; preds = %bb12.i
  %_0.i4 = fcmp olt float %_4.i.i.i1, %_5.i.i.i2
  br i1 %_0.i4, label %_ZN4core5slice4sort6shared17find_existing_run17h017626d65394a468E.exit, label %bb15.i

bb15.i:                                           ; preds = %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfaa75802b1959b0aE.exit6"
  %1 = add nuw nsw i64 %run_len.sroa.0.0.i19, 1
  %exitcond.not = icmp eq i64 %1, %v.1
  br i1 %exitcond.not, label %_ZN4core5slice4sort6shared17find_existing_run17h017626d65394a468E.exit, label %bb12.i

bb5.i:                                            ; preds = %bb5.i.preheader, %bb7.i
  %run_len.sroa.0.1.i22 = phi i64 [ %3, %bb7.i ], [ 2, %bb5.i.preheader ]
  %2 = getelementptr inbounds nuw float, ptr %v.0, i64 %run_len.sroa.0.1.i22
  %gep33 = getelementptr float, ptr %invariant.gep32, i64 %run_len.sroa.0.1.i22
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2132)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2135)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2137)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2140)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2142)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2145)
  %_4.i.i.i7 = load float, ptr %2, align 4, !alias.scope !2147, !noalias !2148, !noundef !32
  %_5.i.i.i8 = load float, ptr %gep33, align 4, !alias.scope !2148, !noalias !2147, !noundef !32
  %.not.i.i.i9 = fcmp uno float %_4.i.i.i7, %_5.i.i.i8
  br i1 %.not.i.i.i9, label %bb2.i.i.i11, label %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfaa75802b1959b0aE.exit12", !prof !35

bb2.i.i.i11:                                      ; preds = %bb5.i
; call core::option::unwrap_failed
  tail call void @_ZN4core6option13unwrap_failed17hef2534b77b89c04fE(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_4a4e7fec44b84c1472b04d0c86f3e1b7) #24, !noalias !2149
  unreachable

"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfaa75802b1959b0aE.exit12": ; preds = %bb5.i
  %_0.i10 = fcmp olt float %_4.i.i.i7, %_5.i.i.i8
  br i1 %_0.i10, label %bb7.i, label %_ZN4core5slice4sort6shared17find_existing_run17h017626d65394a468E.exit

bb7.i:                                            ; preds = %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfaa75802b1959b0aE.exit12"
  %3 = add nuw nsw i64 %run_len.sroa.0.1.i22, 1
  %exitcond27.not = icmp eq i64 %3, %v.1
  br i1 %exitcond27.not, label %_ZN4core5slice4sort6shared17find_existing_run17h017626d65394a468E.exit, label %bb5.i

_ZN4core5slice4sort6shared17find_existing_run17h017626d65394a468E.exit: ; preds = %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfaa75802b1959b0aE.exit6", %bb15.i, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfaa75802b1959b0aE.exit12", %bb7.i, %bb11.i.preheader, %bb4.i.preheader, %bb1
  %_0.sroa.3.0.i = phi i1 [ false, %bb1 ], [ true, %bb4.i.preheader ], [ false, %bb11.i.preheader ], [ true, %bb7.i ], [ true, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfaa75802b1959b0aE.exit12" ], [ false, %bb15.i ], [ false, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfaa75802b1959b0aE.exit6" ]
  %_0.sroa.0.0.i = phi i64 [ %v.1, %bb1 ], [ 2, %bb4.i.preheader ], [ 2, %bb11.i.preheader ], [ %run_len.sroa.0.1.i22, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfaa75802b1959b0aE.exit12" ], [ %v.1, %bb7.i ], [ %run_len.sroa.0.0.i19, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfaa75802b1959b0aE.exit6" ], [ %v.1, %bb15.i ]
  %_12 = icmp samesign ule i64 %_0.sroa.0.0.i, %v.1
  tail call void @llvm.assume(i1 %_12)
  %_13.not = icmp ult i64 %_0.sroa.0.0.i, %min_good_run_len
  br i1 %_13.not, label %bb7, label %bb3

bb3:                                              ; preds = %_ZN4core5slice4sort6shared17find_existing_run17h017626d65394a468E.exit
  br i1 %_0.sroa.3.0.i, label %bb14, label %bb5

bb11:                                             ; preds = %bb7
  %_0.sroa.0.0.i13 = tail call noundef i64 @llvm.umin.i64(i64 range(i64 -2305843009213693950, 2305843009213693952) %v.1, i64 %min_good_run_len)
  %_36 = shl nuw nsw i64 %_0.sroa.0.0.i13, 1
  br label %bb12

bb8:                                              ; preds = %bb7
  %_0.sroa.0.0.i14 = tail call noundef i64 @llvm.umin.i64(i64 range(i64 -2305843009213693950, 2305843009213693952) %v.1, i64 32)
; call core::slice::sort::stable::quicksort::quicksort
  tail call void @_ZN4core5slice4sort6stable9quicksort9quicksort17h39c332b52467a176E(ptr noalias noundef nonnull align 4 %v.0, i64 noundef %_0.sroa.0.0.i14, ptr noalias noundef nonnull align 4 %scratch.0, i64 noundef %scratch.1, i32 noundef 0, ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable_or_null(4) null, ptr noalias noundef align 8 dereferenceable(8) %is_less) #27
  %_35 = shl nuw nsw i64 %_0.sroa.0.0.i14, 1
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
  %x.i.i.epil = getelementptr inbounds nuw float, ptr %v.0, i64 %i.sroa.0.016.i.i.unr
  %y.i.i.epil = getelementptr float, ptr %end.i, i64 %5
  %6 = load float, ptr %x.i.i.epil, align 4, !alias.scope !2150, !noalias !2155, !noundef !32
  %7 = load i32, ptr %y.i.i.epil, align 4, !alias.scope !2157, !noalias !2158
  store i32 %7, ptr %x.i.i.epil, align 4, !alias.scope !2150, !noalias !2155
  store float %6, ptr %y.i.i.epil, align 4, !alias.scope !2157, !noalias !2158
  br label %bb5

bb5:                                              ; preds = %bb5.i.i.epil, %bb5.loopexit.unr-lcssa, %bb14, %bb3
  %_27 = shl nuw nsw i64 %_0.sroa.0.0.i, 1
  %_26 = or disjoint i64 %_27, 1
  br label %bb12

bb14:                                             ; preds = %bb3
  %half_len2.i = lshr i64 %_0.sroa.0.0.i, 1
  %end.i = getelementptr inbounds nuw float, ptr %v.0, i64 %_0.sroa.0.0.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2158)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2155)
  %_915.not.i.i = icmp samesign ult i64 %_0.sroa.0.0.i, 2
  br i1 %_915.not.i.i, label %bb5, label %bb5.i.i.preheader

bb5.i.i.preheader:                                ; preds = %bb14
  %8 = icmp eq i64 %half_len2.i, 1
  br i1 %8, label %bb5.loopexit.unr-lcssa, label %bb5.i.i.preheader.new

bb5.i.i.preheader.new:                            ; preds = %bb5.i.i.preheader
  %unroll_iter = and i64 %half_len2.i, 9223372036854775806
  %invariant.gep34 = getelementptr inbounds i8, ptr %v.0, i64 4
  br label %bb5.i.i

bb5.i.i:                                          ; preds = %bb5.i.i, %bb5.i.i.preheader.new
  %i.sroa.0.016.i.i = phi i64 [ 0, %bb5.i.i.preheader.new ], [ %15, %bb5.i.i ]
  %niter = phi i64 [ 0, %bb5.i.i.preheader.new ], [ %niter.next.1, %bb5.i.i ]
  %9 = xor i64 %i.sroa.0.016.i.i, -1
  %x.i.i = getelementptr inbounds nuw float, ptr %v.0, i64 %i.sroa.0.016.i.i
  %y.i.i = getelementptr float, ptr %end.i, i64 %9
  %10 = load float, ptr %x.i.i, align 4, !alias.scope !2150, !noalias !2155, !noundef !32
  %11 = load i32, ptr %y.i.i, align 4, !alias.scope !2157, !noalias !2158
  store i32 %11, ptr %x.i.i, align 4, !alias.scope !2150, !noalias !2155
  store float %10, ptr %y.i.i, align 4, !alias.scope !2157, !noalias !2158
  %12 = xor i64 %i.sroa.0.016.i.i, -2
  %gep35 = getelementptr inbounds float, ptr %invariant.gep34, i64 %i.sroa.0.016.i.i
  %y.i.i.1 = getelementptr float, ptr %end.i, i64 %12
  %13 = load float, ptr %gep35, align 4, !alias.scope !2150, !noalias !2155, !noundef !32
  %14 = load i32, ptr %y.i.i.1, align 4, !alias.scope !2157, !noalias !2158
  store i32 %14, ptr %gep35, align 4, !alias.scope !2150, !noalias !2155
  store float %13, ptr %y.i.i.1, align 4, !alias.scope !2157, !noalias !2158
  %15 = add nuw nsw i64 %i.sroa.0.016.i.i, 2
  %niter.next.1 = add i64 %niter, 2
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %bb5.loopexit.unr-lcssa, label %bb5.i.i
}

; core::slice::sort::stable::drift::stable_quicksort
; Function Attrs: nonlazybind uwtable
define void @_ZN4core5slice4sort6stable5drift16stable_quicksort17h3cc84dc8c749d5f6E(ptr noalias noundef nonnull align 4 %v.0, i64 noundef range(i64 0, 2305843009213693952) %v.1, ptr noalias noundef nonnull align 4 %scratch.0, i64 noundef range(i64 0, 2305843009213693952) %scratch.1, ptr noalias noundef align 8 dereferenceable(8) %is_less) unnamed_addr #1 {
start:
  %self = or i64 %v.1, 1
  %0 = tail call range(i64 3, 64) i64 @llvm.ctlz.i64(i64 %self, i1 true)
  %1 = trunc nuw nsw i64 %0 to i32
  %log = shl nuw nsw i32 %1, 1
  %limit = xor i32 %log, 126
; call core::slice::sort::stable::quicksort::quicksort
  tail call void @_ZN4core5slice4sort6stable9quicksort9quicksort17h23ee1f5ec6e131a2E(ptr noalias noundef nonnull align 4 %v.0, i64 noundef %v.1, ptr noalias noundef nonnull align 4 %scratch.0, i64 noundef %scratch.1, i32 noundef %limit, ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable_or_null(4) null, ptr noalias noundef align 8 dereferenceable(8) %is_less) #27
  ret void
}

; core::slice::sort::stable::drift::stable_quicksort
; Function Attrs: nonlazybind uwtable
define void @_ZN4core5slice4sort6stable5drift16stable_quicksort17h64c3ea398b4b5fbdE(ptr noalias noundef nonnull align 4 %v.0, i64 noundef range(i64 0, 2305843009213693952) %v.1, ptr noalias noundef nonnull align 4 %scratch.0, i64 noundef range(i64 0, 2305843009213693952) %scratch.1, ptr noalias noundef align 8 dereferenceable(8) %is_less) unnamed_addr #1 {
start:
  %self = or i64 %v.1, 1
  %0 = tail call range(i64 3, 64) i64 @llvm.ctlz.i64(i64 %self, i1 true)
  %1 = trunc nuw nsw i64 %0 to i32
  %log = shl nuw nsw i32 %1, 1
  %limit = xor i32 %log, 126
; call core::slice::sort::stable::quicksort::quicksort
  tail call void @_ZN4core5slice4sort6stable9quicksort9quicksort17h960dc2f6c4bef9a8E(ptr noalias noundef nonnull align 4 %v.0, i64 noundef %v.1, ptr noalias noundef nonnull align 4 %scratch.0, i64 noundef %scratch.1, i32 noundef %limit, ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable_or_null(4) null, ptr noalias noundef align 8 dereferenceable(8) %is_less) #27
  ret void
}

; core::slice::sort::stable::drift::stable_quicksort
; Function Attrs: nonlazybind uwtable
define void @_ZN4core5slice4sort6stable5drift16stable_quicksort17h94c313c8105f04a2E(ptr noalias noundef nonnull align 4 %v.0, i64 noundef range(i64 0, 2305843009213693952) %v.1, ptr noalias noundef nonnull align 4 %scratch.0, i64 noundef range(i64 0, 2305843009213693952) %scratch.1, ptr noalias noundef align 8 dereferenceable(8) %is_less) unnamed_addr #1 {
start:
  %self = or i64 %v.1, 1
  %0 = tail call range(i64 3, 64) i64 @llvm.ctlz.i64(i64 %self, i1 true)
  %1 = trunc nuw nsw i64 %0 to i32
  %log = shl nuw nsw i32 %1, 1
  %limit = xor i32 %log, 126
; call core::slice::sort::stable::quicksort::quicksort
  tail call void @_ZN4core5slice4sort6stable9quicksort9quicksort17h39c332b52467a176E(ptr noalias noundef nonnull align 4 %v.0, i64 noundef %v.1, ptr noalias noundef nonnull align 4 %scratch.0, i64 noundef %scratch.1, i32 noundef %limit, ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable_or_null(4) null, ptr noalias noundef align 8 dereferenceable(8) %is_less) #27
  ret void
}

; core::slice::sort::stable::drift::sort
; Function Attrs: nonlazybind uwtable
define void @_ZN4core5slice4sort6stable5drift4sort17h077ef0bcbe90118aE(ptr noalias noundef nonnull align 4 %v.0, i64 noundef range(i64 0, 2305843009213693952) %v.1, ptr noalias noundef nonnull align 4 %scratch.0, i64 noundef range(i64 0, 2305843009213693952) %scratch.1, i1 noundef zeroext %eager_sort, ptr noalias noundef align 8 dereferenceable(8) %is_less) unnamed_addr #1 personality ptr @rust_eh_personality {
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
  %2 = tail call noundef i64 @_ZN4core5slice4sort6stable5drift10create_run17h144ae69255ff16a4E(ptr noalias noundef nonnull align 4 %_82, i64 noundef %new_len, ptr noalias noundef nonnull align 4 %scratch.0, i64 noundef %scratch.1, i64 noundef %min_good_run_len.sroa.0.0, i1 noundef zeroext %eager_sort, ptr noalias noundef align 8 dereferenceable(8) %is_less)
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

bb12:                                             ; preds = %bb12.lr.ph, %_ZN4core5slice4sort6stable5drift13logical_merge17h6322235afc7b8693E.exit
  %stack_len.sroa.0.150 = phi i64 [ %stack_len.sroa.0.0, %bb12.lr.ph ], [ %count, %_ZN4core5slice4sort6stable5drift13logical_merge17h6322235afc7b8693E.exit ]
  %prev_run.sroa.0.149 = phi i64 [ %prev_run.sroa.0.0, %bb12.lr.ph ], [ %_0.sroa.0.0.i, %_ZN4core5slice4sort6stable5drift13logical_merge17h6322235afc7b8693E.exit ]
  %count = add i64 %stack_len.sroa.0.150, -1
  %_41 = getelementptr inbounds nuw i8, ptr %desired_depth_storage, i64 %count
  %_40 = load i8, ptr %_41, align 1, !noundef !32
  %_39.not = icmp ult i8 %_40, %desired_depth.sroa.0.0
  br i1 %_39.not, label %bb17, label %bb13

bb17:                                             ; preds = %_ZN4core5slice4sort6stable5drift13logical_merge17h6322235afc7b8693E.exit, %bb12, %bb10
  %prev_run.sroa.0.1.lcssa = phi i64 [ %prev_run.sroa.0.0, %bb10 ], [ %_0.sroa.0.0.i, %_ZN4core5slice4sort6stable5drift13logical_merge17h6322235afc7b8693E.exit ], [ %prev_run.sroa.0.149, %bb12 ]
  %stack_len.sroa.0.1.lcssa = phi i64 [ %stack_len.sroa.0.0, %bb10 ], [ 1, %_ZN4core5slice4sort6stable5drift13logical_merge17h6322235afc7b8693E.exit ], [ %stack_len.sroa.0.150, %bb12 ]
  %_59 = getelementptr inbounds nuw i64, ptr %run_storage, i64 %stack_len.sroa.0.1.lcssa
  store i64 %prev_run.sroa.0.1.lcssa, ptr %_59, align 8
  %_61 = getelementptr inbounds nuw i8, ptr %desired_depth_storage, i64 %stack_len.sroa.0.1.lcssa
  store i8 %desired_depth.sroa.0.0, ptr %_61, align 1
  br i1 %_22, label %bb19, label %bb18

bb13:                                             ; preds = %bb12
  %_46 = getelementptr inbounds nuw i64, ptr %run_storage, i64 %count
  %left10 = load i64, ptr %_46, align 8, !noundef !32
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
  br label %_ZN4core5slice4sort6stable5drift13logical_merge17h6322235afc7b8693E.exit

bb5.i:                                            ; preds = %bb11.i, %bb3.i
  br i1 %_10.not.i, label %bb16.i, label %bb7.i

bb11.i:                                           ; preds = %bb3.i
  %self.i = or i64 %_50, 1
  %8 = tail call range(i64 3, 64) i64 @llvm.ctlz.i64(i64 %self.i, i1 true)
  %9 = trunc nuw nsw i64 %8 to i32
  %log.i = shl nuw nsw i32 %9, 1
  %limit.i = xor i32 %log.i, 126
; call core::slice::sort::stable::quicksort::quicksort
  tail call void @_ZN4core5slice4sort6stable9quicksort9quicksort17h960dc2f6c4bef9a8E(ptr noalias noundef nonnull align 4 %_98, i64 noundef range(i64 0, 2305843009213693952) %_50, ptr noalias noundef nonnull align 4 %scratch.0, i64 noundef range(i64 0, 2305843009213693952) %scratch.1, i32 noundef %limit.i, ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable_or_null(4) null, ptr noalias noundef nonnull align 8 dereferenceable(8) %is_less) #27
  br label %bb5.i

bb7.i:                                            ; preds = %bb16.i, %bb5.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2159)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2162)
  %_6.i = icmp ult i64 %left10, 2
  %_7.i = icmp ult i64 %prev_run.sroa.0.149, 2
  %or.cond.i = or i1 %_7.i, %_6.i
  br i1 %or.cond.i, label %_ZN4core5slice4sort6stable5merge5merge17h9f4203c273633beaE.exit, label %bb2.i

bb2.i:                                            ; preds = %bb7.i
  %_0.sroa.0.0.i.i = tail call i64 @llvm.umin.i64(i64 %_51, i64 %_50)
  %_8.i = icmp samesign ult i64 %scratch.1, %_0.sroa.0.0.i.i
  br i1 %_8.i, label %_ZN4core5slice4sort6stable5merge5merge17h9f4203c273633beaE.exit, label %bb5.i37

bb5.i37:                                          ; preds = %bb2.i
  %v_mid.i = getelementptr inbounds nuw i32, ptr %_98, i64 %_50
  %left_is_shorter.not.i = icmp samesign ugt i64 %_50, %_51
  %spec.select.i = select i1 %left_is_shorter.not.i, ptr %v_mid.i, ptr %_98
  %10 = shl nuw nsw i64 %_0.sroa.0.0.i.i, 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %scratch.0, ptr nonnull align 4 %spec.select.i, i64 %10, i1 false), !alias.scope !2164
  %_22.i38 = getelementptr inbounds nuw i8, ptr %scratch.0, i64 %10
  br i1 %left_is_shorter.not.i, label %bb1.i.i, label %bb3.i.i

bb1.i.i:                                          ; preds = %bb5.i37, %bb1.i.i
  %_2110.i.i = phi ptr [ %_21.i.i, %bb1.i.i ], [ %_22.i38, %bb5.i37 ]
  %_188.i.i = phi ptr [ %_18.i.i, %bb1.i.i ], [ %spec.select.i, %bb5.i37 ]
  %out.sroa.0.0.i.i = phi ptr [ %13, %bb1.i.i ], [ %v_end.i, %bb5.i37 ]
  %11 = getelementptr inbounds i8, ptr %_188.i.i, i64 -4
  %12 = getelementptr inbounds i8, ptr %_2110.i.i, i64 -4
  %13 = getelementptr inbounds i8, ptr %out.sroa.0.0.i.i, i64 -4
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2165)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2168)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2170)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2173)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2175)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2178)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2180)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2183)
  %_3.i.i.i.i.i.i = load i32, ptr %12, align 4, !alias.scope !2185, !noalias !2186, !noundef !32
  %_4.i.i.i.i.i.i = load i32, ptr %11, align 4, !alias.scope !2189, !noalias !2190, !noundef !32
  %_0.i.i.i = icmp slt i32 %_3.i.i.i.i.i.i, %_4.i.i.i.i.i.i
  %14 = tail call i32 @llvm.smax.i32(i32 %_3.i.i.i.i.i.i, i32 %_4.i.i.i.i.i.i)
  store i32 %14, ptr %13, align 4, !alias.scope !2159, !noalias !2191
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2192)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2195)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2197)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2200)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2202)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2205)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2207)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2210)
  %_3.i.i.i.i.i12.i = load i32, ptr %right.sroa.0.010.i.i, align 4, !alias.scope !2212, !noalias !2213, !noundef !32
  %_4.i.i.i.i.i13.i = load i32, ptr %_2059.i.i, align 4, !alias.scope !2216, !noalias !2217, !noundef !32
  %_0.i.i14.i = icmp slt i32 %_3.i.i.i.i.i12.i, %_4.i.i.i.i.i13.i
  %consume_left.i.i = xor i1 %_0.i.i14.i, true
  %15 = tail call i32 @llvm.smin.i32(i32 %_3.i.i.i.i.i12.i, i32 %_4.i.i.i.i.i13.i)
  store i32 %15, ptr %_2511.i.i, align 4, !alias.scope !2159, !noalias !2218
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
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %merge_state.sroa.13.0.i, ptr align 4 %merge_state.sroa.0.0.i, i64 %18, i1 false), !alias.scope !2164, !noalias !2219
  br label %_ZN4core5slice4sort6stable5merge5merge17h9f4203c273633beaE.exit

_ZN4core5slice4sort6stable5merge5merge17h9f4203c273633beaE.exit: ; preds = %bb7.i, %bb2.i, %bb16.i40
  %_39.i = shl nuw nsw i64 %merged_len, 1
  %_38.i = or disjoint i64 %_39.i, 1
  br label %_ZN4core5slice4sort6stable5drift13logical_merge17h6322235afc7b8693E.exit

bb16.i:                                           ; preds = %bb5.i
  %_37.i = getelementptr inbounds nuw i32, ptr %_98, i64 %_50
  %self.i41 = or i64 %_51, 1
  %19 = tail call range(i64 3, 64) i64 @llvm.ctlz.i64(i64 %self.i41, i1 true)
  %20 = trunc nuw nsw i64 %19 to i32
  %log.i42 = shl nuw nsw i32 %20, 1
  %limit.i43 = xor i32 %log.i42, 126
; call core::slice::sort::stable::quicksort::quicksort
  tail call void @_ZN4core5slice4sort6stable9quicksort9quicksort17h960dc2f6c4bef9a8E(ptr noalias noundef nonnull align 4 %_37.i, i64 noundef range(i64 0, 2305843009213693952) %_51, ptr noalias noundef nonnull align 4 %scratch.0, i64 noundef range(i64 0, 2305843009213693952) %scratch.1, i32 noundef %limit.i43, ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable_or_null(4) null, ptr noalias noundef nonnull align 8 dereferenceable(8) %is_less) #27
  br label %bb7.i

_ZN4core5slice4sort6stable5drift13logical_merge17h6322235afc7b8693E.exit: ; preds = %bb9.i, %_ZN4core5slice4sort6stable5merge5merge17h9f4203c273633beaE.exit
  %_0.sroa.0.0.i = phi i64 [ %_38.i, %_ZN4core5slice4sort6stable5merge5merge17h9f4203c273633beaE.exit ], [ %_40.i, %bb9.i ]
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
  tail call void @_ZN4core5slice4sort6stable9quicksort9quicksort17h960dc2f6c4bef9a8E(ptr noalias noundef nonnull align 4 %v.0, i64 noundef range(i64 0, 2305843009213693952) %v.1, ptr noalias noundef nonnull align 4 %scratch.0, i64 noundef range(i64 0, 2305843009213693952) %scratch.1, i32 noundef %limit.i46, ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable_or_null(4) null, ptr noalias noundef align 8 dereferenceable(8) %is_less) #27
  br label %bb21

bb21:                                             ; preds = %bb20, %bb18
  call void @llvm.lifetime.end.p0(i64 66, ptr nonnull %desired_depth_storage)
  call void @llvm.lifetime.end.p0(i64 528, ptr nonnull %run_storage)
  br label %bb22

bb22:                                             ; preds = %start, %bb21
  ret void
}

; core::slice::sort::stable::drift::sort
; Function Attrs: nonlazybind uwtable
define void @_ZN4core5slice4sort6stable5drift4sort17h4e9143ba5e79da94E(ptr noalias noundef nonnull align 4 %v.0, i64 noundef range(i64 0, 2305843009213693952) %v.1, ptr noalias noundef nonnull align 4 %scratch.0, i64 noundef range(i64 0, 2305843009213693952) %scratch.1, i1 noundef zeroext %eager_sort, ptr noalias noundef align 8 dereferenceable(8) %is_less) unnamed_addr #1 personality ptr @rust_eh_personality {
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
  %scan_idx.sroa.0.0 = phi i64 [ 0, %bb5 ], [ %13, %bb19 ]
  %stack_len.sroa.0.0 = phi i64 [ 0, %bb5 ], [ %12, %bb19 ]
  %_22 = icmp ult i64 %scan_idx.sroa.0.0, %v.1
  br i1 %_22, label %bb30, label %bb10

bb10:                                             ; preds = %bb6, %bb30
  %desired_depth.sroa.0.0 = phi i8 [ %4, %bb30 ], [ 0, %bb6 ]
  %next_run.sroa.0.0 = phi i64 [ %2, %bb30 ], [ 1, %bb6 ]
  %_3743 = icmp ugt i64 %stack_len.sroa.0.0, 1
  br i1 %_3743, label %bb12, label %bb17

bb30:                                             ; preds = %bb6
  %new_len = sub nuw nsw i64 %v.1, %scan_idx.sroa.0.0
  %_82 = getelementptr inbounds nuw float, ptr %v.0, i64 %scan_idx.sroa.0.0
; call core::slice::sort::stable::drift::create_run
  %2 = tail call noundef i64 @_ZN4core5slice4sort6stable5drift10create_run17h4119af24d47959b6E(ptr noalias noundef nonnull align 4 %_82, i64 noundef %new_len, ptr noalias noundef nonnull align 4 %scratch.0, i64 noundef %scratch.1, i64 noundef %min_good_run_len.sroa.0.0, i1 noundef zeroext %eager_sort, ptr noalias noundef align 8 dereferenceable(8) %is_less)
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

bb12:                                             ; preds = %bb10, %_ZN4core5slice4sort6stable5drift13logical_merge17h6ad0a5d918e08348E.exit
  %stack_len.sroa.0.145 = phi i64 [ %count, %_ZN4core5slice4sort6stable5drift13logical_merge17h6ad0a5d918e08348E.exit ], [ %stack_len.sroa.0.0, %bb10 ]
  %prev_run.sroa.0.144 = phi i64 [ %_0.sroa.0.0.i, %_ZN4core5slice4sort6stable5drift13logical_merge17h6ad0a5d918e08348E.exit ], [ %prev_run.sroa.0.0, %bb10 ]
  %count = add i64 %stack_len.sroa.0.145, -1
  %_41 = getelementptr inbounds nuw i8, ptr %desired_depth_storage, i64 %count
  %_40 = load i8, ptr %_41, align 1, !noundef !32
  %_39.not = icmp ult i8 %_40, %desired_depth.sroa.0.0
  br i1 %_39.not, label %bb17, label %bb13

bb17:                                             ; preds = %_ZN4core5slice4sort6stable5drift13logical_merge17h6ad0a5d918e08348E.exit, %bb12, %bb10
  %prev_run.sroa.0.1.lcssa = phi i64 [ %prev_run.sroa.0.0, %bb10 ], [ %_0.sroa.0.0.i, %_ZN4core5slice4sort6stable5drift13logical_merge17h6ad0a5d918e08348E.exit ], [ %prev_run.sroa.0.144, %bb12 ]
  %stack_len.sroa.0.1.lcssa = phi i64 [ %stack_len.sroa.0.0, %bb10 ], [ 1, %_ZN4core5slice4sort6stable5drift13logical_merge17h6ad0a5d918e08348E.exit ], [ %stack_len.sroa.0.145, %bb12 ]
  %_59 = getelementptr inbounds nuw i64, ptr %run_storage, i64 %stack_len.sroa.0.1.lcssa
  store i64 %prev_run.sroa.0.1.lcssa, ptr %_59, align 8
  %_61 = getelementptr inbounds nuw i8, ptr %desired_depth_storage, i64 %stack_len.sroa.0.1.lcssa
  store i8 %desired_depth.sroa.0.0, ptr %_61, align 1
  br i1 %_22, label %bb19, label %bb18

bb13:                                             ; preds = %bb12
  %_46 = getelementptr inbounds nuw i64, ptr %run_storage, i64 %count
  %left10 = load i64, ptr %_46, align 8, !noundef !32
  %_50 = lshr i64 %left10, 1
  %_51 = lshr i64 %prev_run.sroa.0.144, 1
  %merged_len = add nuw i64 %_50, %_51
  %merge_start_idx = sub i64 %scan_idx.sroa.0.0, %merged_len
  %_98 = getelementptr inbounds nuw float, ptr %v.0, i64 %merge_start_idx
  %can_fit_in_scratch.i = icmp samesign ugt i64 %merged_len, %scratch.1
  %_22.i = and i64 %prev_run.sroa.0.144, 1
  %_10.not.i = icmp eq i64 %_22.i, 0
  %5 = or i64 %left10, %prev_run.sroa.0.144
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
  br label %_ZN4core5slice4sort6stable5drift13logical_merge17h6ad0a5d918e08348E.exit

bb5.i:                                            ; preds = %bb11.i, %bb3.i
  br i1 %_10.not.i, label %bb16.i, label %bb7.i

bb11.i:                                           ; preds = %bb3.i
  %self.i = or i64 %_50, 1
  %8 = tail call range(i64 3, 64) i64 @llvm.ctlz.i64(i64 %self.i, i1 true)
  %9 = trunc nuw nsw i64 %8 to i32
  %log.i = shl nuw nsw i32 %9, 1
  %limit.i = xor i32 %log.i, 126
; call core::slice::sort::stable::quicksort::quicksort
  tail call void @_ZN4core5slice4sort6stable9quicksort9quicksort17h39c332b52467a176E(ptr noalias noundef nonnull align 4 %_98, i64 noundef range(i64 0, 2305843009213693952) %_50, ptr noalias noundef nonnull align 4 %scratch.0, i64 noundef range(i64 0, 2305843009213693952) %scratch.1, i32 noundef %limit.i, ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable_or_null(4) null, ptr noalias noundef nonnull align 8 dereferenceable(8) %is_less) #27
  br label %bb5.i

bb7.i:                                            ; preds = %bb16.i, %bb5.i
; call core::slice::sort::stable::merge::merge
  tail call void @_ZN4core5slice4sort6stable5merge5merge17hf2e29e4ca5e716cbE(ptr noalias noundef nonnull align 4 %_98, i64 noundef range(i64 0, 2305843009213693952) %merged_len, ptr noalias noundef nonnull align 4 %scratch.0, i64 noundef range(i64 0, 2305843009213693952) %scratch.1, i64 noundef %_50, ptr noalias nonnull align 8 poison)
  %_39.i = shl nuw nsw i64 %merged_len, 1
  %_38.i = or disjoint i64 %_39.i, 1
  br label %_ZN4core5slice4sort6stable5drift13logical_merge17h6ad0a5d918e08348E.exit

bb16.i:                                           ; preds = %bb5.i
  %_37.i = getelementptr inbounds nuw float, ptr %_98, i64 %_50
  %self.i37 = or i64 %_51, 1
  %10 = tail call range(i64 3, 64) i64 @llvm.ctlz.i64(i64 %self.i37, i1 true)
  %11 = trunc nuw nsw i64 %10 to i32
  %log.i38 = shl nuw nsw i32 %11, 1
  %limit.i39 = xor i32 %log.i38, 126
; call core::slice::sort::stable::quicksort::quicksort
  tail call void @_ZN4core5slice4sort6stable9quicksort9quicksort17h39c332b52467a176E(ptr noalias noundef nonnull align 4 %_37.i, i64 noundef range(i64 0, 2305843009213693952) %_51, ptr noalias noundef nonnull align 4 %scratch.0, i64 noundef range(i64 0, 2305843009213693952) %scratch.1, i32 noundef %limit.i39, ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable_or_null(4) null, ptr noalias noundef nonnull align 8 dereferenceable(8) %is_less) #27
  br label %bb7.i

_ZN4core5slice4sort6stable5drift13logical_merge17h6ad0a5d918e08348E.exit: ; preds = %bb9.i, %bb7.i
  %_0.sroa.0.0.i = phi i64 [ %_38.i, %bb7.i ], [ %_40.i, %bb9.i ]
  %_37 = icmp ugt i64 %count, 1
  br i1 %_37, label %bb12, label %bb17

bb19:                                             ; preds = %bb17
  %12 = add i64 %stack_len.sroa.0.1.lcssa, 1
  %_65 = lshr i64 %next_run.sroa.0.0, 1
  %13 = add nuw i64 %_65, %scan_idx.sroa.0.0
  br label %bb6

bb18:                                             ; preds = %bb17
  %_99 = and i64 %prev_run.sroa.0.1.lcssa, 1
  %_66.not = icmp eq i64 %_99, 0
  br i1 %_66.not, label %bb20, label %bb21

bb20:                                             ; preds = %bb18
  %self.i40 = or i64 %v.1, 1
  %14 = tail call range(i64 3, 64) i64 @llvm.ctlz.i64(i64 %self.i40, i1 true)
  %15 = trunc nuw nsw i64 %14 to i32
  %log.i41 = shl nuw nsw i32 %15, 1
  %limit.i42 = xor i32 %log.i41, 126
; call core::slice::sort::stable::quicksort::quicksort
  tail call void @_ZN4core5slice4sort6stable9quicksort9quicksort17h39c332b52467a176E(ptr noalias noundef nonnull align 4 %v.0, i64 noundef range(i64 0, 2305843009213693952) %v.1, ptr noalias noundef nonnull align 4 %scratch.0, i64 noundef range(i64 0, 2305843009213693952) %scratch.1, i32 noundef %limit.i42, ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable_or_null(4) null, ptr noalias noundef align 8 dereferenceable(8) %is_less) #27
  br label %bb21

bb21:                                             ; preds = %bb20, %bb18
  call void @llvm.lifetime.end.p0(i64 66, ptr nonnull %desired_depth_storage)
  call void @llvm.lifetime.end.p0(i64 528, ptr nonnull %run_storage)
  br label %bb22

bb22:                                             ; preds = %start, %bb21
  ret void
}

; core::slice::sort::stable::drift::sort
; Function Attrs: nonlazybind uwtable
define void @_ZN4core5slice4sort6stable5drift4sort17hf2c114673cd91d61E(ptr noalias noundef nonnull align 4 %v.0, i64 noundef range(i64 0, 2305843009213693952) %v.1, ptr noalias noundef nonnull align 4 %scratch.0, i64 noundef range(i64 0, 2305843009213693952) %scratch.1, i1 noundef zeroext %eager_sort, ptr noalias noundef align 8 dereferenceable(8) %is_less) unnamed_addr #1 personality ptr @rust_eh_personality {
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
  %scan_idx.sroa.0.0 = phi i64 [ 0, %bb5 ], [ %13, %bb19 ]
  %stack_len.sroa.0.0 = phi i64 [ 0, %bb5 ], [ %12, %bb19 ]
  %_22 = icmp ult i64 %scan_idx.sroa.0.0, %v.1
  br i1 %_22, label %bb30, label %bb10

bb10:                                             ; preds = %bb6, %bb30
  %desired_depth.sroa.0.0 = phi i8 [ %4, %bb30 ], [ 0, %bb6 ]
  %next_run.sroa.0.0 = phi i64 [ %2, %bb30 ], [ 1, %bb6 ]
  %_3743 = icmp ugt i64 %stack_len.sroa.0.0, 1
  br i1 %_3743, label %bb12, label %bb17

bb30:                                             ; preds = %bb6
  %new_len = sub nuw nsw i64 %v.1, %scan_idx.sroa.0.0
  %_82 = getelementptr inbounds nuw float, ptr %v.0, i64 %scan_idx.sroa.0.0
; call core::slice::sort::stable::drift::create_run
  %2 = tail call noundef i64 @_ZN4core5slice4sort6stable5drift10create_run17h06c467a4bb8b67c5E(ptr noalias noundef nonnull align 4 %_82, i64 noundef %new_len, ptr noalias noundef nonnull align 4 %scratch.0, i64 noundef %scratch.1, i64 noundef %min_good_run_len.sroa.0.0, i1 noundef zeroext %eager_sort, ptr noalias noundef align 8 dereferenceable(8) %is_less)
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

bb12:                                             ; preds = %bb10, %_ZN4core5slice4sort6stable5drift13logical_merge17hea58ed17d87957acE.exit
  %stack_len.sroa.0.145 = phi i64 [ %count, %_ZN4core5slice4sort6stable5drift13logical_merge17hea58ed17d87957acE.exit ], [ %stack_len.sroa.0.0, %bb10 ]
  %prev_run.sroa.0.144 = phi i64 [ %_0.sroa.0.0.i, %_ZN4core5slice4sort6stable5drift13logical_merge17hea58ed17d87957acE.exit ], [ %prev_run.sroa.0.0, %bb10 ]
  %count = add i64 %stack_len.sroa.0.145, -1
  %_41 = getelementptr inbounds nuw i8, ptr %desired_depth_storage, i64 %count
  %_40 = load i8, ptr %_41, align 1, !noundef !32
  %_39.not = icmp ult i8 %_40, %desired_depth.sroa.0.0
  br i1 %_39.not, label %bb17, label %bb13

bb17:                                             ; preds = %_ZN4core5slice4sort6stable5drift13logical_merge17hea58ed17d87957acE.exit, %bb12, %bb10
  %prev_run.sroa.0.1.lcssa = phi i64 [ %prev_run.sroa.0.0, %bb10 ], [ %_0.sroa.0.0.i, %_ZN4core5slice4sort6stable5drift13logical_merge17hea58ed17d87957acE.exit ], [ %prev_run.sroa.0.144, %bb12 ]
  %stack_len.sroa.0.1.lcssa = phi i64 [ %stack_len.sroa.0.0, %bb10 ], [ 1, %_ZN4core5slice4sort6stable5drift13logical_merge17hea58ed17d87957acE.exit ], [ %stack_len.sroa.0.145, %bb12 ]
  %_59 = getelementptr inbounds nuw i64, ptr %run_storage, i64 %stack_len.sroa.0.1.lcssa
  store i64 %prev_run.sroa.0.1.lcssa, ptr %_59, align 8
  %_61 = getelementptr inbounds nuw i8, ptr %desired_depth_storage, i64 %stack_len.sroa.0.1.lcssa
  store i8 %desired_depth.sroa.0.0, ptr %_61, align 1
  br i1 %_22, label %bb19, label %bb18

bb13:                                             ; preds = %bb12
  %_46 = getelementptr inbounds nuw i64, ptr %run_storage, i64 %count
  %left10 = load i64, ptr %_46, align 8, !noundef !32
  %_50 = lshr i64 %left10, 1
  %_51 = lshr i64 %prev_run.sroa.0.144, 1
  %merged_len = add nuw i64 %_50, %_51
  %merge_start_idx = sub i64 %scan_idx.sroa.0.0, %merged_len
  %_98 = getelementptr inbounds nuw float, ptr %v.0, i64 %merge_start_idx
  %can_fit_in_scratch.i = icmp samesign ugt i64 %merged_len, %scratch.1
  %_22.i = and i64 %prev_run.sroa.0.144, 1
  %_10.not.i = icmp eq i64 %_22.i, 0
  %5 = or i64 %left10, %prev_run.sroa.0.144
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
  br label %_ZN4core5slice4sort6stable5drift13logical_merge17hea58ed17d87957acE.exit

bb5.i:                                            ; preds = %bb11.i, %bb3.i
  br i1 %_10.not.i, label %bb16.i, label %bb7.i

bb11.i:                                           ; preds = %bb3.i
  %self.i = or i64 %_50, 1
  %8 = tail call range(i64 3, 64) i64 @llvm.ctlz.i64(i64 %self.i, i1 true)
  %9 = trunc nuw nsw i64 %8 to i32
  %log.i = shl nuw nsw i32 %9, 1
  %limit.i = xor i32 %log.i, 126
; call core::slice::sort::stable::quicksort::quicksort
  tail call void @_ZN4core5slice4sort6stable9quicksort9quicksort17h23ee1f5ec6e131a2E(ptr noalias noundef nonnull align 4 %_98, i64 noundef range(i64 0, 2305843009213693952) %_50, ptr noalias noundef nonnull align 4 %scratch.0, i64 noundef range(i64 0, 2305843009213693952) %scratch.1, i32 noundef %limit.i, ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable_or_null(4) null, ptr noalias noundef nonnull align 8 dereferenceable(8) %is_less) #27
  br label %bb5.i

bb7.i:                                            ; preds = %bb16.i, %bb5.i
; call core::slice::sort::stable::merge::merge
  tail call void @_ZN4core5slice4sort6stable5merge5merge17hb18309dad419ab3cE(ptr noalias noundef nonnull align 4 %_98, i64 noundef range(i64 0, 2305843009213693952) %merged_len, ptr noalias noundef nonnull align 4 %scratch.0, i64 noundef range(i64 0, 2305843009213693952) %scratch.1, i64 noundef %_50, ptr noalias nonnull align 8 poison)
  %_39.i = shl nuw nsw i64 %merged_len, 1
  %_38.i = or disjoint i64 %_39.i, 1
  br label %_ZN4core5slice4sort6stable5drift13logical_merge17hea58ed17d87957acE.exit

bb16.i:                                           ; preds = %bb5.i
  %_37.i = getelementptr inbounds nuw float, ptr %_98, i64 %_50
  %self.i37 = or i64 %_51, 1
  %10 = tail call range(i64 3, 64) i64 @llvm.ctlz.i64(i64 %self.i37, i1 true)
  %11 = trunc nuw nsw i64 %10 to i32
  %log.i38 = shl nuw nsw i32 %11, 1
  %limit.i39 = xor i32 %log.i38, 126
; call core::slice::sort::stable::quicksort::quicksort
  tail call void @_ZN4core5slice4sort6stable9quicksort9quicksort17h23ee1f5ec6e131a2E(ptr noalias noundef nonnull align 4 %_37.i, i64 noundef range(i64 0, 2305843009213693952) %_51, ptr noalias noundef nonnull align 4 %scratch.0, i64 noundef range(i64 0, 2305843009213693952) %scratch.1, i32 noundef %limit.i39, ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable_or_null(4) null, ptr noalias noundef nonnull align 8 dereferenceable(8) %is_less) #27
  br label %bb7.i

_ZN4core5slice4sort6stable5drift13logical_merge17hea58ed17d87957acE.exit: ; preds = %bb9.i, %bb7.i
  %_0.sroa.0.0.i = phi i64 [ %_38.i, %bb7.i ], [ %_40.i, %bb9.i ]
  %_37 = icmp ugt i64 %count, 1
  br i1 %_37, label %bb12, label %bb17

bb19:                                             ; preds = %bb17
  %12 = add i64 %stack_len.sroa.0.1.lcssa, 1
  %_65 = lshr i64 %next_run.sroa.0.0, 1
  %13 = add nuw i64 %_65, %scan_idx.sroa.0.0
  br label %bb6

bb18:                                             ; preds = %bb17
  %_99 = and i64 %prev_run.sroa.0.1.lcssa, 1
  %_66.not = icmp eq i64 %_99, 0
  br i1 %_66.not, label %bb20, label %bb21

bb20:                                             ; preds = %bb18
  %self.i40 = or i64 %v.1, 1
  %14 = tail call range(i64 3, 64) i64 @llvm.ctlz.i64(i64 %self.i40, i1 true)
  %15 = trunc nuw nsw i64 %14 to i32
  %log.i41 = shl nuw nsw i32 %15, 1
  %limit.i42 = xor i32 %log.i41, 126
; call core::slice::sort::stable::quicksort::quicksort
  tail call void @_ZN4core5slice4sort6stable9quicksort9quicksort17h23ee1f5ec6e131a2E(ptr noalias noundef nonnull align 4 %v.0, i64 noundef range(i64 0, 2305843009213693952) %v.1, ptr noalias noundef nonnull align 4 %scratch.0, i64 noundef range(i64 0, 2305843009213693952) %scratch.1, i32 noundef %limit.i42, ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable_or_null(4) null, ptr noalias noundef align 8 dereferenceable(8) %is_less) #27
  br label %bb21

bb21:                                             ; preds = %bb20, %bb18
  call void @llvm.lifetime.end.p0(i64 66, ptr nonnull %desired_depth_storage)
  call void @llvm.lifetime.end.p0(i64 528, ptr nonnull %run_storage)
  br label %bb22

bb22:                                             ; preds = %start, %bb21
  ret void
}

; core::slice::sort::stable::merge::MergeState<T>::merge_down
; Function Attrs: nonlazybind uwtable
define void @"_ZN4core5slice4sort6stable5merge19MergeState$LT$T$GT$10merge_down17h16366ab7944e4645E"(ptr noalias noundef align 8 captures(none) dereferenceable(24) %self, ptr noundef readnone captures(address) %left_end, ptr noundef readnone captures(address) %right_end, ptr noundef writeonly captures(none) %0, ptr noalias noundef readnone align 8 captures(none) dereferenceable(8) %is_less) unnamed_addr #1 {
start:
  %1 = getelementptr inbounds nuw i8, ptr %self, i64 16
  %2 = getelementptr inbounds nuw i8, ptr %self, i64 8
  %.promoted = load ptr, ptr %1, align 8
  %.promoted8 = load ptr, ptr %2, align 8
  br label %bb1

bb1:                                              ; preds = %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf5b8f37855ac0c3dE.exit", %start
  %_219 = phi ptr [ %.promoted8, %start ], [ %_21, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf5b8f37855ac0c3dE.exit" ]
  %_187 = phi ptr [ %.promoted, %start ], [ %_18, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf5b8f37855ac0c3dE.exit" ]
  %out.sroa.0.0 = phi ptr [ %0, %start ], [ %5, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf5b8f37855ac0c3dE.exit" ]
  %3 = getelementptr inbounds i8, ptr %_187, i64 -4
  %4 = getelementptr inbounds i8, ptr %_219, i64 -4
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2224)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2227)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2229)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2232)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2234)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2237)
  %_4.i.i.i = load float, ptr %4, align 4, !alias.scope !2239, !noalias !2240, !noundef !32
  %_5.i.i.i = load float, ptr %3, align 4, !alias.scope !2240, !noalias !2239, !noundef !32
  %.not.i.i.i = fcmp uno float %_4.i.i.i, %_5.i.i.i
  br i1 %.not.i.i.i, label %bb2.i.i.i, label %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf5b8f37855ac0c3dE.exit", !prof !35

bb2.i.i.i:                                        ; preds = %bb1
; call core::option::unwrap_failed
  tail call void @_ZN4core6option13unwrap_failed17hef2534b77b89c04fE(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_b0e33ba48ef5fa15e44a55a18226b5ac) #24, !noalias !2241
  unreachable

"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf5b8f37855ac0c3dE.exit": ; preds = %bb1
  %5 = getelementptr inbounds i8, ptr %out.sroa.0.0, i64 -4
  %_0.i = fcmp olt float %_4.i.i.i, %_5.i.i.i
  %. = select i1 %_0.i, ptr %3, ptr %4
  %6 = load i32, ptr %., align 4
  store i32 %6, ptr %5, align 4
  %_20 = xor i1 %_0.i, true
  %count = zext i1 %_20 to i64
  %_18 = getelementptr inbounds nuw float, ptr %3, i64 %count
  store ptr %_18, ptr %1, align 8
  %count4 = zext i1 %_0.i to i64
  %_21 = getelementptr inbounds nuw float, ptr %4, i64 %count4
  store ptr %_21, ptr %2, align 8
  %_23 = icmp eq ptr %_18, %left_end
  %_26 = icmp eq ptr %_21, %right_end
  %or.cond = select i1 %_23, i1 true, i1 %_26
  br i1 %or.cond, label %bb7, label %bb1

bb7:                                              ; preds = %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf5b8f37855ac0c3dE.exit"
  ret void
}

; core::slice::sort::stable::merge::MergeState<T>::merge_down
; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(read, argmem: readwrite, inaccessiblemem: readwrite) uwtable
define void @"_ZN4core5slice4sort6stable5merge19MergeState$LT$T$GT$10merge_down17h542e4881ffcd209aE"(ptr noalias noundef align 8 captures(none) dereferenceable(24) %self, ptr noundef readnone captures(address) %left_end, ptr noundef readnone captures(address) %right_end, ptr noundef writeonly captures(none) %0, ptr noalias noundef readnone align 8 captures(none) dereferenceable(8) %is_less) unnamed_addr #7 {
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2242)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2245)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2247)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2250)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2252)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2255)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2257)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2260)
  %_3.i.i.i.i = load i32, ptr %4, align 4, !alias.scope !2262, !noalias !2263, !noundef !32
  %_4.i.i.i.i = load i32, ptr %3, align 4, !alias.scope !2263, !noalias !2262, !noundef !32
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

; core::slice::sort::stable::merge::MergeState<T>::merge_down
; Function Attrs: nonlazybind uwtable
define void @"_ZN4core5slice4sort6stable5merge19MergeState$LT$T$GT$10merge_down17hd94ddbcb399da1dfE"(ptr noalias noundef align 8 captures(none) dereferenceable(24) %self, ptr noundef readnone captures(address) %left_end, ptr noundef readnone captures(address) %right_end, ptr noundef writeonly captures(none) %0, ptr noalias noundef readnone align 8 captures(none) dereferenceable(8) %is_less) unnamed_addr #1 {
start:
  %1 = getelementptr inbounds nuw i8, ptr %self, i64 16
  %2 = getelementptr inbounds nuw i8, ptr %self, i64 8
  %.promoted = load ptr, ptr %1, align 8
  %.promoted8 = load ptr, ptr %2, align 8
  br label %bb1

bb1:                                              ; preds = %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfaa75802b1959b0aE.exit", %start
  %_219 = phi ptr [ %.promoted8, %start ], [ %_21, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfaa75802b1959b0aE.exit" ]
  %_187 = phi ptr [ %.promoted, %start ], [ %_18, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfaa75802b1959b0aE.exit" ]
  %out.sroa.0.0 = phi ptr [ %0, %start ], [ %5, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfaa75802b1959b0aE.exit" ]
  %3 = getelementptr inbounds i8, ptr %_187, i64 -4
  %4 = getelementptr inbounds i8, ptr %_219, i64 -4
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2264)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2267)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2269)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2272)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2274)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2277)
  %_4.i.i.i = load float, ptr %4, align 4, !alias.scope !2279, !noalias !2280, !noundef !32
  %_5.i.i.i = load float, ptr %3, align 4, !alias.scope !2280, !noalias !2279, !noundef !32
  %.not.i.i.i = fcmp uno float %_4.i.i.i, %_5.i.i.i
  br i1 %.not.i.i.i, label %bb2.i.i.i, label %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfaa75802b1959b0aE.exit", !prof !35

bb2.i.i.i:                                        ; preds = %bb1
; call core::option::unwrap_failed
  tail call void @_ZN4core6option13unwrap_failed17hef2534b77b89c04fE(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_4a4e7fec44b84c1472b04d0c86f3e1b7) #24, !noalias !2281
  unreachable

"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfaa75802b1959b0aE.exit": ; preds = %bb1
  %5 = getelementptr inbounds i8, ptr %out.sroa.0.0, i64 -4
  %_0.i = fcmp olt float %_4.i.i.i, %_5.i.i.i
  %. = select i1 %_0.i, ptr %3, ptr %4
  %6 = load i32, ptr %., align 4
  store i32 %6, ptr %5, align 4
  %_20 = xor i1 %_0.i, true
  %count = zext i1 %_20 to i64
  %_18 = getelementptr inbounds nuw float, ptr %3, i64 %count
  store ptr %_18, ptr %1, align 8
  %count4 = zext i1 %_0.i to i64
  %_21 = getelementptr inbounds nuw float, ptr %4, i64 %count4
  store ptr %_21, ptr %2, align 8
  %_23 = icmp eq ptr %_18, %left_end
  %_26 = icmp eq ptr %_21, %right_end
  %or.cond = select i1 %_23, i1 true, i1 %_26
  br i1 %or.cond, label %bb7, label %bb1

bb7:                                              ; preds = %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfaa75802b1959b0aE.exit"
  ret void
}

; core::slice::sort::stable::merge::MergeState<T>::merge_up
; Function Attrs: nonlazybind uwtable
define void @"_ZN4core5slice4sort6stable5merge19MergeState$LT$T$GT$8merge_up17h4d9850fc77e0e29aE"(ptr noalias noundef align 8 captures(none) dereferenceable(24) %self, ptr noundef readonly captures(address) %0, ptr noundef readnone captures(address) %right_end, ptr noalias noundef readnone align 8 captures(none) dereferenceable(8) %is_less) unnamed_addr #1 {
start:
  %1 = getelementptr inbounds nuw i8, ptr %self, i64 8
  %_9 = load ptr, ptr %1, align 8, !noundef !32
  %self.promoted = load ptr, ptr %self, align 8
  %_76 = icmp ne ptr %self.promoted, %_9
  %_107 = icmp ne ptr %0, %right_end
  %or.cond8 = and i1 %_76, %_107
  br i1 %or.cond8, label %bb3.lr.ph, label %bb9

bb3.lr.ph:                                        ; preds = %start
  %2 = getelementptr inbounds nuw i8, ptr %self, i64 16
  %.promoted = load ptr, ptr %2, align 8
  br label %bb3

bb9:                                              ; preds = %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf5b8f37855ac0c3dE.exit", %start
  ret void

bb3:                                              ; preds = %bb3.lr.ph, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf5b8f37855ac0c3dE.exit"
  %_2511 = phi ptr [ %.promoted, %bb3.lr.ph ], [ %_25, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf5b8f37855ac0c3dE.exit" ]
  %right.sroa.0.010 = phi ptr [ %0, %bb3.lr.ph ], [ %_23, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf5b8f37855ac0c3dE.exit" ]
  %_2059 = phi ptr [ %self.promoted, %bb3.lr.ph ], [ %_20, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf5b8f37855ac0c3dE.exit" ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2282)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2285)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2287)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2290)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2292)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2295)
  %_4.i.i.i = load float, ptr %right.sroa.0.010, align 4, !alias.scope !2297, !noalias !2298, !noundef !32
  %_5.i.i.i = load float, ptr %_2059, align 4, !alias.scope !2298, !noalias !2297, !noundef !32
  %.not.i.i.i = fcmp uno float %_4.i.i.i, %_5.i.i.i
  br i1 %.not.i.i.i, label %bb2.i.i.i, label %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf5b8f37855ac0c3dE.exit", !prof !35

bb2.i.i.i:                                        ; preds = %bb3
; call core::option::unwrap_failed
  tail call void @_ZN4core6option13unwrap_failed17hef2534b77b89c04fE(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_b0e33ba48ef5fa15e44a55a18226b5ac) #24, !noalias !2299
  unreachable

"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf5b8f37855ac0c3dE.exit": ; preds = %bb3
  %_0.i = fcmp olt float %_4.i.i.i, %_5.i.i.i
  %consume_left = xor i1 %_0.i, true
  %src.sroa.0.0 = select i1 %_0.i, ptr %right.sroa.0.010, ptr %_2059
  %3 = load i32, ptr %src.sroa.0.0, align 4
  store i32 %3, ptr %_2511, align 4
  %count = zext i1 %consume_left to i64
  %_20 = getelementptr inbounds nuw float, ptr %_2059, i64 %count
  store ptr %_20, ptr %self, align 8
  %count2 = zext i1 %_0.i to i64
  %_23 = getelementptr inbounds nuw float, ptr %right.sroa.0.010, i64 %count2
  %_25 = getelementptr inbounds nuw i8, ptr %_2511, i64 4
  store ptr %_25, ptr %2, align 8
  %_7 = icmp ne ptr %_20, %_9
  %_10 = icmp ne ptr %_23, %right_end
  %or.cond = select i1 %_7, i1 %_10, i1 false
  br i1 %or.cond, label %bb3, label %bb9
}

; core::slice::sort::stable::merge::MergeState<T>::merge_up
; Function Attrs: nonlazybind uwtable
define void @"_ZN4core5slice4sort6stable5merge19MergeState$LT$T$GT$8merge_up17h7ebf91b44de539cfE"(ptr noalias noundef align 8 captures(none) dereferenceable(24) %self, ptr noundef readonly captures(address) %0, ptr noundef readnone captures(address) %right_end, ptr noalias noundef readnone align 8 captures(none) dereferenceable(8) %is_less) unnamed_addr #1 {
start:
  %1 = getelementptr inbounds nuw i8, ptr %self, i64 8
  %_9 = load ptr, ptr %1, align 8, !noundef !32
  %self.promoted = load ptr, ptr %self, align 8
  %_76 = icmp ne ptr %self.promoted, %_9
  %_107 = icmp ne ptr %0, %right_end
  %or.cond8 = and i1 %_76, %_107
  br i1 %or.cond8, label %bb3.lr.ph, label %bb9

bb3.lr.ph:                                        ; preds = %start
  %2 = getelementptr inbounds nuw i8, ptr %self, i64 16
  %.promoted = load ptr, ptr %2, align 8
  br label %bb3

bb9:                                              ; preds = %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfaa75802b1959b0aE.exit", %start
  ret void

bb3:                                              ; preds = %bb3.lr.ph, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfaa75802b1959b0aE.exit"
  %_2511 = phi ptr [ %.promoted, %bb3.lr.ph ], [ %_25, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfaa75802b1959b0aE.exit" ]
  %right.sroa.0.010 = phi ptr [ %0, %bb3.lr.ph ], [ %_23, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfaa75802b1959b0aE.exit" ]
  %_2059 = phi ptr [ %self.promoted, %bb3.lr.ph ], [ %_20, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfaa75802b1959b0aE.exit" ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2300)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2303)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2305)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2308)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2310)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2313)
  %_4.i.i.i = load float, ptr %right.sroa.0.010, align 4, !alias.scope !2315, !noalias !2316, !noundef !32
  %_5.i.i.i = load float, ptr %_2059, align 4, !alias.scope !2316, !noalias !2315, !noundef !32
  %.not.i.i.i = fcmp uno float %_4.i.i.i, %_5.i.i.i
  br i1 %.not.i.i.i, label %bb2.i.i.i, label %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfaa75802b1959b0aE.exit", !prof !35

bb2.i.i.i:                                        ; preds = %bb3
; call core::option::unwrap_failed
  tail call void @_ZN4core6option13unwrap_failed17hef2534b77b89c04fE(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_4a4e7fec44b84c1472b04d0c86f3e1b7) #24, !noalias !2317
  unreachable

"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfaa75802b1959b0aE.exit": ; preds = %bb3
  %_0.i = fcmp olt float %_4.i.i.i, %_5.i.i.i
  %consume_left = xor i1 %_0.i, true
  %src.sroa.0.0 = select i1 %_0.i, ptr %right.sroa.0.010, ptr %_2059
  %3 = load i32, ptr %src.sroa.0.0, align 4
  store i32 %3, ptr %_2511, align 4
  %count = zext i1 %consume_left to i64
  %_20 = getelementptr inbounds nuw float, ptr %_2059, i64 %count
  store ptr %_20, ptr %self, align 8
  %count2 = zext i1 %_0.i to i64
  %_23 = getelementptr inbounds nuw float, ptr %right.sroa.0.010, i64 %count2
  %_25 = getelementptr inbounds nuw i8, ptr %_2511, i64 4
  store ptr %_25, ptr %2, align 8
  %_7 = icmp ne ptr %_20, %_9
  %_10 = icmp ne ptr %_23, %right_end
  %or.cond = select i1 %_7, i1 %_10, i1 false
  br i1 %or.cond, label %bb3, label %bb9
}

; core::slice::sort::stable::merge::MergeState<T>::merge_up
; Function Attrs: nofree norecurse nosync nounwind nonlazybind uwtable
define void @"_ZN4core5slice4sort6stable5merge19MergeState$LT$T$GT$8merge_up17h9f773892963d8bf3E"(ptr noalias noundef align 8 captures(none) dereferenceable(24) %self, ptr noundef readonly captures(address) %0, ptr noundef readnone captures(address) %right_end, ptr noalias noundef readnone align 8 captures(none) dereferenceable(8) %is_less) unnamed_addr #8 {
start:
  %1 = getelementptr inbounds nuw i8, ptr %self, i64 8
  %_9 = load ptr, ptr %1, align 8, !noundef !32
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2318)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2321)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2323)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2326)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2328)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2331)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2333)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2336)
  %_3.i.i.i.i = load i32, ptr %right.sroa.0.010, align 4, !alias.scope !2338, !noalias !2339, !noundef !32
  %_4.i.i.i.i = load i32, ptr %_2059, align 4, !alias.scope !2339, !noalias !2338, !noundef !32
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
define void @_ZN4core5slice4sort6stable5merge5merge17h9f4203c273633beaE(ptr noalias noundef nonnull align 4 captures(address) %v.0, i64 noundef range(i64 0, 2305843009213693952) %v.1, ptr noalias noundef nonnull align 4 %scratch.0, i64 noundef range(i64 0, 2305843009213693952) %scratch.1, i64 noundef %0, ptr noalias noundef readnone align 8 captures(none) dereferenceable(8) %is_less) unnamed_addr #0 personality ptr @rust_eh_personality {
start:
  %_6 = icmp eq i64 %0, 0
  %_7 = icmp uge i64 %0, %v.1
  %or.cond = or i1 %_6, %_7
  br i1 %or.cond, label %bb18, label %bb2

bb2:                                              ; preds = %start
  %right_len = sub nuw nsw i64 %v.1, %0
  %_0.sroa.0.0.i = tail call noundef i64 @llvm.umin.i64(i64 range(i64 -2305843009213693950, 2305843009213693952) %right_len, i64 %0)
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2340)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2343)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2345)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2348)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2350)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2353)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2355)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2358)
  %_3.i.i.i.i.i = load i32, ptr %3, align 4, !alias.scope !2360, !noalias !2361, !noundef !32
  %_4.i.i.i.i.i = load i32, ptr %2, align 4, !alias.scope !2364, !noalias !2365, !noundef !32
  %_0.i.i = icmp slt i32 %_3.i.i.i.i.i, %_4.i.i.i.i.i
  %5 = tail call i32 @llvm.smax.i32(i32 %_3.i.i.i.i.i, i32 %_4.i.i.i.i.i)
  store i32 %5, ptr %4, align 4, !noalias !2366
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2367)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2370)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2372)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2375)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2377)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2380)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2382)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2385)
  %_3.i.i.i.i.i12 = load i32, ptr %right.sroa.0.010.i, align 4, !alias.scope !2387, !noalias !2388, !noundef !32
  %_4.i.i.i.i.i13 = load i32, ptr %_2059.i, align 4, !alias.scope !2391, !noalias !2392, !noundef !32
  %_0.i.i14 = icmp slt i32 %_3.i.i.i.i.i12, %_4.i.i.i.i.i13
  %consume_left.i = xor i1 %_0.i.i14, true
  %6 = tail call i32 @llvm.smin.i32(i32 %_3.i.i.i.i.i12, i32 %_4.i.i.i.i.i13)
  store i32 %6, ptr %_2511.i, align 4, !noalias !2393
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
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %merge_state.sroa.13.0, ptr align 4 %merge_state.sroa.0.0, i64 %9, i1 false), !noalias !2394
  br label %bb18

bb18:                                             ; preds = %bb2, %start, %bb16
  ret void
}

; core::slice::sort::stable::merge::merge
; Function Attrs: nonlazybind uwtable
define void @_ZN4core5slice4sort6stable5merge5merge17hb18309dad419ab3cE(ptr noalias noundef nonnull align 4 captures(address) %v.0, i64 noundef range(i64 0, 2305843009213693952) %v.1, ptr noalias noundef nonnull align 4 %scratch.0, i64 noundef range(i64 0, 2305843009213693952) %scratch.1, i64 noundef %0, ptr noalias readnone align 8 captures(none) %is_less) unnamed_addr #1 personality ptr @rust_eh_personality {
start:
  %_6 = icmp eq i64 %0, 0
  %_7 = icmp uge i64 %0, %v.1
  %or.cond = or i1 %_6, %_7
  br i1 %or.cond, label %bb18, label %bb2

bb2:                                              ; preds = %start
  %right_len = sub nuw nsw i64 %v.1, %0
  %_0.sroa.0.0.i = tail call noundef i64 @llvm.umin.i64(i64 range(i64 -2305843009213693950, 2305843009213693952) %right_len, i64 %0)
  %_8 = icmp samesign ult i64 %scratch.1, %_0.sroa.0.0.i
  br i1 %_8, label %bb18, label %bb5

bb5:                                              ; preds = %bb2
  %v_mid = getelementptr inbounds nuw float, ptr %v.0, i64 %0
  %v_end = getelementptr inbounds nuw float, ptr %v.0, i64 %v.1
  %left_is_shorter.not = icmp ugt i64 %0, %right_len
  %spec.select = select i1 %left_is_shorter.not, ptr %v_mid, ptr %v.0
  %spec.select10 = tail call i64 @llvm.umin.i64(i64 %0, i64 %right_len)
  %1 = shl nuw nsw i64 %spec.select10, 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %scratch.0, ptr nonnull align 4 %spec.select, i64 %1, i1 false)
  %_22.idx = shl nuw nsw i64 %spec.select10, 2
  %_22 = getelementptr inbounds nuw i8, ptr %scratch.0, i64 %_22.idx
  br i1 %left_is_shorter.not, label %bb1.i, label %bb12

bb1.i:                                            ; preds = %bb5, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf5b8f37855ac0c3dE.exit.i"
  %merge_state.sroa.13.2 = phi ptr [ %_18.i, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf5b8f37855ac0c3dE.exit.i" ], [ %spec.select, %bb5 ]
  %merge_state.sroa.7.2 = phi ptr [ %_21.i, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf5b8f37855ac0c3dE.exit.i" ], [ %_22, %bb5 ]
  %out.sroa.0.0.i = phi ptr [ %4, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf5b8f37855ac0c3dE.exit.i" ], [ %v_end, %bb5 ]
  %2 = getelementptr inbounds i8, ptr %merge_state.sroa.13.2, i64 -4
  %3 = getelementptr inbounds i8, ptr %merge_state.sroa.7.2, i64 -4
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2399)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2402)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2404)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2407)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2409)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2412)
  %_4.i.i.i.i = load float, ptr %3, align 4, !alias.scope !2414, !noalias !2415, !noundef !32
  %_5.i.i.i.i = load float, ptr %2, align 4, !alias.scope !2418, !noalias !2419, !noundef !32
  %.not.i.i.i.i = fcmp uno float %_4.i.i.i.i, %_5.i.i.i.i
  br i1 %.not.i.i.i.i, label %bb2.i.i.i.i, label %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf5b8f37855ac0c3dE.exit.i", !prof !35

bb2.i.i.i.i:                                      ; preds = %bb1.i
; invoke core::option::unwrap_failed
  invoke void @_ZN4core6option13unwrap_failed17hef2534b77b89c04fE(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_b0e33ba48ef5fa15e44a55a18226b5ac) #24
          to label %.noexc unwind label %cleanup

.noexc:                                           ; preds = %bb2.i.i.i.i
  unreachable

"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf5b8f37855ac0c3dE.exit.i": ; preds = %bb1.i
  %4 = getelementptr inbounds i8, ptr %out.sroa.0.0.i, i64 -4
  %_0.i.i = fcmp olt float %_4.i.i.i.i, %_5.i.i.i.i
  %..i = select i1 %_0.i.i, ptr %2, ptr %3
  %5 = load i32, ptr %..i, align 4, !noalias !2420
  store i32 %5, ptr %4, align 4, !noalias !2420
  %_20.i = xor i1 %_0.i.i, true
  %count.i = zext i1 %_20.i to i64
  %_18.i = getelementptr inbounds nuw float, ptr %2, i64 %count.i
  %count4.i = zext i1 %_0.i.i to i64
  %_21.i = getelementptr inbounds nuw float, ptr %3, i64 %count4.i
  %_23.i = icmp eq ptr %_18.i, %v.0
  %_26.i = icmp eq ptr %_21.i, %scratch.0
  %or.cond.i = select i1 %_23.i, i1 true, i1 %_26.i
  br i1 %or.cond.i, label %bb16, label %bb1.i

bb12:                                             ; preds = %bb5
  %_76.i.not = icmp eq i64 %0, 0
  br i1 %_76.i.not, label %bb16, label %bb3.i

bb3.i:                                            ; preds = %bb12, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf5b8f37855ac0c3dE.exit.i15"
  %merge_state.sroa.13.3 = phi ptr [ %_25.i, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf5b8f37855ac0c3dE.exit.i15" ], [ %spec.select, %bb12 ]
  %merge_state.sroa.0.2 = phi ptr [ %_20.i18, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf5b8f37855ac0c3dE.exit.i15" ], [ %scratch.0, %bb12 ]
  %right.sroa.0.010.i = phi ptr [ %_23.i19, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf5b8f37855ac0c3dE.exit.i15" ], [ %v_mid, %bb12 ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2421)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2424)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2426)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2429)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2431)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2434)
  %_4.i.i.i.i12 = load float, ptr %right.sroa.0.010.i, align 4, !alias.scope !2436, !noalias !2437, !noundef !32
  %_5.i.i.i.i13 = load float, ptr %merge_state.sroa.0.2, align 4, !alias.scope !2440, !noalias !2441, !noundef !32
  %.not.i.i.i.i14 = fcmp uno float %_4.i.i.i.i12, %_5.i.i.i.i13
  br i1 %.not.i.i.i.i14, label %bb2.i.i.i.i21, label %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf5b8f37855ac0c3dE.exit.i15", !prof !35

bb2.i.i.i.i21:                                    ; preds = %bb3.i
; invoke core::option::unwrap_failed
  invoke void @_ZN4core6option13unwrap_failed17hef2534b77b89c04fE(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_b0e33ba48ef5fa15e44a55a18226b5ac) #24
          to label %.noexc22 unwind label %cleanup

.noexc22:                                         ; preds = %bb2.i.i.i.i21
  unreachable

"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf5b8f37855ac0c3dE.exit.i15": ; preds = %bb3.i
  %_0.i.i16 = fcmp olt float %_4.i.i.i.i12, %_5.i.i.i.i13
  %consume_left.i = xor i1 %_0.i.i16, true
  %src.sroa.0.0.i = select i1 %_0.i.i16, ptr %right.sroa.0.010.i, ptr %merge_state.sroa.0.2
  %6 = load i32, ptr %src.sroa.0.0.i, align 4, !noalias !2442
  store i32 %6, ptr %merge_state.sroa.13.3, align 4, !noalias !2442
  %count.i17 = zext i1 %consume_left.i to i64
  %_20.i18 = getelementptr inbounds nuw float, ptr %merge_state.sroa.0.2, i64 %count.i17
  %count2.i = zext i1 %_0.i.i16 to i64
  %_23.i19 = getelementptr inbounds nuw float, ptr %right.sroa.0.010.i, i64 %count2.i
  %_25.i = getelementptr inbounds nuw i8, ptr %merge_state.sroa.13.3, i64 4
  %_7.i = icmp ne ptr %_20.i18, %_22
  %_10.i = icmp ne ptr %_23.i19, %v_end
  %or.cond.i20 = select i1 %_7.i, i1 %_10.i, i1 false
  br i1 %or.cond.i20, label %bb3.i, label %bb16

cleanup:                                          ; preds = %bb2.i.i.i.i21, %bb2.i.i.i.i
  %merge_state.sroa.13.0 = phi ptr [ %merge_state.sroa.13.2, %bb2.i.i.i.i ], [ %merge_state.sroa.13.3, %bb2.i.i.i.i21 ]
  %merge_state.sroa.7.0 = phi ptr [ %merge_state.sroa.7.2, %bb2.i.i.i.i ], [ %_22, %bb2.i.i.i.i21 ]
  %merge_state.sroa.0.0 = phi ptr [ %scratch.0, %bb2.i.i.i.i ], [ %merge_state.sroa.0.2, %bb2.i.i.i.i21 ]
  %7 = landingpad { ptr, i32 }
          cleanup
  %8 = ptrtoint ptr %merge_state.sroa.7.0 to i64
  %9 = ptrtoint ptr %merge_state.sroa.0.0 to i64
  %10 = sub nuw i64 %8, %9
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %merge_state.sroa.13.0, ptr nonnull align 4 %merge_state.sroa.0.0, i64 %10, i1 false), !noalias !2443
  resume { ptr, i32 } %7

bb16:                                             ; preds = %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf5b8f37855ac0c3dE.exit.i15", %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf5b8f37855ac0c3dE.exit.i", %bb12
  %merge_state.sroa.13.1 = phi ptr [ %spec.select, %bb12 ], [ %_18.i, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf5b8f37855ac0c3dE.exit.i" ], [ %_25.i, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf5b8f37855ac0c3dE.exit.i15" ]
  %merge_state.sroa.7.1 = phi ptr [ %_22, %bb12 ], [ %_21.i, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf5b8f37855ac0c3dE.exit.i" ], [ %_22, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf5b8f37855ac0c3dE.exit.i15" ]
  %merge_state.sroa.0.1 = phi ptr [ %scratch.0, %bb12 ], [ %scratch.0, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf5b8f37855ac0c3dE.exit.i" ], [ %_20.i18, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf5b8f37855ac0c3dE.exit.i15" ]
  %11 = ptrtoint ptr %merge_state.sroa.7.1 to i64
  %12 = ptrtoint ptr %merge_state.sroa.0.1 to i64
  %13 = sub nuw i64 %11, %12
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %merge_state.sroa.13.1, ptr align 4 %merge_state.sroa.0.1, i64 %13, i1 false), !noalias !2448
  br label %bb18

bb18:                                             ; preds = %bb2, %start, %bb16
  ret void
}

; core::slice::sort::stable::merge::merge
; Function Attrs: nonlazybind uwtable
define void @_ZN4core5slice4sort6stable5merge5merge17hf2e29e4ca5e716cbE(ptr noalias noundef nonnull align 4 captures(address) %v.0, i64 noundef range(i64 0, 2305843009213693952) %v.1, ptr noalias noundef nonnull align 4 %scratch.0, i64 noundef range(i64 0, 2305843009213693952) %scratch.1, i64 noundef %0, ptr noalias readnone align 8 captures(none) %is_less) unnamed_addr #1 personality ptr @rust_eh_personality {
start:
  %_6 = icmp eq i64 %0, 0
  %_7 = icmp uge i64 %0, %v.1
  %or.cond = or i1 %_6, %_7
  br i1 %or.cond, label %bb18, label %bb2

bb2:                                              ; preds = %start
  %right_len = sub nuw nsw i64 %v.1, %0
  %_0.sroa.0.0.i = tail call noundef i64 @llvm.umin.i64(i64 range(i64 -2305843009213693950, 2305843009213693952) %right_len, i64 %0)
  %_8 = icmp samesign ult i64 %scratch.1, %_0.sroa.0.0.i
  br i1 %_8, label %bb18, label %bb5

bb5:                                              ; preds = %bb2
  %v_mid = getelementptr inbounds nuw float, ptr %v.0, i64 %0
  %v_end = getelementptr inbounds nuw float, ptr %v.0, i64 %v.1
  %left_is_shorter.not = icmp ugt i64 %0, %right_len
  %spec.select = select i1 %left_is_shorter.not, ptr %v_mid, ptr %v.0
  %spec.select10 = tail call i64 @llvm.umin.i64(i64 %0, i64 %right_len)
  %1 = shl nuw nsw i64 %spec.select10, 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %scratch.0, ptr nonnull align 4 %spec.select, i64 %1, i1 false)
  %_22.idx = shl nuw nsw i64 %spec.select10, 2
  %_22 = getelementptr inbounds nuw i8, ptr %scratch.0, i64 %_22.idx
  br i1 %left_is_shorter.not, label %bb1.i, label %bb12

bb1.i:                                            ; preds = %bb5, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfaa75802b1959b0aE.exit.i"
  %merge_state.sroa.13.2 = phi ptr [ %_18.i, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfaa75802b1959b0aE.exit.i" ], [ %spec.select, %bb5 ]
  %merge_state.sroa.7.2 = phi ptr [ %_21.i, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfaa75802b1959b0aE.exit.i" ], [ %_22, %bb5 ]
  %out.sroa.0.0.i = phi ptr [ %4, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfaa75802b1959b0aE.exit.i" ], [ %v_end, %bb5 ]
  %2 = getelementptr inbounds i8, ptr %merge_state.sroa.13.2, i64 -4
  %3 = getelementptr inbounds i8, ptr %merge_state.sroa.7.2, i64 -4
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2453)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2456)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2458)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2461)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2463)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2466)
  %_4.i.i.i.i = load float, ptr %3, align 4, !alias.scope !2468, !noalias !2469, !noundef !32
  %_5.i.i.i.i = load float, ptr %2, align 4, !alias.scope !2472, !noalias !2473, !noundef !32
  %.not.i.i.i.i = fcmp uno float %_4.i.i.i.i, %_5.i.i.i.i
  br i1 %.not.i.i.i.i, label %bb2.i.i.i.i, label %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfaa75802b1959b0aE.exit.i", !prof !35

bb2.i.i.i.i:                                      ; preds = %bb1.i
; invoke core::option::unwrap_failed
  invoke void @_ZN4core6option13unwrap_failed17hef2534b77b89c04fE(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_4a4e7fec44b84c1472b04d0c86f3e1b7) #24
          to label %.noexc unwind label %cleanup

.noexc:                                           ; preds = %bb2.i.i.i.i
  unreachable

"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfaa75802b1959b0aE.exit.i": ; preds = %bb1.i
  %4 = getelementptr inbounds i8, ptr %out.sroa.0.0.i, i64 -4
  %_0.i.i = fcmp olt float %_4.i.i.i.i, %_5.i.i.i.i
  %..i = select i1 %_0.i.i, ptr %2, ptr %3
  %5 = load i32, ptr %..i, align 4, !noalias !2474
  store i32 %5, ptr %4, align 4, !noalias !2474
  %_20.i = xor i1 %_0.i.i, true
  %count.i = zext i1 %_20.i to i64
  %_18.i = getelementptr inbounds nuw float, ptr %2, i64 %count.i
  %count4.i = zext i1 %_0.i.i to i64
  %_21.i = getelementptr inbounds nuw float, ptr %3, i64 %count4.i
  %_23.i = icmp eq ptr %_18.i, %v.0
  %_26.i = icmp eq ptr %_21.i, %scratch.0
  %or.cond.i = select i1 %_23.i, i1 true, i1 %_26.i
  br i1 %or.cond.i, label %bb16, label %bb1.i

bb12:                                             ; preds = %bb5
  %_76.i.not = icmp eq i64 %0, 0
  br i1 %_76.i.not, label %bb16, label %bb3.i

bb3.i:                                            ; preds = %bb12, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfaa75802b1959b0aE.exit.i15"
  %merge_state.sroa.13.3 = phi ptr [ %_25.i, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfaa75802b1959b0aE.exit.i15" ], [ %spec.select, %bb12 ]
  %merge_state.sroa.0.2 = phi ptr [ %_20.i18, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfaa75802b1959b0aE.exit.i15" ], [ %scratch.0, %bb12 ]
  %right.sroa.0.010.i = phi ptr [ %_23.i19, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfaa75802b1959b0aE.exit.i15" ], [ %v_mid, %bb12 ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2475)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2478)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2480)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2483)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2485)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2488)
  %_4.i.i.i.i12 = load float, ptr %right.sroa.0.010.i, align 4, !alias.scope !2490, !noalias !2491, !noundef !32
  %_5.i.i.i.i13 = load float, ptr %merge_state.sroa.0.2, align 4, !alias.scope !2494, !noalias !2495, !noundef !32
  %.not.i.i.i.i14 = fcmp uno float %_4.i.i.i.i12, %_5.i.i.i.i13
  br i1 %.not.i.i.i.i14, label %bb2.i.i.i.i21, label %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfaa75802b1959b0aE.exit.i15", !prof !35

bb2.i.i.i.i21:                                    ; preds = %bb3.i
; invoke core::option::unwrap_failed
  invoke void @_ZN4core6option13unwrap_failed17hef2534b77b89c04fE(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_4a4e7fec44b84c1472b04d0c86f3e1b7) #24
          to label %.noexc22 unwind label %cleanup

.noexc22:                                         ; preds = %bb2.i.i.i.i21
  unreachable

"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfaa75802b1959b0aE.exit.i15": ; preds = %bb3.i
  %_0.i.i16 = fcmp olt float %_4.i.i.i.i12, %_5.i.i.i.i13
  %consume_left.i = xor i1 %_0.i.i16, true
  %src.sroa.0.0.i = select i1 %_0.i.i16, ptr %right.sroa.0.010.i, ptr %merge_state.sroa.0.2
  %6 = load i32, ptr %src.sroa.0.0.i, align 4, !noalias !2496
  store i32 %6, ptr %merge_state.sroa.13.3, align 4, !noalias !2496
  %count.i17 = zext i1 %consume_left.i to i64
  %_20.i18 = getelementptr inbounds nuw float, ptr %merge_state.sroa.0.2, i64 %count.i17
  %count2.i = zext i1 %_0.i.i16 to i64
  %_23.i19 = getelementptr inbounds nuw float, ptr %right.sroa.0.010.i, i64 %count2.i
  %_25.i = getelementptr inbounds nuw i8, ptr %merge_state.sroa.13.3, i64 4
  %_7.i = icmp ne ptr %_20.i18, %_22
  %_10.i = icmp ne ptr %_23.i19, %v_end
  %or.cond.i20 = select i1 %_7.i, i1 %_10.i, i1 false
  br i1 %or.cond.i20, label %bb3.i, label %bb16

cleanup:                                          ; preds = %bb2.i.i.i.i21, %bb2.i.i.i.i
  %merge_state.sroa.13.0 = phi ptr [ %merge_state.sroa.13.2, %bb2.i.i.i.i ], [ %merge_state.sroa.13.3, %bb2.i.i.i.i21 ]
  %merge_state.sroa.7.0 = phi ptr [ %merge_state.sroa.7.2, %bb2.i.i.i.i ], [ %_22, %bb2.i.i.i.i21 ]
  %merge_state.sroa.0.0 = phi ptr [ %scratch.0, %bb2.i.i.i.i ], [ %merge_state.sroa.0.2, %bb2.i.i.i.i21 ]
  %7 = landingpad { ptr, i32 }
          cleanup
  %8 = ptrtoint ptr %merge_state.sroa.7.0 to i64
  %9 = ptrtoint ptr %merge_state.sroa.0.0 to i64
  %10 = sub nuw i64 %8, %9
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %merge_state.sroa.13.0, ptr nonnull align 4 %merge_state.sroa.0.0, i64 %10, i1 false), !noalias !2497
  resume { ptr, i32 } %7

bb16:                                             ; preds = %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfaa75802b1959b0aE.exit.i15", %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfaa75802b1959b0aE.exit.i", %bb12
  %merge_state.sroa.13.1 = phi ptr [ %spec.select, %bb12 ], [ %_18.i, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfaa75802b1959b0aE.exit.i" ], [ %_25.i, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfaa75802b1959b0aE.exit.i15" ]
  %merge_state.sroa.7.1 = phi ptr [ %_22, %bb12 ], [ %_21.i, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfaa75802b1959b0aE.exit.i" ], [ %_22, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfaa75802b1959b0aE.exit.i15" ]
  %merge_state.sroa.0.1 = phi ptr [ %scratch.0, %bb12 ], [ %scratch.0, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfaa75802b1959b0aE.exit.i" ], [ %_20.i18, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfaa75802b1959b0aE.exit.i15" ]
  %11 = ptrtoint ptr %merge_state.sroa.7.1 to i64
  %12 = ptrtoint ptr %merge_state.sroa.0.1 to i64
  %13 = sub nuw i64 %11, %12
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %merge_state.sroa.13.1, ptr align 4 %merge_state.sroa.0.1, i64 %13, i1 false), !noalias !2502
  br label %bb18

bb18:                                             ; preds = %bb2, %start, %bb16
  ret void
}

; core::slice::sort::stable::quicksort::stable_partition
; Function Attrs: nonlazybind uwtable
define noundef i64 @_ZN4core5slice4sort6stable9quicksort16stable_partition17h26d04e68c811d67bE(ptr noalias noundef nonnull align 4 captures(address) %v.0, i64 noundef range(i64 0, 2305843009213693952) %v.1, ptr noalias noundef nonnull align 4 captures(none) %scratch.0, i64 noundef range(i64 0, 2305843009213693952) %scratch.1, i64 noundef %0, i1 noundef zeroext %pivot_goes_left, ptr noalias readnone align 8 captures(none) %is_less) unnamed_addr #1 {
start:
  %_8 = icmp samesign uge i64 %scratch.1, %v.1
  %.not = icmp ult i64 %0, %v.1
  %or.cond = and i1 %_8, %.not
  br i1 %or.cond, label %bb33, label %bb31, !prof !2507

bb33:                                             ; preds = %start
  %pivot = getelementptr inbounds nuw float, ptr %v.0, i64 %0
  %_86 = getelementptr float, ptr %scratch.0, i64 %v.1
  %_8.i82 = zext i1 %pivot_goes_left to i64
  br label %bb3

bb31:                                             ; preds = %start
  tail call void @llvm.trap()
  unreachable

bb3:                                              ; preds = %bb23, %bb33
  %state.sroa.27.0 = phi i64 [ 0, %bb33 ], [ %19, %bb23 ]
  %state.sroa.9.0 = phi ptr [ %v.0, %bb33 ], [ %_9.i83, %bb23 ]
  %state.sroa.43.0 = phi ptr [ %_86, %bb33 ], [ %17, %bb23 ]
  %pivot_pos.sroa.0.0 = phi i64 [ %0, %bb33 ], [ %v.1, %bb23 ]
  %1 = tail call i64 @llvm.usub.sat.i64(i64 %pivot_pos.sroa.0.0, i64 3)
  %unroll_end = getelementptr inbounds nuw float, ptr %v.0, i64 %1
  %_19112 = icmp ult ptr %state.sroa.9.0, %unroll_end
  br i1 %_19112, label %bb6, label %bb16

bb6:                                              ; preds = %bb3, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfaa75802b1959b0aE.exit56"
  %state.sroa.43.1115 = phi ptr [ %11, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfaa75802b1959b0aE.exit56" ], [ %state.sroa.43.0, %bb3 ]
  %state.sroa.9.1114 = phi ptr [ %_9.i63, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfaa75802b1959b0aE.exit56" ], [ %state.sroa.9.0, %bb3 ]
  %state.sroa.27.1113 = phi i64 [ %13, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfaa75802b1959b0aE.exit56" ], [ %state.sroa.27.0, %bb3 ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2508)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2511)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2513)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2516)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2518)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2521)
  %_4.i.i.i = load float, ptr %state.sroa.9.1114, align 4, !alias.scope !2523, !noalias !2524, !noundef !32
  %_5.i.i.i = load float, ptr %pivot, align 4, !alias.scope !2524, !noalias !2523, !noundef !32
  %.not.i.i.i = fcmp uno float %_4.i.i.i, %_5.i.i.i
  br i1 %.not.i.i.i, label %bb2.i.i.i, label %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfaa75802b1959b0aE.exit", !prof !35

bb2.i.i.i:                                        ; preds = %bb6
; call core::option::unwrap_failed
  tail call void @_ZN4core6option13unwrap_failed17hef2534b77b89c04fE(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_4a4e7fec44b84c1472b04d0c86f3e1b7) #24, !noalias !2525
  unreachable

"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfaa75802b1959b0aE.exit": ; preds = %bb6
  %_0.i = fcmp olt float %_4.i.i.i, %_5.i.i.i
  %2 = getelementptr inbounds i8, ptr %state.sroa.43.1115, i64 -4
  %dst_base.sroa.0.0.i = select i1 %_0.i, ptr %scratch.0, ptr %2
  %dst.i = getelementptr inbounds nuw float, ptr %dst_base.sroa.0.0.i, i64 %state.sroa.27.1113
  %3 = load i32, ptr %state.sroa.9.1114, align 4, !noalias !2526
  store i32 %3, ptr %dst.i, align 4, !noalias !2526
  %_9.i = getelementptr inbounds nuw i8, ptr %state.sroa.9.1114, i64 4
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2529)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2532)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2534)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2537)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2539)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2542)
  %_4.i.i.i25 = load float, ptr %_9.i, align 4, !alias.scope !2544, !noalias !2545, !noundef !32
  %_5.i.i.i26 = load float, ptr %pivot, align 4, !alias.scope !2545, !noalias !2544, !noundef !32
  %.not.i.i.i27 = fcmp uno float %_4.i.i.i25, %_5.i.i.i26
  br i1 %.not.i.i.i27, label %bb2.i.i.i29, label %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfaa75802b1959b0aE.exit30", !prof !35

bb2.i.i.i29:                                      ; preds = %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfaa75802b1959b0aE.exit"
; call core::option::unwrap_failed
  tail call void @_ZN4core6option13unwrap_failed17hef2534b77b89c04fE(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_4a4e7fec44b84c1472b04d0c86f3e1b7) #24, !noalias !2546
  unreachable

"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfaa75802b1959b0aE.exit30": ; preds = %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfaa75802b1959b0aE.exit"
  %_8.i = zext i1 %_0.i to i64
  %4 = add i64 %state.sroa.27.1113, %_8.i
  %_0.i28 = fcmp olt float %_4.i.i.i25, %_5.i.i.i26
  %5 = getelementptr inbounds i8, ptr %state.sroa.43.1115, i64 -8
  %dst_base.sroa.0.0.i32 = select i1 %_0.i28, ptr %scratch.0, ptr %5
  %dst.i34 = getelementptr inbounds nuw float, ptr %dst_base.sroa.0.0.i32, i64 %4
  %6 = load i32, ptr %_9.i, align 4, !noalias !2547
  store i32 %6, ptr %dst.i34, align 4, !noalias !2547
  %_9.i37 = getelementptr inbounds nuw i8, ptr %state.sroa.9.1114, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2550)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2553)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2555)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2558)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2560)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2563)
  %_4.i.i.i38 = load float, ptr %_9.i37, align 4, !alias.scope !2565, !noalias !2566, !noundef !32
  %_5.i.i.i39 = load float, ptr %pivot, align 4, !alias.scope !2566, !noalias !2565, !noundef !32
  %.not.i.i.i40 = fcmp uno float %_4.i.i.i38, %_5.i.i.i39
  br i1 %.not.i.i.i40, label %bb2.i.i.i42, label %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfaa75802b1959b0aE.exit43", !prof !35

bb2.i.i.i42:                                      ; preds = %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfaa75802b1959b0aE.exit30"
; call core::option::unwrap_failed
  tail call void @_ZN4core6option13unwrap_failed17hef2534b77b89c04fE(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_4a4e7fec44b84c1472b04d0c86f3e1b7) #24, !noalias !2567
  unreachable

"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfaa75802b1959b0aE.exit43": ; preds = %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfaa75802b1959b0aE.exit30"
  %_8.i36 = zext i1 %_0.i28 to i64
  %7 = add i64 %4, %_8.i36
  %_0.i41 = fcmp olt float %_4.i.i.i38, %_5.i.i.i39
  %8 = getelementptr inbounds i8, ptr %state.sroa.43.1115, i64 -12
  %dst_base.sroa.0.0.i45 = select i1 %_0.i41, ptr %scratch.0, ptr %8
  %dst.i47 = getelementptr inbounds nuw float, ptr %dst_base.sroa.0.0.i45, i64 %7
  %9 = load i32, ptr %_9.i37, align 4, !noalias !2568
  store i32 %9, ptr %dst.i47, align 4, !noalias !2568
  %_9.i50 = getelementptr inbounds nuw i8, ptr %state.sroa.9.1114, i64 12
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2571)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2574)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2576)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2579)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2581)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2584)
  %_4.i.i.i51 = load float, ptr %_9.i50, align 4, !alias.scope !2586, !noalias !2587, !noundef !32
  %_5.i.i.i52 = load float, ptr %pivot, align 4, !alias.scope !2587, !noalias !2586, !noundef !32
  %.not.i.i.i53 = fcmp uno float %_4.i.i.i51, %_5.i.i.i52
  br i1 %.not.i.i.i53, label %bb2.i.i.i55, label %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfaa75802b1959b0aE.exit56", !prof !35

bb2.i.i.i55:                                      ; preds = %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfaa75802b1959b0aE.exit43"
; call core::option::unwrap_failed
  tail call void @_ZN4core6option13unwrap_failed17hef2534b77b89c04fE(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_4a4e7fec44b84c1472b04d0c86f3e1b7) #24, !noalias !2588
  unreachable

"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfaa75802b1959b0aE.exit56": ; preds = %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfaa75802b1959b0aE.exit43"
  %_8.i49 = zext i1 %_0.i41 to i64
  %10 = add i64 %7, %_8.i49
  %_0.i54 = fcmp olt float %_4.i.i.i51, %_5.i.i.i52
  %11 = getelementptr inbounds i8, ptr %state.sroa.43.1115, i64 -16
  %dst_base.sroa.0.0.i58 = select i1 %_0.i54, ptr %scratch.0, ptr %11
  %dst.i60 = getelementptr inbounds nuw float, ptr %dst_base.sroa.0.0.i58, i64 %10
  %12 = load i32, ptr %_9.i50, align 4, !noalias !2589
  store i32 %12, ptr %dst.i60, align 4, !noalias !2589
  %_8.i62 = zext i1 %_0.i54 to i64
  %13 = add i64 %10, %_8.i62
  %_9.i63 = getelementptr inbounds nuw i8, ptr %state.sroa.9.1114, i64 16
  %_19 = icmp ult ptr %_9.i63, %unroll_end
  br i1 %_19, label %bb6, label %bb16

bb16:                                             ; preds = %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfaa75802b1959b0aE.exit56", %bb3
  %state.sroa.27.1.lcssa = phi i64 [ %state.sroa.27.0, %bb3 ], [ %13, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfaa75802b1959b0aE.exit56" ]
  %state.sroa.9.1.lcssa = phi ptr [ %state.sroa.9.0, %bb3 ], [ %_9.i63, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfaa75802b1959b0aE.exit56" ]
  %state.sroa.43.1.lcssa = phi ptr [ %state.sroa.43.0, %bb3 ], [ %11, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfaa75802b1959b0aE.exit56" ]
  %loop_end = getelementptr inbounds nuw float, ptr %v.0, i64 %pivot_pos.sroa.0.0
  %_47118 = icmp ult ptr %state.sroa.9.1.lcssa, %loop_end
  br i1 %_47118, label %bb18, label %bb21

bb21:                                             ; preds = %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfaa75802b1959b0aE.exit69", %bb16
  %state.sroa.27.2.lcssa = phi i64 [ %state.sroa.27.1.lcssa, %bb16 ], [ %16, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfaa75802b1959b0aE.exit69" ]
  %state.sroa.9.2.lcssa = phi ptr [ %state.sroa.9.1.lcssa, %bb16 ], [ %_9.i76, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfaa75802b1959b0aE.exit69" ]
  %state.sroa.43.2.lcssa = phi ptr [ %state.sroa.43.1.lcssa, %bb16 ], [ %14, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfaa75802b1959b0aE.exit69" ]
  %_55 = icmp eq i64 %pivot_pos.sroa.0.0, %v.1
  br i1 %_55, label %bb22, label %bb23

bb18:                                             ; preds = %bb16, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfaa75802b1959b0aE.exit69"
  %state.sroa.43.2121 = phi ptr [ %14, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfaa75802b1959b0aE.exit69" ], [ %state.sroa.43.1.lcssa, %bb16 ]
  %state.sroa.9.2120 = phi ptr [ %_9.i76, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfaa75802b1959b0aE.exit69" ], [ %state.sroa.9.1.lcssa, %bb16 ]
  %state.sroa.27.2119 = phi i64 [ %16, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfaa75802b1959b0aE.exit69" ], [ %state.sroa.27.1.lcssa, %bb16 ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2592)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2595)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2597)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2600)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2602)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2605)
  %_4.i.i.i64 = load float, ptr %state.sroa.9.2120, align 4, !alias.scope !2607, !noalias !2608, !noundef !32
  %_5.i.i.i65 = load float, ptr %pivot, align 4, !alias.scope !2608, !noalias !2607, !noundef !32
  %.not.i.i.i66 = fcmp uno float %_4.i.i.i64, %_5.i.i.i65
  br i1 %.not.i.i.i66, label %bb2.i.i.i68, label %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfaa75802b1959b0aE.exit69", !prof !35

bb2.i.i.i68:                                      ; preds = %bb18
; call core::option::unwrap_failed
  tail call void @_ZN4core6option13unwrap_failed17hef2534b77b89c04fE(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_4a4e7fec44b84c1472b04d0c86f3e1b7) #24, !noalias !2609
  unreachable

"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfaa75802b1959b0aE.exit69": ; preds = %bb18
  %_0.i67 = fcmp olt float %_4.i.i.i64, %_5.i.i.i65
  %14 = getelementptr inbounds i8, ptr %state.sroa.43.2121, i64 -4
  %dst_base.sroa.0.0.i71 = select i1 %_0.i67, ptr %scratch.0, ptr %14
  %dst.i73 = getelementptr inbounds nuw float, ptr %dst_base.sroa.0.0.i71, i64 %state.sroa.27.2119
  %15 = load i32, ptr %state.sroa.9.2120, align 4, !noalias !2610
  store i32 %15, ptr %dst.i73, align 4, !noalias !2610
  %_8.i75 = zext i1 %_0.i67 to i64
  %16 = add i64 %state.sroa.27.2119, %_8.i75
  %_9.i76 = getelementptr inbounds nuw i8, ptr %state.sroa.9.2120, i64 4
  %_47 = icmp ult ptr %_9.i76, %loop_end
  br i1 %_47, label %bb18, label %bb21

bb23:                                             ; preds = %bb21
  %17 = getelementptr inbounds i8, ptr %state.sroa.43.2.lcssa, i64 -4
  %dst_base.sroa.0.0.i78 = select i1 %pivot_goes_left, ptr %scratch.0, ptr %17
  %dst.i80 = getelementptr inbounds nuw float, ptr %dst_base.sroa.0.0.i78, i64 %state.sroa.27.2.lcssa
  %18 = load i32, ptr %state.sroa.9.2.lcssa, align 4, !noalias !2613
  store i32 %18, ptr %dst.i80, align 4, !noalias !2613
  %19 = add i64 %state.sroa.27.2.lcssa, %_8.i82
  %_9.i83 = getelementptr inbounds nuw i8, ptr %state.sroa.9.2.lcssa, i64 4
  br label %bb3

bb22:                                             ; preds = %bb21
  %20 = shl i64 %state.sroa.27.2.lcssa, 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %v.0, ptr nonnull align 4 %scratch.0, i64 %20, i1 false)
  %_63 = sub i64 %v.1, %state.sroa.27.2.lcssa
  %_97125.not = icmp eq i64 %v.1, %state.sroa.27.2.lcssa
  br i1 %_97125.not, label %bb30, label %bb42.lr.ph

bb42.lr.ph:                                       ; preds = %bb22
  %21 = getelementptr float, ptr %v.0, i64 %state.sroa.27.2.lcssa
  %xtraiter = and i64 %_63, 3
  %22 = sub i64 %state.sroa.27.2.lcssa, %v.1
  %23 = icmp ugt i64 %22, -4
  br i1 %23, label %bb30.loopexit.unr-lcssa, label %bb42.lr.ph.new

bb42.lr.ph.new:                                   ; preds = %bb42.lr.ph
  %unroll_iter = and i64 %_63, -4
  %invariant.gep = getelementptr i8, ptr %21, i64 4
  %invariant.gep141 = getelementptr i8, ptr %21, i64 8
  %invariant.gep143 = getelementptr i8, ptr %21, i64 12
  br label %bb42

bb42:                                             ; preds = %bb42, %bb42.lr.ph.new
  %iter.sroa.0.0126 = phi i64 [ 0, %bb42.lr.ph.new ], [ %34, %bb42 ]
  %niter = phi i64 [ 0, %bb42.lr.ph.new ], [ %niter.next.3, %bb42 ]
  %24 = getelementptr float, ptr %21, i64 %iter.sroa.0.0126
  %25 = xor i64 %iter.sroa.0.0126, -1
  %26 = getelementptr float, ptr %_86, i64 %25
  %27 = load i32, ptr %26, align 4
  store i32 %27, ptr %24, align 4
  %gep = getelementptr float, ptr %invariant.gep, i64 %iter.sroa.0.0126
  %28 = xor i64 %iter.sroa.0.0126, -2
  %29 = getelementptr float, ptr %_86, i64 %28
  %30 = load i32, ptr %29, align 4
  store i32 %30, ptr %gep, align 4
  %gep142 = getelementptr float, ptr %invariant.gep141, i64 %iter.sroa.0.0126
  %31 = xor i64 %iter.sroa.0.0126, -3
  %32 = getelementptr float, ptr %_86, i64 %31
  %33 = load i32, ptr %32, align 4
  store i32 %33, ptr %gep142, align 4
  %34 = add nuw i64 %iter.sroa.0.0126, 4
  %gep144 = getelementptr float, ptr %invariant.gep143, i64 %iter.sroa.0.0126
  %35 = xor i64 %iter.sroa.0.0126, -4
  %36 = getelementptr float, ptr %_86, i64 %35
  %37 = load i32, ptr %36, align 4
  store i32 %37, ptr %gep144, align 4
  %niter.next.3 = add i64 %niter, 4
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %bb30.loopexit.unr-lcssa, label %bb42

bb30.loopexit.unr-lcssa:                          ; preds = %bb42, %bb42.lr.ph
  %iter.sroa.0.0126.unr = phi i64 [ 0, %bb42.lr.ph ], [ %34, %bb42 ]
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %bb30, label %bb42.epil

bb42.epil:                                        ; preds = %bb30.loopexit.unr-lcssa, %bb42.epil
  %iter.sroa.0.0126.epil = phi i64 [ %38, %bb42.epil ], [ %iter.sroa.0.0126.unr, %bb30.loopexit.unr-lcssa ]
  %epil.iter = phi i64 [ %epil.iter.next, %bb42.epil ], [ 0, %bb30.loopexit.unr-lcssa ]
  %38 = add nuw i64 %iter.sroa.0.0126.epil, 1
  %39 = getelementptr float, ptr %21, i64 %iter.sroa.0.0126.epil
  %40 = xor i64 %iter.sroa.0.0126.epil, -1
  %41 = getelementptr float, ptr %_86, i64 %40
  %42 = load i32, ptr %41, align 4
  store i32 %42, ptr %39, align 4
  %epil.iter.next = add i64 %epil.iter, 1
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %bb30, label %bb42.epil, !llvm.loop !2616

bb30:                                             ; preds = %bb30.loopexit.unr-lcssa, %bb42.epil, %bb22
  ret i64 %state.sroa.27.2.lcssa
}

; core::slice::sort::stable::quicksort::stable_partition
; Function Attrs: nonlazybind uwtable
define noundef i64 @_ZN4core5slice4sort6stable9quicksort16stable_partition17h52196b1de7482264E(ptr noalias noundef nonnull align 4 captures(address) %v.0, i64 noundef range(i64 0, 2305843009213693952) %v.1, ptr noalias noundef nonnull align 4 captures(none) %scratch.0, i64 noundef range(i64 0, 2305843009213693952) %scratch.1, i64 noundef %0, i1 noundef zeroext %pivot_goes_left, ptr noalias readnone align 8 captures(none) %is_less) unnamed_addr #1 {
start:
  %_8 = icmp samesign uge i64 %scratch.1, %v.1
  %.not = icmp ult i64 %0, %v.1
  %or.cond = and i1 %_8, %.not
  br i1 %or.cond, label %bb33, label %bb31, !prof !2507

bb33:                                             ; preds = %start
  %pivot = getelementptr inbounds nuw float, ptr %v.0, i64 %0
  %_86 = getelementptr float, ptr %scratch.0, i64 %v.1
  %_8.i82 = zext i1 %pivot_goes_left to i64
  br label %bb3

bb31:                                             ; preds = %start
  tail call void @llvm.trap()
  unreachable

bb3:                                              ; preds = %bb23, %bb33
  %state.sroa.27.0 = phi i64 [ 0, %bb33 ], [ %19, %bb23 ]
  %state.sroa.9.0 = phi ptr [ %v.0, %bb33 ], [ %_9.i83, %bb23 ]
  %state.sroa.43.0 = phi ptr [ %_86, %bb33 ], [ %17, %bb23 ]
  %pivot_pos.sroa.0.0 = phi i64 [ %0, %bb33 ], [ %v.1, %bb23 ]
  %1 = tail call i64 @llvm.usub.sat.i64(i64 %pivot_pos.sroa.0.0, i64 3)
  %unroll_end = getelementptr inbounds nuw float, ptr %v.0, i64 %1
  %_19112 = icmp ult ptr %state.sroa.9.0, %unroll_end
  br i1 %_19112, label %bb6, label %bb16

bb6:                                              ; preds = %bb3, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf5b8f37855ac0c3dE.exit56"
  %state.sroa.43.1115 = phi ptr [ %11, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf5b8f37855ac0c3dE.exit56" ], [ %state.sroa.43.0, %bb3 ]
  %state.sroa.9.1114 = phi ptr [ %_9.i63, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf5b8f37855ac0c3dE.exit56" ], [ %state.sroa.9.0, %bb3 ]
  %state.sroa.27.1113 = phi i64 [ %13, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf5b8f37855ac0c3dE.exit56" ], [ %state.sroa.27.0, %bb3 ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2618)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2621)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2623)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2626)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2628)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2631)
  %_4.i.i.i = load float, ptr %state.sroa.9.1114, align 4, !alias.scope !2633, !noalias !2634, !noundef !32
  %_5.i.i.i = load float, ptr %pivot, align 4, !alias.scope !2634, !noalias !2633, !noundef !32
  %.not.i.i.i = fcmp uno float %_4.i.i.i, %_5.i.i.i
  br i1 %.not.i.i.i, label %bb2.i.i.i, label %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf5b8f37855ac0c3dE.exit", !prof !35

bb2.i.i.i:                                        ; preds = %bb6
; call core::option::unwrap_failed
  tail call void @_ZN4core6option13unwrap_failed17hef2534b77b89c04fE(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_b0e33ba48ef5fa15e44a55a18226b5ac) #24, !noalias !2635
  unreachable

"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf5b8f37855ac0c3dE.exit": ; preds = %bb6
  %_0.i = fcmp olt float %_4.i.i.i, %_5.i.i.i
  %2 = getelementptr inbounds i8, ptr %state.sroa.43.1115, i64 -4
  %dst_base.sroa.0.0.i = select i1 %_0.i, ptr %scratch.0, ptr %2
  %dst.i = getelementptr inbounds nuw float, ptr %dst_base.sroa.0.0.i, i64 %state.sroa.27.1113
  %3 = load i32, ptr %state.sroa.9.1114, align 4, !noalias !2636
  store i32 %3, ptr %dst.i, align 4, !noalias !2636
  %_9.i = getelementptr inbounds nuw i8, ptr %state.sroa.9.1114, i64 4
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2639)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2642)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2644)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2647)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2649)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2652)
  %_4.i.i.i25 = load float, ptr %_9.i, align 4, !alias.scope !2654, !noalias !2655, !noundef !32
  %_5.i.i.i26 = load float, ptr %pivot, align 4, !alias.scope !2655, !noalias !2654, !noundef !32
  %.not.i.i.i27 = fcmp uno float %_4.i.i.i25, %_5.i.i.i26
  br i1 %.not.i.i.i27, label %bb2.i.i.i29, label %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf5b8f37855ac0c3dE.exit30", !prof !35

bb2.i.i.i29:                                      ; preds = %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf5b8f37855ac0c3dE.exit"
; call core::option::unwrap_failed
  tail call void @_ZN4core6option13unwrap_failed17hef2534b77b89c04fE(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_b0e33ba48ef5fa15e44a55a18226b5ac) #24, !noalias !2656
  unreachable

"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf5b8f37855ac0c3dE.exit30": ; preds = %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf5b8f37855ac0c3dE.exit"
  %_8.i = zext i1 %_0.i to i64
  %4 = add i64 %state.sroa.27.1113, %_8.i
  %_0.i28 = fcmp olt float %_4.i.i.i25, %_5.i.i.i26
  %5 = getelementptr inbounds i8, ptr %state.sroa.43.1115, i64 -8
  %dst_base.sroa.0.0.i32 = select i1 %_0.i28, ptr %scratch.0, ptr %5
  %dst.i34 = getelementptr inbounds nuw float, ptr %dst_base.sroa.0.0.i32, i64 %4
  %6 = load i32, ptr %_9.i, align 4, !noalias !2657
  store i32 %6, ptr %dst.i34, align 4, !noalias !2657
  %_9.i37 = getelementptr inbounds nuw i8, ptr %state.sroa.9.1114, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2660)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2663)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2665)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2668)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2670)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2673)
  %_4.i.i.i38 = load float, ptr %_9.i37, align 4, !alias.scope !2675, !noalias !2676, !noundef !32
  %_5.i.i.i39 = load float, ptr %pivot, align 4, !alias.scope !2676, !noalias !2675, !noundef !32
  %.not.i.i.i40 = fcmp uno float %_4.i.i.i38, %_5.i.i.i39
  br i1 %.not.i.i.i40, label %bb2.i.i.i42, label %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf5b8f37855ac0c3dE.exit43", !prof !35

bb2.i.i.i42:                                      ; preds = %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf5b8f37855ac0c3dE.exit30"
; call core::option::unwrap_failed
  tail call void @_ZN4core6option13unwrap_failed17hef2534b77b89c04fE(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_b0e33ba48ef5fa15e44a55a18226b5ac) #24, !noalias !2677
  unreachable

"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf5b8f37855ac0c3dE.exit43": ; preds = %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf5b8f37855ac0c3dE.exit30"
  %_8.i36 = zext i1 %_0.i28 to i64
  %7 = add i64 %4, %_8.i36
  %_0.i41 = fcmp olt float %_4.i.i.i38, %_5.i.i.i39
  %8 = getelementptr inbounds i8, ptr %state.sroa.43.1115, i64 -12
  %dst_base.sroa.0.0.i45 = select i1 %_0.i41, ptr %scratch.0, ptr %8
  %dst.i47 = getelementptr inbounds nuw float, ptr %dst_base.sroa.0.0.i45, i64 %7
  %9 = load i32, ptr %_9.i37, align 4, !noalias !2678
  store i32 %9, ptr %dst.i47, align 4, !noalias !2678
  %_9.i50 = getelementptr inbounds nuw i8, ptr %state.sroa.9.1114, i64 12
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2681)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2684)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2686)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2689)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2691)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2694)
  %_4.i.i.i51 = load float, ptr %_9.i50, align 4, !alias.scope !2696, !noalias !2697, !noundef !32
  %_5.i.i.i52 = load float, ptr %pivot, align 4, !alias.scope !2697, !noalias !2696, !noundef !32
  %.not.i.i.i53 = fcmp uno float %_4.i.i.i51, %_5.i.i.i52
  br i1 %.not.i.i.i53, label %bb2.i.i.i55, label %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf5b8f37855ac0c3dE.exit56", !prof !35

bb2.i.i.i55:                                      ; preds = %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf5b8f37855ac0c3dE.exit43"
; call core::option::unwrap_failed
  tail call void @_ZN4core6option13unwrap_failed17hef2534b77b89c04fE(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_b0e33ba48ef5fa15e44a55a18226b5ac) #24, !noalias !2698
  unreachable

"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf5b8f37855ac0c3dE.exit56": ; preds = %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf5b8f37855ac0c3dE.exit43"
  %_8.i49 = zext i1 %_0.i41 to i64
  %10 = add i64 %7, %_8.i49
  %_0.i54 = fcmp olt float %_4.i.i.i51, %_5.i.i.i52
  %11 = getelementptr inbounds i8, ptr %state.sroa.43.1115, i64 -16
  %dst_base.sroa.0.0.i58 = select i1 %_0.i54, ptr %scratch.0, ptr %11
  %dst.i60 = getelementptr inbounds nuw float, ptr %dst_base.sroa.0.0.i58, i64 %10
  %12 = load i32, ptr %_9.i50, align 4, !noalias !2699
  store i32 %12, ptr %dst.i60, align 4, !noalias !2699
  %_8.i62 = zext i1 %_0.i54 to i64
  %13 = add i64 %10, %_8.i62
  %_9.i63 = getelementptr inbounds nuw i8, ptr %state.sroa.9.1114, i64 16
  %_19 = icmp ult ptr %_9.i63, %unroll_end
  br i1 %_19, label %bb6, label %bb16

bb16:                                             ; preds = %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf5b8f37855ac0c3dE.exit56", %bb3
  %state.sroa.27.1.lcssa = phi i64 [ %state.sroa.27.0, %bb3 ], [ %13, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf5b8f37855ac0c3dE.exit56" ]
  %state.sroa.9.1.lcssa = phi ptr [ %state.sroa.9.0, %bb3 ], [ %_9.i63, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf5b8f37855ac0c3dE.exit56" ]
  %state.sroa.43.1.lcssa = phi ptr [ %state.sroa.43.0, %bb3 ], [ %11, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf5b8f37855ac0c3dE.exit56" ]
  %loop_end = getelementptr inbounds nuw float, ptr %v.0, i64 %pivot_pos.sroa.0.0
  %_47118 = icmp ult ptr %state.sroa.9.1.lcssa, %loop_end
  br i1 %_47118, label %bb18, label %bb21

bb21:                                             ; preds = %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf5b8f37855ac0c3dE.exit69", %bb16
  %state.sroa.27.2.lcssa = phi i64 [ %state.sroa.27.1.lcssa, %bb16 ], [ %16, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf5b8f37855ac0c3dE.exit69" ]
  %state.sroa.9.2.lcssa = phi ptr [ %state.sroa.9.1.lcssa, %bb16 ], [ %_9.i76, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf5b8f37855ac0c3dE.exit69" ]
  %state.sroa.43.2.lcssa = phi ptr [ %state.sroa.43.1.lcssa, %bb16 ], [ %14, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf5b8f37855ac0c3dE.exit69" ]
  %_55 = icmp eq i64 %pivot_pos.sroa.0.0, %v.1
  br i1 %_55, label %bb22, label %bb23

bb18:                                             ; preds = %bb16, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf5b8f37855ac0c3dE.exit69"
  %state.sroa.43.2121 = phi ptr [ %14, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf5b8f37855ac0c3dE.exit69" ], [ %state.sroa.43.1.lcssa, %bb16 ]
  %state.sroa.9.2120 = phi ptr [ %_9.i76, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf5b8f37855ac0c3dE.exit69" ], [ %state.sroa.9.1.lcssa, %bb16 ]
  %state.sroa.27.2119 = phi i64 [ %16, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf5b8f37855ac0c3dE.exit69" ], [ %state.sroa.27.1.lcssa, %bb16 ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2702)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2705)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2707)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2710)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2712)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2715)
  %_4.i.i.i64 = load float, ptr %state.sroa.9.2120, align 4, !alias.scope !2717, !noalias !2718, !noundef !32
  %_5.i.i.i65 = load float, ptr %pivot, align 4, !alias.scope !2718, !noalias !2717, !noundef !32
  %.not.i.i.i66 = fcmp uno float %_4.i.i.i64, %_5.i.i.i65
  br i1 %.not.i.i.i66, label %bb2.i.i.i68, label %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf5b8f37855ac0c3dE.exit69", !prof !35

bb2.i.i.i68:                                      ; preds = %bb18
; call core::option::unwrap_failed
  tail call void @_ZN4core6option13unwrap_failed17hef2534b77b89c04fE(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_b0e33ba48ef5fa15e44a55a18226b5ac) #24, !noalias !2719
  unreachable

"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf5b8f37855ac0c3dE.exit69": ; preds = %bb18
  %_0.i67 = fcmp olt float %_4.i.i.i64, %_5.i.i.i65
  %14 = getelementptr inbounds i8, ptr %state.sroa.43.2121, i64 -4
  %dst_base.sroa.0.0.i71 = select i1 %_0.i67, ptr %scratch.0, ptr %14
  %dst.i73 = getelementptr inbounds nuw float, ptr %dst_base.sroa.0.0.i71, i64 %state.sroa.27.2119
  %15 = load i32, ptr %state.sroa.9.2120, align 4, !noalias !2720
  store i32 %15, ptr %dst.i73, align 4, !noalias !2720
  %_8.i75 = zext i1 %_0.i67 to i64
  %16 = add i64 %state.sroa.27.2119, %_8.i75
  %_9.i76 = getelementptr inbounds nuw i8, ptr %state.sroa.9.2120, i64 4
  %_47 = icmp ult ptr %_9.i76, %loop_end
  br i1 %_47, label %bb18, label %bb21

bb23:                                             ; preds = %bb21
  %17 = getelementptr inbounds i8, ptr %state.sroa.43.2.lcssa, i64 -4
  %dst_base.sroa.0.0.i78 = select i1 %pivot_goes_left, ptr %scratch.0, ptr %17
  %dst.i80 = getelementptr inbounds nuw float, ptr %dst_base.sroa.0.0.i78, i64 %state.sroa.27.2.lcssa
  %18 = load i32, ptr %state.sroa.9.2.lcssa, align 4, !noalias !2723
  store i32 %18, ptr %dst.i80, align 4, !noalias !2723
  %19 = add i64 %state.sroa.27.2.lcssa, %_8.i82
  %_9.i83 = getelementptr inbounds nuw i8, ptr %state.sroa.9.2.lcssa, i64 4
  br label %bb3

bb22:                                             ; preds = %bb21
  %20 = shl i64 %state.sroa.27.2.lcssa, 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %v.0, ptr nonnull align 4 %scratch.0, i64 %20, i1 false)
  %_63 = sub i64 %v.1, %state.sroa.27.2.lcssa
  %_97125.not = icmp eq i64 %v.1, %state.sroa.27.2.lcssa
  br i1 %_97125.not, label %bb30, label %bb42.lr.ph

bb42.lr.ph:                                       ; preds = %bb22
  %21 = getelementptr float, ptr %v.0, i64 %state.sroa.27.2.lcssa
  %xtraiter = and i64 %_63, 3
  %22 = sub i64 %state.sroa.27.2.lcssa, %v.1
  %23 = icmp ugt i64 %22, -4
  br i1 %23, label %bb30.loopexit.unr-lcssa, label %bb42.lr.ph.new

bb42.lr.ph.new:                                   ; preds = %bb42.lr.ph
  %unroll_iter = and i64 %_63, -4
  %invariant.gep = getelementptr i8, ptr %21, i64 4
  %invariant.gep141 = getelementptr i8, ptr %21, i64 8
  %invariant.gep143 = getelementptr i8, ptr %21, i64 12
  br label %bb42

bb42:                                             ; preds = %bb42, %bb42.lr.ph.new
  %iter.sroa.0.0126 = phi i64 [ 0, %bb42.lr.ph.new ], [ %34, %bb42 ]
  %niter = phi i64 [ 0, %bb42.lr.ph.new ], [ %niter.next.3, %bb42 ]
  %24 = getelementptr float, ptr %21, i64 %iter.sroa.0.0126
  %25 = xor i64 %iter.sroa.0.0126, -1
  %26 = getelementptr float, ptr %_86, i64 %25
  %27 = load i32, ptr %26, align 4
  store i32 %27, ptr %24, align 4
  %gep = getelementptr float, ptr %invariant.gep, i64 %iter.sroa.0.0126
  %28 = xor i64 %iter.sroa.0.0126, -2
  %29 = getelementptr float, ptr %_86, i64 %28
  %30 = load i32, ptr %29, align 4
  store i32 %30, ptr %gep, align 4
  %gep142 = getelementptr float, ptr %invariant.gep141, i64 %iter.sroa.0.0126
  %31 = xor i64 %iter.sroa.0.0126, -3
  %32 = getelementptr float, ptr %_86, i64 %31
  %33 = load i32, ptr %32, align 4
  store i32 %33, ptr %gep142, align 4
  %34 = add nuw i64 %iter.sroa.0.0126, 4
  %gep144 = getelementptr float, ptr %invariant.gep143, i64 %iter.sroa.0.0126
  %35 = xor i64 %iter.sroa.0.0126, -4
  %36 = getelementptr float, ptr %_86, i64 %35
  %37 = load i32, ptr %36, align 4
  store i32 %37, ptr %gep144, align 4
  %niter.next.3 = add i64 %niter, 4
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %bb30.loopexit.unr-lcssa, label %bb42

bb30.loopexit.unr-lcssa:                          ; preds = %bb42, %bb42.lr.ph
  %iter.sroa.0.0126.unr = phi i64 [ 0, %bb42.lr.ph ], [ %34, %bb42 ]
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %bb30, label %bb42.epil

bb42.epil:                                        ; preds = %bb30.loopexit.unr-lcssa, %bb42.epil
  %iter.sroa.0.0126.epil = phi i64 [ %38, %bb42.epil ], [ %iter.sroa.0.0126.unr, %bb30.loopexit.unr-lcssa ]
  %epil.iter = phi i64 [ %epil.iter.next, %bb42.epil ], [ 0, %bb30.loopexit.unr-lcssa ]
  %38 = add nuw i64 %iter.sroa.0.0126.epil, 1
  %39 = getelementptr float, ptr %21, i64 %iter.sroa.0.0126.epil
  %40 = xor i64 %iter.sroa.0.0126.epil, -1
  %41 = getelementptr float, ptr %_86, i64 %40
  %42 = load i32, ptr %41, align 4
  store i32 %42, ptr %39, align 4
  %epil.iter.next = add i64 %epil.iter, 1
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %bb30, label %bb42.epil, !llvm.loop !2726

bb30:                                             ; preds = %bb30.loopexit.unr-lcssa, %bb42.epil, %bb22
  ret i64 %state.sroa.27.2.lcssa
}

; core::slice::sort::stable::quicksort::stable_partition
; Function Attrs: nonlazybind uwtable
define noundef i64 @_ZN4core5slice4sort6stable9quicksort16stable_partition17h67bec7643deb17b9E(ptr noalias noundef nonnull align 4 captures(address) %v.0, i64 noundef range(i64 0, 2305843009213693952) %v.1, ptr noalias noundef nonnull align 4 captures(none) %scratch.0, i64 noundef range(i64 0, 2305843009213693952) %scratch.1, i64 noundef %0, i1 noundef zeroext %pivot_goes_left, ptr noalias readnone align 8 captures(none) %is_less) unnamed_addr #1 {
start:
  %_8 = icmp samesign uge i64 %scratch.1, %v.1
  %.not = icmp ult i64 %0, %v.1
  %or.cond = and i1 %_8, %.not
  br i1 %or.cond, label %bb33, label %bb31, !prof !2507

bb33:                                             ; preds = %start
  %pivot = getelementptr inbounds nuw float, ptr %v.0, i64 %0
  %_86 = getelementptr float, ptr %scratch.0, i64 %v.1
  %_8.i82 = zext i1 %pivot_goes_left to i64
  br label %bb3

bb31:                                             ; preds = %start
  tail call void @llvm.trap()
  unreachable

bb3:                                              ; preds = %bb23, %bb33
  %state.sroa.27.0 = phi i64 [ 0, %bb33 ], [ %19, %bb23 ]
  %state.sroa.9.0 = phi ptr [ %v.0, %bb33 ], [ %_9.i83, %bb23 ]
  %state.sroa.43.0 = phi ptr [ %_86, %bb33 ], [ %17, %bb23 ]
  %pivot_pos.sroa.0.0 = phi i64 [ %0, %bb33 ], [ %v.1, %bb23 ]
  %1 = tail call i64 @llvm.usub.sat.i64(i64 %pivot_pos.sroa.0.0, i64 3)
  %unroll_end = getelementptr inbounds nuw float, ptr %v.0, i64 %1
  %_19112 = icmp ult ptr %state.sroa.9.0, %unroll_end
  br i1 %_19112, label %bb6, label %bb16

bb6:                                              ; preds = %bb3, %"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17h24759b5143996a24E.exit56"
  %state.sroa.43.1115 = phi ptr [ %11, %"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17h24759b5143996a24E.exit56" ], [ %state.sroa.43.0, %bb3 ]
  %state.sroa.9.1114 = phi ptr [ %_9.i63, %"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17h24759b5143996a24E.exit56" ], [ %state.sroa.9.0, %bb3 ]
  %state.sroa.27.1113 = phi i64 [ %13, %"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17h24759b5143996a24E.exit56" ], [ %state.sroa.27.0, %bb3 ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2727)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2730)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2732)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2735)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2737)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2740)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2742)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2745)
  %_4.i.i.i.i = load float, ptr %pivot, align 4, !alias.scope !2747, !noalias !2748, !noundef !32
  %_5.i.i.i.i = load float, ptr %state.sroa.9.1114, align 4, !alias.scope !2748, !noalias !2747, !noundef !32
  %.not.i.i.i.i = fcmp uno float %_4.i.i.i.i, %_5.i.i.i.i
  br i1 %.not.i.i.i.i, label %bb2.i.i.i.i, label %"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17h24759b5143996a24E.exit", !prof !35

bb2.i.i.i.i:                                      ; preds = %bb6
; call core::option::unwrap_failed
  tail call void @_ZN4core6option13unwrap_failed17hef2534b77b89c04fE(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_4a4e7fec44b84c1472b04d0c86f3e1b7) #24, !noalias !2749
  unreachable

"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17h24759b5143996a24E.exit": ; preds = %bb6
  %_0.i.i = fcmp uge float %_4.i.i.i.i, %_5.i.i.i.i
  %2 = getelementptr inbounds i8, ptr %state.sroa.43.1115, i64 -4
  %dst_base.sroa.0.0.i = select i1 %_0.i.i, ptr %scratch.0, ptr %2
  %dst.i = getelementptr inbounds nuw float, ptr %dst_base.sroa.0.0.i, i64 %state.sroa.27.1113
  %3 = load i32, ptr %state.sroa.9.1114, align 4, !noalias !2750
  store i32 %3, ptr %dst.i, align 4, !noalias !2750
  %_9.i = getelementptr inbounds nuw i8, ptr %state.sroa.9.1114, i64 4
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2753)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2756)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2758)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2761)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2763)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2766)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2768)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2771)
  %_4.i.i.i.i25 = load float, ptr %pivot, align 4, !alias.scope !2773, !noalias !2774, !noundef !32
  %_5.i.i.i.i26 = load float, ptr %_9.i, align 4, !alias.scope !2774, !noalias !2773, !noundef !32
  %.not.i.i.i.i27 = fcmp uno float %_4.i.i.i.i25, %_5.i.i.i.i26
  br i1 %.not.i.i.i.i27, label %bb2.i.i.i.i29, label %"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17h24759b5143996a24E.exit30", !prof !35

bb2.i.i.i.i29:                                    ; preds = %"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17h24759b5143996a24E.exit"
; call core::option::unwrap_failed
  tail call void @_ZN4core6option13unwrap_failed17hef2534b77b89c04fE(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_4a4e7fec44b84c1472b04d0c86f3e1b7) #24, !noalias !2775
  unreachable

"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17h24759b5143996a24E.exit30": ; preds = %"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17h24759b5143996a24E.exit"
  %_8.i = zext i1 %_0.i.i to i64
  %4 = add i64 %state.sroa.27.1113, %_8.i
  %_0.i.i28 = fcmp uge float %_4.i.i.i.i25, %_5.i.i.i.i26
  %5 = getelementptr inbounds i8, ptr %state.sroa.43.1115, i64 -8
  %dst_base.sroa.0.0.i32 = select i1 %_0.i.i28, ptr %scratch.0, ptr %5
  %dst.i34 = getelementptr inbounds nuw float, ptr %dst_base.sroa.0.0.i32, i64 %4
  %6 = load i32, ptr %_9.i, align 4, !noalias !2776
  store i32 %6, ptr %dst.i34, align 4, !noalias !2776
  %_9.i37 = getelementptr inbounds nuw i8, ptr %state.sroa.9.1114, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2779)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2782)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2784)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2787)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2789)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2792)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2794)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2797)
  %_4.i.i.i.i38 = load float, ptr %pivot, align 4, !alias.scope !2799, !noalias !2800, !noundef !32
  %_5.i.i.i.i39 = load float, ptr %_9.i37, align 4, !alias.scope !2800, !noalias !2799, !noundef !32
  %.not.i.i.i.i40 = fcmp uno float %_4.i.i.i.i38, %_5.i.i.i.i39
  br i1 %.not.i.i.i.i40, label %bb2.i.i.i.i42, label %"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17h24759b5143996a24E.exit43", !prof !35

bb2.i.i.i.i42:                                    ; preds = %"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17h24759b5143996a24E.exit30"
; call core::option::unwrap_failed
  tail call void @_ZN4core6option13unwrap_failed17hef2534b77b89c04fE(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_4a4e7fec44b84c1472b04d0c86f3e1b7) #24, !noalias !2801
  unreachable

"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17h24759b5143996a24E.exit43": ; preds = %"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17h24759b5143996a24E.exit30"
  %_8.i36 = zext i1 %_0.i.i28 to i64
  %7 = add i64 %4, %_8.i36
  %_0.i.i41 = fcmp uge float %_4.i.i.i.i38, %_5.i.i.i.i39
  %8 = getelementptr inbounds i8, ptr %state.sroa.43.1115, i64 -12
  %dst_base.sroa.0.0.i45 = select i1 %_0.i.i41, ptr %scratch.0, ptr %8
  %dst.i47 = getelementptr inbounds nuw float, ptr %dst_base.sroa.0.0.i45, i64 %7
  %9 = load i32, ptr %_9.i37, align 4, !noalias !2802
  store i32 %9, ptr %dst.i47, align 4, !noalias !2802
  %_9.i50 = getelementptr inbounds nuw i8, ptr %state.sroa.9.1114, i64 12
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2805)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2808)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2810)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2813)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2815)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2818)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2820)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2823)
  %_4.i.i.i.i51 = load float, ptr %pivot, align 4, !alias.scope !2825, !noalias !2826, !noundef !32
  %_5.i.i.i.i52 = load float, ptr %_9.i50, align 4, !alias.scope !2826, !noalias !2825, !noundef !32
  %.not.i.i.i.i53 = fcmp uno float %_4.i.i.i.i51, %_5.i.i.i.i52
  br i1 %.not.i.i.i.i53, label %bb2.i.i.i.i55, label %"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17h24759b5143996a24E.exit56", !prof !35

bb2.i.i.i.i55:                                    ; preds = %"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17h24759b5143996a24E.exit43"
; call core::option::unwrap_failed
  tail call void @_ZN4core6option13unwrap_failed17hef2534b77b89c04fE(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_4a4e7fec44b84c1472b04d0c86f3e1b7) #24, !noalias !2827
  unreachable

"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17h24759b5143996a24E.exit56": ; preds = %"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17h24759b5143996a24E.exit43"
  %_8.i49 = zext i1 %_0.i.i41 to i64
  %10 = add i64 %7, %_8.i49
  %_0.i.i54 = fcmp uge float %_4.i.i.i.i51, %_5.i.i.i.i52
  %11 = getelementptr inbounds i8, ptr %state.sroa.43.1115, i64 -16
  %dst_base.sroa.0.0.i58 = select i1 %_0.i.i54, ptr %scratch.0, ptr %11
  %dst.i60 = getelementptr inbounds nuw float, ptr %dst_base.sroa.0.0.i58, i64 %10
  %12 = load i32, ptr %_9.i50, align 4, !noalias !2828
  store i32 %12, ptr %dst.i60, align 4, !noalias !2828
  %_8.i62 = zext i1 %_0.i.i54 to i64
  %13 = add i64 %10, %_8.i62
  %_9.i63 = getelementptr inbounds nuw i8, ptr %state.sroa.9.1114, i64 16
  %_19 = icmp ult ptr %_9.i63, %unroll_end
  br i1 %_19, label %bb6, label %bb16

bb16:                                             ; preds = %"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17h24759b5143996a24E.exit56", %bb3
  %state.sroa.27.1.lcssa = phi i64 [ %state.sroa.27.0, %bb3 ], [ %13, %"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17h24759b5143996a24E.exit56" ]
  %state.sroa.9.1.lcssa = phi ptr [ %state.sroa.9.0, %bb3 ], [ %_9.i63, %"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17h24759b5143996a24E.exit56" ]
  %state.sroa.43.1.lcssa = phi ptr [ %state.sroa.43.0, %bb3 ], [ %11, %"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17h24759b5143996a24E.exit56" ]
  %loop_end = getelementptr inbounds nuw float, ptr %v.0, i64 %pivot_pos.sroa.0.0
  %_47118 = icmp ult ptr %state.sroa.9.1.lcssa, %loop_end
  br i1 %_47118, label %bb18, label %bb21

bb21:                                             ; preds = %"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17h24759b5143996a24E.exit69", %bb16
  %state.sroa.27.2.lcssa = phi i64 [ %state.sroa.27.1.lcssa, %bb16 ], [ %16, %"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17h24759b5143996a24E.exit69" ]
  %state.sroa.9.2.lcssa = phi ptr [ %state.sroa.9.1.lcssa, %bb16 ], [ %_9.i76, %"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17h24759b5143996a24E.exit69" ]
  %state.sroa.43.2.lcssa = phi ptr [ %state.sroa.43.1.lcssa, %bb16 ], [ %14, %"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17h24759b5143996a24E.exit69" ]
  %_55 = icmp eq i64 %pivot_pos.sroa.0.0, %v.1
  br i1 %_55, label %bb22, label %bb23

bb18:                                             ; preds = %bb16, %"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17h24759b5143996a24E.exit69"
  %state.sroa.43.2121 = phi ptr [ %14, %"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17h24759b5143996a24E.exit69" ], [ %state.sroa.43.1.lcssa, %bb16 ]
  %state.sroa.9.2120 = phi ptr [ %_9.i76, %"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17h24759b5143996a24E.exit69" ], [ %state.sroa.9.1.lcssa, %bb16 ]
  %state.sroa.27.2119 = phi i64 [ %16, %"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17h24759b5143996a24E.exit69" ], [ %state.sroa.27.1.lcssa, %bb16 ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2831)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2834)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2836)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2839)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2841)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2844)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2846)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2849)
  %_4.i.i.i.i64 = load float, ptr %pivot, align 4, !alias.scope !2851, !noalias !2852, !noundef !32
  %_5.i.i.i.i65 = load float, ptr %state.sroa.9.2120, align 4, !alias.scope !2852, !noalias !2851, !noundef !32
  %.not.i.i.i.i66 = fcmp uno float %_4.i.i.i.i64, %_5.i.i.i.i65
  br i1 %.not.i.i.i.i66, label %bb2.i.i.i.i68, label %"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17h24759b5143996a24E.exit69", !prof !35

bb2.i.i.i.i68:                                    ; preds = %bb18
; call core::option::unwrap_failed
  tail call void @_ZN4core6option13unwrap_failed17hef2534b77b89c04fE(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_4a4e7fec44b84c1472b04d0c86f3e1b7) #24, !noalias !2853
  unreachable

"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17h24759b5143996a24E.exit69": ; preds = %bb18
  %_0.i.i67 = fcmp uge float %_4.i.i.i.i64, %_5.i.i.i.i65
  %14 = getelementptr inbounds i8, ptr %state.sroa.43.2121, i64 -4
  %dst_base.sroa.0.0.i71 = select i1 %_0.i.i67, ptr %scratch.0, ptr %14
  %dst.i73 = getelementptr inbounds nuw float, ptr %dst_base.sroa.0.0.i71, i64 %state.sroa.27.2119
  %15 = load i32, ptr %state.sroa.9.2120, align 4, !noalias !2854
  store i32 %15, ptr %dst.i73, align 4, !noalias !2854
  %_8.i75 = zext i1 %_0.i.i67 to i64
  %16 = add i64 %state.sroa.27.2119, %_8.i75
  %_9.i76 = getelementptr inbounds nuw i8, ptr %state.sroa.9.2120, i64 4
  %_47 = icmp ult ptr %_9.i76, %loop_end
  br i1 %_47, label %bb18, label %bb21

bb23:                                             ; preds = %bb21
  %17 = getelementptr inbounds i8, ptr %state.sroa.43.2.lcssa, i64 -4
  %dst_base.sroa.0.0.i78 = select i1 %pivot_goes_left, ptr %scratch.0, ptr %17
  %dst.i80 = getelementptr inbounds nuw float, ptr %dst_base.sroa.0.0.i78, i64 %state.sroa.27.2.lcssa
  %18 = load i32, ptr %state.sroa.9.2.lcssa, align 4, !noalias !2857
  store i32 %18, ptr %dst.i80, align 4, !noalias !2857
  %19 = add i64 %state.sroa.27.2.lcssa, %_8.i82
  %_9.i83 = getelementptr inbounds nuw i8, ptr %state.sroa.9.2.lcssa, i64 4
  br label %bb3

bb22:                                             ; preds = %bb21
  %20 = shl i64 %state.sroa.27.2.lcssa, 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %v.0, ptr nonnull align 4 %scratch.0, i64 %20, i1 false)
  %_63 = sub i64 %v.1, %state.sroa.27.2.lcssa
  %_97125.not = icmp eq i64 %v.1, %state.sroa.27.2.lcssa
  br i1 %_97125.not, label %bb30, label %bb42.lr.ph

bb42.lr.ph:                                       ; preds = %bb22
  %21 = getelementptr float, ptr %v.0, i64 %state.sroa.27.2.lcssa
  %xtraiter = and i64 %_63, 3
  %22 = sub i64 %state.sroa.27.2.lcssa, %v.1
  %23 = icmp ugt i64 %22, -4
  br i1 %23, label %bb30.loopexit.unr-lcssa, label %bb42.lr.ph.new

bb42.lr.ph.new:                                   ; preds = %bb42.lr.ph
  %unroll_iter = and i64 %_63, -4
  %invariant.gep = getelementptr i8, ptr %21, i64 4
  %invariant.gep141 = getelementptr i8, ptr %21, i64 8
  %invariant.gep143 = getelementptr i8, ptr %21, i64 12
  br label %bb42

bb42:                                             ; preds = %bb42, %bb42.lr.ph.new
  %iter.sroa.0.0126 = phi i64 [ 0, %bb42.lr.ph.new ], [ %34, %bb42 ]
  %niter = phi i64 [ 0, %bb42.lr.ph.new ], [ %niter.next.3, %bb42 ]
  %24 = getelementptr float, ptr %21, i64 %iter.sroa.0.0126
  %25 = xor i64 %iter.sroa.0.0126, -1
  %26 = getelementptr float, ptr %_86, i64 %25
  %27 = load i32, ptr %26, align 4
  store i32 %27, ptr %24, align 4
  %gep = getelementptr float, ptr %invariant.gep, i64 %iter.sroa.0.0126
  %28 = xor i64 %iter.sroa.0.0126, -2
  %29 = getelementptr float, ptr %_86, i64 %28
  %30 = load i32, ptr %29, align 4
  store i32 %30, ptr %gep, align 4
  %gep142 = getelementptr float, ptr %invariant.gep141, i64 %iter.sroa.0.0126
  %31 = xor i64 %iter.sroa.0.0126, -3
  %32 = getelementptr float, ptr %_86, i64 %31
  %33 = load i32, ptr %32, align 4
  store i32 %33, ptr %gep142, align 4
  %34 = add nuw i64 %iter.sroa.0.0126, 4
  %gep144 = getelementptr float, ptr %invariant.gep143, i64 %iter.sroa.0.0126
  %35 = xor i64 %iter.sroa.0.0126, -4
  %36 = getelementptr float, ptr %_86, i64 %35
  %37 = load i32, ptr %36, align 4
  store i32 %37, ptr %gep144, align 4
  %niter.next.3 = add i64 %niter, 4
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %bb30.loopexit.unr-lcssa, label %bb42

bb30.loopexit.unr-lcssa:                          ; preds = %bb42, %bb42.lr.ph
  %iter.sroa.0.0126.unr = phi i64 [ 0, %bb42.lr.ph ], [ %34, %bb42 ]
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %bb30, label %bb42.epil

bb42.epil:                                        ; preds = %bb30.loopexit.unr-lcssa, %bb42.epil
  %iter.sroa.0.0126.epil = phi i64 [ %38, %bb42.epil ], [ %iter.sroa.0.0126.unr, %bb30.loopexit.unr-lcssa ]
  %epil.iter = phi i64 [ %epil.iter.next, %bb42.epil ], [ 0, %bb30.loopexit.unr-lcssa ]
  %38 = add nuw i64 %iter.sroa.0.0126.epil, 1
  %39 = getelementptr float, ptr %21, i64 %iter.sroa.0.0126.epil
  %40 = xor i64 %iter.sroa.0.0126.epil, -1
  %41 = getelementptr float, ptr %_86, i64 %40
  %42 = load i32, ptr %41, align 4
  store i32 %42, ptr %39, align 4
  %epil.iter.next = add i64 %epil.iter, 1
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %bb30, label %bb42.epil, !llvm.loop !2860

bb30:                                             ; preds = %bb30.loopexit.unr-lcssa, %bb42.epil, %bb22
  ret i64 %state.sroa.27.2.lcssa
}

; core::slice::sort::stable::quicksort::stable_partition
; Function Attrs: nounwind nonlazybind memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable
define noundef i64 @_ZN4core5slice4sort6stable9quicksort16stable_partition17h6c33e90b131fae27E(ptr noalias noundef nonnull align 4 captures(address) %v.0, i64 noundef range(i64 0, 2305843009213693952) %v.1, ptr noalias noundef nonnull align 4 captures(none) %scratch.0, i64 noundef range(i64 0, 2305843009213693952) %scratch.1, i64 noundef %0, i1 noundef zeroext %pivot_goes_left, ptr noalias readnone align 8 captures(none) %is_less) unnamed_addr #4 {
start:
  %_8 = icmp samesign uge i64 %scratch.1, %v.1
  %.not = icmp ult i64 %0, %v.1
  %or.cond = and i1 %_8, %.not
  br i1 %or.cond, label %bb33, label %bb31, !prof !2507

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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2861)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2864)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2866)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2869)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2871)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2874)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2876)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2879)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2881)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2884)
  %_3.i.i.i.i.i = load i32, ptr %pivot, align 4, !alias.scope !2886, !noalias !2887, !noundef !32
  %_4.i.i.i.i.i = load i32, ptr %state.sroa.9.187, align 4, !alias.scope !2887, !noalias !2886, !noundef !32
  %_0.i.i = icmp sge i32 %_3.i.i.i.i.i, %_4.i.i.i.i.i
  %2 = getelementptr inbounds i8, ptr %state.sroa.43.188, i64 -4
  %dst_base.sroa.0.0.i = select i1 %_0.i.i, ptr %scratch.0, ptr %2
  %dst.i = getelementptr inbounds nuw i32, ptr %dst_base.sroa.0.0.i, i64 %state.sroa.27.186
  store i32 %_4.i.i.i.i.i, ptr %dst.i, align 4, !noalias !2888
  %_8.i = zext i1 %_0.i.i to i64
  %3 = add i64 %state.sroa.27.186, %_8.i
  %_9.i = getelementptr inbounds nuw i8, ptr %state.sroa.9.187, i64 4
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2891)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2894)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2896)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2899)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2901)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2904)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2906)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2909)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2911)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2914)
  %_3.i.i.i.i.i25 = load i32, ptr %pivot, align 4, !alias.scope !2916, !noalias !2917, !noundef !32
  %_4.i.i.i.i.i26 = load i32, ptr %_9.i, align 4, !alias.scope !2917, !noalias !2916, !noundef !32
  %_0.i.i27 = icmp sge i32 %_3.i.i.i.i.i25, %_4.i.i.i.i.i26
  %4 = getelementptr inbounds i8, ptr %state.sroa.43.188, i64 -8
  %dst_base.sroa.0.0.i29 = select i1 %_0.i.i27, ptr %scratch.0, ptr %4
  %dst.i31 = getelementptr inbounds nuw i32, ptr %dst_base.sroa.0.0.i29, i64 %3
  store i32 %_4.i.i.i.i.i26, ptr %dst.i31, align 4, !noalias !2918
  %_8.i33 = zext i1 %_0.i.i27 to i64
  %5 = add i64 %3, %_8.i33
  %_9.i34 = getelementptr inbounds nuw i8, ptr %state.sroa.9.187, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2921)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2924)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2926)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2929)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2931)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2934)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2936)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2939)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2941)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2944)
  %_3.i.i.i.i.i35 = load i32, ptr %pivot, align 4, !alias.scope !2946, !noalias !2947, !noundef !32
  %_4.i.i.i.i.i36 = load i32, ptr %_9.i34, align 4, !alias.scope !2947, !noalias !2946, !noundef !32
  %_0.i.i37 = icmp sge i32 %_3.i.i.i.i.i35, %_4.i.i.i.i.i36
  %6 = getelementptr inbounds i8, ptr %state.sroa.43.188, i64 -12
  %dst_base.sroa.0.0.i39 = select i1 %_0.i.i37, ptr %scratch.0, ptr %6
  %dst.i41 = getelementptr inbounds nuw i32, ptr %dst_base.sroa.0.0.i39, i64 %5
  store i32 %_4.i.i.i.i.i36, ptr %dst.i41, align 4, !noalias !2948
  %_8.i43 = zext i1 %_0.i.i37 to i64
  %7 = add i64 %5, %_8.i43
  %_9.i44 = getelementptr inbounds nuw i8, ptr %state.sroa.9.187, i64 12
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2951)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2954)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2956)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2959)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2961)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2964)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2966)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2969)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2971)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2974)
  %_3.i.i.i.i.i45 = load i32, ptr %pivot, align 4, !alias.scope !2976, !noalias !2977, !noundef !32
  %_4.i.i.i.i.i46 = load i32, ptr %_9.i44, align 4, !alias.scope !2977, !noalias !2976, !noundef !32
  %_0.i.i47 = icmp sge i32 %_3.i.i.i.i.i45, %_4.i.i.i.i.i46
  %8 = getelementptr inbounds i8, ptr %state.sroa.43.188, i64 -16
  %dst_base.sroa.0.0.i49 = select i1 %_0.i.i47, ptr %scratch.0, ptr %8
  %dst.i51 = getelementptr inbounds nuw i32, ptr %dst_base.sroa.0.0.i49, i64 %7
  store i32 %_4.i.i.i.i.i46, ptr %dst.i51, align 4, !noalias !2978
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2981)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2984)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2986)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2989)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2991)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2994)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2996)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2999)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3001)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3004)
  %_3.i.i.i.i.i55 = load i32, ptr %pivot, align 4, !alias.scope !3006, !noalias !3007, !noundef !32
  %_4.i.i.i.i.i56 = load i32, ptr %state.sroa.9.293, align 4, !alias.scope !3007, !noalias !3006, !noundef !32
  %_0.i.i57 = icmp sge i32 %_3.i.i.i.i.i55, %_4.i.i.i.i.i56
  %10 = getelementptr inbounds i8, ptr %state.sroa.43.294, i64 -4
  %dst_base.sroa.0.0.i59 = select i1 %_0.i.i57, ptr %scratch.0, ptr %10
  %dst.i61 = getelementptr inbounds nuw i32, ptr %dst_base.sroa.0.0.i59, i64 %state.sroa.27.292
  store i32 %_4.i.i.i.i.i56, ptr %dst.i61, align 4, !noalias !3008
  %_8.i63 = zext i1 %_0.i.i57 to i64
  %11 = add i64 %state.sroa.27.292, %_8.i63
  %_9.i64 = getelementptr inbounds nuw i8, ptr %state.sroa.9.293, i64 4
  %_47 = icmp ult ptr %_9.i64, %loop_end
  br i1 %_47, label %bb18, label %bb21

bb23:                                             ; preds = %bb21
  %12 = getelementptr inbounds i8, ptr %state.sroa.43.2.lcssa, i64 -4
  %dst_base.sroa.0.0.i66 = select i1 %pivot_goes_left, ptr %scratch.0, ptr %12
  %dst.i68 = getelementptr inbounds nuw i32, ptr %dst_base.sroa.0.0.i66, i64 %state.sroa.27.2.lcssa
  %13 = load i32, ptr %state.sroa.9.2.lcssa, align 4, !noalias !3011
  store i32 %13, ptr %dst.i68, align 4, !noalias !3011
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
  br i1 %epil.iter.cmp.not, label %bb30, label %bb42.epil, !llvm.loop !3014

bb30:                                             ; preds = %bb30.loopexit.unr-lcssa, %bb42.epil, %bb22
  ret i64 %state.sroa.27.2.lcssa
}

; core::slice::sort::stable::quicksort::stable_partition
; Function Attrs: nounwind nonlazybind memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable
define noundef i64 @_ZN4core5slice4sort6stable9quicksort16stable_partition17hbf53dee0aa959731E(ptr noalias noundef nonnull align 4 captures(address) %v.0, i64 noundef range(i64 0, 2305843009213693952) %v.1, ptr noalias noundef nonnull align 4 captures(none) %scratch.0, i64 noundef range(i64 0, 2305843009213693952) %scratch.1, i64 noundef %0, i1 noundef zeroext %pivot_goes_left, ptr noalias readnone align 8 captures(none) %is_less) unnamed_addr #4 {
start:
  %_8 = icmp samesign uge i64 %scratch.1, %v.1
  %.not = icmp ult i64 %0, %v.1
  %or.cond = and i1 %_8, %.not
  br i1 %or.cond, label %bb33, label %bb31, !prof !2507

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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3015)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3018)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3020)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3023)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3025)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3028)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3030)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3033)
  %_3.i.i.i.i = load i32, ptr %state.sroa.9.187, align 4, !alias.scope !3035, !noalias !3036, !noundef !32
  %_4.i.i.i.i = load i32, ptr %pivot, align 4, !alias.scope !3036, !noalias !3035, !noundef !32
  %_0.i = icmp slt i32 %_3.i.i.i.i, %_4.i.i.i.i
  %2 = getelementptr inbounds i8, ptr %state.sroa.43.188, i64 -4
  %dst_base.sroa.0.0.i = select i1 %_0.i, ptr %scratch.0, ptr %2
  %dst.i = getelementptr inbounds nuw i32, ptr %dst_base.sroa.0.0.i, i64 %state.sroa.27.186
  store i32 %_3.i.i.i.i, ptr %dst.i, align 4, !noalias !3037
  %_8.i = zext i1 %_0.i to i64
  %3 = add i64 %state.sroa.27.186, %_8.i
  %_9.i = getelementptr inbounds nuw i8, ptr %state.sroa.9.187, i64 4
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3040)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3043)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3045)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3048)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3050)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3053)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3055)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3058)
  %_3.i.i.i.i25 = load i32, ptr %_9.i, align 4, !alias.scope !3060, !noalias !3061, !noundef !32
  %_4.i.i.i.i26 = load i32, ptr %pivot, align 4, !alias.scope !3061, !noalias !3060, !noundef !32
  %_0.i27 = icmp slt i32 %_3.i.i.i.i25, %_4.i.i.i.i26
  %4 = getelementptr inbounds i8, ptr %state.sroa.43.188, i64 -8
  %dst_base.sroa.0.0.i29 = select i1 %_0.i27, ptr %scratch.0, ptr %4
  %dst.i31 = getelementptr inbounds nuw i32, ptr %dst_base.sroa.0.0.i29, i64 %3
  store i32 %_3.i.i.i.i25, ptr %dst.i31, align 4, !noalias !3062
  %_8.i33 = zext i1 %_0.i27 to i64
  %5 = add i64 %3, %_8.i33
  %_9.i34 = getelementptr inbounds nuw i8, ptr %state.sroa.9.187, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3065)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3068)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3070)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3073)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3075)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3078)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3080)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3083)
  %_3.i.i.i.i35 = load i32, ptr %_9.i34, align 4, !alias.scope !3085, !noalias !3086, !noundef !32
  %_4.i.i.i.i36 = load i32, ptr %pivot, align 4, !alias.scope !3086, !noalias !3085, !noundef !32
  %_0.i37 = icmp slt i32 %_3.i.i.i.i35, %_4.i.i.i.i36
  %6 = getelementptr inbounds i8, ptr %state.sroa.43.188, i64 -12
  %dst_base.sroa.0.0.i39 = select i1 %_0.i37, ptr %scratch.0, ptr %6
  %dst.i41 = getelementptr inbounds nuw i32, ptr %dst_base.sroa.0.0.i39, i64 %5
  store i32 %_3.i.i.i.i35, ptr %dst.i41, align 4, !noalias !3087
  %_8.i43 = zext i1 %_0.i37 to i64
  %7 = add i64 %5, %_8.i43
  %_9.i44 = getelementptr inbounds nuw i8, ptr %state.sroa.9.187, i64 12
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3090)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3093)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3095)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3098)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3100)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3103)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3105)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3108)
  %_3.i.i.i.i45 = load i32, ptr %_9.i44, align 4, !alias.scope !3110, !noalias !3111, !noundef !32
  %_4.i.i.i.i46 = load i32, ptr %pivot, align 4, !alias.scope !3111, !noalias !3110, !noundef !32
  %_0.i47 = icmp slt i32 %_3.i.i.i.i45, %_4.i.i.i.i46
  %8 = getelementptr inbounds i8, ptr %state.sroa.43.188, i64 -16
  %dst_base.sroa.0.0.i49 = select i1 %_0.i47, ptr %scratch.0, ptr %8
  %dst.i51 = getelementptr inbounds nuw i32, ptr %dst_base.sroa.0.0.i49, i64 %7
  store i32 %_3.i.i.i.i45, ptr %dst.i51, align 4, !noalias !3112
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3115)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3118)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3120)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3123)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3125)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3128)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3130)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3133)
  %_3.i.i.i.i55 = load i32, ptr %state.sroa.9.293, align 4, !alias.scope !3135, !noalias !3136, !noundef !32
  %_4.i.i.i.i56 = load i32, ptr %pivot, align 4, !alias.scope !3136, !noalias !3135, !noundef !32
  %_0.i57 = icmp slt i32 %_3.i.i.i.i55, %_4.i.i.i.i56
  %10 = getelementptr inbounds i8, ptr %state.sroa.43.294, i64 -4
  %dst_base.sroa.0.0.i59 = select i1 %_0.i57, ptr %scratch.0, ptr %10
  %dst.i61 = getelementptr inbounds nuw i32, ptr %dst_base.sroa.0.0.i59, i64 %state.sroa.27.292
  store i32 %_3.i.i.i.i55, ptr %dst.i61, align 4, !noalias !3137
  %_8.i63 = zext i1 %_0.i57 to i64
  %11 = add i64 %state.sroa.27.292, %_8.i63
  %_9.i64 = getelementptr inbounds nuw i8, ptr %state.sroa.9.293, i64 4
  %_47 = icmp ult ptr %_9.i64, %loop_end
  br i1 %_47, label %bb18, label %bb21

bb23:                                             ; preds = %bb21
  %12 = getelementptr inbounds i8, ptr %state.sroa.43.2.lcssa, i64 -4
  %dst_base.sroa.0.0.i66 = select i1 %pivot_goes_left, ptr %scratch.0, ptr %12
  %dst.i68 = getelementptr inbounds nuw i32, ptr %dst_base.sroa.0.0.i66, i64 %state.sroa.27.2.lcssa
  %13 = load i32, ptr %state.sroa.9.2.lcssa, align 4, !noalias !3140
  store i32 %13, ptr %dst.i68, align 4, !noalias !3140
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
  br i1 %epil.iter.cmp.not, label %bb30, label %bb42.epil, !llvm.loop !3143

bb30:                                             ; preds = %bb30.loopexit.unr-lcssa, %bb42.epil, %bb22
  ret i64 %state.sroa.27.2.lcssa
}

; core::slice::sort::stable::quicksort::stable_partition
; Function Attrs: nonlazybind uwtable
define noundef i64 @_ZN4core5slice4sort6stable9quicksort16stable_partition17hf5b3315b4b2c5f83E(ptr noalias noundef nonnull align 4 captures(address) %v.0, i64 noundef range(i64 0, 2305843009213693952) %v.1, ptr noalias noundef nonnull align 4 captures(none) %scratch.0, i64 noundef range(i64 0, 2305843009213693952) %scratch.1, i64 noundef %0, i1 noundef zeroext %pivot_goes_left, ptr noalias readnone align 8 captures(none) %is_less) unnamed_addr #1 {
start:
  %_8 = icmp samesign uge i64 %scratch.1, %v.1
  %.not = icmp ult i64 %0, %v.1
  %or.cond = and i1 %_8, %.not
  br i1 %or.cond, label %bb33, label %bb31, !prof !2507

bb33:                                             ; preds = %start
  %pivot = getelementptr inbounds nuw float, ptr %v.0, i64 %0
  %_86 = getelementptr float, ptr %scratch.0, i64 %v.1
  %_8.i82 = zext i1 %pivot_goes_left to i64
  br label %bb3

bb31:                                             ; preds = %start
  tail call void @llvm.trap()
  unreachable

bb3:                                              ; preds = %bb23, %bb33
  %state.sroa.27.0 = phi i64 [ 0, %bb33 ], [ %19, %bb23 ]
  %state.sroa.9.0 = phi ptr [ %v.0, %bb33 ], [ %_9.i83, %bb23 ]
  %state.sroa.43.0 = phi ptr [ %_86, %bb33 ], [ %17, %bb23 ]
  %pivot_pos.sroa.0.0 = phi i64 [ %0, %bb33 ], [ %v.1, %bb23 ]
  %1 = tail call i64 @llvm.usub.sat.i64(i64 %pivot_pos.sroa.0.0, i64 3)
  %unroll_end = getelementptr inbounds nuw float, ptr %v.0, i64 %1
  %_19112 = icmp ult ptr %state.sroa.9.0, %unroll_end
  br i1 %_19112, label %bb6, label %bb16

bb6:                                              ; preds = %bb3, %"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17h9dd9effb4230de85E.exit56"
  %state.sroa.43.1115 = phi ptr [ %11, %"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17h9dd9effb4230de85E.exit56" ], [ %state.sroa.43.0, %bb3 ]
  %state.sroa.9.1114 = phi ptr [ %_9.i63, %"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17h9dd9effb4230de85E.exit56" ], [ %state.sroa.9.0, %bb3 ]
  %state.sroa.27.1113 = phi i64 [ %13, %"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17h9dd9effb4230de85E.exit56" ], [ %state.sroa.27.0, %bb3 ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3144)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3147)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3149)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3152)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3154)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3157)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3159)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3162)
  %_4.i.i.i.i = load float, ptr %pivot, align 4, !alias.scope !3164, !noalias !3165, !noundef !32
  %_5.i.i.i.i = load float, ptr %state.sroa.9.1114, align 4, !alias.scope !3165, !noalias !3164, !noundef !32
  %.not.i.i.i.i = fcmp uno float %_4.i.i.i.i, %_5.i.i.i.i
  br i1 %.not.i.i.i.i, label %bb2.i.i.i.i, label %"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17h9dd9effb4230de85E.exit", !prof !35

bb2.i.i.i.i:                                      ; preds = %bb6
; call core::option::unwrap_failed
  tail call void @_ZN4core6option13unwrap_failed17hef2534b77b89c04fE(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_b0e33ba48ef5fa15e44a55a18226b5ac) #24, !noalias !3166
  unreachable

"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17h9dd9effb4230de85E.exit": ; preds = %bb6
  %_0.i.i = fcmp uge float %_4.i.i.i.i, %_5.i.i.i.i
  %2 = getelementptr inbounds i8, ptr %state.sroa.43.1115, i64 -4
  %dst_base.sroa.0.0.i = select i1 %_0.i.i, ptr %scratch.0, ptr %2
  %dst.i = getelementptr inbounds nuw float, ptr %dst_base.sroa.0.0.i, i64 %state.sroa.27.1113
  %3 = load i32, ptr %state.sroa.9.1114, align 4, !noalias !3167
  store i32 %3, ptr %dst.i, align 4, !noalias !3167
  %_9.i = getelementptr inbounds nuw i8, ptr %state.sroa.9.1114, i64 4
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3170)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3173)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3175)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3178)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3180)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3183)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3185)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3188)
  %_4.i.i.i.i25 = load float, ptr %pivot, align 4, !alias.scope !3190, !noalias !3191, !noundef !32
  %_5.i.i.i.i26 = load float, ptr %_9.i, align 4, !alias.scope !3191, !noalias !3190, !noundef !32
  %.not.i.i.i.i27 = fcmp uno float %_4.i.i.i.i25, %_5.i.i.i.i26
  br i1 %.not.i.i.i.i27, label %bb2.i.i.i.i29, label %"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17h9dd9effb4230de85E.exit30", !prof !35

bb2.i.i.i.i29:                                    ; preds = %"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17h9dd9effb4230de85E.exit"
; call core::option::unwrap_failed
  tail call void @_ZN4core6option13unwrap_failed17hef2534b77b89c04fE(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_b0e33ba48ef5fa15e44a55a18226b5ac) #24, !noalias !3192
  unreachable

"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17h9dd9effb4230de85E.exit30": ; preds = %"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17h9dd9effb4230de85E.exit"
  %_8.i = zext i1 %_0.i.i to i64
  %4 = add i64 %state.sroa.27.1113, %_8.i
  %_0.i.i28 = fcmp uge float %_4.i.i.i.i25, %_5.i.i.i.i26
  %5 = getelementptr inbounds i8, ptr %state.sroa.43.1115, i64 -8
  %dst_base.sroa.0.0.i32 = select i1 %_0.i.i28, ptr %scratch.0, ptr %5
  %dst.i34 = getelementptr inbounds nuw float, ptr %dst_base.sroa.0.0.i32, i64 %4
  %6 = load i32, ptr %_9.i, align 4, !noalias !3193
  store i32 %6, ptr %dst.i34, align 4, !noalias !3193
  %_9.i37 = getelementptr inbounds nuw i8, ptr %state.sroa.9.1114, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3196)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3199)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3201)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3204)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3206)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3209)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3211)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3214)
  %_4.i.i.i.i38 = load float, ptr %pivot, align 4, !alias.scope !3216, !noalias !3217, !noundef !32
  %_5.i.i.i.i39 = load float, ptr %_9.i37, align 4, !alias.scope !3217, !noalias !3216, !noundef !32
  %.not.i.i.i.i40 = fcmp uno float %_4.i.i.i.i38, %_5.i.i.i.i39
  br i1 %.not.i.i.i.i40, label %bb2.i.i.i.i42, label %"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17h9dd9effb4230de85E.exit43", !prof !35

bb2.i.i.i.i42:                                    ; preds = %"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17h9dd9effb4230de85E.exit30"
; call core::option::unwrap_failed
  tail call void @_ZN4core6option13unwrap_failed17hef2534b77b89c04fE(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_b0e33ba48ef5fa15e44a55a18226b5ac) #24, !noalias !3218
  unreachable

"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17h9dd9effb4230de85E.exit43": ; preds = %"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17h9dd9effb4230de85E.exit30"
  %_8.i36 = zext i1 %_0.i.i28 to i64
  %7 = add i64 %4, %_8.i36
  %_0.i.i41 = fcmp uge float %_4.i.i.i.i38, %_5.i.i.i.i39
  %8 = getelementptr inbounds i8, ptr %state.sroa.43.1115, i64 -12
  %dst_base.sroa.0.0.i45 = select i1 %_0.i.i41, ptr %scratch.0, ptr %8
  %dst.i47 = getelementptr inbounds nuw float, ptr %dst_base.sroa.0.0.i45, i64 %7
  %9 = load i32, ptr %_9.i37, align 4, !noalias !3219
  store i32 %9, ptr %dst.i47, align 4, !noalias !3219
  %_9.i50 = getelementptr inbounds nuw i8, ptr %state.sroa.9.1114, i64 12
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3222)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3225)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3227)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3230)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3232)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3235)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3237)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3240)
  %_4.i.i.i.i51 = load float, ptr %pivot, align 4, !alias.scope !3242, !noalias !3243, !noundef !32
  %_5.i.i.i.i52 = load float, ptr %_9.i50, align 4, !alias.scope !3243, !noalias !3242, !noundef !32
  %.not.i.i.i.i53 = fcmp uno float %_4.i.i.i.i51, %_5.i.i.i.i52
  br i1 %.not.i.i.i.i53, label %bb2.i.i.i.i55, label %"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17h9dd9effb4230de85E.exit56", !prof !35

bb2.i.i.i.i55:                                    ; preds = %"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17h9dd9effb4230de85E.exit43"
; call core::option::unwrap_failed
  tail call void @_ZN4core6option13unwrap_failed17hef2534b77b89c04fE(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_b0e33ba48ef5fa15e44a55a18226b5ac) #24, !noalias !3244
  unreachable

"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17h9dd9effb4230de85E.exit56": ; preds = %"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17h9dd9effb4230de85E.exit43"
  %_8.i49 = zext i1 %_0.i.i41 to i64
  %10 = add i64 %7, %_8.i49
  %_0.i.i54 = fcmp uge float %_4.i.i.i.i51, %_5.i.i.i.i52
  %11 = getelementptr inbounds i8, ptr %state.sroa.43.1115, i64 -16
  %dst_base.sroa.0.0.i58 = select i1 %_0.i.i54, ptr %scratch.0, ptr %11
  %dst.i60 = getelementptr inbounds nuw float, ptr %dst_base.sroa.0.0.i58, i64 %10
  %12 = load i32, ptr %_9.i50, align 4, !noalias !3245
  store i32 %12, ptr %dst.i60, align 4, !noalias !3245
  %_8.i62 = zext i1 %_0.i.i54 to i64
  %13 = add i64 %10, %_8.i62
  %_9.i63 = getelementptr inbounds nuw i8, ptr %state.sroa.9.1114, i64 16
  %_19 = icmp ult ptr %_9.i63, %unroll_end
  br i1 %_19, label %bb6, label %bb16

bb16:                                             ; preds = %"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17h9dd9effb4230de85E.exit56", %bb3
  %state.sroa.27.1.lcssa = phi i64 [ %state.sroa.27.0, %bb3 ], [ %13, %"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17h9dd9effb4230de85E.exit56" ]
  %state.sroa.9.1.lcssa = phi ptr [ %state.sroa.9.0, %bb3 ], [ %_9.i63, %"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17h9dd9effb4230de85E.exit56" ]
  %state.sroa.43.1.lcssa = phi ptr [ %state.sroa.43.0, %bb3 ], [ %11, %"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17h9dd9effb4230de85E.exit56" ]
  %loop_end = getelementptr inbounds nuw float, ptr %v.0, i64 %pivot_pos.sroa.0.0
  %_47118 = icmp ult ptr %state.sroa.9.1.lcssa, %loop_end
  br i1 %_47118, label %bb18, label %bb21

bb21:                                             ; preds = %"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17h9dd9effb4230de85E.exit69", %bb16
  %state.sroa.27.2.lcssa = phi i64 [ %state.sroa.27.1.lcssa, %bb16 ], [ %16, %"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17h9dd9effb4230de85E.exit69" ]
  %state.sroa.9.2.lcssa = phi ptr [ %state.sroa.9.1.lcssa, %bb16 ], [ %_9.i76, %"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17h9dd9effb4230de85E.exit69" ]
  %state.sroa.43.2.lcssa = phi ptr [ %state.sroa.43.1.lcssa, %bb16 ], [ %14, %"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17h9dd9effb4230de85E.exit69" ]
  %_55 = icmp eq i64 %pivot_pos.sroa.0.0, %v.1
  br i1 %_55, label %bb22, label %bb23

bb18:                                             ; preds = %bb16, %"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17h9dd9effb4230de85E.exit69"
  %state.sroa.43.2121 = phi ptr [ %14, %"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17h9dd9effb4230de85E.exit69" ], [ %state.sroa.43.1.lcssa, %bb16 ]
  %state.sroa.9.2120 = phi ptr [ %_9.i76, %"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17h9dd9effb4230de85E.exit69" ], [ %state.sroa.9.1.lcssa, %bb16 ]
  %state.sroa.27.2119 = phi i64 [ %16, %"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17h9dd9effb4230de85E.exit69" ], [ %state.sroa.27.1.lcssa, %bb16 ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3248)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3251)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3253)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3256)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3258)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3261)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3263)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3266)
  %_4.i.i.i.i64 = load float, ptr %pivot, align 4, !alias.scope !3268, !noalias !3269, !noundef !32
  %_5.i.i.i.i65 = load float, ptr %state.sroa.9.2120, align 4, !alias.scope !3269, !noalias !3268, !noundef !32
  %.not.i.i.i.i66 = fcmp uno float %_4.i.i.i.i64, %_5.i.i.i.i65
  br i1 %.not.i.i.i.i66, label %bb2.i.i.i.i68, label %"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17h9dd9effb4230de85E.exit69", !prof !35

bb2.i.i.i.i68:                                    ; preds = %bb18
; call core::option::unwrap_failed
  tail call void @_ZN4core6option13unwrap_failed17hef2534b77b89c04fE(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_b0e33ba48ef5fa15e44a55a18226b5ac) #24, !noalias !3270
  unreachable

"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17h9dd9effb4230de85E.exit69": ; preds = %bb18
  %_0.i.i67 = fcmp uge float %_4.i.i.i.i64, %_5.i.i.i.i65
  %14 = getelementptr inbounds i8, ptr %state.sroa.43.2121, i64 -4
  %dst_base.sroa.0.0.i71 = select i1 %_0.i.i67, ptr %scratch.0, ptr %14
  %dst.i73 = getelementptr inbounds nuw float, ptr %dst_base.sroa.0.0.i71, i64 %state.sroa.27.2119
  %15 = load i32, ptr %state.sroa.9.2120, align 4, !noalias !3271
  store i32 %15, ptr %dst.i73, align 4, !noalias !3271
  %_8.i75 = zext i1 %_0.i.i67 to i64
  %16 = add i64 %state.sroa.27.2119, %_8.i75
  %_9.i76 = getelementptr inbounds nuw i8, ptr %state.sroa.9.2120, i64 4
  %_47 = icmp ult ptr %_9.i76, %loop_end
  br i1 %_47, label %bb18, label %bb21

bb23:                                             ; preds = %bb21
  %17 = getelementptr inbounds i8, ptr %state.sroa.43.2.lcssa, i64 -4
  %dst_base.sroa.0.0.i78 = select i1 %pivot_goes_left, ptr %scratch.0, ptr %17
  %dst.i80 = getelementptr inbounds nuw float, ptr %dst_base.sroa.0.0.i78, i64 %state.sroa.27.2.lcssa
  %18 = load i32, ptr %state.sroa.9.2.lcssa, align 4, !noalias !3274
  store i32 %18, ptr %dst.i80, align 4, !noalias !3274
  %19 = add i64 %state.sroa.27.2.lcssa, %_8.i82
  %_9.i83 = getelementptr inbounds nuw i8, ptr %state.sroa.9.2.lcssa, i64 4
  br label %bb3

bb22:                                             ; preds = %bb21
  %20 = shl i64 %state.sroa.27.2.lcssa, 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %v.0, ptr nonnull align 4 %scratch.0, i64 %20, i1 false)
  %_63 = sub i64 %v.1, %state.sroa.27.2.lcssa
  %_97125.not = icmp eq i64 %v.1, %state.sroa.27.2.lcssa
  br i1 %_97125.not, label %bb30, label %bb42.lr.ph

bb42.lr.ph:                                       ; preds = %bb22
  %21 = getelementptr float, ptr %v.0, i64 %state.sroa.27.2.lcssa
  %xtraiter = and i64 %_63, 3
  %22 = sub i64 %state.sroa.27.2.lcssa, %v.1
  %23 = icmp ugt i64 %22, -4
  br i1 %23, label %bb30.loopexit.unr-lcssa, label %bb42.lr.ph.new

bb42.lr.ph.new:                                   ; preds = %bb42.lr.ph
  %unroll_iter = and i64 %_63, -4
  %invariant.gep = getelementptr i8, ptr %21, i64 4
  %invariant.gep141 = getelementptr i8, ptr %21, i64 8
  %invariant.gep143 = getelementptr i8, ptr %21, i64 12
  br label %bb42

bb42:                                             ; preds = %bb42, %bb42.lr.ph.new
  %iter.sroa.0.0126 = phi i64 [ 0, %bb42.lr.ph.new ], [ %34, %bb42 ]
  %niter = phi i64 [ 0, %bb42.lr.ph.new ], [ %niter.next.3, %bb42 ]
  %24 = getelementptr float, ptr %21, i64 %iter.sroa.0.0126
  %25 = xor i64 %iter.sroa.0.0126, -1
  %26 = getelementptr float, ptr %_86, i64 %25
  %27 = load i32, ptr %26, align 4
  store i32 %27, ptr %24, align 4
  %gep = getelementptr float, ptr %invariant.gep, i64 %iter.sroa.0.0126
  %28 = xor i64 %iter.sroa.0.0126, -2
  %29 = getelementptr float, ptr %_86, i64 %28
  %30 = load i32, ptr %29, align 4
  store i32 %30, ptr %gep, align 4
  %gep142 = getelementptr float, ptr %invariant.gep141, i64 %iter.sroa.0.0126
  %31 = xor i64 %iter.sroa.0.0126, -3
  %32 = getelementptr float, ptr %_86, i64 %31
  %33 = load i32, ptr %32, align 4
  store i32 %33, ptr %gep142, align 4
  %34 = add nuw i64 %iter.sroa.0.0126, 4
  %gep144 = getelementptr float, ptr %invariant.gep143, i64 %iter.sroa.0.0126
  %35 = xor i64 %iter.sroa.0.0126, -4
  %36 = getelementptr float, ptr %_86, i64 %35
  %37 = load i32, ptr %36, align 4
  store i32 %37, ptr %gep144, align 4
  %niter.next.3 = add i64 %niter, 4
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %bb30.loopexit.unr-lcssa, label %bb42

bb30.loopexit.unr-lcssa:                          ; preds = %bb42, %bb42.lr.ph
  %iter.sroa.0.0126.unr = phi i64 [ 0, %bb42.lr.ph ], [ %34, %bb42 ]
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %bb30, label %bb42.epil

bb42.epil:                                        ; preds = %bb30.loopexit.unr-lcssa, %bb42.epil
  %iter.sroa.0.0126.epil = phi i64 [ %38, %bb42.epil ], [ %iter.sroa.0.0126.unr, %bb30.loopexit.unr-lcssa ]
  %epil.iter = phi i64 [ %epil.iter.next, %bb42.epil ], [ 0, %bb30.loopexit.unr-lcssa ]
  %38 = add nuw i64 %iter.sroa.0.0126.epil, 1
  %39 = getelementptr float, ptr %21, i64 %iter.sroa.0.0126.epil
  %40 = xor i64 %iter.sroa.0.0126.epil, -1
  %41 = getelementptr float, ptr %_86, i64 %40
  %42 = load i32, ptr %41, align 4
  store i32 %42, ptr %39, align 4
  %epil.iter.next = add i64 %epil.iter, 1
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %bb30, label %bb42.epil, !llvm.loop !3277

bb30:                                             ; preds = %bb30.loopexit.unr-lcssa, %bb42.epil, %bb22
  ret i64 %state.sroa.27.2.lcssa
}

; core::slice::sort::stable::quicksort::PartitionState<T>::partition_one
; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define noundef ptr @"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h03adadb428352a79E"(ptr noalias noundef align 8 captures(none) dereferenceable(32) %self, i1 noundef zeroext %towards_left) unnamed_addr #9 {
start:
  %0 = getelementptr inbounds nuw i8, ptr %self, i64 24
  %self1 = load ptr, ptr %0, align 8, !noundef !32
  %1 = getelementptr inbounds i8, ptr %self1, i64 -4
  store ptr %1, ptr %0, align 8
  %2 = load ptr, ptr %self, align 8
  %dst_base.sroa.0.0 = select i1 %towards_left, ptr %2, ptr %1
  %3 = getelementptr inbounds nuw i8, ptr %self, i64 16
  %count = load i64, ptr %3, align 8, !noundef !32
  %dst = getelementptr inbounds nuw float, ptr %dst_base.sroa.0.0, i64 %count
  %4 = getelementptr inbounds nuw i8, ptr %self, i64 8
  %src = load ptr, ptr %4, align 8, !noundef !32
  %5 = load i32, ptr %src, align 4
  store i32 %5, ptr %dst, align 4
  %_8 = zext i1 %towards_left to i64
  %6 = add i64 %count, %_8
  store i64 %6, ptr %3, align 8
  %_9 = getelementptr inbounds nuw i8, ptr %src, i64 4
  store ptr %_9, ptr %4, align 8
  ret ptr %dst
}

; core::slice::sort::stable::quicksort::PartitionState<T>::partition_one
; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define noundef ptr @"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h4c1f1733311b90e4E"(ptr noalias noundef align 8 captures(none) dereferenceable(32) %self, i1 noundef zeroext %towards_left) unnamed_addr #9 {
start:
  %0 = getelementptr inbounds nuw i8, ptr %self, i64 24
  %self1 = load ptr, ptr %0, align 8, !noundef !32
  %1 = getelementptr inbounds i8, ptr %self1, i64 -4
  store ptr %1, ptr %0, align 8
  %2 = load ptr, ptr %self, align 8
  %dst_base.sroa.0.0 = select i1 %towards_left, ptr %2, ptr %1
  %3 = getelementptr inbounds nuw i8, ptr %self, i64 16
  %count = load i64, ptr %3, align 8, !noundef !32
  %dst = getelementptr inbounds nuw i32, ptr %dst_base.sroa.0.0, i64 %count
  %4 = getelementptr inbounds nuw i8, ptr %self, i64 8
  %src = load ptr, ptr %4, align 8, !noundef !32
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
define void @_ZN4core5slice4sort6stable9quicksort9quicksort17h23ee1f5ec6e131a2E(ptr noalias noundef nonnull align 4 %0, i64 noundef range(i64 0, 2305843009213693952) %1, ptr noalias noundef nonnull align 4 %scratch.0, i64 noundef range(i64 0, 2305843009213693952) %scratch.1, i32 noundef %2, ptr noalias noundef readonly align 4 captures(address) dereferenceable_or_null(4) %3, ptr noalias noundef align 8 dereferenceable(8) %is_less) unnamed_addr #5 {
start:
  %pivot_copy = alloca [4 x i8], align 4
  %_84551 = icmp samesign ult i64 %1, 33
  br i1 %_84551, label %bb3, label %bb5.lr.ph

bb5.lr.ph:                                        ; preds = %start, %bb28
  %v.sroa.0.0.ph55 = phi ptr [ %_54, %bb28 ], [ %0, %start ]
  %v.sroa.16.0.ph54 = phi i64 [ %new_len, %bb28 ], [ %1, %start ]
  %limit.sroa.0.0.ph53 = phi i32 [ %4, %bb28 ], [ %2, %start ]
  %left_ancestor_pivot.sroa.0.0.ph52 = phi ptr [ null, %bb28 ], [ %3, %start ]
  %.not = icmp eq ptr %left_ancestor_pivot.sroa.0.0.ph52, null
  %.sink116 = ptrtoint ptr %v.sroa.0.0.ph55 to i64
  br label %bb5

bb5:                                              ; preds = %bb5.lr.ph, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$12split_at_mut17hfcf5686026bf385fE.exit"
  %v.sroa.16.047 = phi i64 [ %v.sroa.16.0.ph54, %bb5.lr.ph ], [ %left_partition_len.sroa.0.0, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$12split_at_mut17hfcf5686026bf385fE.exit" ]
  %limit.sroa.0.046 = phi i32 [ %limit.sroa.0.0.ph53, %bb5.lr.ph ], [ %4, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$12split_at_mut17hfcf5686026bf385fE.exit" ]
  %_11 = icmp eq i32 %limit.sroa.0.046, 0
  br i1 %_11, label %bb6, label %bb7

bb3:                                              ; preds = %bb28, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$12split_at_mut17hfcf5686026bf385fE.exit", %start
  %v.sroa.0.0.ph.lcssa44 = phi ptr [ %0, %start ], [ %v.sroa.0.0.ph55, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$12split_at_mut17hfcf5686026bf385fE.exit" ], [ %_54, %bb28 ]
  %v.sroa.16.0.lcssa = phi i64 [ %1, %start ], [ %left_partition_len.sroa.0.0, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$12split_at_mut17hfcf5686026bf385fE.exit" ], [ %new_len, %bb28 ]
; call core::slice::sort::shared::smallsort::small_sort_general_with_scratch
  call void @_ZN4core5slice4sort6shared9smallsort31small_sort_general_with_scratch17h7c018c816a9da747E(ptr noalias noundef nonnull align 4 %v.sroa.0.0.ph.lcssa44, i64 noundef range(i64 0, 33) %v.sroa.16.0.lcssa, ptr noalias noundef nonnull align 4 %scratch.0, i64 noundef range(i64 0, 2305843009213693952) %scratch.1, ptr noalias nonnull align 8 poison)
  br label %bb22

bb7:                                              ; preds = %bb5
  %4 = add i32 %limit.sroa.0.046, -1
  call void @llvm.experimental.noalias.scope.decl(metadata !3278)
  %len_div_84.i = lshr i64 %v.sroa.16.047, 3
  %b.idx.i = shl nuw nsw i64 %len_div_84.i, 4
  %b.i = getelementptr inbounds nuw i8, ptr %v.sroa.0.0.ph55, i64 %b.idx.i
  %c.idx.i = mul nuw nsw i64 %len_div_84.i, 28
  %c.i = getelementptr inbounds nuw i8, ptr %v.sroa.0.0.ph55, i64 %c.idx.i
  %_12.i = icmp samesign ult i64 %v.sroa.16.047, 64
  br i1 %_12.i, label %bb3.i, label %bb5.i

bb5.i:                                            ; preds = %bb7
; call core::slice::sort::shared::pivot::median3_rec
  %self.i = call noundef ptr @_ZN4core5slice4sort6shared5pivot11median3_rec17h16032f23b0df01aeE(ptr noundef nonnull readonly align 4 %v.sroa.0.0.ph55, ptr noundef nonnull readonly %b.i, ptr noundef nonnull readonly %c.i, i64 noundef %len_div_84.i, ptr noalias noundef nonnull align 8 dereferenceable(8) %is_less)
  br label %_ZN4core5slice4sort6shared5pivot12choose_pivot17h231d1789d5e62058E.exit

bb3.i:                                            ; preds = %bb7
  call void @llvm.experimental.noalias.scope.decl(metadata !3281)
  call void @llvm.experimental.noalias.scope.decl(metadata !3284)
  call void @llvm.experimental.noalias.scope.decl(metadata !3286), !noalias !3289
  call void @llvm.experimental.noalias.scope.decl(metadata !3292), !noalias !3289
  call void @llvm.experimental.noalias.scope.decl(metadata !3294), !noalias !3289
  call void @llvm.experimental.noalias.scope.decl(metadata !3297), !noalias !3289
  %_4.i.i.i.i = load float, ptr %v.sroa.0.0.ph55, align 4, !alias.scope !3299, !noalias !3300, !noundef !32
  %_5.i.i.i.i = load float, ptr %b.i, align 4, !alias.scope !3302, !noalias !3303, !noundef !32
  %.not.i.i.i.i = fcmp uno float %_4.i.i.i.i, %_5.i.i.i.i
  br i1 %.not.i.i.i.i, label %bb2.i.i.i.i, label %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf5b8f37855ac0c3dE.exit.i", !prof !35

bb2.i.i.i.i:                                      ; preds = %bb3.i
; call core::option::unwrap_failed
  call void @_ZN4core6option13unwrap_failed17hef2534b77b89c04fE(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_b0e33ba48ef5fa15e44a55a18226b5ac) #24, !noalias !3304
  unreachable

"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf5b8f37855ac0c3dE.exit.i": ; preds = %bb3.i
  %_0.i.i = fcmp olt float %_4.i.i.i.i, %_5.i.i.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !3305)
  call void @llvm.experimental.noalias.scope.decl(metadata !3308)
  %_5.i.i.i6.i = load float, ptr %c.i, align 4, !alias.scope !3311, !noalias !3314, !noundef !32
  %.not.i.i.i7.i = fcmp uno float %_4.i.i.i.i, %_5.i.i.i6.i
  br i1 %.not.i.i.i7.i, label %bb2.i.i.i9.i, label %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf5b8f37855ac0c3dE.exit10.i", !prof !35

bb2.i.i.i9.i:                                     ; preds = %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf5b8f37855ac0c3dE.exit.i"
; call core::option::unwrap_failed
  call void @_ZN4core6option13unwrap_failed17hef2534b77b89c04fE(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_b0e33ba48ef5fa15e44a55a18226b5ac) #24, !noalias !3318
  unreachable

"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf5b8f37855ac0c3dE.exit10.i": ; preds = %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf5b8f37855ac0c3dE.exit.i"
  %_0.i8.i = fcmp olt float %_4.i.i.i.i, %_5.i.i.i6.i
  %5 = xor i1 %_0.i.i, %_0.i8.i
  br i1 %5, label %_ZN4core5slice4sort6shared5pivot12choose_pivot17h231d1789d5e62058E.exit, label %bb3.i.i

bb3.i.i:                                          ; preds = %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf5b8f37855ac0c3dE.exit10.i"
  %.not.i.i.i13.i = fcmp uno float %_5.i.i.i.i, %_5.i.i.i6.i
  br i1 %.not.i.i.i13.i, label %bb2.i.i.i15.i, label %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf5b8f37855ac0c3dE.exit16.i", !prof !35

bb2.i.i.i15.i:                                    ; preds = %bb3.i.i
; call core::option::unwrap_failed
  call void @_ZN4core6option13unwrap_failed17hef2534b77b89c04fE(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_b0e33ba48ef5fa15e44a55a18226b5ac) #24, !noalias !3319
  unreachable

"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf5b8f37855ac0c3dE.exit16.i": ; preds = %bb3.i.i
  %_0.i14.i = fcmp olt float %_5.i.i.i.i, %_5.i.i.i6.i
  %_12.i.i = xor i1 %_0.i.i, %_0.i14.i
  %c.b.i.i = select i1 %_12.i.i, ptr %c.i, ptr %b.i
  br label %_ZN4core5slice4sort6shared5pivot12choose_pivot17h231d1789d5e62058E.exit

_ZN4core5slice4sort6shared5pivot12choose_pivot17h231d1789d5e62058E.exit: ; preds = %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf5b8f37855ac0c3dE.exit10.i", %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf5b8f37855ac0c3dE.exit16.i", %bb5.i
  %self.i.sink = phi ptr [ %self.i, %bb5.i ], [ %v.sroa.0.0.ph55, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf5b8f37855ac0c3dE.exit10.i" ], [ %c.b.i.i, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf5b8f37855ac0c3dE.exit16.i" ]
  %6 = ptrtoint ptr %self.i.sink to i64
  %7 = sub nuw i64 %6, %.sink116
  %index.sroa.0.0.i = lshr exact i64 %7, 2
  %cond.i = icmp samesign ult i64 %index.sroa.0.0.i, %v.sroa.16.047
  call void @llvm.assume(i1 %cond.i)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %pivot_copy)
  %src = getelementptr inbounds nuw i8, ptr %v.sroa.0.0.ph55, i64 %7
  %value = load float, ptr %src, align 4, !noundef !32
  store float %value, ptr %pivot_copy, align 4
  br i1 %.not, label %bb14, label %bb12

bb6:                                              ; preds = %bb5
; call core::slice::sort::stable::drift::sort
  call void @_ZN4core5slice4sort6stable5drift4sort17hf2c114673cd91d61E(ptr noalias noundef nonnull align 4 %v.sroa.0.0.ph55, i64 noundef %v.sroa.16.047, ptr noalias noundef nonnull align 4 %scratch.0, i64 noundef %scratch.1, i1 noundef zeroext true, ptr noalias noundef align 8 dereferenceable(8) %is_less)
  br label %bb22

bb12:                                             ; preds = %_ZN4core5slice4sort6shared5pivot12choose_pivot17h231d1789d5e62058E.exit
  call void @llvm.experimental.noalias.scope.decl(metadata !3326)
  call void @llvm.experimental.noalias.scope.decl(metadata !3329)
  %_4.i.i.i = load float, ptr %left_ancestor_pivot.sroa.0.0.ph52, align 4, !alias.scope !3332, !noalias !3335, !noundef !32
  %.not.i.i.i = fcmp uno float %_4.i.i.i, %value
  br i1 %.not.i.i.i, label %bb2.i.i.i, label %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf5b8f37855ac0c3dE.exit", !prof !35

bb2.i.i.i:                                        ; preds = %bb12
; call core::option::unwrap_failed
  call void @_ZN4core6option13unwrap_failed17hef2534b77b89c04fE(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_b0e33ba48ef5fa15e44a55a18226b5ac) #24, !noalias !3339
  unreachable

"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf5b8f37855ac0c3dE.exit": ; preds = %bb12
  %_0.i = fcmp uge float %_4.i.i.i, %value
  br i1 %_0.i, label %bb16, label %bb14

bb14:                                             ; preds = %_ZN4core5slice4sort6shared5pivot12choose_pivot17h231d1789d5e62058E.exit, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf5b8f37855ac0c3dE.exit"
; call core::slice::sort::stable::quicksort::stable_partition
  %8 = call noundef i64 @_ZN4core5slice4sort6stable9quicksort16stable_partition17h52196b1de7482264E(ptr noalias noundef nonnull align 4 %v.sroa.0.0.ph55, i64 noundef %v.sroa.16.047, ptr noalias noundef nonnull align 4 %scratch.0, i64 noundef %scratch.1, i64 noundef %index.sroa.0.0.i, i1 noundef zeroext false, ptr noalias align 8 poison)
  %9 = icmp eq i64 %8, 0
  br label %bb16

bb16:                                             ; preds = %bb14, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf5b8f37855ac0c3dE.exit"
  %left_partition_len.sroa.0.0 = phi i64 [ 0, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf5b8f37855ac0c3dE.exit" ], [ %8, %bb14 ]
  %perform_equal_partition.sroa.0.0.in = phi i1 [ true, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf5b8f37855ac0c3dE.exit" ], [ %9, %bb14 ]
  br i1 %perform_equal_partition.sroa.0.0.in, label %bb17, label %bb19

bb19:                                             ; preds = %bb16
  %_6.not.i = icmp ugt i64 %left_partition_len.sroa.0.0, %v.sroa.16.047
  br i1 %_6.not.i, label %bb3.i23, label %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$12split_at_mut17hfcf5686026bf385fE.exit", !prof !35

bb3.i23:                                          ; preds = %bb19
; call core::panicking::panic_fmt
  call void @_ZN4core9panicking9panic_fmt17ha4414e4328fe24a0E(ptr noundef nonnull @alloc_d1084648e479974e70c9329824bf76f9, ptr noundef nonnull inttoptr (i64 19 to ptr), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_58d434a1e795f965ef82c8e9c5db822a) #24, !noalias !3340
  unreachable

"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$12split_at_mut17hfcf5686026bf385fE.exit": ; preds = %bb19
  %10 = getelementptr inbounds nuw float, ptr %v.sroa.0.0.ph55, i64 %left_partition_len.sroa.0.0
  %11 = sub nuw nsw i64 %v.sroa.16.047, %left_partition_len.sroa.0.0
; call core::slice::sort::stable::quicksort::quicksort
  call void @_ZN4core5slice4sort6stable9quicksort9quicksort17h23ee1f5ec6e131a2E(ptr noalias noundef nonnull align 4 %10, i64 noundef %11, ptr noalias noundef nonnull align 4 %scratch.0, i64 noundef %scratch.1, i32 noundef %4, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable_or_null(4) %pivot_copy, ptr noalias noundef align 8 dereferenceable(8) %is_less) #27
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pivot_copy)
  %_8 = icmp ult i64 %left_partition_len.sroa.0.0, 33
  br i1 %_8, label %bb3, label %bb5

bb17:                                             ; preds = %bb16
; call core::slice::sort::stable::quicksort::stable_partition
  %mid_eq = call noundef i64 @_ZN4core5slice4sort6stable9quicksort16stable_partition17hf5b3315b4b2c5f83E(ptr noalias noundef nonnull align 4 %v.sroa.0.0.ph55, i64 noundef %v.sroa.16.047, ptr noalias noundef nonnull align 4 %scratch.0, i64 noundef %scratch.1, i64 noundef %index.sroa.0.0.i, i1 noundef zeroext true, ptr noalias align 8 poison)
  %_47 = icmp ugt i64 %mid_eq, %v.sroa.16.047
  br i1 %_47, label %bb27, label %bb28, !prof !35

bb28:                                             ; preds = %bb17
  %new_len = sub nuw i64 %v.sroa.16.047, %mid_eq
  %_54 = getelementptr inbounds nuw float, ptr %v.sroa.0.0.ph55, i64 %mid_eq
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pivot_copy)
  %_845 = icmp ult i64 %new_len, 33
  br i1 %_845, label %bb3, label %bb5.lr.ph

bb27:                                             ; preds = %bb17
; call core::slice::index::slice_index_fail
  call void @_ZN4core5slice5index16slice_index_fail17h62807bcaa490c9c1E(i64 noundef %mid_eq, i64 noundef %v.sroa.16.047, i64 noundef %v.sroa.16.047, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_0766b232215672ee1bd2195fdb153938) #24
  unreachable

bb22:                                             ; preds = %bb3, %bb6
  ret void
}

; core::slice::sort::stable::quicksort::quicksort
; Function Attrs: noinline nonlazybind uwtable
define void @_ZN4core5slice4sort6stable9quicksort9quicksort17h39c332b52467a176E(ptr noalias noundef nonnull align 4 %0, i64 noundef range(i64 0, 2305843009213693952) %1, ptr noalias noundef nonnull align 4 %scratch.0, i64 noundef range(i64 0, 2305843009213693952) %scratch.1, i32 noundef %2, ptr noalias noundef readonly align 4 captures(address) dereferenceable_or_null(4) %3, ptr noalias noundef align 8 dereferenceable(8) %is_less) unnamed_addr #5 {
start:
  %pivot_copy = alloca [4 x i8], align 4
  %_84551 = icmp samesign ult i64 %1, 33
  br i1 %_84551, label %bb3, label %bb5.lr.ph

bb5.lr.ph:                                        ; preds = %start, %bb28
  %v.sroa.0.0.ph55 = phi ptr [ %_54, %bb28 ], [ %0, %start ]
  %v.sroa.16.0.ph54 = phi i64 [ %new_len, %bb28 ], [ %1, %start ]
  %limit.sroa.0.0.ph53 = phi i32 [ %4, %bb28 ], [ %2, %start ]
  %left_ancestor_pivot.sroa.0.0.ph52 = phi ptr [ null, %bb28 ], [ %3, %start ]
  %.not = icmp eq ptr %left_ancestor_pivot.sroa.0.0.ph52, null
  %.sink116 = ptrtoint ptr %v.sroa.0.0.ph55 to i64
  br label %bb5

bb5:                                              ; preds = %bb5.lr.ph, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$12split_at_mut17hfcf5686026bf385fE.exit"
  %v.sroa.16.047 = phi i64 [ %v.sroa.16.0.ph54, %bb5.lr.ph ], [ %left_partition_len.sroa.0.0, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$12split_at_mut17hfcf5686026bf385fE.exit" ]
  %limit.sroa.0.046 = phi i32 [ %limit.sroa.0.0.ph53, %bb5.lr.ph ], [ %4, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$12split_at_mut17hfcf5686026bf385fE.exit" ]
  %_11 = icmp eq i32 %limit.sroa.0.046, 0
  br i1 %_11, label %bb6, label %bb7

bb3:                                              ; preds = %bb28, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$12split_at_mut17hfcf5686026bf385fE.exit", %start
  %v.sroa.0.0.ph.lcssa44 = phi ptr [ %0, %start ], [ %v.sroa.0.0.ph55, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$12split_at_mut17hfcf5686026bf385fE.exit" ], [ %_54, %bb28 ]
  %v.sroa.16.0.lcssa = phi i64 [ %1, %start ], [ %left_partition_len.sroa.0.0, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$12split_at_mut17hfcf5686026bf385fE.exit" ], [ %new_len, %bb28 ]
; call core::slice::sort::shared::smallsort::small_sort_general_with_scratch
  call void @_ZN4core5slice4sort6shared9smallsort31small_sort_general_with_scratch17hf5953e2e9b96ff03E(ptr noalias noundef nonnull align 4 %v.sroa.0.0.ph.lcssa44, i64 noundef range(i64 0, 33) %v.sroa.16.0.lcssa, ptr noalias noundef nonnull align 4 %scratch.0, i64 noundef range(i64 0, 2305843009213693952) %scratch.1, ptr noalias nonnull align 8 poison)
  br label %bb22

bb7:                                              ; preds = %bb5
  %4 = add i32 %limit.sroa.0.046, -1
  call void @llvm.experimental.noalias.scope.decl(metadata !3344)
  %len_div_84.i = lshr i64 %v.sroa.16.047, 3
  %b.idx.i = shl nuw nsw i64 %len_div_84.i, 4
  %b.i = getelementptr inbounds nuw i8, ptr %v.sroa.0.0.ph55, i64 %b.idx.i
  %c.idx.i = mul nuw nsw i64 %len_div_84.i, 28
  %c.i = getelementptr inbounds nuw i8, ptr %v.sroa.0.0.ph55, i64 %c.idx.i
  %_12.i = icmp samesign ult i64 %v.sroa.16.047, 64
  br i1 %_12.i, label %bb3.i, label %bb5.i

bb5.i:                                            ; preds = %bb7
; call core::slice::sort::shared::pivot::median3_rec
  %self.i = call noundef ptr @_ZN4core5slice4sort6shared5pivot11median3_rec17hff9a90d9cd780c94E(ptr noundef nonnull readonly align 4 %v.sroa.0.0.ph55, ptr noundef nonnull readonly %b.i, ptr noundef nonnull readonly %c.i, i64 noundef %len_div_84.i, ptr noalias noundef nonnull align 8 dereferenceable(8) %is_less)
  br label %_ZN4core5slice4sort6shared5pivot12choose_pivot17h7f796801e5248064E.exit

bb3.i:                                            ; preds = %bb7
  call void @llvm.experimental.noalias.scope.decl(metadata !3347)
  call void @llvm.experimental.noalias.scope.decl(metadata !3350)
  call void @llvm.experimental.noalias.scope.decl(metadata !3352), !noalias !3355
  call void @llvm.experimental.noalias.scope.decl(metadata !3358), !noalias !3355
  call void @llvm.experimental.noalias.scope.decl(metadata !3360), !noalias !3355
  call void @llvm.experimental.noalias.scope.decl(metadata !3363), !noalias !3355
  %_4.i.i.i.i = load float, ptr %v.sroa.0.0.ph55, align 4, !alias.scope !3365, !noalias !3366, !noundef !32
  %_5.i.i.i.i = load float, ptr %b.i, align 4, !alias.scope !3368, !noalias !3369, !noundef !32
  %.not.i.i.i.i = fcmp uno float %_4.i.i.i.i, %_5.i.i.i.i
  br i1 %.not.i.i.i.i, label %bb2.i.i.i.i, label %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfaa75802b1959b0aE.exit.i", !prof !35

bb2.i.i.i.i:                                      ; preds = %bb3.i
; call core::option::unwrap_failed
  call void @_ZN4core6option13unwrap_failed17hef2534b77b89c04fE(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_4a4e7fec44b84c1472b04d0c86f3e1b7) #24, !noalias !3370
  unreachable

"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfaa75802b1959b0aE.exit.i": ; preds = %bb3.i
  %_0.i.i = fcmp olt float %_4.i.i.i.i, %_5.i.i.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !3371)
  call void @llvm.experimental.noalias.scope.decl(metadata !3374)
  %_5.i.i.i6.i = load float, ptr %c.i, align 4, !alias.scope !3377, !noalias !3380, !noundef !32
  %.not.i.i.i7.i = fcmp uno float %_4.i.i.i.i, %_5.i.i.i6.i
  br i1 %.not.i.i.i7.i, label %bb2.i.i.i9.i, label %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfaa75802b1959b0aE.exit10.i", !prof !35

bb2.i.i.i9.i:                                     ; preds = %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfaa75802b1959b0aE.exit.i"
; call core::option::unwrap_failed
  call void @_ZN4core6option13unwrap_failed17hef2534b77b89c04fE(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_4a4e7fec44b84c1472b04d0c86f3e1b7) #24, !noalias !3384
  unreachable

"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfaa75802b1959b0aE.exit10.i": ; preds = %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfaa75802b1959b0aE.exit.i"
  %_0.i8.i = fcmp olt float %_4.i.i.i.i, %_5.i.i.i6.i
  %5 = xor i1 %_0.i.i, %_0.i8.i
  br i1 %5, label %_ZN4core5slice4sort6shared5pivot12choose_pivot17h7f796801e5248064E.exit, label %bb3.i.i

bb3.i.i:                                          ; preds = %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfaa75802b1959b0aE.exit10.i"
  %.not.i.i.i13.i = fcmp uno float %_5.i.i.i.i, %_5.i.i.i6.i
  br i1 %.not.i.i.i13.i, label %bb2.i.i.i15.i, label %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfaa75802b1959b0aE.exit16.i", !prof !35

bb2.i.i.i15.i:                                    ; preds = %bb3.i.i
; call core::option::unwrap_failed
  call void @_ZN4core6option13unwrap_failed17hef2534b77b89c04fE(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_4a4e7fec44b84c1472b04d0c86f3e1b7) #24, !noalias !3385
  unreachable

"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfaa75802b1959b0aE.exit16.i": ; preds = %bb3.i.i
  %_0.i14.i = fcmp olt float %_5.i.i.i.i, %_5.i.i.i6.i
  %_12.i.i = xor i1 %_0.i.i, %_0.i14.i
  %c.b.i.i = select i1 %_12.i.i, ptr %c.i, ptr %b.i
  br label %_ZN4core5slice4sort6shared5pivot12choose_pivot17h7f796801e5248064E.exit

_ZN4core5slice4sort6shared5pivot12choose_pivot17h7f796801e5248064E.exit: ; preds = %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfaa75802b1959b0aE.exit10.i", %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfaa75802b1959b0aE.exit16.i", %bb5.i
  %self.i.sink = phi ptr [ %self.i, %bb5.i ], [ %v.sroa.0.0.ph55, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfaa75802b1959b0aE.exit10.i" ], [ %c.b.i.i, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfaa75802b1959b0aE.exit16.i" ]
  %6 = ptrtoint ptr %self.i.sink to i64
  %7 = sub nuw i64 %6, %.sink116
  %index.sroa.0.0.i = lshr exact i64 %7, 2
  %cond.i = icmp samesign ult i64 %index.sroa.0.0.i, %v.sroa.16.047
  call void @llvm.assume(i1 %cond.i)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %pivot_copy)
  %src = getelementptr inbounds nuw i8, ptr %v.sroa.0.0.ph55, i64 %7
  %value = load float, ptr %src, align 4, !noundef !32
  store float %value, ptr %pivot_copy, align 4
  br i1 %.not, label %bb14, label %bb12

bb6:                                              ; preds = %bb5
; call core::slice::sort::stable::drift::sort
  call void @_ZN4core5slice4sort6stable5drift4sort17h4e9143ba5e79da94E(ptr noalias noundef nonnull align 4 %v.sroa.0.0.ph55, i64 noundef %v.sroa.16.047, ptr noalias noundef nonnull align 4 %scratch.0, i64 noundef %scratch.1, i1 noundef zeroext true, ptr noalias noundef align 8 dereferenceable(8) %is_less)
  br label %bb22

bb12:                                             ; preds = %_ZN4core5slice4sort6shared5pivot12choose_pivot17h7f796801e5248064E.exit
  call void @llvm.experimental.noalias.scope.decl(metadata !3392)
  call void @llvm.experimental.noalias.scope.decl(metadata !3395)
  %_4.i.i.i = load float, ptr %left_ancestor_pivot.sroa.0.0.ph52, align 4, !alias.scope !3398, !noalias !3401, !noundef !32
  %.not.i.i.i = fcmp uno float %_4.i.i.i, %value
  br i1 %.not.i.i.i, label %bb2.i.i.i, label %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfaa75802b1959b0aE.exit", !prof !35

bb2.i.i.i:                                        ; preds = %bb12
; call core::option::unwrap_failed
  call void @_ZN4core6option13unwrap_failed17hef2534b77b89c04fE(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_4a4e7fec44b84c1472b04d0c86f3e1b7) #24, !noalias !3405
  unreachable

"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfaa75802b1959b0aE.exit": ; preds = %bb12
  %_0.i = fcmp uge float %_4.i.i.i, %value
  br i1 %_0.i, label %bb16, label %bb14

bb14:                                             ; preds = %_ZN4core5slice4sort6shared5pivot12choose_pivot17h7f796801e5248064E.exit, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfaa75802b1959b0aE.exit"
; call core::slice::sort::stable::quicksort::stable_partition
  %8 = call noundef i64 @_ZN4core5slice4sort6stable9quicksort16stable_partition17h26d04e68c811d67bE(ptr noalias noundef nonnull align 4 %v.sroa.0.0.ph55, i64 noundef %v.sroa.16.047, ptr noalias noundef nonnull align 4 %scratch.0, i64 noundef %scratch.1, i64 noundef %index.sroa.0.0.i, i1 noundef zeroext false, ptr noalias align 8 poison)
  %9 = icmp eq i64 %8, 0
  br label %bb16

bb16:                                             ; preds = %bb14, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfaa75802b1959b0aE.exit"
  %left_partition_len.sroa.0.0 = phi i64 [ 0, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfaa75802b1959b0aE.exit" ], [ %8, %bb14 ]
  %perform_equal_partition.sroa.0.0.in = phi i1 [ true, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfaa75802b1959b0aE.exit" ], [ %9, %bb14 ]
  br i1 %perform_equal_partition.sroa.0.0.in, label %bb17, label %bb19

bb19:                                             ; preds = %bb16
  %_6.not.i = icmp ugt i64 %left_partition_len.sroa.0.0, %v.sroa.16.047
  br i1 %_6.not.i, label %bb3.i23, label %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$12split_at_mut17hfcf5686026bf385fE.exit", !prof !35

bb3.i23:                                          ; preds = %bb19
; call core::panicking::panic_fmt
  call void @_ZN4core9panicking9panic_fmt17ha4414e4328fe24a0E(ptr noundef nonnull @alloc_d1084648e479974e70c9329824bf76f9, ptr noundef nonnull inttoptr (i64 19 to ptr), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_58d434a1e795f965ef82c8e9c5db822a) #24, !noalias !3406
  unreachable

"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$12split_at_mut17hfcf5686026bf385fE.exit": ; preds = %bb19
  %10 = getelementptr inbounds nuw float, ptr %v.sroa.0.0.ph55, i64 %left_partition_len.sroa.0.0
  %11 = sub nuw nsw i64 %v.sroa.16.047, %left_partition_len.sroa.0.0
; call core::slice::sort::stable::quicksort::quicksort
  call void @_ZN4core5slice4sort6stable9quicksort9quicksort17h39c332b52467a176E(ptr noalias noundef nonnull align 4 %10, i64 noundef %11, ptr noalias noundef nonnull align 4 %scratch.0, i64 noundef %scratch.1, i32 noundef %4, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable_or_null(4) %pivot_copy, ptr noalias noundef align 8 dereferenceable(8) %is_less) #27
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pivot_copy)
  %_8 = icmp ult i64 %left_partition_len.sroa.0.0, 33
  br i1 %_8, label %bb3, label %bb5

bb17:                                             ; preds = %bb16
; call core::slice::sort::stable::quicksort::stable_partition
  %mid_eq = call noundef i64 @_ZN4core5slice4sort6stable9quicksort16stable_partition17h67bec7643deb17b9E(ptr noalias noundef nonnull align 4 %v.sroa.0.0.ph55, i64 noundef %v.sroa.16.047, ptr noalias noundef nonnull align 4 %scratch.0, i64 noundef %scratch.1, i64 noundef %index.sroa.0.0.i, i1 noundef zeroext true, ptr noalias align 8 poison)
  %_47 = icmp ugt i64 %mid_eq, %v.sroa.16.047
  br i1 %_47, label %bb27, label %bb28, !prof !35

bb28:                                             ; preds = %bb17
  %new_len = sub nuw i64 %v.sroa.16.047, %mid_eq
  %_54 = getelementptr inbounds nuw float, ptr %v.sroa.0.0.ph55, i64 %mid_eq
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pivot_copy)
  %_845 = icmp ult i64 %new_len, 33
  br i1 %_845, label %bb3, label %bb5.lr.ph

bb27:                                             ; preds = %bb17
; call core::slice::index::slice_index_fail
  call void @_ZN4core5slice5index16slice_index_fail17h62807bcaa490c9c1E(i64 noundef %mid_eq, i64 noundef %v.sroa.16.047, i64 noundef %v.sroa.16.047, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_0766b232215672ee1bd2195fdb153938) #24
  unreachable

bb22:                                             ; preds = %bb3, %bb6
  ret void
}

; core::slice::sort::stable::quicksort::quicksort
; Function Attrs: noinline nonlazybind uwtable
define void @_ZN4core5slice4sort6stable9quicksort9quicksort17h960dc2f6c4bef9a8E(ptr noalias noundef nonnull align 4 %0, i64 noundef range(i64 0, 2305843009213693952) %1, ptr noalias noundef nonnull align 4 %scratch.0, i64 noundef range(i64 0, 2305843009213693952) %scratch.1, i32 noundef %2, ptr noalias noundef readonly align 4 captures(address) dereferenceable_or_null(4) %3, ptr noalias noundef align 8 dereferenceable(8) %is_less) unnamed_addr #5 {
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

bb5:                                              ; preds = %bb5.lr.ph, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$12split_at_mut17hc12d825464135f3eE.exit"
  %v.sroa.16.034 = phi i64 [ %v.sroa.16.0.ph41, %bb5.lr.ph ], [ %left_partition_len.sroa.0.0, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$12split_at_mut17hc12d825464135f3eE.exit" ]
  %limit.sroa.0.033 = phi i32 [ %limit.sroa.0.0.ph40, %bb5.lr.ph ], [ %4, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$12split_at_mut17hc12d825464135f3eE.exit" ]
  %_11 = icmp eq i32 %limit.sroa.0.033, 0
  br i1 %_11, label %bb6, label %bb7

bb3:                                              ; preds = %bb28, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$12split_at_mut17hc12d825464135f3eE.exit", %start
  %v.sroa.0.0.ph.lcssa31 = phi ptr [ %0, %start ], [ %v.sroa.0.0.ph42, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$12split_at_mut17hc12d825464135f3eE.exit" ], [ %_54, %bb28 ]
  %v.sroa.16.0.lcssa = phi i64 [ %1, %start ], [ %left_partition_len.sroa.0.0, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$12split_at_mut17hc12d825464135f3eE.exit" ], [ %new_len, %bb28 ]
; call core::slice::sort::shared::smallsort::small_sort_general_with_scratch
  call void @_ZN4core5slice4sort6shared9smallsort31small_sort_general_with_scratch17h1c5ee7389c23e2efE(ptr noalias noundef nonnull align 4 %v.sroa.0.0.ph.lcssa31, i64 noundef range(i64 0, 33) %v.sroa.16.0.lcssa, ptr noalias noundef nonnull align 4 %scratch.0, i64 noundef range(i64 0, 2305843009213693952) %scratch.1, ptr noalias nonnull align 8 poison)
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
  %self.i = call noundef ptr @_ZN4core5slice4sort6shared5pivot11median3_rec17h48858054538ba0a9E(ptr noundef nonnull readonly align 4 %v.sroa.0.0.ph42, ptr noundef nonnull readonly %b.i, ptr noundef nonnull readonly %c.i, i64 noundef %len_div_84.i, ptr noalias noundef nonnull align 8 dereferenceable(8) %is_less)
  br label %_ZN4core5slice4sort6shared5pivot12choose_pivot17hbb174469a395bbb3E.exit

bb3.i:                                            ; preds = %bb7
  call void @llvm.experimental.noalias.scope.decl(metadata !3410)
  call void @llvm.experimental.noalias.scope.decl(metadata !3413)
  call void @llvm.experimental.noalias.scope.decl(metadata !3415), !noalias !3418
  call void @llvm.experimental.noalias.scope.decl(metadata !3421), !noalias !3418
  call void @llvm.experimental.noalias.scope.decl(metadata !3423), !noalias !3418
  call void @llvm.experimental.noalias.scope.decl(metadata !3426), !noalias !3418
  call void @llvm.experimental.noalias.scope.decl(metadata !3428), !noalias !3418
  call void @llvm.experimental.noalias.scope.decl(metadata !3431), !noalias !3418
  %_3.i.i.i.i.i = load i32, ptr %v.sroa.0.0.ph42, align 4, !alias.scope !3433, !noalias !3436, !noundef !32
  %_4.i.i.i.i.i = load i32, ptr %b.i, align 4, !alias.scope !3438, !noalias !3439, !noundef !32
  %_0.i.i = icmp slt i32 %_3.i.i.i.i.i, %_4.i.i.i.i.i
  %_4.i.i.i.i6.i = load i32, ptr %c.i, align 4, !alias.scope !3440, !noalias !3449, !noundef !32
  %_0.i7.i = icmp slt i32 %_3.i.i.i.i.i, %_4.i.i.i.i6.i
  %5 = xor i1 %_0.i.i, %_0.i7.i
  %_0.i10.i = icmp slt i32 %_4.i.i.i.i.i, %_4.i.i.i.i6.i
  %_12.i.i = xor i1 %_0.i.i, %_0.i10.i
  %c.b.i.i = select i1 %_12.i.i, ptr %c.i, ptr %b.i
  %_0.sroa.0.0.i.i = select i1 %5, ptr %v.sroa.0.0.ph42, ptr %c.b.i.i
  br label %_ZN4core5slice4sort6shared5pivot12choose_pivot17hbb174469a395bbb3E.exit

_ZN4core5slice4sort6shared5pivot12choose_pivot17hbb174469a395bbb3E.exit: ; preds = %bb5.i, %bb3.i
  %self.i.sink = phi ptr [ %self.i, %bb5.i ], [ %_0.sroa.0.0.i.i, %bb3.i ]
  %6 = ptrtoint ptr %self.i.sink to i64
  %7 = sub nuw i64 %6, %.sink77
  %index.sroa.0.0.i = lshr exact i64 %7, 2
  %cond.i = icmp samesign ult i64 %index.sroa.0.0.i, %v.sroa.16.034
  call void @llvm.assume(i1 %cond.i)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %pivot_copy)
  %src = getelementptr inbounds nuw i8, ptr %v.sroa.0.0.ph42, i64 %7
  %value = load i32, ptr %src, align 4, !noundef !32
  store i32 %value, ptr %pivot_copy, align 4
  br i1 %.not, label %bb14, label %bb12

bb6:                                              ; preds = %bb5
; call core::slice::sort::stable::drift::sort
  call void @_ZN4core5slice4sort6stable5drift4sort17h077ef0bcbe90118aE(ptr noalias noundef nonnull align 4 %v.sroa.0.0.ph42, i64 noundef %v.sroa.16.034, ptr noalias noundef nonnull align 4 %scratch.0, i64 noundef %scratch.1, i1 noundef zeroext true, ptr noalias noundef align 8 dereferenceable(8) %is_less)
  br label %bb22

bb12:                                             ; preds = %_ZN4core5slice4sort6shared5pivot12choose_pivot17hbb174469a395bbb3E.exit
  %_3.i.i.i.i = load i32, ptr %left_ancestor_pivot.sroa.0.0.ph39, align 4, !alias.scope !3454, !noalias !3463, !noundef !32
  %_0.i.not = icmp slt i32 %_3.i.i.i.i, %value
  br i1 %_0.i.not, label %bb14, label %bb16

bb14:                                             ; preds = %_ZN4core5slice4sort6shared5pivot12choose_pivot17hbb174469a395bbb3E.exit, %bb12
; call core::slice::sort::stable::quicksort::stable_partition
  %8 = call noundef i64 @_ZN4core5slice4sort6stable9quicksort16stable_partition17hbf53dee0aa959731E(ptr noalias noundef nonnull align 4 %v.sroa.0.0.ph42, i64 noundef %v.sroa.16.034, ptr noalias noundef nonnull align 4 %scratch.0, i64 noundef %scratch.1, i64 noundef %index.sroa.0.0.i, i1 noundef zeroext false, ptr noalias align 8 poison)
  %9 = icmp eq i64 %8, 0
  br label %bb16

bb16:                                             ; preds = %bb14, %bb12
  %left_partition_len.sroa.0.0 = phi i64 [ 0, %bb12 ], [ %8, %bb14 ]
  %perform_equal_partition.sroa.0.0.in = phi i1 [ true, %bb12 ], [ %9, %bb14 ]
  br i1 %perform_equal_partition.sroa.0.0.in, label %bb17, label %bb19

bb19:                                             ; preds = %bb16
  %_6.not.i = icmp ugt i64 %left_partition_len.sroa.0.0, %v.sroa.16.034
  br i1 %_6.not.i, label %bb3.i23, label %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$12split_at_mut17hc12d825464135f3eE.exit", !prof !35

bb3.i23:                                          ; preds = %bb19
; call core::panicking::panic_fmt
  call void @_ZN4core9panicking9panic_fmt17ha4414e4328fe24a0E(ptr noundef nonnull @alloc_d1084648e479974e70c9329824bf76f9, ptr noundef nonnull inttoptr (i64 19 to ptr), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_58d434a1e795f965ef82c8e9c5db822a) #24, !noalias !3468
  unreachable

"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$12split_at_mut17hc12d825464135f3eE.exit": ; preds = %bb19
  %10 = getelementptr inbounds nuw i32, ptr %v.sroa.0.0.ph42, i64 %left_partition_len.sroa.0.0
  %11 = sub nuw nsw i64 %v.sroa.16.034, %left_partition_len.sroa.0.0
; call core::slice::sort::stable::quicksort::quicksort
  call void @_ZN4core5slice4sort6stable9quicksort9quicksort17h960dc2f6c4bef9a8E(ptr noalias noundef nonnull align 4 %10, i64 noundef %11, ptr noalias noundef nonnull align 4 %scratch.0, i64 noundef %scratch.1, i32 noundef %4, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable_or_null(4) %pivot_copy, ptr noalias noundef align 8 dereferenceable(8) %is_less) #27
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pivot_copy)
  %_8 = icmp ult i64 %left_partition_len.sroa.0.0, 33
  br i1 %_8, label %bb3, label %bb5

bb17:                                             ; preds = %bb16
; call core::slice::sort::stable::quicksort::stable_partition
  %mid_eq = call noundef i64 @_ZN4core5slice4sort6stable9quicksort16stable_partition17h6c33e90b131fae27E(ptr noalias noundef nonnull align 4 %v.sroa.0.0.ph42, i64 noundef %v.sroa.16.034, ptr noalias noundef nonnull align 4 %scratch.0, i64 noundef %scratch.1, i64 noundef %index.sroa.0.0.i, i1 noundef zeroext true, ptr noalias align 8 poison)
  %_47 = icmp ugt i64 %mid_eq, %v.sroa.16.034
  br i1 %_47, label %bb27, label %bb28, !prof !35

bb28:                                             ; preds = %bb17
  %new_len = sub nuw i64 %v.sroa.16.034, %mid_eq
  %_54 = getelementptr inbounds nuw i32, ptr %v.sroa.0.0.ph42, i64 %mid_eq
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pivot_copy)
  %_832 = icmp ult i64 %new_len, 33
  br i1 %_832, label %bb3, label %bb5.lr.ph

bb27:                                             ; preds = %bb17
; call core::slice::index::slice_index_fail
  call void @_ZN4core5slice5index16slice_index_fail17h62807bcaa490c9c1E(i64 noundef %mid_eq, i64 noundef %v.sroa.16.034, i64 noundef %v.sroa.16.034, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_0766b232215672ee1bd2195fdb153938) #24
  unreachable

bb22:                                             ; preds = %bb3, %bb6
  ret void
}

; alloc::slice::<impl core::slice::sort::stable::BufGuard<T> for alloc::vec::Vec<T>>::with_capacity
; Function Attrs: nonlazybind uwtable
define void @"_ZN5alloc5slice99_$LT$impl$u20$core..slice..sort..stable..BufGuard$LT$T$GT$$u20$for$u20$alloc..vec..Vec$LT$T$GT$$GT$13with_capacity17h8984867f4936b1d4E"(ptr dead_on_unwind noalias noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %_0, i64 noundef %capacity) unnamed_addr #1 {
start:
  %_4.i = alloca [24 x i8], align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %_4.i)
; call alloc::raw_vec::RawVecInner<A>::try_allocate_in
  call void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$15try_allocate_in17had089b3ffc2704ecE"(ptr noalias noundef sret([24 x i8]) align 8 captures(none) dereferenceable(24) %_4.i, i64 noundef %capacity, i1 noundef zeroext false, i64 noundef 4, i64 noundef 4)
  %_5.i = load i64, ptr %_4.i, align 8, !range !1950, !noundef !32
  %0 = trunc nuw i64 %_5.i to i1
  %1 = getelementptr inbounds nuw i8, ptr %_4.i, i64 8
  %err.0.i = load i64, ptr %1, align 8, !range !1951, !noundef !32
  %2 = getelementptr inbounds nuw i8, ptr %_4.i, i64 16
  br i1 %0, label %bb3.i, label %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17ha667a5cadfb699e0E.exit", !prof !35

bb3.i:                                            ; preds = %start
  %err.1.i = load i64, ptr %2, align 8
; call alloc::raw_vec::handle_error
  tail call void @_ZN5alloc7raw_vec12handle_error17h3a8c375904e593b2E(i64 noundef %err.0.i, i64 %err.1.i) #25
  unreachable

"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17ha667a5cadfb699e0E.exit": ; preds = %start
  %this.1.i = load ptr, ptr %2, align 8, !nonnull !32, !noundef !32
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

; alloc::slice::<impl core::slice::sort::stable::BufGuard<T> for alloc::vec::Vec<T>>::with_capacity
; Function Attrs: nonlazybind uwtable
define void @"_ZN5alloc5slice99_$LT$impl$u20$core..slice..sort..stable..BufGuard$LT$T$GT$$u20$for$u20$alloc..vec..Vec$LT$T$GT$$GT$13with_capacity17hecd4caf4aa0eb5ebE"(ptr dead_on_unwind noalias noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %_0, i64 noundef %capacity) unnamed_addr #1 {
start:
  %_4.i = alloca [24 x i8], align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %_4.i)
; call alloc::raw_vec::RawVecInner<A>::try_allocate_in
  call void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$15try_allocate_in17had089b3ffc2704ecE"(ptr noalias noundef sret([24 x i8]) align 8 captures(none) dereferenceable(24) %_4.i, i64 noundef %capacity, i1 noundef zeroext false, i64 noundef 4, i64 noundef 4)
  %_5.i = load i64, ptr %_4.i, align 8, !range !1950, !noundef !32
  %0 = trunc nuw i64 %_5.i to i1
  %1 = getelementptr inbounds nuw i8, ptr %_4.i, i64 8
  %err.0.i = load i64, ptr %1, align 8, !range !1951, !noundef !32
  %2 = getelementptr inbounds nuw i8, ptr %_4.i, i64 16
  br i1 %0, label %bb3.i, label %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17ha667a5cadfb699e0E.exit", !prof !35

bb3.i:                                            ; preds = %start
  %err.1.i = load i64, ptr %2, align 8
; call alloc::raw_vec::handle_error
  tail call void @_ZN5alloc7raw_vec12handle_error17h3a8c375904e593b2E(i64 noundef %err.0.i, i64 %err.1.i) #25
  unreachable

"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17ha667a5cadfb699e0E.exit": ; preds = %start
  %this.1.i = load ptr, ptr %2, align 8, !nonnull !32, !noundef !32
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
define { ptr, i64 } @"_ZN5alloc5slice99_$LT$impl$u20$core..slice..sort..stable..BufGuard$LT$T$GT$$u20$for$u20$alloc..vec..Vec$LT$T$GT$$GT$19as_uninit_slice_mut17ha8f230c9493a88e8E"(ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) %self) unnamed_addr #10 {
start:
  %0 = getelementptr inbounds nuw i8, ptr %self, i64 8
  %_10 = load ptr, ptr %0, align 8, !nonnull !32, !noundef !32
  %1 = getelementptr inbounds nuw i8, ptr %self, i64 16
  %count = load i64, ptr %1, align 8, !noundef !32
  %_3 = getelementptr inbounds nuw float, ptr %_10, i64 %count
  %self1 = load i64, ptr %self, align 8, !range !3472, !noundef !32
  %len = sub i64 %self1, %count
  %2 = insertvalue { ptr, i64 } poison, ptr %_3, 0
  %3 = insertvalue { ptr, i64 } %2, i64 %len, 1
  ret { ptr, i64 } %3
}

; alloc::slice::<impl core::slice::sort::stable::BufGuard<T> for alloc::vec::Vec<T>>::as_uninit_slice_mut
; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define { ptr, i64 } @"_ZN5alloc5slice99_$LT$impl$u20$core..slice..sort..stable..BufGuard$LT$T$GT$$u20$for$u20$alloc..vec..Vec$LT$T$GT$$GT$19as_uninit_slice_mut17hddaf0f1721a19431E"(ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) %self) unnamed_addr #10 {
start:
  %0 = getelementptr inbounds nuw i8, ptr %self, i64 8
  %_10 = load ptr, ptr %0, align 8, !nonnull !32, !noundef !32
  %1 = getelementptr inbounds nuw i8, ptr %self, i64 16
  %count = load i64, ptr %1, align 8, !noundef !32
  %_3 = getelementptr inbounds nuw i32, ptr %_10, i64 %count
  %self1 = load i64, ptr %self, align 8, !range !3472, !noundef !32
  %len = sub i64 %self1, %count
  %2 = insertvalue { ptr, i64 } poison, ptr %_3, 0
  %3 = insertvalue { ptr, i64 } %2, i64 %len, 1
  ret { ptr, i64 } %3
}

; <alloc::vec::Vec<T,A> as core::ops::drop::Drop>::drop
; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define void @"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h24038ef6cdbd339cE"(ptr noalias noundef readnone align 8 captures(none) dereferenceable(24) %self) unnamed_addr #6 {
start:
  ret void
}

; <alloc::vec::Vec<T,A> as core::ops::drop::Drop>::drop
; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define void @"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17ha975ad3fe6e71185E"(ptr noalias noundef readnone align 8 captures(none) dereferenceable(24) %self) unnamed_addr #6 {
start:
  ret void
}

; <alloc::raw_vec::RawVec<T,A> as core::ops::drop::Drop>::drop
; Function Attrs: nonlazybind uwtable
define void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hc4660ce2678abb89E"(ptr noalias noundef align 8 dereferenceable(16) %self) unnamed_addr #1 {
start:
; call alloc::raw_vec::RawVecInner<A>::deallocate
  tail call void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$10deallocate17h6ddf8733b0451bb9E"(ptr noalias noundef align 8 dereferenceable(16) %self, i64 noundef 4, i64 noundef 4)
  ret void
}

; <alloc::raw_vec::RawVec<T,A> as core::ops::drop::Drop>::drop
; Function Attrs: nonlazybind uwtable
define void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hca82967d56898dfeE"(ptr noalias noundef align 8 dereferenceable(16) %self) unnamed_addr #1 {
start:
; call alloc::raw_vec::RawVecInner<A>::deallocate
  tail call void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$10deallocate17h6ddf8733b0451bb9E"(ptr noalias noundef align 8 dereferenceable(16) %self, i64 noundef 4, i64 noundef 4)
  ret void
}

; <core::slice::sort::stable::merge::MergeState<T> as core::ops::drop::Drop>::drop
; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define void @"_ZN95_$LT$core..slice..sort..stable..merge..MergeState$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h2efab797e5fce30cE"(ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) %self) unnamed_addr #9 {
start:
  %0 = getelementptr inbounds nuw i8, ptr %self, i64 8
  %self1 = load ptr, ptr %0, align 8, !noundef !32
  %_5 = load ptr, ptr %self, align 8, !noundef !32
  %1 = ptrtoint ptr %self1 to i64
  %2 = ptrtoint ptr %_5 to i64
  %3 = sub nuw i64 %1, %2
  %4 = getelementptr inbounds nuw i8, ptr %self, i64 16
  %5 = load ptr, ptr %4, align 8, !noundef !32
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %5, ptr align 4 %_5, i64 %3, i1 false)
  ret void
}

; <core::slice::sort::stable::merge::MergeState<T> as core::ops::drop::Drop>::drop
; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define void @"_ZN95_$LT$core..slice..sort..stable..merge..MergeState$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h49f32e796e534003E"(ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) %self) unnamed_addr #9 {
start:
  %0 = getelementptr inbounds nuw i8, ptr %self, i64 8
  %self1 = load ptr, ptr %0, align 8, !noundef !32
  %_5 = load ptr, ptr %self, align 8, !noundef !32
  %1 = ptrtoint ptr %self1 to i64
  %2 = ptrtoint ptr %_5 to i64
  %3 = sub nuw i64 %1, %2
  %4 = getelementptr inbounds nuw i8, ptr %self, i64 16
  %5 = load ptr, ptr %4, align 8, !noundef !32
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %5, ptr align 4 %_5, i64 %3, i1 false)
  ret void
}

; <core::hint::select_unpredictable::DropOnPanic<T> as core::ops::drop::Drop>::drop
; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define void @"_ZN96_$LT$core..hint..select_unpredictable..DropOnPanic$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h21c7d400d12d4e8aE"(ptr noalias noundef readnone align 8 captures(none) dereferenceable(8) %self) unnamed_addr #6 {
start:
  ret void
}

; <core::hint::select_unpredictable::DropOnPanic<T> as core::ops::drop::Drop>::drop
; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define void @"_ZN96_$LT$core..hint..select_unpredictable..DropOnPanic$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h7e21517944074ac8E"(ptr noalias noundef readnone align 8 captures(none) dereferenceable(8) %self) unnamed_addr #6 {
start:
  ret void
}

; <core::slice::sort::shared::smallsort::CopyOnDrop<T> as core::ops::drop::Drop>::drop
; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define void @"_ZN99_$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h0d6a433dc34646a4E"(ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) %self) unnamed_addr #9 {
start:
  %src = load ptr, ptr %self, align 8, !noundef !32
  %0 = getelementptr inbounds nuw i8, ptr %self, i64 8
  %dst = load ptr, ptr %0, align 8, !noundef !32
  %1 = getelementptr inbounds nuw i8, ptr %self, i64 16
  %count = load i64, ptr %1, align 8, !noundef !32
  %2 = shl i64 %count, 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %dst, ptr align 4 %src, i64 %2, i1 false)
  ret void
}

; <core::slice::sort::shared::smallsort::CopyOnDrop<T> as core::ops::drop::Drop>::drop
; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define void @"_ZN99_$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hafc32df0be39b4b3E"(ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) %self) unnamed_addr #9 {
start:
  %src = load ptr, ptr %self, align 8, !noundef !32
  %0 = getelementptr inbounds nuw i8, ptr %self, i64 8
  %dst = load ptr, ptr %0, align 8, !noundef !32
  %1 = getelementptr inbounds nuw i8, ptr %self, i64 16
  %count = load i64, ptr %1, align 8, !noundef !32
  %2 = shl i64 %count, 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %dst, ptr align 4 %src, i64 %2, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read, inaccessiblemem: read) uwtable
define noundef range(i8 -1, 2) i8 @cmpfunc(ptr noalias noundef readonly align 4 captures(none) dereferenceable(4) %a, ptr noalias noundef readonly align 4 captures(none) dereferenceable(4) %b) unnamed_addr #11 {
start:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3473)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3476)
  %_3.i = load i32, ptr %a, align 4, !alias.scope !3473, !noalias !3476, !noundef !32
  %_4.i = load i32, ptr %b, align 4, !alias.scope !3476, !noalias !3473, !noundef !32
  %_0.i = tail call noundef range(i8 -1, 2) i8 @llvm.scmp.i8.i32(i32 %_3.i, i32 %_4.i)
  ret i8 %_0.i
}

; Function Attrs: nonlazybind uwtable
define noundef i32 @f_gold(ptr noalias noundef nonnull align 4 %a.0, i64 noundef range(i64 0, 2305843009213693952) %a.1, ptr noalias noundef nonnull align 4 %b.0, i64 noundef range(i64 0, 2305843009213693952) %b.1, i32 noundef %n) unnamed_addr #1 personality ptr @rust_eh_personality {
start:
  %compare.i4 = alloca [0 x i8], align 1
  %is_less.i.i5 = alloca [8 x i8], align 8
  %is_less.i.i = alloca [8 x i8], align 8
  call void @llvm.lifetime.start.p0(i64 0, ptr nonnull %compare.i4)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %is_less.i.i), !noalias !3478
  store ptr %compare.i4, ptr %is_less.i.i, align 8, !noalias !3481
  %b.i.i = icmp samesign ult i64 %a.1, 2
  br i1 %b.i.i, label %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by17hecb21546e15286f0E.exit", label %bb7.i.i, !prof !3485

bb7.i.i:                                          ; preds = %start
  %b1.i.i = icmp samesign ult i64 %a.1, 21
  br i1 %b1.i.i, label %bb9.i.i, label %bb10.i.i, !prof !3485

bb10.i.i:                                         ; preds = %bb7.i.i
; call core::slice::sort::stable::driftsort_main
  call void @_ZN4core5slice4sort6stable14driftsort_main17h54296ad700b061c7E(ptr noalias noundef nonnull align 4 %a.0, i64 noundef range(i64 0, 2305843009213693952) %a.1, ptr noalias noundef align 8 dereferenceable(8) %is_less.i.i)
  br label %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by17hecb21546e15286f0E.exit"

bb9.i.i:                                          ; preds = %bb7.i.i
; call core::slice::sort::shared::smallsort::insertion_sort_shift_left
  call void @_ZN4core5slice4sort6shared9smallsort25insertion_sort_shift_left17h8c39bce6e1229ee3E(ptr noalias noundef nonnull align 4 %a.0, i64 noundef range(i64 0, 2305843009213693952) %a.1, i64 noundef 1, ptr noalias align 8 poison)
  br label %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by17hecb21546e15286f0E.exit"

"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by17hecb21546e15286f0E.exit": ; preds = %start, %bb10.i.i, %bb9.i.i
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %is_less.i.i), !noalias !3478
  call void @llvm.lifetime.end.p0(i64 0, ptr nonnull %compare.i4)
  call void @llvm.lifetime.start.p0(i64 0, ptr nonnull %compare.i4)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %is_less.i.i5), !noalias !3486
  store ptr %compare.i4, ptr %is_less.i.i5, align 8, !noalias !3489
  %b.i.i6 = icmp samesign ult i64 %b.1, 2
  br i1 %b.i.i6, label %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by17hd7181ff24b95d99dE.exit", label %bb7.i.i7, !prof !3485

bb7.i.i7:                                         ; preds = %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by17hecb21546e15286f0E.exit"
  %b1.i.i8 = icmp samesign ult i64 %b.1, 21
  br i1 %b1.i.i8, label %bb9.i.i10, label %bb10.i.i9, !prof !3485

bb10.i.i9:                                        ; preds = %bb7.i.i7
; call core::slice::sort::stable::driftsort_main
  call void @_ZN4core5slice4sort6stable14driftsort_main17hcb049b11f4721df8E(ptr noalias noundef nonnull align 4 %b.0, i64 noundef range(i64 0, 2305843009213693952) %b.1, ptr noalias noundef align 8 dereferenceable(8) %is_less.i.i5)
  br label %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by17hd7181ff24b95d99dE.exit"

bb9.i.i10:                                        ; preds = %bb7.i.i7
; call core::slice::sort::shared::smallsort::insertion_sort_shift_left
  call void @_ZN4core5slice4sort6shared9smallsort25insertion_sort_shift_left17h34510fd470fc988eE(ptr noalias noundef nonnull align 4 %b.0, i64 noundef range(i64 0, 2305843009213693952) %b.1, i64 noundef 1, ptr noalias align 8 poison)
  br label %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by17hd7181ff24b95d99dE.exit"

"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by17hd7181ff24b95d99dE.exit": ; preds = %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by17hecb21546e15286f0E.exit", %bb10.i.i9, %bb9.i.i10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %is_less.i.i5), !noalias !3486
  call void @llvm.lifetime.end.p0(i64 0, ptr nonnull %compare.i4)
  %_8 = sext i32 %n to i64
  %_0.i.i.i16.not = icmp eq i32 %n, 0
  br i1 %_0.i.i.i16.not, label %bb8, label %bb7

bb7:                                              ; preds = %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by17hd7181ff24b95d99dE.exit", %bb10
  %spec.select20 = phi i64 [ %spec.select, %bb10 ], [ 1, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by17hd7181ff24b95d99dE.exit" ]
  %result.sroa.0.019 = phi i32 [ %3, %bb10 ], [ 0, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by17hd7181ff24b95d99dE.exit" ]
  %iter.sroa.0.018 = phi i64 [ %spec.select20, %bb10 ], [ 0, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by17hd7181ff24b95d99dE.exit" ]
  %_19 = icmp ult i64 %iter.sroa.0.018, %a.1
  br i1 %_19, label %bb9, label %panic

bb8:                                              ; preds = %bb10, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by17hd7181ff24b95d99dE.exit"
  %result.sroa.0.0.lcssa = phi i32 [ 0, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by17hd7181ff24b95d99dE.exit" ], [ %3, %bb10 ]
  ret i32 %result.sroa.0.0.lcssa

bb9:                                              ; preds = %bb7
  %_22 = icmp ult i64 %iter.sroa.0.018, %b.1
  br i1 %_22, label %bb10, label %panic1

panic:                                            ; preds = %bb7
; call core::panicking::panic_bounds_check
  call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef %iter.sroa.0.018, i64 noundef %a.1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_bb80c4294bf98485d1cae0b45be62c99) #24
  unreachable

bb10:                                             ; preds = %bb9
  %0 = getelementptr inbounds nuw float, ptr %a.0, i64 %iter.sroa.0.018
  %_17 = load float, ptr %0, align 4, !noundef !32
  %1 = getelementptr inbounds nuw float, ptr %b.0, i64 %iter.sroa.0.018
  %_20 = load float, ptr %1, align 4, !noundef !32
  %_16 = fsub float %_17, %_20
  %2 = call noundef float @llvm.fabs.f32(float %_16)
  %_14 = call i32 @llvm.fptosi.sat.i32.f32(float %2)
  %3 = add i32 %_14, %result.sroa.0.019
  %_0.i.i.i = icmp ult i64 %spec.select20, %_8
  %_0.i1.i.i = zext i1 %_0.i.i.i to i64
  %spec.select = add nuw i64 %spec.select20, %_0.i1.i.i
  br i1 %_0.i.i.i, label %bb7, label %bb8

panic1:                                           ; preds = %bb9
; call core::panicking::panic_bounds_check
  call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef %iter.sroa.0.018, i64 noundef %b.1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_f4ef7df7705ab5192cda3ed35c9cf9c8) #24
  unreachable
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define noundef range(i64 0, 2305843009213693952) i64 @len(ptr noalias noundef nonnull readonly align 4 captures(none) %arr.0, i64 noundef returned range(i64 0, 2305843009213693952) %arr.1) unnamed_addr #6 {
start:
  ret i64 %arr.1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define noundef i32 @max(i32 noundef %x, i32 noundef %y) unnamed_addr #6 {
start:
  %x.y = tail call i32 @llvm.smax.i32(i32 %x, i32 %y)
  ret i32 %x.y
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define noundef i32 @min(i32 noundef %x, i32 noundef %y) unnamed_addr #6 {
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
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %is_less.i.i), !noalias !3493
  store ptr %compare.i, ptr %is_less.i.i, align 8, !noalias !3496
  %b.i.i = icmp samesign ult i64 %arr.1, 2
  br i1 %b.i.i, label %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by17h66fdb4fea63614c6E.exit", label %bb7.i.i, !prof !3485

bb7.i.i:                                          ; preds = %start
  %b1.i.i = icmp samesign ult i64 %arr.1, 21
  br i1 %b1.i.i, label %bb9.i.i, label %bb10.i.i, !prof !3485

bb10.i.i:                                         ; preds = %bb7.i.i
; call core::slice::sort::stable::driftsort_main
  call void @_ZN4core5slice4sort6stable14driftsort_main17h0c6f5cb65c6269aaE(ptr noalias noundef nonnull align 4 %arr.0, i64 noundef range(i64 0, 2305843009213693952) %arr.1, ptr noalias noundef align 8 dereferenceable(8) %is_less.i.i)
  br label %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by17h66fdb4fea63614c6E.exit"

bb9.i.i:                                          ; preds = %bb7.i.i
; call core::slice::sort::shared::smallsort::insertion_sort_shift_left
  call void @_ZN4core5slice4sort6shared9smallsort25insertion_sort_shift_left17h73d95d3ba583ee1dE(ptr noalias noundef nonnull align 4 %arr.0, i64 noundef range(i64 0, 2305843009213693952) %arr.1, i64 noundef 1, ptr noalias align 8 poison)
  br label %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by17h66fdb4fea63614c6E.exit"

"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by17h66fdb4fea63614c6E.exit": ; preds = %start, %bb10.i.i, %bb9.i.i
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %is_less.i.i), !noalias !3493
  call void @llvm.lifetime.end.p0(i64 0, ptr nonnull %compare.i)
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
declare noundef range(i32 0, 10) i32 @rust_eh_personality(i32 noundef, i32 noundef, i64 noundef, ptr noundef, ptr noundef) unnamed_addr #12

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #13

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #13

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare range(i8 -1, 2) i8 @llvm.scmp.i8.i32(i32, i32) #14

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #14

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #15

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #16

; core::panicking::panic_in_cleanup
; Function Attrs: cold minsize noinline noreturn nounwind nonlazybind optsize uwtable
declare void @_ZN4core9panicking16panic_in_cleanup17h5f6bde45d17ae243E() unnamed_addr #17

; core::panicking::panic_fmt
; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_ZN4core9panicking9panic_fmt17ha4414e4328fe24a0E(ptr noundef nonnull, ptr noundef nonnull, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #18

; core::panicking::panic_bounds_check
; Function Attrs: cold minsize noinline noreturn nonlazybind optsize uwtable
declare void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef, i64 noundef, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #19

; Function Attrs: cold noreturn nounwind memory(inaccessiblemem: write)
declare void @llvm.trap() #20

; core::slice::sort::shared::smallsort::panic_on_ord_violation
; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_ZN4core5slice4sort6shared9smallsort22panic_on_ord_violation17hc77a22a2d50782cdE() unnamed_addr #18

; core::slice::index::slice_index_fail
; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_ZN4core5slice5index16slice_index_fail17h62807bcaa490c9c1E(i64 noundef, i64 noundef, i64 noundef, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #18

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctlz.i64(i64, i1 immarg) #14

; core::slice::sort::stable::drift::sqrt_approx
; Function Attrs: nonlazybind uwtable
declare noundef i64 @_ZN4core5slice4sort6stable5drift11sqrt_approx17h72a4dc1ae46294f4E(i64 noundef) unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.usub.sat.i64(i64, i64) #14

; core::option::unwrap_failed
; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_ZN4core6option13unwrap_failed17hef2534b77b89c04fE(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #18

; alloc::raw_vec::RawVecInner<A>::try_allocate_in
; Function Attrs: nonlazybind uwtable
declare void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$15try_allocate_in17had089b3ffc2704ecE"(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), i64 noundef, i1 noundef zeroext, i64 noundef range(i64 1, -9223372036854775807), i64 noundef) unnamed_addr #1

; alloc::raw_vec::handle_error
; Function Attrs: cold minsize noreturn nonlazybind optsize uwtable
declare void @_ZN5alloc7raw_vec12handle_error17h3a8c375904e593b2E(i64 noundef range(i64 0, -9223372036854775807), i64) unnamed_addr #21

; alloc::raw_vec::RawVecInner<A>::deallocate
; Function Attrs: nonlazybind uwtable
declare void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$10deallocate17h6ddf8733b0451bb9E"(ptr noalias noundef align 8 dereferenceable(16), i64 noundef range(i64 1, -9223372036854775807), i64 noundef) unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.fptosi.sat.i32.f32(float) #14

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #22

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #23

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #23

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #23

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #23

attributes #0 = { nofree norecurse nosync nounwind nonlazybind memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #1 = { nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #2 = { nofree nosync nounwind nonlazybind memory(read, inaccessiblemem: readwrite) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #4 = { nounwind nonlazybind memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #5 = { noinline nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #7 = { nofree norecurse nosync nounwind nonlazybind memory(read, argmem: readwrite, inaccessiblemem: readwrite) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #8 = { nofree norecurse nosync nounwind nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #9 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(readwrite, inaccessiblemem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #10 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #11 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read, inaccessiblemem: read) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #12 = { nounwind nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #13 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #14 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #15 = { mustprogress nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #16 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #17 = { cold minsize noinline noreturn nounwind nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #18 = { cold noinline noreturn nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #19 = { cold minsize noinline noreturn nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #20 = { cold noreturn nounwind memory(inaccessiblemem: write) }
attributes #21 = { cold minsize noreturn nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #22 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #23 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #24 = { noinline noreturn }
attributes #25 = { noreturn }
attributes #26 = { cold noreturn nounwind }
attributes #27 = { noinline }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 2, !"RtLibUseGOT", i32 1}
!2 = !{!"rustc version 1.93.1 (01f6ddf75 2026-02-11)"}
!3 = !{!4}
!4 = distinct !{!4, !5, !"_ZN4core3ptr10swap_chunk17hb63c2ce57abd75efE: %x"}
!5 = distinct !{!5, !"_ZN4core3ptr10swap_chunk17hb63c2ce57abd75efE"}
!6 = !{!7}
!7 = distinct !{!7, !5, !"_ZN4core3ptr10swap_chunk17hb63c2ce57abd75efE: %y"}
!8 = !{!9}
!9 = distinct !{!9, !5, !"_ZN4core3ptr10swap_chunk17hb63c2ce57abd75efE: %x:It1"}
!10 = !{!11}
!11 = distinct !{!11, !5, !"_ZN4core3ptr10swap_chunk17hb63c2ce57abd75efE: %y:It1"}
!12 = !{!13}
!13 = distinct !{!13, !14, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf5b8f37855ac0c3dE: %a"}
!14 = distinct !{!14, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf5b8f37855ac0c3dE"}
!15 = !{!16}
!16 = distinct !{!16, !14, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf5b8f37855ac0c3dE: %b"}
!17 = !{!18}
!18 = distinct !{!18, !19, !"_ZN71MAKING_ELEMENTS_OF_TWO_ARRAYS_SAME_WITH_MINIMUM_INCREMENTDECREMENT_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hf0788034254845f0E: %a"}
!19 = distinct !{!19, !"_ZN71MAKING_ELEMENTS_OF_TWO_ARRAYS_SAME_WITH_MINIMUM_INCREMENTDECREMENT_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hf0788034254845f0E"}
!20 = !{!21}
!21 = distinct !{!21, !22, !"_ZN4core5slice4sort6shared5pivot7median317h997f2f4aad5b9139E: %c"}
!22 = distinct !{!22, !"_ZN4core5slice4sort6shared5pivot7median317h997f2f4aad5b9139E"}
!23 = !{!24}
!24 = distinct !{!24, !19, !"_ZN71MAKING_ELEMENTS_OF_TWO_ARRAYS_SAME_WITH_MINIMUM_INCREMENTDECREMENT_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hf0788034254845f0E: %b"}
!25 = !{!26}
!26 = distinct !{!26, !27, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$f32$GT$11partial_cmp17h51acfdb7fcc2b22aE: %self"}
!27 = distinct !{!27, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$f32$GT$11partial_cmp17h51acfdb7fcc2b22aE"}
!28 = !{!29}
!29 = distinct !{!29, !27, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$f32$GT$11partial_cmp17h51acfdb7fcc2b22aE: %other"}
!30 = !{!26, !18, !13}
!31 = !{!29, !24, !16, !21}
!32 = !{}
!33 = !{!29, !24, !16}
!34 = !{!26, !18, !13, !21}
!35 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!36 = !{!18, !24, !13, !16, !21}
!37 = !{!38}
!38 = distinct !{!38, !39, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf5b8f37855ac0c3dE: %b"}
!39 = distinct !{!39, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf5b8f37855ac0c3dE"}
!40 = !{!41}
!41 = distinct !{!41, !42, !"_ZN71MAKING_ELEMENTS_OF_TWO_ARRAYS_SAME_WITH_MINIMUM_INCREMENTDECREMENT_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hf0788034254845f0E: %b"}
!42 = distinct !{!42, !"_ZN71MAKING_ELEMENTS_OF_TWO_ARRAYS_SAME_WITH_MINIMUM_INCREMENTDECREMENT_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hf0788034254845f0E"}
!43 = !{!44, !41, !38}
!44 = distinct !{!44, !45, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$f32$GT$11partial_cmp17h51acfdb7fcc2b22aE: %other"}
!45 = distinct !{!45, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$f32$GT$11partial_cmp17h51acfdb7fcc2b22aE"}
!46 = !{!47, !48, !49}
!47 = distinct !{!47, !45, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$f32$GT$11partial_cmp17h51acfdb7fcc2b22aE: %self"}
!48 = distinct !{!48, !42, !"_ZN71MAKING_ELEMENTS_OF_TWO_ARRAYS_SAME_WITH_MINIMUM_INCREMENTDECREMENT_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hf0788034254845f0E: %a"}
!49 = distinct !{!49, !39, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf5b8f37855ac0c3dE: %a"}
!50 = !{!48, !41, !49, !38}
!51 = !{!52, !54, !55, !57}
!52 = distinct !{!52, !53, !"_ZN71MAKING_ELEMENTS_OF_TWO_ARRAYS_SAME_WITH_MINIMUM_INCREMENTDECREMENT_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hf0788034254845f0E: %a"}
!53 = distinct !{!53, !"_ZN71MAKING_ELEMENTS_OF_TWO_ARRAYS_SAME_WITH_MINIMUM_INCREMENTDECREMENT_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hf0788034254845f0E"}
!54 = distinct !{!54, !53, !"_ZN71MAKING_ELEMENTS_OF_TWO_ARRAYS_SAME_WITH_MINIMUM_INCREMENTDECREMENT_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hf0788034254845f0E: %b"}
!55 = distinct !{!55, !56, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf5b8f37855ac0c3dE: %a"}
!56 = distinct !{!56, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf5b8f37855ac0c3dE"}
!57 = distinct !{!57, !56, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf5b8f37855ac0c3dE: %b"}
!58 = !{!59}
!59 = distinct !{!59, !60, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5ba3fdab0b109aaeE: %a"}
!60 = distinct !{!60, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5ba3fdab0b109aaeE"}
!61 = !{!62}
!62 = distinct !{!62, !60, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5ba3fdab0b109aaeE: %b"}
!63 = !{!64}
!64 = distinct !{!64, !65, !"_ZN4core3ops8function5FnMut8call_mut17hb2c3cc4e9207ff38E: argument 0"}
!65 = distinct !{!65, !"_ZN4core3ops8function5FnMut8call_mut17hb2c3cc4e9207ff38E"}
!66 = !{!67}
!67 = distinct !{!67, !68, !"_ZN4core5slice4sort6shared5pivot7median317h65cba05cf823dac8E: %c"}
!68 = distinct !{!68, !"_ZN4core5slice4sort6shared5pivot7median317h65cba05cf823dac8E"}
!69 = !{!70}
!70 = distinct !{!70, !65, !"_ZN4core3ops8function5FnMut8call_mut17hb2c3cc4e9207ff38E: argument 1"}
!71 = !{!72}
!72 = distinct !{!72, !73, !"cmpfunc: %a"}
!73 = distinct !{!73, !"cmpfunc"}
!74 = !{!75}
!75 = distinct !{!75, !73, !"cmpfunc: %b"}
!76 = !{!77}
!77 = distinct !{!77, !78, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!78 = distinct !{!78, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!79 = !{!80}
!80 = distinct !{!80, !78, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!81 = !{!77, !72, !64, !59}
!82 = !{!80, !75, !70, !62, !67}
!83 = !{!80, !75, !70, !62}
!84 = !{!77, !72, !64, !59, !67}
!85 = !{!86, !88, !90, !92}
!86 = distinct !{!86, !87, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!87 = distinct !{!87, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!88 = distinct !{!88, !89, !"cmpfunc: %b"}
!89 = distinct !{!89, !"cmpfunc"}
!90 = distinct !{!90, !91, !"_ZN4core3ops8function5FnMut8call_mut17hb2c3cc4e9207ff38E: argument 1"}
!91 = distinct !{!91, !"_ZN4core3ops8function5FnMut8call_mut17hb2c3cc4e9207ff38E"}
!92 = distinct !{!92, !93, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5ba3fdab0b109aaeE: %b"}
!93 = distinct !{!93, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5ba3fdab0b109aaeE"}
!94 = !{!95, !96, !97, !98}
!95 = distinct !{!95, !87, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!96 = distinct !{!96, !89, !"cmpfunc: %a"}
!97 = distinct !{!97, !91, !"_ZN4core3ops8function5FnMut8call_mut17hb2c3cc4e9207ff38E: argument 0"}
!98 = distinct !{!98, !93, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5ba3fdab0b109aaeE: %a"}
!99 = !{!100}
!100 = distinct !{!100, !101, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfaa75802b1959b0aE: %a"}
!101 = distinct !{!101, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfaa75802b1959b0aE"}
!102 = !{!103}
!103 = distinct !{!103, !101, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfaa75802b1959b0aE: %b"}
!104 = !{!105}
!105 = distinct !{!105, !106, !"_ZN71MAKING_ELEMENTS_OF_TWO_ARRAYS_SAME_WITH_MINIMUM_INCREMENTDECREMENT_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hbb49eefd79996977E: %a"}
!106 = distinct !{!106, !"_ZN71MAKING_ELEMENTS_OF_TWO_ARRAYS_SAME_WITH_MINIMUM_INCREMENTDECREMENT_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hbb49eefd79996977E"}
!107 = !{!108}
!108 = distinct !{!108, !109, !"_ZN4core5slice4sort6shared5pivot7median317hfc7ca460ee81ac1fE: %c"}
!109 = distinct !{!109, !"_ZN4core5slice4sort6shared5pivot7median317hfc7ca460ee81ac1fE"}
!110 = !{!111}
!111 = distinct !{!111, !106, !"_ZN71MAKING_ELEMENTS_OF_TWO_ARRAYS_SAME_WITH_MINIMUM_INCREMENTDECREMENT_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hbb49eefd79996977E: %b"}
!112 = !{!113}
!113 = distinct !{!113, !114, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$f32$GT$11partial_cmp17h51acfdb7fcc2b22aE: %self"}
!114 = distinct !{!114, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$f32$GT$11partial_cmp17h51acfdb7fcc2b22aE"}
!115 = !{!116}
!116 = distinct !{!116, !114, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$f32$GT$11partial_cmp17h51acfdb7fcc2b22aE: %other"}
!117 = !{!113, !105, !100}
!118 = !{!116, !111, !103, !108}
!119 = !{!116, !111, !103}
!120 = !{!113, !105, !100, !108}
!121 = !{!105, !111, !100, !103, !108}
!122 = !{!123}
!123 = distinct !{!123, !124, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfaa75802b1959b0aE: %b"}
!124 = distinct !{!124, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfaa75802b1959b0aE"}
!125 = !{!126}
!126 = distinct !{!126, !127, !"_ZN71MAKING_ELEMENTS_OF_TWO_ARRAYS_SAME_WITH_MINIMUM_INCREMENTDECREMENT_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hbb49eefd79996977E: %b"}
!127 = distinct !{!127, !"_ZN71MAKING_ELEMENTS_OF_TWO_ARRAYS_SAME_WITH_MINIMUM_INCREMENTDECREMENT_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hbb49eefd79996977E"}
!128 = !{!129, !126, !123}
!129 = distinct !{!129, !130, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$f32$GT$11partial_cmp17h51acfdb7fcc2b22aE: %other"}
!130 = distinct !{!130, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$f32$GT$11partial_cmp17h51acfdb7fcc2b22aE"}
!131 = !{!132, !133, !134}
!132 = distinct !{!132, !130, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$f32$GT$11partial_cmp17h51acfdb7fcc2b22aE: %self"}
!133 = distinct !{!133, !127, !"_ZN71MAKING_ELEMENTS_OF_TWO_ARRAYS_SAME_WITH_MINIMUM_INCREMENTDECREMENT_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hbb49eefd79996977E: %a"}
!134 = distinct !{!134, !124, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfaa75802b1959b0aE: %a"}
!135 = !{!133, !126, !134, !123}
!136 = !{!137, !139, !140, !142}
!137 = distinct !{!137, !138, !"_ZN71MAKING_ELEMENTS_OF_TWO_ARRAYS_SAME_WITH_MINIMUM_INCREMENTDECREMENT_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hbb49eefd79996977E: %a"}
!138 = distinct !{!138, !"_ZN71MAKING_ELEMENTS_OF_TWO_ARRAYS_SAME_WITH_MINIMUM_INCREMENTDECREMENT_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hbb49eefd79996977E"}
!139 = distinct !{!139, !138, !"_ZN71MAKING_ELEMENTS_OF_TWO_ARRAYS_SAME_WITH_MINIMUM_INCREMENTDECREMENT_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hbb49eefd79996977E: %b"}
!140 = distinct !{!140, !141, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfaa75802b1959b0aE: %a"}
!141 = distinct !{!141, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfaa75802b1959b0aE"}
!142 = distinct !{!142, !141, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfaa75802b1959b0aE: %b"}
!143 = !{!144}
!144 = distinct !{!144, !145, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5ba3fdab0b109aaeE: %a"}
!145 = distinct !{!145, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5ba3fdab0b109aaeE"}
!146 = !{!147}
!147 = distinct !{!147, !145, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5ba3fdab0b109aaeE: %b"}
!148 = !{!149}
!149 = distinct !{!149, !150, !"_ZN4core3ops8function5FnMut8call_mut17hb2c3cc4e9207ff38E: argument 0"}
!150 = distinct !{!150, !"_ZN4core3ops8function5FnMut8call_mut17hb2c3cc4e9207ff38E"}
!151 = !{!152}
!152 = distinct !{!152, !150, !"_ZN4core3ops8function5FnMut8call_mut17hb2c3cc4e9207ff38E: argument 1"}
!153 = !{!154}
!154 = distinct !{!154, !155, !"cmpfunc: %a"}
!155 = distinct !{!155, !"cmpfunc"}
!156 = !{!157}
!157 = distinct !{!157, !155, !"cmpfunc: %b"}
!158 = !{!159}
!159 = distinct !{!159, !160, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!160 = distinct !{!160, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!161 = !{!162}
!162 = distinct !{!162, !160, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!163 = !{!159, !154, !149, !144}
!164 = !{!162, !157, !152, !147}
!165 = !{!166, !168, !170, !172}
!166 = distinct !{!166, !167, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!167 = distinct !{!167, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!168 = distinct !{!168, !169, !"cmpfunc: %b"}
!169 = distinct !{!169, !"cmpfunc"}
!170 = distinct !{!170, !171, !"_ZN4core3ops8function5FnMut8call_mut17hb2c3cc4e9207ff38E: argument 1"}
!171 = distinct !{!171, !"_ZN4core3ops8function5FnMut8call_mut17hb2c3cc4e9207ff38E"}
!172 = distinct !{!172, !173, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5ba3fdab0b109aaeE: %b"}
!173 = distinct !{!173, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5ba3fdab0b109aaeE"}
!174 = !{!175, !176, !177, !178}
!175 = distinct !{!175, !167, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!176 = distinct !{!176, !169, !"cmpfunc: %a"}
!177 = distinct !{!177, !171, !"_ZN4core3ops8function5FnMut8call_mut17hb2c3cc4e9207ff38E: argument 0"}
!178 = distinct !{!178, !173, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5ba3fdab0b109aaeE: %a"}
!179 = !{!180, !182}
!180 = distinct !{!180, !181, !"_ZN99_$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h0d6a433dc34646a4E: %self"}
!181 = distinct !{!181, !"_ZN99_$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h0d6a433dc34646a4E"}
!182 = distinct !{!182, !183, !"_ZN4core3ptr80drop_in_place$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$i32$GT$$GT$17h91c8a89f30d81e4aE: %_1"}
!183 = distinct !{!183, !"_ZN4core3ptr80drop_in_place$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$i32$GT$$GT$17h91c8a89f30d81e4aE"}
!184 = !{!185}
!185 = distinct !{!185, !186, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfaa75802b1959b0aE: %a"}
!186 = distinct !{!186, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfaa75802b1959b0aE"}
!187 = !{!188}
!188 = distinct !{!188, !186, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfaa75802b1959b0aE: %b"}
!189 = !{!190}
!190 = distinct !{!190, !191, !"_ZN71MAKING_ELEMENTS_OF_TWO_ARRAYS_SAME_WITH_MINIMUM_INCREMENTDECREMENT_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hbb49eefd79996977E: %a"}
!191 = distinct !{!191, !"_ZN71MAKING_ELEMENTS_OF_TWO_ARRAYS_SAME_WITH_MINIMUM_INCREMENTDECREMENT_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hbb49eefd79996977E"}
!192 = !{!193}
!193 = distinct !{!193, !191, !"_ZN71MAKING_ELEMENTS_OF_TWO_ARRAYS_SAME_WITH_MINIMUM_INCREMENTDECREMENT_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hbb49eefd79996977E: %b"}
!194 = !{!195}
!195 = distinct !{!195, !196, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$f32$GT$11partial_cmp17h51acfdb7fcc2b22aE: %self"}
!196 = distinct !{!196, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$f32$GT$11partial_cmp17h51acfdb7fcc2b22aE"}
!197 = !{!198}
!198 = distinct !{!198, !196, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$f32$GT$11partial_cmp17h51acfdb7fcc2b22aE: %other"}
!199 = !{!195, !190, !185}
!200 = !{!198, !193, !188}
!201 = !{!190, !193, !185, !188}
!202 = !{!203, !205, !207}
!203 = distinct !{!203, !204, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$f32$GT$11partial_cmp17h51acfdb7fcc2b22aE: %other"}
!204 = distinct !{!204, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$f32$GT$11partial_cmp17h51acfdb7fcc2b22aE"}
!205 = distinct !{!205, !206, !"_ZN71MAKING_ELEMENTS_OF_TWO_ARRAYS_SAME_WITH_MINIMUM_INCREMENTDECREMENT_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hbb49eefd79996977E: %b"}
!206 = distinct !{!206, !"_ZN71MAKING_ELEMENTS_OF_TWO_ARRAYS_SAME_WITH_MINIMUM_INCREMENTDECREMENT_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hbb49eefd79996977E"}
!207 = distinct !{!207, !208, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfaa75802b1959b0aE: %b"}
!208 = distinct !{!208, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfaa75802b1959b0aE"}
!209 = !{!210, !211, !212}
!210 = distinct !{!210, !204, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$f32$GT$11partial_cmp17h51acfdb7fcc2b22aE: %self"}
!211 = distinct !{!211, !206, !"_ZN71MAKING_ELEMENTS_OF_TWO_ARRAYS_SAME_WITH_MINIMUM_INCREMENTDECREMENT_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hbb49eefd79996977E: %a"}
!212 = distinct !{!212, !208, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfaa75802b1959b0aE: %a"}
!213 = !{!214, !216}
!214 = distinct !{!214, !215, !"_ZN99_$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hafc32df0be39b4b3E: %self"}
!215 = distinct !{!215, !"_ZN99_$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hafc32df0be39b4b3E"}
!216 = distinct !{!216, !217, !"_ZN4core3ptr80drop_in_place$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$f32$GT$$GT$17hd86175c6260a7107E: %_1"}
!217 = distinct !{!217, !"_ZN4core3ptr80drop_in_place$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$f32$GT$$GT$17hd86175c6260a7107E"}
!218 = !{!219, !221}
!219 = distinct !{!219, !220, !"_ZN99_$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hafc32df0be39b4b3E: %self"}
!220 = distinct !{!220, !"_ZN99_$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hafc32df0be39b4b3E"}
!221 = distinct !{!221, !222, !"_ZN4core3ptr80drop_in_place$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$f32$GT$$GT$17hd86175c6260a7107E: %_1"}
!222 = distinct !{!222, !"_ZN4core3ptr80drop_in_place$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$f32$GT$$GT$17hd86175c6260a7107E"}
!223 = !{!224}
!224 = distinct !{!224, !225, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf5b8f37855ac0c3dE: %a"}
!225 = distinct !{!225, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf5b8f37855ac0c3dE"}
!226 = !{!227}
!227 = distinct !{!227, !225, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf5b8f37855ac0c3dE: %b"}
!228 = !{!229}
!229 = distinct !{!229, !230, !"_ZN71MAKING_ELEMENTS_OF_TWO_ARRAYS_SAME_WITH_MINIMUM_INCREMENTDECREMENT_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hf0788034254845f0E: %a"}
!230 = distinct !{!230, !"_ZN71MAKING_ELEMENTS_OF_TWO_ARRAYS_SAME_WITH_MINIMUM_INCREMENTDECREMENT_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hf0788034254845f0E"}
!231 = !{!232}
!232 = distinct !{!232, !230, !"_ZN71MAKING_ELEMENTS_OF_TWO_ARRAYS_SAME_WITH_MINIMUM_INCREMENTDECREMENT_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hf0788034254845f0E: %b"}
!233 = !{!234}
!234 = distinct !{!234, !235, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$f32$GT$11partial_cmp17h51acfdb7fcc2b22aE: %self"}
!235 = distinct !{!235, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$f32$GT$11partial_cmp17h51acfdb7fcc2b22aE"}
!236 = !{!237}
!237 = distinct !{!237, !235, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$f32$GT$11partial_cmp17h51acfdb7fcc2b22aE: %other"}
!238 = !{!234, !229, !224}
!239 = !{!237, !232, !227}
!240 = !{!229, !232, !224, !227}
!241 = !{!242, !244, !246}
!242 = distinct !{!242, !243, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$f32$GT$11partial_cmp17h51acfdb7fcc2b22aE: %other"}
!243 = distinct !{!243, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$f32$GT$11partial_cmp17h51acfdb7fcc2b22aE"}
!244 = distinct !{!244, !245, !"_ZN71MAKING_ELEMENTS_OF_TWO_ARRAYS_SAME_WITH_MINIMUM_INCREMENTDECREMENT_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hf0788034254845f0E: %b"}
!245 = distinct !{!245, !"_ZN71MAKING_ELEMENTS_OF_TWO_ARRAYS_SAME_WITH_MINIMUM_INCREMENTDECREMENT_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hf0788034254845f0E"}
!246 = distinct !{!246, !247, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf5b8f37855ac0c3dE: %b"}
!247 = distinct !{!247, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf5b8f37855ac0c3dE"}
!248 = !{!249, !250, !251}
!249 = distinct !{!249, !243, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$f32$GT$11partial_cmp17h51acfdb7fcc2b22aE: %self"}
!250 = distinct !{!250, !245, !"_ZN71MAKING_ELEMENTS_OF_TWO_ARRAYS_SAME_WITH_MINIMUM_INCREMENTDECREMENT_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hf0788034254845f0E: %a"}
!251 = distinct !{!251, !247, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf5b8f37855ac0c3dE: %a"}
!252 = !{!253, !255}
!253 = distinct !{!253, !254, !"_ZN99_$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hafc32df0be39b4b3E: %self"}
!254 = distinct !{!254, !"_ZN99_$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hafc32df0be39b4b3E"}
!255 = distinct !{!255, !256, !"_ZN4core3ptr80drop_in_place$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$f32$GT$$GT$17hd86175c6260a7107E: %_1"}
!256 = distinct !{!256, !"_ZN4core3ptr80drop_in_place$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$f32$GT$$GT$17hd86175c6260a7107E"}
!257 = !{!258, !260}
!258 = distinct !{!258, !259, !"_ZN99_$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hafc32df0be39b4b3E: %self"}
!259 = distinct !{!259, !"_ZN99_$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hafc32df0be39b4b3E"}
!260 = distinct !{!260, !261, !"_ZN4core3ptr80drop_in_place$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$f32$GT$$GT$17hd86175c6260a7107E: %_1"}
!261 = distinct !{!261, !"_ZN4core3ptr80drop_in_place$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$f32$GT$$GT$17hd86175c6260a7107E"}
!262 = !{!263}
!263 = distinct !{!263, !264, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf5b8f37855ac0c3dE: %a"}
!264 = distinct !{!264, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf5b8f37855ac0c3dE"}
!265 = !{!266}
!266 = distinct !{!266, !264, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf5b8f37855ac0c3dE: %b"}
!267 = !{!268}
!268 = distinct !{!268, !269, !"_ZN71MAKING_ELEMENTS_OF_TWO_ARRAYS_SAME_WITH_MINIMUM_INCREMENTDECREMENT_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hf0788034254845f0E: %a"}
!269 = distinct !{!269, !"_ZN71MAKING_ELEMENTS_OF_TWO_ARRAYS_SAME_WITH_MINIMUM_INCREMENTDECREMENT_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hf0788034254845f0E"}
!270 = !{!271}
!271 = distinct !{!271, !269, !"_ZN71MAKING_ELEMENTS_OF_TWO_ARRAYS_SAME_WITH_MINIMUM_INCREMENTDECREMENT_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hf0788034254845f0E: %b"}
!272 = !{!273}
!273 = distinct !{!273, !274, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$f32$GT$11partial_cmp17h51acfdb7fcc2b22aE: %self"}
!274 = distinct !{!274, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$f32$GT$11partial_cmp17h51acfdb7fcc2b22aE"}
!275 = !{!276}
!276 = distinct !{!276, !274, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$f32$GT$11partial_cmp17h51acfdb7fcc2b22aE: %other"}
!277 = !{!273, !268, !263}
!278 = !{!276, !271, !266}
!279 = !{!268, !271, !263, !266}
!280 = !{!281}
!281 = distinct !{!281, !282, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf5b8f37855ac0c3dE: %a"}
!282 = distinct !{!282, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf5b8f37855ac0c3dE"}
!283 = !{!284}
!284 = distinct !{!284, !282, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf5b8f37855ac0c3dE: %b"}
!285 = !{!286}
!286 = distinct !{!286, !287, !"_ZN71MAKING_ELEMENTS_OF_TWO_ARRAYS_SAME_WITH_MINIMUM_INCREMENTDECREMENT_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hf0788034254845f0E: %a"}
!287 = distinct !{!287, !"_ZN71MAKING_ELEMENTS_OF_TWO_ARRAYS_SAME_WITH_MINIMUM_INCREMENTDECREMENT_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hf0788034254845f0E"}
!288 = !{!289}
!289 = distinct !{!289, !287, !"_ZN71MAKING_ELEMENTS_OF_TWO_ARRAYS_SAME_WITH_MINIMUM_INCREMENTDECREMENT_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hf0788034254845f0E: %b"}
!290 = !{!291}
!291 = distinct !{!291, !292, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$f32$GT$11partial_cmp17h51acfdb7fcc2b22aE: %self"}
!292 = distinct !{!292, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$f32$GT$11partial_cmp17h51acfdb7fcc2b22aE"}
!293 = !{!294}
!294 = distinct !{!294, !292, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$f32$GT$11partial_cmp17h51acfdb7fcc2b22aE: %other"}
!295 = !{!291, !286, !281}
!296 = !{!294, !289, !284}
!297 = !{!286, !289, !281, !284}
!298 = !{!299}
!299 = distinct !{!299, !300, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf5b8f37855ac0c3dE: %a"}
!300 = distinct !{!300, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf5b8f37855ac0c3dE"}
!301 = !{!302}
!302 = distinct !{!302, !300, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf5b8f37855ac0c3dE: %b"}
!303 = !{!304}
!304 = distinct !{!304, !305, !"_ZN71MAKING_ELEMENTS_OF_TWO_ARRAYS_SAME_WITH_MINIMUM_INCREMENTDECREMENT_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hf0788034254845f0E: %a"}
!305 = distinct !{!305, !"_ZN71MAKING_ELEMENTS_OF_TWO_ARRAYS_SAME_WITH_MINIMUM_INCREMENTDECREMENT_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hf0788034254845f0E"}
!306 = !{!307}
!307 = distinct !{!307, !305, !"_ZN71MAKING_ELEMENTS_OF_TWO_ARRAYS_SAME_WITH_MINIMUM_INCREMENTDECREMENT_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hf0788034254845f0E: %b"}
!308 = !{!309}
!309 = distinct !{!309, !310, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$f32$GT$11partial_cmp17h51acfdb7fcc2b22aE: %self"}
!310 = distinct !{!310, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$f32$GT$11partial_cmp17h51acfdb7fcc2b22aE"}
!311 = !{!312}
!312 = distinct !{!312, !310, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$f32$GT$11partial_cmp17h51acfdb7fcc2b22aE: %other"}
!313 = !{!309, !304, !299}
!314 = !{!312, !307, !302}
!315 = !{!304, !307, !299, !302}
!316 = !{!317}
!317 = distinct !{!317, !318, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf5b8f37855ac0c3dE: %a"}
!318 = distinct !{!318, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf5b8f37855ac0c3dE"}
!319 = !{!320}
!320 = distinct !{!320, !318, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf5b8f37855ac0c3dE: %b"}
!321 = !{!322}
!322 = distinct !{!322, !323, !"_ZN71MAKING_ELEMENTS_OF_TWO_ARRAYS_SAME_WITH_MINIMUM_INCREMENTDECREMENT_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hf0788034254845f0E: %a"}
!323 = distinct !{!323, !"_ZN71MAKING_ELEMENTS_OF_TWO_ARRAYS_SAME_WITH_MINIMUM_INCREMENTDECREMENT_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hf0788034254845f0E"}
!324 = !{!325}
!325 = distinct !{!325, !323, !"_ZN71MAKING_ELEMENTS_OF_TWO_ARRAYS_SAME_WITH_MINIMUM_INCREMENTDECREMENT_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hf0788034254845f0E: %b"}
!326 = !{!327}
!327 = distinct !{!327, !328, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$f32$GT$11partial_cmp17h51acfdb7fcc2b22aE: %self"}
!328 = distinct !{!328, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$f32$GT$11partial_cmp17h51acfdb7fcc2b22aE"}
!329 = !{!330}
!330 = distinct !{!330, !328, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$f32$GT$11partial_cmp17h51acfdb7fcc2b22aE: %other"}
!331 = !{!327, !322, !317}
!332 = !{!330, !325, !320}
!333 = !{!322, !325, !317, !320}
!334 = !{!335}
!335 = distinct !{!335, !336, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf5b8f37855ac0c3dE: %a"}
!336 = distinct !{!336, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf5b8f37855ac0c3dE"}
!337 = !{!338}
!338 = distinct !{!338, !336, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf5b8f37855ac0c3dE: %b"}
!339 = !{!340}
!340 = distinct !{!340, !341, !"_ZN71MAKING_ELEMENTS_OF_TWO_ARRAYS_SAME_WITH_MINIMUM_INCREMENTDECREMENT_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hf0788034254845f0E: %a"}
!341 = distinct !{!341, !"_ZN71MAKING_ELEMENTS_OF_TWO_ARRAYS_SAME_WITH_MINIMUM_INCREMENTDECREMENT_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hf0788034254845f0E"}
!342 = !{!343}
!343 = distinct !{!343, !341, !"_ZN71MAKING_ELEMENTS_OF_TWO_ARRAYS_SAME_WITH_MINIMUM_INCREMENTDECREMENT_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hf0788034254845f0E: %b"}
!344 = !{!345}
!345 = distinct !{!345, !346, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$f32$GT$11partial_cmp17h51acfdb7fcc2b22aE: %self"}
!346 = distinct !{!346, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$f32$GT$11partial_cmp17h51acfdb7fcc2b22aE"}
!347 = !{!348}
!348 = distinct !{!348, !346, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$f32$GT$11partial_cmp17h51acfdb7fcc2b22aE: %other"}
!349 = !{!345, !340, !335}
!350 = !{!348, !343, !338}
!351 = !{!340, !343, !335, !338}
!352 = !{!353}
!353 = distinct !{!353, !354, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfaa75802b1959b0aE: %a"}
!354 = distinct !{!354, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfaa75802b1959b0aE"}
!355 = !{!356}
!356 = distinct !{!356, !354, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfaa75802b1959b0aE: %b"}
!357 = !{!358}
!358 = distinct !{!358, !359, !"_ZN71MAKING_ELEMENTS_OF_TWO_ARRAYS_SAME_WITH_MINIMUM_INCREMENTDECREMENT_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hbb49eefd79996977E: %a"}
!359 = distinct !{!359, !"_ZN71MAKING_ELEMENTS_OF_TWO_ARRAYS_SAME_WITH_MINIMUM_INCREMENTDECREMENT_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hbb49eefd79996977E"}
!360 = !{!361}
!361 = distinct !{!361, !359, !"_ZN71MAKING_ELEMENTS_OF_TWO_ARRAYS_SAME_WITH_MINIMUM_INCREMENTDECREMENT_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hbb49eefd79996977E: %b"}
!362 = !{!363}
!363 = distinct !{!363, !364, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$f32$GT$11partial_cmp17h51acfdb7fcc2b22aE: %self"}
!364 = distinct !{!364, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$f32$GT$11partial_cmp17h51acfdb7fcc2b22aE"}
!365 = !{!366}
!366 = distinct !{!366, !364, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$f32$GT$11partial_cmp17h51acfdb7fcc2b22aE: %other"}
!367 = !{!363, !358, !353}
!368 = !{!366, !361, !356}
!369 = !{!358, !361, !353, !356}
!370 = !{!371}
!371 = distinct !{!371, !372, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfaa75802b1959b0aE: %a"}
!372 = distinct !{!372, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfaa75802b1959b0aE"}
!373 = !{!374}
!374 = distinct !{!374, !372, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfaa75802b1959b0aE: %b"}
!375 = !{!376}
!376 = distinct !{!376, !377, !"_ZN71MAKING_ELEMENTS_OF_TWO_ARRAYS_SAME_WITH_MINIMUM_INCREMENTDECREMENT_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hbb49eefd79996977E: %a"}
!377 = distinct !{!377, !"_ZN71MAKING_ELEMENTS_OF_TWO_ARRAYS_SAME_WITH_MINIMUM_INCREMENTDECREMENT_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hbb49eefd79996977E"}
!378 = !{!379}
!379 = distinct !{!379, !377, !"_ZN71MAKING_ELEMENTS_OF_TWO_ARRAYS_SAME_WITH_MINIMUM_INCREMENTDECREMENT_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hbb49eefd79996977E: %b"}
!380 = !{!381}
!381 = distinct !{!381, !382, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$f32$GT$11partial_cmp17h51acfdb7fcc2b22aE: %self"}
!382 = distinct !{!382, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$f32$GT$11partial_cmp17h51acfdb7fcc2b22aE"}
!383 = !{!384}
!384 = distinct !{!384, !382, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$f32$GT$11partial_cmp17h51acfdb7fcc2b22aE: %other"}
!385 = !{!381, !376, !371}
!386 = !{!384, !379, !374}
!387 = !{!376, !379, !371, !374}
!388 = !{!389}
!389 = distinct !{!389, !390, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfaa75802b1959b0aE: %a"}
!390 = distinct !{!390, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfaa75802b1959b0aE"}
!391 = !{!392}
!392 = distinct !{!392, !390, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfaa75802b1959b0aE: %b"}
!393 = !{!394}
!394 = distinct !{!394, !395, !"_ZN71MAKING_ELEMENTS_OF_TWO_ARRAYS_SAME_WITH_MINIMUM_INCREMENTDECREMENT_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hbb49eefd79996977E: %a"}
!395 = distinct !{!395, !"_ZN71MAKING_ELEMENTS_OF_TWO_ARRAYS_SAME_WITH_MINIMUM_INCREMENTDECREMENT_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hbb49eefd79996977E"}
!396 = !{!397}
!397 = distinct !{!397, !395, !"_ZN71MAKING_ELEMENTS_OF_TWO_ARRAYS_SAME_WITH_MINIMUM_INCREMENTDECREMENT_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hbb49eefd79996977E: %b"}
!398 = !{!399}
!399 = distinct !{!399, !400, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$f32$GT$11partial_cmp17h51acfdb7fcc2b22aE: %self"}
!400 = distinct !{!400, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$f32$GT$11partial_cmp17h51acfdb7fcc2b22aE"}
!401 = !{!402}
!402 = distinct !{!402, !400, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$f32$GT$11partial_cmp17h51acfdb7fcc2b22aE: %other"}
!403 = !{!399, !394, !389}
!404 = !{!402, !397, !392}
!405 = !{!394, !397, !389, !392}
!406 = !{!407}
!407 = distinct !{!407, !408, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfaa75802b1959b0aE: %a"}
!408 = distinct !{!408, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfaa75802b1959b0aE"}
!409 = !{!410}
!410 = distinct !{!410, !408, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfaa75802b1959b0aE: %b"}
!411 = !{!412}
!412 = distinct !{!412, !413, !"_ZN71MAKING_ELEMENTS_OF_TWO_ARRAYS_SAME_WITH_MINIMUM_INCREMENTDECREMENT_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hbb49eefd79996977E: %a"}
!413 = distinct !{!413, !"_ZN71MAKING_ELEMENTS_OF_TWO_ARRAYS_SAME_WITH_MINIMUM_INCREMENTDECREMENT_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hbb49eefd79996977E"}
!414 = !{!415}
!415 = distinct !{!415, !413, !"_ZN71MAKING_ELEMENTS_OF_TWO_ARRAYS_SAME_WITH_MINIMUM_INCREMENTDECREMENT_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hbb49eefd79996977E: %b"}
!416 = !{!417}
!417 = distinct !{!417, !418, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$f32$GT$11partial_cmp17h51acfdb7fcc2b22aE: %self"}
!418 = distinct !{!418, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$f32$GT$11partial_cmp17h51acfdb7fcc2b22aE"}
!419 = !{!420}
!420 = distinct !{!420, !418, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$f32$GT$11partial_cmp17h51acfdb7fcc2b22aE: %other"}
!421 = !{!417, !412, !407}
!422 = !{!420, !415, !410}
!423 = !{!412, !415, !407, !410}
!424 = !{!425}
!425 = distinct !{!425, !426, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfaa75802b1959b0aE: %a"}
!426 = distinct !{!426, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfaa75802b1959b0aE"}
!427 = !{!428}
!428 = distinct !{!428, !426, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfaa75802b1959b0aE: %b"}
!429 = !{!430}
!430 = distinct !{!430, !431, !"_ZN71MAKING_ELEMENTS_OF_TWO_ARRAYS_SAME_WITH_MINIMUM_INCREMENTDECREMENT_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hbb49eefd79996977E: %a"}
!431 = distinct !{!431, !"_ZN71MAKING_ELEMENTS_OF_TWO_ARRAYS_SAME_WITH_MINIMUM_INCREMENTDECREMENT_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hbb49eefd79996977E"}
!432 = !{!433}
!433 = distinct !{!433, !431, !"_ZN71MAKING_ELEMENTS_OF_TWO_ARRAYS_SAME_WITH_MINIMUM_INCREMENTDECREMENT_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hbb49eefd79996977E: %b"}
!434 = !{!435}
!435 = distinct !{!435, !436, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$f32$GT$11partial_cmp17h51acfdb7fcc2b22aE: %self"}
!436 = distinct !{!436, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$f32$GT$11partial_cmp17h51acfdb7fcc2b22aE"}
!437 = !{!438}
!438 = distinct !{!438, !436, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$f32$GT$11partial_cmp17h51acfdb7fcc2b22aE: %other"}
!439 = !{!435, !430, !425}
!440 = !{!438, !433, !428}
!441 = !{!430, !433, !425, !428}
!442 = !{!443}
!443 = distinct !{!443, !444, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5ba3fdab0b109aaeE: %a"}
!444 = distinct !{!444, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5ba3fdab0b109aaeE"}
!445 = !{!446}
!446 = distinct !{!446, !444, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5ba3fdab0b109aaeE: %b"}
!447 = !{!448}
!448 = distinct !{!448, !449, !"_ZN4core3ops8function5FnMut8call_mut17hb2c3cc4e9207ff38E: argument 0"}
!449 = distinct !{!449, !"_ZN4core3ops8function5FnMut8call_mut17hb2c3cc4e9207ff38E"}
!450 = !{!451}
!451 = distinct !{!451, !449, !"_ZN4core3ops8function5FnMut8call_mut17hb2c3cc4e9207ff38E: argument 1"}
!452 = !{!453}
!453 = distinct !{!453, !454, !"cmpfunc: %a"}
!454 = distinct !{!454, !"cmpfunc"}
!455 = !{!456}
!456 = distinct !{!456, !454, !"cmpfunc: %b"}
!457 = !{!458}
!458 = distinct !{!458, !459, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!459 = distinct !{!459, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!460 = !{!461}
!461 = distinct !{!461, !459, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!462 = !{!458, !453, !448, !443}
!463 = !{!461, !456, !451, !446}
!464 = !{!465}
!465 = distinct !{!465, !466, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5ba3fdab0b109aaeE: %a"}
!466 = distinct !{!466, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5ba3fdab0b109aaeE"}
!467 = !{!468}
!468 = distinct !{!468, !466, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5ba3fdab0b109aaeE: %b"}
!469 = !{!470}
!470 = distinct !{!470, !471, !"_ZN4core3ops8function5FnMut8call_mut17hb2c3cc4e9207ff38E: argument 0"}
!471 = distinct !{!471, !"_ZN4core3ops8function5FnMut8call_mut17hb2c3cc4e9207ff38E"}
!472 = !{!473}
!473 = distinct !{!473, !471, !"_ZN4core3ops8function5FnMut8call_mut17hb2c3cc4e9207ff38E: argument 1"}
!474 = !{!475}
!475 = distinct !{!475, !476, !"cmpfunc: %a"}
!476 = distinct !{!476, !"cmpfunc"}
!477 = !{!478}
!478 = distinct !{!478, !476, !"cmpfunc: %b"}
!479 = !{!480}
!480 = distinct !{!480, !481, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!481 = distinct !{!481, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!482 = !{!483}
!483 = distinct !{!483, !481, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!484 = !{!480, !475, !470, !465}
!485 = !{!483, !478, !473, !468}
!486 = !{!487}
!487 = distinct !{!487, !488, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5ba3fdab0b109aaeE: %a"}
!488 = distinct !{!488, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5ba3fdab0b109aaeE"}
!489 = !{!490}
!490 = distinct !{!490, !488, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5ba3fdab0b109aaeE: %b"}
!491 = !{!492}
!492 = distinct !{!492, !493, !"_ZN4core3ops8function5FnMut8call_mut17hb2c3cc4e9207ff38E: argument 0"}
!493 = distinct !{!493, !"_ZN4core3ops8function5FnMut8call_mut17hb2c3cc4e9207ff38E"}
!494 = !{!495}
!495 = distinct !{!495, !493, !"_ZN4core3ops8function5FnMut8call_mut17hb2c3cc4e9207ff38E: argument 1"}
!496 = !{!497}
!497 = distinct !{!497, !498, !"cmpfunc: %a"}
!498 = distinct !{!498, !"cmpfunc"}
!499 = !{!500}
!500 = distinct !{!500, !498, !"cmpfunc: %b"}
!501 = !{!502}
!502 = distinct !{!502, !503, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!503 = distinct !{!503, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!504 = !{!505}
!505 = distinct !{!505, !503, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!506 = !{!502, !497, !492, !487}
!507 = !{!505, !500, !495, !490}
!508 = !{!509}
!509 = distinct !{!509, !510, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5ba3fdab0b109aaeE: %a"}
!510 = distinct !{!510, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5ba3fdab0b109aaeE"}
!511 = !{!512}
!512 = distinct !{!512, !510, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5ba3fdab0b109aaeE: %b"}
!513 = !{!514}
!514 = distinct !{!514, !515, !"_ZN4core3ops8function5FnMut8call_mut17hb2c3cc4e9207ff38E: argument 0"}
!515 = distinct !{!515, !"_ZN4core3ops8function5FnMut8call_mut17hb2c3cc4e9207ff38E"}
!516 = !{!517}
!517 = distinct !{!517, !515, !"_ZN4core3ops8function5FnMut8call_mut17hb2c3cc4e9207ff38E: argument 1"}
!518 = !{!519}
!519 = distinct !{!519, !520, !"cmpfunc: %a"}
!520 = distinct !{!520, !"cmpfunc"}
!521 = !{!522}
!522 = distinct !{!522, !520, !"cmpfunc: %b"}
!523 = !{!524}
!524 = distinct !{!524, !525, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!525 = distinct !{!525, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!526 = !{!527}
!527 = distinct !{!527, !525, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!528 = !{!524, !519, !514, !509}
!529 = !{!527, !522, !517, !512}
!530 = !{!531}
!531 = distinct !{!531, !532, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5ba3fdab0b109aaeE: %a"}
!532 = distinct !{!532, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5ba3fdab0b109aaeE"}
!533 = !{!534}
!534 = distinct !{!534, !532, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5ba3fdab0b109aaeE: %b"}
!535 = !{!536}
!536 = distinct !{!536, !537, !"_ZN4core3ops8function5FnMut8call_mut17hb2c3cc4e9207ff38E: argument 0"}
!537 = distinct !{!537, !"_ZN4core3ops8function5FnMut8call_mut17hb2c3cc4e9207ff38E"}
!538 = !{!539}
!539 = distinct !{!539, !537, !"_ZN4core3ops8function5FnMut8call_mut17hb2c3cc4e9207ff38E: argument 1"}
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
!550 = !{!546, !541, !536, !531}
!551 = !{!549, !544, !539, !534}
!552 = !{!553}
!553 = distinct !{!553, !554, !"_ZN4core5slice4sort6shared9smallsort19bidirectional_merge17ha5355d97ee5c682eE: %v.0"}
!554 = distinct !{!554, !"_ZN4core5slice4sort6shared9smallsort19bidirectional_merge17ha5355d97ee5c682eE"}
!555 = !{!556}
!556 = distinct !{!556, !557, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf5b8f37855ac0c3dE: %a"}
!557 = distinct !{!557, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf5b8f37855ac0c3dE"}
!558 = !{!559}
!559 = distinct !{!559, !557, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf5b8f37855ac0c3dE: %b"}
!560 = !{!561}
!561 = distinct !{!561, !562, !"_ZN71MAKING_ELEMENTS_OF_TWO_ARRAYS_SAME_WITH_MINIMUM_INCREMENTDECREMENT_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hf0788034254845f0E: %a"}
!562 = distinct !{!562, !"_ZN71MAKING_ELEMENTS_OF_TWO_ARRAYS_SAME_WITH_MINIMUM_INCREMENTDECREMENT_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hf0788034254845f0E"}
!563 = !{!564}
!564 = distinct !{!564, !565, !"_ZN4core5slice4sort6shared9smallsort8merge_up17h40ab9d58e6caa1aeE: %_0"}
!565 = distinct !{!565, !"_ZN4core5slice4sort6shared9smallsort8merge_up17h40ab9d58e6caa1aeE"}
!566 = !{!567}
!567 = distinct !{!567, !562, !"_ZN71MAKING_ELEMENTS_OF_TWO_ARRAYS_SAME_WITH_MINIMUM_INCREMENTDECREMENT_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hf0788034254845f0E: %b"}
!568 = !{!569}
!569 = distinct !{!569, !570, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$f32$GT$11partial_cmp17h51acfdb7fcc2b22aE: %self"}
!570 = distinct !{!570, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$f32$GT$11partial_cmp17h51acfdb7fcc2b22aE"}
!571 = !{!572}
!572 = distinct !{!572, !570, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$f32$GT$11partial_cmp17h51acfdb7fcc2b22aE: %other"}
!573 = !{!569, !561, !556, !553}
!574 = !{!572, !567, !559, !564}
!575 = !{!572, !567, !559, !553}
!576 = !{!569, !561, !556, !564}
!577 = !{!561, !567, !556, !559, !564, !553}
!578 = !{!564, !579}
!579 = distinct !{!579, !565, !"_ZN4core5slice4sort6shared9smallsort8merge_up17h40ab9d58e6caa1aeE: %is_less"}
!580 = !{!564, !579, !553}
!581 = !{!582}
!582 = distinct !{!582, !583, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf5b8f37855ac0c3dE: %a"}
!583 = distinct !{!583, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf5b8f37855ac0c3dE"}
!584 = !{!585}
!585 = distinct !{!585, !583, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf5b8f37855ac0c3dE: %b"}
!586 = !{!587}
!587 = distinct !{!587, !588, !"_ZN71MAKING_ELEMENTS_OF_TWO_ARRAYS_SAME_WITH_MINIMUM_INCREMENTDECREMENT_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hf0788034254845f0E: %a"}
!588 = distinct !{!588, !"_ZN71MAKING_ELEMENTS_OF_TWO_ARRAYS_SAME_WITH_MINIMUM_INCREMENTDECREMENT_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hf0788034254845f0E"}
!589 = !{!590}
!590 = distinct !{!590, !591, !"_ZN4core5slice4sort6shared9smallsort10merge_down17h04b86c1be3dd6e1cE: %_0"}
!591 = distinct !{!591, !"_ZN4core5slice4sort6shared9smallsort10merge_down17h04b86c1be3dd6e1cE"}
!592 = !{!593}
!593 = distinct !{!593, !588, !"_ZN71MAKING_ELEMENTS_OF_TWO_ARRAYS_SAME_WITH_MINIMUM_INCREMENTDECREMENT_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hf0788034254845f0E: %b"}
!594 = !{!595}
!595 = distinct !{!595, !596, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$f32$GT$11partial_cmp17h51acfdb7fcc2b22aE: %self"}
!596 = distinct !{!596, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$f32$GT$11partial_cmp17h51acfdb7fcc2b22aE"}
!597 = !{!598}
!598 = distinct !{!598, !596, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$f32$GT$11partial_cmp17h51acfdb7fcc2b22aE: %other"}
!599 = !{!595, !587, !582, !553}
!600 = !{!598, !593, !585, !590}
!601 = !{!598, !593, !585, !553}
!602 = !{!595, !587, !582, !590}
!603 = !{!587, !593, !582, !585, !590, !553}
!604 = !{!590, !605}
!605 = distinct !{!605, !591, !"_ZN4core5slice4sort6shared9smallsort10merge_down17h04b86c1be3dd6e1cE: %is_less"}
!606 = !{!590, !605, !553}
!607 = !{!608}
!608 = distinct !{!608, !557, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf5b8f37855ac0c3dE: %a:It1"}
!609 = !{!610}
!610 = distinct !{!610, !557, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf5b8f37855ac0c3dE: %b:It1"}
!611 = !{!612}
!612 = distinct !{!612, !562, !"_ZN71MAKING_ELEMENTS_OF_TWO_ARRAYS_SAME_WITH_MINIMUM_INCREMENTDECREMENT_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hf0788034254845f0E: %a:It1"}
!613 = !{!614}
!614 = distinct !{!614, !562, !"_ZN71MAKING_ELEMENTS_OF_TWO_ARRAYS_SAME_WITH_MINIMUM_INCREMENTDECREMENT_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hf0788034254845f0E: %b:It1"}
!615 = !{!616}
!616 = distinct !{!616, !570, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$f32$GT$11partial_cmp17h51acfdb7fcc2b22aE: %self:It1"}
!617 = !{!618}
!618 = distinct !{!618, !570, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$f32$GT$11partial_cmp17h51acfdb7fcc2b22aE: %other:It1"}
!619 = !{!616, !612, !608, !553}
!620 = !{!618, !614, !610, !564}
!621 = !{!618, !614, !610, !553}
!622 = !{!616, !612, !608, !564}
!623 = !{!624}
!624 = distinct !{!624, !583, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf5b8f37855ac0c3dE: %a:It1"}
!625 = !{!626}
!626 = distinct !{!626, !583, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf5b8f37855ac0c3dE: %b:It1"}
!627 = !{!628}
!628 = distinct !{!628, !588, !"_ZN71MAKING_ELEMENTS_OF_TWO_ARRAYS_SAME_WITH_MINIMUM_INCREMENTDECREMENT_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hf0788034254845f0E: %a:It1"}
!629 = !{!630}
!630 = distinct !{!630, !588, !"_ZN71MAKING_ELEMENTS_OF_TWO_ARRAYS_SAME_WITH_MINIMUM_INCREMENTDECREMENT_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hf0788034254845f0E: %b:It1"}
!631 = !{!632}
!632 = distinct !{!632, !596, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$f32$GT$11partial_cmp17h51acfdb7fcc2b22aE: %self:It1"}
!633 = !{!634}
!634 = distinct !{!634, !596, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$f32$GT$11partial_cmp17h51acfdb7fcc2b22aE: %other:It1"}
!635 = !{!632, !628, !624, !553}
!636 = !{!634, !630, !626, !590}
!637 = !{!634, !630, !626, !553}
!638 = !{!632, !628, !624, !590}
!639 = !{!640}
!640 = distinct !{!640, !557, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf5b8f37855ac0c3dE: %a:It2"}
!641 = !{!642}
!642 = distinct !{!642, !557, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf5b8f37855ac0c3dE: %b:It2"}
!643 = !{!644}
!644 = distinct !{!644, !562, !"_ZN71MAKING_ELEMENTS_OF_TWO_ARRAYS_SAME_WITH_MINIMUM_INCREMENTDECREMENT_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hf0788034254845f0E: %a:It2"}
!645 = !{!646}
!646 = distinct !{!646, !562, !"_ZN71MAKING_ELEMENTS_OF_TWO_ARRAYS_SAME_WITH_MINIMUM_INCREMENTDECREMENT_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hf0788034254845f0E: %b:It2"}
!647 = !{!648}
!648 = distinct !{!648, !570, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$f32$GT$11partial_cmp17h51acfdb7fcc2b22aE: %self:It2"}
!649 = !{!650}
!650 = distinct !{!650, !570, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$f32$GT$11partial_cmp17h51acfdb7fcc2b22aE: %other:It2"}
!651 = !{!648, !644, !640, !553}
!652 = !{!650, !646, !642, !564}
!653 = !{!650, !646, !642, !553}
!654 = !{!648, !644, !640, !564}
!655 = !{!656}
!656 = distinct !{!656, !583, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf5b8f37855ac0c3dE: %a:It2"}
!657 = !{!658}
!658 = distinct !{!658, !583, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf5b8f37855ac0c3dE: %b:It2"}
!659 = !{!660}
!660 = distinct !{!660, !588, !"_ZN71MAKING_ELEMENTS_OF_TWO_ARRAYS_SAME_WITH_MINIMUM_INCREMENTDECREMENT_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hf0788034254845f0E: %a:It2"}
!661 = !{!662}
!662 = distinct !{!662, !588, !"_ZN71MAKING_ELEMENTS_OF_TWO_ARRAYS_SAME_WITH_MINIMUM_INCREMENTDECREMENT_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hf0788034254845f0E: %b:It2"}
!663 = !{!664}
!664 = distinct !{!664, !596, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$f32$GT$11partial_cmp17h51acfdb7fcc2b22aE: %self:It2"}
!665 = !{!666}
!666 = distinct !{!666, !596, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$f32$GT$11partial_cmp17h51acfdb7fcc2b22aE: %other:It2"}
!667 = !{!664, !660, !656, !553}
!668 = !{!666, !662, !658, !590}
!669 = !{!666, !662, !658, !553}
!670 = !{!664, !660, !656, !590}
!671 = !{!672}
!672 = distinct !{!672, !557, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf5b8f37855ac0c3dE: %a:It3"}
!673 = !{!674}
!674 = distinct !{!674, !557, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf5b8f37855ac0c3dE: %b:It3"}
!675 = !{!676}
!676 = distinct !{!676, !562, !"_ZN71MAKING_ELEMENTS_OF_TWO_ARRAYS_SAME_WITH_MINIMUM_INCREMENTDECREMENT_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hf0788034254845f0E: %a:It3"}
!677 = !{!678}
!678 = distinct !{!678, !562, !"_ZN71MAKING_ELEMENTS_OF_TWO_ARRAYS_SAME_WITH_MINIMUM_INCREMENTDECREMENT_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hf0788034254845f0E: %b:It3"}
!679 = !{!680}
!680 = distinct !{!680, !570, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$f32$GT$11partial_cmp17h51acfdb7fcc2b22aE: %self:It3"}
!681 = !{!682}
!682 = distinct !{!682, !570, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$f32$GT$11partial_cmp17h51acfdb7fcc2b22aE: %other:It3"}
!683 = !{!680, !676, !672, !553}
!684 = !{!682, !678, !674, !564}
!685 = !{!682, !678, !674, !553}
!686 = !{!680, !676, !672, !564}
!687 = !{!688}
!688 = distinct !{!688, !583, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf5b8f37855ac0c3dE: %a:It3"}
!689 = !{!690}
!690 = distinct !{!690, !583, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf5b8f37855ac0c3dE: %b:It3"}
!691 = !{!692}
!692 = distinct !{!692, !588, !"_ZN71MAKING_ELEMENTS_OF_TWO_ARRAYS_SAME_WITH_MINIMUM_INCREMENTDECREMENT_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hf0788034254845f0E: %a:It3"}
!693 = !{!694}
!694 = distinct !{!694, !588, !"_ZN71MAKING_ELEMENTS_OF_TWO_ARRAYS_SAME_WITH_MINIMUM_INCREMENTDECREMENT_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hf0788034254845f0E: %b:It3"}
!695 = !{!696}
!696 = distinct !{!696, !596, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$f32$GT$11partial_cmp17h51acfdb7fcc2b22aE: %self:It3"}
!697 = !{!698}
!698 = distinct !{!698, !596, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$f32$GT$11partial_cmp17h51acfdb7fcc2b22aE: %other:It3"}
!699 = !{!696, !692, !688, !553}
!700 = !{!698, !694, !690, !590}
!701 = !{!698, !694, !690, !553}
!702 = !{!696, !692, !688, !590}
!703 = !{!"branch_weights", i32 4001, i32 4000000}
!704 = !{!705}
!705 = distinct !{!705, !706, !"_ZN4core5slice4sort6shared9smallsort19bidirectional_merge17h8fd5afa469382f2aE: %v.0"}
!706 = distinct !{!706, !"_ZN4core5slice4sort6shared9smallsort19bidirectional_merge17h8fd5afa469382f2aE"}
!707 = !{!708}
!708 = distinct !{!708, !709, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfaa75802b1959b0aE: %a"}
!709 = distinct !{!709, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfaa75802b1959b0aE"}
!710 = !{!711}
!711 = distinct !{!711, !709, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfaa75802b1959b0aE: %b"}
!712 = !{!713}
!713 = distinct !{!713, !714, !"_ZN71MAKING_ELEMENTS_OF_TWO_ARRAYS_SAME_WITH_MINIMUM_INCREMENTDECREMENT_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hbb49eefd79996977E: %a"}
!714 = distinct !{!714, !"_ZN71MAKING_ELEMENTS_OF_TWO_ARRAYS_SAME_WITH_MINIMUM_INCREMENTDECREMENT_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hbb49eefd79996977E"}
!715 = !{!716}
!716 = distinct !{!716, !717, !"_ZN4core5slice4sort6shared9smallsort8merge_up17ha5340aea9223a24cE: %_0"}
!717 = distinct !{!717, !"_ZN4core5slice4sort6shared9smallsort8merge_up17ha5340aea9223a24cE"}
!718 = !{!719}
!719 = distinct !{!719, !714, !"_ZN71MAKING_ELEMENTS_OF_TWO_ARRAYS_SAME_WITH_MINIMUM_INCREMENTDECREMENT_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hbb49eefd79996977E: %b"}
!720 = !{!721}
!721 = distinct !{!721, !722, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$f32$GT$11partial_cmp17h51acfdb7fcc2b22aE: %self"}
!722 = distinct !{!722, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$f32$GT$11partial_cmp17h51acfdb7fcc2b22aE"}
!723 = !{!724}
!724 = distinct !{!724, !722, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$f32$GT$11partial_cmp17h51acfdb7fcc2b22aE: %other"}
!725 = !{!721, !713, !708, !705}
!726 = !{!724, !719, !711, !716}
!727 = !{!724, !719, !711, !705}
!728 = !{!721, !713, !708, !716}
!729 = !{!713, !719, !708, !711, !716, !705}
!730 = !{!716, !731}
!731 = distinct !{!731, !717, !"_ZN4core5slice4sort6shared9smallsort8merge_up17ha5340aea9223a24cE: %is_less"}
!732 = !{!716, !731, !705}
!733 = !{!734}
!734 = distinct !{!734, !735, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfaa75802b1959b0aE: %a"}
!735 = distinct !{!735, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfaa75802b1959b0aE"}
!736 = !{!737}
!737 = distinct !{!737, !735, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfaa75802b1959b0aE: %b"}
!738 = !{!739}
!739 = distinct !{!739, !740, !"_ZN71MAKING_ELEMENTS_OF_TWO_ARRAYS_SAME_WITH_MINIMUM_INCREMENTDECREMENT_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hbb49eefd79996977E: %a"}
!740 = distinct !{!740, !"_ZN71MAKING_ELEMENTS_OF_TWO_ARRAYS_SAME_WITH_MINIMUM_INCREMENTDECREMENT_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hbb49eefd79996977E"}
!741 = !{!742}
!742 = distinct !{!742, !743, !"_ZN4core5slice4sort6shared9smallsort10merge_down17h568dd42a24d04b6bE: %_0"}
!743 = distinct !{!743, !"_ZN4core5slice4sort6shared9smallsort10merge_down17h568dd42a24d04b6bE"}
!744 = !{!745}
!745 = distinct !{!745, !740, !"_ZN71MAKING_ELEMENTS_OF_TWO_ARRAYS_SAME_WITH_MINIMUM_INCREMENTDECREMENT_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hbb49eefd79996977E: %b"}
!746 = !{!747}
!747 = distinct !{!747, !748, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$f32$GT$11partial_cmp17h51acfdb7fcc2b22aE: %self"}
!748 = distinct !{!748, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$f32$GT$11partial_cmp17h51acfdb7fcc2b22aE"}
!749 = !{!750}
!750 = distinct !{!750, !748, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$f32$GT$11partial_cmp17h51acfdb7fcc2b22aE: %other"}
!751 = !{!747, !739, !734, !705}
!752 = !{!750, !745, !737, !742}
!753 = !{!750, !745, !737, !705}
!754 = !{!747, !739, !734, !742}
!755 = !{!739, !745, !734, !737, !742, !705}
!756 = !{!742, !757}
!757 = distinct !{!757, !743, !"_ZN4core5slice4sort6shared9smallsort10merge_down17h568dd42a24d04b6bE: %is_less"}
!758 = !{!742, !757, !705}
!759 = !{!760}
!760 = distinct !{!760, !709, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfaa75802b1959b0aE: %a:It1"}
!761 = !{!762}
!762 = distinct !{!762, !709, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfaa75802b1959b0aE: %b:It1"}
!763 = !{!764}
!764 = distinct !{!764, !714, !"_ZN71MAKING_ELEMENTS_OF_TWO_ARRAYS_SAME_WITH_MINIMUM_INCREMENTDECREMENT_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hbb49eefd79996977E: %a:It1"}
!765 = !{!766}
!766 = distinct !{!766, !714, !"_ZN71MAKING_ELEMENTS_OF_TWO_ARRAYS_SAME_WITH_MINIMUM_INCREMENTDECREMENT_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hbb49eefd79996977E: %b:It1"}
!767 = !{!768}
!768 = distinct !{!768, !722, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$f32$GT$11partial_cmp17h51acfdb7fcc2b22aE: %self:It1"}
!769 = !{!770}
!770 = distinct !{!770, !722, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$f32$GT$11partial_cmp17h51acfdb7fcc2b22aE: %other:It1"}
!771 = !{!768, !764, !760, !705}
!772 = !{!770, !766, !762, !716}
!773 = !{!770, !766, !762, !705}
!774 = !{!768, !764, !760, !716}
!775 = !{!776}
!776 = distinct !{!776, !735, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfaa75802b1959b0aE: %a:It1"}
!777 = !{!778}
!778 = distinct !{!778, !735, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfaa75802b1959b0aE: %b:It1"}
!779 = !{!780}
!780 = distinct !{!780, !740, !"_ZN71MAKING_ELEMENTS_OF_TWO_ARRAYS_SAME_WITH_MINIMUM_INCREMENTDECREMENT_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hbb49eefd79996977E: %a:It1"}
!781 = !{!782}
!782 = distinct !{!782, !740, !"_ZN71MAKING_ELEMENTS_OF_TWO_ARRAYS_SAME_WITH_MINIMUM_INCREMENTDECREMENT_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hbb49eefd79996977E: %b:It1"}
!783 = !{!784}
!784 = distinct !{!784, !748, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$f32$GT$11partial_cmp17h51acfdb7fcc2b22aE: %self:It1"}
!785 = !{!786}
!786 = distinct !{!786, !748, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$f32$GT$11partial_cmp17h51acfdb7fcc2b22aE: %other:It1"}
!787 = !{!784, !780, !776, !705}
!788 = !{!786, !782, !778, !742}
!789 = !{!786, !782, !778, !705}
!790 = !{!784, !780, !776, !742}
!791 = !{!792}
!792 = distinct !{!792, !709, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfaa75802b1959b0aE: %a:It2"}
!793 = !{!794}
!794 = distinct !{!794, !709, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfaa75802b1959b0aE: %b:It2"}
!795 = !{!796}
!796 = distinct !{!796, !714, !"_ZN71MAKING_ELEMENTS_OF_TWO_ARRAYS_SAME_WITH_MINIMUM_INCREMENTDECREMENT_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hbb49eefd79996977E: %a:It2"}
!797 = !{!798}
!798 = distinct !{!798, !714, !"_ZN71MAKING_ELEMENTS_OF_TWO_ARRAYS_SAME_WITH_MINIMUM_INCREMENTDECREMENT_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hbb49eefd79996977E: %b:It2"}
!799 = !{!800}
!800 = distinct !{!800, !722, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$f32$GT$11partial_cmp17h51acfdb7fcc2b22aE: %self:It2"}
!801 = !{!802}
!802 = distinct !{!802, !722, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$f32$GT$11partial_cmp17h51acfdb7fcc2b22aE: %other:It2"}
!803 = !{!800, !796, !792, !705}
!804 = !{!802, !798, !794, !716}
!805 = !{!802, !798, !794, !705}
!806 = !{!800, !796, !792, !716}
!807 = !{!808}
!808 = distinct !{!808, !735, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfaa75802b1959b0aE: %a:It2"}
!809 = !{!810}
!810 = distinct !{!810, !735, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfaa75802b1959b0aE: %b:It2"}
!811 = !{!812}
!812 = distinct !{!812, !740, !"_ZN71MAKING_ELEMENTS_OF_TWO_ARRAYS_SAME_WITH_MINIMUM_INCREMENTDECREMENT_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hbb49eefd79996977E: %a:It2"}
!813 = !{!814}
!814 = distinct !{!814, !740, !"_ZN71MAKING_ELEMENTS_OF_TWO_ARRAYS_SAME_WITH_MINIMUM_INCREMENTDECREMENT_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hbb49eefd79996977E: %b:It2"}
!815 = !{!816}
!816 = distinct !{!816, !748, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$f32$GT$11partial_cmp17h51acfdb7fcc2b22aE: %self:It2"}
!817 = !{!818}
!818 = distinct !{!818, !748, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$f32$GT$11partial_cmp17h51acfdb7fcc2b22aE: %other:It2"}
!819 = !{!816, !812, !808, !705}
!820 = !{!818, !814, !810, !742}
!821 = !{!818, !814, !810, !705}
!822 = !{!816, !812, !808, !742}
!823 = !{!824}
!824 = distinct !{!824, !709, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfaa75802b1959b0aE: %a:It3"}
!825 = !{!826}
!826 = distinct !{!826, !709, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfaa75802b1959b0aE: %b:It3"}
!827 = !{!828}
!828 = distinct !{!828, !714, !"_ZN71MAKING_ELEMENTS_OF_TWO_ARRAYS_SAME_WITH_MINIMUM_INCREMENTDECREMENT_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hbb49eefd79996977E: %a:It3"}
!829 = !{!830}
!830 = distinct !{!830, !714, !"_ZN71MAKING_ELEMENTS_OF_TWO_ARRAYS_SAME_WITH_MINIMUM_INCREMENTDECREMENT_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hbb49eefd79996977E: %b:It3"}
!831 = !{!832}
!832 = distinct !{!832, !722, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$f32$GT$11partial_cmp17h51acfdb7fcc2b22aE: %self:It3"}
!833 = !{!834}
!834 = distinct !{!834, !722, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$f32$GT$11partial_cmp17h51acfdb7fcc2b22aE: %other:It3"}
!835 = !{!832, !828, !824, !705}
!836 = !{!834, !830, !826, !716}
!837 = !{!834, !830, !826, !705}
!838 = !{!832, !828, !824, !716}
!839 = !{!840}
!840 = distinct !{!840, !735, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfaa75802b1959b0aE: %a:It3"}
!841 = !{!842}
!842 = distinct !{!842, !735, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfaa75802b1959b0aE: %b:It3"}
!843 = !{!844}
!844 = distinct !{!844, !740, !"_ZN71MAKING_ELEMENTS_OF_TWO_ARRAYS_SAME_WITH_MINIMUM_INCREMENTDECREMENT_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hbb49eefd79996977E: %a:It3"}
!845 = !{!846}
!846 = distinct !{!846, !740, !"_ZN71MAKING_ELEMENTS_OF_TWO_ARRAYS_SAME_WITH_MINIMUM_INCREMENTDECREMENT_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hbb49eefd79996977E: %b:It3"}
!847 = !{!848}
!848 = distinct !{!848, !748, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$f32$GT$11partial_cmp17h51acfdb7fcc2b22aE: %self:It3"}
!849 = !{!850}
!850 = distinct !{!850, !748, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$f32$GT$11partial_cmp17h51acfdb7fcc2b22aE: %other:It3"}
!851 = !{!848, !844, !840, !705}
!852 = !{!850, !846, !842, !742}
!853 = !{!850, !846, !842, !705}
!854 = !{!848, !844, !840, !742}
!855 = !{!856}
!856 = distinct !{!856, !857, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5ba3fdab0b109aaeE: %a"}
!857 = distinct !{!857, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5ba3fdab0b109aaeE"}
!858 = !{!859}
!859 = distinct !{!859, !857, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5ba3fdab0b109aaeE: %b"}
!860 = !{!861}
!861 = distinct !{!861, !862, !"_ZN4core3ops8function5FnMut8call_mut17hb2c3cc4e9207ff38E: argument 0"}
!862 = distinct !{!862, !"_ZN4core3ops8function5FnMut8call_mut17hb2c3cc4e9207ff38E"}
!863 = !{!864}
!864 = distinct !{!864, !862, !"_ZN4core3ops8function5FnMut8call_mut17hb2c3cc4e9207ff38E: argument 1"}
!865 = !{!866}
!866 = distinct !{!866, !867, !"cmpfunc: %a"}
!867 = distinct !{!867, !"cmpfunc"}
!868 = !{!869}
!869 = distinct !{!869, !867, !"cmpfunc: %b"}
!870 = !{!871}
!871 = distinct !{!871, !872, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!872 = distinct !{!872, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!873 = !{!874}
!874 = distinct !{!874, !872, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!875 = !{!871, !866, !861, !856}
!876 = !{!874, !869, !864, !859}
!877 = !{!878}
!878 = distinct !{!878, !879, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5ba3fdab0b109aaeE: %a"}
!879 = distinct !{!879, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5ba3fdab0b109aaeE"}
!880 = !{!881}
!881 = distinct !{!881, !879, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5ba3fdab0b109aaeE: %b"}
!882 = !{!883}
!883 = distinct !{!883, !884, !"_ZN4core3ops8function5FnMut8call_mut17hb2c3cc4e9207ff38E: argument 0"}
!884 = distinct !{!884, !"_ZN4core3ops8function5FnMut8call_mut17hb2c3cc4e9207ff38E"}
!885 = !{!886}
!886 = distinct !{!886, !884, !"_ZN4core3ops8function5FnMut8call_mut17hb2c3cc4e9207ff38E: argument 1"}
!887 = !{!888}
!888 = distinct !{!888, !889, !"cmpfunc: %a"}
!889 = distinct !{!889, !"cmpfunc"}
!890 = !{!891}
!891 = distinct !{!891, !889, !"cmpfunc: %b"}
!892 = !{!893}
!893 = distinct !{!893, !894, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!894 = distinct !{!894, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!895 = !{!896}
!896 = distinct !{!896, !894, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!897 = !{!893, !888, !883, !878}
!898 = !{!896, !891, !886, !881}
!899 = !{!900}
!900 = distinct !{!900, !901, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5ba3fdab0b109aaeE: %a"}
!901 = distinct !{!901, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5ba3fdab0b109aaeE"}
!902 = !{!903}
!903 = distinct !{!903, !901, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5ba3fdab0b109aaeE: %b"}
!904 = !{!905}
!905 = distinct !{!905, !906, !"_ZN4core3ops8function5FnMut8call_mut17hb2c3cc4e9207ff38E: argument 0"}
!906 = distinct !{!906, !"_ZN4core3ops8function5FnMut8call_mut17hb2c3cc4e9207ff38E"}
!907 = !{!908}
!908 = distinct !{!908, !906, !"_ZN4core3ops8function5FnMut8call_mut17hb2c3cc4e9207ff38E: argument 1"}
!909 = !{!910}
!910 = distinct !{!910, !911, !"cmpfunc: %a"}
!911 = distinct !{!911, !"cmpfunc"}
!912 = !{!913}
!913 = distinct !{!913, !911, !"cmpfunc: %b"}
!914 = !{!915}
!915 = distinct !{!915, !916, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!916 = distinct !{!916, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!917 = !{!918}
!918 = distinct !{!918, !916, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!919 = !{!915, !910, !905, !900}
!920 = !{!918, !913, !908, !903}
!921 = !{!922}
!922 = distinct !{!922, !923, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5ba3fdab0b109aaeE: %a"}
!923 = distinct !{!923, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5ba3fdab0b109aaeE"}
!924 = !{!925}
!925 = distinct !{!925, !923, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5ba3fdab0b109aaeE: %b"}
!926 = !{!927}
!927 = distinct !{!927, !928, !"_ZN4core3ops8function5FnMut8call_mut17hb2c3cc4e9207ff38E: argument 0"}
!928 = distinct !{!928, !"_ZN4core3ops8function5FnMut8call_mut17hb2c3cc4e9207ff38E"}
!929 = !{!930}
!930 = distinct !{!930, !928, !"_ZN4core3ops8function5FnMut8call_mut17hb2c3cc4e9207ff38E: argument 1"}
!931 = !{!932}
!932 = distinct !{!932, !933, !"cmpfunc: %a"}
!933 = distinct !{!933, !"cmpfunc"}
!934 = !{!935}
!935 = distinct !{!935, !933, !"cmpfunc: %b"}
!936 = !{!937}
!937 = distinct !{!937, !938, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!938 = distinct !{!938, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!939 = !{!940}
!940 = distinct !{!940, !938, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!941 = !{!937, !932, !927, !922}
!942 = !{!940, !935, !930, !925}
!943 = !{!944}
!944 = distinct !{!944, !945, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5ba3fdab0b109aaeE: %a"}
!945 = distinct !{!945, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5ba3fdab0b109aaeE"}
!946 = !{!947}
!947 = distinct !{!947, !945, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5ba3fdab0b109aaeE: %b"}
!948 = !{!949}
!949 = distinct !{!949, !950, !"_ZN4core3ops8function5FnMut8call_mut17hb2c3cc4e9207ff38E: argument 0"}
!950 = distinct !{!950, !"_ZN4core3ops8function5FnMut8call_mut17hb2c3cc4e9207ff38E"}
!951 = !{!952}
!952 = distinct !{!952, !950, !"_ZN4core3ops8function5FnMut8call_mut17hb2c3cc4e9207ff38E: argument 1"}
!953 = !{!954}
!954 = distinct !{!954, !955, !"cmpfunc: %a"}
!955 = distinct !{!955, !"cmpfunc"}
!956 = !{!957}
!957 = distinct !{!957, !955, !"cmpfunc: %b"}
!958 = !{!959}
!959 = distinct !{!959, !960, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!960 = distinct !{!960, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!961 = !{!962}
!962 = distinct !{!962, !960, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!963 = !{!959, !954, !949, !944}
!964 = !{!962, !957, !952, !947}
!965 = !{!966}
!966 = distinct !{!966, !967, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5ba3fdab0b109aaeE: %a"}
!967 = distinct !{!967, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5ba3fdab0b109aaeE"}
!968 = !{!969}
!969 = distinct !{!969, !967, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5ba3fdab0b109aaeE: %b"}
!970 = !{!971}
!971 = distinct !{!971, !972, !"_ZN4core3ops8function5FnMut8call_mut17hb2c3cc4e9207ff38E: argument 0"}
!972 = distinct !{!972, !"_ZN4core3ops8function5FnMut8call_mut17hb2c3cc4e9207ff38E"}
!973 = !{!974}
!974 = distinct !{!974, !972, !"_ZN4core3ops8function5FnMut8call_mut17hb2c3cc4e9207ff38E: argument 1"}
!975 = !{!976}
!976 = distinct !{!976, !977, !"cmpfunc: %a"}
!977 = distinct !{!977, !"cmpfunc"}
!978 = !{!979}
!979 = distinct !{!979, !977, !"cmpfunc: %b"}
!980 = !{!981}
!981 = distinct !{!981, !982, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!982 = distinct !{!982, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!983 = !{!984}
!984 = distinct !{!984, !982, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!985 = !{!981, !976, !971, !966}
!986 = !{!984, !979, !974, !969}
!987 = !{!988}
!988 = distinct !{!988, !989, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5ba3fdab0b109aaeE: %a"}
!989 = distinct !{!989, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5ba3fdab0b109aaeE"}
!990 = !{!991}
!991 = distinct !{!991, !989, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5ba3fdab0b109aaeE: %b"}
!992 = !{!993}
!993 = distinct !{!993, !994, !"_ZN4core3ops8function5FnMut8call_mut17hb2c3cc4e9207ff38E: argument 0"}
!994 = distinct !{!994, !"_ZN4core3ops8function5FnMut8call_mut17hb2c3cc4e9207ff38E"}
!995 = !{!996}
!996 = distinct !{!996, !994, !"_ZN4core3ops8function5FnMut8call_mut17hb2c3cc4e9207ff38E: argument 1"}
!997 = !{!998}
!998 = distinct !{!998, !999, !"cmpfunc: %a"}
!999 = distinct !{!999, !"cmpfunc"}
!1000 = !{!1001}
!1001 = distinct !{!1001, !999, !"cmpfunc: %b"}
!1002 = !{!1003}
!1003 = distinct !{!1003, !1004, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!1004 = distinct !{!1004, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!1005 = !{!1006}
!1006 = distinct !{!1006, !1004, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!1007 = !{!1003, !998, !993, !988}
!1008 = !{!1006, !1001, !996, !991}
!1009 = !{!1010}
!1010 = distinct !{!1010, !1011, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5ba3fdab0b109aaeE: %a"}
!1011 = distinct !{!1011, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5ba3fdab0b109aaeE"}
!1012 = !{!1013}
!1013 = distinct !{!1013, !1011, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5ba3fdab0b109aaeE: %b"}
!1014 = !{!1015}
!1015 = distinct !{!1015, !1016, !"_ZN4core3ops8function5FnMut8call_mut17hb2c3cc4e9207ff38E: argument 0"}
!1016 = distinct !{!1016, !"_ZN4core3ops8function5FnMut8call_mut17hb2c3cc4e9207ff38E"}
!1017 = !{!1018}
!1018 = distinct !{!1018, !1016, !"_ZN4core3ops8function5FnMut8call_mut17hb2c3cc4e9207ff38E: argument 1"}
!1019 = !{!1020}
!1020 = distinct !{!1020, !1021, !"cmpfunc: %a"}
!1021 = distinct !{!1021, !"cmpfunc"}
!1022 = !{!1023}
!1023 = distinct !{!1023, !1021, !"cmpfunc: %b"}
!1024 = !{!1025}
!1025 = distinct !{!1025, !1026, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!1026 = distinct !{!1026, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!1027 = !{!1028}
!1028 = distinct !{!1028, !1026, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!1029 = !{!1025, !1020, !1015, !1010}
!1030 = !{!1028, !1023, !1018, !1013}
!1031 = !{!1032}
!1032 = distinct !{!1032, !1033, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5ba3fdab0b109aaeE: %a"}
!1033 = distinct !{!1033, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5ba3fdab0b109aaeE"}
!1034 = !{!1035}
!1035 = distinct !{!1035, !1033, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5ba3fdab0b109aaeE: %b"}
!1036 = !{!1037}
!1037 = distinct !{!1037, !1038, !"_ZN4core3ops8function5FnMut8call_mut17hb2c3cc4e9207ff38E: argument 0"}
!1038 = distinct !{!1038, !"_ZN4core3ops8function5FnMut8call_mut17hb2c3cc4e9207ff38E"}
!1039 = !{!1040}
!1040 = distinct !{!1040, !1038, !"_ZN4core3ops8function5FnMut8call_mut17hb2c3cc4e9207ff38E: argument 1"}
!1041 = !{!1042}
!1042 = distinct !{!1042, !1043, !"cmpfunc: %a"}
!1043 = distinct !{!1043, !"cmpfunc"}
!1044 = !{!1045}
!1045 = distinct !{!1045, !1043, !"cmpfunc: %b"}
!1046 = !{!1047}
!1047 = distinct !{!1047, !1048, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!1048 = distinct !{!1048, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!1049 = !{!1050}
!1050 = distinct !{!1050, !1048, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!1051 = !{!1047, !1042, !1037, !1032}
!1052 = !{!1050, !1045, !1040, !1035}
!1053 = !{!1054}
!1054 = distinct !{!1054, !1055, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5ba3fdab0b109aaeE: %a"}
!1055 = distinct !{!1055, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5ba3fdab0b109aaeE"}
!1056 = !{!1057}
!1057 = distinct !{!1057, !1055, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5ba3fdab0b109aaeE: %b"}
!1058 = !{!1059}
!1059 = distinct !{!1059, !1060, !"_ZN4core3ops8function5FnMut8call_mut17hb2c3cc4e9207ff38E: argument 0"}
!1060 = distinct !{!1060, !"_ZN4core3ops8function5FnMut8call_mut17hb2c3cc4e9207ff38E"}
!1061 = !{!1062}
!1062 = distinct !{!1062, !1060, !"_ZN4core3ops8function5FnMut8call_mut17hb2c3cc4e9207ff38E: argument 1"}
!1063 = !{!1064}
!1064 = distinct !{!1064, !1065, !"cmpfunc: %a"}
!1065 = distinct !{!1065, !"cmpfunc"}
!1066 = !{!1067}
!1067 = distinct !{!1067, !1065, !"cmpfunc: %b"}
!1068 = !{!1069}
!1069 = distinct !{!1069, !1070, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!1070 = distinct !{!1070, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!1071 = !{!1072}
!1072 = distinct !{!1072, !1070, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!1073 = !{!1069, !1064, !1059, !1054}
!1074 = !{!1072, !1067, !1062, !1057}
!1075 = !{!1076}
!1076 = distinct !{!1076, !1077, !"_ZN4core5slice4sort6shared9smallsort19bidirectional_merge17h88e3c5d50b4d1a5aE: %v.0"}
!1077 = distinct !{!1077, !"_ZN4core5slice4sort6shared9smallsort19bidirectional_merge17h88e3c5d50b4d1a5aE"}
!1078 = !{!1079}
!1079 = distinct !{!1079, !1080, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5ba3fdab0b109aaeE: %a"}
!1080 = distinct !{!1080, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5ba3fdab0b109aaeE"}
!1081 = !{!1082}
!1082 = distinct !{!1082, !1080, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5ba3fdab0b109aaeE: %b"}
!1083 = !{!1084}
!1084 = distinct !{!1084, !1085, !"_ZN4core3ops8function5FnMut8call_mut17hb2c3cc4e9207ff38E: argument 0"}
!1085 = distinct !{!1085, !"_ZN4core3ops8function5FnMut8call_mut17hb2c3cc4e9207ff38E"}
!1086 = !{!1087}
!1087 = distinct !{!1087, !1088, !"_ZN4core5slice4sort6shared9smallsort8merge_up17h15546792d4618da6E: %_0"}
!1088 = distinct !{!1088, !"_ZN4core5slice4sort6shared9smallsort8merge_up17h15546792d4618da6E"}
!1089 = !{!1090}
!1090 = distinct !{!1090, !1085, !"_ZN4core3ops8function5FnMut8call_mut17hb2c3cc4e9207ff38E: argument 1"}
!1091 = !{!1092}
!1092 = distinct !{!1092, !1093, !"cmpfunc: %a"}
!1093 = distinct !{!1093, !"cmpfunc"}
!1094 = !{!1095}
!1095 = distinct !{!1095, !1093, !"cmpfunc: %b"}
!1096 = !{!1097}
!1097 = distinct !{!1097, !1098, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!1098 = distinct !{!1098, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!1099 = !{!1100}
!1100 = distinct !{!1100, !1098, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!1101 = !{!1097, !1092, !1084, !1079, !1076}
!1102 = !{!1100, !1095, !1090, !1082, !1087}
!1103 = !{!1100, !1095, !1090, !1082, !1076}
!1104 = !{!1097, !1092, !1084, !1079, !1087}
!1105 = !{!1087, !1106, !1076}
!1106 = distinct !{!1106, !1088, !"_ZN4core5slice4sort6shared9smallsort8merge_up17h15546792d4618da6E: %is_less"}
!1107 = !{!1108}
!1108 = distinct !{!1108, !1109, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5ba3fdab0b109aaeE: %a"}
!1109 = distinct !{!1109, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5ba3fdab0b109aaeE"}
!1110 = !{!1111}
!1111 = distinct !{!1111, !1109, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5ba3fdab0b109aaeE: %b"}
!1112 = !{!1113}
!1113 = distinct !{!1113, !1114, !"_ZN4core3ops8function5FnMut8call_mut17hb2c3cc4e9207ff38E: argument 0"}
!1114 = distinct !{!1114, !"_ZN4core3ops8function5FnMut8call_mut17hb2c3cc4e9207ff38E"}
!1115 = !{!1116}
!1116 = distinct !{!1116, !1117, !"_ZN4core5slice4sort6shared9smallsort10merge_down17ha9aa82fca9532922E: %_0"}
!1117 = distinct !{!1117, !"_ZN4core5slice4sort6shared9smallsort10merge_down17ha9aa82fca9532922E"}
!1118 = !{!1119}
!1119 = distinct !{!1119, !1114, !"_ZN4core3ops8function5FnMut8call_mut17hb2c3cc4e9207ff38E: argument 1"}
!1120 = !{!1121}
!1121 = distinct !{!1121, !1122, !"cmpfunc: %a"}
!1122 = distinct !{!1122, !"cmpfunc"}
!1123 = !{!1124}
!1124 = distinct !{!1124, !1122, !"cmpfunc: %b"}
!1125 = !{!1126}
!1126 = distinct !{!1126, !1127, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!1127 = distinct !{!1127, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!1128 = !{!1129}
!1129 = distinct !{!1129, !1127, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!1130 = !{!1126, !1121, !1113, !1108, !1076}
!1131 = !{!1129, !1124, !1119, !1111, !1116}
!1132 = !{!1129, !1124, !1119, !1111, !1076}
!1133 = !{!1126, !1121, !1113, !1108, !1116}
!1134 = !{!1116, !1135, !1076}
!1135 = distinct !{!1135, !1117, !"_ZN4core5slice4sort6shared9smallsort10merge_down17ha9aa82fca9532922E: %is_less"}
!1136 = !{!1137}
!1137 = distinct !{!1137, !1080, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5ba3fdab0b109aaeE: %a:It1"}
!1138 = !{!1139}
!1139 = distinct !{!1139, !1080, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5ba3fdab0b109aaeE: %b:It1"}
!1140 = !{!1141}
!1141 = distinct !{!1141, !1085, !"_ZN4core3ops8function5FnMut8call_mut17hb2c3cc4e9207ff38E: argument 0:It1"}
!1142 = !{!1143}
!1143 = distinct !{!1143, !1085, !"_ZN4core3ops8function5FnMut8call_mut17hb2c3cc4e9207ff38E: argument 1:It1"}
!1144 = !{!1145}
!1145 = distinct !{!1145, !1093, !"cmpfunc: %a:It1"}
!1146 = !{!1147}
!1147 = distinct !{!1147, !1093, !"cmpfunc: %b:It1"}
!1148 = !{!1149}
!1149 = distinct !{!1149, !1098, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self:It1"}
!1150 = !{!1151}
!1151 = distinct !{!1151, !1098, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other:It1"}
!1152 = !{!1149, !1145, !1141, !1137, !1076}
!1153 = !{!1151, !1147, !1143, !1139, !1087}
!1154 = !{!1151, !1147, !1143, !1139, !1076}
!1155 = !{!1149, !1145, !1141, !1137, !1087}
!1156 = !{!1157}
!1157 = distinct !{!1157, !1109, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5ba3fdab0b109aaeE: %a:It1"}
!1158 = !{!1159}
!1159 = distinct !{!1159, !1109, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5ba3fdab0b109aaeE: %b:It1"}
!1160 = !{!1161}
!1161 = distinct !{!1161, !1114, !"_ZN4core3ops8function5FnMut8call_mut17hb2c3cc4e9207ff38E: argument 0:It1"}
!1162 = !{!1163}
!1163 = distinct !{!1163, !1114, !"_ZN4core3ops8function5FnMut8call_mut17hb2c3cc4e9207ff38E: argument 1:It1"}
!1164 = !{!1165}
!1165 = distinct !{!1165, !1122, !"cmpfunc: %a:It1"}
!1166 = !{!1167}
!1167 = distinct !{!1167, !1122, !"cmpfunc: %b:It1"}
!1168 = !{!1169}
!1169 = distinct !{!1169, !1127, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self:It1"}
!1170 = !{!1171}
!1171 = distinct !{!1171, !1127, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other:It1"}
!1172 = !{!1169, !1165, !1161, !1157, !1076}
!1173 = !{!1171, !1167, !1163, !1159, !1116}
!1174 = !{!1171, !1167, !1163, !1159, !1076}
!1175 = !{!1169, !1165, !1161, !1157, !1116}
!1176 = !{!1177}
!1177 = distinct !{!1177, !1080, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5ba3fdab0b109aaeE: %a:It2"}
!1178 = !{!1179}
!1179 = distinct !{!1179, !1080, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5ba3fdab0b109aaeE: %b:It2"}
!1180 = !{!1181}
!1181 = distinct !{!1181, !1085, !"_ZN4core3ops8function5FnMut8call_mut17hb2c3cc4e9207ff38E: argument 0:It2"}
!1182 = !{!1183}
!1183 = distinct !{!1183, !1085, !"_ZN4core3ops8function5FnMut8call_mut17hb2c3cc4e9207ff38E: argument 1:It2"}
!1184 = !{!1185}
!1185 = distinct !{!1185, !1093, !"cmpfunc: %a:It2"}
!1186 = !{!1187}
!1187 = distinct !{!1187, !1093, !"cmpfunc: %b:It2"}
!1188 = !{!1189}
!1189 = distinct !{!1189, !1098, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self:It2"}
!1190 = !{!1191}
!1191 = distinct !{!1191, !1098, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other:It2"}
!1192 = !{!1189, !1185, !1181, !1177, !1076}
!1193 = !{!1191, !1187, !1183, !1179, !1087}
!1194 = !{!1191, !1187, !1183, !1179, !1076}
!1195 = !{!1189, !1185, !1181, !1177, !1087}
!1196 = !{!1197}
!1197 = distinct !{!1197, !1109, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5ba3fdab0b109aaeE: %a:It2"}
!1198 = !{!1199}
!1199 = distinct !{!1199, !1109, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5ba3fdab0b109aaeE: %b:It2"}
!1200 = !{!1201}
!1201 = distinct !{!1201, !1114, !"_ZN4core3ops8function5FnMut8call_mut17hb2c3cc4e9207ff38E: argument 0:It2"}
!1202 = !{!1203}
!1203 = distinct !{!1203, !1114, !"_ZN4core3ops8function5FnMut8call_mut17hb2c3cc4e9207ff38E: argument 1:It2"}
!1204 = !{!1205}
!1205 = distinct !{!1205, !1122, !"cmpfunc: %a:It2"}
!1206 = !{!1207}
!1207 = distinct !{!1207, !1122, !"cmpfunc: %b:It2"}
!1208 = !{!1209}
!1209 = distinct !{!1209, !1127, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self:It2"}
!1210 = !{!1211}
!1211 = distinct !{!1211, !1127, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other:It2"}
!1212 = !{!1209, !1205, !1201, !1197, !1076}
!1213 = !{!1211, !1207, !1203, !1199, !1116}
!1214 = !{!1211, !1207, !1203, !1199, !1076}
!1215 = !{!1209, !1205, !1201, !1197, !1116}
!1216 = !{!1217}
!1217 = distinct !{!1217, !1080, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5ba3fdab0b109aaeE: %a:It3"}
!1218 = !{!1219}
!1219 = distinct !{!1219, !1080, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5ba3fdab0b109aaeE: %b:It3"}
!1220 = !{!1221}
!1221 = distinct !{!1221, !1085, !"_ZN4core3ops8function5FnMut8call_mut17hb2c3cc4e9207ff38E: argument 0:It3"}
!1222 = !{!1223}
!1223 = distinct !{!1223, !1085, !"_ZN4core3ops8function5FnMut8call_mut17hb2c3cc4e9207ff38E: argument 1:It3"}
!1224 = !{!1225}
!1225 = distinct !{!1225, !1093, !"cmpfunc: %a:It3"}
!1226 = !{!1227}
!1227 = distinct !{!1227, !1093, !"cmpfunc: %b:It3"}
!1228 = !{!1229}
!1229 = distinct !{!1229, !1098, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self:It3"}
!1230 = !{!1231}
!1231 = distinct !{!1231, !1098, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other:It3"}
!1232 = !{!1229, !1225, !1221, !1217, !1076}
!1233 = !{!1231, !1227, !1223, !1219, !1087}
!1234 = !{!1231, !1227, !1223, !1219, !1076}
!1235 = !{!1229, !1225, !1221, !1217, !1087}
!1236 = !{!1237}
!1237 = distinct !{!1237, !1109, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5ba3fdab0b109aaeE: %a:It3"}
!1238 = !{!1239}
!1239 = distinct !{!1239, !1109, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5ba3fdab0b109aaeE: %b:It3"}
!1240 = !{!1241}
!1241 = distinct !{!1241, !1114, !"_ZN4core3ops8function5FnMut8call_mut17hb2c3cc4e9207ff38E: argument 0:It3"}
!1242 = !{!1243}
!1243 = distinct !{!1243, !1114, !"_ZN4core3ops8function5FnMut8call_mut17hb2c3cc4e9207ff38E: argument 1:It3"}
!1244 = !{!1245}
!1245 = distinct !{!1245, !1122, !"cmpfunc: %a:It3"}
!1246 = !{!1247}
!1247 = distinct !{!1247, !1122, !"cmpfunc: %b:It3"}
!1248 = !{!1249}
!1249 = distinct !{!1249, !1127, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self:It3"}
!1250 = !{!1251}
!1251 = distinct !{!1251, !1127, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other:It3"}
!1252 = !{!1249, !1245, !1241, !1237, !1076}
!1253 = !{!1251, !1247, !1243, !1239, !1116}
!1254 = !{!1251, !1247, !1243, !1239, !1076}
!1255 = !{!1249, !1245, !1241, !1237, !1116}
!1256 = !{!1257}
!1257 = distinct !{!1257, !1258, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5ba3fdab0b109aaeE: %a"}
!1258 = distinct !{!1258, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5ba3fdab0b109aaeE"}
!1259 = !{!1260}
!1260 = distinct !{!1260, !1258, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5ba3fdab0b109aaeE: %b"}
!1261 = !{!1262}
!1262 = distinct !{!1262, !1263, !"_ZN4core3ops8function5FnMut8call_mut17hb2c3cc4e9207ff38E: argument 0"}
!1263 = distinct !{!1263, !"_ZN4core3ops8function5FnMut8call_mut17hb2c3cc4e9207ff38E"}
!1264 = !{!1265}
!1265 = distinct !{!1265, !1266, !"_ZN4core5slice4sort6shared9smallsort8merge_up17h15546792d4618da6E: %_0"}
!1266 = distinct !{!1266, !"_ZN4core5slice4sort6shared9smallsort8merge_up17h15546792d4618da6E"}
!1267 = !{!1268}
!1268 = distinct !{!1268, !1263, !"_ZN4core3ops8function5FnMut8call_mut17hb2c3cc4e9207ff38E: argument 1"}
!1269 = !{!1270}
!1270 = distinct !{!1270, !1271, !"cmpfunc: %a"}
!1271 = distinct !{!1271, !"cmpfunc"}
!1272 = !{!1273}
!1273 = distinct !{!1273, !1271, !"cmpfunc: %b"}
!1274 = !{!1275}
!1275 = distinct !{!1275, !1276, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!1276 = distinct !{!1276, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!1277 = !{!1278}
!1278 = distinct !{!1278, !1276, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!1279 = !{!1275, !1270, !1262, !1257}
!1280 = !{!1278, !1273, !1268, !1260, !1265}
!1281 = !{!1278, !1273, !1268, !1260}
!1282 = !{!1275, !1270, !1262, !1257, !1265}
!1283 = !{!1265, !1284}
!1284 = distinct !{!1284, !1266, !"_ZN4core5slice4sort6shared9smallsort8merge_up17h15546792d4618da6E: %is_less"}
!1285 = !{!1286}
!1286 = distinct !{!1286, !1287, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5ba3fdab0b109aaeE: %a"}
!1287 = distinct !{!1287, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5ba3fdab0b109aaeE"}
!1288 = !{!1289}
!1289 = distinct !{!1289, !1287, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5ba3fdab0b109aaeE: %b"}
!1290 = !{!1291}
!1291 = distinct !{!1291, !1292, !"_ZN4core3ops8function5FnMut8call_mut17hb2c3cc4e9207ff38E: argument 0"}
!1292 = distinct !{!1292, !"_ZN4core3ops8function5FnMut8call_mut17hb2c3cc4e9207ff38E"}
!1293 = !{!1294}
!1294 = distinct !{!1294, !1295, !"_ZN4core5slice4sort6shared9smallsort10merge_down17ha9aa82fca9532922E: %_0"}
!1295 = distinct !{!1295, !"_ZN4core5slice4sort6shared9smallsort10merge_down17ha9aa82fca9532922E"}
!1296 = !{!1297}
!1297 = distinct !{!1297, !1292, !"_ZN4core3ops8function5FnMut8call_mut17hb2c3cc4e9207ff38E: argument 1"}
!1298 = !{!1299}
!1299 = distinct !{!1299, !1300, !"cmpfunc: %a"}
!1300 = distinct !{!1300, !"cmpfunc"}
!1301 = !{!1302}
!1302 = distinct !{!1302, !1300, !"cmpfunc: %b"}
!1303 = !{!1304}
!1304 = distinct !{!1304, !1305, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!1305 = distinct !{!1305, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!1306 = !{!1307}
!1307 = distinct !{!1307, !1305, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!1308 = !{!1304, !1299, !1291, !1286}
!1309 = !{!1307, !1302, !1297, !1289, !1294}
!1310 = !{!1307, !1302, !1297, !1289}
!1311 = !{!1304, !1299, !1291, !1286, !1294}
!1312 = !{!1294, !1313}
!1313 = distinct !{!1313, !1295, !"_ZN4core5slice4sort6shared9smallsort10merge_down17ha9aa82fca9532922E: %is_less"}
!1314 = !{!1315}
!1315 = distinct !{!1315, !1316, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfaa75802b1959b0aE: %a"}
!1316 = distinct !{!1316, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfaa75802b1959b0aE"}
!1317 = !{!1318}
!1318 = distinct !{!1318, !1316, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfaa75802b1959b0aE: %b"}
!1319 = !{!1320}
!1320 = distinct !{!1320, !1321, !"_ZN71MAKING_ELEMENTS_OF_TWO_ARRAYS_SAME_WITH_MINIMUM_INCREMENTDECREMENT_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hbb49eefd79996977E: %a"}
!1321 = distinct !{!1321, !"_ZN71MAKING_ELEMENTS_OF_TWO_ARRAYS_SAME_WITH_MINIMUM_INCREMENTDECREMENT_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hbb49eefd79996977E"}
!1322 = !{!1323}
!1323 = distinct !{!1323, !1324, !"_ZN4core5slice4sort6shared9smallsort8merge_up17ha5340aea9223a24cE: %_0"}
!1324 = distinct !{!1324, !"_ZN4core5slice4sort6shared9smallsort8merge_up17ha5340aea9223a24cE"}
!1325 = !{!1326}
!1326 = distinct !{!1326, !1321, !"_ZN71MAKING_ELEMENTS_OF_TWO_ARRAYS_SAME_WITH_MINIMUM_INCREMENTDECREMENT_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hbb49eefd79996977E: %b"}
!1327 = !{!1328}
!1328 = distinct !{!1328, !1329, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$f32$GT$11partial_cmp17h51acfdb7fcc2b22aE: %self"}
!1329 = distinct !{!1329, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$f32$GT$11partial_cmp17h51acfdb7fcc2b22aE"}
!1330 = !{!1331}
!1331 = distinct !{!1331, !1329, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$f32$GT$11partial_cmp17h51acfdb7fcc2b22aE: %other"}
!1332 = !{!1328, !1320, !1315}
!1333 = !{!1331, !1326, !1318, !1323}
!1334 = !{!1331, !1326, !1318}
!1335 = !{!1328, !1320, !1315, !1323}
!1336 = !{!1320, !1326, !1315, !1318, !1323}
!1337 = !{!1323, !1338}
!1338 = distinct !{!1338, !1324, !"_ZN4core5slice4sort6shared9smallsort8merge_up17ha5340aea9223a24cE: %is_less"}
!1339 = !{!1340}
!1340 = distinct !{!1340, !1341, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfaa75802b1959b0aE: %a"}
!1341 = distinct !{!1341, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfaa75802b1959b0aE"}
!1342 = !{!1343}
!1343 = distinct !{!1343, !1341, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfaa75802b1959b0aE: %b"}
!1344 = !{!1345}
!1345 = distinct !{!1345, !1346, !"_ZN71MAKING_ELEMENTS_OF_TWO_ARRAYS_SAME_WITH_MINIMUM_INCREMENTDECREMENT_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hbb49eefd79996977E: %a"}
!1346 = distinct !{!1346, !"_ZN71MAKING_ELEMENTS_OF_TWO_ARRAYS_SAME_WITH_MINIMUM_INCREMENTDECREMENT_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hbb49eefd79996977E"}
!1347 = !{!1348}
!1348 = distinct !{!1348, !1349, !"_ZN4core5slice4sort6shared9smallsort10merge_down17h568dd42a24d04b6bE: %_0"}
!1349 = distinct !{!1349, !"_ZN4core5slice4sort6shared9smallsort10merge_down17h568dd42a24d04b6bE"}
!1350 = !{!1351}
!1351 = distinct !{!1351, !1346, !"_ZN71MAKING_ELEMENTS_OF_TWO_ARRAYS_SAME_WITH_MINIMUM_INCREMENTDECREMENT_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hbb49eefd79996977E: %b"}
!1352 = !{!1353}
!1353 = distinct !{!1353, !1354, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$f32$GT$11partial_cmp17h51acfdb7fcc2b22aE: %self"}
!1354 = distinct !{!1354, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$f32$GT$11partial_cmp17h51acfdb7fcc2b22aE"}
!1355 = !{!1356}
!1356 = distinct !{!1356, !1354, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$f32$GT$11partial_cmp17h51acfdb7fcc2b22aE: %other"}
!1357 = !{!1353, !1345, !1340}
!1358 = !{!1356, !1351, !1343, !1348}
!1359 = !{!1356, !1351, !1343}
!1360 = !{!1353, !1345, !1340, !1348}
!1361 = !{!1345, !1351, !1340, !1343, !1348}
!1362 = !{!1348, !1363}
!1363 = distinct !{!1363, !1349, !"_ZN4core5slice4sort6shared9smallsort10merge_down17h568dd42a24d04b6bE: %is_less"}
!1364 = !{!1365}
!1365 = distinct !{!1365, !1366, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf5b8f37855ac0c3dE: %a"}
!1366 = distinct !{!1366, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf5b8f37855ac0c3dE"}
!1367 = !{!1368}
!1368 = distinct !{!1368, !1366, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf5b8f37855ac0c3dE: %b"}
!1369 = !{!1370}
!1370 = distinct !{!1370, !1371, !"_ZN71MAKING_ELEMENTS_OF_TWO_ARRAYS_SAME_WITH_MINIMUM_INCREMENTDECREMENT_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hf0788034254845f0E: %a"}
!1371 = distinct !{!1371, !"_ZN71MAKING_ELEMENTS_OF_TWO_ARRAYS_SAME_WITH_MINIMUM_INCREMENTDECREMENT_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hf0788034254845f0E"}
!1372 = !{!1373}
!1373 = distinct !{!1373, !1374, !"_ZN4core5slice4sort6shared9smallsort8merge_up17h40ab9d58e6caa1aeE: %_0"}
!1374 = distinct !{!1374, !"_ZN4core5slice4sort6shared9smallsort8merge_up17h40ab9d58e6caa1aeE"}
!1375 = !{!1376}
!1376 = distinct !{!1376, !1371, !"_ZN71MAKING_ELEMENTS_OF_TWO_ARRAYS_SAME_WITH_MINIMUM_INCREMENTDECREMENT_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hf0788034254845f0E: %b"}
!1377 = !{!1378}
!1378 = distinct !{!1378, !1379, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$f32$GT$11partial_cmp17h51acfdb7fcc2b22aE: %self"}
!1379 = distinct !{!1379, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$f32$GT$11partial_cmp17h51acfdb7fcc2b22aE"}
!1380 = !{!1381}
!1381 = distinct !{!1381, !1379, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$f32$GT$11partial_cmp17h51acfdb7fcc2b22aE: %other"}
!1382 = !{!1378, !1370, !1365}
!1383 = !{!1381, !1376, !1368, !1373}
!1384 = !{!1381, !1376, !1368}
!1385 = !{!1378, !1370, !1365, !1373}
!1386 = !{!1370, !1376, !1365, !1368, !1373}
!1387 = !{!1373, !1388}
!1388 = distinct !{!1388, !1374, !"_ZN4core5slice4sort6shared9smallsort8merge_up17h40ab9d58e6caa1aeE: %is_less"}
!1389 = !{!1390}
!1390 = distinct !{!1390, !1391, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf5b8f37855ac0c3dE: %a"}
!1391 = distinct !{!1391, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf5b8f37855ac0c3dE"}
!1392 = !{!1393}
!1393 = distinct !{!1393, !1391, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf5b8f37855ac0c3dE: %b"}
!1394 = !{!1395}
!1395 = distinct !{!1395, !1396, !"_ZN71MAKING_ELEMENTS_OF_TWO_ARRAYS_SAME_WITH_MINIMUM_INCREMENTDECREMENT_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hf0788034254845f0E: %a"}
!1396 = distinct !{!1396, !"_ZN71MAKING_ELEMENTS_OF_TWO_ARRAYS_SAME_WITH_MINIMUM_INCREMENTDECREMENT_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hf0788034254845f0E"}
!1397 = !{!1398}
!1398 = distinct !{!1398, !1399, !"_ZN4core5slice4sort6shared9smallsort10merge_down17h04b86c1be3dd6e1cE: %_0"}
!1399 = distinct !{!1399, !"_ZN4core5slice4sort6shared9smallsort10merge_down17h04b86c1be3dd6e1cE"}
!1400 = !{!1401}
!1401 = distinct !{!1401, !1396, !"_ZN71MAKING_ELEMENTS_OF_TWO_ARRAYS_SAME_WITH_MINIMUM_INCREMENTDECREMENT_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hf0788034254845f0E: %b"}
!1402 = !{!1403}
!1403 = distinct !{!1403, !1404, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$f32$GT$11partial_cmp17h51acfdb7fcc2b22aE: %self"}
!1404 = distinct !{!1404, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$f32$GT$11partial_cmp17h51acfdb7fcc2b22aE"}
!1405 = !{!1406}
!1406 = distinct !{!1406, !1404, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$f32$GT$11partial_cmp17h51acfdb7fcc2b22aE: %other"}
!1407 = !{!1403, !1395, !1390}
!1408 = !{!1406, !1401, !1393, !1398}
!1409 = !{!1406, !1401, !1393}
!1410 = !{!1403, !1395, !1390, !1398}
!1411 = !{!1395, !1401, !1390, !1393, !1398}
!1412 = !{!1398, !1413}
!1413 = distinct !{!1413, !1399, !"_ZN4core5slice4sort6shared9smallsort10merge_down17h04b86c1be3dd6e1cE: %is_less"}
!1414 = !{!1415}
!1415 = distinct !{!1415, !1416, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfaa75802b1959b0aE: %a"}
!1416 = distinct !{!1416, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfaa75802b1959b0aE"}
!1417 = !{!1418}
!1418 = distinct !{!1418, !1416, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfaa75802b1959b0aE: %b"}
!1419 = !{!1420}
!1420 = distinct !{!1420, !1421, !"_ZN71MAKING_ELEMENTS_OF_TWO_ARRAYS_SAME_WITH_MINIMUM_INCREMENTDECREMENT_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hbb49eefd79996977E: %a"}
!1421 = distinct !{!1421, !"_ZN71MAKING_ELEMENTS_OF_TWO_ARRAYS_SAME_WITH_MINIMUM_INCREMENTDECREMENT_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hbb49eefd79996977E"}
!1422 = !{!1423}
!1423 = distinct !{!1423, !1421, !"_ZN71MAKING_ELEMENTS_OF_TWO_ARRAYS_SAME_WITH_MINIMUM_INCREMENTDECREMENT_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hbb49eefd79996977E: %b"}
!1424 = !{!1425}
!1425 = distinct !{!1425, !1426, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$f32$GT$11partial_cmp17h51acfdb7fcc2b22aE: %self"}
!1426 = distinct !{!1426, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$f32$GT$11partial_cmp17h51acfdb7fcc2b22aE"}
!1427 = !{!1428}
!1428 = distinct !{!1428, !1426, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$f32$GT$11partial_cmp17h51acfdb7fcc2b22aE: %other"}
!1429 = !{!1425, !1420, !1415}
!1430 = !{!1428, !1423, !1418}
!1431 = !{!1420, !1423, !1415, !1418}
!1432 = !{!1433, !1435, !1437}
!1433 = distinct !{!1433, !1434, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$f32$GT$11partial_cmp17h51acfdb7fcc2b22aE: %other"}
!1434 = distinct !{!1434, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$f32$GT$11partial_cmp17h51acfdb7fcc2b22aE"}
!1435 = distinct !{!1435, !1436, !"_ZN71MAKING_ELEMENTS_OF_TWO_ARRAYS_SAME_WITH_MINIMUM_INCREMENTDECREMENT_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hbb49eefd79996977E: %b"}
!1436 = distinct !{!1436, !"_ZN71MAKING_ELEMENTS_OF_TWO_ARRAYS_SAME_WITH_MINIMUM_INCREMENTDECREMENT_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hbb49eefd79996977E"}
!1437 = distinct !{!1437, !1438, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfaa75802b1959b0aE: %b"}
!1438 = distinct !{!1438, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfaa75802b1959b0aE"}
!1439 = !{!1440, !1441, !1442}
!1440 = distinct !{!1440, !1434, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$f32$GT$11partial_cmp17h51acfdb7fcc2b22aE: %self"}
!1441 = distinct !{!1441, !1436, !"_ZN71MAKING_ELEMENTS_OF_TWO_ARRAYS_SAME_WITH_MINIMUM_INCREMENTDECREMENT_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hbb49eefd79996977E: %a"}
!1442 = distinct !{!1442, !1438, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfaa75802b1959b0aE: %a"}
!1443 = !{!1444, !1446}
!1444 = distinct !{!1444, !1445, !"_ZN99_$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hafc32df0be39b4b3E: %self"}
!1445 = distinct !{!1445, !"_ZN99_$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hafc32df0be39b4b3E"}
!1446 = distinct !{!1446, !1447, !"_ZN4core3ptr80drop_in_place$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$f32$GT$$GT$17hd86175c6260a7107E: %_1"}
!1447 = distinct !{!1447, !"_ZN4core3ptr80drop_in_place$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$f32$GT$$GT$17hd86175c6260a7107E"}
!1448 = !{!1449, !1451}
!1449 = distinct !{!1449, !1450, !"_ZN99_$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hafc32df0be39b4b3E: %self"}
!1450 = distinct !{!1450, !"_ZN99_$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hafc32df0be39b4b3E"}
!1451 = distinct !{!1451, !1452, !"_ZN4core3ptr80drop_in_place$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$f32$GT$$GT$17hd86175c6260a7107E: %_1"}
!1452 = distinct !{!1452, !"_ZN4core3ptr80drop_in_place$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$f32$GT$$GT$17hd86175c6260a7107E"}
!1453 = !{!1454}
!1454 = distinct !{!1454, !1455, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5ba3fdab0b109aaeE: %a"}
!1455 = distinct !{!1455, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5ba3fdab0b109aaeE"}
!1456 = !{!1457}
!1457 = distinct !{!1457, !1455, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5ba3fdab0b109aaeE: %b"}
!1458 = !{!1459}
!1459 = distinct !{!1459, !1460, !"_ZN4core3ops8function5FnMut8call_mut17hb2c3cc4e9207ff38E: argument 0"}
!1460 = distinct !{!1460, !"_ZN4core3ops8function5FnMut8call_mut17hb2c3cc4e9207ff38E"}
!1461 = !{!1462}
!1462 = distinct !{!1462, !1460, !"_ZN4core3ops8function5FnMut8call_mut17hb2c3cc4e9207ff38E: argument 1"}
!1463 = !{!1464}
!1464 = distinct !{!1464, !1465, !"cmpfunc: %a"}
!1465 = distinct !{!1465, !"cmpfunc"}
!1466 = !{!1467}
!1467 = distinct !{!1467, !1465, !"cmpfunc: %b"}
!1468 = !{!1469}
!1469 = distinct !{!1469, !1470, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!1470 = distinct !{!1470, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!1471 = !{!1472}
!1472 = distinct !{!1472, !1470, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!1473 = !{!1469, !1464, !1459, !1454}
!1474 = !{!1472, !1467, !1462, !1457}
!1475 = !{!1476, !1478, !1480, !1482}
!1476 = distinct !{!1476, !1477, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!1477 = distinct !{!1477, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!1478 = distinct !{!1478, !1479, !"cmpfunc: %b"}
!1479 = distinct !{!1479, !"cmpfunc"}
!1480 = distinct !{!1480, !1481, !"_ZN4core3ops8function5FnMut8call_mut17hb2c3cc4e9207ff38E: argument 1"}
!1481 = distinct !{!1481, !"_ZN4core3ops8function5FnMut8call_mut17hb2c3cc4e9207ff38E"}
!1482 = distinct !{!1482, !1483, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5ba3fdab0b109aaeE: %b"}
!1483 = distinct !{!1483, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5ba3fdab0b109aaeE"}
!1484 = !{!1485, !1486, !1487, !1488}
!1485 = distinct !{!1485, !1477, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!1486 = distinct !{!1486, !1479, !"cmpfunc: %a"}
!1487 = distinct !{!1487, !1481, !"_ZN4core3ops8function5FnMut8call_mut17hb2c3cc4e9207ff38E: argument 0"}
!1488 = distinct !{!1488, !1483, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5ba3fdab0b109aaeE: %a"}
!1489 = !{!1490, !1492}
!1490 = distinct !{!1490, !1491, !"_ZN99_$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h0d6a433dc34646a4E: %self"}
!1491 = distinct !{!1491, !"_ZN99_$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h0d6a433dc34646a4E"}
!1492 = distinct !{!1492, !1493, !"_ZN4core3ptr80drop_in_place$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$i32$GT$$GT$17h91c8a89f30d81e4aE: %_1"}
!1493 = distinct !{!1493, !"_ZN4core3ptr80drop_in_place$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$i32$GT$$GT$17h91c8a89f30d81e4aE"}
!1494 = !{!1495}
!1495 = distinct !{!1495, !1496, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf5b8f37855ac0c3dE: %a"}
!1496 = distinct !{!1496, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf5b8f37855ac0c3dE"}
!1497 = !{!1498}
!1498 = distinct !{!1498, !1496, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf5b8f37855ac0c3dE: %b"}
!1499 = !{!1500}
!1500 = distinct !{!1500, !1501, !"_ZN71MAKING_ELEMENTS_OF_TWO_ARRAYS_SAME_WITH_MINIMUM_INCREMENTDECREMENT_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hf0788034254845f0E: %a"}
!1501 = distinct !{!1501, !"_ZN71MAKING_ELEMENTS_OF_TWO_ARRAYS_SAME_WITH_MINIMUM_INCREMENTDECREMENT_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hf0788034254845f0E"}
!1502 = !{!1503}
!1503 = distinct !{!1503, !1501, !"_ZN71MAKING_ELEMENTS_OF_TWO_ARRAYS_SAME_WITH_MINIMUM_INCREMENTDECREMENT_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hf0788034254845f0E: %b"}
!1504 = !{!1505}
!1505 = distinct !{!1505, !1506, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$f32$GT$11partial_cmp17h51acfdb7fcc2b22aE: %self"}
!1506 = distinct !{!1506, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$f32$GT$11partial_cmp17h51acfdb7fcc2b22aE"}
!1507 = !{!1508}
!1508 = distinct !{!1508, !1506, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$f32$GT$11partial_cmp17h51acfdb7fcc2b22aE: %other"}
!1509 = !{!1505, !1500, !1495}
!1510 = !{!1508, !1503, !1498}
!1511 = !{!1500, !1503, !1495, !1498}
!1512 = !{!1513, !1515, !1517}
!1513 = distinct !{!1513, !1514, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$f32$GT$11partial_cmp17h51acfdb7fcc2b22aE: %other"}
!1514 = distinct !{!1514, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$f32$GT$11partial_cmp17h51acfdb7fcc2b22aE"}
!1515 = distinct !{!1515, !1516, !"_ZN71MAKING_ELEMENTS_OF_TWO_ARRAYS_SAME_WITH_MINIMUM_INCREMENTDECREMENT_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hf0788034254845f0E: %b"}
!1516 = distinct !{!1516, !"_ZN71MAKING_ELEMENTS_OF_TWO_ARRAYS_SAME_WITH_MINIMUM_INCREMENTDECREMENT_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hf0788034254845f0E"}
!1517 = distinct !{!1517, !1518, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf5b8f37855ac0c3dE: %b"}
!1518 = distinct !{!1518, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf5b8f37855ac0c3dE"}
!1519 = !{!1520, !1521, !1522}
!1520 = distinct !{!1520, !1514, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$f32$GT$11partial_cmp17h51acfdb7fcc2b22aE: %self"}
!1521 = distinct !{!1521, !1516, !"_ZN71MAKING_ELEMENTS_OF_TWO_ARRAYS_SAME_WITH_MINIMUM_INCREMENTDECREMENT_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hf0788034254845f0E: %a"}
!1522 = distinct !{!1522, !1518, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf5b8f37855ac0c3dE: %a"}
!1523 = !{!1524, !1526}
!1524 = distinct !{!1524, !1525, !"_ZN99_$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hafc32df0be39b4b3E: %self"}
!1525 = distinct !{!1525, !"_ZN99_$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hafc32df0be39b4b3E"}
!1526 = distinct !{!1526, !1527, !"_ZN4core3ptr80drop_in_place$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$f32$GT$$GT$17hd86175c6260a7107E: %_1"}
!1527 = distinct !{!1527, !"_ZN4core3ptr80drop_in_place$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$f32$GT$$GT$17hd86175c6260a7107E"}
!1528 = !{!1529, !1531}
!1529 = distinct !{!1529, !1530, !"_ZN99_$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hafc32df0be39b4b3E: %self"}
!1530 = distinct !{!1530, !"_ZN99_$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hafc32df0be39b4b3E"}
!1531 = distinct !{!1531, !1532, !"_ZN4core3ptr80drop_in_place$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$f32$GT$$GT$17hd86175c6260a7107E: %_1"}
!1532 = distinct !{!1532, !"_ZN4core3ptr80drop_in_place$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$f32$GT$$GT$17hd86175c6260a7107E"}
!1533 = !{!1534}
!1534 = distinct !{!1534, !1535, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5ba3fdab0b109aaeE: %a"}
!1535 = distinct !{!1535, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5ba3fdab0b109aaeE"}
!1536 = !{!1537}
!1537 = distinct !{!1537, !1535, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5ba3fdab0b109aaeE: %b"}
!1538 = !{!1539}
!1539 = distinct !{!1539, !1540, !"_ZN4core3ops8function5FnMut8call_mut17hb2c3cc4e9207ff38E: argument 0"}
!1540 = distinct !{!1540, !"_ZN4core3ops8function5FnMut8call_mut17hb2c3cc4e9207ff38E"}
!1541 = !{!1542}
!1542 = distinct !{!1542, !1540, !"_ZN4core3ops8function5FnMut8call_mut17hb2c3cc4e9207ff38E: argument 1"}
!1543 = !{!1544}
!1544 = distinct !{!1544, !1545, !"cmpfunc: %a"}
!1545 = distinct !{!1545, !"cmpfunc"}
!1546 = !{!1547}
!1547 = distinct !{!1547, !1545, !"cmpfunc: %b"}
!1548 = !{!1549}
!1549 = distinct !{!1549, !1550, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!1550 = distinct !{!1550, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!1551 = !{!1552}
!1552 = distinct !{!1552, !1550, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!1553 = !{!1549, !1544, !1539, !1534}
!1554 = !{!1552, !1547, !1542, !1537}
!1555 = !{!1556}
!1556 = distinct !{!1556, !1557, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5ba3fdab0b109aaeE: %a"}
!1557 = distinct !{!1557, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5ba3fdab0b109aaeE"}
!1558 = !{!1559}
!1559 = distinct !{!1559, !1557, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5ba3fdab0b109aaeE: %b"}
!1560 = !{!1561}
!1561 = distinct !{!1561, !1562, !"_ZN4core3ops8function5FnMut8call_mut17hb2c3cc4e9207ff38E: argument 0"}
!1562 = distinct !{!1562, !"_ZN4core3ops8function5FnMut8call_mut17hb2c3cc4e9207ff38E"}
!1563 = !{!1564}
!1564 = distinct !{!1564, !1562, !"_ZN4core3ops8function5FnMut8call_mut17hb2c3cc4e9207ff38E: argument 1"}
!1565 = !{!1566}
!1566 = distinct !{!1566, !1567, !"cmpfunc: %a"}
!1567 = distinct !{!1567, !"cmpfunc"}
!1568 = !{!1569}
!1569 = distinct !{!1569, !1567, !"cmpfunc: %b"}
!1570 = !{!1571}
!1571 = distinct !{!1571, !1572, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!1572 = distinct !{!1572, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!1573 = !{!1574}
!1574 = distinct !{!1574, !1572, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!1575 = !{!1571, !1566, !1561, !1556}
!1576 = !{!1574, !1569, !1564, !1559}
!1577 = !{!1578}
!1578 = distinct !{!1578, !1579, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5ba3fdab0b109aaeE: %a"}
!1579 = distinct !{!1579, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5ba3fdab0b109aaeE"}
!1580 = !{!1581}
!1581 = distinct !{!1581, !1579, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5ba3fdab0b109aaeE: %b"}
!1582 = !{!1583}
!1583 = distinct !{!1583, !1584, !"_ZN4core3ops8function5FnMut8call_mut17hb2c3cc4e9207ff38E: argument 0"}
!1584 = distinct !{!1584, !"_ZN4core3ops8function5FnMut8call_mut17hb2c3cc4e9207ff38E"}
!1585 = !{!1586}
!1586 = distinct !{!1586, !1584, !"_ZN4core3ops8function5FnMut8call_mut17hb2c3cc4e9207ff38E: argument 1"}
!1587 = !{!1588}
!1588 = distinct !{!1588, !1589, !"cmpfunc: %a"}
!1589 = distinct !{!1589, !"cmpfunc"}
!1590 = !{!1591}
!1591 = distinct !{!1591, !1589, !"cmpfunc: %b"}
!1592 = !{!1593}
!1593 = distinct !{!1593, !1594, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!1594 = distinct !{!1594, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!1595 = !{!1596}
!1596 = distinct !{!1596, !1594, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!1597 = !{!1593, !1588, !1583, !1578}
!1598 = !{!1596, !1591, !1586, !1581}
!1599 = !{!1600}
!1600 = distinct !{!1600, !1601, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5ba3fdab0b109aaeE: %a"}
!1601 = distinct !{!1601, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5ba3fdab0b109aaeE"}
!1602 = !{!1603}
!1603 = distinct !{!1603, !1601, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5ba3fdab0b109aaeE: %b"}
!1604 = !{!1605}
!1605 = distinct !{!1605, !1606, !"_ZN4core3ops8function5FnMut8call_mut17hb2c3cc4e9207ff38E: argument 0"}
!1606 = distinct !{!1606, !"_ZN4core3ops8function5FnMut8call_mut17hb2c3cc4e9207ff38E"}
!1607 = !{!1608}
!1608 = distinct !{!1608, !1606, !"_ZN4core3ops8function5FnMut8call_mut17hb2c3cc4e9207ff38E: argument 1"}
!1609 = !{!1610}
!1610 = distinct !{!1610, !1611, !"cmpfunc: %a"}
!1611 = distinct !{!1611, !"cmpfunc"}
!1612 = !{!1613}
!1613 = distinct !{!1613, !1611, !"cmpfunc: %b"}
!1614 = !{!1615}
!1615 = distinct !{!1615, !1616, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!1616 = distinct !{!1616, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!1617 = !{!1618}
!1618 = distinct !{!1618, !1616, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!1619 = !{!1615, !1610, !1605, !1600}
!1620 = !{!1618, !1613, !1608, !1603}
!1621 = !{!1622}
!1622 = distinct !{!1622, !1623, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5ba3fdab0b109aaeE: %a"}
!1623 = distinct !{!1623, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5ba3fdab0b109aaeE"}
!1624 = !{!1625}
!1625 = distinct !{!1625, !1623, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5ba3fdab0b109aaeE: %b"}
!1626 = !{!1627}
!1627 = distinct !{!1627, !1628, !"_ZN4core3ops8function5FnMut8call_mut17hb2c3cc4e9207ff38E: argument 0"}
!1628 = distinct !{!1628, !"_ZN4core3ops8function5FnMut8call_mut17hb2c3cc4e9207ff38E"}
!1629 = !{!1630}
!1630 = distinct !{!1630, !1628, !"_ZN4core3ops8function5FnMut8call_mut17hb2c3cc4e9207ff38E: argument 1"}
!1631 = !{!1632}
!1632 = distinct !{!1632, !1633, !"cmpfunc: %a"}
!1633 = distinct !{!1633, !"cmpfunc"}
!1634 = !{!1635}
!1635 = distinct !{!1635, !1633, !"cmpfunc: %b"}
!1636 = !{!1637}
!1637 = distinct !{!1637, !1638, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!1638 = distinct !{!1638, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!1639 = !{!1640}
!1640 = distinct !{!1640, !1638, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!1641 = !{!1637, !1632, !1627, !1622}
!1642 = !{!1640, !1635, !1630, !1625}
!1643 = !{!1644}
!1644 = distinct !{!1644, !1645, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5ba3fdab0b109aaeE: %a"}
!1645 = distinct !{!1645, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5ba3fdab0b109aaeE"}
!1646 = !{!1647}
!1647 = distinct !{!1647, !1645, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5ba3fdab0b109aaeE: %b"}
!1648 = !{!1649}
!1649 = distinct !{!1649, !1650, !"_ZN4core3ops8function5FnMut8call_mut17hb2c3cc4e9207ff38E: argument 0"}
!1650 = distinct !{!1650, !"_ZN4core3ops8function5FnMut8call_mut17hb2c3cc4e9207ff38E"}
!1651 = !{!1652}
!1652 = distinct !{!1652, !1650, !"_ZN4core3ops8function5FnMut8call_mut17hb2c3cc4e9207ff38E: argument 1"}
!1653 = !{!1654}
!1654 = distinct !{!1654, !1655, !"cmpfunc: %a"}
!1655 = distinct !{!1655, !"cmpfunc"}
!1656 = !{!1657}
!1657 = distinct !{!1657, !1655, !"cmpfunc: %b"}
!1658 = !{!1659}
!1659 = distinct !{!1659, !1660, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!1660 = distinct !{!1660, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!1661 = !{!1662}
!1662 = distinct !{!1662, !1660, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!1663 = !{!1659, !1654, !1649, !1644}
!1664 = !{!1662, !1657, !1652, !1647}
!1665 = !{!1666}
!1666 = distinct !{!1666, !1667, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5ba3fdab0b109aaeE: %a"}
!1667 = distinct !{!1667, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5ba3fdab0b109aaeE"}
!1668 = !{!1669}
!1669 = distinct !{!1669, !1667, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5ba3fdab0b109aaeE: %b"}
!1670 = !{!1671}
!1671 = distinct !{!1671, !1672, !"_ZN4core3ops8function5FnMut8call_mut17hb2c3cc4e9207ff38E: argument 0"}
!1672 = distinct !{!1672, !"_ZN4core3ops8function5FnMut8call_mut17hb2c3cc4e9207ff38E"}
!1673 = !{!1674}
!1674 = distinct !{!1674, !1672, !"_ZN4core3ops8function5FnMut8call_mut17hb2c3cc4e9207ff38E: argument 1"}
!1675 = !{!1676}
!1676 = distinct !{!1676, !1677, !"cmpfunc: %a"}
!1677 = distinct !{!1677, !"cmpfunc"}
!1678 = !{!1679}
!1679 = distinct !{!1679, !1677, !"cmpfunc: %b"}
!1680 = !{!1681}
!1681 = distinct !{!1681, !1682, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!1682 = distinct !{!1682, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!1683 = !{!1684}
!1684 = distinct !{!1684, !1682, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!1685 = !{!1681, !1676, !1671, !1666}
!1686 = !{!1684, !1679, !1674, !1669}
!1687 = !{!1688}
!1688 = distinct !{!1688, !1689, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5ba3fdab0b109aaeE: %a"}
!1689 = distinct !{!1689, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5ba3fdab0b109aaeE"}
!1690 = !{!1691}
!1691 = distinct !{!1691, !1689, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5ba3fdab0b109aaeE: %b"}
!1692 = !{!1693}
!1693 = distinct !{!1693, !1694, !"_ZN4core3ops8function5FnMut8call_mut17hb2c3cc4e9207ff38E: argument 0"}
!1694 = distinct !{!1694, !"_ZN4core3ops8function5FnMut8call_mut17hb2c3cc4e9207ff38E"}
!1695 = !{!1696}
!1696 = distinct !{!1696, !1694, !"_ZN4core3ops8function5FnMut8call_mut17hb2c3cc4e9207ff38E: argument 1"}
!1697 = !{!1698}
!1698 = distinct !{!1698, !1699, !"cmpfunc: %a"}
!1699 = distinct !{!1699, !"cmpfunc"}
!1700 = !{!1701}
!1701 = distinct !{!1701, !1699, !"cmpfunc: %b"}
!1702 = !{!1703}
!1703 = distinct !{!1703, !1704, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!1704 = distinct !{!1704, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!1705 = !{!1706}
!1706 = distinct !{!1706, !1704, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!1707 = !{!1703, !1698, !1693, !1688}
!1708 = !{!1706, !1701, !1696, !1691}
!1709 = !{!1710}
!1710 = distinct !{!1710, !1711, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5ba3fdab0b109aaeE: %a"}
!1711 = distinct !{!1711, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5ba3fdab0b109aaeE"}
!1712 = !{!1713}
!1713 = distinct !{!1713, !1711, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5ba3fdab0b109aaeE: %b"}
!1714 = !{!1715}
!1715 = distinct !{!1715, !1716, !"_ZN4core3ops8function5FnMut8call_mut17hb2c3cc4e9207ff38E: argument 0"}
!1716 = distinct !{!1716, !"_ZN4core3ops8function5FnMut8call_mut17hb2c3cc4e9207ff38E"}
!1717 = !{!1718}
!1718 = distinct !{!1718, !1716, !"_ZN4core3ops8function5FnMut8call_mut17hb2c3cc4e9207ff38E: argument 1"}
!1719 = !{!1720}
!1720 = distinct !{!1720, !1721, !"cmpfunc: %a"}
!1721 = distinct !{!1721, !"cmpfunc"}
!1722 = !{!1723}
!1723 = distinct !{!1723, !1721, !"cmpfunc: %b"}
!1724 = !{!1725}
!1725 = distinct !{!1725, !1726, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!1726 = distinct !{!1726, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!1727 = !{!1728}
!1728 = distinct !{!1728, !1726, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!1729 = !{!1725, !1720, !1715, !1710}
!1730 = !{!1728, !1723, !1718, !1713}
!1731 = !{!1732}
!1732 = distinct !{!1732, !1733, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5ba3fdab0b109aaeE: %a"}
!1733 = distinct !{!1733, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5ba3fdab0b109aaeE"}
!1734 = !{!1735}
!1735 = distinct !{!1735, !1733, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5ba3fdab0b109aaeE: %b"}
!1736 = !{!1737}
!1737 = distinct !{!1737, !1738, !"_ZN4core3ops8function5FnMut8call_mut17hb2c3cc4e9207ff38E: argument 0"}
!1738 = distinct !{!1738, !"_ZN4core3ops8function5FnMut8call_mut17hb2c3cc4e9207ff38E"}
!1739 = !{!1740}
!1740 = distinct !{!1740, !1738, !"_ZN4core3ops8function5FnMut8call_mut17hb2c3cc4e9207ff38E: argument 1"}
!1741 = !{!1742}
!1742 = distinct !{!1742, !1743, !"cmpfunc: %a"}
!1743 = distinct !{!1743, !"cmpfunc"}
!1744 = !{!1745}
!1745 = distinct !{!1745, !1743, !"cmpfunc: %b"}
!1746 = !{!1747}
!1747 = distinct !{!1747, !1748, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!1748 = distinct !{!1748, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!1749 = !{!1750}
!1750 = distinct !{!1750, !1748, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!1751 = !{!1747, !1742, !1737, !1732}
!1752 = !{!1750, !1745, !1740, !1735}
!1753 = !{!1754}
!1754 = distinct !{!1754, !1755, !"_ZN4core5array4iter10iter_inner78PolymorphicIter$LT$$u5b$core..mem..maybe_uninit..MaybeUninit$LT$T$GT$$u5d$$GT$4next17h596baefaffcedcbfE: %self.0"}
!1755 = distinct !{!1755, !"_ZN4core5array4iter10iter_inner78PolymorphicIter$LT$$u5b$core..mem..maybe_uninit..MaybeUninit$LT$T$GT$$u5d$$GT$4next17h596baefaffcedcbfE"}
!1756 = !{!1757}
!1757 = distinct !{!1757, !1758, !"_ZN4core5slice4sort6shared9smallsort19bidirectional_merge17h88e3c5d50b4d1a5aE: %v.0"}
!1758 = distinct !{!1758, !"_ZN4core5slice4sort6shared9smallsort19bidirectional_merge17h88e3c5d50b4d1a5aE"}
!1759 = !{!1760}
!1760 = distinct !{!1760, !1761, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5ba3fdab0b109aaeE: %a"}
!1761 = distinct !{!1761, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5ba3fdab0b109aaeE"}
!1762 = !{!1763}
!1763 = distinct !{!1763, !1761, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5ba3fdab0b109aaeE: %b"}
!1764 = !{!1765}
!1765 = distinct !{!1765, !1766, !"_ZN4core3ops8function5FnMut8call_mut17hb2c3cc4e9207ff38E: argument 0"}
!1766 = distinct !{!1766, !"_ZN4core3ops8function5FnMut8call_mut17hb2c3cc4e9207ff38E"}
!1767 = !{!1768}
!1768 = distinct !{!1768, !1769, !"_ZN4core5slice4sort6shared9smallsort8merge_up17h15546792d4618da6E: %_0"}
!1769 = distinct !{!1769, !"_ZN4core5slice4sort6shared9smallsort8merge_up17h15546792d4618da6E"}
!1770 = !{!1771}
!1771 = distinct !{!1771, !1766, !"_ZN4core3ops8function5FnMut8call_mut17hb2c3cc4e9207ff38E: argument 1"}
!1772 = !{!1773}
!1773 = distinct !{!1773, !1774, !"cmpfunc: %a"}
!1774 = distinct !{!1774, !"cmpfunc"}
!1775 = !{!1776}
!1776 = distinct !{!1776, !1774, !"cmpfunc: %b"}
!1777 = !{!1778}
!1778 = distinct !{!1778, !1779, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!1779 = distinct !{!1779, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!1780 = !{!1781}
!1781 = distinct !{!1781, !1779, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!1782 = !{!1778, !1773, !1765, !1760, !1757}
!1783 = !{!1781, !1776, !1771, !1763, !1768}
!1784 = !{!1781, !1776, !1771, !1763, !1757}
!1785 = !{!1778, !1773, !1765, !1760, !1768}
!1786 = !{!1768, !1787, !1757}
!1787 = distinct !{!1787, !1769, !"_ZN4core5slice4sort6shared9smallsort8merge_up17h15546792d4618da6E: %is_less"}
!1788 = !{!1789}
!1789 = distinct !{!1789, !1790, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5ba3fdab0b109aaeE: %a"}
!1790 = distinct !{!1790, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5ba3fdab0b109aaeE"}
!1791 = !{!1792}
!1792 = distinct !{!1792, !1790, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5ba3fdab0b109aaeE: %b"}
!1793 = !{!1794}
!1794 = distinct !{!1794, !1795, !"_ZN4core3ops8function5FnMut8call_mut17hb2c3cc4e9207ff38E: argument 0"}
!1795 = distinct !{!1795, !"_ZN4core3ops8function5FnMut8call_mut17hb2c3cc4e9207ff38E"}
!1796 = !{!1797}
!1797 = distinct !{!1797, !1798, !"_ZN4core5slice4sort6shared9smallsort10merge_down17ha9aa82fca9532922E: %_0"}
!1798 = distinct !{!1798, !"_ZN4core5slice4sort6shared9smallsort10merge_down17ha9aa82fca9532922E"}
!1799 = !{!1800}
!1800 = distinct !{!1800, !1795, !"_ZN4core3ops8function5FnMut8call_mut17hb2c3cc4e9207ff38E: argument 1"}
!1801 = !{!1802}
!1802 = distinct !{!1802, !1803, !"cmpfunc: %a"}
!1803 = distinct !{!1803, !"cmpfunc"}
!1804 = !{!1805}
!1805 = distinct !{!1805, !1803, !"cmpfunc: %b"}
!1806 = !{!1807}
!1807 = distinct !{!1807, !1808, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!1808 = distinct !{!1808, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!1809 = !{!1810}
!1810 = distinct !{!1810, !1808, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!1811 = !{!1807, !1802, !1794, !1789, !1757}
!1812 = !{!1810, !1805, !1800, !1792, !1797}
!1813 = !{!1810, !1805, !1800, !1792, !1757}
!1814 = !{!1807, !1802, !1794, !1789, !1797}
!1815 = !{!1797, !1816, !1757}
!1816 = distinct !{!1816, !1798, !"_ZN4core5slice4sort6shared9smallsort10merge_down17ha9aa82fca9532922E: %is_less"}
!1817 = !{!1818, !1820}
!1818 = distinct !{!1818, !1819, !"_ZN99_$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h0d6a433dc34646a4E: %self"}
!1819 = distinct !{!1819, !"_ZN99_$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h0d6a433dc34646a4E"}
!1820 = distinct !{!1820, !1821, !"_ZN4core3ptr80drop_in_place$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$i32$GT$$GT$17h91c8a89f30d81e4aE: %_1"}
!1821 = distinct !{!1821, !"_ZN4core3ptr80drop_in_place$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$i32$GT$$GT$17h91c8a89f30d81e4aE"}
!1822 = !{!1823, !1825, !1827, !1829}
!1823 = distinct !{!1823, !1824, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!1824 = distinct !{!1824, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!1825 = distinct !{!1825, !1826, !"cmpfunc: %b"}
!1826 = distinct !{!1826, !"cmpfunc"}
!1827 = distinct !{!1827, !1828, !"_ZN4core3ops8function5FnMut8call_mut17hb2c3cc4e9207ff38E: argument 1"}
!1828 = distinct !{!1828, !"_ZN4core3ops8function5FnMut8call_mut17hb2c3cc4e9207ff38E"}
!1829 = distinct !{!1829, !1830, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5ba3fdab0b109aaeE: %b"}
!1830 = distinct !{!1830, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5ba3fdab0b109aaeE"}
!1831 = !{!1832, !1833, !1834, !1835}
!1832 = distinct !{!1832, !1824, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!1833 = distinct !{!1833, !1826, !"cmpfunc: %a"}
!1834 = distinct !{!1834, !1828, !"_ZN4core3ops8function5FnMut8call_mut17hb2c3cc4e9207ff38E: argument 0"}
!1835 = distinct !{!1835, !1830, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5ba3fdab0b109aaeE: %a"}
!1836 = !{!1837, !1839, !1841, !1843}
!1837 = distinct !{!1837, !1838, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!1838 = distinct !{!1838, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!1839 = distinct !{!1839, !1840, !"cmpfunc: %b"}
!1840 = distinct !{!1840, !"cmpfunc"}
!1841 = distinct !{!1841, !1842, !"_ZN4core3ops8function5FnMut8call_mut17hb2c3cc4e9207ff38E: argument 1"}
!1842 = distinct !{!1842, !"_ZN4core3ops8function5FnMut8call_mut17hb2c3cc4e9207ff38E"}
!1843 = distinct !{!1843, !1844, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5ba3fdab0b109aaeE: %b"}
!1844 = distinct !{!1844, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5ba3fdab0b109aaeE"}
!1845 = !{!1846, !1847, !1848, !1849}
!1846 = distinct !{!1846, !1838, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!1847 = distinct !{!1847, !1840, !"cmpfunc: %a"}
!1848 = distinct !{!1848, !1842, !"_ZN4core3ops8function5FnMut8call_mut17hb2c3cc4e9207ff38E: argument 0"}
!1849 = distinct !{!1849, !1844, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5ba3fdab0b109aaeE: %a"}
!1850 = !{!1851, !1853}
!1851 = distinct !{!1851, !1852, !"_ZN99_$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h0d6a433dc34646a4E: %self"}
!1852 = distinct !{!1852, !"_ZN99_$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h0d6a433dc34646a4E"}
!1853 = distinct !{!1853, !1854, !"_ZN4core3ptr80drop_in_place$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$i32$GT$$GT$17h91c8a89f30d81e4aE: %_1"}
!1854 = distinct !{!1854, !"_ZN4core3ptr80drop_in_place$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$i32$GT$$GT$17h91c8a89f30d81e4aE"}
!1855 = !{!1856}
!1856 = distinct !{!1856, !1857, !"_ZN4core5array4iter10iter_inner78PolymorphicIter$LT$$u5b$core..mem..maybe_uninit..MaybeUninit$LT$T$GT$$u5d$$GT$4next17h596baefaffcedcbfE: %self.0"}
!1857 = distinct !{!1857, !"_ZN4core5array4iter10iter_inner78PolymorphicIter$LT$$u5b$core..mem..maybe_uninit..MaybeUninit$LT$T$GT$$u5d$$GT$4next17h596baefaffcedcbfE"}
!1858 = !{!1859, !1861}
!1859 = distinct !{!1859, !1860, !"_ZN99_$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hafc32df0be39b4b3E: %self"}
!1860 = distinct !{!1860, !"_ZN99_$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hafc32df0be39b4b3E"}
!1861 = distinct !{!1861, !1862, !"_ZN4core3ptr80drop_in_place$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$f32$GT$$GT$17hd86175c6260a7107E: %_1"}
!1862 = distinct !{!1862, !"_ZN4core3ptr80drop_in_place$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$f32$GT$$GT$17hd86175c6260a7107E"}
!1863 = !{!1864}
!1864 = distinct !{!1864, !1865, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf5b8f37855ac0c3dE: %a"}
!1865 = distinct !{!1865, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf5b8f37855ac0c3dE"}
!1866 = !{!1867}
!1867 = distinct !{!1867, !1865, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf5b8f37855ac0c3dE: %b"}
!1868 = !{!1869}
!1869 = distinct !{!1869, !1870, !"_ZN71MAKING_ELEMENTS_OF_TWO_ARRAYS_SAME_WITH_MINIMUM_INCREMENTDECREMENT_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hf0788034254845f0E: %a"}
!1870 = distinct !{!1870, !"_ZN71MAKING_ELEMENTS_OF_TWO_ARRAYS_SAME_WITH_MINIMUM_INCREMENTDECREMENT_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hf0788034254845f0E"}
!1871 = !{!1872}
!1872 = distinct !{!1872, !1870, !"_ZN71MAKING_ELEMENTS_OF_TWO_ARRAYS_SAME_WITH_MINIMUM_INCREMENTDECREMENT_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hf0788034254845f0E: %b"}
!1873 = !{!1874}
!1874 = distinct !{!1874, !1875, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$f32$GT$11partial_cmp17h51acfdb7fcc2b22aE: %self"}
!1875 = distinct !{!1875, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$f32$GT$11partial_cmp17h51acfdb7fcc2b22aE"}
!1876 = !{!1877}
!1877 = distinct !{!1877, !1875, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$f32$GT$11partial_cmp17h51acfdb7fcc2b22aE: %other"}
!1878 = !{!1874, !1869, !1864}
!1879 = !{!1877, !1872, !1867}
!1880 = !{!1881, !1883, !1885}
!1881 = distinct !{!1881, !1882, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$f32$GT$11partial_cmp17h51acfdb7fcc2b22aE: %other"}
!1882 = distinct !{!1882, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$f32$GT$11partial_cmp17h51acfdb7fcc2b22aE"}
!1883 = distinct !{!1883, !1884, !"_ZN71MAKING_ELEMENTS_OF_TWO_ARRAYS_SAME_WITH_MINIMUM_INCREMENTDECREMENT_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hf0788034254845f0E: %b"}
!1884 = distinct !{!1884, !"_ZN71MAKING_ELEMENTS_OF_TWO_ARRAYS_SAME_WITH_MINIMUM_INCREMENTDECREMENT_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hf0788034254845f0E"}
!1885 = distinct !{!1885, !1886, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf5b8f37855ac0c3dE: %b"}
!1886 = distinct !{!1886, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf5b8f37855ac0c3dE"}
!1887 = !{!1888, !1889, !1890}
!1888 = distinct !{!1888, !1882, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$f32$GT$11partial_cmp17h51acfdb7fcc2b22aE: %self"}
!1889 = distinct !{!1889, !1884, !"_ZN71MAKING_ELEMENTS_OF_TWO_ARRAYS_SAME_WITH_MINIMUM_INCREMENTDECREMENT_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hf0788034254845f0E: %a"}
!1890 = distinct !{!1890, !1886, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf5b8f37855ac0c3dE: %a"}
!1891 = !{!1892, !1894}
!1892 = distinct !{!1892, !1893, !"_ZN99_$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hafc32df0be39b4b3E: %self"}
!1893 = distinct !{!1893, !"_ZN99_$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hafc32df0be39b4b3E"}
!1894 = distinct !{!1894, !1895, !"_ZN4core3ptr80drop_in_place$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$f32$GT$$GT$17hd86175c6260a7107E: %_1"}
!1895 = distinct !{!1895, !"_ZN4core3ptr80drop_in_place$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$f32$GT$$GT$17hd86175c6260a7107E"}
!1896 = !{!1897, !1899}
!1897 = distinct !{!1897, !1898, !"_ZN99_$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hafc32df0be39b4b3E: %self"}
!1898 = distinct !{!1898, !"_ZN99_$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hafc32df0be39b4b3E"}
!1899 = distinct !{!1899, !1900, !"_ZN4core3ptr80drop_in_place$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$f32$GT$$GT$17hd86175c6260a7107E: %_1"}
!1900 = distinct !{!1900, !"_ZN4core3ptr80drop_in_place$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$f32$GT$$GT$17hd86175c6260a7107E"}
!1901 = !{!1902}
!1902 = distinct !{!1902, !1903, !"_ZN4core5array4iter10iter_inner78PolymorphicIter$LT$$u5b$core..mem..maybe_uninit..MaybeUninit$LT$T$GT$$u5d$$GT$4next17h596baefaffcedcbfE: %self.0"}
!1903 = distinct !{!1903, !"_ZN4core5array4iter10iter_inner78PolymorphicIter$LT$$u5b$core..mem..maybe_uninit..MaybeUninit$LT$T$GT$$u5d$$GT$4next17h596baefaffcedcbfE"}
!1904 = !{!1905, !1907}
!1905 = distinct !{!1905, !1906, !"_ZN99_$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hafc32df0be39b4b3E: %self"}
!1906 = distinct !{!1906, !"_ZN99_$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hafc32df0be39b4b3E"}
!1907 = distinct !{!1907, !1908, !"_ZN4core3ptr80drop_in_place$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$f32$GT$$GT$17hd86175c6260a7107E: %_1"}
!1908 = distinct !{!1908, !"_ZN4core3ptr80drop_in_place$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$f32$GT$$GT$17hd86175c6260a7107E"}
!1909 = !{!1910}
!1910 = distinct !{!1910, !1911, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfaa75802b1959b0aE: %a"}
!1911 = distinct !{!1911, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfaa75802b1959b0aE"}
!1912 = !{!1913}
!1913 = distinct !{!1913, !1911, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfaa75802b1959b0aE: %b"}
!1914 = !{!1915}
!1915 = distinct !{!1915, !1916, !"_ZN71MAKING_ELEMENTS_OF_TWO_ARRAYS_SAME_WITH_MINIMUM_INCREMENTDECREMENT_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hbb49eefd79996977E: %a"}
!1916 = distinct !{!1916, !"_ZN71MAKING_ELEMENTS_OF_TWO_ARRAYS_SAME_WITH_MINIMUM_INCREMENTDECREMENT_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hbb49eefd79996977E"}
!1917 = !{!1918}
!1918 = distinct !{!1918, !1916, !"_ZN71MAKING_ELEMENTS_OF_TWO_ARRAYS_SAME_WITH_MINIMUM_INCREMENTDECREMENT_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hbb49eefd79996977E: %b"}
!1919 = !{!1920}
!1920 = distinct !{!1920, !1921, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$f32$GT$11partial_cmp17h51acfdb7fcc2b22aE: %self"}
!1921 = distinct !{!1921, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$f32$GT$11partial_cmp17h51acfdb7fcc2b22aE"}
!1922 = !{!1923}
!1923 = distinct !{!1923, !1921, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$f32$GT$11partial_cmp17h51acfdb7fcc2b22aE: %other"}
!1924 = !{!1920, !1915, !1910}
!1925 = !{!1923, !1918, !1913}
!1926 = !{!1927, !1929, !1931}
!1927 = distinct !{!1927, !1928, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$f32$GT$11partial_cmp17h51acfdb7fcc2b22aE: %other"}
!1928 = distinct !{!1928, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$f32$GT$11partial_cmp17h51acfdb7fcc2b22aE"}
!1929 = distinct !{!1929, !1930, !"_ZN71MAKING_ELEMENTS_OF_TWO_ARRAYS_SAME_WITH_MINIMUM_INCREMENTDECREMENT_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hbb49eefd79996977E: %b"}
!1930 = distinct !{!1930, !"_ZN71MAKING_ELEMENTS_OF_TWO_ARRAYS_SAME_WITH_MINIMUM_INCREMENTDECREMENT_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hbb49eefd79996977E"}
!1931 = distinct !{!1931, !1932, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfaa75802b1959b0aE: %b"}
!1932 = distinct !{!1932, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfaa75802b1959b0aE"}
!1933 = !{!1934, !1935, !1936}
!1934 = distinct !{!1934, !1928, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$f32$GT$11partial_cmp17h51acfdb7fcc2b22aE: %self"}
!1935 = distinct !{!1935, !1930, !"_ZN71MAKING_ELEMENTS_OF_TWO_ARRAYS_SAME_WITH_MINIMUM_INCREMENTDECREMENT_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hbb49eefd79996977E: %a"}
!1936 = distinct !{!1936, !1932, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfaa75802b1959b0aE: %a"}
!1937 = !{!1938, !1940}
!1938 = distinct !{!1938, !1939, !"_ZN99_$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hafc32df0be39b4b3E: %self"}
!1939 = distinct !{!1939, !"_ZN99_$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hafc32df0be39b4b3E"}
!1940 = distinct !{!1940, !1941, !"_ZN4core3ptr80drop_in_place$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$f32$GT$$GT$17hd86175c6260a7107E: %_1"}
!1941 = distinct !{!1941, !"_ZN4core3ptr80drop_in_place$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$f32$GT$$GT$17hd86175c6260a7107E"}
!1942 = !{!1943, !1945}
!1943 = distinct !{!1943, !1944, !"_ZN99_$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hafc32df0be39b4b3E: %self"}
!1944 = distinct !{!1944, !"_ZN99_$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hafc32df0be39b4b3E"}
!1945 = distinct !{!1945, !1946, !"_ZN4core3ptr80drop_in_place$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$f32$GT$$GT$17hd86175c6260a7107E: %_1"}
!1946 = distinct !{!1946, !"_ZN4core3ptr80drop_in_place$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$f32$GT$$GT$17hd86175c6260a7107E"}
!1947 = !{!1948}
!1948 = distinct !{!1948, !1949, !"_ZN5alloc5slice99_$LT$impl$u20$core..slice..sort..stable..BufGuard$LT$T$GT$$u20$for$u20$alloc..vec..Vec$LT$T$GT$$GT$13with_capacity17hecd4caf4aa0eb5ebE: %_0"}
!1949 = distinct !{!1949, !"_ZN5alloc5slice99_$LT$impl$u20$core..slice..sort..stable..BufGuard$LT$T$GT$$u20$for$u20$alloc..vec..Vec$LT$T$GT$$GT$13with_capacity17hecd4caf4aa0eb5ebE"}
!1950 = !{i64 0, i64 2}
!1951 = !{i64 0, i64 -9223372036854775807}
!1952 = !{!1953}
!1953 = distinct !{!1953, !1954, !"_ZN5alloc5slice99_$LT$impl$u20$core..slice..sort..stable..BufGuard$LT$T$GT$$u20$for$u20$alloc..vec..Vec$LT$T$GT$$GT$13with_capacity17h8984867f4936b1d4E: %_0"}
!1954 = distinct !{!1954, !"_ZN5alloc5slice99_$LT$impl$u20$core..slice..sort..stable..BufGuard$LT$T$GT$$u20$for$u20$alloc..vec..Vec$LT$T$GT$$GT$13with_capacity17h8984867f4936b1d4E"}
!1955 = !{!1956}
!1956 = distinct !{!1956, !1957, !"_ZN5alloc5slice99_$LT$impl$u20$core..slice..sort..stable..BufGuard$LT$T$GT$$u20$for$u20$alloc..vec..Vec$LT$T$GT$$GT$13with_capacity17h8984867f4936b1d4E: %_0"}
!1957 = distinct !{!1957, !"_ZN5alloc5slice99_$LT$impl$u20$core..slice..sort..stable..BufGuard$LT$T$GT$$u20$for$u20$alloc..vec..Vec$LT$T$GT$$GT$13with_capacity17h8984867f4936b1d4E"}
!1958 = !{!1959}
!1959 = distinct !{!1959, !1960, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf5b8f37855ac0c3dE: %a"}
!1960 = distinct !{!1960, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf5b8f37855ac0c3dE"}
!1961 = !{!1962}
!1962 = distinct !{!1962, !1960, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf5b8f37855ac0c3dE: %b"}
!1963 = !{!1964}
!1964 = distinct !{!1964, !1965, !"_ZN71MAKING_ELEMENTS_OF_TWO_ARRAYS_SAME_WITH_MINIMUM_INCREMENTDECREMENT_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hf0788034254845f0E: %a"}
!1965 = distinct !{!1965, !"_ZN71MAKING_ELEMENTS_OF_TWO_ARRAYS_SAME_WITH_MINIMUM_INCREMENTDECREMENT_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hf0788034254845f0E"}
!1966 = !{!1967}
!1967 = distinct !{!1967, !1965, !"_ZN71MAKING_ELEMENTS_OF_TWO_ARRAYS_SAME_WITH_MINIMUM_INCREMENTDECREMENT_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hf0788034254845f0E: %b"}
!1968 = !{!1969}
!1969 = distinct !{!1969, !1970, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$f32$GT$11partial_cmp17h51acfdb7fcc2b22aE: %self"}
!1970 = distinct !{!1970, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$f32$GT$11partial_cmp17h51acfdb7fcc2b22aE"}
!1971 = !{!1972}
!1972 = distinct !{!1972, !1970, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$f32$GT$11partial_cmp17h51acfdb7fcc2b22aE: %other"}
!1973 = !{!1969, !1964, !1959}
!1974 = !{!1972, !1967, !1962}
!1975 = !{!1964, !1967, !1959, !1962}
!1976 = !{!1977}
!1977 = distinct !{!1977, !1978, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf5b8f37855ac0c3dE: %a"}
!1978 = distinct !{!1978, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf5b8f37855ac0c3dE"}
!1979 = !{!1980}
!1980 = distinct !{!1980, !1978, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf5b8f37855ac0c3dE: %b"}
!1981 = !{!1982}
!1982 = distinct !{!1982, !1983, !"_ZN71MAKING_ELEMENTS_OF_TWO_ARRAYS_SAME_WITH_MINIMUM_INCREMENTDECREMENT_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hf0788034254845f0E: %a"}
!1983 = distinct !{!1983, !"_ZN71MAKING_ELEMENTS_OF_TWO_ARRAYS_SAME_WITH_MINIMUM_INCREMENTDECREMENT_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hf0788034254845f0E"}
!1984 = !{!1985}
!1985 = distinct !{!1985, !1983, !"_ZN71MAKING_ELEMENTS_OF_TWO_ARRAYS_SAME_WITH_MINIMUM_INCREMENTDECREMENT_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hf0788034254845f0E: %b"}
!1986 = !{!1987}
!1987 = distinct !{!1987, !1988, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$f32$GT$11partial_cmp17h51acfdb7fcc2b22aE: %self"}
!1988 = distinct !{!1988, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$f32$GT$11partial_cmp17h51acfdb7fcc2b22aE"}
!1989 = !{!1990}
!1990 = distinct !{!1990, !1988, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$f32$GT$11partial_cmp17h51acfdb7fcc2b22aE: %other"}
!1991 = !{!1987, !1982, !1977}
!1992 = !{!1990, !1985, !1980}
!1993 = !{!1982, !1985, !1977, !1980}
!1994 = !{!1995}
!1995 = distinct !{!1995, !1996, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf5b8f37855ac0c3dE: %a"}
!1996 = distinct !{!1996, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf5b8f37855ac0c3dE"}
!1997 = !{!1998}
!1998 = distinct !{!1998, !1996, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf5b8f37855ac0c3dE: %b"}
!1999 = !{!2000}
!2000 = distinct !{!2000, !2001, !"_ZN71MAKING_ELEMENTS_OF_TWO_ARRAYS_SAME_WITH_MINIMUM_INCREMENTDECREMENT_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hf0788034254845f0E: %a"}
!2001 = distinct !{!2001, !"_ZN71MAKING_ELEMENTS_OF_TWO_ARRAYS_SAME_WITH_MINIMUM_INCREMENTDECREMENT_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hf0788034254845f0E"}
!2002 = !{!2003}
!2003 = distinct !{!2003, !2001, !"_ZN71MAKING_ELEMENTS_OF_TWO_ARRAYS_SAME_WITH_MINIMUM_INCREMENTDECREMENT_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hf0788034254845f0E: %b"}
!2004 = !{!2005}
!2005 = distinct !{!2005, !2006, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$f32$GT$11partial_cmp17h51acfdb7fcc2b22aE: %self"}
!2006 = distinct !{!2006, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$f32$GT$11partial_cmp17h51acfdb7fcc2b22aE"}
!2007 = !{!2008}
!2008 = distinct !{!2008, !2006, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$f32$GT$11partial_cmp17h51acfdb7fcc2b22aE: %other"}
!2009 = !{!2005, !2000, !1995}
!2010 = !{!2008, !2003, !1998}
!2011 = !{!2000, !2003, !1995, !1998}
!2012 = !{!2013, !2015}
!2013 = distinct !{!2013, !2014, !"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse7revswap17h8a3d39d026f6b542E: %a.0"}
!2014 = distinct !{!2014, !"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse7revswap17h8a3d39d026f6b542E"}
!2015 = distinct !{!2015, !2016, !"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17h3a6acaae80669d4eE: %self.0"}
!2016 = distinct !{!2016, !"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17h3a6acaae80669d4eE"}
!2017 = !{!2018}
!2018 = distinct !{!2018, !2014, !"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse7revswap17h8a3d39d026f6b542E: %b.0"}
!2019 = !{!2018, !2015}
!2020 = !{!2013}
!2021 = !{!2022}
!2022 = distinct !{!2022, !2023, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5ba3fdab0b109aaeE: %a"}
!2023 = distinct !{!2023, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5ba3fdab0b109aaeE"}
!2024 = !{!2025}
!2025 = distinct !{!2025, !2023, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5ba3fdab0b109aaeE: %b"}
!2026 = !{!2027}
!2027 = distinct !{!2027, !2028, !"_ZN4core3ops8function5FnMut8call_mut17hb2c3cc4e9207ff38E: argument 0"}
!2028 = distinct !{!2028, !"_ZN4core3ops8function5FnMut8call_mut17hb2c3cc4e9207ff38E"}
!2029 = !{!2030}
!2030 = distinct !{!2030, !2028, !"_ZN4core3ops8function5FnMut8call_mut17hb2c3cc4e9207ff38E: argument 1"}
!2031 = !{!2032}
!2032 = distinct !{!2032, !2033, !"cmpfunc: %a"}
!2033 = distinct !{!2033, !"cmpfunc"}
!2034 = !{!2035}
!2035 = distinct !{!2035, !2033, !"cmpfunc: %b"}
!2036 = !{!2037}
!2037 = distinct !{!2037, !2038, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!2038 = distinct !{!2038, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!2039 = !{!2040}
!2040 = distinct !{!2040, !2038, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!2041 = !{!2037, !2032, !2027, !2022}
!2042 = !{!2040, !2035, !2030, !2025}
!2043 = !{!2044}
!2044 = distinct !{!2044, !2045, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5ba3fdab0b109aaeE: %a"}
!2045 = distinct !{!2045, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5ba3fdab0b109aaeE"}
!2046 = !{!2047}
!2047 = distinct !{!2047, !2045, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5ba3fdab0b109aaeE: %b"}
!2048 = !{!2049}
!2049 = distinct !{!2049, !2050, !"_ZN4core3ops8function5FnMut8call_mut17hb2c3cc4e9207ff38E: argument 0"}
!2050 = distinct !{!2050, !"_ZN4core3ops8function5FnMut8call_mut17hb2c3cc4e9207ff38E"}
!2051 = !{!2052}
!2052 = distinct !{!2052, !2050, !"_ZN4core3ops8function5FnMut8call_mut17hb2c3cc4e9207ff38E: argument 1"}
!2053 = !{!2054}
!2054 = distinct !{!2054, !2055, !"cmpfunc: %a"}
!2055 = distinct !{!2055, !"cmpfunc"}
!2056 = !{!2057}
!2057 = distinct !{!2057, !2055, !"cmpfunc: %b"}
!2058 = !{!2059}
!2059 = distinct !{!2059, !2060, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!2060 = distinct !{!2060, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!2061 = !{!2062}
!2062 = distinct !{!2062, !2060, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!2063 = !{!2059, !2054, !2049, !2044}
!2064 = !{!2062, !2057, !2052, !2047}
!2065 = !{!2066}
!2066 = distinct !{!2066, !2067, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5ba3fdab0b109aaeE: %a"}
!2067 = distinct !{!2067, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5ba3fdab0b109aaeE"}
!2068 = !{!2069}
!2069 = distinct !{!2069, !2067, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5ba3fdab0b109aaeE: %b"}
!2070 = !{!2071}
!2071 = distinct !{!2071, !2072, !"_ZN4core3ops8function5FnMut8call_mut17hb2c3cc4e9207ff38E: argument 0"}
!2072 = distinct !{!2072, !"_ZN4core3ops8function5FnMut8call_mut17hb2c3cc4e9207ff38E"}
!2073 = !{!2074}
!2074 = distinct !{!2074, !2072, !"_ZN4core3ops8function5FnMut8call_mut17hb2c3cc4e9207ff38E: argument 1"}
!2075 = !{!2076}
!2076 = distinct !{!2076, !2077, !"cmpfunc: %a"}
!2077 = distinct !{!2077, !"cmpfunc"}
!2078 = !{!2079}
!2079 = distinct !{!2079, !2077, !"cmpfunc: %b"}
!2080 = !{!2081}
!2081 = distinct !{!2081, !2082, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!2082 = distinct !{!2082, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!2083 = !{!2084}
!2084 = distinct !{!2084, !2082, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!2085 = !{!2081, !2076, !2071, !2066}
!2086 = !{!2084, !2079, !2074, !2069}
!2087 = !{!2088, !2090}
!2088 = distinct !{!2088, !2089, !"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse7revswap17h27ebea7ed6a7000bE: %a.0"}
!2089 = distinct !{!2089, !"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse7revswap17h27ebea7ed6a7000bE"}
!2090 = distinct !{!2090, !2091, !"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17hdff15ccb3625ccf3E: %self.0"}
!2091 = distinct !{!2091, !"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17hdff15ccb3625ccf3E"}
!2092 = !{!2093}
!2093 = distinct !{!2093, !2089, !"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse7revswap17h27ebea7ed6a7000bE: %b.0"}
!2094 = !{!2093, !2090}
!2095 = !{!2088}
!2096 = !{!2097}
!2097 = distinct !{!2097, !2098, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfaa75802b1959b0aE: %a"}
!2098 = distinct !{!2098, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfaa75802b1959b0aE"}
!2099 = !{!2100}
!2100 = distinct !{!2100, !2098, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfaa75802b1959b0aE: %b"}
!2101 = !{!2102}
!2102 = distinct !{!2102, !2103, !"_ZN71MAKING_ELEMENTS_OF_TWO_ARRAYS_SAME_WITH_MINIMUM_INCREMENTDECREMENT_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hbb49eefd79996977E: %a"}
!2103 = distinct !{!2103, !"_ZN71MAKING_ELEMENTS_OF_TWO_ARRAYS_SAME_WITH_MINIMUM_INCREMENTDECREMENT_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hbb49eefd79996977E"}
!2104 = !{!2105}
!2105 = distinct !{!2105, !2103, !"_ZN71MAKING_ELEMENTS_OF_TWO_ARRAYS_SAME_WITH_MINIMUM_INCREMENTDECREMENT_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hbb49eefd79996977E: %b"}
!2106 = !{!2107}
!2107 = distinct !{!2107, !2108, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$f32$GT$11partial_cmp17h51acfdb7fcc2b22aE: %self"}
!2108 = distinct !{!2108, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$f32$GT$11partial_cmp17h51acfdb7fcc2b22aE"}
!2109 = !{!2110}
!2110 = distinct !{!2110, !2108, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$f32$GT$11partial_cmp17h51acfdb7fcc2b22aE: %other"}
!2111 = !{!2107, !2102, !2097}
!2112 = !{!2110, !2105, !2100}
!2113 = !{!2102, !2105, !2097, !2100}
!2114 = !{!2115}
!2115 = distinct !{!2115, !2116, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfaa75802b1959b0aE: %a"}
!2116 = distinct !{!2116, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfaa75802b1959b0aE"}
!2117 = !{!2118}
!2118 = distinct !{!2118, !2116, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfaa75802b1959b0aE: %b"}
!2119 = !{!2120}
!2120 = distinct !{!2120, !2121, !"_ZN71MAKING_ELEMENTS_OF_TWO_ARRAYS_SAME_WITH_MINIMUM_INCREMENTDECREMENT_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hbb49eefd79996977E: %a"}
!2121 = distinct !{!2121, !"_ZN71MAKING_ELEMENTS_OF_TWO_ARRAYS_SAME_WITH_MINIMUM_INCREMENTDECREMENT_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hbb49eefd79996977E"}
!2122 = !{!2123}
!2123 = distinct !{!2123, !2121, !"_ZN71MAKING_ELEMENTS_OF_TWO_ARRAYS_SAME_WITH_MINIMUM_INCREMENTDECREMENT_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hbb49eefd79996977E: %b"}
!2124 = !{!2125}
!2125 = distinct !{!2125, !2126, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$f32$GT$11partial_cmp17h51acfdb7fcc2b22aE: %self"}
!2126 = distinct !{!2126, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$f32$GT$11partial_cmp17h51acfdb7fcc2b22aE"}
!2127 = !{!2128}
!2128 = distinct !{!2128, !2126, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$f32$GT$11partial_cmp17h51acfdb7fcc2b22aE: %other"}
!2129 = !{!2125, !2120, !2115}
!2130 = !{!2128, !2123, !2118}
!2131 = !{!2120, !2123, !2115, !2118}
!2132 = !{!2133}
!2133 = distinct !{!2133, !2134, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfaa75802b1959b0aE: %a"}
!2134 = distinct !{!2134, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfaa75802b1959b0aE"}
!2135 = !{!2136}
!2136 = distinct !{!2136, !2134, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfaa75802b1959b0aE: %b"}
!2137 = !{!2138}
!2138 = distinct !{!2138, !2139, !"_ZN71MAKING_ELEMENTS_OF_TWO_ARRAYS_SAME_WITH_MINIMUM_INCREMENTDECREMENT_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hbb49eefd79996977E: %a"}
!2139 = distinct !{!2139, !"_ZN71MAKING_ELEMENTS_OF_TWO_ARRAYS_SAME_WITH_MINIMUM_INCREMENTDECREMENT_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hbb49eefd79996977E"}
!2140 = !{!2141}
!2141 = distinct !{!2141, !2139, !"_ZN71MAKING_ELEMENTS_OF_TWO_ARRAYS_SAME_WITH_MINIMUM_INCREMENTDECREMENT_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hbb49eefd79996977E: %b"}
!2142 = !{!2143}
!2143 = distinct !{!2143, !2144, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$f32$GT$11partial_cmp17h51acfdb7fcc2b22aE: %self"}
!2144 = distinct !{!2144, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$f32$GT$11partial_cmp17h51acfdb7fcc2b22aE"}
!2145 = !{!2146}
!2146 = distinct !{!2146, !2144, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$f32$GT$11partial_cmp17h51acfdb7fcc2b22aE: %other"}
!2147 = !{!2143, !2138, !2133}
!2148 = !{!2146, !2141, !2136}
!2149 = !{!2138, !2141, !2133, !2136}
!2150 = !{!2151, !2153}
!2151 = distinct !{!2151, !2152, !"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse7revswap17h8a3d39d026f6b542E: %a.0"}
!2152 = distinct !{!2152, !"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse7revswap17h8a3d39d026f6b542E"}
!2153 = distinct !{!2153, !2154, !"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17h3a6acaae80669d4eE: %self.0"}
!2154 = distinct !{!2154, !"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17h3a6acaae80669d4eE"}
!2155 = !{!2156}
!2156 = distinct !{!2156, !2152, !"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse7revswap17h8a3d39d026f6b542E: %b.0"}
!2157 = !{!2156, !2153}
!2158 = !{!2151}
!2159 = !{!2160}
!2160 = distinct !{!2160, !2161, !"_ZN4core5slice4sort6stable5merge5merge17h9f4203c273633beaE: %v.0"}
!2161 = distinct !{!2161, !"_ZN4core5slice4sort6stable5merge5merge17h9f4203c273633beaE"}
!2162 = !{!2163}
!2163 = distinct !{!2163, !2161, !"_ZN4core5slice4sort6stable5merge5merge17h9f4203c273633beaE: %scratch.0"}
!2164 = !{!2160, !2163}
!2165 = !{!2166}
!2166 = distinct !{!2166, !2167, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5ba3fdab0b109aaeE: %a"}
!2167 = distinct !{!2167, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5ba3fdab0b109aaeE"}
!2168 = !{!2169}
!2169 = distinct !{!2169, !2167, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5ba3fdab0b109aaeE: %b"}
!2170 = !{!2171}
!2171 = distinct !{!2171, !2172, !"_ZN4core3ops8function5FnMut8call_mut17hb2c3cc4e9207ff38E: argument 0"}
!2172 = distinct !{!2172, !"_ZN4core3ops8function5FnMut8call_mut17hb2c3cc4e9207ff38E"}
!2173 = !{!2174}
!2174 = distinct !{!2174, !2172, !"_ZN4core3ops8function5FnMut8call_mut17hb2c3cc4e9207ff38E: argument 1"}
!2175 = !{!2176}
!2176 = distinct !{!2176, !2177, !"cmpfunc: %a"}
!2177 = distinct !{!2177, !"cmpfunc"}
!2178 = !{!2179}
!2179 = distinct !{!2179, !2177, !"cmpfunc: %b"}
!2180 = !{!2181}
!2181 = distinct !{!2181, !2182, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!2182 = distinct !{!2182, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!2183 = !{!2184}
!2184 = distinct !{!2184, !2182, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!2185 = !{!2181, !2176, !2171, !2166, !2163}
!2186 = !{!2184, !2179, !2174, !2169, !2187, !2160}
!2187 = distinct !{!2187, !2188, !"_ZN4core5slice4sort6stable5merge19MergeState$LT$T$GT$10merge_down17h542e4881ffcd209aE: %self"}
!2188 = distinct !{!2188, !"_ZN4core5slice4sort6stable5merge19MergeState$LT$T$GT$10merge_down17h542e4881ffcd209aE"}
!2189 = !{!2184, !2179, !2174, !2169, !2160}
!2190 = !{!2181, !2176, !2171, !2166, !2187, !2163}
!2191 = !{!2187, !2163}
!2192 = !{!2193}
!2193 = distinct !{!2193, !2194, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5ba3fdab0b109aaeE: %a"}
!2194 = distinct !{!2194, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5ba3fdab0b109aaeE"}
!2195 = !{!2196}
!2196 = distinct !{!2196, !2194, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5ba3fdab0b109aaeE: %b"}
!2197 = !{!2198}
!2198 = distinct !{!2198, !2199, !"_ZN4core3ops8function5FnMut8call_mut17hb2c3cc4e9207ff38E: argument 0"}
!2199 = distinct !{!2199, !"_ZN4core3ops8function5FnMut8call_mut17hb2c3cc4e9207ff38E"}
!2200 = !{!2201}
!2201 = distinct !{!2201, !2199, !"_ZN4core3ops8function5FnMut8call_mut17hb2c3cc4e9207ff38E: argument 1"}
!2202 = !{!2203}
!2203 = distinct !{!2203, !2204, !"cmpfunc: %a"}
!2204 = distinct !{!2204, !"cmpfunc"}
!2205 = !{!2206}
!2206 = distinct !{!2206, !2204, !"cmpfunc: %b"}
!2207 = !{!2208}
!2208 = distinct !{!2208, !2209, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!2209 = distinct !{!2209, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!2210 = !{!2211}
!2211 = distinct !{!2211, !2209, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!2212 = !{!2208, !2203, !2198, !2193, !2160}
!2213 = !{!2211, !2206, !2201, !2196, !2214, !2163}
!2214 = distinct !{!2214, !2215, !"_ZN4core5slice4sort6stable5merge19MergeState$LT$T$GT$8merge_up17h9f773892963d8bf3E: %self"}
!2215 = distinct !{!2215, !"_ZN4core5slice4sort6stable5merge19MergeState$LT$T$GT$8merge_up17h9f773892963d8bf3E"}
!2216 = !{!2211, !2206, !2201, !2196, !2163}
!2217 = !{!2208, !2203, !2198, !2193, !2214, !2160}
!2218 = !{!2214, !2163}
!2219 = !{!2220, !2222}
!2220 = distinct !{!2220, !2221, !"_ZN95_$LT$core..slice..sort..stable..merge..MergeState$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h2efab797e5fce30cE: %self"}
!2221 = distinct !{!2221, !"_ZN95_$LT$core..slice..sort..stable..merge..MergeState$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h2efab797e5fce30cE"}
!2222 = distinct !{!2222, !2223, !"_ZN4core3ptr76drop_in_place$LT$core..slice..sort..stable..merge..MergeState$LT$i32$GT$$GT$17h8621131f8d35c70bE: %_1"}
!2223 = distinct !{!2223, !"_ZN4core3ptr76drop_in_place$LT$core..slice..sort..stable..merge..MergeState$LT$i32$GT$$GT$17h8621131f8d35c70bE"}
!2224 = !{!2225}
!2225 = distinct !{!2225, !2226, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf5b8f37855ac0c3dE: %a"}
!2226 = distinct !{!2226, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf5b8f37855ac0c3dE"}
!2227 = !{!2228}
!2228 = distinct !{!2228, !2226, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf5b8f37855ac0c3dE: %b"}
!2229 = !{!2230}
!2230 = distinct !{!2230, !2231, !"_ZN71MAKING_ELEMENTS_OF_TWO_ARRAYS_SAME_WITH_MINIMUM_INCREMENTDECREMENT_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hf0788034254845f0E: %a"}
!2231 = distinct !{!2231, !"_ZN71MAKING_ELEMENTS_OF_TWO_ARRAYS_SAME_WITH_MINIMUM_INCREMENTDECREMENT_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hf0788034254845f0E"}
!2232 = !{!2233}
!2233 = distinct !{!2233, !2231, !"_ZN71MAKING_ELEMENTS_OF_TWO_ARRAYS_SAME_WITH_MINIMUM_INCREMENTDECREMENT_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hf0788034254845f0E: %b"}
!2234 = !{!2235}
!2235 = distinct !{!2235, !2236, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$f32$GT$11partial_cmp17h51acfdb7fcc2b22aE: %self"}
!2236 = distinct !{!2236, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$f32$GT$11partial_cmp17h51acfdb7fcc2b22aE"}
!2237 = !{!2238}
!2238 = distinct !{!2238, !2236, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$f32$GT$11partial_cmp17h51acfdb7fcc2b22aE: %other"}
!2239 = !{!2235, !2230, !2225}
!2240 = !{!2238, !2233, !2228}
!2241 = !{!2230, !2233, !2225, !2228}
!2242 = !{!2243}
!2243 = distinct !{!2243, !2244, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5ba3fdab0b109aaeE: %a"}
!2244 = distinct !{!2244, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5ba3fdab0b109aaeE"}
!2245 = !{!2246}
!2246 = distinct !{!2246, !2244, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5ba3fdab0b109aaeE: %b"}
!2247 = !{!2248}
!2248 = distinct !{!2248, !2249, !"_ZN4core3ops8function5FnMut8call_mut17hb2c3cc4e9207ff38E: argument 0"}
!2249 = distinct !{!2249, !"_ZN4core3ops8function5FnMut8call_mut17hb2c3cc4e9207ff38E"}
!2250 = !{!2251}
!2251 = distinct !{!2251, !2249, !"_ZN4core3ops8function5FnMut8call_mut17hb2c3cc4e9207ff38E: argument 1"}
!2252 = !{!2253}
!2253 = distinct !{!2253, !2254, !"cmpfunc: %a"}
!2254 = distinct !{!2254, !"cmpfunc"}
!2255 = !{!2256}
!2256 = distinct !{!2256, !2254, !"cmpfunc: %b"}
!2257 = !{!2258}
!2258 = distinct !{!2258, !2259, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!2259 = distinct !{!2259, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!2260 = !{!2261}
!2261 = distinct !{!2261, !2259, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!2262 = !{!2258, !2253, !2248, !2243}
!2263 = !{!2261, !2256, !2251, !2246}
!2264 = !{!2265}
!2265 = distinct !{!2265, !2266, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfaa75802b1959b0aE: %a"}
!2266 = distinct !{!2266, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfaa75802b1959b0aE"}
!2267 = !{!2268}
!2268 = distinct !{!2268, !2266, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfaa75802b1959b0aE: %b"}
!2269 = !{!2270}
!2270 = distinct !{!2270, !2271, !"_ZN71MAKING_ELEMENTS_OF_TWO_ARRAYS_SAME_WITH_MINIMUM_INCREMENTDECREMENT_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hbb49eefd79996977E: %a"}
!2271 = distinct !{!2271, !"_ZN71MAKING_ELEMENTS_OF_TWO_ARRAYS_SAME_WITH_MINIMUM_INCREMENTDECREMENT_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hbb49eefd79996977E"}
!2272 = !{!2273}
!2273 = distinct !{!2273, !2271, !"_ZN71MAKING_ELEMENTS_OF_TWO_ARRAYS_SAME_WITH_MINIMUM_INCREMENTDECREMENT_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hbb49eefd79996977E: %b"}
!2274 = !{!2275}
!2275 = distinct !{!2275, !2276, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$f32$GT$11partial_cmp17h51acfdb7fcc2b22aE: %self"}
!2276 = distinct !{!2276, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$f32$GT$11partial_cmp17h51acfdb7fcc2b22aE"}
!2277 = !{!2278}
!2278 = distinct !{!2278, !2276, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$f32$GT$11partial_cmp17h51acfdb7fcc2b22aE: %other"}
!2279 = !{!2275, !2270, !2265}
!2280 = !{!2278, !2273, !2268}
!2281 = !{!2270, !2273, !2265, !2268}
!2282 = !{!2283}
!2283 = distinct !{!2283, !2284, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf5b8f37855ac0c3dE: %a"}
!2284 = distinct !{!2284, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf5b8f37855ac0c3dE"}
!2285 = !{!2286}
!2286 = distinct !{!2286, !2284, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf5b8f37855ac0c3dE: %b"}
!2287 = !{!2288}
!2288 = distinct !{!2288, !2289, !"_ZN71MAKING_ELEMENTS_OF_TWO_ARRAYS_SAME_WITH_MINIMUM_INCREMENTDECREMENT_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hf0788034254845f0E: %a"}
!2289 = distinct !{!2289, !"_ZN71MAKING_ELEMENTS_OF_TWO_ARRAYS_SAME_WITH_MINIMUM_INCREMENTDECREMENT_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hf0788034254845f0E"}
!2290 = !{!2291}
!2291 = distinct !{!2291, !2289, !"_ZN71MAKING_ELEMENTS_OF_TWO_ARRAYS_SAME_WITH_MINIMUM_INCREMENTDECREMENT_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hf0788034254845f0E: %b"}
!2292 = !{!2293}
!2293 = distinct !{!2293, !2294, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$f32$GT$11partial_cmp17h51acfdb7fcc2b22aE: %self"}
!2294 = distinct !{!2294, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$f32$GT$11partial_cmp17h51acfdb7fcc2b22aE"}
!2295 = !{!2296}
!2296 = distinct !{!2296, !2294, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$f32$GT$11partial_cmp17h51acfdb7fcc2b22aE: %other"}
!2297 = !{!2293, !2288, !2283}
!2298 = !{!2296, !2291, !2286}
!2299 = !{!2288, !2291, !2283, !2286}
!2300 = !{!2301}
!2301 = distinct !{!2301, !2302, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfaa75802b1959b0aE: %a"}
!2302 = distinct !{!2302, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfaa75802b1959b0aE"}
!2303 = !{!2304}
!2304 = distinct !{!2304, !2302, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfaa75802b1959b0aE: %b"}
!2305 = !{!2306}
!2306 = distinct !{!2306, !2307, !"_ZN71MAKING_ELEMENTS_OF_TWO_ARRAYS_SAME_WITH_MINIMUM_INCREMENTDECREMENT_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hbb49eefd79996977E: %a"}
!2307 = distinct !{!2307, !"_ZN71MAKING_ELEMENTS_OF_TWO_ARRAYS_SAME_WITH_MINIMUM_INCREMENTDECREMENT_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hbb49eefd79996977E"}
!2308 = !{!2309}
!2309 = distinct !{!2309, !2307, !"_ZN71MAKING_ELEMENTS_OF_TWO_ARRAYS_SAME_WITH_MINIMUM_INCREMENTDECREMENT_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hbb49eefd79996977E: %b"}
!2310 = !{!2311}
!2311 = distinct !{!2311, !2312, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$f32$GT$11partial_cmp17h51acfdb7fcc2b22aE: %self"}
!2312 = distinct !{!2312, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$f32$GT$11partial_cmp17h51acfdb7fcc2b22aE"}
!2313 = !{!2314}
!2314 = distinct !{!2314, !2312, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$f32$GT$11partial_cmp17h51acfdb7fcc2b22aE: %other"}
!2315 = !{!2311, !2306, !2301}
!2316 = !{!2314, !2309, !2304}
!2317 = !{!2306, !2309, !2301, !2304}
!2318 = !{!2319}
!2319 = distinct !{!2319, !2320, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5ba3fdab0b109aaeE: %a"}
!2320 = distinct !{!2320, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5ba3fdab0b109aaeE"}
!2321 = !{!2322}
!2322 = distinct !{!2322, !2320, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5ba3fdab0b109aaeE: %b"}
!2323 = !{!2324}
!2324 = distinct !{!2324, !2325, !"_ZN4core3ops8function5FnMut8call_mut17hb2c3cc4e9207ff38E: argument 0"}
!2325 = distinct !{!2325, !"_ZN4core3ops8function5FnMut8call_mut17hb2c3cc4e9207ff38E"}
!2326 = !{!2327}
!2327 = distinct !{!2327, !2325, !"_ZN4core3ops8function5FnMut8call_mut17hb2c3cc4e9207ff38E: argument 1"}
!2328 = !{!2329}
!2329 = distinct !{!2329, !2330, !"cmpfunc: %a"}
!2330 = distinct !{!2330, !"cmpfunc"}
!2331 = !{!2332}
!2332 = distinct !{!2332, !2330, !"cmpfunc: %b"}
!2333 = !{!2334}
!2334 = distinct !{!2334, !2335, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!2335 = distinct !{!2335, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!2336 = !{!2337}
!2337 = distinct !{!2337, !2335, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!2338 = !{!2334, !2329, !2324, !2319}
!2339 = !{!2337, !2332, !2327, !2322}
!2340 = !{!2341}
!2341 = distinct !{!2341, !2342, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5ba3fdab0b109aaeE: %a"}
!2342 = distinct !{!2342, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5ba3fdab0b109aaeE"}
!2343 = !{!2344}
!2344 = distinct !{!2344, !2342, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5ba3fdab0b109aaeE: %b"}
!2345 = !{!2346}
!2346 = distinct !{!2346, !2347, !"_ZN4core3ops8function5FnMut8call_mut17hb2c3cc4e9207ff38E: argument 0"}
!2347 = distinct !{!2347, !"_ZN4core3ops8function5FnMut8call_mut17hb2c3cc4e9207ff38E"}
!2348 = !{!2349}
!2349 = distinct !{!2349, !2347, !"_ZN4core3ops8function5FnMut8call_mut17hb2c3cc4e9207ff38E: argument 1"}
!2350 = !{!2351}
!2351 = distinct !{!2351, !2352, !"cmpfunc: %a"}
!2352 = distinct !{!2352, !"cmpfunc"}
!2353 = !{!2354}
!2354 = distinct !{!2354, !2352, !"cmpfunc: %b"}
!2355 = !{!2356}
!2356 = distinct !{!2356, !2357, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!2357 = distinct !{!2357, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!2358 = !{!2359}
!2359 = distinct !{!2359, !2357, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!2360 = !{!2356, !2351, !2346, !2341}
!2361 = !{!2359, !2354, !2349, !2344, !2362}
!2362 = distinct !{!2362, !2363, !"_ZN4core5slice4sort6stable5merge19MergeState$LT$T$GT$10merge_down17h542e4881ffcd209aE: %self"}
!2363 = distinct !{!2363, !"_ZN4core5slice4sort6stable5merge19MergeState$LT$T$GT$10merge_down17h542e4881ffcd209aE"}
!2364 = !{!2359, !2354, !2349, !2344}
!2365 = !{!2356, !2351, !2346, !2341, !2362}
!2366 = !{!2362}
!2367 = !{!2368}
!2368 = distinct !{!2368, !2369, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5ba3fdab0b109aaeE: %a"}
!2369 = distinct !{!2369, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5ba3fdab0b109aaeE"}
!2370 = !{!2371}
!2371 = distinct !{!2371, !2369, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5ba3fdab0b109aaeE: %b"}
!2372 = !{!2373}
!2373 = distinct !{!2373, !2374, !"_ZN4core3ops8function5FnMut8call_mut17hb2c3cc4e9207ff38E: argument 0"}
!2374 = distinct !{!2374, !"_ZN4core3ops8function5FnMut8call_mut17hb2c3cc4e9207ff38E"}
!2375 = !{!2376}
!2376 = distinct !{!2376, !2374, !"_ZN4core3ops8function5FnMut8call_mut17hb2c3cc4e9207ff38E: argument 1"}
!2377 = !{!2378}
!2378 = distinct !{!2378, !2379, !"cmpfunc: %a"}
!2379 = distinct !{!2379, !"cmpfunc"}
!2380 = !{!2381}
!2381 = distinct !{!2381, !2379, !"cmpfunc: %b"}
!2382 = !{!2383}
!2383 = distinct !{!2383, !2384, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!2384 = distinct !{!2384, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!2385 = !{!2386}
!2386 = distinct !{!2386, !2384, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!2387 = !{!2383, !2378, !2373, !2368}
!2388 = !{!2386, !2381, !2376, !2371, !2389}
!2389 = distinct !{!2389, !2390, !"_ZN4core5slice4sort6stable5merge19MergeState$LT$T$GT$8merge_up17h9f773892963d8bf3E: %self"}
!2390 = distinct !{!2390, !"_ZN4core5slice4sort6stable5merge19MergeState$LT$T$GT$8merge_up17h9f773892963d8bf3E"}
!2391 = !{!2386, !2381, !2376, !2371}
!2392 = !{!2383, !2378, !2373, !2368, !2389}
!2393 = !{!2389}
!2394 = !{!2395, !2397}
!2395 = distinct !{!2395, !2396, !"_ZN95_$LT$core..slice..sort..stable..merge..MergeState$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h2efab797e5fce30cE: %self"}
!2396 = distinct !{!2396, !"_ZN95_$LT$core..slice..sort..stable..merge..MergeState$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h2efab797e5fce30cE"}
!2397 = distinct !{!2397, !2398, !"_ZN4core3ptr76drop_in_place$LT$core..slice..sort..stable..merge..MergeState$LT$i32$GT$$GT$17h8621131f8d35c70bE: %_1"}
!2398 = distinct !{!2398, !"_ZN4core3ptr76drop_in_place$LT$core..slice..sort..stable..merge..MergeState$LT$i32$GT$$GT$17h8621131f8d35c70bE"}
!2399 = !{!2400}
!2400 = distinct !{!2400, !2401, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf5b8f37855ac0c3dE: %a"}
!2401 = distinct !{!2401, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf5b8f37855ac0c3dE"}
!2402 = !{!2403}
!2403 = distinct !{!2403, !2401, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf5b8f37855ac0c3dE: %b"}
!2404 = !{!2405}
!2405 = distinct !{!2405, !2406, !"_ZN71MAKING_ELEMENTS_OF_TWO_ARRAYS_SAME_WITH_MINIMUM_INCREMENTDECREMENT_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hf0788034254845f0E: %a"}
!2406 = distinct !{!2406, !"_ZN71MAKING_ELEMENTS_OF_TWO_ARRAYS_SAME_WITH_MINIMUM_INCREMENTDECREMENT_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hf0788034254845f0E"}
!2407 = !{!2408}
!2408 = distinct !{!2408, !2406, !"_ZN71MAKING_ELEMENTS_OF_TWO_ARRAYS_SAME_WITH_MINIMUM_INCREMENTDECREMENT_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hf0788034254845f0E: %b"}
!2409 = !{!2410}
!2410 = distinct !{!2410, !2411, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$f32$GT$11partial_cmp17h51acfdb7fcc2b22aE: %self"}
!2411 = distinct !{!2411, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$f32$GT$11partial_cmp17h51acfdb7fcc2b22aE"}
!2412 = !{!2413}
!2413 = distinct !{!2413, !2411, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$f32$GT$11partial_cmp17h51acfdb7fcc2b22aE: %other"}
!2414 = !{!2410, !2405, !2400}
!2415 = !{!2413, !2408, !2403, !2416}
!2416 = distinct !{!2416, !2417, !"_ZN4core5slice4sort6stable5merge19MergeState$LT$T$GT$10merge_down17h16366ab7944e4645E: %self"}
!2417 = distinct !{!2417, !"_ZN4core5slice4sort6stable5merge19MergeState$LT$T$GT$10merge_down17h16366ab7944e4645E"}
!2418 = !{!2413, !2408, !2403}
!2419 = !{!2410, !2405, !2400, !2416}
!2420 = !{!2416}
!2421 = !{!2422}
!2422 = distinct !{!2422, !2423, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf5b8f37855ac0c3dE: %a"}
!2423 = distinct !{!2423, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf5b8f37855ac0c3dE"}
!2424 = !{!2425}
!2425 = distinct !{!2425, !2423, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf5b8f37855ac0c3dE: %b"}
!2426 = !{!2427}
!2427 = distinct !{!2427, !2428, !"_ZN71MAKING_ELEMENTS_OF_TWO_ARRAYS_SAME_WITH_MINIMUM_INCREMENTDECREMENT_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hf0788034254845f0E: %a"}
!2428 = distinct !{!2428, !"_ZN71MAKING_ELEMENTS_OF_TWO_ARRAYS_SAME_WITH_MINIMUM_INCREMENTDECREMENT_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hf0788034254845f0E"}
!2429 = !{!2430}
!2430 = distinct !{!2430, !2428, !"_ZN71MAKING_ELEMENTS_OF_TWO_ARRAYS_SAME_WITH_MINIMUM_INCREMENTDECREMENT_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hf0788034254845f0E: %b"}
!2431 = !{!2432}
!2432 = distinct !{!2432, !2433, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$f32$GT$11partial_cmp17h51acfdb7fcc2b22aE: %self"}
!2433 = distinct !{!2433, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$f32$GT$11partial_cmp17h51acfdb7fcc2b22aE"}
!2434 = !{!2435}
!2435 = distinct !{!2435, !2433, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$f32$GT$11partial_cmp17h51acfdb7fcc2b22aE: %other"}
!2436 = !{!2432, !2427, !2422}
!2437 = !{!2435, !2430, !2425, !2438}
!2438 = distinct !{!2438, !2439, !"_ZN4core5slice4sort6stable5merge19MergeState$LT$T$GT$8merge_up17h4d9850fc77e0e29aE: %self"}
!2439 = distinct !{!2439, !"_ZN4core5slice4sort6stable5merge19MergeState$LT$T$GT$8merge_up17h4d9850fc77e0e29aE"}
!2440 = !{!2435, !2430, !2425}
!2441 = !{!2432, !2427, !2422, !2438}
!2442 = !{!2438}
!2443 = !{!2444, !2446}
!2444 = distinct !{!2444, !2445, !"_ZN95_$LT$core..slice..sort..stable..merge..MergeState$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h49f32e796e534003E: %self"}
!2445 = distinct !{!2445, !"_ZN95_$LT$core..slice..sort..stable..merge..MergeState$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h49f32e796e534003E"}
!2446 = distinct !{!2446, !2447, !"_ZN4core3ptr76drop_in_place$LT$core..slice..sort..stable..merge..MergeState$LT$f32$GT$$GT$17h19de0c91a1d533c3E: %_1"}
!2447 = distinct !{!2447, !"_ZN4core3ptr76drop_in_place$LT$core..slice..sort..stable..merge..MergeState$LT$f32$GT$$GT$17h19de0c91a1d533c3E"}
!2448 = !{!2449, !2451}
!2449 = distinct !{!2449, !2450, !"_ZN95_$LT$core..slice..sort..stable..merge..MergeState$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h49f32e796e534003E: %self"}
!2450 = distinct !{!2450, !"_ZN95_$LT$core..slice..sort..stable..merge..MergeState$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h49f32e796e534003E"}
!2451 = distinct !{!2451, !2452, !"_ZN4core3ptr76drop_in_place$LT$core..slice..sort..stable..merge..MergeState$LT$f32$GT$$GT$17h19de0c91a1d533c3E: %_1"}
!2452 = distinct !{!2452, !"_ZN4core3ptr76drop_in_place$LT$core..slice..sort..stable..merge..MergeState$LT$f32$GT$$GT$17h19de0c91a1d533c3E"}
!2453 = !{!2454}
!2454 = distinct !{!2454, !2455, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfaa75802b1959b0aE: %a"}
!2455 = distinct !{!2455, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfaa75802b1959b0aE"}
!2456 = !{!2457}
!2457 = distinct !{!2457, !2455, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfaa75802b1959b0aE: %b"}
!2458 = !{!2459}
!2459 = distinct !{!2459, !2460, !"_ZN71MAKING_ELEMENTS_OF_TWO_ARRAYS_SAME_WITH_MINIMUM_INCREMENTDECREMENT_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hbb49eefd79996977E: %a"}
!2460 = distinct !{!2460, !"_ZN71MAKING_ELEMENTS_OF_TWO_ARRAYS_SAME_WITH_MINIMUM_INCREMENTDECREMENT_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hbb49eefd79996977E"}
!2461 = !{!2462}
!2462 = distinct !{!2462, !2460, !"_ZN71MAKING_ELEMENTS_OF_TWO_ARRAYS_SAME_WITH_MINIMUM_INCREMENTDECREMENT_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hbb49eefd79996977E: %b"}
!2463 = !{!2464}
!2464 = distinct !{!2464, !2465, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$f32$GT$11partial_cmp17h51acfdb7fcc2b22aE: %self"}
!2465 = distinct !{!2465, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$f32$GT$11partial_cmp17h51acfdb7fcc2b22aE"}
!2466 = !{!2467}
!2467 = distinct !{!2467, !2465, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$f32$GT$11partial_cmp17h51acfdb7fcc2b22aE: %other"}
!2468 = !{!2464, !2459, !2454}
!2469 = !{!2467, !2462, !2457, !2470}
!2470 = distinct !{!2470, !2471, !"_ZN4core5slice4sort6stable5merge19MergeState$LT$T$GT$10merge_down17hd94ddbcb399da1dfE: %self"}
!2471 = distinct !{!2471, !"_ZN4core5slice4sort6stable5merge19MergeState$LT$T$GT$10merge_down17hd94ddbcb399da1dfE"}
!2472 = !{!2467, !2462, !2457}
!2473 = !{!2464, !2459, !2454, !2470}
!2474 = !{!2470}
!2475 = !{!2476}
!2476 = distinct !{!2476, !2477, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfaa75802b1959b0aE: %a"}
!2477 = distinct !{!2477, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfaa75802b1959b0aE"}
!2478 = !{!2479}
!2479 = distinct !{!2479, !2477, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfaa75802b1959b0aE: %b"}
!2480 = !{!2481}
!2481 = distinct !{!2481, !2482, !"_ZN71MAKING_ELEMENTS_OF_TWO_ARRAYS_SAME_WITH_MINIMUM_INCREMENTDECREMENT_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hbb49eefd79996977E: %a"}
!2482 = distinct !{!2482, !"_ZN71MAKING_ELEMENTS_OF_TWO_ARRAYS_SAME_WITH_MINIMUM_INCREMENTDECREMENT_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hbb49eefd79996977E"}
!2483 = !{!2484}
!2484 = distinct !{!2484, !2482, !"_ZN71MAKING_ELEMENTS_OF_TWO_ARRAYS_SAME_WITH_MINIMUM_INCREMENTDECREMENT_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hbb49eefd79996977E: %b"}
!2485 = !{!2486}
!2486 = distinct !{!2486, !2487, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$f32$GT$11partial_cmp17h51acfdb7fcc2b22aE: %self"}
!2487 = distinct !{!2487, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$f32$GT$11partial_cmp17h51acfdb7fcc2b22aE"}
!2488 = !{!2489}
!2489 = distinct !{!2489, !2487, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$f32$GT$11partial_cmp17h51acfdb7fcc2b22aE: %other"}
!2490 = !{!2486, !2481, !2476}
!2491 = !{!2489, !2484, !2479, !2492}
!2492 = distinct !{!2492, !2493, !"_ZN4core5slice4sort6stable5merge19MergeState$LT$T$GT$8merge_up17h7ebf91b44de539cfE: %self"}
!2493 = distinct !{!2493, !"_ZN4core5slice4sort6stable5merge19MergeState$LT$T$GT$8merge_up17h7ebf91b44de539cfE"}
!2494 = !{!2489, !2484, !2479}
!2495 = !{!2486, !2481, !2476, !2492}
!2496 = !{!2492}
!2497 = !{!2498, !2500}
!2498 = distinct !{!2498, !2499, !"_ZN95_$LT$core..slice..sort..stable..merge..MergeState$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h49f32e796e534003E: %self"}
!2499 = distinct !{!2499, !"_ZN95_$LT$core..slice..sort..stable..merge..MergeState$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h49f32e796e534003E"}
!2500 = distinct !{!2500, !2501, !"_ZN4core3ptr76drop_in_place$LT$core..slice..sort..stable..merge..MergeState$LT$f32$GT$$GT$17h19de0c91a1d533c3E: %_1"}
!2501 = distinct !{!2501, !"_ZN4core3ptr76drop_in_place$LT$core..slice..sort..stable..merge..MergeState$LT$f32$GT$$GT$17h19de0c91a1d533c3E"}
!2502 = !{!2503, !2505}
!2503 = distinct !{!2503, !2504, !"_ZN95_$LT$core..slice..sort..stable..merge..MergeState$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h49f32e796e534003E: %self"}
!2504 = distinct !{!2504, !"_ZN95_$LT$core..slice..sort..stable..merge..MergeState$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h49f32e796e534003E"}
!2505 = distinct !{!2505, !2506, !"_ZN4core3ptr76drop_in_place$LT$core..slice..sort..stable..merge..MergeState$LT$f32$GT$$GT$17h19de0c91a1d533c3E: %_1"}
!2506 = distinct !{!2506, !"_ZN4core3ptr76drop_in_place$LT$core..slice..sort..stable..merge..MergeState$LT$f32$GT$$GT$17h19de0c91a1d533c3E"}
!2507 = !{!"branch_weights", i32 4000000, i32 4001}
!2508 = !{!2509}
!2509 = distinct !{!2509, !2510, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfaa75802b1959b0aE: %a"}
!2510 = distinct !{!2510, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfaa75802b1959b0aE"}
!2511 = !{!2512}
!2512 = distinct !{!2512, !2510, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfaa75802b1959b0aE: %b"}
!2513 = !{!2514}
!2514 = distinct !{!2514, !2515, !"_ZN71MAKING_ELEMENTS_OF_TWO_ARRAYS_SAME_WITH_MINIMUM_INCREMENTDECREMENT_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hbb49eefd79996977E: %a"}
!2515 = distinct !{!2515, !"_ZN71MAKING_ELEMENTS_OF_TWO_ARRAYS_SAME_WITH_MINIMUM_INCREMENTDECREMENT_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hbb49eefd79996977E"}
!2516 = !{!2517}
!2517 = distinct !{!2517, !2515, !"_ZN71MAKING_ELEMENTS_OF_TWO_ARRAYS_SAME_WITH_MINIMUM_INCREMENTDECREMENT_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hbb49eefd79996977E: %b"}
!2518 = !{!2519}
!2519 = distinct !{!2519, !2520, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$f32$GT$11partial_cmp17h51acfdb7fcc2b22aE: %self"}
!2520 = distinct !{!2520, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$f32$GT$11partial_cmp17h51acfdb7fcc2b22aE"}
!2521 = !{!2522}
!2522 = distinct !{!2522, !2520, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$f32$GT$11partial_cmp17h51acfdb7fcc2b22aE: %other"}
!2523 = !{!2519, !2514, !2509}
!2524 = !{!2522, !2517, !2512}
!2525 = !{!2514, !2517, !2509, !2512}
!2526 = !{!2527}
!2527 = distinct !{!2527, !2528, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h03adadb428352a79E: %self"}
!2528 = distinct !{!2528, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h03adadb428352a79E"}
!2529 = !{!2530}
!2530 = distinct !{!2530, !2531, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfaa75802b1959b0aE: %a"}
!2531 = distinct !{!2531, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfaa75802b1959b0aE"}
!2532 = !{!2533}
!2533 = distinct !{!2533, !2531, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfaa75802b1959b0aE: %b"}
!2534 = !{!2535}
!2535 = distinct !{!2535, !2536, !"_ZN71MAKING_ELEMENTS_OF_TWO_ARRAYS_SAME_WITH_MINIMUM_INCREMENTDECREMENT_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hbb49eefd79996977E: %a"}
!2536 = distinct !{!2536, !"_ZN71MAKING_ELEMENTS_OF_TWO_ARRAYS_SAME_WITH_MINIMUM_INCREMENTDECREMENT_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hbb49eefd79996977E"}
!2537 = !{!2538}
!2538 = distinct !{!2538, !2536, !"_ZN71MAKING_ELEMENTS_OF_TWO_ARRAYS_SAME_WITH_MINIMUM_INCREMENTDECREMENT_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hbb49eefd79996977E: %b"}
!2539 = !{!2540}
!2540 = distinct !{!2540, !2541, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$f32$GT$11partial_cmp17h51acfdb7fcc2b22aE: %self"}
!2541 = distinct !{!2541, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$f32$GT$11partial_cmp17h51acfdb7fcc2b22aE"}
!2542 = !{!2543}
!2543 = distinct !{!2543, !2541, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$f32$GT$11partial_cmp17h51acfdb7fcc2b22aE: %other"}
!2544 = !{!2540, !2535, !2530}
!2545 = !{!2543, !2538, !2533}
!2546 = !{!2535, !2538, !2530, !2533}
!2547 = !{!2548}
!2548 = distinct !{!2548, !2549, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h03adadb428352a79E: %self"}
!2549 = distinct !{!2549, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h03adadb428352a79E"}
!2550 = !{!2551}
!2551 = distinct !{!2551, !2552, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfaa75802b1959b0aE: %a"}
!2552 = distinct !{!2552, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfaa75802b1959b0aE"}
!2553 = !{!2554}
!2554 = distinct !{!2554, !2552, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfaa75802b1959b0aE: %b"}
!2555 = !{!2556}
!2556 = distinct !{!2556, !2557, !"_ZN71MAKING_ELEMENTS_OF_TWO_ARRAYS_SAME_WITH_MINIMUM_INCREMENTDECREMENT_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hbb49eefd79996977E: %a"}
!2557 = distinct !{!2557, !"_ZN71MAKING_ELEMENTS_OF_TWO_ARRAYS_SAME_WITH_MINIMUM_INCREMENTDECREMENT_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hbb49eefd79996977E"}
!2558 = !{!2559}
!2559 = distinct !{!2559, !2557, !"_ZN71MAKING_ELEMENTS_OF_TWO_ARRAYS_SAME_WITH_MINIMUM_INCREMENTDECREMENT_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hbb49eefd79996977E: %b"}
!2560 = !{!2561}
!2561 = distinct !{!2561, !2562, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$f32$GT$11partial_cmp17h51acfdb7fcc2b22aE: %self"}
!2562 = distinct !{!2562, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$f32$GT$11partial_cmp17h51acfdb7fcc2b22aE"}
!2563 = !{!2564}
!2564 = distinct !{!2564, !2562, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$f32$GT$11partial_cmp17h51acfdb7fcc2b22aE: %other"}
!2565 = !{!2561, !2556, !2551}
!2566 = !{!2564, !2559, !2554}
!2567 = !{!2556, !2559, !2551, !2554}
!2568 = !{!2569}
!2569 = distinct !{!2569, !2570, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h03adadb428352a79E: %self"}
!2570 = distinct !{!2570, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h03adadb428352a79E"}
!2571 = !{!2572}
!2572 = distinct !{!2572, !2573, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfaa75802b1959b0aE: %a"}
!2573 = distinct !{!2573, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfaa75802b1959b0aE"}
!2574 = !{!2575}
!2575 = distinct !{!2575, !2573, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfaa75802b1959b0aE: %b"}
!2576 = !{!2577}
!2577 = distinct !{!2577, !2578, !"_ZN71MAKING_ELEMENTS_OF_TWO_ARRAYS_SAME_WITH_MINIMUM_INCREMENTDECREMENT_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hbb49eefd79996977E: %a"}
!2578 = distinct !{!2578, !"_ZN71MAKING_ELEMENTS_OF_TWO_ARRAYS_SAME_WITH_MINIMUM_INCREMENTDECREMENT_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hbb49eefd79996977E"}
!2579 = !{!2580}
!2580 = distinct !{!2580, !2578, !"_ZN71MAKING_ELEMENTS_OF_TWO_ARRAYS_SAME_WITH_MINIMUM_INCREMENTDECREMENT_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hbb49eefd79996977E: %b"}
!2581 = !{!2582}
!2582 = distinct !{!2582, !2583, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$f32$GT$11partial_cmp17h51acfdb7fcc2b22aE: %self"}
!2583 = distinct !{!2583, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$f32$GT$11partial_cmp17h51acfdb7fcc2b22aE"}
!2584 = !{!2585}
!2585 = distinct !{!2585, !2583, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$f32$GT$11partial_cmp17h51acfdb7fcc2b22aE: %other"}
!2586 = !{!2582, !2577, !2572}
!2587 = !{!2585, !2580, !2575}
!2588 = !{!2577, !2580, !2572, !2575}
!2589 = !{!2590}
!2590 = distinct !{!2590, !2591, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h03adadb428352a79E: %self"}
!2591 = distinct !{!2591, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h03adadb428352a79E"}
!2592 = !{!2593}
!2593 = distinct !{!2593, !2594, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfaa75802b1959b0aE: %a"}
!2594 = distinct !{!2594, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfaa75802b1959b0aE"}
!2595 = !{!2596}
!2596 = distinct !{!2596, !2594, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfaa75802b1959b0aE: %b"}
!2597 = !{!2598}
!2598 = distinct !{!2598, !2599, !"_ZN71MAKING_ELEMENTS_OF_TWO_ARRAYS_SAME_WITH_MINIMUM_INCREMENTDECREMENT_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hbb49eefd79996977E: %a"}
!2599 = distinct !{!2599, !"_ZN71MAKING_ELEMENTS_OF_TWO_ARRAYS_SAME_WITH_MINIMUM_INCREMENTDECREMENT_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hbb49eefd79996977E"}
!2600 = !{!2601}
!2601 = distinct !{!2601, !2599, !"_ZN71MAKING_ELEMENTS_OF_TWO_ARRAYS_SAME_WITH_MINIMUM_INCREMENTDECREMENT_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hbb49eefd79996977E: %b"}
!2602 = !{!2603}
!2603 = distinct !{!2603, !2604, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$f32$GT$11partial_cmp17h51acfdb7fcc2b22aE: %self"}
!2604 = distinct !{!2604, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$f32$GT$11partial_cmp17h51acfdb7fcc2b22aE"}
!2605 = !{!2606}
!2606 = distinct !{!2606, !2604, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$f32$GT$11partial_cmp17h51acfdb7fcc2b22aE: %other"}
!2607 = !{!2603, !2598, !2593}
!2608 = !{!2606, !2601, !2596}
!2609 = !{!2598, !2601, !2593, !2596}
!2610 = !{!2611}
!2611 = distinct !{!2611, !2612, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h03adadb428352a79E: %self"}
!2612 = distinct !{!2612, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h03adadb428352a79E"}
!2613 = !{!2614}
!2614 = distinct !{!2614, !2615, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h03adadb428352a79E: %self"}
!2615 = distinct !{!2615, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h03adadb428352a79E"}
!2616 = distinct !{!2616, !2617}
!2617 = !{!"llvm.loop.unroll.disable"}
!2618 = !{!2619}
!2619 = distinct !{!2619, !2620, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf5b8f37855ac0c3dE: %a"}
!2620 = distinct !{!2620, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf5b8f37855ac0c3dE"}
!2621 = !{!2622}
!2622 = distinct !{!2622, !2620, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf5b8f37855ac0c3dE: %b"}
!2623 = !{!2624}
!2624 = distinct !{!2624, !2625, !"_ZN71MAKING_ELEMENTS_OF_TWO_ARRAYS_SAME_WITH_MINIMUM_INCREMENTDECREMENT_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hf0788034254845f0E: %a"}
!2625 = distinct !{!2625, !"_ZN71MAKING_ELEMENTS_OF_TWO_ARRAYS_SAME_WITH_MINIMUM_INCREMENTDECREMENT_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hf0788034254845f0E"}
!2626 = !{!2627}
!2627 = distinct !{!2627, !2625, !"_ZN71MAKING_ELEMENTS_OF_TWO_ARRAYS_SAME_WITH_MINIMUM_INCREMENTDECREMENT_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hf0788034254845f0E: %b"}
!2628 = !{!2629}
!2629 = distinct !{!2629, !2630, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$f32$GT$11partial_cmp17h51acfdb7fcc2b22aE: %self"}
!2630 = distinct !{!2630, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$f32$GT$11partial_cmp17h51acfdb7fcc2b22aE"}
!2631 = !{!2632}
!2632 = distinct !{!2632, !2630, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$f32$GT$11partial_cmp17h51acfdb7fcc2b22aE: %other"}
!2633 = !{!2629, !2624, !2619}
!2634 = !{!2632, !2627, !2622}
!2635 = !{!2624, !2627, !2619, !2622}
!2636 = !{!2637}
!2637 = distinct !{!2637, !2638, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h03adadb428352a79E: %self"}
!2638 = distinct !{!2638, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h03adadb428352a79E"}
!2639 = !{!2640}
!2640 = distinct !{!2640, !2641, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf5b8f37855ac0c3dE: %a"}
!2641 = distinct !{!2641, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf5b8f37855ac0c3dE"}
!2642 = !{!2643}
!2643 = distinct !{!2643, !2641, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf5b8f37855ac0c3dE: %b"}
!2644 = !{!2645}
!2645 = distinct !{!2645, !2646, !"_ZN71MAKING_ELEMENTS_OF_TWO_ARRAYS_SAME_WITH_MINIMUM_INCREMENTDECREMENT_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hf0788034254845f0E: %a"}
!2646 = distinct !{!2646, !"_ZN71MAKING_ELEMENTS_OF_TWO_ARRAYS_SAME_WITH_MINIMUM_INCREMENTDECREMENT_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hf0788034254845f0E"}
!2647 = !{!2648}
!2648 = distinct !{!2648, !2646, !"_ZN71MAKING_ELEMENTS_OF_TWO_ARRAYS_SAME_WITH_MINIMUM_INCREMENTDECREMENT_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hf0788034254845f0E: %b"}
!2649 = !{!2650}
!2650 = distinct !{!2650, !2651, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$f32$GT$11partial_cmp17h51acfdb7fcc2b22aE: %self"}
!2651 = distinct !{!2651, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$f32$GT$11partial_cmp17h51acfdb7fcc2b22aE"}
!2652 = !{!2653}
!2653 = distinct !{!2653, !2651, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$f32$GT$11partial_cmp17h51acfdb7fcc2b22aE: %other"}
!2654 = !{!2650, !2645, !2640}
!2655 = !{!2653, !2648, !2643}
!2656 = !{!2645, !2648, !2640, !2643}
!2657 = !{!2658}
!2658 = distinct !{!2658, !2659, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h03adadb428352a79E: %self"}
!2659 = distinct !{!2659, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h03adadb428352a79E"}
!2660 = !{!2661}
!2661 = distinct !{!2661, !2662, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf5b8f37855ac0c3dE: %a"}
!2662 = distinct !{!2662, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf5b8f37855ac0c3dE"}
!2663 = !{!2664}
!2664 = distinct !{!2664, !2662, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf5b8f37855ac0c3dE: %b"}
!2665 = !{!2666}
!2666 = distinct !{!2666, !2667, !"_ZN71MAKING_ELEMENTS_OF_TWO_ARRAYS_SAME_WITH_MINIMUM_INCREMENTDECREMENT_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hf0788034254845f0E: %a"}
!2667 = distinct !{!2667, !"_ZN71MAKING_ELEMENTS_OF_TWO_ARRAYS_SAME_WITH_MINIMUM_INCREMENTDECREMENT_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hf0788034254845f0E"}
!2668 = !{!2669}
!2669 = distinct !{!2669, !2667, !"_ZN71MAKING_ELEMENTS_OF_TWO_ARRAYS_SAME_WITH_MINIMUM_INCREMENTDECREMENT_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hf0788034254845f0E: %b"}
!2670 = !{!2671}
!2671 = distinct !{!2671, !2672, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$f32$GT$11partial_cmp17h51acfdb7fcc2b22aE: %self"}
!2672 = distinct !{!2672, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$f32$GT$11partial_cmp17h51acfdb7fcc2b22aE"}
!2673 = !{!2674}
!2674 = distinct !{!2674, !2672, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$f32$GT$11partial_cmp17h51acfdb7fcc2b22aE: %other"}
!2675 = !{!2671, !2666, !2661}
!2676 = !{!2674, !2669, !2664}
!2677 = !{!2666, !2669, !2661, !2664}
!2678 = !{!2679}
!2679 = distinct !{!2679, !2680, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h03adadb428352a79E: %self"}
!2680 = distinct !{!2680, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h03adadb428352a79E"}
!2681 = !{!2682}
!2682 = distinct !{!2682, !2683, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf5b8f37855ac0c3dE: %a"}
!2683 = distinct !{!2683, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf5b8f37855ac0c3dE"}
!2684 = !{!2685}
!2685 = distinct !{!2685, !2683, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf5b8f37855ac0c3dE: %b"}
!2686 = !{!2687}
!2687 = distinct !{!2687, !2688, !"_ZN71MAKING_ELEMENTS_OF_TWO_ARRAYS_SAME_WITH_MINIMUM_INCREMENTDECREMENT_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hf0788034254845f0E: %a"}
!2688 = distinct !{!2688, !"_ZN71MAKING_ELEMENTS_OF_TWO_ARRAYS_SAME_WITH_MINIMUM_INCREMENTDECREMENT_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hf0788034254845f0E"}
!2689 = !{!2690}
!2690 = distinct !{!2690, !2688, !"_ZN71MAKING_ELEMENTS_OF_TWO_ARRAYS_SAME_WITH_MINIMUM_INCREMENTDECREMENT_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hf0788034254845f0E: %b"}
!2691 = !{!2692}
!2692 = distinct !{!2692, !2693, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$f32$GT$11partial_cmp17h51acfdb7fcc2b22aE: %self"}
!2693 = distinct !{!2693, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$f32$GT$11partial_cmp17h51acfdb7fcc2b22aE"}
!2694 = !{!2695}
!2695 = distinct !{!2695, !2693, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$f32$GT$11partial_cmp17h51acfdb7fcc2b22aE: %other"}
!2696 = !{!2692, !2687, !2682}
!2697 = !{!2695, !2690, !2685}
!2698 = !{!2687, !2690, !2682, !2685}
!2699 = !{!2700}
!2700 = distinct !{!2700, !2701, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h03adadb428352a79E: %self"}
!2701 = distinct !{!2701, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h03adadb428352a79E"}
!2702 = !{!2703}
!2703 = distinct !{!2703, !2704, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf5b8f37855ac0c3dE: %a"}
!2704 = distinct !{!2704, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf5b8f37855ac0c3dE"}
!2705 = !{!2706}
!2706 = distinct !{!2706, !2704, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf5b8f37855ac0c3dE: %b"}
!2707 = !{!2708}
!2708 = distinct !{!2708, !2709, !"_ZN71MAKING_ELEMENTS_OF_TWO_ARRAYS_SAME_WITH_MINIMUM_INCREMENTDECREMENT_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hf0788034254845f0E: %a"}
!2709 = distinct !{!2709, !"_ZN71MAKING_ELEMENTS_OF_TWO_ARRAYS_SAME_WITH_MINIMUM_INCREMENTDECREMENT_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hf0788034254845f0E"}
!2710 = !{!2711}
!2711 = distinct !{!2711, !2709, !"_ZN71MAKING_ELEMENTS_OF_TWO_ARRAYS_SAME_WITH_MINIMUM_INCREMENTDECREMENT_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hf0788034254845f0E: %b"}
!2712 = !{!2713}
!2713 = distinct !{!2713, !2714, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$f32$GT$11partial_cmp17h51acfdb7fcc2b22aE: %self"}
!2714 = distinct !{!2714, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$f32$GT$11partial_cmp17h51acfdb7fcc2b22aE"}
!2715 = !{!2716}
!2716 = distinct !{!2716, !2714, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$f32$GT$11partial_cmp17h51acfdb7fcc2b22aE: %other"}
!2717 = !{!2713, !2708, !2703}
!2718 = !{!2716, !2711, !2706}
!2719 = !{!2708, !2711, !2703, !2706}
!2720 = !{!2721}
!2721 = distinct !{!2721, !2722, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h03adadb428352a79E: %self"}
!2722 = distinct !{!2722, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h03adadb428352a79E"}
!2723 = !{!2724}
!2724 = distinct !{!2724, !2725, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h03adadb428352a79E: %self"}
!2725 = distinct !{!2725, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h03adadb428352a79E"}
!2726 = distinct !{!2726, !2617}
!2727 = !{!2728}
!2728 = distinct !{!2728, !2729, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17h24759b5143996a24E: %a"}
!2729 = distinct !{!2729, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17h24759b5143996a24E"}
!2730 = !{!2731}
!2731 = distinct !{!2731, !2729, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17h24759b5143996a24E: %b"}
!2732 = !{!2733}
!2733 = distinct !{!2733, !2734, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfaa75802b1959b0aE: %a"}
!2734 = distinct !{!2734, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfaa75802b1959b0aE"}
!2735 = !{!2736}
!2736 = distinct !{!2736, !2734, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfaa75802b1959b0aE: %b"}
!2737 = !{!2738}
!2738 = distinct !{!2738, !2739, !"_ZN71MAKING_ELEMENTS_OF_TWO_ARRAYS_SAME_WITH_MINIMUM_INCREMENTDECREMENT_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hbb49eefd79996977E: %a"}
!2739 = distinct !{!2739, !"_ZN71MAKING_ELEMENTS_OF_TWO_ARRAYS_SAME_WITH_MINIMUM_INCREMENTDECREMENT_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hbb49eefd79996977E"}
!2740 = !{!2741}
!2741 = distinct !{!2741, !2739, !"_ZN71MAKING_ELEMENTS_OF_TWO_ARRAYS_SAME_WITH_MINIMUM_INCREMENTDECREMENT_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hbb49eefd79996977E: %b"}
!2742 = !{!2743}
!2743 = distinct !{!2743, !2744, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$f32$GT$11partial_cmp17h51acfdb7fcc2b22aE: %self"}
!2744 = distinct !{!2744, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$f32$GT$11partial_cmp17h51acfdb7fcc2b22aE"}
!2745 = !{!2746}
!2746 = distinct !{!2746, !2744, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$f32$GT$11partial_cmp17h51acfdb7fcc2b22aE: %other"}
!2747 = !{!2743, !2738, !2733, !2731}
!2748 = !{!2746, !2741, !2736, !2728}
!2749 = !{!2738, !2741, !2733, !2736, !2728, !2731}
!2750 = !{!2751}
!2751 = distinct !{!2751, !2752, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h03adadb428352a79E: %self"}
!2752 = distinct !{!2752, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h03adadb428352a79E"}
!2753 = !{!2754}
!2754 = distinct !{!2754, !2755, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17h24759b5143996a24E: %a"}
!2755 = distinct !{!2755, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17h24759b5143996a24E"}
!2756 = !{!2757}
!2757 = distinct !{!2757, !2755, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17h24759b5143996a24E: %b"}
!2758 = !{!2759}
!2759 = distinct !{!2759, !2760, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfaa75802b1959b0aE: %a"}
!2760 = distinct !{!2760, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfaa75802b1959b0aE"}
!2761 = !{!2762}
!2762 = distinct !{!2762, !2760, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfaa75802b1959b0aE: %b"}
!2763 = !{!2764}
!2764 = distinct !{!2764, !2765, !"_ZN71MAKING_ELEMENTS_OF_TWO_ARRAYS_SAME_WITH_MINIMUM_INCREMENTDECREMENT_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hbb49eefd79996977E: %a"}
!2765 = distinct !{!2765, !"_ZN71MAKING_ELEMENTS_OF_TWO_ARRAYS_SAME_WITH_MINIMUM_INCREMENTDECREMENT_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hbb49eefd79996977E"}
!2766 = !{!2767}
!2767 = distinct !{!2767, !2765, !"_ZN71MAKING_ELEMENTS_OF_TWO_ARRAYS_SAME_WITH_MINIMUM_INCREMENTDECREMENT_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hbb49eefd79996977E: %b"}
!2768 = !{!2769}
!2769 = distinct !{!2769, !2770, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$f32$GT$11partial_cmp17h51acfdb7fcc2b22aE: %self"}
!2770 = distinct !{!2770, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$f32$GT$11partial_cmp17h51acfdb7fcc2b22aE"}
!2771 = !{!2772}
!2772 = distinct !{!2772, !2770, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$f32$GT$11partial_cmp17h51acfdb7fcc2b22aE: %other"}
!2773 = !{!2769, !2764, !2759, !2757}
!2774 = !{!2772, !2767, !2762, !2754}
!2775 = !{!2764, !2767, !2759, !2762, !2754, !2757}
!2776 = !{!2777}
!2777 = distinct !{!2777, !2778, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h03adadb428352a79E: %self"}
!2778 = distinct !{!2778, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h03adadb428352a79E"}
!2779 = !{!2780}
!2780 = distinct !{!2780, !2781, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17h24759b5143996a24E: %a"}
!2781 = distinct !{!2781, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17h24759b5143996a24E"}
!2782 = !{!2783}
!2783 = distinct !{!2783, !2781, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17h24759b5143996a24E: %b"}
!2784 = !{!2785}
!2785 = distinct !{!2785, !2786, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfaa75802b1959b0aE: %a"}
!2786 = distinct !{!2786, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfaa75802b1959b0aE"}
!2787 = !{!2788}
!2788 = distinct !{!2788, !2786, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfaa75802b1959b0aE: %b"}
!2789 = !{!2790}
!2790 = distinct !{!2790, !2791, !"_ZN71MAKING_ELEMENTS_OF_TWO_ARRAYS_SAME_WITH_MINIMUM_INCREMENTDECREMENT_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hbb49eefd79996977E: %a"}
!2791 = distinct !{!2791, !"_ZN71MAKING_ELEMENTS_OF_TWO_ARRAYS_SAME_WITH_MINIMUM_INCREMENTDECREMENT_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hbb49eefd79996977E"}
!2792 = !{!2793}
!2793 = distinct !{!2793, !2791, !"_ZN71MAKING_ELEMENTS_OF_TWO_ARRAYS_SAME_WITH_MINIMUM_INCREMENTDECREMENT_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hbb49eefd79996977E: %b"}
!2794 = !{!2795}
!2795 = distinct !{!2795, !2796, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$f32$GT$11partial_cmp17h51acfdb7fcc2b22aE: %self"}
!2796 = distinct !{!2796, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$f32$GT$11partial_cmp17h51acfdb7fcc2b22aE"}
!2797 = !{!2798}
!2798 = distinct !{!2798, !2796, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$f32$GT$11partial_cmp17h51acfdb7fcc2b22aE: %other"}
!2799 = !{!2795, !2790, !2785, !2783}
!2800 = !{!2798, !2793, !2788, !2780}
!2801 = !{!2790, !2793, !2785, !2788, !2780, !2783}
!2802 = !{!2803}
!2803 = distinct !{!2803, !2804, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h03adadb428352a79E: %self"}
!2804 = distinct !{!2804, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h03adadb428352a79E"}
!2805 = !{!2806}
!2806 = distinct !{!2806, !2807, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17h24759b5143996a24E: %a"}
!2807 = distinct !{!2807, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17h24759b5143996a24E"}
!2808 = !{!2809}
!2809 = distinct !{!2809, !2807, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17h24759b5143996a24E: %b"}
!2810 = !{!2811}
!2811 = distinct !{!2811, !2812, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfaa75802b1959b0aE: %a"}
!2812 = distinct !{!2812, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfaa75802b1959b0aE"}
!2813 = !{!2814}
!2814 = distinct !{!2814, !2812, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfaa75802b1959b0aE: %b"}
!2815 = !{!2816}
!2816 = distinct !{!2816, !2817, !"_ZN71MAKING_ELEMENTS_OF_TWO_ARRAYS_SAME_WITH_MINIMUM_INCREMENTDECREMENT_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hbb49eefd79996977E: %a"}
!2817 = distinct !{!2817, !"_ZN71MAKING_ELEMENTS_OF_TWO_ARRAYS_SAME_WITH_MINIMUM_INCREMENTDECREMENT_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hbb49eefd79996977E"}
!2818 = !{!2819}
!2819 = distinct !{!2819, !2817, !"_ZN71MAKING_ELEMENTS_OF_TWO_ARRAYS_SAME_WITH_MINIMUM_INCREMENTDECREMENT_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hbb49eefd79996977E: %b"}
!2820 = !{!2821}
!2821 = distinct !{!2821, !2822, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$f32$GT$11partial_cmp17h51acfdb7fcc2b22aE: %self"}
!2822 = distinct !{!2822, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$f32$GT$11partial_cmp17h51acfdb7fcc2b22aE"}
!2823 = !{!2824}
!2824 = distinct !{!2824, !2822, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$f32$GT$11partial_cmp17h51acfdb7fcc2b22aE: %other"}
!2825 = !{!2821, !2816, !2811, !2809}
!2826 = !{!2824, !2819, !2814, !2806}
!2827 = !{!2816, !2819, !2811, !2814, !2806, !2809}
!2828 = !{!2829}
!2829 = distinct !{!2829, !2830, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h03adadb428352a79E: %self"}
!2830 = distinct !{!2830, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h03adadb428352a79E"}
!2831 = !{!2832}
!2832 = distinct !{!2832, !2833, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17h24759b5143996a24E: %a"}
!2833 = distinct !{!2833, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17h24759b5143996a24E"}
!2834 = !{!2835}
!2835 = distinct !{!2835, !2833, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17h24759b5143996a24E: %b"}
!2836 = !{!2837}
!2837 = distinct !{!2837, !2838, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfaa75802b1959b0aE: %a"}
!2838 = distinct !{!2838, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfaa75802b1959b0aE"}
!2839 = !{!2840}
!2840 = distinct !{!2840, !2838, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfaa75802b1959b0aE: %b"}
!2841 = !{!2842}
!2842 = distinct !{!2842, !2843, !"_ZN71MAKING_ELEMENTS_OF_TWO_ARRAYS_SAME_WITH_MINIMUM_INCREMENTDECREMENT_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hbb49eefd79996977E: %a"}
!2843 = distinct !{!2843, !"_ZN71MAKING_ELEMENTS_OF_TWO_ARRAYS_SAME_WITH_MINIMUM_INCREMENTDECREMENT_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hbb49eefd79996977E"}
!2844 = !{!2845}
!2845 = distinct !{!2845, !2843, !"_ZN71MAKING_ELEMENTS_OF_TWO_ARRAYS_SAME_WITH_MINIMUM_INCREMENTDECREMENT_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hbb49eefd79996977E: %b"}
!2846 = !{!2847}
!2847 = distinct !{!2847, !2848, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$f32$GT$11partial_cmp17h51acfdb7fcc2b22aE: %self"}
!2848 = distinct !{!2848, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$f32$GT$11partial_cmp17h51acfdb7fcc2b22aE"}
!2849 = !{!2850}
!2850 = distinct !{!2850, !2848, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$f32$GT$11partial_cmp17h51acfdb7fcc2b22aE: %other"}
!2851 = !{!2847, !2842, !2837, !2835}
!2852 = !{!2850, !2845, !2840, !2832}
!2853 = !{!2842, !2845, !2837, !2840, !2832, !2835}
!2854 = !{!2855}
!2855 = distinct !{!2855, !2856, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h03adadb428352a79E: %self"}
!2856 = distinct !{!2856, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h03adadb428352a79E"}
!2857 = !{!2858}
!2858 = distinct !{!2858, !2859, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h03adadb428352a79E: %self"}
!2859 = distinct !{!2859, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h03adadb428352a79E"}
!2860 = distinct !{!2860, !2617}
!2861 = !{!2862}
!2862 = distinct !{!2862, !2863, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17h76184c798ac6e76dE: %a"}
!2863 = distinct !{!2863, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17h76184c798ac6e76dE"}
!2864 = !{!2865}
!2865 = distinct !{!2865, !2863, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17h76184c798ac6e76dE: %b"}
!2866 = !{!2867}
!2867 = distinct !{!2867, !2868, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5ba3fdab0b109aaeE: %a"}
!2868 = distinct !{!2868, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5ba3fdab0b109aaeE"}
!2869 = !{!2870}
!2870 = distinct !{!2870, !2868, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5ba3fdab0b109aaeE: %b"}
!2871 = !{!2872}
!2872 = distinct !{!2872, !2873, !"_ZN4core3ops8function5FnMut8call_mut17hb2c3cc4e9207ff38E: argument 0"}
!2873 = distinct !{!2873, !"_ZN4core3ops8function5FnMut8call_mut17hb2c3cc4e9207ff38E"}
!2874 = !{!2875}
!2875 = distinct !{!2875, !2873, !"_ZN4core3ops8function5FnMut8call_mut17hb2c3cc4e9207ff38E: argument 1"}
!2876 = !{!2877}
!2877 = distinct !{!2877, !2878, !"cmpfunc: %a"}
!2878 = distinct !{!2878, !"cmpfunc"}
!2879 = !{!2880}
!2880 = distinct !{!2880, !2878, !"cmpfunc: %b"}
!2881 = !{!2882}
!2882 = distinct !{!2882, !2883, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!2883 = distinct !{!2883, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!2884 = !{!2885}
!2885 = distinct !{!2885, !2883, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!2886 = !{!2882, !2877, !2872, !2867, !2865}
!2887 = !{!2885, !2880, !2875, !2870, !2862}
!2888 = !{!2889}
!2889 = distinct !{!2889, !2890, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h4c1f1733311b90e4E: %self"}
!2890 = distinct !{!2890, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h4c1f1733311b90e4E"}
!2891 = !{!2892}
!2892 = distinct !{!2892, !2893, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17h76184c798ac6e76dE: %a"}
!2893 = distinct !{!2893, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17h76184c798ac6e76dE"}
!2894 = !{!2895}
!2895 = distinct !{!2895, !2893, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17h76184c798ac6e76dE: %b"}
!2896 = !{!2897}
!2897 = distinct !{!2897, !2898, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5ba3fdab0b109aaeE: %a"}
!2898 = distinct !{!2898, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5ba3fdab0b109aaeE"}
!2899 = !{!2900}
!2900 = distinct !{!2900, !2898, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5ba3fdab0b109aaeE: %b"}
!2901 = !{!2902}
!2902 = distinct !{!2902, !2903, !"_ZN4core3ops8function5FnMut8call_mut17hb2c3cc4e9207ff38E: argument 0"}
!2903 = distinct !{!2903, !"_ZN4core3ops8function5FnMut8call_mut17hb2c3cc4e9207ff38E"}
!2904 = !{!2905}
!2905 = distinct !{!2905, !2903, !"_ZN4core3ops8function5FnMut8call_mut17hb2c3cc4e9207ff38E: argument 1"}
!2906 = !{!2907}
!2907 = distinct !{!2907, !2908, !"cmpfunc: %a"}
!2908 = distinct !{!2908, !"cmpfunc"}
!2909 = !{!2910}
!2910 = distinct !{!2910, !2908, !"cmpfunc: %b"}
!2911 = !{!2912}
!2912 = distinct !{!2912, !2913, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!2913 = distinct !{!2913, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!2914 = !{!2915}
!2915 = distinct !{!2915, !2913, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!2916 = !{!2912, !2907, !2902, !2897, !2895}
!2917 = !{!2915, !2910, !2905, !2900, !2892}
!2918 = !{!2919}
!2919 = distinct !{!2919, !2920, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h4c1f1733311b90e4E: %self"}
!2920 = distinct !{!2920, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h4c1f1733311b90e4E"}
!2921 = !{!2922}
!2922 = distinct !{!2922, !2923, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17h76184c798ac6e76dE: %a"}
!2923 = distinct !{!2923, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17h76184c798ac6e76dE"}
!2924 = !{!2925}
!2925 = distinct !{!2925, !2923, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17h76184c798ac6e76dE: %b"}
!2926 = !{!2927}
!2927 = distinct !{!2927, !2928, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5ba3fdab0b109aaeE: %a"}
!2928 = distinct !{!2928, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5ba3fdab0b109aaeE"}
!2929 = !{!2930}
!2930 = distinct !{!2930, !2928, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5ba3fdab0b109aaeE: %b"}
!2931 = !{!2932}
!2932 = distinct !{!2932, !2933, !"_ZN4core3ops8function5FnMut8call_mut17hb2c3cc4e9207ff38E: argument 0"}
!2933 = distinct !{!2933, !"_ZN4core3ops8function5FnMut8call_mut17hb2c3cc4e9207ff38E"}
!2934 = !{!2935}
!2935 = distinct !{!2935, !2933, !"_ZN4core3ops8function5FnMut8call_mut17hb2c3cc4e9207ff38E: argument 1"}
!2936 = !{!2937}
!2937 = distinct !{!2937, !2938, !"cmpfunc: %a"}
!2938 = distinct !{!2938, !"cmpfunc"}
!2939 = !{!2940}
!2940 = distinct !{!2940, !2938, !"cmpfunc: %b"}
!2941 = !{!2942}
!2942 = distinct !{!2942, !2943, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!2943 = distinct !{!2943, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!2944 = !{!2945}
!2945 = distinct !{!2945, !2943, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!2946 = !{!2942, !2937, !2932, !2927, !2925}
!2947 = !{!2945, !2940, !2935, !2930, !2922}
!2948 = !{!2949}
!2949 = distinct !{!2949, !2950, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h4c1f1733311b90e4E: %self"}
!2950 = distinct !{!2950, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h4c1f1733311b90e4E"}
!2951 = !{!2952}
!2952 = distinct !{!2952, !2953, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17h76184c798ac6e76dE: %a"}
!2953 = distinct !{!2953, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17h76184c798ac6e76dE"}
!2954 = !{!2955}
!2955 = distinct !{!2955, !2953, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17h76184c798ac6e76dE: %b"}
!2956 = !{!2957}
!2957 = distinct !{!2957, !2958, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5ba3fdab0b109aaeE: %a"}
!2958 = distinct !{!2958, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5ba3fdab0b109aaeE"}
!2959 = !{!2960}
!2960 = distinct !{!2960, !2958, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5ba3fdab0b109aaeE: %b"}
!2961 = !{!2962}
!2962 = distinct !{!2962, !2963, !"_ZN4core3ops8function5FnMut8call_mut17hb2c3cc4e9207ff38E: argument 0"}
!2963 = distinct !{!2963, !"_ZN4core3ops8function5FnMut8call_mut17hb2c3cc4e9207ff38E"}
!2964 = !{!2965}
!2965 = distinct !{!2965, !2963, !"_ZN4core3ops8function5FnMut8call_mut17hb2c3cc4e9207ff38E: argument 1"}
!2966 = !{!2967}
!2967 = distinct !{!2967, !2968, !"cmpfunc: %a"}
!2968 = distinct !{!2968, !"cmpfunc"}
!2969 = !{!2970}
!2970 = distinct !{!2970, !2968, !"cmpfunc: %b"}
!2971 = !{!2972}
!2972 = distinct !{!2972, !2973, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!2973 = distinct !{!2973, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!2974 = !{!2975}
!2975 = distinct !{!2975, !2973, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!2976 = !{!2972, !2967, !2962, !2957, !2955}
!2977 = !{!2975, !2970, !2965, !2960, !2952}
!2978 = !{!2979}
!2979 = distinct !{!2979, !2980, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h4c1f1733311b90e4E: %self"}
!2980 = distinct !{!2980, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h4c1f1733311b90e4E"}
!2981 = !{!2982}
!2982 = distinct !{!2982, !2983, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17h76184c798ac6e76dE: %a"}
!2983 = distinct !{!2983, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17h76184c798ac6e76dE"}
!2984 = !{!2985}
!2985 = distinct !{!2985, !2983, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17h76184c798ac6e76dE: %b"}
!2986 = !{!2987}
!2987 = distinct !{!2987, !2988, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5ba3fdab0b109aaeE: %a"}
!2988 = distinct !{!2988, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5ba3fdab0b109aaeE"}
!2989 = !{!2990}
!2990 = distinct !{!2990, !2988, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5ba3fdab0b109aaeE: %b"}
!2991 = !{!2992}
!2992 = distinct !{!2992, !2993, !"_ZN4core3ops8function5FnMut8call_mut17hb2c3cc4e9207ff38E: argument 0"}
!2993 = distinct !{!2993, !"_ZN4core3ops8function5FnMut8call_mut17hb2c3cc4e9207ff38E"}
!2994 = !{!2995}
!2995 = distinct !{!2995, !2993, !"_ZN4core3ops8function5FnMut8call_mut17hb2c3cc4e9207ff38E: argument 1"}
!2996 = !{!2997}
!2997 = distinct !{!2997, !2998, !"cmpfunc: %a"}
!2998 = distinct !{!2998, !"cmpfunc"}
!2999 = !{!3000}
!3000 = distinct !{!3000, !2998, !"cmpfunc: %b"}
!3001 = !{!3002}
!3002 = distinct !{!3002, !3003, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!3003 = distinct !{!3003, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!3004 = !{!3005}
!3005 = distinct !{!3005, !3003, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!3006 = !{!3002, !2997, !2992, !2987, !2985}
!3007 = !{!3005, !3000, !2995, !2990, !2982}
!3008 = !{!3009}
!3009 = distinct !{!3009, !3010, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h4c1f1733311b90e4E: %self"}
!3010 = distinct !{!3010, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h4c1f1733311b90e4E"}
!3011 = !{!3012}
!3012 = distinct !{!3012, !3013, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h4c1f1733311b90e4E: %self"}
!3013 = distinct !{!3013, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h4c1f1733311b90e4E"}
!3014 = distinct !{!3014, !2617}
!3015 = !{!3016}
!3016 = distinct !{!3016, !3017, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5ba3fdab0b109aaeE: %a"}
!3017 = distinct !{!3017, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5ba3fdab0b109aaeE"}
!3018 = !{!3019}
!3019 = distinct !{!3019, !3017, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5ba3fdab0b109aaeE: %b"}
!3020 = !{!3021}
!3021 = distinct !{!3021, !3022, !"_ZN4core3ops8function5FnMut8call_mut17hb2c3cc4e9207ff38E: argument 0"}
!3022 = distinct !{!3022, !"_ZN4core3ops8function5FnMut8call_mut17hb2c3cc4e9207ff38E"}
!3023 = !{!3024}
!3024 = distinct !{!3024, !3022, !"_ZN4core3ops8function5FnMut8call_mut17hb2c3cc4e9207ff38E: argument 1"}
!3025 = !{!3026}
!3026 = distinct !{!3026, !3027, !"cmpfunc: %a"}
!3027 = distinct !{!3027, !"cmpfunc"}
!3028 = !{!3029}
!3029 = distinct !{!3029, !3027, !"cmpfunc: %b"}
!3030 = !{!3031}
!3031 = distinct !{!3031, !3032, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!3032 = distinct !{!3032, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!3033 = !{!3034}
!3034 = distinct !{!3034, !3032, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!3035 = !{!3031, !3026, !3021, !3016}
!3036 = !{!3034, !3029, !3024, !3019}
!3037 = !{!3038}
!3038 = distinct !{!3038, !3039, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h4c1f1733311b90e4E: %self"}
!3039 = distinct !{!3039, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h4c1f1733311b90e4E"}
!3040 = !{!3041}
!3041 = distinct !{!3041, !3042, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5ba3fdab0b109aaeE: %a"}
!3042 = distinct !{!3042, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5ba3fdab0b109aaeE"}
!3043 = !{!3044}
!3044 = distinct !{!3044, !3042, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5ba3fdab0b109aaeE: %b"}
!3045 = !{!3046}
!3046 = distinct !{!3046, !3047, !"_ZN4core3ops8function5FnMut8call_mut17hb2c3cc4e9207ff38E: argument 0"}
!3047 = distinct !{!3047, !"_ZN4core3ops8function5FnMut8call_mut17hb2c3cc4e9207ff38E"}
!3048 = !{!3049}
!3049 = distinct !{!3049, !3047, !"_ZN4core3ops8function5FnMut8call_mut17hb2c3cc4e9207ff38E: argument 1"}
!3050 = !{!3051}
!3051 = distinct !{!3051, !3052, !"cmpfunc: %a"}
!3052 = distinct !{!3052, !"cmpfunc"}
!3053 = !{!3054}
!3054 = distinct !{!3054, !3052, !"cmpfunc: %b"}
!3055 = !{!3056}
!3056 = distinct !{!3056, !3057, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!3057 = distinct !{!3057, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!3058 = !{!3059}
!3059 = distinct !{!3059, !3057, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!3060 = !{!3056, !3051, !3046, !3041}
!3061 = !{!3059, !3054, !3049, !3044}
!3062 = !{!3063}
!3063 = distinct !{!3063, !3064, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h4c1f1733311b90e4E: %self"}
!3064 = distinct !{!3064, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h4c1f1733311b90e4E"}
!3065 = !{!3066}
!3066 = distinct !{!3066, !3067, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5ba3fdab0b109aaeE: %a"}
!3067 = distinct !{!3067, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5ba3fdab0b109aaeE"}
!3068 = !{!3069}
!3069 = distinct !{!3069, !3067, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5ba3fdab0b109aaeE: %b"}
!3070 = !{!3071}
!3071 = distinct !{!3071, !3072, !"_ZN4core3ops8function5FnMut8call_mut17hb2c3cc4e9207ff38E: argument 0"}
!3072 = distinct !{!3072, !"_ZN4core3ops8function5FnMut8call_mut17hb2c3cc4e9207ff38E"}
!3073 = !{!3074}
!3074 = distinct !{!3074, !3072, !"_ZN4core3ops8function5FnMut8call_mut17hb2c3cc4e9207ff38E: argument 1"}
!3075 = !{!3076}
!3076 = distinct !{!3076, !3077, !"cmpfunc: %a"}
!3077 = distinct !{!3077, !"cmpfunc"}
!3078 = !{!3079}
!3079 = distinct !{!3079, !3077, !"cmpfunc: %b"}
!3080 = !{!3081}
!3081 = distinct !{!3081, !3082, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!3082 = distinct !{!3082, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!3083 = !{!3084}
!3084 = distinct !{!3084, !3082, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!3085 = !{!3081, !3076, !3071, !3066}
!3086 = !{!3084, !3079, !3074, !3069}
!3087 = !{!3088}
!3088 = distinct !{!3088, !3089, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h4c1f1733311b90e4E: %self"}
!3089 = distinct !{!3089, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h4c1f1733311b90e4E"}
!3090 = !{!3091}
!3091 = distinct !{!3091, !3092, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5ba3fdab0b109aaeE: %a"}
!3092 = distinct !{!3092, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5ba3fdab0b109aaeE"}
!3093 = !{!3094}
!3094 = distinct !{!3094, !3092, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5ba3fdab0b109aaeE: %b"}
!3095 = !{!3096}
!3096 = distinct !{!3096, !3097, !"_ZN4core3ops8function5FnMut8call_mut17hb2c3cc4e9207ff38E: argument 0"}
!3097 = distinct !{!3097, !"_ZN4core3ops8function5FnMut8call_mut17hb2c3cc4e9207ff38E"}
!3098 = !{!3099}
!3099 = distinct !{!3099, !3097, !"_ZN4core3ops8function5FnMut8call_mut17hb2c3cc4e9207ff38E: argument 1"}
!3100 = !{!3101}
!3101 = distinct !{!3101, !3102, !"cmpfunc: %a"}
!3102 = distinct !{!3102, !"cmpfunc"}
!3103 = !{!3104}
!3104 = distinct !{!3104, !3102, !"cmpfunc: %b"}
!3105 = !{!3106}
!3106 = distinct !{!3106, !3107, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!3107 = distinct !{!3107, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!3108 = !{!3109}
!3109 = distinct !{!3109, !3107, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!3110 = !{!3106, !3101, !3096, !3091}
!3111 = !{!3109, !3104, !3099, !3094}
!3112 = !{!3113}
!3113 = distinct !{!3113, !3114, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h4c1f1733311b90e4E: %self"}
!3114 = distinct !{!3114, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h4c1f1733311b90e4E"}
!3115 = !{!3116}
!3116 = distinct !{!3116, !3117, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5ba3fdab0b109aaeE: %a"}
!3117 = distinct !{!3117, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5ba3fdab0b109aaeE"}
!3118 = !{!3119}
!3119 = distinct !{!3119, !3117, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5ba3fdab0b109aaeE: %b"}
!3120 = !{!3121}
!3121 = distinct !{!3121, !3122, !"_ZN4core3ops8function5FnMut8call_mut17hb2c3cc4e9207ff38E: argument 0"}
!3122 = distinct !{!3122, !"_ZN4core3ops8function5FnMut8call_mut17hb2c3cc4e9207ff38E"}
!3123 = !{!3124}
!3124 = distinct !{!3124, !3122, !"_ZN4core3ops8function5FnMut8call_mut17hb2c3cc4e9207ff38E: argument 1"}
!3125 = !{!3126}
!3126 = distinct !{!3126, !3127, !"cmpfunc: %a"}
!3127 = distinct !{!3127, !"cmpfunc"}
!3128 = !{!3129}
!3129 = distinct !{!3129, !3127, !"cmpfunc: %b"}
!3130 = !{!3131}
!3131 = distinct !{!3131, !3132, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!3132 = distinct !{!3132, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!3133 = !{!3134}
!3134 = distinct !{!3134, !3132, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!3135 = !{!3131, !3126, !3121, !3116}
!3136 = !{!3134, !3129, !3124, !3119}
!3137 = !{!3138}
!3138 = distinct !{!3138, !3139, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h4c1f1733311b90e4E: %self"}
!3139 = distinct !{!3139, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h4c1f1733311b90e4E"}
!3140 = !{!3141}
!3141 = distinct !{!3141, !3142, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h4c1f1733311b90e4E: %self"}
!3142 = distinct !{!3142, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h4c1f1733311b90e4E"}
!3143 = distinct !{!3143, !2617}
!3144 = !{!3145}
!3145 = distinct !{!3145, !3146, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17h9dd9effb4230de85E: %a"}
!3146 = distinct !{!3146, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17h9dd9effb4230de85E"}
!3147 = !{!3148}
!3148 = distinct !{!3148, !3146, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17h9dd9effb4230de85E: %b"}
!3149 = !{!3150}
!3150 = distinct !{!3150, !3151, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf5b8f37855ac0c3dE: %a"}
!3151 = distinct !{!3151, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf5b8f37855ac0c3dE"}
!3152 = !{!3153}
!3153 = distinct !{!3153, !3151, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf5b8f37855ac0c3dE: %b"}
!3154 = !{!3155}
!3155 = distinct !{!3155, !3156, !"_ZN71MAKING_ELEMENTS_OF_TWO_ARRAYS_SAME_WITH_MINIMUM_INCREMENTDECREMENT_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hf0788034254845f0E: %a"}
!3156 = distinct !{!3156, !"_ZN71MAKING_ELEMENTS_OF_TWO_ARRAYS_SAME_WITH_MINIMUM_INCREMENTDECREMENT_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hf0788034254845f0E"}
!3157 = !{!3158}
!3158 = distinct !{!3158, !3156, !"_ZN71MAKING_ELEMENTS_OF_TWO_ARRAYS_SAME_WITH_MINIMUM_INCREMENTDECREMENT_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hf0788034254845f0E: %b"}
!3159 = !{!3160}
!3160 = distinct !{!3160, !3161, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$f32$GT$11partial_cmp17h51acfdb7fcc2b22aE: %self"}
!3161 = distinct !{!3161, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$f32$GT$11partial_cmp17h51acfdb7fcc2b22aE"}
!3162 = !{!3163}
!3163 = distinct !{!3163, !3161, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$f32$GT$11partial_cmp17h51acfdb7fcc2b22aE: %other"}
!3164 = !{!3160, !3155, !3150, !3148}
!3165 = !{!3163, !3158, !3153, !3145}
!3166 = !{!3155, !3158, !3150, !3153, !3145, !3148}
!3167 = !{!3168}
!3168 = distinct !{!3168, !3169, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h03adadb428352a79E: %self"}
!3169 = distinct !{!3169, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h03adadb428352a79E"}
!3170 = !{!3171}
!3171 = distinct !{!3171, !3172, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17h9dd9effb4230de85E: %a"}
!3172 = distinct !{!3172, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17h9dd9effb4230de85E"}
!3173 = !{!3174}
!3174 = distinct !{!3174, !3172, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17h9dd9effb4230de85E: %b"}
!3175 = !{!3176}
!3176 = distinct !{!3176, !3177, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf5b8f37855ac0c3dE: %a"}
!3177 = distinct !{!3177, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf5b8f37855ac0c3dE"}
!3178 = !{!3179}
!3179 = distinct !{!3179, !3177, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf5b8f37855ac0c3dE: %b"}
!3180 = !{!3181}
!3181 = distinct !{!3181, !3182, !"_ZN71MAKING_ELEMENTS_OF_TWO_ARRAYS_SAME_WITH_MINIMUM_INCREMENTDECREMENT_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hf0788034254845f0E: %a"}
!3182 = distinct !{!3182, !"_ZN71MAKING_ELEMENTS_OF_TWO_ARRAYS_SAME_WITH_MINIMUM_INCREMENTDECREMENT_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hf0788034254845f0E"}
!3183 = !{!3184}
!3184 = distinct !{!3184, !3182, !"_ZN71MAKING_ELEMENTS_OF_TWO_ARRAYS_SAME_WITH_MINIMUM_INCREMENTDECREMENT_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hf0788034254845f0E: %b"}
!3185 = !{!3186}
!3186 = distinct !{!3186, !3187, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$f32$GT$11partial_cmp17h51acfdb7fcc2b22aE: %self"}
!3187 = distinct !{!3187, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$f32$GT$11partial_cmp17h51acfdb7fcc2b22aE"}
!3188 = !{!3189}
!3189 = distinct !{!3189, !3187, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$f32$GT$11partial_cmp17h51acfdb7fcc2b22aE: %other"}
!3190 = !{!3186, !3181, !3176, !3174}
!3191 = !{!3189, !3184, !3179, !3171}
!3192 = !{!3181, !3184, !3176, !3179, !3171, !3174}
!3193 = !{!3194}
!3194 = distinct !{!3194, !3195, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h03adadb428352a79E: %self"}
!3195 = distinct !{!3195, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h03adadb428352a79E"}
!3196 = !{!3197}
!3197 = distinct !{!3197, !3198, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17h9dd9effb4230de85E: %a"}
!3198 = distinct !{!3198, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17h9dd9effb4230de85E"}
!3199 = !{!3200}
!3200 = distinct !{!3200, !3198, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17h9dd9effb4230de85E: %b"}
!3201 = !{!3202}
!3202 = distinct !{!3202, !3203, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf5b8f37855ac0c3dE: %a"}
!3203 = distinct !{!3203, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf5b8f37855ac0c3dE"}
!3204 = !{!3205}
!3205 = distinct !{!3205, !3203, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf5b8f37855ac0c3dE: %b"}
!3206 = !{!3207}
!3207 = distinct !{!3207, !3208, !"_ZN71MAKING_ELEMENTS_OF_TWO_ARRAYS_SAME_WITH_MINIMUM_INCREMENTDECREMENT_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hf0788034254845f0E: %a"}
!3208 = distinct !{!3208, !"_ZN71MAKING_ELEMENTS_OF_TWO_ARRAYS_SAME_WITH_MINIMUM_INCREMENTDECREMENT_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hf0788034254845f0E"}
!3209 = !{!3210}
!3210 = distinct !{!3210, !3208, !"_ZN71MAKING_ELEMENTS_OF_TWO_ARRAYS_SAME_WITH_MINIMUM_INCREMENTDECREMENT_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hf0788034254845f0E: %b"}
!3211 = !{!3212}
!3212 = distinct !{!3212, !3213, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$f32$GT$11partial_cmp17h51acfdb7fcc2b22aE: %self"}
!3213 = distinct !{!3213, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$f32$GT$11partial_cmp17h51acfdb7fcc2b22aE"}
!3214 = !{!3215}
!3215 = distinct !{!3215, !3213, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$f32$GT$11partial_cmp17h51acfdb7fcc2b22aE: %other"}
!3216 = !{!3212, !3207, !3202, !3200}
!3217 = !{!3215, !3210, !3205, !3197}
!3218 = !{!3207, !3210, !3202, !3205, !3197, !3200}
!3219 = !{!3220}
!3220 = distinct !{!3220, !3221, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h03adadb428352a79E: %self"}
!3221 = distinct !{!3221, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h03adadb428352a79E"}
!3222 = !{!3223}
!3223 = distinct !{!3223, !3224, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17h9dd9effb4230de85E: %a"}
!3224 = distinct !{!3224, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17h9dd9effb4230de85E"}
!3225 = !{!3226}
!3226 = distinct !{!3226, !3224, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17h9dd9effb4230de85E: %b"}
!3227 = !{!3228}
!3228 = distinct !{!3228, !3229, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf5b8f37855ac0c3dE: %a"}
!3229 = distinct !{!3229, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf5b8f37855ac0c3dE"}
!3230 = !{!3231}
!3231 = distinct !{!3231, !3229, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf5b8f37855ac0c3dE: %b"}
!3232 = !{!3233}
!3233 = distinct !{!3233, !3234, !"_ZN71MAKING_ELEMENTS_OF_TWO_ARRAYS_SAME_WITH_MINIMUM_INCREMENTDECREMENT_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hf0788034254845f0E: %a"}
!3234 = distinct !{!3234, !"_ZN71MAKING_ELEMENTS_OF_TWO_ARRAYS_SAME_WITH_MINIMUM_INCREMENTDECREMENT_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hf0788034254845f0E"}
!3235 = !{!3236}
!3236 = distinct !{!3236, !3234, !"_ZN71MAKING_ELEMENTS_OF_TWO_ARRAYS_SAME_WITH_MINIMUM_INCREMENTDECREMENT_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hf0788034254845f0E: %b"}
!3237 = !{!3238}
!3238 = distinct !{!3238, !3239, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$f32$GT$11partial_cmp17h51acfdb7fcc2b22aE: %self"}
!3239 = distinct !{!3239, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$f32$GT$11partial_cmp17h51acfdb7fcc2b22aE"}
!3240 = !{!3241}
!3241 = distinct !{!3241, !3239, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$f32$GT$11partial_cmp17h51acfdb7fcc2b22aE: %other"}
!3242 = !{!3238, !3233, !3228, !3226}
!3243 = !{!3241, !3236, !3231, !3223}
!3244 = !{!3233, !3236, !3228, !3231, !3223, !3226}
!3245 = !{!3246}
!3246 = distinct !{!3246, !3247, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h03adadb428352a79E: %self"}
!3247 = distinct !{!3247, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h03adadb428352a79E"}
!3248 = !{!3249}
!3249 = distinct !{!3249, !3250, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17h9dd9effb4230de85E: %a"}
!3250 = distinct !{!3250, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17h9dd9effb4230de85E"}
!3251 = !{!3252}
!3252 = distinct !{!3252, !3250, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17h9dd9effb4230de85E: %b"}
!3253 = !{!3254}
!3254 = distinct !{!3254, !3255, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf5b8f37855ac0c3dE: %a"}
!3255 = distinct !{!3255, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf5b8f37855ac0c3dE"}
!3256 = !{!3257}
!3257 = distinct !{!3257, !3255, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf5b8f37855ac0c3dE: %b"}
!3258 = !{!3259}
!3259 = distinct !{!3259, !3260, !"_ZN71MAKING_ELEMENTS_OF_TWO_ARRAYS_SAME_WITH_MINIMUM_INCREMENTDECREMENT_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hf0788034254845f0E: %a"}
!3260 = distinct !{!3260, !"_ZN71MAKING_ELEMENTS_OF_TWO_ARRAYS_SAME_WITH_MINIMUM_INCREMENTDECREMENT_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hf0788034254845f0E"}
!3261 = !{!3262}
!3262 = distinct !{!3262, !3260, !"_ZN71MAKING_ELEMENTS_OF_TWO_ARRAYS_SAME_WITH_MINIMUM_INCREMENTDECREMENT_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hf0788034254845f0E: %b"}
!3263 = !{!3264}
!3264 = distinct !{!3264, !3265, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$f32$GT$11partial_cmp17h51acfdb7fcc2b22aE: %self"}
!3265 = distinct !{!3265, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$f32$GT$11partial_cmp17h51acfdb7fcc2b22aE"}
!3266 = !{!3267}
!3267 = distinct !{!3267, !3265, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$f32$GT$11partial_cmp17h51acfdb7fcc2b22aE: %other"}
!3268 = !{!3264, !3259, !3254, !3252}
!3269 = !{!3267, !3262, !3257, !3249}
!3270 = !{!3259, !3262, !3254, !3257, !3249, !3252}
!3271 = !{!3272}
!3272 = distinct !{!3272, !3273, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h03adadb428352a79E: %self"}
!3273 = distinct !{!3273, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h03adadb428352a79E"}
!3274 = !{!3275}
!3275 = distinct !{!3275, !3276, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h03adadb428352a79E: %self"}
!3276 = distinct !{!3276, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h03adadb428352a79E"}
!3277 = distinct !{!3277, !2617}
!3278 = !{!3279}
!3279 = distinct !{!3279, !3280, !"_ZN4core5slice4sort6shared5pivot12choose_pivot17h231d1789d5e62058E: %v.0"}
!3280 = distinct !{!3280, !"_ZN4core5slice4sort6shared5pivot12choose_pivot17h231d1789d5e62058E"}
!3281 = !{!3282}
!3282 = distinct !{!3282, !3283, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf5b8f37855ac0c3dE: %a"}
!3283 = distinct !{!3283, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf5b8f37855ac0c3dE"}
!3284 = !{!3285}
!3285 = distinct !{!3285, !3283, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf5b8f37855ac0c3dE: %b"}
!3286 = !{!3287}
!3287 = distinct !{!3287, !3288, !"_ZN71MAKING_ELEMENTS_OF_TWO_ARRAYS_SAME_WITH_MINIMUM_INCREMENTDECREMENT_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hf0788034254845f0E: %a"}
!3288 = distinct !{!3288, !"_ZN71MAKING_ELEMENTS_OF_TWO_ARRAYS_SAME_WITH_MINIMUM_INCREMENTDECREMENT_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hf0788034254845f0E"}
!3289 = !{!3290}
!3290 = distinct !{!3290, !3291, !"_ZN4core5slice4sort6shared5pivot7median317h997f2f4aad5b9139E: %c"}
!3291 = distinct !{!3291, !"_ZN4core5slice4sort6shared5pivot7median317h997f2f4aad5b9139E"}
!3292 = !{!3293}
!3293 = distinct !{!3293, !3288, !"_ZN71MAKING_ELEMENTS_OF_TWO_ARRAYS_SAME_WITH_MINIMUM_INCREMENTDECREMENT_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hf0788034254845f0E: %b"}
!3294 = !{!3295}
!3295 = distinct !{!3295, !3296, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$f32$GT$11partial_cmp17h51acfdb7fcc2b22aE: %self"}
!3296 = distinct !{!3296, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$f32$GT$11partial_cmp17h51acfdb7fcc2b22aE"}
!3297 = !{!3298}
!3298 = distinct !{!3298, !3296, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$f32$GT$11partial_cmp17h51acfdb7fcc2b22aE: %other"}
!3299 = !{!3295, !3287, !3282, !3279}
!3300 = !{!3298, !3293, !3285, !3290, !3301}
!3301 = distinct !{!3301, !3280, !"_ZN4core5slice4sort6shared5pivot12choose_pivot17h231d1789d5e62058E: %is_less"}
!3302 = !{!3298, !3293, !3285, !3279}
!3303 = !{!3295, !3287, !3282, !3290, !3301}
!3304 = !{!3287, !3293, !3282, !3285, !3290, !3279, !3301}
!3305 = !{!3306}
!3306 = distinct !{!3306, !3307, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf5b8f37855ac0c3dE: %b"}
!3307 = distinct !{!3307, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf5b8f37855ac0c3dE"}
!3308 = !{!3309}
!3309 = distinct !{!3309, !3310, !"_ZN71MAKING_ELEMENTS_OF_TWO_ARRAYS_SAME_WITH_MINIMUM_INCREMENTDECREMENT_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hf0788034254845f0E: %b"}
!3310 = distinct !{!3310, !"_ZN71MAKING_ELEMENTS_OF_TWO_ARRAYS_SAME_WITH_MINIMUM_INCREMENTDECREMENT_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hf0788034254845f0E"}
!3311 = !{!3312, !3309, !3306, !3279}
!3312 = distinct !{!3312, !3313, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$f32$GT$11partial_cmp17h51acfdb7fcc2b22aE: %other"}
!3313 = distinct !{!3313, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$f32$GT$11partial_cmp17h51acfdb7fcc2b22aE"}
!3314 = !{!3315, !3316, !3317, !3301}
!3315 = distinct !{!3315, !3313, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$f32$GT$11partial_cmp17h51acfdb7fcc2b22aE: %self"}
!3316 = distinct !{!3316, !3310, !"_ZN71MAKING_ELEMENTS_OF_TWO_ARRAYS_SAME_WITH_MINIMUM_INCREMENTDECREMENT_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hf0788034254845f0E: %a"}
!3317 = distinct !{!3317, !3307, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf5b8f37855ac0c3dE: %a"}
!3318 = !{!3316, !3309, !3317, !3306, !3279, !3301}
!3319 = !{!3320, !3322, !3323, !3325, !3279, !3301}
!3320 = distinct !{!3320, !3321, !"_ZN71MAKING_ELEMENTS_OF_TWO_ARRAYS_SAME_WITH_MINIMUM_INCREMENTDECREMENT_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hf0788034254845f0E: %a"}
!3321 = distinct !{!3321, !"_ZN71MAKING_ELEMENTS_OF_TWO_ARRAYS_SAME_WITH_MINIMUM_INCREMENTDECREMENT_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hf0788034254845f0E"}
!3322 = distinct !{!3322, !3321, !"_ZN71MAKING_ELEMENTS_OF_TWO_ARRAYS_SAME_WITH_MINIMUM_INCREMENTDECREMENT_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hf0788034254845f0E: %b"}
!3323 = distinct !{!3323, !3324, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf5b8f37855ac0c3dE: %a"}
!3324 = distinct !{!3324, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf5b8f37855ac0c3dE"}
!3325 = distinct !{!3325, !3324, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf5b8f37855ac0c3dE: %b"}
!3326 = !{!3327}
!3327 = distinct !{!3327, !3328, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf5b8f37855ac0c3dE: %a"}
!3328 = distinct !{!3328, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf5b8f37855ac0c3dE"}
!3329 = !{!3330}
!3330 = distinct !{!3330, !3331, !"_ZN71MAKING_ELEMENTS_OF_TWO_ARRAYS_SAME_WITH_MINIMUM_INCREMENTDECREMENT_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hf0788034254845f0E: %a"}
!3331 = distinct !{!3331, !"_ZN71MAKING_ELEMENTS_OF_TWO_ARRAYS_SAME_WITH_MINIMUM_INCREMENTDECREMENT_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hf0788034254845f0E"}
!3332 = !{!3333, !3330, !3327}
!3333 = distinct !{!3333, !3334, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$f32$GT$11partial_cmp17h51acfdb7fcc2b22aE: %self"}
!3334 = distinct !{!3334, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$f32$GT$11partial_cmp17h51acfdb7fcc2b22aE"}
!3335 = !{!3336, !3337, !3338}
!3336 = distinct !{!3336, !3334, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$f32$GT$11partial_cmp17h51acfdb7fcc2b22aE: %other"}
!3337 = distinct !{!3337, !3331, !"_ZN71MAKING_ELEMENTS_OF_TWO_ARRAYS_SAME_WITH_MINIMUM_INCREMENTDECREMENT_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hf0788034254845f0E: %b"}
!3338 = distinct !{!3338, !3328, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf5b8f37855ac0c3dE: %b"}
!3339 = !{!3330, !3337, !3327, !3338}
!3340 = !{!3341, !3343}
!3341 = distinct !{!3341, !3342, !"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$12split_at_mut17hfcf5686026bf385fE: %pair"}
!3342 = distinct !{!3342, !"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$12split_at_mut17hfcf5686026bf385fE"}
!3343 = distinct !{!3343, !3342, !"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$12split_at_mut17hfcf5686026bf385fE: %self.0"}
!3344 = !{!3345}
!3345 = distinct !{!3345, !3346, !"_ZN4core5slice4sort6shared5pivot12choose_pivot17h7f796801e5248064E: %v.0"}
!3346 = distinct !{!3346, !"_ZN4core5slice4sort6shared5pivot12choose_pivot17h7f796801e5248064E"}
!3347 = !{!3348}
!3348 = distinct !{!3348, !3349, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfaa75802b1959b0aE: %a"}
!3349 = distinct !{!3349, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfaa75802b1959b0aE"}
!3350 = !{!3351}
!3351 = distinct !{!3351, !3349, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfaa75802b1959b0aE: %b"}
!3352 = !{!3353}
!3353 = distinct !{!3353, !3354, !"_ZN71MAKING_ELEMENTS_OF_TWO_ARRAYS_SAME_WITH_MINIMUM_INCREMENTDECREMENT_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hbb49eefd79996977E: %a"}
!3354 = distinct !{!3354, !"_ZN71MAKING_ELEMENTS_OF_TWO_ARRAYS_SAME_WITH_MINIMUM_INCREMENTDECREMENT_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hbb49eefd79996977E"}
!3355 = !{!3356}
!3356 = distinct !{!3356, !3357, !"_ZN4core5slice4sort6shared5pivot7median317hfc7ca460ee81ac1fE: %c"}
!3357 = distinct !{!3357, !"_ZN4core5slice4sort6shared5pivot7median317hfc7ca460ee81ac1fE"}
!3358 = !{!3359}
!3359 = distinct !{!3359, !3354, !"_ZN71MAKING_ELEMENTS_OF_TWO_ARRAYS_SAME_WITH_MINIMUM_INCREMENTDECREMENT_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hbb49eefd79996977E: %b"}
!3360 = !{!3361}
!3361 = distinct !{!3361, !3362, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$f32$GT$11partial_cmp17h51acfdb7fcc2b22aE: %self"}
!3362 = distinct !{!3362, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$f32$GT$11partial_cmp17h51acfdb7fcc2b22aE"}
!3363 = !{!3364}
!3364 = distinct !{!3364, !3362, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$f32$GT$11partial_cmp17h51acfdb7fcc2b22aE: %other"}
!3365 = !{!3361, !3353, !3348, !3345}
!3366 = !{!3364, !3359, !3351, !3356, !3367}
!3367 = distinct !{!3367, !3346, !"_ZN4core5slice4sort6shared5pivot12choose_pivot17h7f796801e5248064E: %is_less"}
!3368 = !{!3364, !3359, !3351, !3345}
!3369 = !{!3361, !3353, !3348, !3356, !3367}
!3370 = !{!3353, !3359, !3348, !3351, !3356, !3345, !3367}
!3371 = !{!3372}
!3372 = distinct !{!3372, !3373, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfaa75802b1959b0aE: %b"}
!3373 = distinct !{!3373, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfaa75802b1959b0aE"}
!3374 = !{!3375}
!3375 = distinct !{!3375, !3376, !"_ZN71MAKING_ELEMENTS_OF_TWO_ARRAYS_SAME_WITH_MINIMUM_INCREMENTDECREMENT_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hbb49eefd79996977E: %b"}
!3376 = distinct !{!3376, !"_ZN71MAKING_ELEMENTS_OF_TWO_ARRAYS_SAME_WITH_MINIMUM_INCREMENTDECREMENT_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hbb49eefd79996977E"}
!3377 = !{!3378, !3375, !3372, !3345}
!3378 = distinct !{!3378, !3379, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$f32$GT$11partial_cmp17h51acfdb7fcc2b22aE: %other"}
!3379 = distinct !{!3379, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$f32$GT$11partial_cmp17h51acfdb7fcc2b22aE"}
!3380 = !{!3381, !3382, !3383, !3367}
!3381 = distinct !{!3381, !3379, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$f32$GT$11partial_cmp17h51acfdb7fcc2b22aE: %self"}
!3382 = distinct !{!3382, !3376, !"_ZN71MAKING_ELEMENTS_OF_TWO_ARRAYS_SAME_WITH_MINIMUM_INCREMENTDECREMENT_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hbb49eefd79996977E: %a"}
!3383 = distinct !{!3383, !3373, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfaa75802b1959b0aE: %a"}
!3384 = !{!3382, !3375, !3383, !3372, !3345, !3367}
!3385 = !{!3386, !3388, !3389, !3391, !3345, !3367}
!3386 = distinct !{!3386, !3387, !"_ZN71MAKING_ELEMENTS_OF_TWO_ARRAYS_SAME_WITH_MINIMUM_INCREMENTDECREMENT_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hbb49eefd79996977E: %a"}
!3387 = distinct !{!3387, !"_ZN71MAKING_ELEMENTS_OF_TWO_ARRAYS_SAME_WITH_MINIMUM_INCREMENTDECREMENT_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hbb49eefd79996977E"}
!3388 = distinct !{!3388, !3387, !"_ZN71MAKING_ELEMENTS_OF_TWO_ARRAYS_SAME_WITH_MINIMUM_INCREMENTDECREMENT_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hbb49eefd79996977E: %b"}
!3389 = distinct !{!3389, !3390, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfaa75802b1959b0aE: %a"}
!3390 = distinct !{!3390, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfaa75802b1959b0aE"}
!3391 = distinct !{!3391, !3390, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfaa75802b1959b0aE: %b"}
!3392 = !{!3393}
!3393 = distinct !{!3393, !3394, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfaa75802b1959b0aE: %a"}
!3394 = distinct !{!3394, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfaa75802b1959b0aE"}
!3395 = !{!3396}
!3396 = distinct !{!3396, !3397, !"_ZN71MAKING_ELEMENTS_OF_TWO_ARRAYS_SAME_WITH_MINIMUM_INCREMENTDECREMENT_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hbb49eefd79996977E: %a"}
!3397 = distinct !{!3397, !"_ZN71MAKING_ELEMENTS_OF_TWO_ARRAYS_SAME_WITH_MINIMUM_INCREMENTDECREMENT_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hbb49eefd79996977E"}
!3398 = !{!3399, !3396, !3393}
!3399 = distinct !{!3399, !3400, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$f32$GT$11partial_cmp17h51acfdb7fcc2b22aE: %self"}
!3400 = distinct !{!3400, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$f32$GT$11partial_cmp17h51acfdb7fcc2b22aE"}
!3401 = !{!3402, !3403, !3404}
!3402 = distinct !{!3402, !3400, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$f32$GT$11partial_cmp17h51acfdb7fcc2b22aE: %other"}
!3403 = distinct !{!3403, !3397, !"_ZN71MAKING_ELEMENTS_OF_TWO_ARRAYS_SAME_WITH_MINIMUM_INCREMENTDECREMENT_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17hbb49eefd79996977E: %b"}
!3404 = distinct !{!3404, !3394, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hfaa75802b1959b0aE: %b"}
!3405 = !{!3396, !3403, !3393, !3404}
!3406 = !{!3407, !3409}
!3407 = distinct !{!3407, !3408, !"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$12split_at_mut17hfcf5686026bf385fE: %pair"}
!3408 = distinct !{!3408, !"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$12split_at_mut17hfcf5686026bf385fE"}
!3409 = distinct !{!3409, !3408, !"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$12split_at_mut17hfcf5686026bf385fE: %self.0"}
!3410 = !{!3411}
!3411 = distinct !{!3411, !3412, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5ba3fdab0b109aaeE: %a"}
!3412 = distinct !{!3412, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5ba3fdab0b109aaeE"}
!3413 = !{!3414}
!3414 = distinct !{!3414, !3412, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5ba3fdab0b109aaeE: %b"}
!3415 = !{!3416}
!3416 = distinct !{!3416, !3417, !"_ZN4core3ops8function5FnMut8call_mut17hb2c3cc4e9207ff38E: argument 0"}
!3417 = distinct !{!3417, !"_ZN4core3ops8function5FnMut8call_mut17hb2c3cc4e9207ff38E"}
!3418 = !{!3419}
!3419 = distinct !{!3419, !3420, !"_ZN4core5slice4sort6shared5pivot7median317h65cba05cf823dac8E: %c"}
!3420 = distinct !{!3420, !"_ZN4core5slice4sort6shared5pivot7median317h65cba05cf823dac8E"}
!3421 = !{!3422}
!3422 = distinct !{!3422, !3417, !"_ZN4core3ops8function5FnMut8call_mut17hb2c3cc4e9207ff38E: argument 1"}
!3423 = !{!3424}
!3424 = distinct !{!3424, !3425, !"cmpfunc: %a"}
!3425 = distinct !{!3425, !"cmpfunc"}
!3426 = !{!3427}
!3427 = distinct !{!3427, !3425, !"cmpfunc: %b"}
!3428 = !{!3429}
!3429 = distinct !{!3429, !3430, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!3430 = distinct !{!3430, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!3431 = !{!3432}
!3432 = distinct !{!3432, !3430, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!3433 = !{!3429, !3424, !3416, !3411, !3434}
!3434 = distinct !{!3434, !3435, !"_ZN4core5slice4sort6shared5pivot12choose_pivot17hbb174469a395bbb3E: %v.0"}
!3435 = distinct !{!3435, !"_ZN4core5slice4sort6shared5pivot12choose_pivot17hbb174469a395bbb3E"}
!3436 = !{!3432, !3427, !3422, !3414, !3419, !3437}
!3437 = distinct !{!3437, !3435, !"_ZN4core5slice4sort6shared5pivot12choose_pivot17hbb174469a395bbb3E: %is_less"}
!3438 = !{!3432, !3427, !3422, !3414, !3434}
!3439 = !{!3429, !3424, !3416, !3411, !3419, !3437}
!3440 = !{!3441, !3443, !3445, !3447, !3434}
!3441 = distinct !{!3441, !3442, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!3442 = distinct !{!3442, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!3443 = distinct !{!3443, !3444, !"cmpfunc: %b"}
!3444 = distinct !{!3444, !"cmpfunc"}
!3445 = distinct !{!3445, !3446, !"_ZN4core3ops8function5FnMut8call_mut17hb2c3cc4e9207ff38E: argument 1"}
!3446 = distinct !{!3446, !"_ZN4core3ops8function5FnMut8call_mut17hb2c3cc4e9207ff38E"}
!3447 = distinct !{!3447, !3448, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5ba3fdab0b109aaeE: %b"}
!3448 = distinct !{!3448, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5ba3fdab0b109aaeE"}
!3449 = !{!3450, !3451, !3452, !3453, !3437}
!3450 = distinct !{!3450, !3442, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!3451 = distinct !{!3451, !3444, !"cmpfunc: %a"}
!3452 = distinct !{!3452, !3446, !"_ZN4core3ops8function5FnMut8call_mut17hb2c3cc4e9207ff38E: argument 0"}
!3453 = distinct !{!3453, !3448, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5ba3fdab0b109aaeE: %a"}
!3454 = !{!3455, !3457, !3459, !3461}
!3455 = distinct !{!3455, !3456, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!3456 = distinct !{!3456, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!3457 = distinct !{!3457, !3458, !"cmpfunc: %a"}
!3458 = distinct !{!3458, !"cmpfunc"}
!3459 = distinct !{!3459, !3460, !"_ZN4core3ops8function5FnMut8call_mut17hb2c3cc4e9207ff38E: argument 0"}
!3460 = distinct !{!3460, !"_ZN4core3ops8function5FnMut8call_mut17hb2c3cc4e9207ff38E"}
!3461 = distinct !{!3461, !3462, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5ba3fdab0b109aaeE: %a"}
!3462 = distinct !{!3462, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5ba3fdab0b109aaeE"}
!3463 = !{!3464, !3465, !3466, !3467}
!3464 = distinct !{!3464, !3456, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!3465 = distinct !{!3465, !3458, !"cmpfunc: %b"}
!3466 = distinct !{!3466, !3460, !"_ZN4core3ops8function5FnMut8call_mut17hb2c3cc4e9207ff38E: argument 1"}
!3467 = distinct !{!3467, !3462, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5ba3fdab0b109aaeE: %b"}
!3468 = !{!3469, !3471}
!3469 = distinct !{!3469, !3470, !"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$12split_at_mut17hc12d825464135f3eE: %pair"}
!3470 = distinct !{!3470, !"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$12split_at_mut17hc12d825464135f3eE"}
!3471 = distinct !{!3471, !3470, !"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$12split_at_mut17hc12d825464135f3eE: %self.0"}
!3472 = !{i64 0, i64 -9223372036854775808}
!3473 = !{!3474}
!3474 = distinct !{!3474, !3475, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!3475 = distinct !{!3475, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!3476 = !{!3477}
!3477 = distinct !{!3477, !3475, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!3478 = !{!3479}
!3479 = distinct !{!3479, !3480, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by17hecb21546e15286f0E: %self.0"}
!3480 = distinct !{!3480, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by17hecb21546e15286f0E"}
!3481 = !{!3482, !3484, !3479}
!3482 = distinct !{!3482, !3483, !"_ZN5alloc5slice11stable_sort17h517e7eb8fb4f0f4aE: %v.0"}
!3483 = distinct !{!3483, !"_ZN5alloc5slice11stable_sort17h517e7eb8fb4f0f4aE"}
!3484 = distinct !{!3484, !3483, !"_ZN5alloc5slice11stable_sort17h517e7eb8fb4f0f4aE: argument 1"}
!3485 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!3486 = !{!3487}
!3487 = distinct !{!3487, !3488, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by17hd7181ff24b95d99dE: %self.0"}
!3488 = distinct !{!3488, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by17hd7181ff24b95d99dE"}
!3489 = !{!3490, !3492, !3487}
!3490 = distinct !{!3490, !3491, !"_ZN5alloc5slice11stable_sort17h4888f4841a327571E: %v.0"}
!3491 = distinct !{!3491, !"_ZN5alloc5slice11stable_sort17h4888f4841a327571E"}
!3492 = distinct !{!3492, !3491, !"_ZN5alloc5slice11stable_sort17h4888f4841a327571E: argument 1"}
!3493 = !{!3494}
!3494 = distinct !{!3494, !3495, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by17h66fdb4fea63614c6E: %self.0"}
!3495 = distinct !{!3495, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by17h66fdb4fea63614c6E"}
!3496 = !{!3497, !3499, !3494}
!3497 = distinct !{!3497, !3498, !"_ZN5alloc5slice11stable_sort17h1e701b3ec48083c6E: %v.0"}
!3498 = distinct !{!3498, !"_ZN5alloc5slice11stable_sort17h1e701b3ec48083c6E"}
!3499 = distinct !{!3499, !3498, !"_ZN5alloc5slice11stable_sort17h1e701b3ec48083c6E: argument 1"}

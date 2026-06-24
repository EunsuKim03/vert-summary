; ModuleID = 'FIND_MINIMUM_RADIUS_ATLEAST_K_POINT_LIE_INSIDE_CIRCLE_emit.9ce1212e3f915cbe-cgu.0'
source_filename = "FIND_MINIMUM_RADIUS_ATLEAST_K_POINT_LIE_INSIDE_CIRCLE_emit.9ce1212e3f915cbe-cgu.0"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%"core::mem::maybe_uninit::MaybeUninit<[u8; 8]>" = type { [8 x i8] }

@alloc_d1084648e479974e70c9329824bf76f9 = private unnamed_addr constant [9 x i8] c"mid > len", align 1
@alloc_e8e5fd9f509afcb950667480b3e3e42a = private unnamed_addr constant [126 x i8] c"/root/.rustup/toolchains/stable-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/slice/sort/stable/quicksort.rs\00", align 1
@alloc_58d434a1e795f965ef82c8e9c5db822a = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_e8e5fd9f509afcb950667480b3e3e42a, [16 x i8] c"}\00\00\00\00\00\00\00J\00\00\00\1F\00\00\00" }>, align 8
@alloc_0766b232215672ee1bd2195fdb153938 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_e8e5fd9f509afcb950667480b3e3e42a, [16 x i8] c"}\00\00\00\00\00\00\00D\00\00\00\17\00\00\00" }>, align 8
@alloc_1740f0399c4336f609ea074fb12f1baa = private unnamed_addr constant [161 x i8] c"/root/es/vert/vert/rust_funcs/cpp_transcoder/FIND_MINIMUM_RADIUS_ATLEAST_K_POINT_LIE_INSIDE_CIRCLE/FIND_MINIMUM_RADIUS_ATLEAST_K_POINT_LIE_INSIDE_CIRCLE_emit.rs\00", align 1
@alloc_e233725058d574d75123974d8763f424 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_1740f0399c4336f609ea074fb12f1baa, [16 x i8] c"\A0\00\00\00\00\00\00\00\1B\00\00\00)\00\00\00" }>, align 8
@alloc_91929aa5fd5ecdf230d71e4a2b4c6739 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_1740f0399c4336f609ea074fb12f1baa, [16 x i8] c"\A0\00\00\00\00\00\00\00\1C\00\00\00\0F\00\00\00" }>, align 8
@alloc_d62f07554f1472b25e34b1cc2dcde560 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_1740f0399c4336f609ea074fb12f1baa, [16 x i8] c"\A0\00\00\00\00\00\00\00\19\00\00\00\12\00\00\00" }>, align 8

; core::ptr::swap_nonoverlapping_bytes::swap_nonoverlapping_chunks
; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable
define void @_ZN4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunks17h28e32b5b02c0a196E(ptr noundef captures(none) %x, ptr noundef captures(none) %y, i64 noundef range(i64 1, 0) %chunks) unnamed_addr #0 {
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
define noundef nonnull ptr @_ZN4core5slice4sort6shared5pivot11median3_rec17h6170ce92e8f2efbeE(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %n, ptr noalias noundef align 8 dereferenceable(8) %is_less) unnamed_addr #1 {
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
  %4 = tail call noundef ptr @_ZN4core5slice4sort6shared5pivot11median3_rec17h6170ce92e8f2efbeE(ptr noundef %0, ptr noundef %_10, ptr noundef %_13, i64 noundef %n84, ptr noalias noundef align 8 dereferenceable(8) %is_less)
  %_16 = getelementptr inbounds nuw float, ptr %1, i64 %count
  %_18 = getelementptr inbounds nuw float, ptr %1, i64 %count1
; call core::slice::sort::shared::pivot::median3_rec
  %5 = tail call noundef ptr @_ZN4core5slice4sort6shared5pivot11median3_rec17h6170ce92e8f2efbeE(ptr noundef %1, ptr noundef %_16, ptr noundef %_18, i64 noundef %n84, ptr noalias noundef align 8 dereferenceable(8) %is_less)
  %_20 = getelementptr inbounds nuw float, ptr %2, i64 %count
  %_22 = getelementptr inbounds nuw float, ptr %2, i64 %count1
; call core::slice::sort::shared::pivot::median3_rec
  %6 = tail call noundef ptr @_ZN4core5slice4sort6shared5pivot11median3_rec17h6170ce92e8f2efbeE(ptr noundef %2, ptr noundef %_20, ptr noundef %_22, i64 noundef %n84, ptr noalias noundef align 8 dereferenceable(8) %is_less)
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
  br i1 %.not.i.i.i, label %bb2.i.i.i, label %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h47d2093944d38971E.exit", !prof !35

bb2.i.i.i:                                        ; preds = %bb6
; call core::option::unwrap_failed
  tail call void @_ZN4core6option13unwrap_failed17hef2534b77b89c04fE(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_e233725058d574d75123974d8763f424) #24, !noalias !36
  unreachable

"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h47d2093944d38971E.exit": ; preds = %bb6
  %_0.i = fcmp olt float %_4.i.i.i, %_5.i.i.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !37)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !40)
  %_5.i.i.i6 = load float, ptr %c.sroa.0.0, align 4, !alias.scope !43, !noalias !46, !noundef !32
  %.not.i.i.i7 = fcmp uno float %_4.i.i.i, %_5.i.i.i6
  br i1 %.not.i.i.i7, label %bb2.i.i.i9, label %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h47d2093944d38971E.exit10", !prof !35

bb2.i.i.i9:                                       ; preds = %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h47d2093944d38971E.exit"
; call core::option::unwrap_failed
  tail call void @_ZN4core6option13unwrap_failed17hef2534b77b89c04fE(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_e233725058d574d75123974d8763f424) #24, !noalias !50
  unreachable

"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h47d2093944d38971E.exit10": ; preds = %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h47d2093944d38971E.exit"
  %_0.i8 = fcmp olt float %_4.i.i.i, %_5.i.i.i6
  %7 = xor i1 %_0.i, %_0.i8
  br i1 %7, label %_ZN4core5slice4sort6shared5pivot7median317h10f5e7d7bf5b7b20E.exit, label %bb3.i

bb3.i:                                            ; preds = %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h47d2093944d38971E.exit10"
  %.not.i.i.i13 = fcmp uno float %_5.i.i.i, %_5.i.i.i6
  br i1 %.not.i.i.i13, label %bb2.i.i.i15, label %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h47d2093944d38971E.exit16", !prof !35

bb2.i.i.i15:                                      ; preds = %bb3.i
; call core::option::unwrap_failed
  tail call void @_ZN4core6option13unwrap_failed17hef2534b77b89c04fE(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_e233725058d574d75123974d8763f424) #24, !noalias !51
  unreachable

"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h47d2093944d38971E.exit16": ; preds = %bb3.i
  %_0.i14 = fcmp olt float %_5.i.i.i, %_5.i.i.i6
  %_12.i = xor i1 %_0.i, %_0.i14
  %c.b.i = select i1 %_12.i, ptr %c.sroa.0.0, ptr %b.sroa.0.0
  br label %_ZN4core5slice4sort6shared5pivot7median317h10f5e7d7bf5b7b20E.exit

_ZN4core5slice4sort6shared5pivot7median317h10f5e7d7bf5b7b20E.exit: ; preds = %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h47d2093944d38971E.exit10", %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h47d2093944d38971E.exit16"
  %_0.sroa.0.0.i = phi ptr [ %a.sroa.0.0, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h47d2093944d38971E.exit10" ], [ %c.b.i, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h47d2093944d38971E.exit16" ]
  ret ptr %_0.sroa.0.0.i
}

; core::slice::sort::shared::pivot::median3_rec
; Function Attrs: nofree nosync nounwind nonlazybind memory(read, inaccessiblemem: readwrite) uwtable
define noundef nonnull ptr @_ZN4core5slice4sort6shared5pivot11median3_rec17h63df4c18b3244a7aE(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %n, ptr noalias noundef align 8 dereferenceable(8) %is_less) unnamed_addr #2 {
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
  %4 = tail call noundef ptr @_ZN4core5slice4sort6shared5pivot11median3_rec17h63df4c18b3244a7aE(ptr noundef %0, ptr noundef %_10, ptr noundef %_13, i64 noundef %n84, ptr noalias noundef align 8 dereferenceable(8) %is_less)
  %_16 = getelementptr inbounds nuw i32, ptr %1, i64 %count
  %_18 = getelementptr inbounds nuw i32, ptr %1, i64 %count1
; call core::slice::sort::shared::pivot::median3_rec
  %5 = tail call noundef ptr @_ZN4core5slice4sort6shared5pivot11median3_rec17h63df4c18b3244a7aE(ptr noundef %1, ptr noundef %_16, ptr noundef %_18, i64 noundef %n84, ptr noalias noundef align 8 dereferenceable(8) %is_less)
  %_20 = getelementptr inbounds nuw i32, ptr %2, i64 %count
  %_22 = getelementptr inbounds nuw i32, ptr %2, i64 %count1
; call core::slice::sort::shared::pivot::median3_rec
  %6 = tail call noundef ptr @_ZN4core5slice4sort6shared5pivot11median3_rec17h63df4c18b3244a7aE(ptr noundef %2, ptr noundef %_20, ptr noundef %_22, i64 noundef %n84, ptr noalias noundef align 8 dereferenceable(8) %is_less)
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

; core::slice::sort::shared::smallsort::insert_tail
; Function Attrs: nonlazybind uwtable
define void @_ZN4core5slice4sort6shared9smallsort11insert_tail17h4f7839f268585107E(ptr noundef readnone captures(address) %begin, ptr noundef captures(address) %tail, ptr noalias noundef readnone align 8 captures(none) dereferenceable(8) %is_less) unnamed_addr #1 personality ptr @rust_eh_personality {
start:
  %0 = getelementptr inbounds i8, ptr %tail, i64 -4
  tail call void @llvm.experimental.noalias.scope.decl(metadata !99)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !102)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !104)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !107)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !109)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !112)
  %_4.i.i.i = load float, ptr %tail, align 4, !alias.scope !114, !noalias !115, !noundef !32
  %_5.i.i.i = load float, ptr %0, align 4, !alias.scope !115, !noalias !114, !noundef !32
  %.not.i.i.i = fcmp uno float %_4.i.i.i, %_5.i.i.i
  br i1 %.not.i.i.i, label %bb2.i.i.i, label %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h47d2093944d38971E.exit", !prof !35

bb2.i.i.i:                                        ; preds = %start
; call core::option::unwrap_failed
  tail call void @_ZN4core6option13unwrap_failed17hef2534b77b89c04fE(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_e233725058d574d75123974d8763f424) #24, !noalias !116
  unreachable

"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h47d2093944d38971E.exit": ; preds = %start
  %_0.i = fcmp olt float %_4.i.i.i, %_5.i.i.i
  br i1 %_0.i, label %bb4, label %bb12

bb12:                                             ; preds = %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h47d2093944d38971E.exit", %bb10
  ret void

bb4:                                              ; preds = %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h47d2093944d38971E.exit", %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h47d2093944d38971E.exit6"
  %gap_guard.sroa.5.0 = phi ptr [ %sift.sroa.0.0, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h47d2093944d38971E.exit6" ], [ %tail, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h47d2093944d38971E.exit" ]
  %sift.sroa.0.0 = phi ptr [ %2, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h47d2093944d38971E.exit6" ], [ %0, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h47d2093944d38971E.exit" ]
  %1 = load i32, ptr %sift.sroa.0.0, align 4
  store i32 %1, ptr %gap_guard.sroa.5.0, align 4
  %_18 = icmp eq ptr %sift.sroa.0.0, %begin
  br i1 %_18, label %bb10, label %bb6

bb6:                                              ; preds = %bb4
  %2 = getelementptr inbounds i8, ptr %sift.sroa.0.0, i64 -4
  %_5.i.i.i2 = load float, ptr %2, align 4, !alias.scope !117, !noalias !124, !noundef !32
  %.not.i.i.i3 = fcmp uno float %_4.i.i.i, %_5.i.i.i2
  br i1 %.not.i.i.i3, label %bb2.i.i.i5, label %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h47d2093944d38971E.exit6", !prof !35

bb2.i.i.i5:                                       ; preds = %bb6
; invoke core::option::unwrap_failed
  invoke void @_ZN4core6option13unwrap_failed17hef2534b77b89c04fE(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_e233725058d574d75123974d8763f424) #24
          to label %.noexc unwind label %cleanup

.noexc:                                           ; preds = %bb2.i.i.i5
  unreachable

"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h47d2093944d38971E.exit6": ; preds = %bb6
  %_0.i4 = fcmp olt float %_4.i.i.i, %_5.i.i.i2
  br i1 %_0.i4, label %bb4, label %bb10

cleanup:                                          ; preds = %bb2.i.i.i5
  %3 = landingpad { ptr, i32 }
          cleanup
  store float %_4.i.i.i, ptr %sift.sroa.0.0, align 4, !noalias !128
  resume { ptr, i32 } %3

bb10:                                             ; preds = %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h47d2093944d38971E.exit6", %bb4
  store float %_4.i.i.i, ptr %sift.sroa.0.0, align 4, !noalias !133
  br label %bb12
}

; core::slice::sort::shared::smallsort::insert_tail
; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable
define void @_ZN4core5slice4sort6shared9smallsort11insert_tail17h56ae50ec7dbaf211E(ptr noundef readnone captures(address) %begin, ptr noundef captures(address) %tail, ptr noalias noundef readnone align 8 captures(none) dereferenceable(8) %is_less) unnamed_addr #0 personality ptr @rust_eh_personality {
start:
  %0 = getelementptr inbounds i8, ptr %tail, i64 -4
  tail call void @llvm.experimental.noalias.scope.decl(metadata !138)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !141)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !143)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !146)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !148)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !151)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !153)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !156)
  %_3.i.i.i.i = load i32, ptr %tail, align 4, !alias.scope !158, !noalias !159, !noundef !32
  %_4.i.i.i.i = load i32, ptr %0, align 4, !alias.scope !159, !noalias !158, !noundef !32
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
  %_4.i.i.i.i2 = load i32, ptr %2, align 4, !alias.scope !160, !noalias !169, !noundef !32
  %_0.i3 = icmp slt i32 %_3.i.i.i.i, %_4.i.i.i.i2
  br i1 %_0.i3, label %bb4, label %bb10

bb10:                                             ; preds = %bb6, %bb4
  store i32 %_3.i.i.i.i, ptr %sift.sroa.0.0, align 4, !noalias !174
  br label %bb12
}

; core::slice::sort::shared::smallsort::sort4_stable
; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable
define void @_ZN4core5slice4sort6shared9smallsort12sort4_stable17h9f8debcd0d1bd90eE(ptr noundef readonly captures(none) %v_base, ptr noundef writeonly captures(none) initializes((0, 16)) %dst, ptr noalias noundef readnone align 8 captures(none) dereferenceable(8) %is_less) unnamed_addr #3 personality ptr @rust_eh_personality {
start:
  %_7 = getelementptr inbounds nuw i8, ptr %v_base, i64 4
  tail call void @llvm.experimental.noalias.scope.decl(metadata !179)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !182)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !184)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !187)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !189)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !192)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !194)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !197)
  %_3.i.i.i.i = load i32, ptr %_7, align 4, !alias.scope !199, !noalias !200, !noundef !32
  %_4.i.i.i.i = load i32, ptr %v_base, align 4, !alias.scope !200, !noalias !199, !noundef !32
  %_0.i = icmp slt i32 %_3.i.i.i.i, %_4.i.i.i.i
  %_12 = getelementptr inbounds nuw i8, ptr %v_base, i64 12
  %_14 = getelementptr inbounds nuw i8, ptr %v_base, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !201)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !204)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !206)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !209)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !211)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !214)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !216)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !219)
  %_3.i.i.i.i7 = load i32, ptr %_12, align 4, !alias.scope !221, !noalias !222, !noundef !32
  %_4.i.i.i.i8 = load i32, ptr %_14, align 4, !alias.scope !222, !noalias !221, !noundef !32
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !223)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !226)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !228)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !231)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !233)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !236)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !238)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !241)
  %_3.i.i.i.i10 = load i32, ptr %c, align 4, !alias.scope !243, !noalias !244, !noundef !32
  %_4.i.i.i.i11 = load i32, ptr %a, align 4, !alias.scope !244, !noalias !243, !noundef !32
  %_0.i12 = icmp slt i32 %_3.i.i.i.i10, %_4.i.i.i.i11
  tail call void @llvm.experimental.noalias.scope.decl(metadata !245)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !248)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !250)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !253)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !255)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !258)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !260)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !263)
  %_3.i.i.i.i13 = load i32, ptr %d, align 4, !alias.scope !265, !noalias !266, !noundef !32
  %_4.i.i.i.i14 = load i32, ptr %b, align 4, !alias.scope !266, !noalias !265, !noundef !32
  %_0.i15 = icmp slt i32 %_3.i.i.i.i13, %_4.i.i.i.i14
  %0 = select i1 %_0.i12, ptr %c, ptr %a, !unpredictable !32
  %1 = select i1 %_0.i15, ptr %c, ptr %b, !unpredictable !32
  %2 = select i1 %_0.i12, ptr %a, ptr %1, !unpredictable !32
  %3 = select i1 %_0.i12, ptr %b, ptr %c, !unpredictable !32
  %4 = select i1 %_0.i15, ptr %d, ptr %3, !unpredictable !32
  tail call void @llvm.experimental.noalias.scope.decl(metadata !267)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !270)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !272)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !275)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !277)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !280)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !282)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !285)
  %_3.i.i.i.i16 = load i32, ptr %4, align 4, !alias.scope !287, !noalias !288, !noundef !32
  %_4.i.i.i.i17 = load i32, ptr %2, align 4, !alias.scope !288, !noalias !287, !noundef !32
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

; core::slice::sort::shared::smallsort::sort4_stable
; Function Attrs: nonlazybind uwtable
define void @_ZN4core5slice4sort6shared9smallsort12sort4_stable17hff7d5c64b61890c1E(ptr noundef readonly captures(none) %v_base, ptr noundef writeonly captures(none) %dst, ptr noalias readnone align 8 captures(none) %is_less) unnamed_addr #1 personality ptr @rust_eh_personality {
start:
  %_7 = getelementptr inbounds nuw i8, ptr %v_base, i64 4
  tail call void @llvm.experimental.noalias.scope.decl(metadata !289)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !292)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !294)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !297)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !299)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !302)
  %_4.i.i.i = load float, ptr %_7, align 4, !alias.scope !304, !noalias !305, !noundef !32
  %_5.i.i.i = load float, ptr %v_base, align 4, !alias.scope !305, !noalias !304, !noundef !32
  %.not.i.i.i = fcmp uno float %_4.i.i.i, %_5.i.i.i
  br i1 %.not.i.i.i, label %bb2.i.i.i, label %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h47d2093944d38971E.exit", !prof !35

bb2.i.i.i:                                        ; preds = %start
; call core::option::unwrap_failed
  tail call void @_ZN4core6option13unwrap_failed17hef2534b77b89c04fE(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_e233725058d574d75123974d8763f424) #24, !noalias !306
  unreachable

"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h47d2093944d38971E.exit": ; preds = %start
  %_12 = getelementptr inbounds nuw i8, ptr %v_base, i64 12
  %_14 = getelementptr inbounds nuw i8, ptr %v_base, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !307)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !310)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !312)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !315)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !317)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !320)
  %_4.i.i.i7 = load float, ptr %_12, align 4, !alias.scope !322, !noalias !323, !noundef !32
  %_5.i.i.i8 = load float, ptr %_14, align 4, !alias.scope !323, !noalias !322, !noundef !32
  %.not.i.i.i9 = fcmp uno float %_4.i.i.i7, %_5.i.i.i8
  br i1 %.not.i.i.i9, label %bb2.i.i.i11, label %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h47d2093944d38971E.exit12", !prof !35

bb2.i.i.i11:                                      ; preds = %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h47d2093944d38971E.exit"
; call core::option::unwrap_failed
  tail call void @_ZN4core6option13unwrap_failed17hef2534b77b89c04fE(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_e233725058d574d75123974d8763f424) #24, !noalias !324
  unreachable

"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h47d2093944d38971E.exit12": ; preds = %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h47d2093944d38971E.exit"
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !325)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !328)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !330)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !333)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !335)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !338)
  %_4.i.i.i13 = load float, ptr %c, align 4, !alias.scope !340, !noalias !341, !noundef !32
  %_5.i.i.i14 = load float, ptr %a, align 4, !alias.scope !341, !noalias !340, !noundef !32
  %.not.i.i.i15 = fcmp uno float %_4.i.i.i13, %_5.i.i.i14
  br i1 %.not.i.i.i15, label %bb2.i.i.i17, label %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h47d2093944d38971E.exit18", !prof !35

bb2.i.i.i17:                                      ; preds = %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h47d2093944d38971E.exit12"
; call core::option::unwrap_failed
  tail call void @_ZN4core6option13unwrap_failed17hef2534b77b89c04fE(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_e233725058d574d75123974d8763f424) #24, !noalias !342
  unreachable

"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h47d2093944d38971E.exit18": ; preds = %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h47d2093944d38971E.exit12"
  tail call void @llvm.experimental.noalias.scope.decl(metadata !343)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !346)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !348)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !351)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !353)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !356)
  %_4.i.i.i19 = load float, ptr %d, align 4, !alias.scope !358, !noalias !359, !noundef !32
  %_5.i.i.i20 = load float, ptr %b, align 4, !alias.scope !359, !noalias !358, !noundef !32
  %.not.i.i.i21 = fcmp uno float %_4.i.i.i19, %_5.i.i.i20
  br i1 %.not.i.i.i21, label %bb2.i.i.i23, label %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h47d2093944d38971E.exit24", !prof !35

bb2.i.i.i23:                                      ; preds = %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h47d2093944d38971E.exit18"
; call core::option::unwrap_failed
  tail call void @_ZN4core6option13unwrap_failed17hef2534b77b89c04fE(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_e233725058d574d75123974d8763f424) #24, !noalias !360
  unreachable

"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h47d2093944d38971E.exit24": ; preds = %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h47d2093944d38971E.exit18"
  %_0.i16 = fcmp olt float %_4.i.i.i13, %_5.i.i.i14
  %_0.i22 = fcmp olt float %_4.i.i.i19, %_5.i.i.i20
  %0 = select i1 %_0.i22, ptr %c, ptr %b, !unpredictable !32
  %1 = select i1 %_0.i16, ptr %a, ptr %0, !unpredictable !32
  %2 = select i1 %_0.i16, ptr %b, ptr %c, !unpredictable !32
  %3 = select i1 %_0.i22, ptr %d, ptr %2, !unpredictable !32
  tail call void @llvm.experimental.noalias.scope.decl(metadata !361)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !364)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !366)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !369)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !371)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !374)
  %_4.i.i.i25 = load float, ptr %3, align 4, !alias.scope !376, !noalias !377, !noundef !32
  %_5.i.i.i26 = load float, ptr %1, align 4, !alias.scope !377, !noalias !376, !noundef !32
  %.not.i.i.i27 = fcmp uno float %_4.i.i.i25, %_5.i.i.i26
  br i1 %.not.i.i.i27, label %bb2.i.i.i29, label %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h47d2093944d38971E.exit30", !prof !35

bb2.i.i.i29:                                      ; preds = %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h47d2093944d38971E.exit24"
; call core::option::unwrap_failed
  tail call void @_ZN4core6option13unwrap_failed17hef2534b77b89c04fE(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_e233725058d574d75123974d8763f424) #24, !noalias !378
  unreachable

"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h47d2093944d38971E.exit30": ; preds = %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h47d2093944d38971E.exit24"
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

; core::slice::sort::shared::smallsort::sort8_stable
; Function Attrs: nonlazybind uwtable
define void @_ZN4core5slice4sort6shared9smallsort12sort8_stable17h191e2cd2a4055331E(ptr noundef readonly captures(none) %v_base, ptr noundef writeonly captures(none) initializes((0, 32)) %dst, ptr noundef captures(address) initializes((0, 32)) %scratch_base, ptr noalias readnone align 8 captures(none) %is_less) unnamed_addr #1 personality ptr @rust_eh_personality {
start:
  %_7.i = getelementptr inbounds nuw i8, ptr %v_base, i64 4
  tail call void @llvm.experimental.noalias.scope.decl(metadata !379)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !382)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !384)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !387)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !389)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !392)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !394)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !397)
  %_3.i.i.i.i.i = load i32, ptr %_7.i, align 4, !alias.scope !399, !noalias !400, !noundef !32
  %_4.i.i.i.i.i = load i32, ptr %v_base, align 4, !alias.scope !400, !noalias !399, !noundef !32
  %_0.i.i = icmp slt i32 %_3.i.i.i.i.i, %_4.i.i.i.i.i
  %_12.i = getelementptr inbounds nuw i8, ptr %v_base, i64 12
  %_14.i = getelementptr inbounds nuw i8, ptr %v_base, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !401)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !404)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !406)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !409)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !411)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !414)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !416)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !419)
  %_3.i.i.i.i7.i = load i32, ptr %_12.i, align 4, !alias.scope !421, !noalias !422, !noundef !32
  %_4.i.i.i.i8.i = load i32, ptr %_14.i, align 4, !alias.scope !422, !noalias !421, !noundef !32
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !423)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !426)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !428)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !431)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !433)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !436)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !438)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !441)
  %_3.i.i.i.i10.i = load i32, ptr %c.i, align 4, !alias.scope !443, !noalias !444, !noundef !32
  %_4.i.i.i.i11.i = load i32, ptr %a.i, align 4, !alias.scope !444, !noalias !443, !noundef !32
  %_0.i12.i = icmp slt i32 %_3.i.i.i.i10.i, %_4.i.i.i.i11.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !445)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !448)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !450)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !453)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !455)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !458)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !460)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !463)
  %_3.i.i.i.i13.i = load i32, ptr %d.i, align 4, !alias.scope !465, !noalias !466, !noundef !32
  %_4.i.i.i.i14.i = load i32, ptr %b.i, align 4, !alias.scope !466, !noalias !465, !noundef !32
  %_0.i15.i = icmp slt i32 %_3.i.i.i.i13.i, %_4.i.i.i.i14.i
  %0 = select i1 %_0.i12.i, ptr %c.i, ptr %a.i, !unpredictable !32
  %1 = select i1 %_0.i15.i, ptr %c.i, ptr %b.i, !unpredictable !32
  %2 = select i1 %_0.i12.i, ptr %a.i, ptr %1, !unpredictable !32
  %3 = select i1 %_0.i12.i, ptr %b.i, ptr %c.i, !unpredictable !32
  %4 = select i1 %_0.i15.i, ptr %d.i, ptr %3, !unpredictable !32
  tail call void @llvm.experimental.noalias.scope.decl(metadata !467)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !470)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !472)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !475)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !477)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !480)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !482)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !485)
  %_3.i.i.i.i16.i = load i32, ptr %4, align 4, !alias.scope !487, !noalias !488, !noundef !32
  %_4.i.i.i.i17.i = load i32, ptr %2, align 4, !alias.scope !488, !noalias !487, !noundef !32
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !489)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !492)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !494)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !497)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !499)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !502)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !504)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !507)
  %_3.i.i.i.i.i2 = load i32, ptr %_7.i1, align 4, !alias.scope !509, !noalias !510, !noundef !32
  %_4.i.i.i.i.i3 = load i32, ptr %_9, align 4, !alias.scope !510, !noalias !509, !noundef !32
  %_0.i.i4 = icmp slt i32 %_3.i.i.i.i.i2, %_4.i.i.i.i.i3
  %_12.i5 = getelementptr inbounds nuw i8, ptr %v_base, i64 28
  %_14.i6 = getelementptr inbounds nuw i8, ptr %v_base, i64 24
  tail call void @llvm.experimental.noalias.scope.decl(metadata !511)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !514)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !516)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !519)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !521)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !524)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !526)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !529)
  %_3.i.i.i.i7.i7 = load i32, ptr %_12.i5, align 4, !alias.scope !531, !noalias !532, !noundef !32
  %_4.i.i.i.i8.i8 = load i32, ptr %_14.i6, align 4, !alias.scope !532, !noalias !531, !noundef !32
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !533)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !536)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !538)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !541)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !543)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !546)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !548)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !551)
  %_3.i.i.i.i10.i19 = load i32, ptr %c.i16, align 4, !alias.scope !553, !noalias !554, !noundef !32
  %_4.i.i.i.i11.i20 = load i32, ptr %a.i11, align 4, !alias.scope !554, !noalias !553, !noundef !32
  %_0.i12.i21 = icmp slt i32 %_3.i.i.i.i10.i19, %_4.i.i.i.i11.i20
  tail call void @llvm.experimental.noalias.scope.decl(metadata !555)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !558)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !560)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !563)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !565)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !568)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !570)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !573)
  %_3.i.i.i.i13.i22 = load i32, ptr %d.i18, align 4, !alias.scope !575, !noalias !576, !noundef !32
  %_4.i.i.i.i14.i23 = load i32, ptr %b.i14, align 4, !alias.scope !576, !noalias !575, !noundef !32
  %_0.i15.i24 = icmp slt i32 %_3.i.i.i.i13.i22, %_4.i.i.i.i14.i23
  %10 = select i1 %_0.i12.i21, ptr %c.i16, ptr %a.i11, !unpredictable !32
  %11 = select i1 %_0.i15.i24, ptr %c.i16, ptr %b.i14, !unpredictable !32
  %12 = select i1 %_0.i12.i21, ptr %a.i11, ptr %11, !unpredictable !32
  %13 = select i1 %_0.i12.i21, ptr %b.i14, ptr %c.i16, !unpredictable !32
  %14 = select i1 %_0.i15.i24, ptr %d.i18, ptr %13, !unpredictable !32
  tail call void @llvm.experimental.noalias.scope.decl(metadata !577)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !580)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !582)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !585)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !587)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !590)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !592)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !595)
  %_3.i.i.i.i16.i25 = load i32, ptr %14, align 4, !alias.scope !597, !noalias !598, !noundef !32
  %_4.i.i.i.i17.i26 = load i32, ptr %12, align 4, !alias.scope !598, !noalias !597, !noundef !32
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !599)
  %20 = getelementptr i8, ptr %scratch_base, i64 12
  %21 = getelementptr inbounds nuw i8, ptr %scratch_base, i64 28
  %22 = getelementptr inbounds nuw i8, ptr %dst, i64 28
  tail call void @llvm.experimental.noalias.scope.decl(metadata !602)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !605)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !607), !noalias !610
  tail call void @llvm.experimental.noalias.scope.decl(metadata !613), !noalias !610
  tail call void @llvm.experimental.noalias.scope.decl(metadata !615), !noalias !610
  tail call void @llvm.experimental.noalias.scope.decl(metadata !618), !noalias !610
  tail call void @llvm.experimental.noalias.scope.decl(metadata !620), !noalias !610
  tail call void @llvm.experimental.noalias.scope.decl(metadata !623), !noalias !610
  %_3.i.i.i.i.i36 = load i32, ptr %_10, align 4, !alias.scope !625, !noalias !626, !noundef !32
  %_4.i.i.i.i.i37 = load i32, ptr %scratch_base, align 4, !alias.scope !627, !noalias !628, !noundef !32
  %_0.i.i38 = icmp slt i32 %_3.i.i.i.i.i36, %_4.i.i.i.i.i37
  %is_l.i18.i = xor i1 %_0.i.i38, true
  %23 = tail call i32 @llvm.smin.i32(i32 %_3.i.i.i.i.i36, i32 %_4.i.i.i.i.i37)
  store i32 %23, ptr %dst, align 4, !noalias !629
  %count.i.i = zext i1 %_0.i.i38 to i64
  %_12.i.i = getelementptr inbounds nuw i32, ptr %_10, i64 %count.i.i
  %count2.i.i = zext i1 %is_l.i18.i to i64
  %_14.i.i = getelementptr inbounds nuw i32, ptr %scratch_base, i64 %count2.i.i
  %_16.i.i = getelementptr inbounds nuw i8, ptr %dst, i64 4
  tail call void @llvm.experimental.noalias.scope.decl(metadata !631)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !634)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !636), !noalias !639
  tail call void @llvm.experimental.noalias.scope.decl(metadata !642), !noalias !639
  tail call void @llvm.experimental.noalias.scope.decl(metadata !644), !noalias !639
  tail call void @llvm.experimental.noalias.scope.decl(metadata !647), !noalias !639
  tail call void @llvm.experimental.noalias.scope.decl(metadata !649), !noalias !639
  tail call void @llvm.experimental.noalias.scope.decl(metadata !652), !noalias !639
  %_3.i.i.i.i19.i = load i32, ptr %21, align 4, !alias.scope !654, !noalias !655, !noundef !32
  %_4.i.i.i.i20.i = load i32, ptr %20, align 4, !alias.scope !656, !noalias !657, !noundef !32
  %_0.i21.i = icmp slt i32 %_3.i.i.i.i19.i, %_4.i.i.i.i20.i
  %is_l.i.i = xor i1 %_0.i21.i, true
  %24 = tail call i32 @llvm.smax.i32(i32 %_3.i.i.i.i19.i, i32 %_4.i.i.i.i20.i)
  store i32 %24, ptr %22, align 4, !noalias !658
  %count.neg.i.i = sext i1 %is_l.i.i to i64
  %25 = getelementptr i32, ptr %21, i64 %count.neg.i.i
  %count3.neg.i.i = sext i1 %_0.i21.i to i64
  %26 = getelementptr i32, ptr %20, i64 %count3.neg.i.i
  %27 = getelementptr inbounds nuw i8, ptr %dst, i64 24
  tail call void @llvm.experimental.noalias.scope.decl(metadata !660)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !662)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !664), !noalias !610
  tail call void @llvm.experimental.noalias.scope.decl(metadata !666), !noalias !610
  tail call void @llvm.experimental.noalias.scope.decl(metadata !668), !noalias !610
  tail call void @llvm.experimental.noalias.scope.decl(metadata !670), !noalias !610
  tail call void @llvm.experimental.noalias.scope.decl(metadata !672), !noalias !610
  tail call void @llvm.experimental.noalias.scope.decl(metadata !674), !noalias !610
  %_3.i.i.i.i.i36.1 = load i32, ptr %_12.i.i, align 4, !alias.scope !676, !noalias !677, !noundef !32
  %_4.i.i.i.i.i37.1 = load i32, ptr %_14.i.i, align 4, !alias.scope !678, !noalias !679, !noundef !32
  %_0.i.i38.1 = icmp slt i32 %_3.i.i.i.i.i36.1, %_4.i.i.i.i.i37.1
  %is_l.i18.i.1 = xor i1 %_0.i.i38.1, true
  %28 = tail call i32 @llvm.smin.i32(i32 %_3.i.i.i.i.i36.1, i32 %_4.i.i.i.i.i37.1)
  store i32 %28, ptr %_16.i.i, align 4, !noalias !629
  %count.i.i.1 = zext i1 %_0.i.i38.1 to i64
  %_12.i.i.1 = getelementptr inbounds nuw i32, ptr %_12.i.i, i64 %count.i.i.1
  %count2.i.i.1 = zext i1 %is_l.i18.i.1 to i64
  %_14.i.i.1 = getelementptr inbounds nuw i32, ptr %_14.i.i, i64 %count2.i.i.1
  %_16.i.i.1 = getelementptr inbounds nuw i8, ptr %dst, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !680)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !682)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !684), !noalias !639
  tail call void @llvm.experimental.noalias.scope.decl(metadata !686), !noalias !639
  tail call void @llvm.experimental.noalias.scope.decl(metadata !688), !noalias !639
  tail call void @llvm.experimental.noalias.scope.decl(metadata !690), !noalias !639
  tail call void @llvm.experimental.noalias.scope.decl(metadata !692), !noalias !639
  tail call void @llvm.experimental.noalias.scope.decl(metadata !694), !noalias !639
  %_3.i.i.i.i19.i.1 = load i32, ptr %25, align 4, !alias.scope !696, !noalias !697, !noundef !32
  %_4.i.i.i.i20.i.1 = load i32, ptr %26, align 4, !alias.scope !698, !noalias !699, !noundef !32
  %_0.i21.i.1 = icmp slt i32 %_3.i.i.i.i19.i.1, %_4.i.i.i.i20.i.1
  %is_l.i.i.1 = xor i1 %_0.i21.i.1, true
  %29 = tail call i32 @llvm.smax.i32(i32 %_3.i.i.i.i19.i.1, i32 %_4.i.i.i.i20.i.1)
  store i32 %29, ptr %27, align 4, !noalias !658
  %count.neg.i.i.1 = sext i1 %is_l.i.i.1 to i64
  %30 = getelementptr i32, ptr %25, i64 %count.neg.i.i.1
  %count3.neg.i.i.1 = sext i1 %_0.i21.i.1 to i64
  %31 = getelementptr i32, ptr %26, i64 %count3.neg.i.i.1
  %32 = getelementptr inbounds nuw i8, ptr %dst, i64 20
  tail call void @llvm.experimental.noalias.scope.decl(metadata !700)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !702)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !704), !noalias !610
  tail call void @llvm.experimental.noalias.scope.decl(metadata !706), !noalias !610
  tail call void @llvm.experimental.noalias.scope.decl(metadata !708), !noalias !610
  tail call void @llvm.experimental.noalias.scope.decl(metadata !710), !noalias !610
  tail call void @llvm.experimental.noalias.scope.decl(metadata !712), !noalias !610
  tail call void @llvm.experimental.noalias.scope.decl(metadata !714), !noalias !610
  %_3.i.i.i.i.i36.2 = load i32, ptr %_12.i.i.1, align 4, !alias.scope !716, !noalias !717, !noundef !32
  %_4.i.i.i.i.i37.2 = load i32, ptr %_14.i.i.1, align 4, !alias.scope !718, !noalias !719, !noundef !32
  %_0.i.i38.2 = icmp slt i32 %_3.i.i.i.i.i36.2, %_4.i.i.i.i.i37.2
  %is_l.i18.i.2 = xor i1 %_0.i.i38.2, true
  %33 = tail call i32 @llvm.smin.i32(i32 %_3.i.i.i.i.i36.2, i32 %_4.i.i.i.i.i37.2)
  store i32 %33, ptr %_16.i.i.1, align 4, !noalias !629
  %count.i.i.2 = zext i1 %_0.i.i38.2 to i64
  %_12.i.i.2 = getelementptr inbounds nuw i32, ptr %_12.i.i.1, i64 %count.i.i.2
  %count2.i.i.2 = zext i1 %is_l.i18.i.2 to i64
  %_14.i.i.2 = getelementptr inbounds nuw i32, ptr %_14.i.i.1, i64 %count2.i.i.2
  %_16.i.i.2 = getelementptr inbounds nuw i8, ptr %dst, i64 12
  tail call void @llvm.experimental.noalias.scope.decl(metadata !720)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !722)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !724), !noalias !639
  tail call void @llvm.experimental.noalias.scope.decl(metadata !726), !noalias !639
  tail call void @llvm.experimental.noalias.scope.decl(metadata !728), !noalias !639
  tail call void @llvm.experimental.noalias.scope.decl(metadata !730), !noalias !639
  tail call void @llvm.experimental.noalias.scope.decl(metadata !732), !noalias !639
  tail call void @llvm.experimental.noalias.scope.decl(metadata !734), !noalias !639
  %_3.i.i.i.i19.i.2 = load i32, ptr %30, align 4, !alias.scope !736, !noalias !737, !noundef !32
  %_4.i.i.i.i20.i.2 = load i32, ptr %31, align 4, !alias.scope !738, !noalias !739, !noundef !32
  %_0.i21.i.2 = icmp slt i32 %_3.i.i.i.i19.i.2, %_4.i.i.i.i20.i.2
  %is_l.i.i.2 = xor i1 %_0.i21.i.2, true
  %34 = tail call i32 @llvm.smax.i32(i32 %_3.i.i.i.i19.i.2, i32 %_4.i.i.i.i20.i.2)
  store i32 %34, ptr %32, align 4, !noalias !658
  %count.neg.i.i.2 = sext i1 %is_l.i.i.2 to i64
  %35 = getelementptr i32, ptr %30, i64 %count.neg.i.i.2
  %count3.neg.i.i.2 = sext i1 %_0.i21.i.2 to i64
  %36 = getelementptr i32, ptr %31, i64 %count3.neg.i.i.2
  %37 = getelementptr inbounds nuw i8, ptr %dst, i64 16
  tail call void @llvm.experimental.noalias.scope.decl(metadata !740)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !742)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !744), !noalias !610
  tail call void @llvm.experimental.noalias.scope.decl(metadata !746), !noalias !610
  tail call void @llvm.experimental.noalias.scope.decl(metadata !748), !noalias !610
  tail call void @llvm.experimental.noalias.scope.decl(metadata !750), !noalias !610
  tail call void @llvm.experimental.noalias.scope.decl(metadata !752), !noalias !610
  tail call void @llvm.experimental.noalias.scope.decl(metadata !754), !noalias !610
  %_3.i.i.i.i.i36.3 = load i32, ptr %_12.i.i.2, align 4, !alias.scope !756, !noalias !757, !noundef !32
  %_4.i.i.i.i.i37.3 = load i32, ptr %_14.i.i.2, align 4, !alias.scope !758, !noalias !759, !noundef !32
  %_0.i.i38.3 = icmp slt i32 %_3.i.i.i.i.i36.3, %_4.i.i.i.i.i37.3
  %is_l.i18.i.3 = xor i1 %_0.i.i38.3, true
  %38 = tail call i32 @llvm.smin.i32(i32 %_3.i.i.i.i.i36.3, i32 %_4.i.i.i.i.i37.3)
  store i32 %38, ptr %_16.i.i.2, align 4, !noalias !629
  %count.i.i.3 = zext i1 %_0.i.i38.3 to i64
  %_12.i.i.3 = getelementptr inbounds nuw i32, ptr %_12.i.i.2, i64 %count.i.i.3
  %count2.i.i.3 = zext i1 %is_l.i18.i.3 to i64
  %_14.i.i.3 = getelementptr inbounds nuw i32, ptr %_14.i.i.2, i64 %count2.i.i.3
  tail call void @llvm.experimental.noalias.scope.decl(metadata !760)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !762)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !764), !noalias !639
  tail call void @llvm.experimental.noalias.scope.decl(metadata !766), !noalias !639
  tail call void @llvm.experimental.noalias.scope.decl(metadata !768), !noalias !639
  tail call void @llvm.experimental.noalias.scope.decl(metadata !770), !noalias !639
  tail call void @llvm.experimental.noalias.scope.decl(metadata !772), !noalias !639
  tail call void @llvm.experimental.noalias.scope.decl(metadata !774), !noalias !639
  %_3.i.i.i.i19.i.3 = load i32, ptr %35, align 4, !alias.scope !776, !noalias !777, !noundef !32
  %_4.i.i.i.i20.i.3 = load i32, ptr %36, align 4, !alias.scope !778, !noalias !779, !noundef !32
  %_0.i21.i.3 = icmp slt i32 %_3.i.i.i.i19.i.3, %_4.i.i.i.i20.i.3
  %is_l.i.i.3 = xor i1 %_0.i21.i.3, true
  %39 = tail call i32 @llvm.smax.i32(i32 %_3.i.i.i.i19.i.3, i32 %_4.i.i.i.i20.i.3)
  store i32 %39, ptr %37, align 4, !noalias !658
  %count.neg.i.i.3 = sext i1 %is_l.i.i.3 to i64
  %40 = getelementptr i32, ptr %35, i64 %count.neg.i.i.3
  %count3.neg.i.i.3 = sext i1 %_0.i21.i.3 to i64
  %41 = getelementptr i32, ptr %36, i64 %count3.neg.i.i.3
  %42 = getelementptr i8, ptr %41, i64 4
  %43 = getelementptr i8, ptr %40, i64 4
  %_31.i = icmp ne ptr %_14.i.i.3, %42
  %_32.i = icmp ne ptr %_12.i.i.3, %43
  %or.cond.i = select i1 %_31.i, i1 true, i1 %_32.i
  br i1 %or.cond.i, label %bb13.i, label %_ZN4core5slice4sort6shared9smallsort19bidirectional_merge17h9a78ceb788512c3fE.exit, !prof !780

bb13.i:                                           ; preds = %start
; call core::slice::sort::shared::smallsort::panic_on_ord_violation
  tail call void @_ZN4core5slice4sort6shared9smallsort22panic_on_ord_violation17hc77a22a2d50782cdE() #24, !noalias !599
  unreachable

_ZN4core5slice4sort6shared9smallsort19bidirectional_merge17h9a78ceb788512c3fE.exit: ; preds = %start
  ret void
}

; core::slice::sort::shared::smallsort::sort8_stable
; Function Attrs: nonlazybind uwtable
define void @_ZN4core5slice4sort6shared9smallsort12sort8_stable17hb77e0116e665e416E(ptr noundef readonly captures(none) %v_base, ptr noundef writeonly captures(none) %dst, ptr noundef captures(address) %scratch_base, ptr noalias readnone align 8 captures(none) %is_less) unnamed_addr #1 {
start:
; call core::slice::sort::shared::smallsort::sort4_stable
  tail call void @_ZN4core5slice4sort6shared9smallsort12sort4_stable17hff7d5c64b61890c1E(ptr noundef %v_base, ptr noundef %scratch_base, ptr noalias align 8 poison)
  %_9 = getelementptr inbounds nuw i8, ptr %v_base, i64 16
  %_10 = getelementptr inbounds nuw i8, ptr %scratch_base, i64 16
; call core::slice::sort::shared::smallsort::sort4_stable
  tail call void @_ZN4core5slice4sort6shared9smallsort12sort4_stable17hff7d5c64b61890c1E(ptr noundef nonnull %_9, ptr noundef nonnull %_10, ptr noalias align 8 poison)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !781)
  %0 = getelementptr inbounds nuw i8, ptr %dst, i64 28
  %1 = getelementptr inbounds nuw i8, ptr %scratch_base, i64 28
  %2 = getelementptr i8, ptr %scratch_base, i64 12
  tail call void @llvm.experimental.noalias.scope.decl(metadata !784)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !787)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !789), !noalias !792
  tail call void @llvm.experimental.noalias.scope.decl(metadata !795), !noalias !792
  tail call void @llvm.experimental.noalias.scope.decl(metadata !797), !noalias !792
  tail call void @llvm.experimental.noalias.scope.decl(metadata !800), !noalias !792
  %_4.i.i.i.i = load float, ptr %_10, align 4, !alias.scope !802, !noalias !803, !noundef !32
  %_5.i.i.i.i = load float, ptr %scratch_base, align 4, !alias.scope !804, !noalias !805, !noundef !32
  %.not.i.i.i.i = fcmp uno float %_4.i.i.i.i, %_5.i.i.i.i
  br i1 %.not.i.i.i.i, label %bb2.i.i.i.i, label %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h47d2093944d38971E.exit.i", !prof !35

bb2.i.i.i.i:                                      ; preds = %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h47d2093944d38971E.exit24.i.2", %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h47d2093944d38971E.exit24.i.1", %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h47d2093944d38971E.exit24.i", %start
; call core::option::unwrap_failed
  tail call void @_ZN4core6option13unwrap_failed17hef2534b77b89c04fE(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_e233725058d574d75123974d8763f424) #24, !noalias !806
  unreachable

"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h47d2093944d38971E.exit.i": ; preds = %start
  %_0.i.i = fcmp olt float %_4.i.i.i.i, %_5.i.i.i.i
  %..i17.i = select i1 %_0.i.i, ptr %_10, ptr %scratch_base
  %3 = load i32, ptr %..i17.i, align 4, !alias.scope !781, !noalias !807
  store i32 %3, ptr %dst, align 4, !noalias !809
  tail call void @llvm.experimental.noalias.scope.decl(metadata !810)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !813)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !815), !noalias !818
  tail call void @llvm.experimental.noalias.scope.decl(metadata !821), !noalias !818
  tail call void @llvm.experimental.noalias.scope.decl(metadata !823), !noalias !818
  tail call void @llvm.experimental.noalias.scope.decl(metadata !826), !noalias !818
  %_4.i.i.i19.i = load float, ptr %1, align 4, !alias.scope !828, !noalias !829, !noundef !32
  %_5.i.i.i20.i = load float, ptr %2, align 4, !alias.scope !830, !noalias !831, !noundef !32
  %.not.i.i.i21.i = fcmp uno float %_4.i.i.i19.i, %_5.i.i.i20.i
  br i1 %.not.i.i.i21.i, label %bb2.i.i.i23.i, label %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h47d2093944d38971E.exit24.i", !prof !35

bb2.i.i.i23.i:                                    ; preds = %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h47d2093944d38971E.exit.i.3", %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h47d2093944d38971E.exit.i.2", %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h47d2093944d38971E.exit.i.1", %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h47d2093944d38971E.exit.i"
; call core::option::unwrap_failed
  tail call void @_ZN4core6option13unwrap_failed17hef2534b77b89c04fE(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_e233725058d574d75123974d8763f424) #24, !noalias !832
  unreachable

"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h47d2093944d38971E.exit24.i": ; preds = %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h47d2093944d38971E.exit.i"
  %is_l.i18.i = xor i1 %_0.i.i, true
  %count2.i.i = zext i1 %is_l.i18.i to i64
  %_14.i.i = getelementptr inbounds nuw float, ptr %scratch_base, i64 %count2.i.i
  %count.i.i = zext i1 %_0.i.i to i64
  %_12.i.i = getelementptr inbounds nuw float, ptr %_10, i64 %count.i.i
  %_0.i22.i = fcmp olt float %_4.i.i.i19.i, %_5.i.i.i20.i
  %..i.i = select i1 %_0.i22.i, ptr %2, ptr %1
  %is_l.i.i = xor i1 %_0.i22.i, true
  %4 = load i32, ptr %..i.i, align 4, !alias.scope !781, !noalias !833
  store i32 %4, ptr %0, align 4, !noalias !835
  %count.neg.i.i = sext i1 %is_l.i.i to i64
  %5 = getelementptr float, ptr %1, i64 %count.neg.i.i
  %count3.neg.i.i = sext i1 %_0.i22.i to i64
  %6 = getelementptr float, ptr %2, i64 %count3.neg.i.i
  %7 = getelementptr inbounds nuw i8, ptr %dst, i64 24
  tail call void @llvm.experimental.noalias.scope.decl(metadata !836)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !838)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !840), !noalias !792
  tail call void @llvm.experimental.noalias.scope.decl(metadata !842), !noalias !792
  tail call void @llvm.experimental.noalias.scope.decl(metadata !844), !noalias !792
  tail call void @llvm.experimental.noalias.scope.decl(metadata !846), !noalias !792
  %_4.i.i.i.i.1 = load float, ptr %_12.i.i, align 4, !alias.scope !848, !noalias !849, !noundef !32
  %_5.i.i.i.i.1 = load float, ptr %_14.i.i, align 4, !alias.scope !850, !noalias !851, !noundef !32
  %.not.i.i.i.i.1 = fcmp uno float %_4.i.i.i.i.1, %_5.i.i.i.i.1
  br i1 %.not.i.i.i.i.1, label %bb2.i.i.i.i, label %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h47d2093944d38971E.exit.i.1", !prof !35

"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h47d2093944d38971E.exit.i.1": ; preds = %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h47d2093944d38971E.exit24.i"
  %_16.i.i = getelementptr inbounds nuw i8, ptr %dst, i64 4
  %_0.i.i.1 = fcmp olt float %_4.i.i.i.i.1, %_5.i.i.i.i.1
  %..i17.i.1 = select i1 %_0.i.i.1, ptr %_12.i.i, ptr %_14.i.i
  %8 = load i32, ptr %..i17.i.1, align 4, !alias.scope !781, !noalias !807
  store i32 %8, ptr %_16.i.i, align 4, !noalias !809
  tail call void @llvm.experimental.noalias.scope.decl(metadata !852)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !854)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !856), !noalias !818
  tail call void @llvm.experimental.noalias.scope.decl(metadata !858), !noalias !818
  tail call void @llvm.experimental.noalias.scope.decl(metadata !860), !noalias !818
  tail call void @llvm.experimental.noalias.scope.decl(metadata !862), !noalias !818
  %_4.i.i.i19.i.1 = load float, ptr %5, align 4, !alias.scope !864, !noalias !865, !noundef !32
  %_5.i.i.i20.i.1 = load float, ptr %6, align 4, !alias.scope !866, !noalias !867, !noundef !32
  %.not.i.i.i21.i.1 = fcmp uno float %_4.i.i.i19.i.1, %_5.i.i.i20.i.1
  br i1 %.not.i.i.i21.i.1, label %bb2.i.i.i23.i, label %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h47d2093944d38971E.exit24.i.1", !prof !35

"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h47d2093944d38971E.exit24.i.1": ; preds = %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h47d2093944d38971E.exit.i.1"
  %is_l.i18.i.1 = xor i1 %_0.i.i.1, true
  %count2.i.i.1 = zext i1 %is_l.i18.i.1 to i64
  %_14.i.i.1 = getelementptr inbounds nuw float, ptr %_14.i.i, i64 %count2.i.i.1
  %count.i.i.1 = zext i1 %_0.i.i.1 to i64
  %_12.i.i.1 = getelementptr inbounds nuw float, ptr %_12.i.i, i64 %count.i.i.1
  %_0.i22.i.1 = fcmp olt float %_4.i.i.i19.i.1, %_5.i.i.i20.i.1
  %..i.i.1 = select i1 %_0.i22.i.1, ptr %6, ptr %5
  %is_l.i.i.1 = xor i1 %_0.i22.i.1, true
  %9 = load i32, ptr %..i.i.1, align 4, !alias.scope !781, !noalias !833
  store i32 %9, ptr %7, align 4, !noalias !835
  %count.neg.i.i.1 = sext i1 %is_l.i.i.1 to i64
  %10 = getelementptr float, ptr %5, i64 %count.neg.i.i.1
  %count3.neg.i.i.1 = sext i1 %_0.i22.i.1 to i64
  %11 = getelementptr float, ptr %6, i64 %count3.neg.i.i.1
  %12 = getelementptr inbounds nuw i8, ptr %dst, i64 20
  tail call void @llvm.experimental.noalias.scope.decl(metadata !868)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !870)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !872), !noalias !792
  tail call void @llvm.experimental.noalias.scope.decl(metadata !874), !noalias !792
  tail call void @llvm.experimental.noalias.scope.decl(metadata !876), !noalias !792
  tail call void @llvm.experimental.noalias.scope.decl(metadata !878), !noalias !792
  %_4.i.i.i.i.2 = load float, ptr %_12.i.i.1, align 4, !alias.scope !880, !noalias !881, !noundef !32
  %_5.i.i.i.i.2 = load float, ptr %_14.i.i.1, align 4, !alias.scope !882, !noalias !883, !noundef !32
  %.not.i.i.i.i.2 = fcmp uno float %_4.i.i.i.i.2, %_5.i.i.i.i.2
  br i1 %.not.i.i.i.i.2, label %bb2.i.i.i.i, label %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h47d2093944d38971E.exit.i.2", !prof !35

"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h47d2093944d38971E.exit.i.2": ; preds = %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h47d2093944d38971E.exit24.i.1"
  %_16.i.i.1 = getelementptr inbounds nuw i8, ptr %dst, i64 8
  %_0.i.i.2 = fcmp olt float %_4.i.i.i.i.2, %_5.i.i.i.i.2
  %..i17.i.2 = select i1 %_0.i.i.2, ptr %_12.i.i.1, ptr %_14.i.i.1
  %13 = load i32, ptr %..i17.i.2, align 4, !alias.scope !781, !noalias !807
  store i32 %13, ptr %_16.i.i.1, align 4, !noalias !809
  tail call void @llvm.experimental.noalias.scope.decl(metadata !884)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !886)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !888), !noalias !818
  tail call void @llvm.experimental.noalias.scope.decl(metadata !890), !noalias !818
  tail call void @llvm.experimental.noalias.scope.decl(metadata !892), !noalias !818
  tail call void @llvm.experimental.noalias.scope.decl(metadata !894), !noalias !818
  %_4.i.i.i19.i.2 = load float, ptr %10, align 4, !alias.scope !896, !noalias !897, !noundef !32
  %_5.i.i.i20.i.2 = load float, ptr %11, align 4, !alias.scope !898, !noalias !899, !noundef !32
  %.not.i.i.i21.i.2 = fcmp uno float %_4.i.i.i19.i.2, %_5.i.i.i20.i.2
  br i1 %.not.i.i.i21.i.2, label %bb2.i.i.i23.i, label %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h47d2093944d38971E.exit24.i.2", !prof !35

"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h47d2093944d38971E.exit24.i.2": ; preds = %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h47d2093944d38971E.exit.i.2"
  %is_l.i18.i.2 = xor i1 %_0.i.i.2, true
  %count2.i.i.2 = zext i1 %is_l.i18.i.2 to i64
  %_14.i.i.2 = getelementptr inbounds nuw float, ptr %_14.i.i.1, i64 %count2.i.i.2
  %count.i.i.2 = zext i1 %_0.i.i.2 to i64
  %_12.i.i.2 = getelementptr inbounds nuw float, ptr %_12.i.i.1, i64 %count.i.i.2
  %_0.i22.i.2 = fcmp olt float %_4.i.i.i19.i.2, %_5.i.i.i20.i.2
  %..i.i.2 = select i1 %_0.i22.i.2, ptr %11, ptr %10
  %is_l.i.i.2 = xor i1 %_0.i22.i.2, true
  %14 = load i32, ptr %..i.i.2, align 4, !alias.scope !781, !noalias !833
  store i32 %14, ptr %12, align 4, !noalias !835
  %count.neg.i.i.2 = sext i1 %is_l.i.i.2 to i64
  %15 = getelementptr float, ptr %10, i64 %count.neg.i.i.2
  %count3.neg.i.i.2 = sext i1 %_0.i22.i.2 to i64
  %16 = getelementptr float, ptr %11, i64 %count3.neg.i.i.2
  %17 = getelementptr inbounds nuw i8, ptr %dst, i64 16
  tail call void @llvm.experimental.noalias.scope.decl(metadata !900)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !902)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !904), !noalias !792
  tail call void @llvm.experimental.noalias.scope.decl(metadata !906), !noalias !792
  tail call void @llvm.experimental.noalias.scope.decl(metadata !908), !noalias !792
  tail call void @llvm.experimental.noalias.scope.decl(metadata !910), !noalias !792
  %_4.i.i.i.i.3 = load float, ptr %_12.i.i.2, align 4, !alias.scope !912, !noalias !913, !noundef !32
  %_5.i.i.i.i.3 = load float, ptr %_14.i.i.2, align 4, !alias.scope !914, !noalias !915, !noundef !32
  %.not.i.i.i.i.3 = fcmp uno float %_4.i.i.i.i.3, %_5.i.i.i.i.3
  br i1 %.not.i.i.i.i.3, label %bb2.i.i.i.i, label %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h47d2093944d38971E.exit.i.3", !prof !35

"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h47d2093944d38971E.exit.i.3": ; preds = %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h47d2093944d38971E.exit24.i.2"
  %_16.i.i.2 = getelementptr inbounds nuw i8, ptr %dst, i64 12
  %_0.i.i.3 = fcmp olt float %_4.i.i.i.i.3, %_5.i.i.i.i.3
  %..i17.i.3 = select i1 %_0.i.i.3, ptr %_12.i.i.2, ptr %_14.i.i.2
  %18 = load i32, ptr %..i17.i.3, align 4, !alias.scope !781, !noalias !807
  store i32 %18, ptr %_16.i.i.2, align 4, !noalias !809
  tail call void @llvm.experimental.noalias.scope.decl(metadata !916)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !918)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !920), !noalias !818
  tail call void @llvm.experimental.noalias.scope.decl(metadata !922), !noalias !818
  tail call void @llvm.experimental.noalias.scope.decl(metadata !924), !noalias !818
  tail call void @llvm.experimental.noalias.scope.decl(metadata !926), !noalias !818
  %_4.i.i.i19.i.3 = load float, ptr %15, align 4, !alias.scope !928, !noalias !929, !noundef !32
  %_5.i.i.i20.i.3 = load float, ptr %16, align 4, !alias.scope !930, !noalias !931, !noundef !32
  %.not.i.i.i21.i.3 = fcmp uno float %_4.i.i.i19.i.3, %_5.i.i.i20.i.3
  br i1 %.not.i.i.i21.i.3, label %bb2.i.i.i23.i, label %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h47d2093944d38971E.exit24.i.3", !prof !35

"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h47d2093944d38971E.exit24.i.3": ; preds = %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h47d2093944d38971E.exit.i.3"
  %is_l.i18.i.3 = xor i1 %_0.i.i.3, true
  %count2.i.i.3 = zext i1 %is_l.i18.i.3 to i64
  %_14.i.i.3 = getelementptr inbounds nuw float, ptr %_14.i.i.2, i64 %count2.i.i.3
  %count.i.i.3 = zext i1 %_0.i.i.3 to i64
  %_12.i.i.3 = getelementptr inbounds nuw float, ptr %_12.i.i.2, i64 %count.i.i.3
  %_0.i22.i.3 = fcmp olt float %_4.i.i.i19.i.3, %_5.i.i.i20.i.3
  %..i.i.3 = select i1 %_0.i22.i.3, ptr %16, ptr %15
  %is_l.i.i.3 = xor i1 %_0.i22.i.3, true
  %19 = load i32, ptr %..i.i.3, align 4, !alias.scope !781, !noalias !833
  store i32 %19, ptr %17, align 4, !noalias !835
  %count.neg.i.i.3 = sext i1 %is_l.i.i.3 to i64
  %20 = getelementptr float, ptr %15, i64 %count.neg.i.i.3
  %count3.neg.i.i.3 = sext i1 %_0.i22.i.3 to i64
  %21 = getelementptr float, ptr %16, i64 %count3.neg.i.i.3
  %22 = getelementptr i8, ptr %21, i64 4
  %23 = getelementptr i8, ptr %20, i64 4
  %_31.i = icmp ne ptr %_14.i.i.3, %22
  %_32.i = icmp ne ptr %_12.i.i.3, %23
  %or.cond.i = select i1 %_31.i, i1 true, i1 %_32.i
  br i1 %or.cond.i, label %bb13.i, label %_ZN4core5slice4sort6shared9smallsort19bidirectional_merge17hda7045743ed9389cE.exit, !prof !780

bb13.i:                                           ; preds = %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h47d2093944d38971E.exit24.i.3"
; call core::slice::sort::shared::smallsort::panic_on_ord_violation
  tail call void @_ZN4core5slice4sort6shared9smallsort22panic_on_ord_violation17hc77a22a2d50782cdE() #24, !noalias !781
  unreachable

_ZN4core5slice4sort6shared9smallsort19bidirectional_merge17hda7045743ed9389cE.exit: ; preds = %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h47d2093944d38971E.exit24.i.3"
  ret void
}

; core::slice::sort::shared::smallsort::bidirectional_merge
; Function Attrs: nonlazybind uwtable
define void @_ZN4core5slice4sort6shared9smallsort19bidirectional_merge17h9a78ceb788512c3fE(ptr noalias noundef nonnull readonly align 4 captures(address) %v.0, i64 noundef range(i64 0, 2305843009213693952) %v.1, ptr noundef writeonly captures(none) %0, ptr noalias noundef readnone align 8 captures(none) dereferenceable(8) %is_less) unnamed_addr #1 {
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !932)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !935)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !937), !noalias !940
  tail call void @llvm.experimental.noalias.scope.decl(metadata !943), !noalias !940
  tail call void @llvm.experimental.noalias.scope.decl(metadata !945), !noalias !940
  tail call void @llvm.experimental.noalias.scope.decl(metadata !948), !noalias !940
  tail call void @llvm.experimental.noalias.scope.decl(metadata !950), !noalias !940
  tail call void @llvm.experimental.noalias.scope.decl(metadata !953), !noalias !940
  %_3.i.i.i.i = load i32, ptr %right.sroa.0.026, align 4, !alias.scope !955, !noalias !956, !noundef !32
  %_4.i.i.i.i = load i32, ptr %left.sroa.0.027, align 4, !alias.scope !957, !noalias !958, !noundef !32
  %_0.i = icmp slt i32 %_3.i.i.i.i, %_4.i.i.i.i
  %is_l.i18 = xor i1 %_0.i, true
  %7 = tail call i32 @llvm.smin.i32(i32 %_3.i.i.i.i, i32 %_4.i.i.i.i)
  store i32 %7, ptr %dst.sroa.0.029, align 4, !noalias !959
  %count.i = zext i1 %_0.i to i64
  %_12.i = getelementptr inbounds nuw i32, ptr %right.sroa.0.026, i64 %count.i
  %count2.i = zext i1 %is_l.i18 to i64
  %_14.i = getelementptr inbounds nuw i32, ptr %left.sroa.0.027, i64 %count2.i
  %_16.i = getelementptr inbounds nuw i8, ptr %dst.sroa.0.029, i64 4
  tail call void @llvm.experimental.noalias.scope.decl(metadata !961)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !964)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !966), !noalias !969
  tail call void @llvm.experimental.noalias.scope.decl(metadata !972), !noalias !969
  tail call void @llvm.experimental.noalias.scope.decl(metadata !974), !noalias !969
  tail call void @llvm.experimental.noalias.scope.decl(metadata !977), !noalias !969
  tail call void @llvm.experimental.noalias.scope.decl(metadata !979), !noalias !969
  tail call void @llvm.experimental.noalias.scope.decl(metadata !982), !noalias !969
  %_3.i.i.i.i19 = load i32, ptr %right_rev.sroa.0.024, align 4, !alias.scope !984, !noalias !985, !noundef !32
  %_4.i.i.i.i20 = load i32, ptr %left_rev.sroa.0.025, align 4, !alias.scope !986, !noalias !987, !noundef !32
  %_0.i21 = icmp slt i32 %_3.i.i.i.i19, %_4.i.i.i.i20
  %is_l.i = xor i1 %_0.i21, true
  %8 = tail call i32 @llvm.smax.i32(i32 %_3.i.i.i.i19, i32 %_4.i.i.i.i20)
  store i32 %8, ptr %dst_rev.sroa.0.023, align 4, !noalias !988
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
  br i1 %or.cond, label %bb13, label %bb14, !prof !780

bb14:                                             ; preds = %bb9
  ret void

bb13:                                             ; preds = %bb9
; call core::slice::sort::shared::smallsort::panic_on_ord_violation
  tail call void @_ZN4core5slice4sort6shared9smallsort22panic_on_ord_violation17hc77a22a2d50782cdE() #24
  unreachable
}

; core::slice::sort::shared::smallsort::bidirectional_merge
; Function Attrs: nonlazybind uwtable
define void @_ZN4core5slice4sort6shared9smallsort19bidirectional_merge17hda7045743ed9389cE(ptr noalias noundef nonnull readonly align 4 captures(address) %v.0, i64 noundef range(i64 0, 2305843009213693952) %v.1, ptr noundef writeonly captures(none) %0, ptr noalias readnone align 8 captures(none) %is_less) unnamed_addr #1 {
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

bb16:                                             ; preds = %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h47d2093944d38971E.exit24"
  %5 = getelementptr i8, ptr %10, i64 4
  %6 = getelementptr i8, ptr %9, i64 4
  %_44 = and i64 %v.1, 1
  %_22 = icmp eq i64 %_44, 0
  br i1 %_22, label %bb9, label %bb5

bb15:                                             ; preds = %start, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h47d2093944d38971E.exit24"
  %dst.sroa.0.042 = phi ptr [ %_16.i, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h47d2093944d38971E.exit24" ], [ %0, %start ]
  %iter.sroa.0.041 = phi i64 [ %_39, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h47d2093944d38971E.exit24" ], [ 0, %start ]
  %left.sroa.0.040 = phi ptr [ %_14.i, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h47d2093944d38971E.exit24" ], [ %v.0, %start ]
  %right.sroa.0.039 = phi ptr [ %_12.i, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h47d2093944d38971E.exit24" ], [ %3, %start ]
  %left_rev.sroa.0.038 = phi ptr [ %10, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h47d2093944d38971E.exit24" ], [ %4, %start ]
  %right_rev.sroa.0.037 = phi ptr [ %9, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h47d2093944d38971E.exit24" ], [ %2, %start ]
  %dst_rev.sroa.0.036 = phi ptr [ %11, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h47d2093944d38971E.exit24" ], [ %1, %start ]
  %_39 = add nuw nsw i64 %iter.sroa.0.041, 1
  tail call void @llvm.experimental.noalias.scope.decl(metadata !990)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !993)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !995), !noalias !998
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1001), !noalias !998
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1003), !noalias !998
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1006), !noalias !998
  %_4.i.i.i = load float, ptr %right.sroa.0.039, align 4, !alias.scope !1008, !noalias !1009, !noundef !32
  %_5.i.i.i = load float, ptr %left.sroa.0.040, align 4, !alias.scope !1010, !noalias !1011, !noundef !32
  %.not.i.i.i = fcmp uno float %_4.i.i.i, %_5.i.i.i
  br i1 %.not.i.i.i, label %bb2.i.i.i, label %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h47d2093944d38971E.exit", !prof !35

bb2.i.i.i:                                        ; preds = %bb15
; call core::option::unwrap_failed
  tail call void @_ZN4core6option13unwrap_failed17hef2534b77b89c04fE(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_e233725058d574d75123974d8763f424) #24, !noalias !1012
  unreachable

"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h47d2093944d38971E.exit": ; preds = %bb15
  %_0.i = fcmp olt float %_4.i.i.i, %_5.i.i.i
  %..i17 = select i1 %_0.i, ptr %right.sroa.0.039, ptr %left.sroa.0.040
  %7 = load i32, ptr %..i17, align 4, !noalias !1013
  store i32 %7, ptr %dst.sroa.0.042, align 4, !noalias !1013
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1015)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1018)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1020), !noalias !1023
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1026), !noalias !1023
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1028), !noalias !1023
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1031), !noalias !1023
  %_4.i.i.i19 = load float, ptr %right_rev.sroa.0.037, align 4, !alias.scope !1033, !noalias !1034, !noundef !32
  %_5.i.i.i20 = load float, ptr %left_rev.sroa.0.038, align 4, !alias.scope !1035, !noalias !1036, !noundef !32
  %.not.i.i.i21 = fcmp uno float %_4.i.i.i19, %_5.i.i.i20
  br i1 %.not.i.i.i21, label %bb2.i.i.i23, label %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h47d2093944d38971E.exit24", !prof !35

bb2.i.i.i23:                                      ; preds = %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h47d2093944d38971E.exit"
; call core::option::unwrap_failed
  tail call void @_ZN4core6option13unwrap_failed17hef2534b77b89c04fE(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_e233725058d574d75123974d8763f424) #24, !noalias !1037
  unreachable

"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h47d2093944d38971E.exit24": ; preds = %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h47d2093944d38971E.exit"
  %_16.i = getelementptr inbounds nuw i8, ptr %dst.sroa.0.042, i64 4
  %is_l.i18 = xor i1 %_0.i, true
  %count2.i = zext i1 %is_l.i18 to i64
  %_14.i = getelementptr inbounds nuw float, ptr %left.sroa.0.040, i64 %count2.i
  %count.i = zext i1 %_0.i to i64
  %_12.i = getelementptr inbounds nuw float, ptr %right.sroa.0.039, i64 %count.i
  %_0.i22 = fcmp olt float %_4.i.i.i19, %_5.i.i.i20
  %..i = select i1 %_0.i22, ptr %left_rev.sroa.0.038, ptr %right_rev.sroa.0.037
  %is_l.i = xor i1 %_0.i22, true
  %8 = load i32, ptr %..i, align 4, !noalias !1038
  store i32 %8, ptr %dst_rev.sroa.0.036, align 4, !noalias !1038
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
  br i1 %or.cond, label %bb13, label %bb14, !prof !780

bb14:                                             ; preds = %bb9
  ret void

bb13:                                             ; preds = %bb9
; call core::slice::sort::shared::smallsort::panic_on_ord_violation
  tail call void @_ZN4core5slice4sort6shared9smallsort22panic_on_ord_violation17hc77a22a2d50782cdE() #24
  unreachable
}

; core::slice::sort::shared::smallsort::insertion_sort_shift_left
; Function Attrs: nonlazybind uwtable
define void @_ZN4core5slice4sort6shared9smallsort25insertion_sort_shift_left17h500061426fbe7d96E(ptr noalias noundef nonnull align 4 captures(address) %v.0, i64 noundef range(i64 0, 2305843009213693952) %v.1, i64 noundef %offset, ptr noalias readnone align 8 captures(none) %is_less) unnamed_addr #1 personality ptr @rust_eh_personality {
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

bb7:                                              ; preds = %_ZN4core5slice4sort6shared9smallsort11insert_tail17h4f7839f268585107E.exit, %bb3
  ret void

bb5:                                              ; preds = %bb5.preheader, %_ZN4core5slice4sort6shared9smallsort11insert_tail17h4f7839f268585107E.exit
  %tail.sroa.0.04 = phi ptr [ %_15, %_ZN4core5slice4sort6shared9smallsort11insert_tail17h4f7839f268585107E.exit ], [ %1, %bb5.preheader ]
  %2 = getelementptr inbounds i8, ptr %tail.sroa.0.04, i64 -4
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1040)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1043)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1045)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1048)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1050)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1053)
  %_4.i.i.i.i = load float, ptr %tail.sroa.0.04, align 4, !alias.scope !1055, !noalias !1056, !noundef !32
  %_5.i.i.i.i = load float, ptr %2, align 4, !alias.scope !1056, !noalias !1055, !noundef !32
  %.not.i.i.i.i = fcmp uno float %_4.i.i.i.i, %_5.i.i.i.i
  br i1 %.not.i.i.i.i, label %bb2.i.i.i.i, label %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h47d2093944d38971E.exit.i", !prof !35

bb2.i.i.i.i:                                      ; preds = %bb5
; call core::option::unwrap_failed
  tail call void @_ZN4core6option13unwrap_failed17hef2534b77b89c04fE(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_e233725058d574d75123974d8763f424) #24, !noalias !1057
  unreachable

"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h47d2093944d38971E.exit.i": ; preds = %bb5
  %_0.i.i = fcmp olt float %_4.i.i.i.i, %_5.i.i.i.i
  br i1 %_0.i.i, label %bb4.i, label %_ZN4core5slice4sort6shared9smallsort11insert_tail17h4f7839f268585107E.exit

bb4.i:                                            ; preds = %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h47d2093944d38971E.exit.i", %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h47d2093944d38971E.exit6.i"
  %gap_guard.sroa.5.0.i = phi ptr [ %sift.sroa.0.0.i, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h47d2093944d38971E.exit6.i" ], [ %tail.sroa.0.04, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h47d2093944d38971E.exit.i" ]
  %sift.sroa.0.0.i = phi ptr [ %4, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h47d2093944d38971E.exit6.i" ], [ %2, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h47d2093944d38971E.exit.i" ]
  %3 = load i32, ptr %sift.sroa.0.0.i, align 4
  store i32 %3, ptr %gap_guard.sroa.5.0.i, align 4
  %_18.i = icmp eq ptr %sift.sroa.0.0.i, %v.0
  br i1 %_18.i, label %bb10.i, label %bb6.i

bb6.i:                                            ; preds = %bb4.i
  %4 = getelementptr inbounds i8, ptr %sift.sroa.0.0.i, i64 -4
  %_5.i.i.i2.i = load float, ptr %4, align 4, !alias.scope !1058, !noalias !1065, !noundef !32
  %.not.i.i.i3.i = fcmp uno float %_4.i.i.i.i, %_5.i.i.i2.i
  br i1 %.not.i.i.i3.i, label %bb2.i.i.i5.i, label %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h47d2093944d38971E.exit6.i", !prof !35

bb2.i.i.i5.i:                                     ; preds = %bb6.i
; invoke core::option::unwrap_failed
  invoke void @_ZN4core6option13unwrap_failed17hef2534b77b89c04fE(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_e233725058d574d75123974d8763f424) #24
          to label %.noexc.i unwind label %cleanup.i

.noexc.i:                                         ; preds = %bb2.i.i.i5.i
  unreachable

"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h47d2093944d38971E.exit6.i": ; preds = %bb6.i
  %_0.i4.i = fcmp olt float %_4.i.i.i.i, %_5.i.i.i2.i
  br i1 %_0.i4.i, label %bb4.i, label %bb10.i

cleanup.i:                                        ; preds = %bb2.i.i.i5.i
  %5 = landingpad { ptr, i32 }
          cleanup
  store float %_4.i.i.i.i, ptr %sift.sroa.0.0.i, align 4, !noalias !1069
  resume { ptr, i32 } %5

bb10.i:                                           ; preds = %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h47d2093944d38971E.exit6.i", %bb4.i
  store float %_4.i.i.i.i, ptr %sift.sroa.0.0.i, align 4, !noalias !1074
  br label %_ZN4core5slice4sort6shared9smallsort11insert_tail17h4f7839f268585107E.exit

_ZN4core5slice4sort6shared9smallsort11insert_tail17h4f7839f268585107E.exit: ; preds = %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h47d2093944d38971E.exit.i", %bb10.i
  %_15 = getelementptr inbounds nuw i8, ptr %tail.sroa.0.04, i64 4
  %_11.not = icmp eq ptr %_15, %v_end
  br i1 %_11.not, label %bb7, label %bb5
}

; core::slice::sort::shared::smallsort::insertion_sort_shift_left
; Function Attrs: nounwind nonlazybind memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable
define void @_ZN4core5slice4sort6shared9smallsort25insertion_sort_shift_left17hbdc8f9db3619b8bbE(ptr noalias noundef nonnull align 4 captures(address) %v.0, i64 noundef range(i64 0, 2305843009213693952) %v.1, i64 noundef %offset, ptr noalias readnone align 8 captures(none) %is_less) unnamed_addr #4 personality ptr @rust_eh_personality {
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

bb7:                                              ; preds = %_ZN4core5slice4sort6shared9smallsort11insert_tail17h56ae50ec7dbaf211E.exit, %bb3
  ret void

bb5:                                              ; preds = %bb5.preheader, %_ZN4core5slice4sort6shared9smallsort11insert_tail17h56ae50ec7dbaf211E.exit
  %tail.sroa.0.02 = phi ptr [ %_15, %_ZN4core5slice4sort6shared9smallsort11insert_tail17h56ae50ec7dbaf211E.exit ], [ %1, %bb5.preheader ]
  %2 = getelementptr inbounds i8, ptr %tail.sroa.0.02, i64 -4
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1079)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1082)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1084)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1087)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1089)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1092)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1094)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1097)
  %_3.i.i.i.i.i = load i32, ptr %tail.sroa.0.02, align 4, !alias.scope !1099, !noalias !1100, !noundef !32
  %_4.i.i.i.i.i = load i32, ptr %2, align 4, !alias.scope !1100, !noalias !1099, !noundef !32
  %_0.i.i = icmp slt i32 %_3.i.i.i.i.i, %_4.i.i.i.i.i
  br i1 %_0.i.i, label %bb4.i, label %_ZN4core5slice4sort6shared9smallsort11insert_tail17h56ae50ec7dbaf211E.exit

bb4.i:                                            ; preds = %bb5, %bb6.i
  %gap_guard.sroa.5.0.i = phi ptr [ %sift.sroa.0.0.i, %bb6.i ], [ %tail.sroa.0.02, %bb5 ]
  %sift.sroa.0.0.i = phi ptr [ %4, %bb6.i ], [ %2, %bb5 ]
  %3 = load i32, ptr %sift.sroa.0.0.i, align 4
  store i32 %3, ptr %gap_guard.sroa.5.0.i, align 4
  %_18.i = icmp eq ptr %sift.sroa.0.0.i, %v.0
  br i1 %_18.i, label %bb10.i, label %bb6.i

bb6.i:                                            ; preds = %bb4.i
  %4 = getelementptr inbounds i8, ptr %sift.sroa.0.0.i, i64 -4
  %_4.i.i.i.i2.i = load i32, ptr %4, align 4, !alias.scope !1101, !noalias !1110, !noundef !32
  %_0.i3.i = icmp slt i32 %_3.i.i.i.i.i, %_4.i.i.i.i2.i
  br i1 %_0.i3.i, label %bb4.i, label %bb10.i

bb10.i:                                           ; preds = %bb6.i, %bb4.i
  store i32 %_3.i.i.i.i.i, ptr %sift.sroa.0.0.i, align 4, !noalias !1115
  br label %_ZN4core5slice4sort6shared9smallsort11insert_tail17h56ae50ec7dbaf211E.exit

_ZN4core5slice4sort6shared9smallsort11insert_tail17h56ae50ec7dbaf211E.exit: ; preds = %bb5, %bb10.i
  %_15 = getelementptr inbounds nuw i8, ptr %tail.sroa.0.02, i64 4
  %_11.not = icmp eq ptr %_15, %v_end
  br i1 %_11.not, label %bb7, label %bb5
}

; core::slice::sort::shared::smallsort::small_sort_general_with_scratch
; Function Attrs: nonlazybind uwtable
define void @_ZN4core5slice4sort6shared9smallsort31small_sort_general_with_scratch17h6234b1c9273a5e55E(ptr noalias noundef nonnull align 4 captures(none) %v.0, i64 noundef range(i64 0, 2305843009213693952) %v.1, ptr noalias noundef nonnull align 4 captures(address) %scratch.0, i64 noundef range(i64 0, 2305843009213693952) %scratch.1, ptr noalias readnone align 8 captures(none) %is_less) unnamed_addr #1 personality ptr @rust_eh_personality {
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
  tail call void @_ZN4core5slice4sort6shared9smallsort12sort8_stable17h191e2cd2a4055331E(ptr noundef nonnull %v.0, ptr noundef nonnull %scratch.0, ptr noundef nonnull %_16, ptr noalias align 8 poison)
  %_18 = getelementptr inbounds nuw i32, ptr %v.0, i64 %len_div_211
  %_19 = getelementptr inbounds nuw i32, ptr %scratch.0, i64 %len_div_211
  %_20 = getelementptr inbounds nuw i8, ptr %_16, i64 32
; call core::slice::sort::shared::smallsort::sort8_stable
  tail call void @_ZN4core5slice4sort6shared9smallsort12sort8_stable17h191e2cd2a4055331E(ptr noundef nonnull %_18, ptr noundef nonnull %_19, ptr noundef nonnull %_20, ptr noalias align 8 poison)
  br label %bb15

bb10:                                             ; preds = %bb9
  %_7.i = getelementptr inbounds nuw i8, ptr %v.0, i64 4
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1120)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1123)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1125)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1128)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1130)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1133)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1135)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1138)
  %_3.i.i.i.i.i = load i32, ptr %_7.i, align 4, !alias.scope !1140, !noalias !1141, !noundef !32
  %_4.i.i.i.i.i = load i32, ptr %v.0, align 4, !alias.scope !1141, !noalias !1140, !noundef !32
  %_0.i.i = icmp slt i32 %_3.i.i.i.i.i, %_4.i.i.i.i.i
  %_12.i = getelementptr inbounds nuw i8, ptr %v.0, i64 12
  %_14.i = getelementptr inbounds nuw i8, ptr %v.0, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1142)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1145)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1147)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1150)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1152)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1155)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1157)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1160)
  %_3.i.i.i.i7.i = load i32, ptr %_12.i, align 4, !alias.scope !1162, !noalias !1163, !noundef !32
  %_4.i.i.i.i8.i = load i32, ptr %_14.i, align 4, !alias.scope !1163, !noalias !1162, !noundef !32
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1164)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1167)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1169)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1172)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1174)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1177)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1179)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1182)
  %_3.i.i.i.i10.i = load i32, ptr %c.i, align 4, !alias.scope !1184, !noalias !1185, !noundef !32
  %_4.i.i.i.i11.i = load i32, ptr %a.i, align 4, !alias.scope !1185, !noalias !1184, !noundef !32
  %_0.i12.i = icmp slt i32 %_3.i.i.i.i10.i, %_4.i.i.i.i11.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1186)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1189)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1191)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1194)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1196)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1199)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1201)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1204)
  %_3.i.i.i.i13.i = load i32, ptr %d.i, align 4, !alias.scope !1206, !noalias !1207, !noundef !32
  %_4.i.i.i.i14.i = load i32, ptr %b.i, align 4, !alias.scope !1207, !noalias !1206, !noundef !32
  %_0.i15.i = icmp slt i32 %_3.i.i.i.i13.i, %_4.i.i.i.i14.i
  %0 = select i1 %_0.i12.i, ptr %c.i, ptr %a.i, !unpredictable !32
  %1 = select i1 %_0.i15.i, ptr %c.i, ptr %b.i, !unpredictable !32
  %2 = select i1 %_0.i12.i, ptr %a.i, ptr %1, !unpredictable !32
  %3 = select i1 %_0.i12.i, ptr %b.i, ptr %c.i, !unpredictable !32
  %4 = select i1 %_0.i15.i, ptr %d.i, ptr %3, !unpredictable !32
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1208)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1211)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1213)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1216)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1218)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1221)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1223)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1226)
  %_3.i.i.i.i16.i = load i32, ptr %4, align 4, !alias.scope !1228, !noalias !1229, !noundef !32
  %_4.i.i.i.i17.i = load i32, ptr %2, align 4, !alias.scope !1229, !noalias !1228, !noundef !32
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1230)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1233)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1235)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1238)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1240)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1243)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1245)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1248)
  %_3.i.i.i.i.i14 = load i32, ptr %_7.i13, align 4, !alias.scope !1250, !noalias !1251, !noundef !32
  %_4.i.i.i.i.i15 = load i32, ptr %_27, align 4, !alias.scope !1251, !noalias !1250, !noundef !32
  %_0.i.i16 = icmp slt i32 %_3.i.i.i.i.i14, %_4.i.i.i.i.i15
  %_12.i17 = getelementptr inbounds nuw i8, ptr %_27, i64 12
  %_14.i18 = getelementptr inbounds nuw i8, ptr %_27, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1252)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1255)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1257)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1260)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1262)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1265)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1267)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1270)
  %_3.i.i.i.i7.i19 = load i32, ptr %_12.i17, align 4, !alias.scope !1272, !noalias !1273, !noundef !32
  %_4.i.i.i.i8.i20 = load i32, ptr %_14.i18, align 4, !alias.scope !1273, !noalias !1272, !noundef !32
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1274)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1277)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1279)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1282)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1284)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1287)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1289)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1292)
  %_3.i.i.i.i10.i31 = load i32, ptr %c.i28, align 4, !alias.scope !1294, !noalias !1295, !noundef !32
  %_4.i.i.i.i11.i32 = load i32, ptr %a.i23, align 4, !alias.scope !1295, !noalias !1294, !noundef !32
  %_0.i12.i33 = icmp slt i32 %_3.i.i.i.i10.i31, %_4.i.i.i.i11.i32
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1296)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1299)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1301)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1304)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1306)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1309)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1311)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1314)
  %_3.i.i.i.i13.i34 = load i32, ptr %d.i30, align 4, !alias.scope !1316, !noalias !1317, !noundef !32
  %_4.i.i.i.i14.i35 = load i32, ptr %b.i26, align 4, !alias.scope !1317, !noalias !1316, !noundef !32
  %_0.i15.i36 = icmp slt i32 %_3.i.i.i.i13.i34, %_4.i.i.i.i14.i35
  %10 = select i1 %_0.i12.i33, ptr %c.i28, ptr %a.i23, !unpredictable !32
  %11 = select i1 %_0.i15.i36, ptr %c.i28, ptr %b.i26, !unpredictable !32
  %12 = select i1 %_0.i12.i33, ptr %a.i23, ptr %11, !unpredictable !32
  %13 = select i1 %_0.i12.i33, ptr %b.i26, ptr %c.i28, !unpredictable !32
  %14 = select i1 %_0.i15.i36, ptr %d.i30, ptr %13, !unpredictable !32
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1318)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1321)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1323)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1326)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1328)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1331)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1333)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1336)
  %_3.i.i.i.i16.i37 = load i32, ptr %14, align 4, !alias.scope !1338, !noalias !1339, !noundef !32
  %_4.i.i.i.i17.i38 = load i32, ptr %12, align 4, !alias.scope !1339, !noalias !1338, !noundef !32
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
  br i1 %_5.not.i.not, label %"_ZN4core5array4iter10iter_inner78PolymorphicIter$LT$$u5b$core..mem..maybe_uninit..MaybeUninit$LT$T$GT$$u5d$$GT$4next17h26b40a176e2c2310E.exit", label %bb1.i

bb1.i:                                            ; preds = %bb16
  %_11.i = add nuw nsw i64 %24, 1
  store i64 %_11.i, ptr %iter, align 8, !alias.scope !1340
  %_20.i = icmp ult i64 %24, 2
  tail call void @llvm.assume(i1 %_20.i)
  %self3.i = getelementptr inbounds nuw i64, ptr %_37.sroa.5.0.iter.sroa_idx, i64 %24
  %_15.i = load i64, ptr %self3.i, align 8, !alias.scope !1340, !noundef !32
  br label %"_ZN4core5array4iter10iter_inner78PolymorphicIter$LT$$u5b$core..mem..maybe_uninit..MaybeUninit$LT$T$GT$$u5d$$GT$4next17h26b40a176e2c2310E.exit"

"_ZN4core5array4iter10iter_inner78PolymorphicIter$LT$$u5b$core..mem..maybe_uninit..MaybeUninit$LT$T$GT$$u5d$$GT$4next17h26b40a176e2c2310E.exit": ; preds = %bb16, %bb1.i
  %25 = phi i64 [ %_11.i, %bb1.i ], [ %24, %bb16 ]
  %_0.sroa.3.0.i = phi i64 [ %_15.i, %bb1.i ], [ undef, %bb16 ]
  br i1 %_5.not.i.not, label %bb19, label %bb18

bb18:                                             ; preds = %"_ZN4core5array4iter10iter_inner78PolymorphicIter$LT$$u5b$core..mem..maybe_uninit..MaybeUninit$LT$T$GT$$u5d$$GT$4next17h26b40a176e2c2310E.exit"
  %src5 = getelementptr inbounds nuw i32, ptr %v.0, i64 %_0.sroa.3.0.i
  %dst6 = getelementptr inbounds nuw i32, ptr %scratch.0, i64 %_0.sroa.3.0.i
  %_47 = icmp eq i64 %_0.sroa.3.0.i, 0
  %desired_len.sroa.0.0 = select i1 %_47, i64 %len_div_211, i64 %23
  %_8059 = icmp ult i64 %presorted_len.sroa.0.0, %desired_len.sroa.0.0
  br i1 %_8059, label %bb24, label %bb16.backedge

bb16.backedge:                                    ; preds = %_ZN4core5slice4sort6shared9smallsort11insert_tail17h56ae50ec7dbaf211E.exit, %bb18
  br label %bb16

bb19:                                             ; preds = %"_ZN4core5array4iter10iter_inner78PolymorphicIter$LT$$u5b$core..mem..maybe_uninit..MaybeUninit$LT$T$GT$$u5d$$GT$4next17h26b40a176e2c2310E.exit"
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %iter)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1343)
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1346)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1349)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1351), !noalias !1354
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1357), !noalias !1354
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1359), !noalias !1354
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1362), !noalias !1354
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1364), !noalias !1354
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1367), !noalias !1354
  %_3.i.i.i.i.i49 = load i32, ptr %right.sroa.0.026.i, align 4, !alias.scope !1369, !noalias !1370, !noundef !32
  %_4.i.i.i.i.i50 = load i32, ptr %left.sroa.0.027.i, align 4, !alias.scope !1371, !noalias !1372, !noundef !32
  %_0.i.i51 = icmp slt i32 %_3.i.i.i.i.i49, %_4.i.i.i.i.i50
  %is_l.i18.i = xor i1 %_0.i.i51, true
  %32 = tail call i32 @llvm.smin.i32(i32 %_3.i.i.i.i.i49, i32 %_4.i.i.i.i.i50)
  store i32 %32, ptr %dst.sroa.0.029.i, align 4, !noalias !1373
  %count.i.i = zext i1 %_0.i.i51 to i64
  %_12.i.i = getelementptr inbounds nuw i32, ptr %right.sroa.0.026.i, i64 %count.i.i
  %count2.i.i = zext i1 %is_l.i18.i to i64
  %_14.i.i = getelementptr inbounds nuw i32, ptr %left.sroa.0.027.i, i64 %count2.i.i
  %_16.i.i = getelementptr inbounds nuw i8, ptr %dst.sroa.0.029.i, i64 4
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1375)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1378)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1380), !noalias !1383
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1386), !noalias !1383
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1388), !noalias !1383
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1391), !noalias !1383
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1393), !noalias !1383
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1396), !noalias !1383
  %_3.i.i.i.i19.i = load i32, ptr %right_rev.sroa.0.024.i, align 4, !alias.scope !1398, !noalias !1399, !noundef !32
  %_4.i.i.i.i20.i = load i32, ptr %left_rev.sroa.0.025.i, align 4, !alias.scope !1400, !noalias !1401, !noundef !32
  %_0.i21.i = icmp slt i32 %_3.i.i.i.i19.i, %_4.i.i.i.i20.i
  %is_l.i.i = xor i1 %_0.i21.i, true
  %33 = tail call i32 @llvm.smax.i32(i32 %_3.i.i.i.i19.i, i32 %_4.i.i.i.i20.i)
  store i32 %33, ptr %dst_rev.sroa.0.023.i, align 4, !noalias !1402
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
  %37 = load i32, ptr %left.sroa.0.0.right.sroa.0.0.i, align 4, !alias.scope !1343
  store i32 %37, ptr %_16.i.i, align 4, !noalias !1343
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
  br i1 %or.cond.i, label %bb13.i, label %bb29, !prof !780

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
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %v.0, ptr nonnull align 4 %scratch.0, i64 %39, i1 false), !noalias !1404
  resume { ptr, i32 } %38

bb29:                                             ; preds = %bb9.i, %start
  ret void

bb24:                                             ; preds = %bb18, %_ZN4core5slice4sort6shared9smallsort11insert_tail17h56ae50ec7dbaf211E.exit
  %iter1.sroa.0.163 = phi i64 [ %iter1.sroa.0.1, %_ZN4core5slice4sort6shared9smallsort11insert_tail17h56ae50ec7dbaf211E.exit ], [ %iter1.sroa.0.161, %bb18 ]
  %iter1.sroa.0.062 = phi i64 [ %iter1.sroa.0.163, %_ZN4core5slice4sort6shared9smallsort11insert_tail17h56ae50ec7dbaf211E.exit ], [ %presorted_len.sroa.0.0, %bb18 ]
  %_55 = getelementptr inbounds nuw i32, ptr %src5, i64 %iter1.sroa.0.062
  %dst7 = getelementptr inbounds nuw i32, ptr %dst6, i64 %iter1.sroa.0.062
  %40 = load i32, ptr %_55, align 4
  store i32 %40, ptr %dst7, align 4
  %41 = getelementptr inbounds i8, ptr %dst7, i64 -4
  %_4.i.i.i.i.i56 = load i32, ptr %41, align 4, !alias.scope !1409, !noalias !1418, !noundef !32
  %_0.i.i57 = icmp slt i32 %40, %_4.i.i.i.i.i56
  br i1 %_0.i.i57, label %bb4.i, label %_ZN4core5slice4sort6shared9smallsort11insert_tail17h56ae50ec7dbaf211E.exit

bb4.i:                                            ; preds = %bb24, %bb6.i
  %gap_guard.sroa.5.0.i = phi ptr [ %sift.sroa.0.0.i, %bb6.i ], [ %dst7, %bb24 ]
  %sift.sroa.0.0.i = phi ptr [ %43, %bb6.i ], [ %41, %bb24 ]
  %42 = load i32, ptr %sift.sroa.0.0.i, align 4
  store i32 %42, ptr %gap_guard.sroa.5.0.i, align 4
  %_18.i = icmp eq ptr %sift.sroa.0.0.i, %dst6
  br i1 %_18.i, label %bb10.i, label %bb6.i

bb6.i:                                            ; preds = %bb4.i
  %43 = getelementptr inbounds i8, ptr %sift.sroa.0.0.i, i64 -4
  %_4.i.i.i.i2.i = load i32, ptr %43, align 4, !alias.scope !1423, !noalias !1432, !noundef !32
  %_0.i3.i = icmp slt i32 %40, %_4.i.i.i.i2.i
  br i1 %_0.i3.i, label %bb4.i, label %bb10.i

bb10.i:                                           ; preds = %bb6.i, %bb4.i
  store i32 %40, ptr %sift.sroa.0.0.i, align 4, !noalias !1437
  br label %_ZN4core5slice4sort6shared9smallsort11insert_tail17h56ae50ec7dbaf211E.exit

_ZN4core5slice4sort6shared9smallsort11insert_tail17h56ae50ec7dbaf211E.exit: ; preds = %bb24, %bb10.i
  %_80 = icmp ult i64 %iter1.sroa.0.163, %desired_len.sroa.0.0
  %_84 = zext i1 %_80 to i64
  %iter1.sroa.0.1 = add nuw i64 %iter1.sroa.0.163, %_84
  br i1 %_80, label %bb24, label %bb16.backedge
}

; core::slice::sort::shared::smallsort::small_sort_general_with_scratch
; Function Attrs: nonlazybind uwtable
define void @_ZN4core5slice4sort6shared9smallsort31small_sort_general_with_scratch17hbdf9b2d478b5598eE(ptr noalias noundef nonnull align 4 captures(none) %v.0, i64 noundef range(i64 0, 2305843009213693952) %v.1, ptr noalias noundef nonnull align 4 captures(address) %scratch.0, i64 noundef range(i64 0, 2305843009213693952) %scratch.1, ptr noalias readnone align 8 captures(none) %is_less) unnamed_addr #1 personality ptr @rust_eh_personality {
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
  tail call void @_ZN4core5slice4sort6shared9smallsort12sort8_stable17hb77e0116e665e416E(ptr noundef nonnull %v.0, ptr noundef nonnull %scratch.0, ptr noundef nonnull %_16, ptr noalias align 8 poison)
  %_18 = getelementptr inbounds nuw float, ptr %v.0, i64 %len_div_211
  %_19 = getelementptr inbounds nuw float, ptr %scratch.0, i64 %len_div_211
  %_20 = getelementptr inbounds nuw i8, ptr %_16, i64 32
; call core::slice::sort::shared::smallsort::sort8_stable
  tail call void @_ZN4core5slice4sort6shared9smallsort12sort8_stable17hb77e0116e665e416E(ptr noundef nonnull %_18, ptr noundef nonnull %_19, ptr noundef nonnull %_20, ptr noalias align 8 poison)
  br label %bb15

bb10:                                             ; preds = %bb9
; call core::slice::sort::shared::smallsort::sort4_stable
  tail call void @_ZN4core5slice4sort6shared9smallsort12sort4_stable17hff7d5c64b61890c1E(ptr noundef nonnull %v.0, ptr noundef nonnull %scratch.0, ptr noalias align 8 poison)
  %_27 = getelementptr inbounds nuw float, ptr %v.0, i64 %len_div_211
  %_28 = getelementptr inbounds nuw float, ptr %scratch.0, i64 %len_div_211
; call core::slice::sort::shared::smallsort::sort4_stable
  tail call void @_ZN4core5slice4sort6shared9smallsort12sort4_stable17hff7d5c64b61890c1E(ptr noundef nonnull %_27, ptr noundef nonnull %_28, ptr noalias align 8 poison)
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
  br i1 %_5.not.i.not, label %"_ZN4core5array4iter10iter_inner78PolymorphicIter$LT$$u5b$core..mem..maybe_uninit..MaybeUninit$LT$T$GT$$u5d$$GT$4next17h26b40a176e2c2310E.exit", label %bb1.i

bb1.i:                                            ; preds = %bb16
  %_11.i = add nuw nsw i64 %4, 1
  store i64 %_11.i, ptr %iter, align 8, !alias.scope !1442
  %_20.i = icmp ult i64 %4, 2
  tail call void @llvm.assume(i1 %_20.i)
  %self3.i = getelementptr inbounds nuw i64, ptr %_37.sroa.5.0.iter.sroa_idx, i64 %4
  %_15.i = load i64, ptr %self3.i, align 8, !alias.scope !1442, !noundef !32
  br label %"_ZN4core5array4iter10iter_inner78PolymorphicIter$LT$$u5b$core..mem..maybe_uninit..MaybeUninit$LT$T$GT$$u5d$$GT$4next17h26b40a176e2c2310E.exit"

"_ZN4core5array4iter10iter_inner78PolymorphicIter$LT$$u5b$core..mem..maybe_uninit..MaybeUninit$LT$T$GT$$u5d$$GT$4next17h26b40a176e2c2310E.exit": ; preds = %bb16, %bb1.i
  %5 = phi i64 [ %_11.i, %bb1.i ], [ %4, %bb16 ]
  %_0.sroa.3.0.i = phi i64 [ %_15.i, %bb1.i ], [ undef, %bb16 ]
  br i1 %_5.not.i.not, label %bb19, label %bb18

bb18:                                             ; preds = %"_ZN4core5array4iter10iter_inner78PolymorphicIter$LT$$u5b$core..mem..maybe_uninit..MaybeUninit$LT$T$GT$$u5d$$GT$4next17h26b40a176e2c2310E.exit"
  %src5 = getelementptr inbounds nuw float, ptr %v.0, i64 %_0.sroa.3.0.i
  %dst6 = getelementptr inbounds nuw float, ptr %scratch.0, i64 %_0.sroa.3.0.i
  %_47 = icmp eq i64 %_0.sroa.3.0.i, 0
  %desired_len.sroa.0.0 = select i1 %_47, i64 %len_div_211, i64 %3
  %_8015 = icmp ult i64 %presorted_len.sroa.0.0, %desired_len.sroa.0.0
  br i1 %_8015, label %bb24, label %bb16.backedge

bb16.backedge:                                    ; preds = %_ZN4core5slice4sort6shared9smallsort11insert_tail17h4f7839f268585107E.exit, %bb18
  br label %bb16

bb19:                                             ; preds = %"_ZN4core5array4iter10iter_inner78PolymorphicIter$LT$$u5b$core..mem..maybe_uninit..MaybeUninit$LT$T$GT$$u5d$$GT$4next17h26b40a176e2c2310E.exit"
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %iter)
; invoke core::slice::sort::shared::smallsort::bidirectional_merge
  invoke void @_ZN4core5slice4sort6shared9smallsort19bidirectional_merge17hda7045743ed9389cE(ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) %scratch.0, i64 noundef %v.1, ptr noundef nonnull %v.0, ptr noalias align 8 poison)
          to label %bb29 unwind label %cleanup2

cleanup2:                                         ; preds = %bb19
  %6 = landingpad { ptr, i32 }
          cleanup
  %7 = shl nuw nsw i64 %v.1, 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %v.0, ptr nonnull align 4 %scratch.0, i64 %7, i1 false), !noalias !1445
  br label %bb31

bb29:                                             ; preds = %bb19, %start
  ret void

bb31:                                             ; preds = %cleanup.i, %cleanup2
  %.pn = phi { ptr, i32 } [ %6, %cleanup2 ], [ %12, %cleanup.i ]
  resume { ptr, i32 } %.pn

bb24:                                             ; preds = %bb18, %_ZN4core5slice4sort6shared9smallsort11insert_tail17h4f7839f268585107E.exit
  %iter1.sroa.0.119 = phi i64 [ %iter1.sroa.0.1, %_ZN4core5slice4sort6shared9smallsort11insert_tail17h4f7839f268585107E.exit ], [ %iter1.sroa.0.117, %bb18 ]
  %iter1.sroa.0.018 = phi i64 [ %iter1.sroa.0.119, %_ZN4core5slice4sort6shared9smallsort11insert_tail17h4f7839f268585107E.exit ], [ %presorted_len.sroa.0.0, %bb18 ]
  %_55 = getelementptr inbounds nuw float, ptr %src5, i64 %iter1.sroa.0.018
  %dst7 = getelementptr inbounds nuw float, ptr %dst6, i64 %iter1.sroa.0.018
  %8 = load i32, ptr %_55, align 4
  store i32 %8, ptr %dst7, align 4
  %9 = getelementptr inbounds i8, ptr %dst7, i64 -4
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1450)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1453)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1455)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1458)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1460)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1463)
  %_4.i.i.i.i = load float, ptr %dst7, align 4, !alias.scope !1465, !noalias !1466, !noundef !32
  %_5.i.i.i.i = load float, ptr %9, align 4, !alias.scope !1466, !noalias !1465, !noundef !32
  %.not.i.i.i.i = fcmp uno float %_4.i.i.i.i, %_5.i.i.i.i
  br i1 %.not.i.i.i.i, label %bb2.i.i.i.i, label %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h47d2093944d38971E.exit.i", !prof !35

bb2.i.i.i.i:                                      ; preds = %bb24
; call core::option::unwrap_failed
  tail call void @_ZN4core6option13unwrap_failed17hef2534b77b89c04fE(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_e233725058d574d75123974d8763f424) #24
  unreachable

"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h47d2093944d38971E.exit.i": ; preds = %bb24
  %_0.i.i = fcmp olt float %_4.i.i.i.i, %_5.i.i.i.i
  br i1 %_0.i.i, label %bb4.i, label %_ZN4core5slice4sort6shared9smallsort11insert_tail17h4f7839f268585107E.exit

bb4.i:                                            ; preds = %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h47d2093944d38971E.exit.i", %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h47d2093944d38971E.exit6.i"
  %gap_guard.sroa.5.0.i = phi ptr [ %sift.sroa.0.0.i, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h47d2093944d38971E.exit6.i" ], [ %dst7, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h47d2093944d38971E.exit.i" ]
  %sift.sroa.0.0.i = phi ptr [ %11, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h47d2093944d38971E.exit6.i" ], [ %9, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h47d2093944d38971E.exit.i" ]
  %10 = load i32, ptr %sift.sroa.0.0.i, align 4
  store i32 %10, ptr %gap_guard.sroa.5.0.i, align 4
  %_18.i = icmp eq ptr %sift.sroa.0.0.i, %dst6
  br i1 %_18.i, label %bb10.i, label %bb6.i

bb6.i:                                            ; preds = %bb4.i
  %11 = getelementptr inbounds i8, ptr %sift.sroa.0.0.i, i64 -4
  %_5.i.i.i2.i = load float, ptr %11, align 4, !alias.scope !1467, !noalias !1474, !noundef !32
  %.not.i.i.i3.i = fcmp uno float %_4.i.i.i.i, %_5.i.i.i2.i
  br i1 %.not.i.i.i3.i, label %bb2.i.i.i5.i, label %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h47d2093944d38971E.exit6.i", !prof !35

bb2.i.i.i5.i:                                     ; preds = %bb6.i
; invoke core::option::unwrap_failed
  invoke void @_ZN4core6option13unwrap_failed17hef2534b77b89c04fE(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_e233725058d574d75123974d8763f424) #24
          to label %.noexc.i unwind label %cleanup.i

.noexc.i:                                         ; preds = %bb2.i.i.i5.i
  unreachable

"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h47d2093944d38971E.exit6.i": ; preds = %bb6.i
  %_0.i4.i = fcmp olt float %_4.i.i.i.i, %_5.i.i.i2.i
  br i1 %_0.i4.i, label %bb4.i, label %bb10.i

cleanup.i:                                        ; preds = %bb2.i.i.i5.i
  %12 = landingpad { ptr, i32 }
          cleanup
  store float %_4.i.i.i.i, ptr %sift.sroa.0.0.i, align 4, !noalias !1478
  br label %bb31

bb10.i:                                           ; preds = %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h47d2093944d38971E.exit6.i", %bb4.i
  store float %_4.i.i.i.i, ptr %sift.sroa.0.0.i, align 4, !noalias !1483
  br label %_ZN4core5slice4sort6shared9smallsort11insert_tail17h4f7839f268585107E.exit

_ZN4core5slice4sort6shared9smallsort11insert_tail17h4f7839f268585107E.exit: ; preds = %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h47d2093944d38971E.exit.i", %bb10.i
  %_80 = icmp ult i64 %iter1.sroa.0.119, %desired_len.sroa.0.0
  %_84 = zext i1 %_80 to i64
  %iter1.sroa.0.1 = add nuw i64 %iter1.sroa.0.119, %_84
  br i1 %_80, label %bb24, label %bb16.backedge
}

; core::slice::sort::stable::driftsort_main
; Function Attrs: noinline nonlazybind uwtable
define void @_ZN4core5slice4sort6stable14driftsort_main17h29c9ac81b22d647fE(ptr noalias noundef nonnull align 4 %v.0, i64 noundef range(i64 0, 2305843009213693952) %v.1, ptr noalias noundef align 8 dereferenceable(8) %is_less) unnamed_addr #5 personality ptr @rust_eh_personality {
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
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %_4.i.i), !noalias !1488
; invoke alloc::raw_vec::RawVecInner<A>::try_allocate_in
  invoke void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$15try_allocate_in17had089b3ffc2704ecE"(ptr noalias noundef sret([24 x i8]) align 8 captures(none) dereferenceable(24) %_4.i.i, i64 noundef %_0.sroa.0.0.i7, i1 noundef zeroext false, i64 noundef 4, i64 noundef 4)
          to label %.noexc unwind label %cleanup

.noexc:                                           ; preds = %bb4
  %_5.i.i = load i64, ptr %_4.i.i, align 8, !range !1491, !noalias !1488, !noundef !32
  %0 = trunc nuw i64 %_5.i.i to i1
  %1 = getelementptr inbounds nuw i8, ptr %_4.i.i, i64 8
  %err.0.i.i = load i64, ptr %1, align 8, !range !1492, !noalias !1488, !noundef !32
  %2 = getelementptr inbounds nuw i8, ptr %_4.i.i, i64 16
  br i1 %0, label %bb3.i.i, label %"_ZN5alloc5slice99_$LT$impl$u20$core..slice..sort..stable..BufGuard$LT$T$GT$$u20$for$u20$alloc..vec..Vec$LT$T$GT$$GT$13with_capacity17he104ce91b9416e00E.exit", !prof !35

bb3.i.i:                                          ; preds = %.noexc
  %err.1.i.i = load i64, ptr %2, align 8, !noalias !1488
; invoke alloc::raw_vec::handle_error
  invoke void @_ZN5alloc7raw_vec12handle_error17h3a8c375904e593b2E(i64 noundef %err.0.i.i, i64 %err.1.i.i) #25
          to label %.noexc8 unwind label %cleanup

.noexc8:                                          ; preds = %bb3.i.i
  unreachable

"_ZN5alloc5slice99_$LT$impl$u20$core..slice..sort..stable..BufGuard$LT$T$GT$$u20$for$u20$alloc..vec..Vec$LT$T$GT$$GT$13with_capacity17he104ce91b9416e00E.exit": ; preds = %.noexc
  %this.1.i.i = load ptr, ptr %2, align 8, !noalias !1488, !nonnull !32, !noundef !32
  %_7.i.i = icmp ule i64 %_0.sroa.0.0.i7, %err.0.i.i
  tail call void @llvm.assume(i1 %_7.i.i)
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %_4.i.i), !noalias !1488
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

bb8:                                              ; preds = %"_ZN5alloc5slice99_$LT$impl$u20$core..slice..sort..stable..BufGuard$LT$T$GT$$u20$for$u20$alloc..vec..Vec$LT$T$GT$$GT$13with_capacity17he104ce91b9416e00E.exit", %start
  %_24.sroa.0.1 = phi i8 [ 0, %start ], [ 1, %"_ZN5alloc5slice99_$LT$impl$u20$core..slice..sort..stable..BufGuard$LT$T$GT$$u20$for$u20$alloc..vec..Vec$LT$T$GT$$GT$13with_capacity17he104ce91b9416e00E.exit" ]
  %stack_scratch.sroa.4.0 = phi i64 [ 1024, %start ], [ %err.0.i.i, %"_ZN5alloc5slice99_$LT$impl$u20$core..slice..sort..stable..BufGuard$LT$T$GT$$u20$for$u20$alloc..vec..Vec$LT$T$GT$$GT$13with_capacity17he104ce91b9416e00E.exit" ]
  %stack_buf.pn = phi ptr [ %stack_buf, %start ], [ %this.1.i.i, %"_ZN5alloc5slice99_$LT$impl$u20$core..slice..sort..stable..BufGuard$LT$T$GT$$u20$for$u20$alloc..vec..Vec$LT$T$GT$$GT$13with_capacity17he104ce91b9416e00E.exit" ]
  %eager_sort = icmp samesign ult i64 %v.1, 65
; invoke core::slice::sort::stable::drift::sort
  invoke void @_ZN4core5slice4sort6stable5drift4sort17hbd75ce168a8b00beE(ptr noalias noundef nonnull align 4 %v.0, i64 noundef %v.1, ptr noalias noundef nonnull align 4 %stack_buf.pn, i64 noundef %stack_scratch.sroa.4.0, i1 noundef zeroext %eager_sort, ptr noalias noundef align 8 dereferenceable(8) %is_less)
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
define void @_ZN4core5slice4sort6stable14driftsort_main17he5fef1bddceca5efE(ptr noalias noundef nonnull align 4 %v.0, i64 noundef range(i64 0, 2305843009213693952) %v.1, ptr noalias noundef align 8 dereferenceable(8) %is_less) unnamed_addr #5 personality ptr @rust_eh_personality {
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
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %_4.i.i), !noalias !1493
; invoke alloc::raw_vec::RawVecInner<A>::try_allocate_in
  invoke void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$15try_allocate_in17had089b3ffc2704ecE"(ptr noalias noundef sret([24 x i8]) align 8 captures(none) dereferenceable(24) %_4.i.i, i64 noundef %_0.sroa.0.0.i7, i1 noundef zeroext false, i64 noundef 4, i64 noundef 4)
          to label %.noexc unwind label %cleanup

.noexc:                                           ; preds = %bb4
  %_5.i.i = load i64, ptr %_4.i.i, align 8, !range !1491, !noalias !1493, !noundef !32
  %0 = trunc nuw i64 %_5.i.i to i1
  %1 = getelementptr inbounds nuw i8, ptr %_4.i.i, i64 8
  %err.0.i.i = load i64, ptr %1, align 8, !range !1492, !noalias !1493, !noundef !32
  %2 = getelementptr inbounds nuw i8, ptr %_4.i.i, i64 16
  br i1 %0, label %bb3.i.i, label %"_ZN5alloc5slice99_$LT$impl$u20$core..slice..sort..stable..BufGuard$LT$T$GT$$u20$for$u20$alloc..vec..Vec$LT$T$GT$$GT$13with_capacity17h0fb4ef15602973b4E.exit", !prof !35

bb3.i.i:                                          ; preds = %.noexc
  %err.1.i.i = load i64, ptr %2, align 8, !noalias !1493
; invoke alloc::raw_vec::handle_error
  invoke void @_ZN5alloc7raw_vec12handle_error17h3a8c375904e593b2E(i64 noundef %err.0.i.i, i64 %err.1.i.i) #25
          to label %.noexc8 unwind label %cleanup

.noexc8:                                          ; preds = %bb3.i.i
  unreachable

"_ZN5alloc5slice99_$LT$impl$u20$core..slice..sort..stable..BufGuard$LT$T$GT$$u20$for$u20$alloc..vec..Vec$LT$T$GT$$GT$13with_capacity17h0fb4ef15602973b4E.exit": ; preds = %.noexc
  %this.1.i.i = load ptr, ptr %2, align 8, !noalias !1493, !nonnull !32, !noundef !32
  %_7.i.i = icmp ule i64 %_0.sroa.0.0.i7, %err.0.i.i
  tail call void @llvm.assume(i1 %_7.i.i)
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %_4.i.i), !noalias !1493
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

bb8:                                              ; preds = %"_ZN5alloc5slice99_$LT$impl$u20$core..slice..sort..stable..BufGuard$LT$T$GT$$u20$for$u20$alloc..vec..Vec$LT$T$GT$$GT$13with_capacity17h0fb4ef15602973b4E.exit", %start
  %_24.sroa.0.1 = phi i8 [ 0, %start ], [ 1, %"_ZN5alloc5slice99_$LT$impl$u20$core..slice..sort..stable..BufGuard$LT$T$GT$$u20$for$u20$alloc..vec..Vec$LT$T$GT$$GT$13with_capacity17h0fb4ef15602973b4E.exit" ]
  %stack_scratch.sroa.4.0 = phi i64 [ 1024, %start ], [ %err.0.i.i, %"_ZN5alloc5slice99_$LT$impl$u20$core..slice..sort..stable..BufGuard$LT$T$GT$$u20$for$u20$alloc..vec..Vec$LT$T$GT$$GT$13with_capacity17h0fb4ef15602973b4E.exit" ]
  %stack_buf.pn = phi ptr [ %stack_buf, %start ], [ %this.1.i.i, %"_ZN5alloc5slice99_$LT$impl$u20$core..slice..sort..stable..BufGuard$LT$T$GT$$u20$for$u20$alloc..vec..Vec$LT$T$GT$$GT$13with_capacity17h0fb4ef15602973b4E.exit" ]
  %eager_sort = icmp samesign ult i64 %v.1, 65
; invoke core::slice::sort::stable::drift::sort
  invoke void @_ZN4core5slice4sort6stable5drift4sort17h061b1c9959168dd3E(ptr noalias noundef nonnull align 4 %v.0, i64 noundef %v.1, ptr noalias noundef nonnull align 4 %stack_buf.pn, i64 noundef %stack_scratch.sroa.4.0, i1 noundef zeroext %eager_sort, ptr noalias noundef align 8 dereferenceable(8) %is_less)
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
define { ptr, i64 } @"_ZN4core5slice4sort6stable27AlignedStorage$LT$T$C$_$GT$19as_uninit_slice_mut17h0cd56e298bcdb86fE"(ptr noalias noundef align 4 dereferenceable(4096) %self) unnamed_addr #6 {
start:
  %0 = insertvalue { ptr, i64 } poison, ptr %self, 0
  %1 = insertvalue { ptr, i64 } %0, i64 1024, 1
  ret { ptr, i64 } %1
}

; core::slice::sort::stable::AlignedStorage<T,_>::as_uninit_slice_mut
; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define { ptr, i64 } @"_ZN4core5slice4sort6stable27AlignedStorage$LT$T$C$_$GT$19as_uninit_slice_mut17h8105f110ed2aa4c0E"(ptr noalias noundef align 4 dereferenceable(4096) %self) unnamed_addr #6 {
start:
  %0 = insertvalue { ptr, i64 } poison, ptr %self, 0
  %1 = insertvalue { ptr, i64 } %0, i64 1024, 1
  ret { ptr, i64 } %1
}

; core::slice::sort::stable::drift::create_run
; Function Attrs: nonlazybind uwtable
define noundef range(i64 0, -1) i64 @_ZN4core5slice4sort6stable5drift10create_run17h6e2a93f230ac16e0E(ptr noalias noundef nonnull align 4 %v.0, i64 noundef range(i64 0, 2305843009213693952) %v.1, ptr noalias noundef nonnull align 4 %scratch.0, i64 noundef range(i64 0, 2305843009213693952) %scratch.1, i64 noundef %min_good_run_len, i1 noundef zeroext %eager_sort, ptr noalias noundef align 8 dereferenceable(8) %is_less) unnamed_addr #1 personality ptr @rust_eh_personality {
start:
  %_7.not = icmp ult i64 %v.1, %min_good_run_len
  br i1 %_7.not, label %bb7, label %bb1

bb7:                                              ; preds = %_ZN4core5slice4sort6shared17find_existing_run17h1859e993548aa19aE.exit, %start
  br i1 %eager_sort, label %bb8, label %bb11

bb1:                                              ; preds = %start
  %_4.i = icmp samesign ult i64 %v.1, 2
  br i1 %_4.i, label %_ZN4core5slice4sort6shared17find_existing_run17h1859e993548aa19aE.exit, label %bb2.i

bb2.i:                                            ; preds = %bb1
  %_28.i = getelementptr inbounds nuw i8, ptr %v.0, i64 4
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1496)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1499)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1501)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1504)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1506)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1509)
  %_4.i.i.i = load float, ptr %_28.i, align 4, !alias.scope !1511, !noalias !1512, !noundef !32
  %_5.i.i.i = load float, ptr %v.0, align 4, !alias.scope !1512, !noalias !1511, !noundef !32
  %.not.i.i.i = fcmp uno float %_4.i.i.i, %_5.i.i.i
  br i1 %.not.i.i.i, label %bb2.i.i.i, label %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h47d2093944d38971E.exit", !prof !35

bb2.i.i.i:                                        ; preds = %bb2.i
; call core::option::unwrap_failed
  tail call void @_ZN4core6option13unwrap_failed17hef2534b77b89c04fE(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_e233725058d574d75123974d8763f424) #24, !noalias !1513
  unreachable

"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h47d2093944d38971E.exit": ; preds = %bb2.i
  %_0.i = fcmp olt float %_4.i.i.i, %_5.i.i.i
  %_10.i21.not = icmp eq i64 %v.1, 2
  br i1 %_0.i, label %bb4.i.preheader, label %bb11.i.preheader

bb11.i.preheader:                                 ; preds = %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h47d2093944d38971E.exit"
  br i1 %_10.i21.not, label %_ZN4core5slice4sort6shared17find_existing_run17h1859e993548aa19aE.exit, label %bb12.i.preheader

bb12.i.preheader:                                 ; preds = %bb11.i.preheader
  %invariant.gep = getelementptr i8, ptr %v.0, i64 -4
  br label %bb12.i

bb4.i.preheader:                                  ; preds = %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h47d2093944d38971E.exit"
  br i1 %_10.i21.not, label %_ZN4core5slice4sort6shared17find_existing_run17h1859e993548aa19aE.exit, label %bb5.i.preheader

bb5.i.preheader:                                  ; preds = %bb4.i.preheader
  %invariant.gep32 = getelementptr i8, ptr %v.0, i64 -4
  br label %bb5.i

bb12.i:                                           ; preds = %bb12.i.preheader, %bb15.i
  %run_len.sroa.0.0.i19 = phi i64 [ %1, %bb15.i ], [ 2, %bb12.i.preheader ]
  %0 = getelementptr inbounds nuw float, ptr %v.0, i64 %run_len.sroa.0.0.i19
  %gep = getelementptr float, ptr %invariant.gep, i64 %run_len.sroa.0.0.i19
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1514)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1517)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1519)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1522)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1524)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1527)
  %_4.i.i.i1 = load float, ptr %0, align 4, !alias.scope !1529, !noalias !1530, !noundef !32
  %_5.i.i.i2 = load float, ptr %gep, align 4, !alias.scope !1530, !noalias !1529, !noundef !32
  %.not.i.i.i3 = fcmp uno float %_4.i.i.i1, %_5.i.i.i2
  br i1 %.not.i.i.i3, label %bb2.i.i.i5, label %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h47d2093944d38971E.exit6", !prof !35

bb2.i.i.i5:                                       ; preds = %bb12.i
; call core::option::unwrap_failed
  tail call void @_ZN4core6option13unwrap_failed17hef2534b77b89c04fE(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_e233725058d574d75123974d8763f424) #24, !noalias !1531
  unreachable

"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h47d2093944d38971E.exit6": ; preds = %bb12.i
  %_0.i4 = fcmp olt float %_4.i.i.i1, %_5.i.i.i2
  br i1 %_0.i4, label %_ZN4core5slice4sort6shared17find_existing_run17h1859e993548aa19aE.exit, label %bb15.i

bb15.i:                                           ; preds = %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h47d2093944d38971E.exit6"
  %1 = add nuw nsw i64 %run_len.sroa.0.0.i19, 1
  %exitcond.not = icmp eq i64 %1, %v.1
  br i1 %exitcond.not, label %_ZN4core5slice4sort6shared17find_existing_run17h1859e993548aa19aE.exit, label %bb12.i

bb5.i:                                            ; preds = %bb5.i.preheader, %bb7.i
  %run_len.sroa.0.1.i22 = phi i64 [ %3, %bb7.i ], [ 2, %bb5.i.preheader ]
  %2 = getelementptr inbounds nuw float, ptr %v.0, i64 %run_len.sroa.0.1.i22
  %gep33 = getelementptr float, ptr %invariant.gep32, i64 %run_len.sroa.0.1.i22
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1532)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1535)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1537)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1540)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1542)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1545)
  %_4.i.i.i7 = load float, ptr %2, align 4, !alias.scope !1547, !noalias !1548, !noundef !32
  %_5.i.i.i8 = load float, ptr %gep33, align 4, !alias.scope !1548, !noalias !1547, !noundef !32
  %.not.i.i.i9 = fcmp uno float %_4.i.i.i7, %_5.i.i.i8
  br i1 %.not.i.i.i9, label %bb2.i.i.i11, label %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h47d2093944d38971E.exit12", !prof !35

bb2.i.i.i11:                                      ; preds = %bb5.i
; call core::option::unwrap_failed
  tail call void @_ZN4core6option13unwrap_failed17hef2534b77b89c04fE(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_e233725058d574d75123974d8763f424) #24, !noalias !1549
  unreachable

"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h47d2093944d38971E.exit12": ; preds = %bb5.i
  %_0.i10 = fcmp olt float %_4.i.i.i7, %_5.i.i.i8
  br i1 %_0.i10, label %bb7.i, label %_ZN4core5slice4sort6shared17find_existing_run17h1859e993548aa19aE.exit

bb7.i:                                            ; preds = %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h47d2093944d38971E.exit12"
  %3 = add nuw nsw i64 %run_len.sroa.0.1.i22, 1
  %exitcond27.not = icmp eq i64 %3, %v.1
  br i1 %exitcond27.not, label %_ZN4core5slice4sort6shared17find_existing_run17h1859e993548aa19aE.exit, label %bb5.i

_ZN4core5slice4sort6shared17find_existing_run17h1859e993548aa19aE.exit: ; preds = %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h47d2093944d38971E.exit6", %bb15.i, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h47d2093944d38971E.exit12", %bb7.i, %bb11.i.preheader, %bb4.i.preheader, %bb1
  %_0.sroa.3.0.i = phi i1 [ false, %bb1 ], [ true, %bb4.i.preheader ], [ false, %bb11.i.preheader ], [ true, %bb7.i ], [ true, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h47d2093944d38971E.exit12" ], [ false, %bb15.i ], [ false, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h47d2093944d38971E.exit6" ]
  %_0.sroa.0.0.i = phi i64 [ %v.1, %bb1 ], [ 2, %bb4.i.preheader ], [ 2, %bb11.i.preheader ], [ %run_len.sroa.0.1.i22, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h47d2093944d38971E.exit12" ], [ %v.1, %bb7.i ], [ %run_len.sroa.0.0.i19, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h47d2093944d38971E.exit6" ], [ %v.1, %bb15.i ]
  %_12 = icmp samesign ule i64 %_0.sroa.0.0.i, %v.1
  tail call void @llvm.assume(i1 %_12)
  %_13.not = icmp ult i64 %_0.sroa.0.0.i, %min_good_run_len
  br i1 %_13.not, label %bb7, label %bb3

bb3:                                              ; preds = %_ZN4core5slice4sort6shared17find_existing_run17h1859e993548aa19aE.exit
  br i1 %_0.sroa.3.0.i, label %bb14, label %bb5

bb11:                                             ; preds = %bb7
  %_0.sroa.0.0.i13 = tail call noundef i64 @llvm.umin.i64(i64 range(i64 -2305843009213693950, 2305843009213693952) %v.1, i64 %min_good_run_len)
  %_36 = shl nuw nsw i64 %_0.sroa.0.0.i13, 1
  br label %bb12

bb8:                                              ; preds = %bb7
  %_0.sroa.0.0.i14 = tail call noundef i64 @llvm.umin.i64(i64 range(i64 -2305843009213693950, 2305843009213693952) %v.1, i64 32)
; call core::slice::sort::stable::quicksort::quicksort
  tail call void @_ZN4core5slice4sort6stable9quicksort9quicksort17h6c1ff9bca1b551deE(ptr noalias noundef nonnull align 4 %v.0, i64 noundef %_0.sroa.0.0.i14, ptr noalias noundef nonnull align 4 %scratch.0, i64 noundef %scratch.1, i32 noundef 0, ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable_or_null(4) null, ptr noalias noundef align 8 dereferenceable(8) %is_less) #27
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
  %6 = load float, ptr %x.i.i.epil, align 4, !alias.scope !1550, !noalias !1555, !noundef !32
  %7 = load i32, ptr %y.i.i.epil, align 4, !alias.scope !1557, !noalias !1558
  store i32 %7, ptr %x.i.i.epil, align 4, !alias.scope !1550, !noalias !1555
  store float %6, ptr %y.i.i.epil, align 4, !alias.scope !1557, !noalias !1558
  br label %bb5

bb5:                                              ; preds = %bb5.i.i.epil, %bb5.loopexit.unr-lcssa, %bb14, %bb3
  %_27 = shl nuw nsw i64 %_0.sroa.0.0.i, 1
  %_26 = or disjoint i64 %_27, 1
  br label %bb12

bb14:                                             ; preds = %bb3
  %half_len2.i = lshr i64 %_0.sroa.0.0.i, 1
  %end.i = getelementptr inbounds nuw float, ptr %v.0, i64 %_0.sroa.0.0.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1558)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1555)
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
  %10 = load float, ptr %x.i.i, align 4, !alias.scope !1550, !noalias !1555, !noundef !32
  %11 = load i32, ptr %y.i.i, align 4, !alias.scope !1557, !noalias !1558
  store i32 %11, ptr %x.i.i, align 4, !alias.scope !1550, !noalias !1555
  store float %10, ptr %y.i.i, align 4, !alias.scope !1557, !noalias !1558
  %12 = xor i64 %i.sroa.0.016.i.i, -2
  %gep35 = getelementptr inbounds float, ptr %invariant.gep34, i64 %i.sroa.0.016.i.i
  %y.i.i.1 = getelementptr float, ptr %end.i, i64 %12
  %13 = load float, ptr %gep35, align 4, !alias.scope !1550, !noalias !1555, !noundef !32
  %14 = load i32, ptr %y.i.i.1, align 4, !alias.scope !1557, !noalias !1558
  store i32 %14, ptr %gep35, align 4, !alias.scope !1550, !noalias !1555
  store float %13, ptr %y.i.i.1, align 4, !alias.scope !1557, !noalias !1558
  %15 = add nuw nsw i64 %i.sroa.0.016.i.i, 2
  %niter.next.1 = add i64 %niter, 2
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %bb5.loopexit.unr-lcssa, label %bb5.i.i
}

; core::slice::sort::stable::drift::create_run
; Function Attrs: nonlazybind uwtable
define noundef range(i64 0, -1) i64 @_ZN4core5slice4sort6stable5drift10create_run17hbbfd8747b9c4bcecE(ptr noalias noundef nonnull align 4 %v.0, i64 noundef range(i64 0, 2305843009213693952) %v.1, ptr noalias noundef nonnull align 4 %scratch.0, i64 noundef range(i64 0, 2305843009213693952) %scratch.1, i64 noundef %min_good_run_len, i1 noundef zeroext %eager_sort, ptr noalias noundef align 8 dereferenceable(8) %is_less) unnamed_addr #1 personality ptr @rust_eh_personality {
start:
  %_7.not = icmp ult i64 %v.1, %min_good_run_len
  br i1 %_7.not, label %bb7, label %bb1

bb7:                                              ; preds = %_ZN4core5slice4sort6shared17find_existing_run17h947aa8c82f09aabbE.exit, %start
  br i1 %eager_sort, label %bb8, label %bb11

bb1:                                              ; preds = %start
  %_4.i = icmp samesign ult i64 %v.1, 2
  br i1 %_4.i, label %_ZN4core5slice4sort6shared17find_existing_run17h947aa8c82f09aabbE.exit, label %bb2.i

bb2.i:                                            ; preds = %bb1
  %_28.i = getelementptr inbounds nuw i8, ptr %v.0, i64 4
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1559)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1562)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1564)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1567)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1569)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1572)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1574)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1577)
  %_3.i.i.i.i = load i32, ptr %_28.i, align 4, !alias.scope !1579, !noalias !1580, !noundef !32
  %_4.i.i.i.i = load i32, ptr %v.0, align 4, !alias.scope !1580, !noalias !1579, !noundef !32
  %_0.i = icmp slt i32 %_3.i.i.i.i, %_4.i.i.i.i
  %_10.i13.not = icmp eq i64 %v.1, 2
  br i1 %_0.i, label %bb4.i.preheader, label %bb11.i.preheader

bb11.i.preheader:                                 ; preds = %bb2.i
  br i1 %_10.i13.not, label %_ZN4core5slice4sort6shared17find_existing_run17h947aa8c82f09aabbE.exit, label %bb12.i.preheader

bb12.i.preheader:                                 ; preds = %bb11.i.preheader
  %invariant.gep = getelementptr i8, ptr %v.0, i64 -4
  br label %bb12.i

bb4.i.preheader:                                  ; preds = %bb2.i
  br i1 %_10.i13.not, label %_ZN4core5slice4sort6shared17find_existing_run17h947aa8c82f09aabbE.exit, label %bb5.i.preheader

bb5.i.preheader:                                  ; preds = %bb4.i.preheader
  %invariant.gep24 = getelementptr i8, ptr %v.0, i64 -4
  br label %bb5.i

bb12.i:                                           ; preds = %bb12.i.preheader, %bb15.i
  %run_len.sroa.0.0.i11 = phi i64 [ %1, %bb15.i ], [ 2, %bb12.i.preheader ]
  %0 = getelementptr inbounds nuw i32, ptr %v.0, i64 %run_len.sroa.0.0.i11
  %gep = getelementptr i32, ptr %invariant.gep, i64 %run_len.sroa.0.0.i11
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1581)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1584)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1586)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1589)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1591)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1594)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1596)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1599)
  %_3.i.i.i.i1 = load i32, ptr %0, align 4, !alias.scope !1601, !noalias !1602, !noundef !32
  %_4.i.i.i.i2 = load i32, ptr %gep, align 4, !alias.scope !1602, !noalias !1601, !noundef !32
  %_0.i3 = icmp slt i32 %_3.i.i.i.i1, %_4.i.i.i.i2
  br i1 %_0.i3, label %_ZN4core5slice4sort6shared17find_existing_run17h947aa8c82f09aabbE.exit, label %bb15.i

bb15.i:                                           ; preds = %bb12.i
  %1 = add nuw nsw i64 %run_len.sroa.0.0.i11, 1
  %exitcond.not = icmp eq i64 %1, %v.1
  br i1 %exitcond.not, label %_ZN4core5slice4sort6shared17find_existing_run17h947aa8c82f09aabbE.exit, label %bb12.i

bb5.i:                                            ; preds = %bb5.i.preheader, %bb7.i
  %run_len.sroa.0.1.i14 = phi i64 [ %3, %bb7.i ], [ 2, %bb5.i.preheader ]
  %2 = getelementptr inbounds nuw i32, ptr %v.0, i64 %run_len.sroa.0.1.i14
  %gep25 = getelementptr i32, ptr %invariant.gep24, i64 %run_len.sroa.0.1.i14
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1603)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1606)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1608)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1611)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1613)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1616)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1618)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1621)
  %_3.i.i.i.i4 = load i32, ptr %2, align 4, !alias.scope !1623, !noalias !1624, !noundef !32
  %_4.i.i.i.i5 = load i32, ptr %gep25, align 4, !alias.scope !1624, !noalias !1623, !noundef !32
  %_0.i6 = icmp slt i32 %_3.i.i.i.i4, %_4.i.i.i.i5
  br i1 %_0.i6, label %bb7.i, label %_ZN4core5slice4sort6shared17find_existing_run17h947aa8c82f09aabbE.exit

bb7.i:                                            ; preds = %bb5.i
  %3 = add nuw nsw i64 %run_len.sroa.0.1.i14, 1
  %exitcond19.not = icmp eq i64 %3, %v.1
  br i1 %exitcond19.not, label %_ZN4core5slice4sort6shared17find_existing_run17h947aa8c82f09aabbE.exit, label %bb5.i

_ZN4core5slice4sort6shared17find_existing_run17h947aa8c82f09aabbE.exit: ; preds = %bb12.i, %bb15.i, %bb5.i, %bb7.i, %bb11.i.preheader, %bb4.i.preheader, %bb1
  %_0.sroa.3.0.i = phi i1 [ false, %bb1 ], [ true, %bb4.i.preheader ], [ false, %bb11.i.preheader ], [ true, %bb7.i ], [ true, %bb5.i ], [ false, %bb15.i ], [ false, %bb12.i ]
  %_0.sroa.0.0.i = phi i64 [ %v.1, %bb1 ], [ 2, %bb4.i.preheader ], [ 2, %bb11.i.preheader ], [ %run_len.sroa.0.1.i14, %bb5.i ], [ %v.1, %bb7.i ], [ %run_len.sroa.0.0.i11, %bb12.i ], [ %v.1, %bb15.i ]
  %_12 = icmp samesign ule i64 %_0.sroa.0.0.i, %v.1
  tail call void @llvm.assume(i1 %_12)
  %_13.not = icmp ult i64 %_0.sroa.0.0.i, %min_good_run_len
  br i1 %_13.not, label %bb7, label %bb3

bb3:                                              ; preds = %_ZN4core5slice4sort6shared17find_existing_run17h947aa8c82f09aabbE.exit
  br i1 %_0.sroa.3.0.i, label %bb14, label %bb5

bb11:                                             ; preds = %bb7
  %_0.sroa.0.0.i7 = tail call noundef i64 @llvm.umin.i64(i64 range(i64 -2305843009213693950, 2305843009213693952) %v.1, i64 %min_good_run_len)
  %_36 = shl nuw nsw i64 %_0.sroa.0.0.i7, 1
  br label %bb12

bb8:                                              ; preds = %bb7
  %_0.sroa.0.0.i8 = tail call noundef i64 @llvm.umin.i64(i64 range(i64 -2305843009213693950, 2305843009213693952) %v.1, i64 32)
; call core::slice::sort::stable::quicksort::quicksort
  tail call void @_ZN4core5slice4sort6stable9quicksort9quicksort17hf41fb6ada53877c9E(ptr noalias noundef nonnull align 4 %v.0, i64 noundef %_0.sroa.0.0.i8, ptr noalias noundef nonnull align 4 %scratch.0, i64 noundef %scratch.1, i32 noundef 0, ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable_or_null(4) null, ptr noalias noundef align 8 dereferenceable(8) %is_less) #27
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
  %6 = load i32, ptr %x.i.i.epil, align 4, !alias.scope !1625, !noalias !1630, !noundef !32
  %7 = load i32, ptr %y.i.i.epil, align 4, !alias.scope !1632, !noalias !1633
  store i32 %7, ptr %x.i.i.epil, align 4, !alias.scope !1625, !noalias !1630
  store i32 %6, ptr %y.i.i.epil, align 4, !alias.scope !1632, !noalias !1633
  br label %bb5

bb5:                                              ; preds = %bb5.i.i.epil, %bb5.loopexit.unr-lcssa, %bb14, %bb3
  %_27 = shl nuw nsw i64 %_0.sroa.0.0.i, 1
  %_26 = or disjoint i64 %_27, 1
  br label %bb12

bb14:                                             ; preds = %bb3
  %half_len2.i = lshr i64 %_0.sroa.0.0.i, 1
  %end.i = getelementptr inbounds nuw i32, ptr %v.0, i64 %_0.sroa.0.0.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1633)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1630)
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
  %10 = load i32, ptr %x.i.i, align 4, !alias.scope !1625, !noalias !1630, !noundef !32
  %11 = load i32, ptr %y.i.i, align 4, !alias.scope !1632, !noalias !1633
  store i32 %11, ptr %x.i.i, align 4, !alias.scope !1625, !noalias !1630
  store i32 %10, ptr %y.i.i, align 4, !alias.scope !1632, !noalias !1633
  %12 = xor i64 %i.sroa.0.016.i.i, -2
  %gep27 = getelementptr inbounds i32, ptr %invariant.gep26, i64 %i.sroa.0.016.i.i
  %y.i.i.1 = getelementptr i32, ptr %end.i, i64 %12
  %13 = load i32, ptr %gep27, align 4, !alias.scope !1625, !noalias !1630, !noundef !32
  %14 = load i32, ptr %y.i.i.1, align 4, !alias.scope !1632, !noalias !1633
  store i32 %14, ptr %gep27, align 4, !alias.scope !1625, !noalias !1630
  store i32 %13, ptr %y.i.i.1, align 4, !alias.scope !1632, !noalias !1633
  %15 = add nuw nsw i64 %i.sroa.0.016.i.i, 2
  %niter.next.1 = add i64 %niter, 2
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %bb5.loopexit.unr-lcssa, label %bb5.i.i
}

; core::slice::sort::stable::drift::stable_quicksort
; Function Attrs: nonlazybind uwtable
define void @_ZN4core5slice4sort6stable5drift16stable_quicksort17h0c1559a6dead61c0E(ptr noalias noundef nonnull align 4 %v.0, i64 noundef range(i64 0, 2305843009213693952) %v.1, ptr noalias noundef nonnull align 4 %scratch.0, i64 noundef range(i64 0, 2305843009213693952) %scratch.1, ptr noalias noundef align 8 dereferenceable(8) %is_less) unnamed_addr #1 {
start:
  %self = or i64 %v.1, 1
  %0 = tail call range(i64 3, 64) i64 @llvm.ctlz.i64(i64 %self, i1 true)
  %1 = trunc nuw nsw i64 %0 to i32
  %log = shl nuw nsw i32 %1, 1
  %limit = xor i32 %log, 126
; call core::slice::sort::stable::quicksort::quicksort
  tail call void @_ZN4core5slice4sort6stable9quicksort9quicksort17hf41fb6ada53877c9E(ptr noalias noundef nonnull align 4 %v.0, i64 noundef %v.1, ptr noalias noundef nonnull align 4 %scratch.0, i64 noundef %scratch.1, i32 noundef %limit, ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable_or_null(4) null, ptr noalias noundef align 8 dereferenceable(8) %is_less) #27
  ret void
}

; core::slice::sort::stable::drift::stable_quicksort
; Function Attrs: nonlazybind uwtable
define void @_ZN4core5slice4sort6stable5drift16stable_quicksort17hf4048b70c8010335E(ptr noalias noundef nonnull align 4 %v.0, i64 noundef range(i64 0, 2305843009213693952) %v.1, ptr noalias noundef nonnull align 4 %scratch.0, i64 noundef range(i64 0, 2305843009213693952) %scratch.1, ptr noalias noundef align 8 dereferenceable(8) %is_less) unnamed_addr #1 {
start:
  %self = or i64 %v.1, 1
  %0 = tail call range(i64 3, 64) i64 @llvm.ctlz.i64(i64 %self, i1 true)
  %1 = trunc nuw nsw i64 %0 to i32
  %log = shl nuw nsw i32 %1, 1
  %limit = xor i32 %log, 126
; call core::slice::sort::stable::quicksort::quicksort
  tail call void @_ZN4core5slice4sort6stable9quicksort9quicksort17h6c1ff9bca1b551deE(ptr noalias noundef nonnull align 4 %v.0, i64 noundef %v.1, ptr noalias noundef nonnull align 4 %scratch.0, i64 noundef %scratch.1, i32 noundef %limit, ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable_or_null(4) null, ptr noalias noundef align 8 dereferenceable(8) %is_less) #27
  ret void
}

; core::slice::sort::stable::drift::sort
; Function Attrs: nonlazybind uwtable
define void @_ZN4core5slice4sort6stable5drift4sort17h061b1c9959168dd3E(ptr noalias noundef nonnull align 4 %v.0, i64 noundef range(i64 0, 2305843009213693952) %v.1, ptr noalias noundef nonnull align 4 %scratch.0, i64 noundef range(i64 0, 2305843009213693952) %scratch.1, i1 noundef zeroext %eager_sort, ptr noalias noundef align 8 dereferenceable(8) %is_less) unnamed_addr #1 personality ptr @rust_eh_personality {
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
  %2 = tail call noundef i64 @_ZN4core5slice4sort6stable5drift10create_run17h6e2a93f230ac16e0E(ptr noalias noundef nonnull align 4 %_82, i64 noundef %new_len, ptr noalias noundef nonnull align 4 %scratch.0, i64 noundef %scratch.1, i64 noundef %min_good_run_len.sroa.0.0, i1 noundef zeroext %eager_sort, ptr noalias noundef align 8 dereferenceable(8) %is_less)
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

bb12:                                             ; preds = %bb10, %_ZN4core5slice4sort6stable5drift13logical_merge17hca8108c7b0623ee4E.exit
  %stack_len.sroa.0.145 = phi i64 [ %count, %_ZN4core5slice4sort6stable5drift13logical_merge17hca8108c7b0623ee4E.exit ], [ %stack_len.sroa.0.0, %bb10 ]
  %prev_run.sroa.0.144 = phi i64 [ %_0.sroa.0.0.i, %_ZN4core5slice4sort6stable5drift13logical_merge17hca8108c7b0623ee4E.exit ], [ %prev_run.sroa.0.0, %bb10 ]
  %count = add i64 %stack_len.sroa.0.145, -1
  %_41 = getelementptr inbounds nuw i8, ptr %desired_depth_storage, i64 %count
  %_40 = load i8, ptr %_41, align 1, !noundef !32
  %_39.not = icmp ult i8 %_40, %desired_depth.sroa.0.0
  br i1 %_39.not, label %bb17, label %bb13

bb17:                                             ; preds = %_ZN4core5slice4sort6stable5drift13logical_merge17hca8108c7b0623ee4E.exit, %bb12, %bb10
  %prev_run.sroa.0.1.lcssa = phi i64 [ %prev_run.sroa.0.0, %bb10 ], [ %_0.sroa.0.0.i, %_ZN4core5slice4sort6stable5drift13logical_merge17hca8108c7b0623ee4E.exit ], [ %prev_run.sroa.0.144, %bb12 ]
  %stack_len.sroa.0.1.lcssa = phi i64 [ %stack_len.sroa.0.0, %bb10 ], [ 1, %_ZN4core5slice4sort6stable5drift13logical_merge17hca8108c7b0623ee4E.exit ], [ %stack_len.sroa.0.145, %bb12 ]
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
  br label %_ZN4core5slice4sort6stable5drift13logical_merge17hca8108c7b0623ee4E.exit

bb5.i:                                            ; preds = %bb11.i, %bb3.i
  br i1 %_10.not.i, label %bb16.i, label %bb7.i

bb11.i:                                           ; preds = %bb3.i
  %self.i = or i64 %_50, 1
  %8 = tail call range(i64 3, 64) i64 @llvm.ctlz.i64(i64 %self.i, i1 true)
  %9 = trunc nuw nsw i64 %8 to i32
  %log.i = shl nuw nsw i32 %9, 1
  %limit.i = xor i32 %log.i, 126
; call core::slice::sort::stable::quicksort::quicksort
  tail call void @_ZN4core5slice4sort6stable9quicksort9quicksort17h6c1ff9bca1b551deE(ptr noalias noundef nonnull align 4 %_98, i64 noundef range(i64 0, 2305843009213693952) %_50, ptr noalias noundef nonnull align 4 %scratch.0, i64 noundef range(i64 0, 2305843009213693952) %scratch.1, i32 noundef %limit.i, ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable_or_null(4) null, ptr noalias noundef nonnull align 8 dereferenceable(8) %is_less) #27
  br label %bb5.i

bb7.i:                                            ; preds = %bb16.i, %bb5.i
; call core::slice::sort::stable::merge::merge
  tail call void @_ZN4core5slice4sort6stable5merge5merge17h4b6f260cee8dbb44E(ptr noalias noundef nonnull align 4 %_98, i64 noundef range(i64 0, 2305843009213693952) %merged_len, ptr noalias noundef nonnull align 4 %scratch.0, i64 noundef range(i64 0, 2305843009213693952) %scratch.1, i64 noundef %_50, ptr noalias nonnull align 8 poison)
  %_39.i = shl nuw nsw i64 %merged_len, 1
  %_38.i = or disjoint i64 %_39.i, 1
  br label %_ZN4core5slice4sort6stable5drift13logical_merge17hca8108c7b0623ee4E.exit

bb16.i:                                           ; preds = %bb5.i
  %_37.i = getelementptr inbounds nuw float, ptr %_98, i64 %_50
  %self.i37 = or i64 %_51, 1
  %10 = tail call range(i64 3, 64) i64 @llvm.ctlz.i64(i64 %self.i37, i1 true)
  %11 = trunc nuw nsw i64 %10 to i32
  %log.i38 = shl nuw nsw i32 %11, 1
  %limit.i39 = xor i32 %log.i38, 126
; call core::slice::sort::stable::quicksort::quicksort
  tail call void @_ZN4core5slice4sort6stable9quicksort9quicksort17h6c1ff9bca1b551deE(ptr noalias noundef nonnull align 4 %_37.i, i64 noundef range(i64 0, 2305843009213693952) %_51, ptr noalias noundef nonnull align 4 %scratch.0, i64 noundef range(i64 0, 2305843009213693952) %scratch.1, i32 noundef %limit.i39, ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable_or_null(4) null, ptr noalias noundef nonnull align 8 dereferenceable(8) %is_less) #27
  br label %bb7.i

_ZN4core5slice4sort6stable5drift13logical_merge17hca8108c7b0623ee4E.exit: ; preds = %bb9.i, %bb7.i
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
  tail call void @_ZN4core5slice4sort6stable9quicksort9quicksort17h6c1ff9bca1b551deE(ptr noalias noundef nonnull align 4 %v.0, i64 noundef range(i64 0, 2305843009213693952) %v.1, ptr noalias noundef nonnull align 4 %scratch.0, i64 noundef range(i64 0, 2305843009213693952) %scratch.1, i32 noundef %limit.i42, ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable_or_null(4) null, ptr noalias noundef align 8 dereferenceable(8) %is_less) #27
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
define void @_ZN4core5slice4sort6stable5drift4sort17hbd75ce168a8b00beE(ptr noalias noundef nonnull align 4 %v.0, i64 noundef range(i64 0, 2305843009213693952) %v.1, ptr noalias noundef nonnull align 4 %scratch.0, i64 noundef range(i64 0, 2305843009213693952) %scratch.1, i1 noundef zeroext %eager_sort, ptr noalias noundef align 8 dereferenceable(8) %is_less) unnamed_addr #1 personality ptr @rust_eh_personality {
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
  %2 = tail call noundef i64 @_ZN4core5slice4sort6stable5drift10create_run17hbbfd8747b9c4bcecE(ptr noalias noundef nonnull align 4 %_82, i64 noundef %new_len, ptr noalias noundef nonnull align 4 %scratch.0, i64 noundef %scratch.1, i64 noundef %min_good_run_len.sroa.0.0, i1 noundef zeroext %eager_sort, ptr noalias noundef align 8 dereferenceable(8) %is_less)
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

bb12:                                             ; preds = %bb12.lr.ph, %_ZN4core5slice4sort6stable5drift13logical_merge17h20c1c10783fa17bdE.exit
  %stack_len.sroa.0.150 = phi i64 [ %stack_len.sroa.0.0, %bb12.lr.ph ], [ %count, %_ZN4core5slice4sort6stable5drift13logical_merge17h20c1c10783fa17bdE.exit ]
  %prev_run.sroa.0.149 = phi i64 [ %prev_run.sroa.0.0, %bb12.lr.ph ], [ %_0.sroa.0.0.i, %_ZN4core5slice4sort6stable5drift13logical_merge17h20c1c10783fa17bdE.exit ]
  %count = add i64 %stack_len.sroa.0.150, -1
  %_41 = getelementptr inbounds nuw i8, ptr %desired_depth_storage, i64 %count
  %_40 = load i8, ptr %_41, align 1, !noundef !32
  %_39.not = icmp ult i8 %_40, %desired_depth.sroa.0.0
  br i1 %_39.not, label %bb17, label %bb13

bb17:                                             ; preds = %_ZN4core5slice4sort6stable5drift13logical_merge17h20c1c10783fa17bdE.exit, %bb12, %bb10
  %prev_run.sroa.0.1.lcssa = phi i64 [ %prev_run.sroa.0.0, %bb10 ], [ %_0.sroa.0.0.i, %_ZN4core5slice4sort6stable5drift13logical_merge17h20c1c10783fa17bdE.exit ], [ %prev_run.sroa.0.149, %bb12 ]
  %stack_len.sroa.0.1.lcssa = phi i64 [ %stack_len.sroa.0.0, %bb10 ], [ 1, %_ZN4core5slice4sort6stable5drift13logical_merge17h20c1c10783fa17bdE.exit ], [ %stack_len.sroa.0.150, %bb12 ]
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
  br label %_ZN4core5slice4sort6stable5drift13logical_merge17h20c1c10783fa17bdE.exit

bb5.i:                                            ; preds = %bb11.i, %bb3.i
  br i1 %_10.not.i, label %bb16.i, label %bb7.i

bb11.i:                                           ; preds = %bb3.i
  %self.i = or i64 %_50, 1
  %8 = tail call range(i64 3, 64) i64 @llvm.ctlz.i64(i64 %self.i, i1 true)
  %9 = trunc nuw nsw i64 %8 to i32
  %log.i = shl nuw nsw i32 %9, 1
  %limit.i = xor i32 %log.i, 126
; call core::slice::sort::stable::quicksort::quicksort
  tail call void @_ZN4core5slice4sort6stable9quicksort9quicksort17hf41fb6ada53877c9E(ptr noalias noundef nonnull align 4 %_98, i64 noundef range(i64 0, 2305843009213693952) %_50, ptr noalias noundef nonnull align 4 %scratch.0, i64 noundef range(i64 0, 2305843009213693952) %scratch.1, i32 noundef %limit.i, ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable_or_null(4) null, ptr noalias noundef nonnull align 8 dereferenceable(8) %is_less) #27
  br label %bb5.i

bb7.i:                                            ; preds = %bb16.i, %bb5.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1634)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1637)
  %_6.i = icmp ult i64 %left10, 2
  %_7.i = icmp ult i64 %prev_run.sroa.0.149, 2
  %or.cond.i = or i1 %_7.i, %_6.i
  br i1 %or.cond.i, label %_ZN4core5slice4sort6stable5merge5merge17ha398925cfe361572E.exit, label %bb2.i

bb2.i:                                            ; preds = %bb7.i
  %_0.sroa.0.0.i.i = tail call i64 @llvm.umin.i64(i64 %_51, i64 %_50)
  %_8.i = icmp samesign ult i64 %scratch.1, %_0.sroa.0.0.i.i
  br i1 %_8.i, label %_ZN4core5slice4sort6stable5merge5merge17ha398925cfe361572E.exit, label %bb5.i37

bb5.i37:                                          ; preds = %bb2.i
  %v_mid.i = getelementptr inbounds nuw i32, ptr %_98, i64 %_50
  %left_is_shorter.not.i = icmp samesign ugt i64 %_50, %_51
  %spec.select.i = select i1 %left_is_shorter.not.i, ptr %v_mid.i, ptr %_98
  %10 = shl nuw nsw i64 %_0.sroa.0.0.i.i, 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %scratch.0, ptr nonnull align 4 %spec.select.i, i64 %10, i1 false), !alias.scope !1639
  %_22.i38 = getelementptr inbounds nuw i8, ptr %scratch.0, i64 %10
  br i1 %left_is_shorter.not.i, label %bb1.i.i, label %bb3.i.i

bb1.i.i:                                          ; preds = %bb5.i37, %bb1.i.i
  %_2110.i.i = phi ptr [ %_21.i.i, %bb1.i.i ], [ %_22.i38, %bb5.i37 ]
  %_188.i.i = phi ptr [ %_18.i.i, %bb1.i.i ], [ %spec.select.i, %bb5.i37 ]
  %out.sroa.0.0.i.i = phi ptr [ %13, %bb1.i.i ], [ %v_end.i, %bb5.i37 ]
  %11 = getelementptr inbounds i8, ptr %_188.i.i, i64 -4
  %12 = getelementptr inbounds i8, ptr %_2110.i.i, i64 -4
  %13 = getelementptr inbounds i8, ptr %out.sroa.0.0.i.i, i64 -4
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1640)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1643)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1645)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1648)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1650)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1653)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1655)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1658)
  %_3.i.i.i.i.i.i = load i32, ptr %12, align 4, !alias.scope !1660, !noalias !1661, !noundef !32
  %_4.i.i.i.i.i.i = load i32, ptr %11, align 4, !alias.scope !1664, !noalias !1665, !noundef !32
  %_0.i.i.i = icmp slt i32 %_3.i.i.i.i.i.i, %_4.i.i.i.i.i.i
  %14 = tail call i32 @llvm.smax.i32(i32 %_3.i.i.i.i.i.i, i32 %_4.i.i.i.i.i.i)
  store i32 %14, ptr %13, align 4, !alias.scope !1634, !noalias !1666
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1667)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1670)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1672)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1675)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1677)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1680)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1682)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1685)
  %_3.i.i.i.i.i12.i = load i32, ptr %right.sroa.0.010.i.i, align 4, !alias.scope !1687, !noalias !1688, !noundef !32
  %_4.i.i.i.i.i13.i = load i32, ptr %_2059.i.i, align 4, !alias.scope !1691, !noalias !1692, !noundef !32
  %_0.i.i14.i = icmp slt i32 %_3.i.i.i.i.i12.i, %_4.i.i.i.i.i13.i
  %consume_left.i.i = xor i1 %_0.i.i14.i, true
  %15 = tail call i32 @llvm.smin.i32(i32 %_3.i.i.i.i.i12.i, i32 %_4.i.i.i.i.i13.i)
  store i32 %15, ptr %_2511.i.i, align 4, !alias.scope !1634, !noalias !1693
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
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %merge_state.sroa.13.0.i, ptr align 4 %merge_state.sroa.0.0.i, i64 %18, i1 false), !alias.scope !1639, !noalias !1694
  br label %_ZN4core5slice4sort6stable5merge5merge17ha398925cfe361572E.exit

_ZN4core5slice4sort6stable5merge5merge17ha398925cfe361572E.exit: ; preds = %bb7.i, %bb2.i, %bb16.i40
  %_39.i = shl nuw nsw i64 %merged_len, 1
  %_38.i = or disjoint i64 %_39.i, 1
  br label %_ZN4core5slice4sort6stable5drift13logical_merge17h20c1c10783fa17bdE.exit

bb16.i:                                           ; preds = %bb5.i
  %_37.i = getelementptr inbounds nuw i32, ptr %_98, i64 %_50
  %self.i41 = or i64 %_51, 1
  %19 = tail call range(i64 3, 64) i64 @llvm.ctlz.i64(i64 %self.i41, i1 true)
  %20 = trunc nuw nsw i64 %19 to i32
  %log.i42 = shl nuw nsw i32 %20, 1
  %limit.i43 = xor i32 %log.i42, 126
; call core::slice::sort::stable::quicksort::quicksort
  tail call void @_ZN4core5slice4sort6stable9quicksort9quicksort17hf41fb6ada53877c9E(ptr noalias noundef nonnull align 4 %_37.i, i64 noundef range(i64 0, 2305843009213693952) %_51, ptr noalias noundef nonnull align 4 %scratch.0, i64 noundef range(i64 0, 2305843009213693952) %scratch.1, i32 noundef %limit.i43, ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable_or_null(4) null, ptr noalias noundef nonnull align 8 dereferenceable(8) %is_less) #27
  br label %bb7.i

_ZN4core5slice4sort6stable5drift13logical_merge17h20c1c10783fa17bdE.exit: ; preds = %bb9.i, %_ZN4core5slice4sort6stable5merge5merge17ha398925cfe361572E.exit
  %_0.sroa.0.0.i = phi i64 [ %_38.i, %_ZN4core5slice4sort6stable5merge5merge17ha398925cfe361572E.exit ], [ %_40.i, %bb9.i ]
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
  tail call void @_ZN4core5slice4sort6stable9quicksort9quicksort17hf41fb6ada53877c9E(ptr noalias noundef nonnull align 4 %v.0, i64 noundef range(i64 0, 2305843009213693952) %v.1, ptr noalias noundef nonnull align 4 %scratch.0, i64 noundef range(i64 0, 2305843009213693952) %scratch.1, i32 noundef %limit.i46, ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable_or_null(4) null, ptr noalias noundef align 8 dereferenceable(8) %is_less) #27
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
define void @"_ZN4core5slice4sort6stable5merge19MergeState$LT$T$GT$10merge_down17h82040c10322937ffE"(ptr noalias noundef align 8 captures(none) dereferenceable(24) %self, ptr noundef readnone captures(address) %left_end, ptr noundef readnone captures(address) %right_end, ptr noundef writeonly captures(none) %0, ptr noalias noundef readnone align 8 captures(none) dereferenceable(8) %is_less) unnamed_addr #7 {
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1699)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1702)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1704)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1707)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1709)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1712)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1714)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1717)
  %_3.i.i.i.i = load i32, ptr %4, align 4, !alias.scope !1719, !noalias !1720, !noundef !32
  %_4.i.i.i.i = load i32, ptr %3, align 4, !alias.scope !1720, !noalias !1719, !noundef !32
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
define void @"_ZN4core5slice4sort6stable5merge19MergeState$LT$T$GT$10merge_down17ha45849566116a889E"(ptr noalias noundef align 8 captures(none) dereferenceable(24) %self, ptr noundef readnone captures(address) %left_end, ptr noundef readnone captures(address) %right_end, ptr noundef writeonly captures(none) %0, ptr noalias noundef readnone align 8 captures(none) dereferenceable(8) %is_less) unnamed_addr #1 {
start:
  %1 = getelementptr inbounds nuw i8, ptr %self, i64 16
  %2 = getelementptr inbounds nuw i8, ptr %self, i64 8
  %.promoted = load ptr, ptr %1, align 8
  %.promoted8 = load ptr, ptr %2, align 8
  br label %bb1

bb1:                                              ; preds = %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h47d2093944d38971E.exit", %start
  %_219 = phi ptr [ %.promoted8, %start ], [ %_21, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h47d2093944d38971E.exit" ]
  %_187 = phi ptr [ %.promoted, %start ], [ %_18, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h47d2093944d38971E.exit" ]
  %out.sroa.0.0 = phi ptr [ %0, %start ], [ %5, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h47d2093944d38971E.exit" ]
  %3 = getelementptr inbounds i8, ptr %_187, i64 -4
  %4 = getelementptr inbounds i8, ptr %_219, i64 -4
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1721)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1724)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1726)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1729)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1731)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1734)
  %_4.i.i.i = load float, ptr %4, align 4, !alias.scope !1736, !noalias !1737, !noundef !32
  %_5.i.i.i = load float, ptr %3, align 4, !alias.scope !1737, !noalias !1736, !noundef !32
  %.not.i.i.i = fcmp uno float %_4.i.i.i, %_5.i.i.i
  br i1 %.not.i.i.i, label %bb2.i.i.i, label %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h47d2093944d38971E.exit", !prof !35

bb2.i.i.i:                                        ; preds = %bb1
; call core::option::unwrap_failed
  tail call void @_ZN4core6option13unwrap_failed17hef2534b77b89c04fE(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_e233725058d574d75123974d8763f424) #24, !noalias !1738
  unreachable

"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h47d2093944d38971E.exit": ; preds = %bb1
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

bb7:                                              ; preds = %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h47d2093944d38971E.exit"
  ret void
}

; core::slice::sort::stable::merge::MergeState<T>::merge_up
; Function Attrs: nofree norecurse nosync nounwind nonlazybind uwtable
define void @"_ZN4core5slice4sort6stable5merge19MergeState$LT$T$GT$8merge_up17h551d82588688e894E"(ptr noalias noundef align 8 captures(none) dereferenceable(24) %self, ptr noundef readonly captures(address) %0, ptr noundef readnone captures(address) %right_end, ptr noalias noundef readnone align 8 captures(none) dereferenceable(8) %is_less) unnamed_addr #8 {
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1739)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1742)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1744)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1747)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1749)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1752)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1754)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1757)
  %_3.i.i.i.i = load i32, ptr %right.sroa.0.010, align 4, !alias.scope !1759, !noalias !1760, !noundef !32
  %_4.i.i.i.i = load i32, ptr %_2059, align 4, !alias.scope !1760, !noalias !1759, !noundef !32
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

; core::slice::sort::stable::merge::MergeState<T>::merge_up
; Function Attrs: nonlazybind uwtable
define void @"_ZN4core5slice4sort6stable5merge19MergeState$LT$T$GT$8merge_up17hf3bb952b16dc98dcE"(ptr noalias noundef align 8 captures(none) dereferenceable(24) %self, ptr noundef readonly captures(address) %0, ptr noundef readnone captures(address) %right_end, ptr noalias noundef readnone align 8 captures(none) dereferenceable(8) %is_less) unnamed_addr #1 {
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

bb9:                                              ; preds = %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h47d2093944d38971E.exit", %start
  ret void

bb3:                                              ; preds = %bb3.lr.ph, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h47d2093944d38971E.exit"
  %_2511 = phi ptr [ %.promoted, %bb3.lr.ph ], [ %_25, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h47d2093944d38971E.exit" ]
  %right.sroa.0.010 = phi ptr [ %0, %bb3.lr.ph ], [ %_23, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h47d2093944d38971E.exit" ]
  %_2059 = phi ptr [ %self.promoted, %bb3.lr.ph ], [ %_20, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h47d2093944d38971E.exit" ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1761)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1764)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1766)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1769)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1771)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1774)
  %_4.i.i.i = load float, ptr %right.sroa.0.010, align 4, !alias.scope !1776, !noalias !1777, !noundef !32
  %_5.i.i.i = load float, ptr %_2059, align 4, !alias.scope !1777, !noalias !1776, !noundef !32
  %.not.i.i.i = fcmp uno float %_4.i.i.i, %_5.i.i.i
  br i1 %.not.i.i.i, label %bb2.i.i.i, label %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h47d2093944d38971E.exit", !prof !35

bb2.i.i.i:                                        ; preds = %bb3
; call core::option::unwrap_failed
  tail call void @_ZN4core6option13unwrap_failed17hef2534b77b89c04fE(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_e233725058d574d75123974d8763f424) #24, !noalias !1778
  unreachable

"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h47d2093944d38971E.exit": ; preds = %bb3
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

; core::slice::sort::stable::merge::merge
; Function Attrs: nonlazybind uwtable
define void @_ZN4core5slice4sort6stable5merge5merge17h4b6f260cee8dbb44E(ptr noalias noundef nonnull align 4 captures(address) %v.0, i64 noundef range(i64 0, 2305843009213693952) %v.1, ptr noalias noundef nonnull align 4 %scratch.0, i64 noundef range(i64 0, 2305843009213693952) %scratch.1, i64 noundef %0, ptr noalias readnone align 8 captures(none) %is_less) unnamed_addr #1 personality ptr @rust_eh_personality {
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

bb1.i:                                            ; preds = %bb5, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h47d2093944d38971E.exit.i"
  %merge_state.sroa.13.2 = phi ptr [ %_18.i, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h47d2093944d38971E.exit.i" ], [ %spec.select, %bb5 ]
  %merge_state.sroa.7.2 = phi ptr [ %_21.i, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h47d2093944d38971E.exit.i" ], [ %_22, %bb5 ]
  %out.sroa.0.0.i = phi ptr [ %4, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h47d2093944d38971E.exit.i" ], [ %v_end, %bb5 ]
  %2 = getelementptr inbounds i8, ptr %merge_state.sroa.13.2, i64 -4
  %3 = getelementptr inbounds i8, ptr %merge_state.sroa.7.2, i64 -4
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1779)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1782)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1784)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1787)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1789)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1792)
  %_4.i.i.i.i = load float, ptr %3, align 4, !alias.scope !1794, !noalias !1795, !noundef !32
  %_5.i.i.i.i = load float, ptr %2, align 4, !alias.scope !1798, !noalias !1799, !noundef !32
  %.not.i.i.i.i = fcmp uno float %_4.i.i.i.i, %_5.i.i.i.i
  br i1 %.not.i.i.i.i, label %bb2.i.i.i.i, label %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h47d2093944d38971E.exit.i", !prof !35

bb2.i.i.i.i:                                      ; preds = %bb1.i
; invoke core::option::unwrap_failed
  invoke void @_ZN4core6option13unwrap_failed17hef2534b77b89c04fE(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_e233725058d574d75123974d8763f424) #24
          to label %.noexc unwind label %cleanup

.noexc:                                           ; preds = %bb2.i.i.i.i
  unreachable

"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h47d2093944d38971E.exit.i": ; preds = %bb1.i
  %4 = getelementptr inbounds i8, ptr %out.sroa.0.0.i, i64 -4
  %_0.i.i = fcmp olt float %_4.i.i.i.i, %_5.i.i.i.i
  %..i = select i1 %_0.i.i, ptr %2, ptr %3
  %5 = load i32, ptr %..i, align 4, !noalias !1800
  store i32 %5, ptr %4, align 4, !noalias !1800
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

bb3.i:                                            ; preds = %bb12, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h47d2093944d38971E.exit.i15"
  %merge_state.sroa.13.3 = phi ptr [ %_25.i, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h47d2093944d38971E.exit.i15" ], [ %spec.select, %bb12 ]
  %merge_state.sroa.0.2 = phi ptr [ %_20.i18, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h47d2093944d38971E.exit.i15" ], [ %scratch.0, %bb12 ]
  %right.sroa.0.010.i = phi ptr [ %_23.i19, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h47d2093944d38971E.exit.i15" ], [ %v_mid, %bb12 ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1801)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1804)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1806)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1809)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1811)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1814)
  %_4.i.i.i.i12 = load float, ptr %right.sroa.0.010.i, align 4, !alias.scope !1816, !noalias !1817, !noundef !32
  %_5.i.i.i.i13 = load float, ptr %merge_state.sroa.0.2, align 4, !alias.scope !1820, !noalias !1821, !noundef !32
  %.not.i.i.i.i14 = fcmp uno float %_4.i.i.i.i12, %_5.i.i.i.i13
  br i1 %.not.i.i.i.i14, label %bb2.i.i.i.i21, label %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h47d2093944d38971E.exit.i15", !prof !35

bb2.i.i.i.i21:                                    ; preds = %bb3.i
; invoke core::option::unwrap_failed
  invoke void @_ZN4core6option13unwrap_failed17hef2534b77b89c04fE(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_e233725058d574d75123974d8763f424) #24
          to label %.noexc22 unwind label %cleanup

.noexc22:                                         ; preds = %bb2.i.i.i.i21
  unreachable

"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h47d2093944d38971E.exit.i15": ; preds = %bb3.i
  %_0.i.i16 = fcmp olt float %_4.i.i.i.i12, %_5.i.i.i.i13
  %consume_left.i = xor i1 %_0.i.i16, true
  %src.sroa.0.0.i = select i1 %_0.i.i16, ptr %right.sroa.0.010.i, ptr %merge_state.sroa.0.2
  %6 = load i32, ptr %src.sroa.0.0.i, align 4, !noalias !1822
  store i32 %6, ptr %merge_state.sroa.13.3, align 4, !noalias !1822
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
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %merge_state.sroa.13.0, ptr nonnull align 4 %merge_state.sroa.0.0, i64 %10, i1 false), !noalias !1823
  resume { ptr, i32 } %7

bb16:                                             ; preds = %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h47d2093944d38971E.exit.i15", %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h47d2093944d38971E.exit.i", %bb12
  %merge_state.sroa.13.1 = phi ptr [ %spec.select, %bb12 ], [ %_18.i, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h47d2093944d38971E.exit.i" ], [ %_25.i, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h47d2093944d38971E.exit.i15" ]
  %merge_state.sroa.7.1 = phi ptr [ %_22, %bb12 ], [ %_21.i, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h47d2093944d38971E.exit.i" ], [ %_22, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h47d2093944d38971E.exit.i15" ]
  %merge_state.sroa.0.1 = phi ptr [ %scratch.0, %bb12 ], [ %scratch.0, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h47d2093944d38971E.exit.i" ], [ %_20.i18, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h47d2093944d38971E.exit.i15" ]
  %11 = ptrtoint ptr %merge_state.sroa.7.1 to i64
  %12 = ptrtoint ptr %merge_state.sroa.0.1 to i64
  %13 = sub nuw i64 %11, %12
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %merge_state.sroa.13.1, ptr align 4 %merge_state.sroa.0.1, i64 %13, i1 false), !noalias !1828
  br label %bb18

bb18:                                             ; preds = %bb2, %start, %bb16
  ret void
}

; core::slice::sort::stable::merge::merge
; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable
define void @_ZN4core5slice4sort6stable5merge5merge17ha398925cfe361572E(ptr noalias noundef nonnull align 4 captures(address) %v.0, i64 noundef range(i64 0, 2305843009213693952) %v.1, ptr noalias noundef nonnull align 4 %scratch.0, i64 noundef range(i64 0, 2305843009213693952) %scratch.1, i64 noundef %0, ptr noalias noundef readnone align 8 captures(none) dereferenceable(8) %is_less) unnamed_addr #0 personality ptr @rust_eh_personality {
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1833)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1836)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1838)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1841)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1843)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1846)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1848)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1851)
  %_3.i.i.i.i.i = load i32, ptr %3, align 4, !alias.scope !1853, !noalias !1854, !noundef !32
  %_4.i.i.i.i.i = load i32, ptr %2, align 4, !alias.scope !1857, !noalias !1858, !noundef !32
  %_0.i.i = icmp slt i32 %_3.i.i.i.i.i, %_4.i.i.i.i.i
  %5 = tail call i32 @llvm.smax.i32(i32 %_3.i.i.i.i.i, i32 %_4.i.i.i.i.i)
  store i32 %5, ptr %4, align 4, !noalias !1859
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1860)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1863)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1865)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1868)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1870)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1873)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1875)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1878)
  %_3.i.i.i.i.i12 = load i32, ptr %right.sroa.0.010.i, align 4, !alias.scope !1880, !noalias !1881, !noundef !32
  %_4.i.i.i.i.i13 = load i32, ptr %_2059.i, align 4, !alias.scope !1884, !noalias !1885, !noundef !32
  %_0.i.i14 = icmp slt i32 %_3.i.i.i.i.i12, %_4.i.i.i.i.i13
  %consume_left.i = xor i1 %_0.i.i14, true
  %6 = tail call i32 @llvm.smin.i32(i32 %_3.i.i.i.i.i12, i32 %_4.i.i.i.i.i13)
  store i32 %6, ptr %_2511.i, align 4, !noalias !1886
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
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %merge_state.sroa.13.0, ptr align 4 %merge_state.sroa.0.0, i64 %9, i1 false), !noalias !1887
  br label %bb18

bb18:                                             ; preds = %bb2, %start, %bb16
  ret void
}

; core::slice::sort::stable::quicksort::stable_partition
; Function Attrs: nounwind nonlazybind memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable
define noundef i64 @_ZN4core5slice4sort6stable9quicksort16stable_partition17h186cdc7211da2e91E(ptr noalias noundef nonnull align 4 captures(address) %v.0, i64 noundef range(i64 0, 2305843009213693952) %v.1, ptr noalias noundef nonnull align 4 captures(none) %scratch.0, i64 noundef range(i64 0, 2305843009213693952) %scratch.1, i64 noundef %0, i1 noundef zeroext %pivot_goes_left, ptr noalias readnone align 8 captures(none) %is_less) unnamed_addr #4 {
start:
  %_8 = icmp samesign uge i64 %scratch.1, %v.1
  %.not = icmp ult i64 %0, %v.1
  %or.cond = and i1 %_8, %.not
  br i1 %or.cond, label %bb33, label %bb31, !prof !1892

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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1893)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1896)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1898)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1901)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1903)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1906)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1908)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1911)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1913)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1916)
  %_3.i.i.i.i.i = load i32, ptr %pivot, align 4, !alias.scope !1918, !noalias !1919, !noundef !32
  %_4.i.i.i.i.i = load i32, ptr %state.sroa.9.187, align 4, !alias.scope !1919, !noalias !1918, !noundef !32
  %_0.i.i = icmp sge i32 %_3.i.i.i.i.i, %_4.i.i.i.i.i
  %2 = getelementptr inbounds i8, ptr %state.sroa.43.188, i64 -4
  %dst_base.sroa.0.0.i = select i1 %_0.i.i, ptr %scratch.0, ptr %2
  %dst.i = getelementptr inbounds nuw i32, ptr %dst_base.sroa.0.0.i, i64 %state.sroa.27.186
  store i32 %_4.i.i.i.i.i, ptr %dst.i, align 4, !noalias !1920
  %_8.i = zext i1 %_0.i.i to i64
  %3 = add i64 %state.sroa.27.186, %_8.i
  %_9.i = getelementptr inbounds nuw i8, ptr %state.sroa.9.187, i64 4
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1923)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1926)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1928)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1931)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1933)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1936)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1938)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1941)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1943)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1946)
  %_3.i.i.i.i.i25 = load i32, ptr %pivot, align 4, !alias.scope !1948, !noalias !1949, !noundef !32
  %_4.i.i.i.i.i26 = load i32, ptr %_9.i, align 4, !alias.scope !1949, !noalias !1948, !noundef !32
  %_0.i.i27 = icmp sge i32 %_3.i.i.i.i.i25, %_4.i.i.i.i.i26
  %4 = getelementptr inbounds i8, ptr %state.sroa.43.188, i64 -8
  %dst_base.sroa.0.0.i29 = select i1 %_0.i.i27, ptr %scratch.0, ptr %4
  %dst.i31 = getelementptr inbounds nuw i32, ptr %dst_base.sroa.0.0.i29, i64 %3
  store i32 %_4.i.i.i.i.i26, ptr %dst.i31, align 4, !noalias !1950
  %_8.i33 = zext i1 %_0.i.i27 to i64
  %5 = add i64 %3, %_8.i33
  %_9.i34 = getelementptr inbounds nuw i8, ptr %state.sroa.9.187, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1953)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1956)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1958)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1961)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1963)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1966)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1968)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1971)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1973)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1976)
  %_3.i.i.i.i.i35 = load i32, ptr %pivot, align 4, !alias.scope !1978, !noalias !1979, !noundef !32
  %_4.i.i.i.i.i36 = load i32, ptr %_9.i34, align 4, !alias.scope !1979, !noalias !1978, !noundef !32
  %_0.i.i37 = icmp sge i32 %_3.i.i.i.i.i35, %_4.i.i.i.i.i36
  %6 = getelementptr inbounds i8, ptr %state.sroa.43.188, i64 -12
  %dst_base.sroa.0.0.i39 = select i1 %_0.i.i37, ptr %scratch.0, ptr %6
  %dst.i41 = getelementptr inbounds nuw i32, ptr %dst_base.sroa.0.0.i39, i64 %5
  store i32 %_4.i.i.i.i.i36, ptr %dst.i41, align 4, !noalias !1980
  %_8.i43 = zext i1 %_0.i.i37 to i64
  %7 = add i64 %5, %_8.i43
  %_9.i44 = getelementptr inbounds nuw i8, ptr %state.sroa.9.187, i64 12
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1983)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1986)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1988)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1991)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1993)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1996)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1998)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2001)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2003)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2006)
  %_3.i.i.i.i.i45 = load i32, ptr %pivot, align 4, !alias.scope !2008, !noalias !2009, !noundef !32
  %_4.i.i.i.i.i46 = load i32, ptr %_9.i44, align 4, !alias.scope !2009, !noalias !2008, !noundef !32
  %_0.i.i47 = icmp sge i32 %_3.i.i.i.i.i45, %_4.i.i.i.i.i46
  %8 = getelementptr inbounds i8, ptr %state.sroa.43.188, i64 -16
  %dst_base.sroa.0.0.i49 = select i1 %_0.i.i47, ptr %scratch.0, ptr %8
  %dst.i51 = getelementptr inbounds nuw i32, ptr %dst_base.sroa.0.0.i49, i64 %7
  store i32 %_4.i.i.i.i.i46, ptr %dst.i51, align 4, !noalias !2010
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2013)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2016)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2018)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2021)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2023)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2026)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2028)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2031)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2033)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2036)
  %_3.i.i.i.i.i55 = load i32, ptr %pivot, align 4, !alias.scope !2038, !noalias !2039, !noundef !32
  %_4.i.i.i.i.i56 = load i32, ptr %state.sroa.9.293, align 4, !alias.scope !2039, !noalias !2038, !noundef !32
  %_0.i.i57 = icmp sge i32 %_3.i.i.i.i.i55, %_4.i.i.i.i.i56
  %10 = getelementptr inbounds i8, ptr %state.sroa.43.294, i64 -4
  %dst_base.sroa.0.0.i59 = select i1 %_0.i.i57, ptr %scratch.0, ptr %10
  %dst.i61 = getelementptr inbounds nuw i32, ptr %dst_base.sroa.0.0.i59, i64 %state.sroa.27.292
  store i32 %_4.i.i.i.i.i56, ptr %dst.i61, align 4, !noalias !2040
  %_8.i63 = zext i1 %_0.i.i57 to i64
  %11 = add i64 %state.sroa.27.292, %_8.i63
  %_9.i64 = getelementptr inbounds nuw i8, ptr %state.sroa.9.293, i64 4
  %_47 = icmp ult ptr %_9.i64, %loop_end
  br i1 %_47, label %bb18, label %bb21

bb23:                                             ; preds = %bb21
  %12 = getelementptr inbounds i8, ptr %state.sroa.43.2.lcssa, i64 -4
  %dst_base.sroa.0.0.i66 = select i1 %pivot_goes_left, ptr %scratch.0, ptr %12
  %dst.i68 = getelementptr inbounds nuw i32, ptr %dst_base.sroa.0.0.i66, i64 %state.sroa.27.2.lcssa
  %13 = load i32, ptr %state.sroa.9.2.lcssa, align 4, !noalias !2043
  store i32 %13, ptr %dst.i68, align 4, !noalias !2043
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
  br i1 %epil.iter.cmp.not, label %bb30, label %bb42.epil, !llvm.loop !2046

bb30:                                             ; preds = %bb30.loopexit.unr-lcssa, %bb42.epil, %bb22
  ret i64 %state.sroa.27.2.lcssa
}

; core::slice::sort::stable::quicksort::stable_partition
; Function Attrs: nonlazybind uwtable
define noundef i64 @_ZN4core5slice4sort6stable9quicksort16stable_partition17h29d7ff4c78c44930E(ptr noalias noundef nonnull align 4 captures(address) %v.0, i64 noundef range(i64 0, 2305843009213693952) %v.1, ptr noalias noundef nonnull align 4 captures(none) %scratch.0, i64 noundef range(i64 0, 2305843009213693952) %scratch.1, i64 noundef %0, i1 noundef zeroext %pivot_goes_left, ptr noalias readnone align 8 captures(none) %is_less) unnamed_addr #1 {
start:
  %_8 = icmp samesign uge i64 %scratch.1, %v.1
  %.not = icmp ult i64 %0, %v.1
  %or.cond = and i1 %_8, %.not
  br i1 %or.cond, label %bb33, label %bb31, !prof !1892

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

bb6:                                              ; preds = %bb3, %"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17hfb79a77bb13a9fcfE.exit56"
  %state.sroa.43.1115 = phi ptr [ %11, %"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17hfb79a77bb13a9fcfE.exit56" ], [ %state.sroa.43.0, %bb3 ]
  %state.sroa.9.1114 = phi ptr [ %_9.i63, %"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17hfb79a77bb13a9fcfE.exit56" ], [ %state.sroa.9.0, %bb3 ]
  %state.sroa.27.1113 = phi i64 [ %13, %"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17hfb79a77bb13a9fcfE.exit56" ], [ %state.sroa.27.0, %bb3 ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2048)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2051)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2053)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2056)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2058)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2061)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2063)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2066)
  %_4.i.i.i.i = load float, ptr %pivot, align 4, !alias.scope !2068, !noalias !2069, !noundef !32
  %_5.i.i.i.i = load float, ptr %state.sroa.9.1114, align 4, !alias.scope !2069, !noalias !2068, !noundef !32
  %.not.i.i.i.i = fcmp uno float %_4.i.i.i.i, %_5.i.i.i.i
  br i1 %.not.i.i.i.i, label %bb2.i.i.i.i, label %"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17hfb79a77bb13a9fcfE.exit", !prof !35

bb2.i.i.i.i:                                      ; preds = %bb6
; call core::option::unwrap_failed
  tail call void @_ZN4core6option13unwrap_failed17hef2534b77b89c04fE(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_e233725058d574d75123974d8763f424) #24, !noalias !2070
  unreachable

"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17hfb79a77bb13a9fcfE.exit": ; preds = %bb6
  %_0.i.i = fcmp uge float %_4.i.i.i.i, %_5.i.i.i.i
  %2 = getelementptr inbounds i8, ptr %state.sroa.43.1115, i64 -4
  %dst_base.sroa.0.0.i = select i1 %_0.i.i, ptr %scratch.0, ptr %2
  %dst.i = getelementptr inbounds nuw float, ptr %dst_base.sroa.0.0.i, i64 %state.sroa.27.1113
  %3 = load i32, ptr %state.sroa.9.1114, align 4, !noalias !2071
  store i32 %3, ptr %dst.i, align 4, !noalias !2071
  %_9.i = getelementptr inbounds nuw i8, ptr %state.sroa.9.1114, i64 4
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2074)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2077)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2079)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2082)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2084)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2087)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2089)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2092)
  %_4.i.i.i.i25 = load float, ptr %pivot, align 4, !alias.scope !2094, !noalias !2095, !noundef !32
  %_5.i.i.i.i26 = load float, ptr %_9.i, align 4, !alias.scope !2095, !noalias !2094, !noundef !32
  %.not.i.i.i.i27 = fcmp uno float %_4.i.i.i.i25, %_5.i.i.i.i26
  br i1 %.not.i.i.i.i27, label %bb2.i.i.i.i29, label %"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17hfb79a77bb13a9fcfE.exit30", !prof !35

bb2.i.i.i.i29:                                    ; preds = %"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17hfb79a77bb13a9fcfE.exit"
; call core::option::unwrap_failed
  tail call void @_ZN4core6option13unwrap_failed17hef2534b77b89c04fE(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_e233725058d574d75123974d8763f424) #24, !noalias !2096
  unreachable

"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17hfb79a77bb13a9fcfE.exit30": ; preds = %"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17hfb79a77bb13a9fcfE.exit"
  %_8.i = zext i1 %_0.i.i to i64
  %4 = add i64 %state.sroa.27.1113, %_8.i
  %_0.i.i28 = fcmp uge float %_4.i.i.i.i25, %_5.i.i.i.i26
  %5 = getelementptr inbounds i8, ptr %state.sroa.43.1115, i64 -8
  %dst_base.sroa.0.0.i32 = select i1 %_0.i.i28, ptr %scratch.0, ptr %5
  %dst.i34 = getelementptr inbounds nuw float, ptr %dst_base.sroa.0.0.i32, i64 %4
  %6 = load i32, ptr %_9.i, align 4, !noalias !2097
  store i32 %6, ptr %dst.i34, align 4, !noalias !2097
  %_9.i37 = getelementptr inbounds nuw i8, ptr %state.sroa.9.1114, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2100)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2103)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2105)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2108)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2110)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2113)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2115)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2118)
  %_4.i.i.i.i38 = load float, ptr %pivot, align 4, !alias.scope !2120, !noalias !2121, !noundef !32
  %_5.i.i.i.i39 = load float, ptr %_9.i37, align 4, !alias.scope !2121, !noalias !2120, !noundef !32
  %.not.i.i.i.i40 = fcmp uno float %_4.i.i.i.i38, %_5.i.i.i.i39
  br i1 %.not.i.i.i.i40, label %bb2.i.i.i.i42, label %"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17hfb79a77bb13a9fcfE.exit43", !prof !35

bb2.i.i.i.i42:                                    ; preds = %"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17hfb79a77bb13a9fcfE.exit30"
; call core::option::unwrap_failed
  tail call void @_ZN4core6option13unwrap_failed17hef2534b77b89c04fE(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_e233725058d574d75123974d8763f424) #24, !noalias !2122
  unreachable

"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17hfb79a77bb13a9fcfE.exit43": ; preds = %"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17hfb79a77bb13a9fcfE.exit30"
  %_8.i36 = zext i1 %_0.i.i28 to i64
  %7 = add i64 %4, %_8.i36
  %_0.i.i41 = fcmp uge float %_4.i.i.i.i38, %_5.i.i.i.i39
  %8 = getelementptr inbounds i8, ptr %state.sroa.43.1115, i64 -12
  %dst_base.sroa.0.0.i45 = select i1 %_0.i.i41, ptr %scratch.0, ptr %8
  %dst.i47 = getelementptr inbounds nuw float, ptr %dst_base.sroa.0.0.i45, i64 %7
  %9 = load i32, ptr %_9.i37, align 4, !noalias !2123
  store i32 %9, ptr %dst.i47, align 4, !noalias !2123
  %_9.i50 = getelementptr inbounds nuw i8, ptr %state.sroa.9.1114, i64 12
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2126)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2129)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2131)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2134)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2136)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2139)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2141)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2144)
  %_4.i.i.i.i51 = load float, ptr %pivot, align 4, !alias.scope !2146, !noalias !2147, !noundef !32
  %_5.i.i.i.i52 = load float, ptr %_9.i50, align 4, !alias.scope !2147, !noalias !2146, !noundef !32
  %.not.i.i.i.i53 = fcmp uno float %_4.i.i.i.i51, %_5.i.i.i.i52
  br i1 %.not.i.i.i.i53, label %bb2.i.i.i.i55, label %"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17hfb79a77bb13a9fcfE.exit56", !prof !35

bb2.i.i.i.i55:                                    ; preds = %"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17hfb79a77bb13a9fcfE.exit43"
; call core::option::unwrap_failed
  tail call void @_ZN4core6option13unwrap_failed17hef2534b77b89c04fE(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_e233725058d574d75123974d8763f424) #24, !noalias !2148
  unreachable

"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17hfb79a77bb13a9fcfE.exit56": ; preds = %"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17hfb79a77bb13a9fcfE.exit43"
  %_8.i49 = zext i1 %_0.i.i41 to i64
  %10 = add i64 %7, %_8.i49
  %_0.i.i54 = fcmp uge float %_4.i.i.i.i51, %_5.i.i.i.i52
  %11 = getelementptr inbounds i8, ptr %state.sroa.43.1115, i64 -16
  %dst_base.sroa.0.0.i58 = select i1 %_0.i.i54, ptr %scratch.0, ptr %11
  %dst.i60 = getelementptr inbounds nuw float, ptr %dst_base.sroa.0.0.i58, i64 %10
  %12 = load i32, ptr %_9.i50, align 4, !noalias !2149
  store i32 %12, ptr %dst.i60, align 4, !noalias !2149
  %_8.i62 = zext i1 %_0.i.i54 to i64
  %13 = add i64 %10, %_8.i62
  %_9.i63 = getelementptr inbounds nuw i8, ptr %state.sroa.9.1114, i64 16
  %_19 = icmp ult ptr %_9.i63, %unroll_end
  br i1 %_19, label %bb6, label %bb16

bb16:                                             ; preds = %"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17hfb79a77bb13a9fcfE.exit56", %bb3
  %state.sroa.27.1.lcssa = phi i64 [ %state.sroa.27.0, %bb3 ], [ %13, %"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17hfb79a77bb13a9fcfE.exit56" ]
  %state.sroa.9.1.lcssa = phi ptr [ %state.sroa.9.0, %bb3 ], [ %_9.i63, %"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17hfb79a77bb13a9fcfE.exit56" ]
  %state.sroa.43.1.lcssa = phi ptr [ %state.sroa.43.0, %bb3 ], [ %11, %"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17hfb79a77bb13a9fcfE.exit56" ]
  %loop_end = getelementptr inbounds nuw float, ptr %v.0, i64 %pivot_pos.sroa.0.0
  %_47118 = icmp ult ptr %state.sroa.9.1.lcssa, %loop_end
  br i1 %_47118, label %bb18, label %bb21

bb21:                                             ; preds = %"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17hfb79a77bb13a9fcfE.exit69", %bb16
  %state.sroa.27.2.lcssa = phi i64 [ %state.sroa.27.1.lcssa, %bb16 ], [ %16, %"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17hfb79a77bb13a9fcfE.exit69" ]
  %state.sroa.9.2.lcssa = phi ptr [ %state.sroa.9.1.lcssa, %bb16 ], [ %_9.i76, %"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17hfb79a77bb13a9fcfE.exit69" ]
  %state.sroa.43.2.lcssa = phi ptr [ %state.sroa.43.1.lcssa, %bb16 ], [ %14, %"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17hfb79a77bb13a9fcfE.exit69" ]
  %_55 = icmp eq i64 %pivot_pos.sroa.0.0, %v.1
  br i1 %_55, label %bb22, label %bb23

bb18:                                             ; preds = %bb16, %"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17hfb79a77bb13a9fcfE.exit69"
  %state.sroa.43.2121 = phi ptr [ %14, %"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17hfb79a77bb13a9fcfE.exit69" ], [ %state.sroa.43.1.lcssa, %bb16 ]
  %state.sroa.9.2120 = phi ptr [ %_9.i76, %"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17hfb79a77bb13a9fcfE.exit69" ], [ %state.sroa.9.1.lcssa, %bb16 ]
  %state.sroa.27.2119 = phi i64 [ %16, %"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17hfb79a77bb13a9fcfE.exit69" ], [ %state.sroa.27.1.lcssa, %bb16 ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2152)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2155)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2157)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2160)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2162)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2165)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2167)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2170)
  %_4.i.i.i.i64 = load float, ptr %pivot, align 4, !alias.scope !2172, !noalias !2173, !noundef !32
  %_5.i.i.i.i65 = load float, ptr %state.sroa.9.2120, align 4, !alias.scope !2173, !noalias !2172, !noundef !32
  %.not.i.i.i.i66 = fcmp uno float %_4.i.i.i.i64, %_5.i.i.i.i65
  br i1 %.not.i.i.i.i66, label %bb2.i.i.i.i68, label %"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17hfb79a77bb13a9fcfE.exit69", !prof !35

bb2.i.i.i.i68:                                    ; preds = %bb18
; call core::option::unwrap_failed
  tail call void @_ZN4core6option13unwrap_failed17hef2534b77b89c04fE(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_e233725058d574d75123974d8763f424) #24, !noalias !2174
  unreachable

"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17hfb79a77bb13a9fcfE.exit69": ; preds = %bb18
  %_0.i.i67 = fcmp uge float %_4.i.i.i.i64, %_5.i.i.i.i65
  %14 = getelementptr inbounds i8, ptr %state.sroa.43.2121, i64 -4
  %dst_base.sroa.0.0.i71 = select i1 %_0.i.i67, ptr %scratch.0, ptr %14
  %dst.i73 = getelementptr inbounds nuw float, ptr %dst_base.sroa.0.0.i71, i64 %state.sroa.27.2119
  %15 = load i32, ptr %state.sroa.9.2120, align 4, !noalias !2175
  store i32 %15, ptr %dst.i73, align 4, !noalias !2175
  %_8.i75 = zext i1 %_0.i.i67 to i64
  %16 = add i64 %state.sroa.27.2119, %_8.i75
  %_9.i76 = getelementptr inbounds nuw i8, ptr %state.sroa.9.2120, i64 4
  %_47 = icmp ult ptr %_9.i76, %loop_end
  br i1 %_47, label %bb18, label %bb21

bb23:                                             ; preds = %bb21
  %17 = getelementptr inbounds i8, ptr %state.sroa.43.2.lcssa, i64 -4
  %dst_base.sroa.0.0.i78 = select i1 %pivot_goes_left, ptr %scratch.0, ptr %17
  %dst.i80 = getelementptr inbounds nuw float, ptr %dst_base.sroa.0.0.i78, i64 %state.sroa.27.2.lcssa
  %18 = load i32, ptr %state.sroa.9.2.lcssa, align 4, !noalias !2178
  store i32 %18, ptr %dst.i80, align 4, !noalias !2178
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
  br i1 %epil.iter.cmp.not, label %bb30, label %bb42.epil, !llvm.loop !2181

bb30:                                             ; preds = %bb30.loopexit.unr-lcssa, %bb42.epil, %bb22
  ret i64 %state.sroa.27.2.lcssa
}

; core::slice::sort::stable::quicksort::stable_partition
; Function Attrs: nonlazybind uwtable
define noundef i64 @_ZN4core5slice4sort6stable9quicksort16stable_partition17h2b7a505a3fcf0f5eE(ptr noalias noundef nonnull align 4 captures(address) %v.0, i64 noundef range(i64 0, 2305843009213693952) %v.1, ptr noalias noundef nonnull align 4 captures(none) %scratch.0, i64 noundef range(i64 0, 2305843009213693952) %scratch.1, i64 noundef %0, i1 noundef zeroext %pivot_goes_left, ptr noalias readnone align 8 captures(none) %is_less) unnamed_addr #1 {
start:
  %_8 = icmp samesign uge i64 %scratch.1, %v.1
  %.not = icmp ult i64 %0, %v.1
  %or.cond = and i1 %_8, %.not
  br i1 %or.cond, label %bb33, label %bb31, !prof !1892

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

bb6:                                              ; preds = %bb3, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h47d2093944d38971E.exit56"
  %state.sroa.43.1115 = phi ptr [ %11, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h47d2093944d38971E.exit56" ], [ %state.sroa.43.0, %bb3 ]
  %state.sroa.9.1114 = phi ptr [ %_9.i63, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h47d2093944d38971E.exit56" ], [ %state.sroa.9.0, %bb3 ]
  %state.sroa.27.1113 = phi i64 [ %13, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h47d2093944d38971E.exit56" ], [ %state.sroa.27.0, %bb3 ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2182)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2185)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2187)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2190)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2192)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2195)
  %_4.i.i.i = load float, ptr %state.sroa.9.1114, align 4, !alias.scope !2197, !noalias !2198, !noundef !32
  %_5.i.i.i = load float, ptr %pivot, align 4, !alias.scope !2198, !noalias !2197, !noundef !32
  %.not.i.i.i = fcmp uno float %_4.i.i.i, %_5.i.i.i
  br i1 %.not.i.i.i, label %bb2.i.i.i, label %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h47d2093944d38971E.exit", !prof !35

bb2.i.i.i:                                        ; preds = %bb6
; call core::option::unwrap_failed
  tail call void @_ZN4core6option13unwrap_failed17hef2534b77b89c04fE(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_e233725058d574d75123974d8763f424) #24, !noalias !2199
  unreachable

"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h47d2093944d38971E.exit": ; preds = %bb6
  %_0.i = fcmp olt float %_4.i.i.i, %_5.i.i.i
  %2 = getelementptr inbounds i8, ptr %state.sroa.43.1115, i64 -4
  %dst_base.sroa.0.0.i = select i1 %_0.i, ptr %scratch.0, ptr %2
  %dst.i = getelementptr inbounds nuw float, ptr %dst_base.sroa.0.0.i, i64 %state.sroa.27.1113
  %3 = load i32, ptr %state.sroa.9.1114, align 4, !noalias !2200
  store i32 %3, ptr %dst.i, align 4, !noalias !2200
  %_9.i = getelementptr inbounds nuw i8, ptr %state.sroa.9.1114, i64 4
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2203)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2206)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2208)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2211)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2213)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2216)
  %_4.i.i.i25 = load float, ptr %_9.i, align 4, !alias.scope !2218, !noalias !2219, !noundef !32
  %_5.i.i.i26 = load float, ptr %pivot, align 4, !alias.scope !2219, !noalias !2218, !noundef !32
  %.not.i.i.i27 = fcmp uno float %_4.i.i.i25, %_5.i.i.i26
  br i1 %.not.i.i.i27, label %bb2.i.i.i29, label %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h47d2093944d38971E.exit30", !prof !35

bb2.i.i.i29:                                      ; preds = %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h47d2093944d38971E.exit"
; call core::option::unwrap_failed
  tail call void @_ZN4core6option13unwrap_failed17hef2534b77b89c04fE(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_e233725058d574d75123974d8763f424) #24, !noalias !2220
  unreachable

"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h47d2093944d38971E.exit30": ; preds = %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h47d2093944d38971E.exit"
  %_8.i = zext i1 %_0.i to i64
  %4 = add i64 %state.sroa.27.1113, %_8.i
  %_0.i28 = fcmp olt float %_4.i.i.i25, %_5.i.i.i26
  %5 = getelementptr inbounds i8, ptr %state.sroa.43.1115, i64 -8
  %dst_base.sroa.0.0.i32 = select i1 %_0.i28, ptr %scratch.0, ptr %5
  %dst.i34 = getelementptr inbounds nuw float, ptr %dst_base.sroa.0.0.i32, i64 %4
  %6 = load i32, ptr %_9.i, align 4, !noalias !2221
  store i32 %6, ptr %dst.i34, align 4, !noalias !2221
  %_9.i37 = getelementptr inbounds nuw i8, ptr %state.sroa.9.1114, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2224)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2227)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2229)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2232)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2234)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2237)
  %_4.i.i.i38 = load float, ptr %_9.i37, align 4, !alias.scope !2239, !noalias !2240, !noundef !32
  %_5.i.i.i39 = load float, ptr %pivot, align 4, !alias.scope !2240, !noalias !2239, !noundef !32
  %.not.i.i.i40 = fcmp uno float %_4.i.i.i38, %_5.i.i.i39
  br i1 %.not.i.i.i40, label %bb2.i.i.i42, label %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h47d2093944d38971E.exit43", !prof !35

bb2.i.i.i42:                                      ; preds = %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h47d2093944d38971E.exit30"
; call core::option::unwrap_failed
  tail call void @_ZN4core6option13unwrap_failed17hef2534b77b89c04fE(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_e233725058d574d75123974d8763f424) #24, !noalias !2241
  unreachable

"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h47d2093944d38971E.exit43": ; preds = %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h47d2093944d38971E.exit30"
  %_8.i36 = zext i1 %_0.i28 to i64
  %7 = add i64 %4, %_8.i36
  %_0.i41 = fcmp olt float %_4.i.i.i38, %_5.i.i.i39
  %8 = getelementptr inbounds i8, ptr %state.sroa.43.1115, i64 -12
  %dst_base.sroa.0.0.i45 = select i1 %_0.i41, ptr %scratch.0, ptr %8
  %dst.i47 = getelementptr inbounds nuw float, ptr %dst_base.sroa.0.0.i45, i64 %7
  %9 = load i32, ptr %_9.i37, align 4, !noalias !2242
  store i32 %9, ptr %dst.i47, align 4, !noalias !2242
  %_9.i50 = getelementptr inbounds nuw i8, ptr %state.sroa.9.1114, i64 12
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2245)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2248)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2250)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2253)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2255)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2258)
  %_4.i.i.i51 = load float, ptr %_9.i50, align 4, !alias.scope !2260, !noalias !2261, !noundef !32
  %_5.i.i.i52 = load float, ptr %pivot, align 4, !alias.scope !2261, !noalias !2260, !noundef !32
  %.not.i.i.i53 = fcmp uno float %_4.i.i.i51, %_5.i.i.i52
  br i1 %.not.i.i.i53, label %bb2.i.i.i55, label %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h47d2093944d38971E.exit56", !prof !35

bb2.i.i.i55:                                      ; preds = %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h47d2093944d38971E.exit43"
; call core::option::unwrap_failed
  tail call void @_ZN4core6option13unwrap_failed17hef2534b77b89c04fE(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_e233725058d574d75123974d8763f424) #24, !noalias !2262
  unreachable

"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h47d2093944d38971E.exit56": ; preds = %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h47d2093944d38971E.exit43"
  %_8.i49 = zext i1 %_0.i41 to i64
  %10 = add i64 %7, %_8.i49
  %_0.i54 = fcmp olt float %_4.i.i.i51, %_5.i.i.i52
  %11 = getelementptr inbounds i8, ptr %state.sroa.43.1115, i64 -16
  %dst_base.sroa.0.0.i58 = select i1 %_0.i54, ptr %scratch.0, ptr %11
  %dst.i60 = getelementptr inbounds nuw float, ptr %dst_base.sroa.0.0.i58, i64 %10
  %12 = load i32, ptr %_9.i50, align 4, !noalias !2263
  store i32 %12, ptr %dst.i60, align 4, !noalias !2263
  %_8.i62 = zext i1 %_0.i54 to i64
  %13 = add i64 %10, %_8.i62
  %_9.i63 = getelementptr inbounds nuw i8, ptr %state.sroa.9.1114, i64 16
  %_19 = icmp ult ptr %_9.i63, %unroll_end
  br i1 %_19, label %bb6, label %bb16

bb16:                                             ; preds = %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h47d2093944d38971E.exit56", %bb3
  %state.sroa.27.1.lcssa = phi i64 [ %state.sroa.27.0, %bb3 ], [ %13, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h47d2093944d38971E.exit56" ]
  %state.sroa.9.1.lcssa = phi ptr [ %state.sroa.9.0, %bb3 ], [ %_9.i63, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h47d2093944d38971E.exit56" ]
  %state.sroa.43.1.lcssa = phi ptr [ %state.sroa.43.0, %bb3 ], [ %11, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h47d2093944d38971E.exit56" ]
  %loop_end = getelementptr inbounds nuw float, ptr %v.0, i64 %pivot_pos.sroa.0.0
  %_47118 = icmp ult ptr %state.sroa.9.1.lcssa, %loop_end
  br i1 %_47118, label %bb18, label %bb21

bb21:                                             ; preds = %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h47d2093944d38971E.exit69", %bb16
  %state.sroa.27.2.lcssa = phi i64 [ %state.sroa.27.1.lcssa, %bb16 ], [ %16, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h47d2093944d38971E.exit69" ]
  %state.sroa.9.2.lcssa = phi ptr [ %state.sroa.9.1.lcssa, %bb16 ], [ %_9.i76, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h47d2093944d38971E.exit69" ]
  %state.sroa.43.2.lcssa = phi ptr [ %state.sroa.43.1.lcssa, %bb16 ], [ %14, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h47d2093944d38971E.exit69" ]
  %_55 = icmp eq i64 %pivot_pos.sroa.0.0, %v.1
  br i1 %_55, label %bb22, label %bb23

bb18:                                             ; preds = %bb16, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h47d2093944d38971E.exit69"
  %state.sroa.43.2121 = phi ptr [ %14, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h47d2093944d38971E.exit69" ], [ %state.sroa.43.1.lcssa, %bb16 ]
  %state.sroa.9.2120 = phi ptr [ %_9.i76, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h47d2093944d38971E.exit69" ], [ %state.sroa.9.1.lcssa, %bb16 ]
  %state.sroa.27.2119 = phi i64 [ %16, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h47d2093944d38971E.exit69" ], [ %state.sroa.27.1.lcssa, %bb16 ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2266)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2269)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2271)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2274)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2276)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2279)
  %_4.i.i.i64 = load float, ptr %state.sroa.9.2120, align 4, !alias.scope !2281, !noalias !2282, !noundef !32
  %_5.i.i.i65 = load float, ptr %pivot, align 4, !alias.scope !2282, !noalias !2281, !noundef !32
  %.not.i.i.i66 = fcmp uno float %_4.i.i.i64, %_5.i.i.i65
  br i1 %.not.i.i.i66, label %bb2.i.i.i68, label %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h47d2093944d38971E.exit69", !prof !35

bb2.i.i.i68:                                      ; preds = %bb18
; call core::option::unwrap_failed
  tail call void @_ZN4core6option13unwrap_failed17hef2534b77b89c04fE(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_e233725058d574d75123974d8763f424) #24, !noalias !2283
  unreachable

"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h47d2093944d38971E.exit69": ; preds = %bb18
  %_0.i67 = fcmp olt float %_4.i.i.i64, %_5.i.i.i65
  %14 = getelementptr inbounds i8, ptr %state.sroa.43.2121, i64 -4
  %dst_base.sroa.0.0.i71 = select i1 %_0.i67, ptr %scratch.0, ptr %14
  %dst.i73 = getelementptr inbounds nuw float, ptr %dst_base.sroa.0.0.i71, i64 %state.sroa.27.2119
  %15 = load i32, ptr %state.sroa.9.2120, align 4, !noalias !2284
  store i32 %15, ptr %dst.i73, align 4, !noalias !2284
  %_8.i75 = zext i1 %_0.i67 to i64
  %16 = add i64 %state.sroa.27.2119, %_8.i75
  %_9.i76 = getelementptr inbounds nuw i8, ptr %state.sroa.9.2120, i64 4
  %_47 = icmp ult ptr %_9.i76, %loop_end
  br i1 %_47, label %bb18, label %bb21

bb23:                                             ; preds = %bb21
  %17 = getelementptr inbounds i8, ptr %state.sroa.43.2.lcssa, i64 -4
  %dst_base.sroa.0.0.i78 = select i1 %pivot_goes_left, ptr %scratch.0, ptr %17
  %dst.i80 = getelementptr inbounds nuw float, ptr %dst_base.sroa.0.0.i78, i64 %state.sroa.27.2.lcssa
  %18 = load i32, ptr %state.sroa.9.2.lcssa, align 4, !noalias !2287
  store i32 %18, ptr %dst.i80, align 4, !noalias !2287
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
  br i1 %epil.iter.cmp.not, label %bb30, label %bb42.epil, !llvm.loop !2290

bb30:                                             ; preds = %bb30.loopexit.unr-lcssa, %bb42.epil, %bb22
  ret i64 %state.sroa.27.2.lcssa
}

; core::slice::sort::stable::quicksort::stable_partition
; Function Attrs: nounwind nonlazybind memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable
define noundef i64 @_ZN4core5slice4sort6stable9quicksort16stable_partition17h42f550482c7f392cE(ptr noalias noundef nonnull align 4 captures(address) %v.0, i64 noundef range(i64 0, 2305843009213693952) %v.1, ptr noalias noundef nonnull align 4 captures(none) %scratch.0, i64 noundef range(i64 0, 2305843009213693952) %scratch.1, i64 noundef %0, i1 noundef zeroext %pivot_goes_left, ptr noalias readnone align 8 captures(none) %is_less) unnamed_addr #4 {
start:
  %_8 = icmp samesign uge i64 %scratch.1, %v.1
  %.not = icmp ult i64 %0, %v.1
  %or.cond = and i1 %_8, %.not
  br i1 %or.cond, label %bb33, label %bb31, !prof !1892

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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2291)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2294)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2296)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2299)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2301)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2304)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2306)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2309)
  %_3.i.i.i.i = load i32, ptr %state.sroa.9.187, align 4, !alias.scope !2311, !noalias !2312, !noundef !32
  %_4.i.i.i.i = load i32, ptr %pivot, align 4, !alias.scope !2312, !noalias !2311, !noundef !32
  %_0.i = icmp slt i32 %_3.i.i.i.i, %_4.i.i.i.i
  %2 = getelementptr inbounds i8, ptr %state.sroa.43.188, i64 -4
  %dst_base.sroa.0.0.i = select i1 %_0.i, ptr %scratch.0, ptr %2
  %dst.i = getelementptr inbounds nuw i32, ptr %dst_base.sroa.0.0.i, i64 %state.sroa.27.186
  store i32 %_3.i.i.i.i, ptr %dst.i, align 4, !noalias !2313
  %_8.i = zext i1 %_0.i to i64
  %3 = add i64 %state.sroa.27.186, %_8.i
  %_9.i = getelementptr inbounds nuw i8, ptr %state.sroa.9.187, i64 4
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2316)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2319)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2321)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2324)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2326)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2329)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2331)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2334)
  %_3.i.i.i.i25 = load i32, ptr %_9.i, align 4, !alias.scope !2336, !noalias !2337, !noundef !32
  %_4.i.i.i.i26 = load i32, ptr %pivot, align 4, !alias.scope !2337, !noalias !2336, !noundef !32
  %_0.i27 = icmp slt i32 %_3.i.i.i.i25, %_4.i.i.i.i26
  %4 = getelementptr inbounds i8, ptr %state.sroa.43.188, i64 -8
  %dst_base.sroa.0.0.i29 = select i1 %_0.i27, ptr %scratch.0, ptr %4
  %dst.i31 = getelementptr inbounds nuw i32, ptr %dst_base.sroa.0.0.i29, i64 %3
  store i32 %_3.i.i.i.i25, ptr %dst.i31, align 4, !noalias !2338
  %_8.i33 = zext i1 %_0.i27 to i64
  %5 = add i64 %3, %_8.i33
  %_9.i34 = getelementptr inbounds nuw i8, ptr %state.sroa.9.187, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2341)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2344)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2346)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2349)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2351)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2354)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2356)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2359)
  %_3.i.i.i.i35 = load i32, ptr %_9.i34, align 4, !alias.scope !2361, !noalias !2362, !noundef !32
  %_4.i.i.i.i36 = load i32, ptr %pivot, align 4, !alias.scope !2362, !noalias !2361, !noundef !32
  %_0.i37 = icmp slt i32 %_3.i.i.i.i35, %_4.i.i.i.i36
  %6 = getelementptr inbounds i8, ptr %state.sroa.43.188, i64 -12
  %dst_base.sroa.0.0.i39 = select i1 %_0.i37, ptr %scratch.0, ptr %6
  %dst.i41 = getelementptr inbounds nuw i32, ptr %dst_base.sroa.0.0.i39, i64 %5
  store i32 %_3.i.i.i.i35, ptr %dst.i41, align 4, !noalias !2363
  %_8.i43 = zext i1 %_0.i37 to i64
  %7 = add i64 %5, %_8.i43
  %_9.i44 = getelementptr inbounds nuw i8, ptr %state.sroa.9.187, i64 12
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2366)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2369)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2371)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2374)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2376)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2379)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2381)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2384)
  %_3.i.i.i.i45 = load i32, ptr %_9.i44, align 4, !alias.scope !2386, !noalias !2387, !noundef !32
  %_4.i.i.i.i46 = load i32, ptr %pivot, align 4, !alias.scope !2387, !noalias !2386, !noundef !32
  %_0.i47 = icmp slt i32 %_3.i.i.i.i45, %_4.i.i.i.i46
  %8 = getelementptr inbounds i8, ptr %state.sroa.43.188, i64 -16
  %dst_base.sroa.0.0.i49 = select i1 %_0.i47, ptr %scratch.0, ptr %8
  %dst.i51 = getelementptr inbounds nuw i32, ptr %dst_base.sroa.0.0.i49, i64 %7
  store i32 %_3.i.i.i.i45, ptr %dst.i51, align 4, !noalias !2388
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2391)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2394)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2396)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2399)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2401)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2404)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2406)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2409)
  %_3.i.i.i.i55 = load i32, ptr %state.sroa.9.293, align 4, !alias.scope !2411, !noalias !2412, !noundef !32
  %_4.i.i.i.i56 = load i32, ptr %pivot, align 4, !alias.scope !2412, !noalias !2411, !noundef !32
  %_0.i57 = icmp slt i32 %_3.i.i.i.i55, %_4.i.i.i.i56
  %10 = getelementptr inbounds i8, ptr %state.sroa.43.294, i64 -4
  %dst_base.sroa.0.0.i59 = select i1 %_0.i57, ptr %scratch.0, ptr %10
  %dst.i61 = getelementptr inbounds nuw i32, ptr %dst_base.sroa.0.0.i59, i64 %state.sroa.27.292
  store i32 %_3.i.i.i.i55, ptr %dst.i61, align 4, !noalias !2413
  %_8.i63 = zext i1 %_0.i57 to i64
  %11 = add i64 %state.sroa.27.292, %_8.i63
  %_9.i64 = getelementptr inbounds nuw i8, ptr %state.sroa.9.293, i64 4
  %_47 = icmp ult ptr %_9.i64, %loop_end
  br i1 %_47, label %bb18, label %bb21

bb23:                                             ; preds = %bb21
  %12 = getelementptr inbounds i8, ptr %state.sroa.43.2.lcssa, i64 -4
  %dst_base.sroa.0.0.i66 = select i1 %pivot_goes_left, ptr %scratch.0, ptr %12
  %dst.i68 = getelementptr inbounds nuw i32, ptr %dst_base.sroa.0.0.i66, i64 %state.sroa.27.2.lcssa
  %13 = load i32, ptr %state.sroa.9.2.lcssa, align 4, !noalias !2416
  store i32 %13, ptr %dst.i68, align 4, !noalias !2416
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
  br i1 %epil.iter.cmp.not, label %bb30, label %bb42.epil, !llvm.loop !2419

bb30:                                             ; preds = %bb30.loopexit.unr-lcssa, %bb42.epil, %bb22
  ret i64 %state.sroa.27.2.lcssa
}

; core::slice::sort::stable::quicksort::PartitionState<T>::partition_one
; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define noundef ptr @"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17he28618422af7c6b6E"(ptr noalias noundef align 8 captures(none) dereferenceable(32) %self, i1 noundef zeroext %towards_left) unnamed_addr #9 {
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
define noundef ptr @"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17he2df93c6488aa0ddE"(ptr noalias noundef align 8 captures(none) dereferenceable(32) %self, i1 noundef zeroext %towards_left) unnamed_addr #9 {
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
define void @_ZN4core5slice4sort6stable9quicksort9quicksort17h6c1ff9bca1b551deE(ptr noalias noundef nonnull align 4 %0, i64 noundef range(i64 0, 2305843009213693952) %1, ptr noalias noundef nonnull align 4 %scratch.0, i64 noundef range(i64 0, 2305843009213693952) %scratch.1, i32 noundef %2, ptr noalias noundef readonly align 4 captures(address) dereferenceable_or_null(4) %3, ptr noalias noundef align 8 dereferenceable(8) %is_less) unnamed_addr #5 {
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

bb5:                                              ; preds = %bb5.lr.ph, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$12split_at_mut17hd9cc43366b0a69c4E.exit"
  %v.sroa.16.047 = phi i64 [ %v.sroa.16.0.ph54, %bb5.lr.ph ], [ %left_partition_len.sroa.0.0, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$12split_at_mut17hd9cc43366b0a69c4E.exit" ]
  %limit.sroa.0.046 = phi i32 [ %limit.sroa.0.0.ph53, %bb5.lr.ph ], [ %4, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$12split_at_mut17hd9cc43366b0a69c4E.exit" ]
  %_11 = icmp eq i32 %limit.sroa.0.046, 0
  br i1 %_11, label %bb6, label %bb7

bb3:                                              ; preds = %bb28, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$12split_at_mut17hd9cc43366b0a69c4E.exit", %start
  %v.sroa.0.0.ph.lcssa44 = phi ptr [ %0, %start ], [ %v.sroa.0.0.ph55, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$12split_at_mut17hd9cc43366b0a69c4E.exit" ], [ %_54, %bb28 ]
  %v.sroa.16.0.lcssa = phi i64 [ %1, %start ], [ %left_partition_len.sroa.0.0, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$12split_at_mut17hd9cc43366b0a69c4E.exit" ], [ %new_len, %bb28 ]
; call core::slice::sort::shared::smallsort::small_sort_general_with_scratch
  call void @_ZN4core5slice4sort6shared9smallsort31small_sort_general_with_scratch17hbdf9b2d478b5598eE(ptr noalias noundef nonnull align 4 %v.sroa.0.0.ph.lcssa44, i64 noundef range(i64 0, 33) %v.sroa.16.0.lcssa, ptr noalias noundef nonnull align 4 %scratch.0, i64 noundef range(i64 0, 2305843009213693952) %scratch.1, ptr noalias nonnull align 8 poison)
  br label %bb22

bb7:                                              ; preds = %bb5
  %4 = add i32 %limit.sroa.0.046, -1
  call void @llvm.experimental.noalias.scope.decl(metadata !2420)
  %len_div_84.i = lshr i64 %v.sroa.16.047, 3
  %b.idx.i = shl nuw nsw i64 %len_div_84.i, 4
  %b.i = getelementptr inbounds nuw i8, ptr %v.sroa.0.0.ph55, i64 %b.idx.i
  %c.idx.i = mul nuw nsw i64 %len_div_84.i, 28
  %c.i = getelementptr inbounds nuw i8, ptr %v.sroa.0.0.ph55, i64 %c.idx.i
  %_12.i = icmp samesign ult i64 %v.sroa.16.047, 64
  br i1 %_12.i, label %bb3.i, label %bb5.i

bb5.i:                                            ; preds = %bb7
; call core::slice::sort::shared::pivot::median3_rec
  %self.i = call noundef ptr @_ZN4core5slice4sort6shared5pivot11median3_rec17h6170ce92e8f2efbeE(ptr noundef nonnull readonly align 4 %v.sroa.0.0.ph55, ptr noundef nonnull readonly %b.i, ptr noundef nonnull readonly %c.i, i64 noundef %len_div_84.i, ptr noalias noundef nonnull align 8 dereferenceable(8) %is_less)
  br label %_ZN4core5slice4sort6shared5pivot12choose_pivot17h30130fdc5e5525a2E.exit

bb3.i:                                            ; preds = %bb7
  call void @llvm.experimental.noalias.scope.decl(metadata !2423)
  call void @llvm.experimental.noalias.scope.decl(metadata !2426)
  call void @llvm.experimental.noalias.scope.decl(metadata !2428), !noalias !2431
  call void @llvm.experimental.noalias.scope.decl(metadata !2434), !noalias !2431
  call void @llvm.experimental.noalias.scope.decl(metadata !2436), !noalias !2431
  call void @llvm.experimental.noalias.scope.decl(metadata !2439), !noalias !2431
  %_4.i.i.i.i = load float, ptr %v.sroa.0.0.ph55, align 4, !alias.scope !2441, !noalias !2442, !noundef !32
  %_5.i.i.i.i = load float, ptr %b.i, align 4, !alias.scope !2444, !noalias !2445, !noundef !32
  %.not.i.i.i.i = fcmp uno float %_4.i.i.i.i, %_5.i.i.i.i
  br i1 %.not.i.i.i.i, label %bb2.i.i.i.i, label %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h47d2093944d38971E.exit.i", !prof !35

bb2.i.i.i.i:                                      ; preds = %bb3.i
; call core::option::unwrap_failed
  call void @_ZN4core6option13unwrap_failed17hef2534b77b89c04fE(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_e233725058d574d75123974d8763f424) #24, !noalias !2446
  unreachable

"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h47d2093944d38971E.exit.i": ; preds = %bb3.i
  %_0.i.i = fcmp olt float %_4.i.i.i.i, %_5.i.i.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !2447)
  call void @llvm.experimental.noalias.scope.decl(metadata !2450)
  %_5.i.i.i6.i = load float, ptr %c.i, align 4, !alias.scope !2453, !noalias !2456, !noundef !32
  %.not.i.i.i7.i = fcmp uno float %_4.i.i.i.i, %_5.i.i.i6.i
  br i1 %.not.i.i.i7.i, label %bb2.i.i.i9.i, label %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h47d2093944d38971E.exit10.i", !prof !35

bb2.i.i.i9.i:                                     ; preds = %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h47d2093944d38971E.exit.i"
; call core::option::unwrap_failed
  call void @_ZN4core6option13unwrap_failed17hef2534b77b89c04fE(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_e233725058d574d75123974d8763f424) #24, !noalias !2460
  unreachable

"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h47d2093944d38971E.exit10.i": ; preds = %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h47d2093944d38971E.exit.i"
  %_0.i8.i = fcmp olt float %_4.i.i.i.i, %_5.i.i.i6.i
  %5 = xor i1 %_0.i.i, %_0.i8.i
  br i1 %5, label %_ZN4core5slice4sort6shared5pivot12choose_pivot17h30130fdc5e5525a2E.exit, label %bb3.i.i

bb3.i.i:                                          ; preds = %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h47d2093944d38971E.exit10.i"
  %.not.i.i.i13.i = fcmp uno float %_5.i.i.i.i, %_5.i.i.i6.i
  br i1 %.not.i.i.i13.i, label %bb2.i.i.i15.i, label %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h47d2093944d38971E.exit16.i", !prof !35

bb2.i.i.i15.i:                                    ; preds = %bb3.i.i
; call core::option::unwrap_failed
  call void @_ZN4core6option13unwrap_failed17hef2534b77b89c04fE(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_e233725058d574d75123974d8763f424) #24, !noalias !2461
  unreachable

"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h47d2093944d38971E.exit16.i": ; preds = %bb3.i.i
  %_0.i14.i = fcmp olt float %_5.i.i.i.i, %_5.i.i.i6.i
  %_12.i.i = xor i1 %_0.i.i, %_0.i14.i
  %c.b.i.i = select i1 %_12.i.i, ptr %c.i, ptr %b.i
  br label %_ZN4core5slice4sort6shared5pivot12choose_pivot17h30130fdc5e5525a2E.exit

_ZN4core5slice4sort6shared5pivot12choose_pivot17h30130fdc5e5525a2E.exit: ; preds = %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h47d2093944d38971E.exit10.i", %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h47d2093944d38971E.exit16.i", %bb5.i
  %self.i.sink = phi ptr [ %self.i, %bb5.i ], [ %v.sroa.0.0.ph55, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h47d2093944d38971E.exit10.i" ], [ %c.b.i.i, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h47d2093944d38971E.exit16.i" ]
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
  call void @_ZN4core5slice4sort6stable5drift4sort17h061b1c9959168dd3E(ptr noalias noundef nonnull align 4 %v.sroa.0.0.ph55, i64 noundef %v.sroa.16.047, ptr noalias noundef nonnull align 4 %scratch.0, i64 noundef %scratch.1, i1 noundef zeroext true, ptr noalias noundef align 8 dereferenceable(8) %is_less)
  br label %bb22

bb12:                                             ; preds = %_ZN4core5slice4sort6shared5pivot12choose_pivot17h30130fdc5e5525a2E.exit
  call void @llvm.experimental.noalias.scope.decl(metadata !2468)
  call void @llvm.experimental.noalias.scope.decl(metadata !2471)
  %_4.i.i.i = load float, ptr %left_ancestor_pivot.sroa.0.0.ph52, align 4, !alias.scope !2474, !noalias !2477, !noundef !32
  %.not.i.i.i = fcmp uno float %_4.i.i.i, %value
  br i1 %.not.i.i.i, label %bb2.i.i.i, label %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h47d2093944d38971E.exit", !prof !35

bb2.i.i.i:                                        ; preds = %bb12
; call core::option::unwrap_failed
  call void @_ZN4core6option13unwrap_failed17hef2534b77b89c04fE(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_e233725058d574d75123974d8763f424) #24, !noalias !2481
  unreachable

"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h47d2093944d38971E.exit": ; preds = %bb12
  %_0.i = fcmp uge float %_4.i.i.i, %value
  br i1 %_0.i, label %bb16, label %bb14

bb14:                                             ; preds = %_ZN4core5slice4sort6shared5pivot12choose_pivot17h30130fdc5e5525a2E.exit, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h47d2093944d38971E.exit"
; call core::slice::sort::stable::quicksort::stable_partition
  %8 = call noundef i64 @_ZN4core5slice4sort6stable9quicksort16stable_partition17h2b7a505a3fcf0f5eE(ptr noalias noundef nonnull align 4 %v.sroa.0.0.ph55, i64 noundef %v.sroa.16.047, ptr noalias noundef nonnull align 4 %scratch.0, i64 noundef %scratch.1, i64 noundef %index.sroa.0.0.i, i1 noundef zeroext false, ptr noalias align 8 poison)
  %9 = icmp eq i64 %8, 0
  br label %bb16

bb16:                                             ; preds = %bb14, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h47d2093944d38971E.exit"
  %left_partition_len.sroa.0.0 = phi i64 [ 0, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h47d2093944d38971E.exit" ], [ %8, %bb14 ]
  %perform_equal_partition.sroa.0.0.in = phi i1 [ true, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h47d2093944d38971E.exit" ], [ %9, %bb14 ]
  br i1 %perform_equal_partition.sroa.0.0.in, label %bb17, label %bb19

bb19:                                             ; preds = %bb16
  %_6.not.i = icmp ugt i64 %left_partition_len.sroa.0.0, %v.sroa.16.047
  br i1 %_6.not.i, label %bb3.i23, label %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$12split_at_mut17hd9cc43366b0a69c4E.exit", !prof !35

bb3.i23:                                          ; preds = %bb19
; call core::panicking::panic_fmt
  call void @_ZN4core9panicking9panic_fmt17ha4414e4328fe24a0E(ptr noundef nonnull @alloc_d1084648e479974e70c9329824bf76f9, ptr noundef nonnull inttoptr (i64 19 to ptr), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_58d434a1e795f965ef82c8e9c5db822a) #24, !noalias !2482
  unreachable

"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$12split_at_mut17hd9cc43366b0a69c4E.exit": ; preds = %bb19
  %10 = getelementptr inbounds nuw float, ptr %v.sroa.0.0.ph55, i64 %left_partition_len.sroa.0.0
  %11 = sub nuw nsw i64 %v.sroa.16.047, %left_partition_len.sroa.0.0
; call core::slice::sort::stable::quicksort::quicksort
  call void @_ZN4core5slice4sort6stable9quicksort9quicksort17h6c1ff9bca1b551deE(ptr noalias noundef nonnull align 4 %10, i64 noundef %11, ptr noalias noundef nonnull align 4 %scratch.0, i64 noundef %scratch.1, i32 noundef %4, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable_or_null(4) %pivot_copy, ptr noalias noundef align 8 dereferenceable(8) %is_less) #27
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pivot_copy)
  %_8 = icmp ult i64 %left_partition_len.sroa.0.0, 33
  br i1 %_8, label %bb3, label %bb5

bb17:                                             ; preds = %bb16
; call core::slice::sort::stable::quicksort::stable_partition
  %mid_eq = call noundef i64 @_ZN4core5slice4sort6stable9quicksort16stable_partition17h29d7ff4c78c44930E(ptr noalias noundef nonnull align 4 %v.sroa.0.0.ph55, i64 noundef %v.sroa.16.047, ptr noalias noundef nonnull align 4 %scratch.0, i64 noundef %scratch.1, i64 noundef %index.sroa.0.0.i, i1 noundef zeroext true, ptr noalias align 8 poison)
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
define void @_ZN4core5slice4sort6stable9quicksort9quicksort17hf41fb6ada53877c9E(ptr noalias noundef nonnull align 4 %0, i64 noundef range(i64 0, 2305843009213693952) %1, ptr noalias noundef nonnull align 4 %scratch.0, i64 noundef range(i64 0, 2305843009213693952) %scratch.1, i32 noundef %2, ptr noalias noundef readonly align 4 captures(address) dereferenceable_or_null(4) %3, ptr noalias noundef align 8 dereferenceable(8) %is_less) unnamed_addr #5 {
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

bb5:                                              ; preds = %bb5.lr.ph, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$12split_at_mut17h77ab04c1f2f49d7cE.exit"
  %v.sroa.16.034 = phi i64 [ %v.sroa.16.0.ph41, %bb5.lr.ph ], [ %left_partition_len.sroa.0.0, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$12split_at_mut17h77ab04c1f2f49d7cE.exit" ]
  %limit.sroa.0.033 = phi i32 [ %limit.sroa.0.0.ph40, %bb5.lr.ph ], [ %4, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$12split_at_mut17h77ab04c1f2f49d7cE.exit" ]
  %_11 = icmp eq i32 %limit.sroa.0.033, 0
  br i1 %_11, label %bb6, label %bb7

bb3:                                              ; preds = %bb28, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$12split_at_mut17h77ab04c1f2f49d7cE.exit", %start
  %v.sroa.0.0.ph.lcssa31 = phi ptr [ %0, %start ], [ %v.sroa.0.0.ph42, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$12split_at_mut17h77ab04c1f2f49d7cE.exit" ], [ %_54, %bb28 ]
  %v.sroa.16.0.lcssa = phi i64 [ %1, %start ], [ %left_partition_len.sroa.0.0, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$12split_at_mut17h77ab04c1f2f49d7cE.exit" ], [ %new_len, %bb28 ]
; call core::slice::sort::shared::smallsort::small_sort_general_with_scratch
  call void @_ZN4core5slice4sort6shared9smallsort31small_sort_general_with_scratch17h6234b1c9273a5e55E(ptr noalias noundef nonnull align 4 %v.sroa.0.0.ph.lcssa31, i64 noundef range(i64 0, 33) %v.sroa.16.0.lcssa, ptr noalias noundef nonnull align 4 %scratch.0, i64 noundef range(i64 0, 2305843009213693952) %scratch.1, ptr noalias nonnull align 8 poison)
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
  %self.i = call noundef ptr @_ZN4core5slice4sort6shared5pivot11median3_rec17h63df4c18b3244a7aE(ptr noundef nonnull readonly align 4 %v.sroa.0.0.ph42, ptr noundef nonnull readonly %b.i, ptr noundef nonnull readonly %c.i, i64 noundef %len_div_84.i, ptr noalias noundef nonnull align 8 dereferenceable(8) %is_less)
  br label %_ZN4core5slice4sort6shared5pivot12choose_pivot17hf5f5fcbe01a11142E.exit

bb3.i:                                            ; preds = %bb7
  call void @llvm.experimental.noalias.scope.decl(metadata !2486)
  call void @llvm.experimental.noalias.scope.decl(metadata !2489)
  call void @llvm.experimental.noalias.scope.decl(metadata !2491), !noalias !2494
  call void @llvm.experimental.noalias.scope.decl(metadata !2497), !noalias !2494
  call void @llvm.experimental.noalias.scope.decl(metadata !2499), !noalias !2494
  call void @llvm.experimental.noalias.scope.decl(metadata !2502), !noalias !2494
  call void @llvm.experimental.noalias.scope.decl(metadata !2504), !noalias !2494
  call void @llvm.experimental.noalias.scope.decl(metadata !2507), !noalias !2494
  %_3.i.i.i.i.i = load i32, ptr %v.sroa.0.0.ph42, align 4, !alias.scope !2509, !noalias !2512, !noundef !32
  %_4.i.i.i.i.i = load i32, ptr %b.i, align 4, !alias.scope !2514, !noalias !2515, !noundef !32
  %_0.i.i = icmp slt i32 %_3.i.i.i.i.i, %_4.i.i.i.i.i
  %_4.i.i.i.i6.i = load i32, ptr %c.i, align 4, !alias.scope !2516, !noalias !2525, !noundef !32
  %_0.i7.i = icmp slt i32 %_3.i.i.i.i.i, %_4.i.i.i.i6.i
  %5 = xor i1 %_0.i.i, %_0.i7.i
  %_0.i10.i = icmp slt i32 %_4.i.i.i.i.i, %_4.i.i.i.i6.i
  %_12.i.i = xor i1 %_0.i.i, %_0.i10.i
  %c.b.i.i = select i1 %_12.i.i, ptr %c.i, ptr %b.i
  %_0.sroa.0.0.i.i = select i1 %5, ptr %v.sroa.0.0.ph42, ptr %c.b.i.i
  br label %_ZN4core5slice4sort6shared5pivot12choose_pivot17hf5f5fcbe01a11142E.exit

_ZN4core5slice4sort6shared5pivot12choose_pivot17hf5f5fcbe01a11142E.exit: ; preds = %bb5.i, %bb3.i
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
  call void @_ZN4core5slice4sort6stable5drift4sort17hbd75ce168a8b00beE(ptr noalias noundef nonnull align 4 %v.sroa.0.0.ph42, i64 noundef %v.sroa.16.034, ptr noalias noundef nonnull align 4 %scratch.0, i64 noundef %scratch.1, i1 noundef zeroext true, ptr noalias noundef align 8 dereferenceable(8) %is_less)
  br label %bb22

bb12:                                             ; preds = %_ZN4core5slice4sort6shared5pivot12choose_pivot17hf5f5fcbe01a11142E.exit
  %_3.i.i.i.i = load i32, ptr %left_ancestor_pivot.sroa.0.0.ph39, align 4, !alias.scope !2530, !noalias !2539, !noundef !32
  %_0.i.not = icmp slt i32 %_3.i.i.i.i, %value
  br i1 %_0.i.not, label %bb14, label %bb16

bb14:                                             ; preds = %_ZN4core5slice4sort6shared5pivot12choose_pivot17hf5f5fcbe01a11142E.exit, %bb12
; call core::slice::sort::stable::quicksort::stable_partition
  %8 = call noundef i64 @_ZN4core5slice4sort6stable9quicksort16stable_partition17h42f550482c7f392cE(ptr noalias noundef nonnull align 4 %v.sroa.0.0.ph42, i64 noundef %v.sroa.16.034, ptr noalias noundef nonnull align 4 %scratch.0, i64 noundef %scratch.1, i64 noundef %index.sroa.0.0.i, i1 noundef zeroext false, ptr noalias align 8 poison)
  %9 = icmp eq i64 %8, 0
  br label %bb16

bb16:                                             ; preds = %bb14, %bb12
  %left_partition_len.sroa.0.0 = phi i64 [ 0, %bb12 ], [ %8, %bb14 ]
  %perform_equal_partition.sroa.0.0.in = phi i1 [ true, %bb12 ], [ %9, %bb14 ]
  br i1 %perform_equal_partition.sroa.0.0.in, label %bb17, label %bb19

bb19:                                             ; preds = %bb16
  %_6.not.i = icmp ugt i64 %left_partition_len.sroa.0.0, %v.sroa.16.034
  br i1 %_6.not.i, label %bb3.i23, label %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$12split_at_mut17h77ab04c1f2f49d7cE.exit", !prof !35

bb3.i23:                                          ; preds = %bb19
; call core::panicking::panic_fmt
  call void @_ZN4core9panicking9panic_fmt17ha4414e4328fe24a0E(ptr noundef nonnull @alloc_d1084648e479974e70c9329824bf76f9, ptr noundef nonnull inttoptr (i64 19 to ptr), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_58d434a1e795f965ef82c8e9c5db822a) #24, !noalias !2544
  unreachable

"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$12split_at_mut17h77ab04c1f2f49d7cE.exit": ; preds = %bb19
  %10 = getelementptr inbounds nuw i32, ptr %v.sroa.0.0.ph42, i64 %left_partition_len.sroa.0.0
  %11 = sub nuw nsw i64 %v.sroa.16.034, %left_partition_len.sroa.0.0
; call core::slice::sort::stable::quicksort::quicksort
  call void @_ZN4core5slice4sort6stable9quicksort9quicksort17hf41fb6ada53877c9E(ptr noalias noundef nonnull align 4 %10, i64 noundef %11, ptr noalias noundef nonnull align 4 %scratch.0, i64 noundef %scratch.1, i32 noundef %4, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable_or_null(4) %pivot_copy, ptr noalias noundef align 8 dereferenceable(8) %is_less) #27
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pivot_copy)
  %_8 = icmp ult i64 %left_partition_len.sroa.0.0, 33
  br i1 %_8, label %bb3, label %bb5

bb17:                                             ; preds = %bb16
; call core::slice::sort::stable::quicksort::stable_partition
  %mid_eq = call noundef i64 @_ZN4core5slice4sort6stable9quicksort16stable_partition17h186cdc7211da2e91E(ptr noalias noundef nonnull align 4 %v.sroa.0.0.ph42, i64 noundef %v.sroa.16.034, ptr noalias noundef nonnull align 4 %scratch.0, i64 noundef %scratch.1, i64 noundef %index.sroa.0.0.i, i1 noundef zeroext true, ptr noalias align 8 poison)
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
define void @"_ZN5alloc5slice99_$LT$impl$u20$core..slice..sort..stable..BufGuard$LT$T$GT$$u20$for$u20$alloc..vec..Vec$LT$T$GT$$GT$13with_capacity17h0fb4ef15602973b4E"(ptr dead_on_unwind noalias noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %_0, i64 noundef %capacity) unnamed_addr #1 {
start:
  %_4.i = alloca [24 x i8], align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %_4.i)
; call alloc::raw_vec::RawVecInner<A>::try_allocate_in
  call void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$15try_allocate_in17had089b3ffc2704ecE"(ptr noalias noundef sret([24 x i8]) align 8 captures(none) dereferenceable(24) %_4.i, i64 noundef %capacity, i1 noundef zeroext false, i64 noundef 4, i64 noundef 4)
  %_5.i = load i64, ptr %_4.i, align 8, !range !1491, !noundef !32
  %0 = trunc nuw i64 %_5.i to i1
  %1 = getelementptr inbounds nuw i8, ptr %_4.i, i64 8
  %err.0.i = load i64, ptr %1, align 8, !range !1492, !noundef !32
  %2 = getelementptr inbounds nuw i8, ptr %_4.i, i64 16
  br i1 %0, label %bb3.i, label %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17hf5e29430993ef7f6E.exit", !prof !35

bb3.i:                                            ; preds = %start
  %err.1.i = load i64, ptr %2, align 8
; call alloc::raw_vec::handle_error
  tail call void @_ZN5alloc7raw_vec12handle_error17h3a8c375904e593b2E(i64 noundef %err.0.i, i64 %err.1.i) #25
  unreachable

"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17hf5e29430993ef7f6E.exit": ; preds = %start
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
define void @"_ZN5alloc5slice99_$LT$impl$u20$core..slice..sort..stable..BufGuard$LT$T$GT$$u20$for$u20$alloc..vec..Vec$LT$T$GT$$GT$13with_capacity17he104ce91b9416e00E"(ptr dead_on_unwind noalias noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %_0, i64 noundef %capacity) unnamed_addr #1 {
start:
  %_4.i = alloca [24 x i8], align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %_4.i)
; call alloc::raw_vec::RawVecInner<A>::try_allocate_in
  call void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$15try_allocate_in17had089b3ffc2704ecE"(ptr noalias noundef sret([24 x i8]) align 8 captures(none) dereferenceable(24) %_4.i, i64 noundef %capacity, i1 noundef zeroext false, i64 noundef 4, i64 noundef 4)
  %_5.i = load i64, ptr %_4.i, align 8, !range !1491, !noundef !32
  %0 = trunc nuw i64 %_5.i to i1
  %1 = getelementptr inbounds nuw i8, ptr %_4.i, i64 8
  %err.0.i = load i64, ptr %1, align 8, !range !1492, !noundef !32
  %2 = getelementptr inbounds nuw i8, ptr %_4.i, i64 16
  br i1 %0, label %bb3.i, label %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17hf5e29430993ef7f6E.exit", !prof !35

bb3.i:                                            ; preds = %start
  %err.1.i = load i64, ptr %2, align 8
; call alloc::raw_vec::handle_error
  tail call void @_ZN5alloc7raw_vec12handle_error17h3a8c375904e593b2E(i64 noundef %err.0.i, i64 %err.1.i) #25
  unreachable

"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17hf5e29430993ef7f6E.exit": ; preds = %start
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
define { ptr, i64 } @"_ZN5alloc5slice99_$LT$impl$u20$core..slice..sort..stable..BufGuard$LT$T$GT$$u20$for$u20$alloc..vec..Vec$LT$T$GT$$GT$19as_uninit_slice_mut17h3d7797714e0aefe0E"(ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) %self) unnamed_addr #10 {
start:
  %0 = getelementptr inbounds nuw i8, ptr %self, i64 8
  %_10 = load ptr, ptr %0, align 8, !nonnull !32, !noundef !32
  %1 = getelementptr inbounds nuw i8, ptr %self, i64 16
  %count = load i64, ptr %1, align 8, !noundef !32
  %_3 = getelementptr inbounds nuw float, ptr %_10, i64 %count
  %self1 = load i64, ptr %self, align 8, !range !2548, !noundef !32
  %len = sub i64 %self1, %count
  %2 = insertvalue { ptr, i64 } poison, ptr %_3, 0
  %3 = insertvalue { ptr, i64 } %2, i64 %len, 1
  ret { ptr, i64 } %3
}

; alloc::slice::<impl core::slice::sort::stable::BufGuard<T> for alloc::vec::Vec<T>>::as_uninit_slice_mut
; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define { ptr, i64 } @"_ZN5alloc5slice99_$LT$impl$u20$core..slice..sort..stable..BufGuard$LT$T$GT$$u20$for$u20$alloc..vec..Vec$LT$T$GT$$GT$19as_uninit_slice_mut17haba17d8529123db6E"(ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) %self) unnamed_addr #10 {
start:
  %0 = getelementptr inbounds nuw i8, ptr %self, i64 8
  %_10 = load ptr, ptr %0, align 8, !nonnull !32, !noundef !32
  %1 = getelementptr inbounds nuw i8, ptr %self, i64 16
  %count = load i64, ptr %1, align 8, !noundef !32
  %_3 = getelementptr inbounds nuw i32, ptr %_10, i64 %count
  %self1 = load i64, ptr %self, align 8, !range !2548, !noundef !32
  %len = sub i64 %self1, %count
  %2 = insertvalue { ptr, i64 } poison, ptr %_3, 0
  %3 = insertvalue { ptr, i64 } %2, i64 %len, 1
  ret { ptr, i64 } %3
}

; alloc::raw_vec::RawVec<T,A>::grow_one
; Function Attrs: noinline nonlazybind uwtable
define void @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$8grow_one17h3f9d0af4feec1c41E"(ptr noalias noundef align 8 dereferenceable(16) %self) unnamed_addr #5 {
start:
  %self1 = load i64, ptr %self, align 8, !range !2548, !noundef !32
; call alloc::raw_vec::RawVecInner<A>::grow_amortized
  %0 = tail call { i64, i64 } @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$14grow_amortized17he3fbd0d23c2b8031E"(ptr noalias noundef align 8 dereferenceable(16) %self, i64 noundef %self1, i64 noundef 1, i64 noundef 4, i64 noundef 4)
  %1 = extractvalue { i64, i64 } %0, 0
  %.not = icmp eq i64 %1, -9223372036854775807
  br i1 %.not, label %bb3, label %bb2, !prof !2549

bb2:                                              ; preds = %start
  %2 = extractvalue { i64, i64 } %0, 1
; call alloc::raw_vec::handle_error
  tail call void @_ZN5alloc7raw_vec12handle_error17h3a8c375904e593b2E(i64 noundef %1, i64 %2) #25
  unreachable

bb3:                                              ; preds = %start
  ret void
}

; <alloc::vec::Vec<T,A> as core::ops::drop::Drop>::drop
; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define void @"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h5177636733b95d91E"(ptr noalias noundef readnone align 8 captures(none) dereferenceable(24) %self) unnamed_addr #6 {
start:
  ret void
}

; <alloc::vec::Vec<T,A> as core::ops::drop::Drop>::drop
; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define void @"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h609824a592f9f39cE"(ptr noalias noundef readnone align 8 captures(none) dereferenceable(24) %self) unnamed_addr #6 {
start:
  ret void
}

; <alloc::raw_vec::RawVec<T,A> as core::ops::drop::Drop>::drop
; Function Attrs: nonlazybind uwtable
define void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h4f1f77dd2a72c68aE"(ptr noalias noundef align 8 dereferenceable(16) %self) unnamed_addr #1 {
start:
; call alloc::raw_vec::RawVecInner<A>::deallocate
  tail call void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$10deallocate17h6ddf8733b0451bb9E"(ptr noalias noundef align 8 dereferenceable(16) %self, i64 noundef 4, i64 noundef 4)
  ret void
}

; <alloc::raw_vec::RawVec<T,A> as core::ops::drop::Drop>::drop
; Function Attrs: nonlazybind uwtable
define void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h564cf9b51fcfd750E"(ptr noalias noundef align 8 dereferenceable(16) %self) unnamed_addr #1 {
start:
; call alloc::raw_vec::RawVecInner<A>::deallocate
  tail call void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$10deallocate17h6ddf8733b0451bb9E"(ptr noalias noundef align 8 dereferenceable(16) %self, i64 noundef 4, i64 noundef 4)
  ret void
}

; <core::slice::sort::stable::merge::MergeState<T> as core::ops::drop::Drop>::drop
; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define void @"_ZN95_$LT$core..slice..sort..stable..merge..MergeState$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h21adb8d682c7057dE"(ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) %self) unnamed_addr #9 {
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
define void @"_ZN95_$LT$core..slice..sort..stable..merge..MergeState$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h825a2c529873648fE"(ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) %self) unnamed_addr #9 {
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
define void @"_ZN96_$LT$core..hint..select_unpredictable..DropOnPanic$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h0d1937c0accacb0dE"(ptr noalias noundef readnone align 8 captures(none) dereferenceable(8) %self) unnamed_addr #6 {
start:
  ret void
}

; <core::hint::select_unpredictable::DropOnPanic<T> as core::ops::drop::Drop>::drop
; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define void @"_ZN96_$LT$core..hint..select_unpredictable..DropOnPanic$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h39d83d4bce11e326E"(ptr noalias noundef readnone align 8 captures(none) dereferenceable(8) %self) unnamed_addr #6 {
start:
  ret void
}

; <core::slice::sort::shared::smallsort::CopyOnDrop<T> as core::ops::drop::Drop>::drop
; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define void @"_ZN99_$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h0fd8ed5edd0e04a3E"(ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) %self) unnamed_addr #9 {
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
define void @"_ZN99_$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h21148157d7f7cce3E"(ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) %self) unnamed_addr #9 {
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2550)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2553)
  %_3.i = load i32, ptr %a, align 4, !alias.scope !2550, !noalias !2553, !noundef !32
  %_4.i = load i32, ptr %b, align 4, !alias.scope !2553, !noalias !2550, !noundef !32
  %_0.i = tail call noundef range(i8 -1, 2) i8 @llvm.scmp.i8.i32(i32 %_3.i, i32 %_4.i)
  ret i8 %_0.i
}

; Function Attrs: nonlazybind uwtable
define noundef i32 @f_gold(i32 noundef %k, i64 %0, i64 %1, i32 noundef %n) unnamed_addr #1 personality ptr @rust_eh_personality {
start:
  %compare.i = alloca [0 x i8], align 1
  %is_less.i.i = alloca [8 x i8], align 8
  %dis = alloca [24 x i8], align 8
  %y = alloca [8 x i8], align 8
  %x = alloca [8 x i8], align 8
  store i64 %0, ptr %x, align 8
  store i64 %1, ptr %y, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %dis)
  store i64 0, ptr %dis, align 8, !alias.scope !2555
  %2 = getelementptr inbounds nuw i8, ptr %dis, i64 8
  store ptr inttoptr (i64 4 to ptr), ptr %2, align 8, !alias.scope !2555
  %3 = getelementptr inbounds nuw i8, ptr %dis, i64 16
  store i64 0, ptr %3, align 8
  %_0.i.i.i16 = icmp sgt i32 %n, 0
  br i1 %_0.i.i.i16, label %bb8, label %bb7

cleanup.loopexit:                                 ; preds = %bb1.i.i.2, %bb1.i.i.1, %bb1.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %cleanup

cleanup.loopexit.split-lp:                        ; preds = %panic, %bb10.i.i, %bb9.i.i, %panic.i.i
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %cleanup

cleanup:                                          ; preds = %cleanup.loopexit.split-lp, %cleanup.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %cleanup.loopexit ], [ %lpad.loopexit.split-lp, %cleanup.loopexit.split-lp ]
; invoke alloc::raw_vec::RawVecInner<A>::deallocate
  invoke void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$10deallocate17h6ddf8733b0451bb9E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %dis, i64 noundef 4, i64 noundef 4)
          to label %bb18 unwind label %terminate

bb7:                                              ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$4push17haf513d1686ccb29eE.exit", %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$4push17haf513d1686ccb29eE.exit.1", %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$4push17haf513d1686ccb29eE.exit.2", %start
  %_4.i.i7 = load ptr, ptr %2, align 8, !alias.scope !2558, !nonnull !32, !noundef !32
  %len.i.i = load i64, ptr %3, align 8, !alias.scope !2558, !noundef !32
  call void @llvm.lifetime.start.p0(i64 0, ptr nonnull %compare.i)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %is_less.i.i), !noalias !2563
  store ptr %compare.i, ptr %is_less.i.i, align 8, !noalias !2566
  %b.i.i = icmp samesign ult i64 %len.i.i, 2
  br i1 %b.i.i, label %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by17h608b13231a9d7d4eE.exit", label %bb7.i.i, !prof !2549

bb7.i.i:                                          ; preds = %bb7
  %b1.i.i = icmp samesign ult i64 %len.i.i, 21
  br i1 %b1.i.i, label %bb9.i.i, label %bb10.i.i, !prof !2549

bb10.i.i:                                         ; preds = %bb7.i.i
; invoke core::slice::sort::stable::driftsort_main
  invoke void @_ZN4core5slice4sort6stable14driftsort_main17he5fef1bddceca5efE(ptr noalias noundef nonnull align 4 %_4.i.i7, i64 noundef range(i64 0, 2305843009213693952) %len.i.i, ptr noalias noundef align 8 dereferenceable(8) %is_less.i.i)
          to label %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by17h608b13231a9d7d4eE.exit" unwind label %cleanup.loopexit.split-lp

bb9.i.i:                                          ; preds = %bb7.i.i
; invoke core::slice::sort::shared::smallsort::insertion_sort_shift_left
  invoke void @_ZN4core5slice4sort6shared9smallsort25insertion_sort_shift_left17h500061426fbe7d96E(ptr noalias noundef nonnull align 4 %_4.i.i7, i64 noundef range(i64 0, 2305843009213693952) %len.i.i, i64 noundef 1, ptr noalias align 8 poison)
          to label %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by17h608b13231a9d7d4eE.exit" unwind label %cleanup.loopexit.split-lp

"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by17h608b13231a9d7d4eE.exit": ; preds = %bb9.i.i, %bb10.i.i, %bb7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %is_less.i.i), !noalias !2563
  call void @llvm.lifetime.end.p0(i64 0, ptr nonnull %compare.i)
  %_31 = sext i32 %k to i64
  %_30 = add nsw i64 %_31, -1
  %len.i = load i64, ptr %3, align 8, !alias.scope !2570, !noundef !32
  %_4.i.i9 = icmp ult i64 %_30, %len.i
  br i1 %_4.i.i9, label %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h97940fa83caacb18E.exit", label %panic.i.i

panic.i.i:                                        ; preds = %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by17h608b13231a9d7d4eE.exit"
; invoke core::panicking::panic_bounds_check
  invoke void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef range(i64 -2147483649, 2147483647) %_30, i64 noundef range(i64 0, 2305843009213693952) %len.i, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_91929aa5fd5ecdf230d71e4a2b4c6739) #24
          to label %.noexc10 unwind label %cleanup.loopexit.split-lp

.noexc10:                                         ; preds = %panic.i.i
  unreachable

"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h97940fa83caacb18E.exit": ; preds = %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by17h608b13231a9d7d4eE.exit"
  %_6.i = load ptr, ptr %2, align 8, !alias.scope !2570, !nonnull !32, !noundef !32
  %_0.i.i = getelementptr inbounds nuw float, ptr %_6.i, i64 %_30
  %_27 = load float, ptr %_0.i.i, align 4, !noundef !32
  %_0 = call i32 @llvm.fptosi.sat.i32.f32(float %_27)
; call alloc::raw_vec::RawVecInner<A>::deallocate
  call void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$10deallocate17h6ddf8733b0451bb9E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %dis, i64 noundef 4, i64 noundef 4)
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %dis)
  ret i32 %_0

bb8:                                              ; preds = %start
  %_18 = load i32, ptr %x, align 8, !noundef !32
  %_17 = sitofp i32 %_18 to float
  %_16 = fmul float %_17, %_17
  %_23 = load i32, ptr %y, align 8, !noundef !32
  %_22 = sitofp i32 %_23 to float
  %_21 = fmul float %_22, %_22
  %_15 = fadd float %_16, %_21
  %len.i.i11 = load i64, ptr %3, align 8, !alias.scope !2573, !noundef !32
  %self1.i.i = load i64, ptr %dis, align 8, !range !2548, !alias.scope !2573, !noundef !32
  %_4.i.i12 = icmp eq i64 %len.i.i11, %self1.i.i
  br i1 %_4.i.i12, label %bb1.i.i, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$4push17haf513d1686ccb29eE.exit"

bb1.i.i:                                          ; preds = %bb8
; invoke alloc::raw_vec::RawVec<T,A>::grow_one
  invoke void @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$8grow_one17h3f9d0af4feec1c41E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %dis)
          to label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$4push17haf513d1686ccb29eE.exit" unwind label %cleanup.loopexit

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$4push17haf513d1686ccb29eE.exit": ; preds = %bb1.i.i, %bb8
  %_15.i.i = load ptr, ptr %2, align 8, !alias.scope !2573, !nonnull !32, !noundef !32
  %end.i.i = getelementptr inbounds nuw float, ptr %_15.i.i, i64 %len.i.i11
  store float %_15, ptr %end.i.i, align 4
  %4 = add i64 %len.i.i11, 1
  store i64 %4, ptr %3, align 8
  %_0.i.i.i.not = icmp eq i32 %n, 1
  %spec.select = select i1 %_0.i.i.i.not, i32 1, i32 2
  br i1 %_0.i.i.i.not, label %bb7, label %bb8.1

bb8.1:                                            ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$4push17haf513d1686ccb29eE.exit"
  %5 = getelementptr inbounds nuw i8, ptr %x, i64 4
  %_18.1 = load i32, ptr %5, align 4, !noundef !32
  %_17.1 = sitofp i32 %_18.1 to float
  %_16.1 = fmul float %_17.1, %_17.1
  %6 = getelementptr inbounds nuw i8, ptr %y, i64 4
  %_23.1 = load i32, ptr %6, align 4, !noundef !32
  %_22.1 = sitofp i32 %_23.1 to float
  %_21.1 = fmul float %_22.1, %_22.1
  %_15.1 = fadd float %_16.1, %_21.1
  %len.i.i11.1 = load i64, ptr %3, align 8, !alias.scope !2573, !noundef !32
  %self1.i.i.1 = load i64, ptr %dis, align 8, !range !2548, !alias.scope !2573, !noundef !32
  %_4.i.i12.1 = icmp eq i64 %len.i.i11.1, %self1.i.i.1
  br i1 %_4.i.i12.1, label %bb1.i.i.1, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$4push17haf513d1686ccb29eE.exit.1"

bb1.i.i.1:                                        ; preds = %bb8.1
; invoke alloc::raw_vec::RawVec<T,A>::grow_one
  invoke void @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$8grow_one17h3f9d0af4feec1c41E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %dis)
          to label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$4push17haf513d1686ccb29eE.exit.1" unwind label %cleanup.loopexit

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$4push17haf513d1686ccb29eE.exit.1": ; preds = %bb1.i.i.1, %bb8.1
  %_15.i.i.1 = load ptr, ptr %2, align 8, !alias.scope !2573, !nonnull !32, !noundef !32
  %end.i.i.1 = getelementptr inbounds nuw float, ptr %_15.i.i.1, i64 %len.i.i11.1
  store float %_15.1, ptr %end.i.i.1, align 4
  %7 = add i64 %len.i.i11.1, 1
  store i64 %7, ptr %3, align 8
  %_0.i.i.i.1 = icmp slt i32 %spec.select, %n
  br i1 %_0.i.i.i.1, label %bb6.2, label %bb7

bb6.2:                                            ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$4push17haf513d1686ccb29eE.exit.1"
  %_19.2 = zext nneg i32 %spec.select to i64
  br i1 %_0.i.i.i.not, label %bb8.2, label %panic

bb8.2:                                            ; preds = %bb6.2
  %8 = getelementptr inbounds nuw i32, ptr %x, i64 %_19.2
  %_18.2 = load i32, ptr %8, align 4, !noundef !32
  %_17.2 = sitofp i32 %_18.2 to float
  %_16.2 = fmul float %_17.2, %_17.2
  %9 = getelementptr inbounds nuw i32, ptr %y, i64 %_19.2
  %_23.2 = load i32, ptr %9, align 4, !noundef !32
  %_22.2 = sitofp i32 %_23.2 to float
  %_21.2 = fmul float %_22.2, %_22.2
  %_15.2 = fadd float %_16.2, %_21.2
  %len.i.i11.2 = load i64, ptr %3, align 8, !alias.scope !2573, !noundef !32
  %self1.i.i.2 = load i64, ptr %dis, align 8, !range !2548, !alias.scope !2573, !noundef !32
  %_4.i.i12.2 = icmp eq i64 %len.i.i11.2, %self1.i.i.2
  br i1 %_4.i.i12.2, label %bb1.i.i.2, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$4push17haf513d1686ccb29eE.exit.2"

bb1.i.i.2:                                        ; preds = %bb8.2
; invoke alloc::raw_vec::RawVec<T,A>::grow_one
  invoke void @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$8grow_one17h3f9d0af4feec1c41E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %dis)
          to label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$4push17haf513d1686ccb29eE.exit.2" unwind label %cleanup.loopexit

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$4push17haf513d1686ccb29eE.exit.2": ; preds = %bb1.i.i.2, %bb8.2
  %_15.i.i.2 = load ptr, ptr %2, align 8, !alias.scope !2573, !nonnull !32, !noundef !32
  %end.i.i.2 = getelementptr inbounds nuw float, ptr %_15.i.i.2, i64 %len.i.i11.2
  store float %_15.2, ptr %end.i.i.2, align 4
  %10 = add i64 %len.i.i11.2, 1
  store i64 %10, ptr %3, align 8
  br label %bb7

panic:                                            ; preds = %bb6.2
; invoke core::panicking::panic_bounds_check
  invoke void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef %_19.2, i64 noundef 2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_d62f07554f1472b25e34b1cc2dcde560) #25
          to label %unreachable unwind label %cleanup.loopexit.split-lp

unreachable:                                      ; preds = %panic
  unreachable

terminate:                                        ; preds = %cleanup
  %11 = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer
; call core::panicking::panic_in_cleanup
  call void @_ZN4core9panicking16panic_in_cleanup17h5f6bde45d17ae243E() #26
  unreachable

bb18:                                             ; preds = %cleanup
  resume { ptr, i32 } %lpad.phi
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
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %is_less.i.i), !noalias !2578
  store ptr %compare.i, ptr %is_less.i.i, align 8, !noalias !2581
  %b.i.i = icmp samesign ult i64 %arr.1, 2
  br i1 %b.i.i, label %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by17h75e7423505bf07c7E.exit", label %bb7.i.i, !prof !2549

bb7.i.i:                                          ; preds = %start
  %b1.i.i = icmp samesign ult i64 %arr.1, 21
  br i1 %b1.i.i, label %bb9.i.i, label %bb10.i.i, !prof !2549

bb10.i.i:                                         ; preds = %bb7.i.i
; call core::slice::sort::stable::driftsort_main
  call void @_ZN4core5slice4sort6stable14driftsort_main17h29c9ac81b22d647fE(ptr noalias noundef nonnull align 4 %arr.0, i64 noundef range(i64 0, 2305843009213693952) %arr.1, ptr noalias noundef align 8 dereferenceable(8) %is_less.i.i)
  br label %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by17h75e7423505bf07c7E.exit"

bb9.i.i:                                          ; preds = %bb7.i.i
; call core::slice::sort::shared::smallsort::insertion_sort_shift_left
  call void @_ZN4core5slice4sort6shared9smallsort25insertion_sort_shift_left17hbdc8f9db3619b8bbE(ptr noalias noundef nonnull align 4 %arr.0, i64 noundef range(i64 0, 2305843009213693952) %arr.1, i64 noundef 1, ptr noalias align 8 poison)
  br label %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by17h75e7423505bf07c7E.exit"

"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by17h75e7423505bf07c7E.exit": ; preds = %start, %bb10.i.i, %bb9.i.i
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %is_less.i.i), !noalias !2578
  call void @llvm.lifetime.end.p0(i64 0, ptr nonnull %compare.i)
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #12

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #12

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #13

; Function Attrs: nounwind nonlazybind uwtable
declare noundef range(i32 0, 10) i32 @rust_eh_personality(i32 noundef, i32 noundef, i64 noundef, ptr noundef, ptr noundef) unnamed_addr #14

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare range(i8 -1, 2) i8 @llvm.scmp.i8.i32(i32, i32) #15

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
declare i64 @llvm.ctlz.i64(i64, i1 immarg) #15

; core::slice::sort::stable::drift::sqrt_approx
; Function Attrs: nonlazybind uwtable
declare noundef i64 @_ZN4core5slice4sort6stable5drift11sqrt_approx17h72a4dc1ae46294f4E(i64 noundef) unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.usub.sat.i64(i64, i64) #15

; core::option::unwrap_failed
; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_ZN4core6option13unwrap_failed17hef2534b77b89c04fE(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #18

; alloc::raw_vec::RawVecInner<A>::grow_amortized
; Function Attrs: nonlazybind uwtable
declare { i64, i64 } @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$14grow_amortized17he3fbd0d23c2b8031E"(ptr noalias noundef align 8 dereferenceable(16), i64 noundef, i64 noundef, i64 noundef range(i64 1, -9223372036854775807), i64 noundef) unnamed_addr #1

; alloc::raw_vec::handle_error
; Function Attrs: cold minsize noreturn nonlazybind optsize uwtable
declare void @_ZN5alloc7raw_vec12handle_error17h3a8c375904e593b2E(i64 noundef range(i64 0, -9223372036854775807), i64) unnamed_addr #21

; alloc::raw_vec::RawVecInner<A>::try_allocate_in
; Function Attrs: nonlazybind uwtable
declare void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$15try_allocate_in17had089b3ffc2704ecE"(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), i64 noundef, i1 noundef zeroext, i64 noundef range(i64 1, -9223372036854775807), i64 noundef) unnamed_addr #1

; alloc::raw_vec::RawVecInner<A>::deallocate
; Function Attrs: nonlazybind uwtable
declare void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$10deallocate17h6ddf8733b0451bb9E"(ptr noalias noundef align 8 dereferenceable(16), i64 noundef range(i64 1, -9223372036854775807), i64 noundef) unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.fptosi.sat.i32.f32(float) #15

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
attributes #12 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #13 = { mustprogress nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #14 = { nounwind nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #15 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
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
!4 = distinct !{!4, !5, !"_ZN4core3ptr10swap_chunk17h9e0dc69a6e293975E: %x"}
!5 = distinct !{!5, !"_ZN4core3ptr10swap_chunk17h9e0dc69a6e293975E"}
!6 = !{!7}
!7 = distinct !{!7, !5, !"_ZN4core3ptr10swap_chunk17h9e0dc69a6e293975E: %y"}
!8 = !{!9}
!9 = distinct !{!9, !5, !"_ZN4core3ptr10swap_chunk17h9e0dc69a6e293975E: %x:It1"}
!10 = !{!11}
!11 = distinct !{!11, !5, !"_ZN4core3ptr10swap_chunk17h9e0dc69a6e293975E: %y:It1"}
!12 = !{!13}
!13 = distinct !{!13, !14, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h47d2093944d38971E: %a"}
!14 = distinct !{!14, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h47d2093944d38971E"}
!15 = !{!16}
!16 = distinct !{!16, !14, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h47d2093944d38971E: %b"}
!17 = !{!18}
!18 = distinct !{!18, !19, !"_ZN58FIND_MINIMUM_RADIUS_ATLEAST_K_POINT_LIE_INSIDE_CIRCLE_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h1ee6c5ec76d06603E: %a"}
!19 = distinct !{!19, !"_ZN58FIND_MINIMUM_RADIUS_ATLEAST_K_POINT_LIE_INSIDE_CIRCLE_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h1ee6c5ec76d06603E"}
!20 = !{!21}
!21 = distinct !{!21, !22, !"_ZN4core5slice4sort6shared5pivot7median317h10f5e7d7bf5b7b20E: %c"}
!22 = distinct !{!22, !"_ZN4core5slice4sort6shared5pivot7median317h10f5e7d7bf5b7b20E"}
!23 = !{!24}
!24 = distinct !{!24, !19, !"_ZN58FIND_MINIMUM_RADIUS_ATLEAST_K_POINT_LIE_INSIDE_CIRCLE_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h1ee6c5ec76d06603E: %b"}
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
!38 = distinct !{!38, !39, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h47d2093944d38971E: %b"}
!39 = distinct !{!39, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h47d2093944d38971E"}
!40 = !{!41}
!41 = distinct !{!41, !42, !"_ZN58FIND_MINIMUM_RADIUS_ATLEAST_K_POINT_LIE_INSIDE_CIRCLE_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h1ee6c5ec76d06603E: %b"}
!42 = distinct !{!42, !"_ZN58FIND_MINIMUM_RADIUS_ATLEAST_K_POINT_LIE_INSIDE_CIRCLE_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h1ee6c5ec76d06603E"}
!43 = !{!44, !41, !38}
!44 = distinct !{!44, !45, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$f32$GT$11partial_cmp17h51acfdb7fcc2b22aE: %other"}
!45 = distinct !{!45, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$f32$GT$11partial_cmp17h51acfdb7fcc2b22aE"}
!46 = !{!47, !48, !49}
!47 = distinct !{!47, !45, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$f32$GT$11partial_cmp17h51acfdb7fcc2b22aE: %self"}
!48 = distinct !{!48, !42, !"_ZN58FIND_MINIMUM_RADIUS_ATLEAST_K_POINT_LIE_INSIDE_CIRCLE_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h1ee6c5ec76d06603E: %a"}
!49 = distinct !{!49, !39, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h47d2093944d38971E: %a"}
!50 = !{!48, !41, !49, !38}
!51 = !{!52, !54, !55, !57}
!52 = distinct !{!52, !53, !"_ZN58FIND_MINIMUM_RADIUS_ATLEAST_K_POINT_LIE_INSIDE_CIRCLE_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h1ee6c5ec76d06603E: %a"}
!53 = distinct !{!53, !"_ZN58FIND_MINIMUM_RADIUS_ATLEAST_K_POINT_LIE_INSIDE_CIRCLE_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h1ee6c5ec76d06603E"}
!54 = distinct !{!54, !53, !"_ZN58FIND_MINIMUM_RADIUS_ATLEAST_K_POINT_LIE_INSIDE_CIRCLE_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h1ee6c5ec76d06603E: %b"}
!55 = distinct !{!55, !56, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h47d2093944d38971E: %a"}
!56 = distinct !{!56, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h47d2093944d38971E"}
!57 = distinct !{!57, !56, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h47d2093944d38971E: %b"}
!58 = !{!59}
!59 = distinct !{!59, !60, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h310d80ab4250adf7E: %a"}
!60 = distinct !{!60, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h310d80ab4250adf7E"}
!61 = !{!62}
!62 = distinct !{!62, !60, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h310d80ab4250adf7E: %b"}
!63 = !{!64}
!64 = distinct !{!64, !65, !"_ZN4core3ops8function5FnMut8call_mut17h7d33f9a75c1b7329E: argument 0"}
!65 = distinct !{!65, !"_ZN4core3ops8function5FnMut8call_mut17h7d33f9a75c1b7329E"}
!66 = !{!67}
!67 = distinct !{!67, !68, !"_ZN4core5slice4sort6shared5pivot7median317h7965bf09953299d8E: %c"}
!68 = distinct !{!68, !"_ZN4core5slice4sort6shared5pivot7median317h7965bf09953299d8E"}
!69 = !{!70}
!70 = distinct !{!70, !65, !"_ZN4core3ops8function5FnMut8call_mut17h7d33f9a75c1b7329E: argument 1"}
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
!90 = distinct !{!90, !91, !"_ZN4core3ops8function5FnMut8call_mut17h7d33f9a75c1b7329E: argument 1"}
!91 = distinct !{!91, !"_ZN4core3ops8function5FnMut8call_mut17h7d33f9a75c1b7329E"}
!92 = distinct !{!92, !93, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h310d80ab4250adf7E: %b"}
!93 = distinct !{!93, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h310d80ab4250adf7E"}
!94 = !{!95, !96, !97, !98}
!95 = distinct !{!95, !87, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!96 = distinct !{!96, !89, !"cmpfunc: %a"}
!97 = distinct !{!97, !91, !"_ZN4core3ops8function5FnMut8call_mut17h7d33f9a75c1b7329E: argument 0"}
!98 = distinct !{!98, !93, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h310d80ab4250adf7E: %a"}
!99 = !{!100}
!100 = distinct !{!100, !101, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h47d2093944d38971E: %a"}
!101 = distinct !{!101, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h47d2093944d38971E"}
!102 = !{!103}
!103 = distinct !{!103, !101, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h47d2093944d38971E: %b"}
!104 = !{!105}
!105 = distinct !{!105, !106, !"_ZN58FIND_MINIMUM_RADIUS_ATLEAST_K_POINT_LIE_INSIDE_CIRCLE_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h1ee6c5ec76d06603E: %a"}
!106 = distinct !{!106, !"_ZN58FIND_MINIMUM_RADIUS_ATLEAST_K_POINT_LIE_INSIDE_CIRCLE_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h1ee6c5ec76d06603E"}
!107 = !{!108}
!108 = distinct !{!108, !106, !"_ZN58FIND_MINIMUM_RADIUS_ATLEAST_K_POINT_LIE_INSIDE_CIRCLE_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h1ee6c5ec76d06603E: %b"}
!109 = !{!110}
!110 = distinct !{!110, !111, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$f32$GT$11partial_cmp17h51acfdb7fcc2b22aE: %self"}
!111 = distinct !{!111, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$f32$GT$11partial_cmp17h51acfdb7fcc2b22aE"}
!112 = !{!113}
!113 = distinct !{!113, !111, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$f32$GT$11partial_cmp17h51acfdb7fcc2b22aE: %other"}
!114 = !{!110, !105, !100}
!115 = !{!113, !108, !103}
!116 = !{!105, !108, !100, !103}
!117 = !{!118, !120, !122}
!118 = distinct !{!118, !119, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$f32$GT$11partial_cmp17h51acfdb7fcc2b22aE: %other"}
!119 = distinct !{!119, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$f32$GT$11partial_cmp17h51acfdb7fcc2b22aE"}
!120 = distinct !{!120, !121, !"_ZN58FIND_MINIMUM_RADIUS_ATLEAST_K_POINT_LIE_INSIDE_CIRCLE_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h1ee6c5ec76d06603E: %b"}
!121 = distinct !{!121, !"_ZN58FIND_MINIMUM_RADIUS_ATLEAST_K_POINT_LIE_INSIDE_CIRCLE_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h1ee6c5ec76d06603E"}
!122 = distinct !{!122, !123, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h47d2093944d38971E: %b"}
!123 = distinct !{!123, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h47d2093944d38971E"}
!124 = !{!125, !126, !127}
!125 = distinct !{!125, !119, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$f32$GT$11partial_cmp17h51acfdb7fcc2b22aE: %self"}
!126 = distinct !{!126, !121, !"_ZN58FIND_MINIMUM_RADIUS_ATLEAST_K_POINT_LIE_INSIDE_CIRCLE_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h1ee6c5ec76d06603E: %a"}
!127 = distinct !{!127, !123, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h47d2093944d38971E: %a"}
!128 = !{!129, !131}
!129 = distinct !{!129, !130, !"_ZN99_$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h0fd8ed5edd0e04a3E: %self"}
!130 = distinct !{!130, !"_ZN99_$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h0fd8ed5edd0e04a3E"}
!131 = distinct !{!131, !132, !"_ZN4core3ptr80drop_in_place$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$f32$GT$$GT$17h1b2519a8f05f1306E: %_1"}
!132 = distinct !{!132, !"_ZN4core3ptr80drop_in_place$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$f32$GT$$GT$17h1b2519a8f05f1306E"}
!133 = !{!134, !136}
!134 = distinct !{!134, !135, !"_ZN99_$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h0fd8ed5edd0e04a3E: %self"}
!135 = distinct !{!135, !"_ZN99_$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h0fd8ed5edd0e04a3E"}
!136 = distinct !{!136, !137, !"_ZN4core3ptr80drop_in_place$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$f32$GT$$GT$17h1b2519a8f05f1306E: %_1"}
!137 = distinct !{!137, !"_ZN4core3ptr80drop_in_place$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$f32$GT$$GT$17h1b2519a8f05f1306E"}
!138 = !{!139}
!139 = distinct !{!139, !140, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h310d80ab4250adf7E: %a"}
!140 = distinct !{!140, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h310d80ab4250adf7E"}
!141 = !{!142}
!142 = distinct !{!142, !140, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h310d80ab4250adf7E: %b"}
!143 = !{!144}
!144 = distinct !{!144, !145, !"_ZN4core3ops8function5FnMut8call_mut17h7d33f9a75c1b7329E: argument 0"}
!145 = distinct !{!145, !"_ZN4core3ops8function5FnMut8call_mut17h7d33f9a75c1b7329E"}
!146 = !{!147}
!147 = distinct !{!147, !145, !"_ZN4core3ops8function5FnMut8call_mut17h7d33f9a75c1b7329E: argument 1"}
!148 = !{!149}
!149 = distinct !{!149, !150, !"cmpfunc: %a"}
!150 = distinct !{!150, !"cmpfunc"}
!151 = !{!152}
!152 = distinct !{!152, !150, !"cmpfunc: %b"}
!153 = !{!154}
!154 = distinct !{!154, !155, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!155 = distinct !{!155, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!156 = !{!157}
!157 = distinct !{!157, !155, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!158 = !{!154, !149, !144, !139}
!159 = !{!157, !152, !147, !142}
!160 = !{!161, !163, !165, !167}
!161 = distinct !{!161, !162, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!162 = distinct !{!162, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!163 = distinct !{!163, !164, !"cmpfunc: %b"}
!164 = distinct !{!164, !"cmpfunc"}
!165 = distinct !{!165, !166, !"_ZN4core3ops8function5FnMut8call_mut17h7d33f9a75c1b7329E: argument 1"}
!166 = distinct !{!166, !"_ZN4core3ops8function5FnMut8call_mut17h7d33f9a75c1b7329E"}
!167 = distinct !{!167, !168, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h310d80ab4250adf7E: %b"}
!168 = distinct !{!168, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h310d80ab4250adf7E"}
!169 = !{!170, !171, !172, !173}
!170 = distinct !{!170, !162, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!171 = distinct !{!171, !164, !"cmpfunc: %a"}
!172 = distinct !{!172, !166, !"_ZN4core3ops8function5FnMut8call_mut17h7d33f9a75c1b7329E: argument 0"}
!173 = distinct !{!173, !168, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h310d80ab4250adf7E: %a"}
!174 = !{!175, !177}
!175 = distinct !{!175, !176, !"_ZN99_$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h21148157d7f7cce3E: %self"}
!176 = distinct !{!176, !"_ZN99_$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h21148157d7f7cce3E"}
!177 = distinct !{!177, !178, !"_ZN4core3ptr80drop_in_place$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$i32$GT$$GT$17h15a8e616d2e8405dE: %_1"}
!178 = distinct !{!178, !"_ZN4core3ptr80drop_in_place$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$i32$GT$$GT$17h15a8e616d2e8405dE"}
!179 = !{!180}
!180 = distinct !{!180, !181, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h310d80ab4250adf7E: %a"}
!181 = distinct !{!181, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h310d80ab4250adf7E"}
!182 = !{!183}
!183 = distinct !{!183, !181, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h310d80ab4250adf7E: %b"}
!184 = !{!185}
!185 = distinct !{!185, !186, !"_ZN4core3ops8function5FnMut8call_mut17h7d33f9a75c1b7329E: argument 0"}
!186 = distinct !{!186, !"_ZN4core3ops8function5FnMut8call_mut17h7d33f9a75c1b7329E"}
!187 = !{!188}
!188 = distinct !{!188, !186, !"_ZN4core3ops8function5FnMut8call_mut17h7d33f9a75c1b7329E: argument 1"}
!189 = !{!190}
!190 = distinct !{!190, !191, !"cmpfunc: %a"}
!191 = distinct !{!191, !"cmpfunc"}
!192 = !{!193}
!193 = distinct !{!193, !191, !"cmpfunc: %b"}
!194 = !{!195}
!195 = distinct !{!195, !196, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!196 = distinct !{!196, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!197 = !{!198}
!198 = distinct !{!198, !196, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!199 = !{!195, !190, !185, !180}
!200 = !{!198, !193, !188, !183}
!201 = !{!202}
!202 = distinct !{!202, !203, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h310d80ab4250adf7E: %a"}
!203 = distinct !{!203, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h310d80ab4250adf7E"}
!204 = !{!205}
!205 = distinct !{!205, !203, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h310d80ab4250adf7E: %b"}
!206 = !{!207}
!207 = distinct !{!207, !208, !"_ZN4core3ops8function5FnMut8call_mut17h7d33f9a75c1b7329E: argument 0"}
!208 = distinct !{!208, !"_ZN4core3ops8function5FnMut8call_mut17h7d33f9a75c1b7329E"}
!209 = !{!210}
!210 = distinct !{!210, !208, !"_ZN4core3ops8function5FnMut8call_mut17h7d33f9a75c1b7329E: argument 1"}
!211 = !{!212}
!212 = distinct !{!212, !213, !"cmpfunc: %a"}
!213 = distinct !{!213, !"cmpfunc"}
!214 = !{!215}
!215 = distinct !{!215, !213, !"cmpfunc: %b"}
!216 = !{!217}
!217 = distinct !{!217, !218, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!218 = distinct !{!218, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!219 = !{!220}
!220 = distinct !{!220, !218, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!221 = !{!217, !212, !207, !202}
!222 = !{!220, !215, !210, !205}
!223 = !{!224}
!224 = distinct !{!224, !225, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h310d80ab4250adf7E: %a"}
!225 = distinct !{!225, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h310d80ab4250adf7E"}
!226 = !{!227}
!227 = distinct !{!227, !225, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h310d80ab4250adf7E: %b"}
!228 = !{!229}
!229 = distinct !{!229, !230, !"_ZN4core3ops8function5FnMut8call_mut17h7d33f9a75c1b7329E: argument 0"}
!230 = distinct !{!230, !"_ZN4core3ops8function5FnMut8call_mut17h7d33f9a75c1b7329E"}
!231 = !{!232}
!232 = distinct !{!232, !230, !"_ZN4core3ops8function5FnMut8call_mut17h7d33f9a75c1b7329E: argument 1"}
!233 = !{!234}
!234 = distinct !{!234, !235, !"cmpfunc: %a"}
!235 = distinct !{!235, !"cmpfunc"}
!236 = !{!237}
!237 = distinct !{!237, !235, !"cmpfunc: %b"}
!238 = !{!239}
!239 = distinct !{!239, !240, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!240 = distinct !{!240, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!241 = !{!242}
!242 = distinct !{!242, !240, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!243 = !{!239, !234, !229, !224}
!244 = !{!242, !237, !232, !227}
!245 = !{!246}
!246 = distinct !{!246, !247, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h310d80ab4250adf7E: %a"}
!247 = distinct !{!247, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h310d80ab4250adf7E"}
!248 = !{!249}
!249 = distinct !{!249, !247, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h310d80ab4250adf7E: %b"}
!250 = !{!251}
!251 = distinct !{!251, !252, !"_ZN4core3ops8function5FnMut8call_mut17h7d33f9a75c1b7329E: argument 0"}
!252 = distinct !{!252, !"_ZN4core3ops8function5FnMut8call_mut17h7d33f9a75c1b7329E"}
!253 = !{!254}
!254 = distinct !{!254, !252, !"_ZN4core3ops8function5FnMut8call_mut17h7d33f9a75c1b7329E: argument 1"}
!255 = !{!256}
!256 = distinct !{!256, !257, !"cmpfunc: %a"}
!257 = distinct !{!257, !"cmpfunc"}
!258 = !{!259}
!259 = distinct !{!259, !257, !"cmpfunc: %b"}
!260 = !{!261}
!261 = distinct !{!261, !262, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!262 = distinct !{!262, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!263 = !{!264}
!264 = distinct !{!264, !262, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!265 = !{!261, !256, !251, !246}
!266 = !{!264, !259, !254, !249}
!267 = !{!268}
!268 = distinct !{!268, !269, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h310d80ab4250adf7E: %a"}
!269 = distinct !{!269, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h310d80ab4250adf7E"}
!270 = !{!271}
!271 = distinct !{!271, !269, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h310d80ab4250adf7E: %b"}
!272 = !{!273}
!273 = distinct !{!273, !274, !"_ZN4core3ops8function5FnMut8call_mut17h7d33f9a75c1b7329E: argument 0"}
!274 = distinct !{!274, !"_ZN4core3ops8function5FnMut8call_mut17h7d33f9a75c1b7329E"}
!275 = !{!276}
!276 = distinct !{!276, !274, !"_ZN4core3ops8function5FnMut8call_mut17h7d33f9a75c1b7329E: argument 1"}
!277 = !{!278}
!278 = distinct !{!278, !279, !"cmpfunc: %a"}
!279 = distinct !{!279, !"cmpfunc"}
!280 = !{!281}
!281 = distinct !{!281, !279, !"cmpfunc: %b"}
!282 = !{!283}
!283 = distinct !{!283, !284, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!284 = distinct !{!284, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!285 = !{!286}
!286 = distinct !{!286, !284, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!287 = !{!283, !278, !273, !268}
!288 = !{!286, !281, !276, !271}
!289 = !{!290}
!290 = distinct !{!290, !291, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h47d2093944d38971E: %a"}
!291 = distinct !{!291, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h47d2093944d38971E"}
!292 = !{!293}
!293 = distinct !{!293, !291, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h47d2093944d38971E: %b"}
!294 = !{!295}
!295 = distinct !{!295, !296, !"_ZN58FIND_MINIMUM_RADIUS_ATLEAST_K_POINT_LIE_INSIDE_CIRCLE_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h1ee6c5ec76d06603E: %a"}
!296 = distinct !{!296, !"_ZN58FIND_MINIMUM_RADIUS_ATLEAST_K_POINT_LIE_INSIDE_CIRCLE_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h1ee6c5ec76d06603E"}
!297 = !{!298}
!298 = distinct !{!298, !296, !"_ZN58FIND_MINIMUM_RADIUS_ATLEAST_K_POINT_LIE_INSIDE_CIRCLE_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h1ee6c5ec76d06603E: %b"}
!299 = !{!300}
!300 = distinct !{!300, !301, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$f32$GT$11partial_cmp17h51acfdb7fcc2b22aE: %self"}
!301 = distinct !{!301, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$f32$GT$11partial_cmp17h51acfdb7fcc2b22aE"}
!302 = !{!303}
!303 = distinct !{!303, !301, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$f32$GT$11partial_cmp17h51acfdb7fcc2b22aE: %other"}
!304 = !{!300, !295, !290}
!305 = !{!303, !298, !293}
!306 = !{!295, !298, !290, !293}
!307 = !{!308}
!308 = distinct !{!308, !309, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h47d2093944d38971E: %a"}
!309 = distinct !{!309, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h47d2093944d38971E"}
!310 = !{!311}
!311 = distinct !{!311, !309, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h47d2093944d38971E: %b"}
!312 = !{!313}
!313 = distinct !{!313, !314, !"_ZN58FIND_MINIMUM_RADIUS_ATLEAST_K_POINT_LIE_INSIDE_CIRCLE_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h1ee6c5ec76d06603E: %a"}
!314 = distinct !{!314, !"_ZN58FIND_MINIMUM_RADIUS_ATLEAST_K_POINT_LIE_INSIDE_CIRCLE_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h1ee6c5ec76d06603E"}
!315 = !{!316}
!316 = distinct !{!316, !314, !"_ZN58FIND_MINIMUM_RADIUS_ATLEAST_K_POINT_LIE_INSIDE_CIRCLE_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h1ee6c5ec76d06603E: %b"}
!317 = !{!318}
!318 = distinct !{!318, !319, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$f32$GT$11partial_cmp17h51acfdb7fcc2b22aE: %self"}
!319 = distinct !{!319, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$f32$GT$11partial_cmp17h51acfdb7fcc2b22aE"}
!320 = !{!321}
!321 = distinct !{!321, !319, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$f32$GT$11partial_cmp17h51acfdb7fcc2b22aE: %other"}
!322 = !{!318, !313, !308}
!323 = !{!321, !316, !311}
!324 = !{!313, !316, !308, !311}
!325 = !{!326}
!326 = distinct !{!326, !327, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h47d2093944d38971E: %a"}
!327 = distinct !{!327, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h47d2093944d38971E"}
!328 = !{!329}
!329 = distinct !{!329, !327, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h47d2093944d38971E: %b"}
!330 = !{!331}
!331 = distinct !{!331, !332, !"_ZN58FIND_MINIMUM_RADIUS_ATLEAST_K_POINT_LIE_INSIDE_CIRCLE_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h1ee6c5ec76d06603E: %a"}
!332 = distinct !{!332, !"_ZN58FIND_MINIMUM_RADIUS_ATLEAST_K_POINT_LIE_INSIDE_CIRCLE_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h1ee6c5ec76d06603E"}
!333 = !{!334}
!334 = distinct !{!334, !332, !"_ZN58FIND_MINIMUM_RADIUS_ATLEAST_K_POINT_LIE_INSIDE_CIRCLE_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h1ee6c5ec76d06603E: %b"}
!335 = !{!336}
!336 = distinct !{!336, !337, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$f32$GT$11partial_cmp17h51acfdb7fcc2b22aE: %self"}
!337 = distinct !{!337, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$f32$GT$11partial_cmp17h51acfdb7fcc2b22aE"}
!338 = !{!339}
!339 = distinct !{!339, !337, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$f32$GT$11partial_cmp17h51acfdb7fcc2b22aE: %other"}
!340 = !{!336, !331, !326}
!341 = !{!339, !334, !329}
!342 = !{!331, !334, !326, !329}
!343 = !{!344}
!344 = distinct !{!344, !345, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h47d2093944d38971E: %a"}
!345 = distinct !{!345, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h47d2093944d38971E"}
!346 = !{!347}
!347 = distinct !{!347, !345, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h47d2093944d38971E: %b"}
!348 = !{!349}
!349 = distinct !{!349, !350, !"_ZN58FIND_MINIMUM_RADIUS_ATLEAST_K_POINT_LIE_INSIDE_CIRCLE_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h1ee6c5ec76d06603E: %a"}
!350 = distinct !{!350, !"_ZN58FIND_MINIMUM_RADIUS_ATLEAST_K_POINT_LIE_INSIDE_CIRCLE_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h1ee6c5ec76d06603E"}
!351 = !{!352}
!352 = distinct !{!352, !350, !"_ZN58FIND_MINIMUM_RADIUS_ATLEAST_K_POINT_LIE_INSIDE_CIRCLE_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h1ee6c5ec76d06603E: %b"}
!353 = !{!354}
!354 = distinct !{!354, !355, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$f32$GT$11partial_cmp17h51acfdb7fcc2b22aE: %self"}
!355 = distinct !{!355, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$f32$GT$11partial_cmp17h51acfdb7fcc2b22aE"}
!356 = !{!357}
!357 = distinct !{!357, !355, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$f32$GT$11partial_cmp17h51acfdb7fcc2b22aE: %other"}
!358 = !{!354, !349, !344}
!359 = !{!357, !352, !347}
!360 = !{!349, !352, !344, !347}
!361 = !{!362}
!362 = distinct !{!362, !363, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h47d2093944d38971E: %a"}
!363 = distinct !{!363, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h47d2093944d38971E"}
!364 = !{!365}
!365 = distinct !{!365, !363, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h47d2093944d38971E: %b"}
!366 = !{!367}
!367 = distinct !{!367, !368, !"_ZN58FIND_MINIMUM_RADIUS_ATLEAST_K_POINT_LIE_INSIDE_CIRCLE_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h1ee6c5ec76d06603E: %a"}
!368 = distinct !{!368, !"_ZN58FIND_MINIMUM_RADIUS_ATLEAST_K_POINT_LIE_INSIDE_CIRCLE_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h1ee6c5ec76d06603E"}
!369 = !{!370}
!370 = distinct !{!370, !368, !"_ZN58FIND_MINIMUM_RADIUS_ATLEAST_K_POINT_LIE_INSIDE_CIRCLE_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h1ee6c5ec76d06603E: %b"}
!371 = !{!372}
!372 = distinct !{!372, !373, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$f32$GT$11partial_cmp17h51acfdb7fcc2b22aE: %self"}
!373 = distinct !{!373, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$f32$GT$11partial_cmp17h51acfdb7fcc2b22aE"}
!374 = !{!375}
!375 = distinct !{!375, !373, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$f32$GT$11partial_cmp17h51acfdb7fcc2b22aE: %other"}
!376 = !{!372, !367, !362}
!377 = !{!375, !370, !365}
!378 = !{!367, !370, !362, !365}
!379 = !{!380}
!380 = distinct !{!380, !381, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h310d80ab4250adf7E: %a"}
!381 = distinct !{!381, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h310d80ab4250adf7E"}
!382 = !{!383}
!383 = distinct !{!383, !381, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h310d80ab4250adf7E: %b"}
!384 = !{!385}
!385 = distinct !{!385, !386, !"_ZN4core3ops8function5FnMut8call_mut17h7d33f9a75c1b7329E: argument 0"}
!386 = distinct !{!386, !"_ZN4core3ops8function5FnMut8call_mut17h7d33f9a75c1b7329E"}
!387 = !{!388}
!388 = distinct !{!388, !386, !"_ZN4core3ops8function5FnMut8call_mut17h7d33f9a75c1b7329E: argument 1"}
!389 = !{!390}
!390 = distinct !{!390, !391, !"cmpfunc: %a"}
!391 = distinct !{!391, !"cmpfunc"}
!392 = !{!393}
!393 = distinct !{!393, !391, !"cmpfunc: %b"}
!394 = !{!395}
!395 = distinct !{!395, !396, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!396 = distinct !{!396, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!397 = !{!398}
!398 = distinct !{!398, !396, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!399 = !{!395, !390, !385, !380}
!400 = !{!398, !393, !388, !383}
!401 = !{!402}
!402 = distinct !{!402, !403, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h310d80ab4250adf7E: %a"}
!403 = distinct !{!403, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h310d80ab4250adf7E"}
!404 = !{!405}
!405 = distinct !{!405, !403, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h310d80ab4250adf7E: %b"}
!406 = !{!407}
!407 = distinct !{!407, !408, !"_ZN4core3ops8function5FnMut8call_mut17h7d33f9a75c1b7329E: argument 0"}
!408 = distinct !{!408, !"_ZN4core3ops8function5FnMut8call_mut17h7d33f9a75c1b7329E"}
!409 = !{!410}
!410 = distinct !{!410, !408, !"_ZN4core3ops8function5FnMut8call_mut17h7d33f9a75c1b7329E: argument 1"}
!411 = !{!412}
!412 = distinct !{!412, !413, !"cmpfunc: %a"}
!413 = distinct !{!413, !"cmpfunc"}
!414 = !{!415}
!415 = distinct !{!415, !413, !"cmpfunc: %b"}
!416 = !{!417}
!417 = distinct !{!417, !418, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!418 = distinct !{!418, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!419 = !{!420}
!420 = distinct !{!420, !418, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!421 = !{!417, !412, !407, !402}
!422 = !{!420, !415, !410, !405}
!423 = !{!424}
!424 = distinct !{!424, !425, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h310d80ab4250adf7E: %a"}
!425 = distinct !{!425, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h310d80ab4250adf7E"}
!426 = !{!427}
!427 = distinct !{!427, !425, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h310d80ab4250adf7E: %b"}
!428 = !{!429}
!429 = distinct !{!429, !430, !"_ZN4core3ops8function5FnMut8call_mut17h7d33f9a75c1b7329E: argument 0"}
!430 = distinct !{!430, !"_ZN4core3ops8function5FnMut8call_mut17h7d33f9a75c1b7329E"}
!431 = !{!432}
!432 = distinct !{!432, !430, !"_ZN4core3ops8function5FnMut8call_mut17h7d33f9a75c1b7329E: argument 1"}
!433 = !{!434}
!434 = distinct !{!434, !435, !"cmpfunc: %a"}
!435 = distinct !{!435, !"cmpfunc"}
!436 = !{!437}
!437 = distinct !{!437, !435, !"cmpfunc: %b"}
!438 = !{!439}
!439 = distinct !{!439, !440, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!440 = distinct !{!440, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!441 = !{!442}
!442 = distinct !{!442, !440, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!443 = !{!439, !434, !429, !424}
!444 = !{!442, !437, !432, !427}
!445 = !{!446}
!446 = distinct !{!446, !447, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h310d80ab4250adf7E: %a"}
!447 = distinct !{!447, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h310d80ab4250adf7E"}
!448 = !{!449}
!449 = distinct !{!449, !447, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h310d80ab4250adf7E: %b"}
!450 = !{!451}
!451 = distinct !{!451, !452, !"_ZN4core3ops8function5FnMut8call_mut17h7d33f9a75c1b7329E: argument 0"}
!452 = distinct !{!452, !"_ZN4core3ops8function5FnMut8call_mut17h7d33f9a75c1b7329E"}
!453 = !{!454}
!454 = distinct !{!454, !452, !"_ZN4core3ops8function5FnMut8call_mut17h7d33f9a75c1b7329E: argument 1"}
!455 = !{!456}
!456 = distinct !{!456, !457, !"cmpfunc: %a"}
!457 = distinct !{!457, !"cmpfunc"}
!458 = !{!459}
!459 = distinct !{!459, !457, !"cmpfunc: %b"}
!460 = !{!461}
!461 = distinct !{!461, !462, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!462 = distinct !{!462, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!463 = !{!464}
!464 = distinct !{!464, !462, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!465 = !{!461, !456, !451, !446}
!466 = !{!464, !459, !454, !449}
!467 = !{!468}
!468 = distinct !{!468, !469, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h310d80ab4250adf7E: %a"}
!469 = distinct !{!469, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h310d80ab4250adf7E"}
!470 = !{!471}
!471 = distinct !{!471, !469, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h310d80ab4250adf7E: %b"}
!472 = !{!473}
!473 = distinct !{!473, !474, !"_ZN4core3ops8function5FnMut8call_mut17h7d33f9a75c1b7329E: argument 0"}
!474 = distinct !{!474, !"_ZN4core3ops8function5FnMut8call_mut17h7d33f9a75c1b7329E"}
!475 = !{!476}
!476 = distinct !{!476, !474, !"_ZN4core3ops8function5FnMut8call_mut17h7d33f9a75c1b7329E: argument 1"}
!477 = !{!478}
!478 = distinct !{!478, !479, !"cmpfunc: %a"}
!479 = distinct !{!479, !"cmpfunc"}
!480 = !{!481}
!481 = distinct !{!481, !479, !"cmpfunc: %b"}
!482 = !{!483}
!483 = distinct !{!483, !484, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!484 = distinct !{!484, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!485 = !{!486}
!486 = distinct !{!486, !484, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!487 = !{!483, !478, !473, !468}
!488 = !{!486, !481, !476, !471}
!489 = !{!490}
!490 = distinct !{!490, !491, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h310d80ab4250adf7E: %a"}
!491 = distinct !{!491, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h310d80ab4250adf7E"}
!492 = !{!493}
!493 = distinct !{!493, !491, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h310d80ab4250adf7E: %b"}
!494 = !{!495}
!495 = distinct !{!495, !496, !"_ZN4core3ops8function5FnMut8call_mut17h7d33f9a75c1b7329E: argument 0"}
!496 = distinct !{!496, !"_ZN4core3ops8function5FnMut8call_mut17h7d33f9a75c1b7329E"}
!497 = !{!498}
!498 = distinct !{!498, !496, !"_ZN4core3ops8function5FnMut8call_mut17h7d33f9a75c1b7329E: argument 1"}
!499 = !{!500}
!500 = distinct !{!500, !501, !"cmpfunc: %a"}
!501 = distinct !{!501, !"cmpfunc"}
!502 = !{!503}
!503 = distinct !{!503, !501, !"cmpfunc: %b"}
!504 = !{!505}
!505 = distinct !{!505, !506, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!506 = distinct !{!506, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!507 = !{!508}
!508 = distinct !{!508, !506, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!509 = !{!505, !500, !495, !490}
!510 = !{!508, !503, !498, !493}
!511 = !{!512}
!512 = distinct !{!512, !513, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h310d80ab4250adf7E: %a"}
!513 = distinct !{!513, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h310d80ab4250adf7E"}
!514 = !{!515}
!515 = distinct !{!515, !513, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h310d80ab4250adf7E: %b"}
!516 = !{!517}
!517 = distinct !{!517, !518, !"_ZN4core3ops8function5FnMut8call_mut17h7d33f9a75c1b7329E: argument 0"}
!518 = distinct !{!518, !"_ZN4core3ops8function5FnMut8call_mut17h7d33f9a75c1b7329E"}
!519 = !{!520}
!520 = distinct !{!520, !518, !"_ZN4core3ops8function5FnMut8call_mut17h7d33f9a75c1b7329E: argument 1"}
!521 = !{!522}
!522 = distinct !{!522, !523, !"cmpfunc: %a"}
!523 = distinct !{!523, !"cmpfunc"}
!524 = !{!525}
!525 = distinct !{!525, !523, !"cmpfunc: %b"}
!526 = !{!527}
!527 = distinct !{!527, !528, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!528 = distinct !{!528, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!529 = !{!530}
!530 = distinct !{!530, !528, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!531 = !{!527, !522, !517, !512}
!532 = !{!530, !525, !520, !515}
!533 = !{!534}
!534 = distinct !{!534, !535, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h310d80ab4250adf7E: %a"}
!535 = distinct !{!535, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h310d80ab4250adf7E"}
!536 = !{!537}
!537 = distinct !{!537, !535, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h310d80ab4250adf7E: %b"}
!538 = !{!539}
!539 = distinct !{!539, !540, !"_ZN4core3ops8function5FnMut8call_mut17h7d33f9a75c1b7329E: argument 0"}
!540 = distinct !{!540, !"_ZN4core3ops8function5FnMut8call_mut17h7d33f9a75c1b7329E"}
!541 = !{!542}
!542 = distinct !{!542, !540, !"_ZN4core3ops8function5FnMut8call_mut17h7d33f9a75c1b7329E: argument 1"}
!543 = !{!544}
!544 = distinct !{!544, !545, !"cmpfunc: %a"}
!545 = distinct !{!545, !"cmpfunc"}
!546 = !{!547}
!547 = distinct !{!547, !545, !"cmpfunc: %b"}
!548 = !{!549}
!549 = distinct !{!549, !550, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!550 = distinct !{!550, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!551 = !{!552}
!552 = distinct !{!552, !550, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!553 = !{!549, !544, !539, !534}
!554 = !{!552, !547, !542, !537}
!555 = !{!556}
!556 = distinct !{!556, !557, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h310d80ab4250adf7E: %a"}
!557 = distinct !{!557, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h310d80ab4250adf7E"}
!558 = !{!559}
!559 = distinct !{!559, !557, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h310d80ab4250adf7E: %b"}
!560 = !{!561}
!561 = distinct !{!561, !562, !"_ZN4core3ops8function5FnMut8call_mut17h7d33f9a75c1b7329E: argument 0"}
!562 = distinct !{!562, !"_ZN4core3ops8function5FnMut8call_mut17h7d33f9a75c1b7329E"}
!563 = !{!564}
!564 = distinct !{!564, !562, !"_ZN4core3ops8function5FnMut8call_mut17h7d33f9a75c1b7329E: argument 1"}
!565 = !{!566}
!566 = distinct !{!566, !567, !"cmpfunc: %a"}
!567 = distinct !{!567, !"cmpfunc"}
!568 = !{!569}
!569 = distinct !{!569, !567, !"cmpfunc: %b"}
!570 = !{!571}
!571 = distinct !{!571, !572, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!572 = distinct !{!572, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!573 = !{!574}
!574 = distinct !{!574, !572, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!575 = !{!571, !566, !561, !556}
!576 = !{!574, !569, !564, !559}
!577 = !{!578}
!578 = distinct !{!578, !579, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h310d80ab4250adf7E: %a"}
!579 = distinct !{!579, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h310d80ab4250adf7E"}
!580 = !{!581}
!581 = distinct !{!581, !579, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h310d80ab4250adf7E: %b"}
!582 = !{!583}
!583 = distinct !{!583, !584, !"_ZN4core3ops8function5FnMut8call_mut17h7d33f9a75c1b7329E: argument 0"}
!584 = distinct !{!584, !"_ZN4core3ops8function5FnMut8call_mut17h7d33f9a75c1b7329E"}
!585 = !{!586}
!586 = distinct !{!586, !584, !"_ZN4core3ops8function5FnMut8call_mut17h7d33f9a75c1b7329E: argument 1"}
!587 = !{!588}
!588 = distinct !{!588, !589, !"cmpfunc: %a"}
!589 = distinct !{!589, !"cmpfunc"}
!590 = !{!591}
!591 = distinct !{!591, !589, !"cmpfunc: %b"}
!592 = !{!593}
!593 = distinct !{!593, !594, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!594 = distinct !{!594, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!595 = !{!596}
!596 = distinct !{!596, !594, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!597 = !{!593, !588, !583, !578}
!598 = !{!596, !591, !586, !581}
!599 = !{!600}
!600 = distinct !{!600, !601, !"_ZN4core5slice4sort6shared9smallsort19bidirectional_merge17h9a78ceb788512c3fE: %v.0"}
!601 = distinct !{!601, !"_ZN4core5slice4sort6shared9smallsort19bidirectional_merge17h9a78ceb788512c3fE"}
!602 = !{!603}
!603 = distinct !{!603, !604, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h310d80ab4250adf7E: %a"}
!604 = distinct !{!604, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h310d80ab4250adf7E"}
!605 = !{!606}
!606 = distinct !{!606, !604, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h310d80ab4250adf7E: %b"}
!607 = !{!608}
!608 = distinct !{!608, !609, !"_ZN4core3ops8function5FnMut8call_mut17h7d33f9a75c1b7329E: argument 0"}
!609 = distinct !{!609, !"_ZN4core3ops8function5FnMut8call_mut17h7d33f9a75c1b7329E"}
!610 = !{!611}
!611 = distinct !{!611, !612, !"_ZN4core5slice4sort6shared9smallsort8merge_up17h123fe25a22554e1dE: %_0"}
!612 = distinct !{!612, !"_ZN4core5slice4sort6shared9smallsort8merge_up17h123fe25a22554e1dE"}
!613 = !{!614}
!614 = distinct !{!614, !609, !"_ZN4core3ops8function5FnMut8call_mut17h7d33f9a75c1b7329E: argument 1"}
!615 = !{!616}
!616 = distinct !{!616, !617, !"cmpfunc: %a"}
!617 = distinct !{!617, !"cmpfunc"}
!618 = !{!619}
!619 = distinct !{!619, !617, !"cmpfunc: %b"}
!620 = !{!621}
!621 = distinct !{!621, !622, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!622 = distinct !{!622, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!623 = !{!624}
!624 = distinct !{!624, !622, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!625 = !{!621, !616, !608, !603, !600}
!626 = !{!624, !619, !614, !606, !611}
!627 = !{!624, !619, !614, !606, !600}
!628 = !{!621, !616, !608, !603, !611}
!629 = !{!611, !630, !600}
!630 = distinct !{!630, !612, !"_ZN4core5slice4sort6shared9smallsort8merge_up17h123fe25a22554e1dE: %is_less"}
!631 = !{!632}
!632 = distinct !{!632, !633, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h310d80ab4250adf7E: %a"}
!633 = distinct !{!633, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h310d80ab4250adf7E"}
!634 = !{!635}
!635 = distinct !{!635, !633, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h310d80ab4250adf7E: %b"}
!636 = !{!637}
!637 = distinct !{!637, !638, !"_ZN4core3ops8function5FnMut8call_mut17h7d33f9a75c1b7329E: argument 0"}
!638 = distinct !{!638, !"_ZN4core3ops8function5FnMut8call_mut17h7d33f9a75c1b7329E"}
!639 = !{!640}
!640 = distinct !{!640, !641, !"_ZN4core5slice4sort6shared9smallsort10merge_down17hfcb97d1e7d3bd007E: %_0"}
!641 = distinct !{!641, !"_ZN4core5slice4sort6shared9smallsort10merge_down17hfcb97d1e7d3bd007E"}
!642 = !{!643}
!643 = distinct !{!643, !638, !"_ZN4core3ops8function5FnMut8call_mut17h7d33f9a75c1b7329E: argument 1"}
!644 = !{!645}
!645 = distinct !{!645, !646, !"cmpfunc: %a"}
!646 = distinct !{!646, !"cmpfunc"}
!647 = !{!648}
!648 = distinct !{!648, !646, !"cmpfunc: %b"}
!649 = !{!650}
!650 = distinct !{!650, !651, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!651 = distinct !{!651, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!652 = !{!653}
!653 = distinct !{!653, !651, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!654 = !{!650, !645, !637, !632, !600}
!655 = !{!653, !648, !643, !635, !640}
!656 = !{!653, !648, !643, !635, !600}
!657 = !{!650, !645, !637, !632, !640}
!658 = !{!640, !659, !600}
!659 = distinct !{!659, !641, !"_ZN4core5slice4sort6shared9smallsort10merge_down17hfcb97d1e7d3bd007E: %is_less"}
!660 = !{!661}
!661 = distinct !{!661, !604, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h310d80ab4250adf7E: %a:It1"}
!662 = !{!663}
!663 = distinct !{!663, !604, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h310d80ab4250adf7E: %b:It1"}
!664 = !{!665}
!665 = distinct !{!665, !609, !"_ZN4core3ops8function5FnMut8call_mut17h7d33f9a75c1b7329E: argument 0:It1"}
!666 = !{!667}
!667 = distinct !{!667, !609, !"_ZN4core3ops8function5FnMut8call_mut17h7d33f9a75c1b7329E: argument 1:It1"}
!668 = !{!669}
!669 = distinct !{!669, !617, !"cmpfunc: %a:It1"}
!670 = !{!671}
!671 = distinct !{!671, !617, !"cmpfunc: %b:It1"}
!672 = !{!673}
!673 = distinct !{!673, !622, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self:It1"}
!674 = !{!675}
!675 = distinct !{!675, !622, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other:It1"}
!676 = !{!673, !669, !665, !661, !600}
!677 = !{!675, !671, !667, !663, !611}
!678 = !{!675, !671, !667, !663, !600}
!679 = !{!673, !669, !665, !661, !611}
!680 = !{!681}
!681 = distinct !{!681, !633, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h310d80ab4250adf7E: %a:It1"}
!682 = !{!683}
!683 = distinct !{!683, !633, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h310d80ab4250adf7E: %b:It1"}
!684 = !{!685}
!685 = distinct !{!685, !638, !"_ZN4core3ops8function5FnMut8call_mut17h7d33f9a75c1b7329E: argument 0:It1"}
!686 = !{!687}
!687 = distinct !{!687, !638, !"_ZN4core3ops8function5FnMut8call_mut17h7d33f9a75c1b7329E: argument 1:It1"}
!688 = !{!689}
!689 = distinct !{!689, !646, !"cmpfunc: %a:It1"}
!690 = !{!691}
!691 = distinct !{!691, !646, !"cmpfunc: %b:It1"}
!692 = !{!693}
!693 = distinct !{!693, !651, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self:It1"}
!694 = !{!695}
!695 = distinct !{!695, !651, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other:It1"}
!696 = !{!693, !689, !685, !681, !600}
!697 = !{!695, !691, !687, !683, !640}
!698 = !{!695, !691, !687, !683, !600}
!699 = !{!693, !689, !685, !681, !640}
!700 = !{!701}
!701 = distinct !{!701, !604, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h310d80ab4250adf7E: %a:It2"}
!702 = !{!703}
!703 = distinct !{!703, !604, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h310d80ab4250adf7E: %b:It2"}
!704 = !{!705}
!705 = distinct !{!705, !609, !"_ZN4core3ops8function5FnMut8call_mut17h7d33f9a75c1b7329E: argument 0:It2"}
!706 = !{!707}
!707 = distinct !{!707, !609, !"_ZN4core3ops8function5FnMut8call_mut17h7d33f9a75c1b7329E: argument 1:It2"}
!708 = !{!709}
!709 = distinct !{!709, !617, !"cmpfunc: %a:It2"}
!710 = !{!711}
!711 = distinct !{!711, !617, !"cmpfunc: %b:It2"}
!712 = !{!713}
!713 = distinct !{!713, !622, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self:It2"}
!714 = !{!715}
!715 = distinct !{!715, !622, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other:It2"}
!716 = !{!713, !709, !705, !701, !600}
!717 = !{!715, !711, !707, !703, !611}
!718 = !{!715, !711, !707, !703, !600}
!719 = !{!713, !709, !705, !701, !611}
!720 = !{!721}
!721 = distinct !{!721, !633, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h310d80ab4250adf7E: %a:It2"}
!722 = !{!723}
!723 = distinct !{!723, !633, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h310d80ab4250adf7E: %b:It2"}
!724 = !{!725}
!725 = distinct !{!725, !638, !"_ZN4core3ops8function5FnMut8call_mut17h7d33f9a75c1b7329E: argument 0:It2"}
!726 = !{!727}
!727 = distinct !{!727, !638, !"_ZN4core3ops8function5FnMut8call_mut17h7d33f9a75c1b7329E: argument 1:It2"}
!728 = !{!729}
!729 = distinct !{!729, !646, !"cmpfunc: %a:It2"}
!730 = !{!731}
!731 = distinct !{!731, !646, !"cmpfunc: %b:It2"}
!732 = !{!733}
!733 = distinct !{!733, !651, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self:It2"}
!734 = !{!735}
!735 = distinct !{!735, !651, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other:It2"}
!736 = !{!733, !729, !725, !721, !600}
!737 = !{!735, !731, !727, !723, !640}
!738 = !{!735, !731, !727, !723, !600}
!739 = !{!733, !729, !725, !721, !640}
!740 = !{!741}
!741 = distinct !{!741, !604, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h310d80ab4250adf7E: %a:It3"}
!742 = !{!743}
!743 = distinct !{!743, !604, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h310d80ab4250adf7E: %b:It3"}
!744 = !{!745}
!745 = distinct !{!745, !609, !"_ZN4core3ops8function5FnMut8call_mut17h7d33f9a75c1b7329E: argument 0:It3"}
!746 = !{!747}
!747 = distinct !{!747, !609, !"_ZN4core3ops8function5FnMut8call_mut17h7d33f9a75c1b7329E: argument 1:It3"}
!748 = !{!749}
!749 = distinct !{!749, !617, !"cmpfunc: %a:It3"}
!750 = !{!751}
!751 = distinct !{!751, !617, !"cmpfunc: %b:It3"}
!752 = !{!753}
!753 = distinct !{!753, !622, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self:It3"}
!754 = !{!755}
!755 = distinct !{!755, !622, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other:It3"}
!756 = !{!753, !749, !745, !741, !600}
!757 = !{!755, !751, !747, !743, !611}
!758 = !{!755, !751, !747, !743, !600}
!759 = !{!753, !749, !745, !741, !611}
!760 = !{!761}
!761 = distinct !{!761, !633, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h310d80ab4250adf7E: %a:It3"}
!762 = !{!763}
!763 = distinct !{!763, !633, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h310d80ab4250adf7E: %b:It3"}
!764 = !{!765}
!765 = distinct !{!765, !638, !"_ZN4core3ops8function5FnMut8call_mut17h7d33f9a75c1b7329E: argument 0:It3"}
!766 = !{!767}
!767 = distinct !{!767, !638, !"_ZN4core3ops8function5FnMut8call_mut17h7d33f9a75c1b7329E: argument 1:It3"}
!768 = !{!769}
!769 = distinct !{!769, !646, !"cmpfunc: %a:It3"}
!770 = !{!771}
!771 = distinct !{!771, !646, !"cmpfunc: %b:It3"}
!772 = !{!773}
!773 = distinct !{!773, !651, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self:It3"}
!774 = !{!775}
!775 = distinct !{!775, !651, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other:It3"}
!776 = !{!773, !769, !765, !761, !600}
!777 = !{!775, !771, !767, !763, !640}
!778 = !{!775, !771, !767, !763, !600}
!779 = !{!773, !769, !765, !761, !640}
!780 = !{!"branch_weights", i32 4001, i32 4000000}
!781 = !{!782}
!782 = distinct !{!782, !783, !"_ZN4core5slice4sort6shared9smallsort19bidirectional_merge17hda7045743ed9389cE: %v.0"}
!783 = distinct !{!783, !"_ZN4core5slice4sort6shared9smallsort19bidirectional_merge17hda7045743ed9389cE"}
!784 = !{!785}
!785 = distinct !{!785, !786, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h47d2093944d38971E: %a"}
!786 = distinct !{!786, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h47d2093944d38971E"}
!787 = !{!788}
!788 = distinct !{!788, !786, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h47d2093944d38971E: %b"}
!789 = !{!790}
!790 = distinct !{!790, !791, !"_ZN58FIND_MINIMUM_RADIUS_ATLEAST_K_POINT_LIE_INSIDE_CIRCLE_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h1ee6c5ec76d06603E: %a"}
!791 = distinct !{!791, !"_ZN58FIND_MINIMUM_RADIUS_ATLEAST_K_POINT_LIE_INSIDE_CIRCLE_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h1ee6c5ec76d06603E"}
!792 = !{!793}
!793 = distinct !{!793, !794, !"_ZN4core5slice4sort6shared9smallsort8merge_up17hb2b148d1a9d4a3a5E: %_0"}
!794 = distinct !{!794, !"_ZN4core5slice4sort6shared9smallsort8merge_up17hb2b148d1a9d4a3a5E"}
!795 = !{!796}
!796 = distinct !{!796, !791, !"_ZN58FIND_MINIMUM_RADIUS_ATLEAST_K_POINT_LIE_INSIDE_CIRCLE_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h1ee6c5ec76d06603E: %b"}
!797 = !{!798}
!798 = distinct !{!798, !799, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$f32$GT$11partial_cmp17h51acfdb7fcc2b22aE: %self"}
!799 = distinct !{!799, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$f32$GT$11partial_cmp17h51acfdb7fcc2b22aE"}
!800 = !{!801}
!801 = distinct !{!801, !799, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$f32$GT$11partial_cmp17h51acfdb7fcc2b22aE: %other"}
!802 = !{!798, !790, !785, !782}
!803 = !{!801, !796, !788, !793}
!804 = !{!801, !796, !788, !782}
!805 = !{!798, !790, !785, !793}
!806 = !{!790, !796, !785, !788, !793, !782}
!807 = !{!793, !808}
!808 = distinct !{!808, !794, !"_ZN4core5slice4sort6shared9smallsort8merge_up17hb2b148d1a9d4a3a5E: %is_less"}
!809 = !{!793, !808, !782}
!810 = !{!811}
!811 = distinct !{!811, !812, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h47d2093944d38971E: %a"}
!812 = distinct !{!812, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h47d2093944d38971E"}
!813 = !{!814}
!814 = distinct !{!814, !812, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h47d2093944d38971E: %b"}
!815 = !{!816}
!816 = distinct !{!816, !817, !"_ZN58FIND_MINIMUM_RADIUS_ATLEAST_K_POINT_LIE_INSIDE_CIRCLE_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h1ee6c5ec76d06603E: %a"}
!817 = distinct !{!817, !"_ZN58FIND_MINIMUM_RADIUS_ATLEAST_K_POINT_LIE_INSIDE_CIRCLE_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h1ee6c5ec76d06603E"}
!818 = !{!819}
!819 = distinct !{!819, !820, !"_ZN4core5slice4sort6shared9smallsort10merge_down17h811c9f613b35c0b0E: %_0"}
!820 = distinct !{!820, !"_ZN4core5slice4sort6shared9smallsort10merge_down17h811c9f613b35c0b0E"}
!821 = !{!822}
!822 = distinct !{!822, !817, !"_ZN58FIND_MINIMUM_RADIUS_ATLEAST_K_POINT_LIE_INSIDE_CIRCLE_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h1ee6c5ec76d06603E: %b"}
!823 = !{!824}
!824 = distinct !{!824, !825, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$f32$GT$11partial_cmp17h51acfdb7fcc2b22aE: %self"}
!825 = distinct !{!825, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$f32$GT$11partial_cmp17h51acfdb7fcc2b22aE"}
!826 = !{!827}
!827 = distinct !{!827, !825, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$f32$GT$11partial_cmp17h51acfdb7fcc2b22aE: %other"}
!828 = !{!824, !816, !811, !782}
!829 = !{!827, !822, !814, !819}
!830 = !{!827, !822, !814, !782}
!831 = !{!824, !816, !811, !819}
!832 = !{!816, !822, !811, !814, !819, !782}
!833 = !{!819, !834}
!834 = distinct !{!834, !820, !"_ZN4core5slice4sort6shared9smallsort10merge_down17h811c9f613b35c0b0E: %is_less"}
!835 = !{!819, !834, !782}
!836 = !{!837}
!837 = distinct !{!837, !786, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h47d2093944d38971E: %a:It1"}
!838 = !{!839}
!839 = distinct !{!839, !786, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h47d2093944d38971E: %b:It1"}
!840 = !{!841}
!841 = distinct !{!841, !791, !"_ZN58FIND_MINIMUM_RADIUS_ATLEAST_K_POINT_LIE_INSIDE_CIRCLE_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h1ee6c5ec76d06603E: %a:It1"}
!842 = !{!843}
!843 = distinct !{!843, !791, !"_ZN58FIND_MINIMUM_RADIUS_ATLEAST_K_POINT_LIE_INSIDE_CIRCLE_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h1ee6c5ec76d06603E: %b:It1"}
!844 = !{!845}
!845 = distinct !{!845, !799, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$f32$GT$11partial_cmp17h51acfdb7fcc2b22aE: %self:It1"}
!846 = !{!847}
!847 = distinct !{!847, !799, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$f32$GT$11partial_cmp17h51acfdb7fcc2b22aE: %other:It1"}
!848 = !{!845, !841, !837, !782}
!849 = !{!847, !843, !839, !793}
!850 = !{!847, !843, !839, !782}
!851 = !{!845, !841, !837, !793}
!852 = !{!853}
!853 = distinct !{!853, !812, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h47d2093944d38971E: %a:It1"}
!854 = !{!855}
!855 = distinct !{!855, !812, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h47d2093944d38971E: %b:It1"}
!856 = !{!857}
!857 = distinct !{!857, !817, !"_ZN58FIND_MINIMUM_RADIUS_ATLEAST_K_POINT_LIE_INSIDE_CIRCLE_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h1ee6c5ec76d06603E: %a:It1"}
!858 = !{!859}
!859 = distinct !{!859, !817, !"_ZN58FIND_MINIMUM_RADIUS_ATLEAST_K_POINT_LIE_INSIDE_CIRCLE_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h1ee6c5ec76d06603E: %b:It1"}
!860 = !{!861}
!861 = distinct !{!861, !825, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$f32$GT$11partial_cmp17h51acfdb7fcc2b22aE: %self:It1"}
!862 = !{!863}
!863 = distinct !{!863, !825, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$f32$GT$11partial_cmp17h51acfdb7fcc2b22aE: %other:It1"}
!864 = !{!861, !857, !853, !782}
!865 = !{!863, !859, !855, !819}
!866 = !{!863, !859, !855, !782}
!867 = !{!861, !857, !853, !819}
!868 = !{!869}
!869 = distinct !{!869, !786, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h47d2093944d38971E: %a:It2"}
!870 = !{!871}
!871 = distinct !{!871, !786, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h47d2093944d38971E: %b:It2"}
!872 = !{!873}
!873 = distinct !{!873, !791, !"_ZN58FIND_MINIMUM_RADIUS_ATLEAST_K_POINT_LIE_INSIDE_CIRCLE_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h1ee6c5ec76d06603E: %a:It2"}
!874 = !{!875}
!875 = distinct !{!875, !791, !"_ZN58FIND_MINIMUM_RADIUS_ATLEAST_K_POINT_LIE_INSIDE_CIRCLE_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h1ee6c5ec76d06603E: %b:It2"}
!876 = !{!877}
!877 = distinct !{!877, !799, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$f32$GT$11partial_cmp17h51acfdb7fcc2b22aE: %self:It2"}
!878 = !{!879}
!879 = distinct !{!879, !799, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$f32$GT$11partial_cmp17h51acfdb7fcc2b22aE: %other:It2"}
!880 = !{!877, !873, !869, !782}
!881 = !{!879, !875, !871, !793}
!882 = !{!879, !875, !871, !782}
!883 = !{!877, !873, !869, !793}
!884 = !{!885}
!885 = distinct !{!885, !812, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h47d2093944d38971E: %a:It2"}
!886 = !{!887}
!887 = distinct !{!887, !812, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h47d2093944d38971E: %b:It2"}
!888 = !{!889}
!889 = distinct !{!889, !817, !"_ZN58FIND_MINIMUM_RADIUS_ATLEAST_K_POINT_LIE_INSIDE_CIRCLE_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h1ee6c5ec76d06603E: %a:It2"}
!890 = !{!891}
!891 = distinct !{!891, !817, !"_ZN58FIND_MINIMUM_RADIUS_ATLEAST_K_POINT_LIE_INSIDE_CIRCLE_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h1ee6c5ec76d06603E: %b:It2"}
!892 = !{!893}
!893 = distinct !{!893, !825, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$f32$GT$11partial_cmp17h51acfdb7fcc2b22aE: %self:It2"}
!894 = !{!895}
!895 = distinct !{!895, !825, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$f32$GT$11partial_cmp17h51acfdb7fcc2b22aE: %other:It2"}
!896 = !{!893, !889, !885, !782}
!897 = !{!895, !891, !887, !819}
!898 = !{!895, !891, !887, !782}
!899 = !{!893, !889, !885, !819}
!900 = !{!901}
!901 = distinct !{!901, !786, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h47d2093944d38971E: %a:It3"}
!902 = !{!903}
!903 = distinct !{!903, !786, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h47d2093944d38971E: %b:It3"}
!904 = !{!905}
!905 = distinct !{!905, !791, !"_ZN58FIND_MINIMUM_RADIUS_ATLEAST_K_POINT_LIE_INSIDE_CIRCLE_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h1ee6c5ec76d06603E: %a:It3"}
!906 = !{!907}
!907 = distinct !{!907, !791, !"_ZN58FIND_MINIMUM_RADIUS_ATLEAST_K_POINT_LIE_INSIDE_CIRCLE_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h1ee6c5ec76d06603E: %b:It3"}
!908 = !{!909}
!909 = distinct !{!909, !799, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$f32$GT$11partial_cmp17h51acfdb7fcc2b22aE: %self:It3"}
!910 = !{!911}
!911 = distinct !{!911, !799, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$f32$GT$11partial_cmp17h51acfdb7fcc2b22aE: %other:It3"}
!912 = !{!909, !905, !901, !782}
!913 = !{!911, !907, !903, !793}
!914 = !{!911, !907, !903, !782}
!915 = !{!909, !905, !901, !793}
!916 = !{!917}
!917 = distinct !{!917, !812, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h47d2093944d38971E: %a:It3"}
!918 = !{!919}
!919 = distinct !{!919, !812, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h47d2093944d38971E: %b:It3"}
!920 = !{!921}
!921 = distinct !{!921, !817, !"_ZN58FIND_MINIMUM_RADIUS_ATLEAST_K_POINT_LIE_INSIDE_CIRCLE_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h1ee6c5ec76d06603E: %a:It3"}
!922 = !{!923}
!923 = distinct !{!923, !817, !"_ZN58FIND_MINIMUM_RADIUS_ATLEAST_K_POINT_LIE_INSIDE_CIRCLE_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h1ee6c5ec76d06603E: %b:It3"}
!924 = !{!925}
!925 = distinct !{!925, !825, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$f32$GT$11partial_cmp17h51acfdb7fcc2b22aE: %self:It3"}
!926 = !{!927}
!927 = distinct !{!927, !825, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$f32$GT$11partial_cmp17h51acfdb7fcc2b22aE: %other:It3"}
!928 = !{!925, !921, !917, !782}
!929 = !{!927, !923, !919, !819}
!930 = !{!927, !923, !919, !782}
!931 = !{!925, !921, !917, !819}
!932 = !{!933}
!933 = distinct !{!933, !934, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h310d80ab4250adf7E: %a"}
!934 = distinct !{!934, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h310d80ab4250adf7E"}
!935 = !{!936}
!936 = distinct !{!936, !934, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h310d80ab4250adf7E: %b"}
!937 = !{!938}
!938 = distinct !{!938, !939, !"_ZN4core3ops8function5FnMut8call_mut17h7d33f9a75c1b7329E: argument 0"}
!939 = distinct !{!939, !"_ZN4core3ops8function5FnMut8call_mut17h7d33f9a75c1b7329E"}
!940 = !{!941}
!941 = distinct !{!941, !942, !"_ZN4core5slice4sort6shared9smallsort8merge_up17h123fe25a22554e1dE: %_0"}
!942 = distinct !{!942, !"_ZN4core5slice4sort6shared9smallsort8merge_up17h123fe25a22554e1dE"}
!943 = !{!944}
!944 = distinct !{!944, !939, !"_ZN4core3ops8function5FnMut8call_mut17h7d33f9a75c1b7329E: argument 1"}
!945 = !{!946}
!946 = distinct !{!946, !947, !"cmpfunc: %a"}
!947 = distinct !{!947, !"cmpfunc"}
!948 = !{!949}
!949 = distinct !{!949, !947, !"cmpfunc: %b"}
!950 = !{!951}
!951 = distinct !{!951, !952, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!952 = distinct !{!952, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!953 = !{!954}
!954 = distinct !{!954, !952, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!955 = !{!951, !946, !938, !933}
!956 = !{!954, !949, !944, !936, !941}
!957 = !{!954, !949, !944, !936}
!958 = !{!951, !946, !938, !933, !941}
!959 = !{!941, !960}
!960 = distinct !{!960, !942, !"_ZN4core5slice4sort6shared9smallsort8merge_up17h123fe25a22554e1dE: %is_less"}
!961 = !{!962}
!962 = distinct !{!962, !963, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h310d80ab4250adf7E: %a"}
!963 = distinct !{!963, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h310d80ab4250adf7E"}
!964 = !{!965}
!965 = distinct !{!965, !963, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h310d80ab4250adf7E: %b"}
!966 = !{!967}
!967 = distinct !{!967, !968, !"_ZN4core3ops8function5FnMut8call_mut17h7d33f9a75c1b7329E: argument 0"}
!968 = distinct !{!968, !"_ZN4core3ops8function5FnMut8call_mut17h7d33f9a75c1b7329E"}
!969 = !{!970}
!970 = distinct !{!970, !971, !"_ZN4core5slice4sort6shared9smallsort10merge_down17hfcb97d1e7d3bd007E: %_0"}
!971 = distinct !{!971, !"_ZN4core5slice4sort6shared9smallsort10merge_down17hfcb97d1e7d3bd007E"}
!972 = !{!973}
!973 = distinct !{!973, !968, !"_ZN4core3ops8function5FnMut8call_mut17h7d33f9a75c1b7329E: argument 1"}
!974 = !{!975}
!975 = distinct !{!975, !976, !"cmpfunc: %a"}
!976 = distinct !{!976, !"cmpfunc"}
!977 = !{!978}
!978 = distinct !{!978, !976, !"cmpfunc: %b"}
!979 = !{!980}
!980 = distinct !{!980, !981, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!981 = distinct !{!981, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!982 = !{!983}
!983 = distinct !{!983, !981, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!984 = !{!980, !975, !967, !962}
!985 = !{!983, !978, !973, !965, !970}
!986 = !{!983, !978, !973, !965}
!987 = !{!980, !975, !967, !962, !970}
!988 = !{!970, !989}
!989 = distinct !{!989, !971, !"_ZN4core5slice4sort6shared9smallsort10merge_down17hfcb97d1e7d3bd007E: %is_less"}
!990 = !{!991}
!991 = distinct !{!991, !992, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h47d2093944d38971E: %a"}
!992 = distinct !{!992, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h47d2093944d38971E"}
!993 = !{!994}
!994 = distinct !{!994, !992, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h47d2093944d38971E: %b"}
!995 = !{!996}
!996 = distinct !{!996, !997, !"_ZN58FIND_MINIMUM_RADIUS_ATLEAST_K_POINT_LIE_INSIDE_CIRCLE_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h1ee6c5ec76d06603E: %a"}
!997 = distinct !{!997, !"_ZN58FIND_MINIMUM_RADIUS_ATLEAST_K_POINT_LIE_INSIDE_CIRCLE_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h1ee6c5ec76d06603E"}
!998 = !{!999}
!999 = distinct !{!999, !1000, !"_ZN4core5slice4sort6shared9smallsort8merge_up17hb2b148d1a9d4a3a5E: %_0"}
!1000 = distinct !{!1000, !"_ZN4core5slice4sort6shared9smallsort8merge_up17hb2b148d1a9d4a3a5E"}
!1001 = !{!1002}
!1002 = distinct !{!1002, !997, !"_ZN58FIND_MINIMUM_RADIUS_ATLEAST_K_POINT_LIE_INSIDE_CIRCLE_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h1ee6c5ec76d06603E: %b"}
!1003 = !{!1004}
!1004 = distinct !{!1004, !1005, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$f32$GT$11partial_cmp17h51acfdb7fcc2b22aE: %self"}
!1005 = distinct !{!1005, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$f32$GT$11partial_cmp17h51acfdb7fcc2b22aE"}
!1006 = !{!1007}
!1007 = distinct !{!1007, !1005, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$f32$GT$11partial_cmp17h51acfdb7fcc2b22aE: %other"}
!1008 = !{!1004, !996, !991}
!1009 = !{!1007, !1002, !994, !999}
!1010 = !{!1007, !1002, !994}
!1011 = !{!1004, !996, !991, !999}
!1012 = !{!996, !1002, !991, !994, !999}
!1013 = !{!999, !1014}
!1014 = distinct !{!1014, !1000, !"_ZN4core5slice4sort6shared9smallsort8merge_up17hb2b148d1a9d4a3a5E: %is_less"}
!1015 = !{!1016}
!1016 = distinct !{!1016, !1017, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h47d2093944d38971E: %a"}
!1017 = distinct !{!1017, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h47d2093944d38971E"}
!1018 = !{!1019}
!1019 = distinct !{!1019, !1017, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h47d2093944d38971E: %b"}
!1020 = !{!1021}
!1021 = distinct !{!1021, !1022, !"_ZN58FIND_MINIMUM_RADIUS_ATLEAST_K_POINT_LIE_INSIDE_CIRCLE_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h1ee6c5ec76d06603E: %a"}
!1022 = distinct !{!1022, !"_ZN58FIND_MINIMUM_RADIUS_ATLEAST_K_POINT_LIE_INSIDE_CIRCLE_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h1ee6c5ec76d06603E"}
!1023 = !{!1024}
!1024 = distinct !{!1024, !1025, !"_ZN4core5slice4sort6shared9smallsort10merge_down17h811c9f613b35c0b0E: %_0"}
!1025 = distinct !{!1025, !"_ZN4core5slice4sort6shared9smallsort10merge_down17h811c9f613b35c0b0E"}
!1026 = !{!1027}
!1027 = distinct !{!1027, !1022, !"_ZN58FIND_MINIMUM_RADIUS_ATLEAST_K_POINT_LIE_INSIDE_CIRCLE_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h1ee6c5ec76d06603E: %b"}
!1028 = !{!1029}
!1029 = distinct !{!1029, !1030, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$f32$GT$11partial_cmp17h51acfdb7fcc2b22aE: %self"}
!1030 = distinct !{!1030, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$f32$GT$11partial_cmp17h51acfdb7fcc2b22aE"}
!1031 = !{!1032}
!1032 = distinct !{!1032, !1030, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$f32$GT$11partial_cmp17h51acfdb7fcc2b22aE: %other"}
!1033 = !{!1029, !1021, !1016}
!1034 = !{!1032, !1027, !1019, !1024}
!1035 = !{!1032, !1027, !1019}
!1036 = !{!1029, !1021, !1016, !1024}
!1037 = !{!1021, !1027, !1016, !1019, !1024}
!1038 = !{!1024, !1039}
!1039 = distinct !{!1039, !1025, !"_ZN4core5slice4sort6shared9smallsort10merge_down17h811c9f613b35c0b0E: %is_less"}
!1040 = !{!1041}
!1041 = distinct !{!1041, !1042, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h47d2093944d38971E: %a"}
!1042 = distinct !{!1042, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h47d2093944d38971E"}
!1043 = !{!1044}
!1044 = distinct !{!1044, !1042, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h47d2093944d38971E: %b"}
!1045 = !{!1046}
!1046 = distinct !{!1046, !1047, !"_ZN58FIND_MINIMUM_RADIUS_ATLEAST_K_POINT_LIE_INSIDE_CIRCLE_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h1ee6c5ec76d06603E: %a"}
!1047 = distinct !{!1047, !"_ZN58FIND_MINIMUM_RADIUS_ATLEAST_K_POINT_LIE_INSIDE_CIRCLE_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h1ee6c5ec76d06603E"}
!1048 = !{!1049}
!1049 = distinct !{!1049, !1047, !"_ZN58FIND_MINIMUM_RADIUS_ATLEAST_K_POINT_LIE_INSIDE_CIRCLE_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h1ee6c5ec76d06603E: %b"}
!1050 = !{!1051}
!1051 = distinct !{!1051, !1052, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$f32$GT$11partial_cmp17h51acfdb7fcc2b22aE: %self"}
!1052 = distinct !{!1052, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$f32$GT$11partial_cmp17h51acfdb7fcc2b22aE"}
!1053 = !{!1054}
!1054 = distinct !{!1054, !1052, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$f32$GT$11partial_cmp17h51acfdb7fcc2b22aE: %other"}
!1055 = !{!1051, !1046, !1041}
!1056 = !{!1054, !1049, !1044}
!1057 = !{!1046, !1049, !1041, !1044}
!1058 = !{!1059, !1061, !1063}
!1059 = distinct !{!1059, !1060, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$f32$GT$11partial_cmp17h51acfdb7fcc2b22aE: %other"}
!1060 = distinct !{!1060, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$f32$GT$11partial_cmp17h51acfdb7fcc2b22aE"}
!1061 = distinct !{!1061, !1062, !"_ZN58FIND_MINIMUM_RADIUS_ATLEAST_K_POINT_LIE_INSIDE_CIRCLE_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h1ee6c5ec76d06603E: %b"}
!1062 = distinct !{!1062, !"_ZN58FIND_MINIMUM_RADIUS_ATLEAST_K_POINT_LIE_INSIDE_CIRCLE_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h1ee6c5ec76d06603E"}
!1063 = distinct !{!1063, !1064, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h47d2093944d38971E: %b"}
!1064 = distinct !{!1064, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h47d2093944d38971E"}
!1065 = !{!1066, !1067, !1068}
!1066 = distinct !{!1066, !1060, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$f32$GT$11partial_cmp17h51acfdb7fcc2b22aE: %self"}
!1067 = distinct !{!1067, !1062, !"_ZN58FIND_MINIMUM_RADIUS_ATLEAST_K_POINT_LIE_INSIDE_CIRCLE_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h1ee6c5ec76d06603E: %a"}
!1068 = distinct !{!1068, !1064, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h47d2093944d38971E: %a"}
!1069 = !{!1070, !1072}
!1070 = distinct !{!1070, !1071, !"_ZN99_$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h0fd8ed5edd0e04a3E: %self"}
!1071 = distinct !{!1071, !"_ZN99_$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h0fd8ed5edd0e04a3E"}
!1072 = distinct !{!1072, !1073, !"_ZN4core3ptr80drop_in_place$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$f32$GT$$GT$17h1b2519a8f05f1306E: %_1"}
!1073 = distinct !{!1073, !"_ZN4core3ptr80drop_in_place$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$f32$GT$$GT$17h1b2519a8f05f1306E"}
!1074 = !{!1075, !1077}
!1075 = distinct !{!1075, !1076, !"_ZN99_$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h0fd8ed5edd0e04a3E: %self"}
!1076 = distinct !{!1076, !"_ZN99_$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h0fd8ed5edd0e04a3E"}
!1077 = distinct !{!1077, !1078, !"_ZN4core3ptr80drop_in_place$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$f32$GT$$GT$17h1b2519a8f05f1306E: %_1"}
!1078 = distinct !{!1078, !"_ZN4core3ptr80drop_in_place$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$f32$GT$$GT$17h1b2519a8f05f1306E"}
!1079 = !{!1080}
!1080 = distinct !{!1080, !1081, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h310d80ab4250adf7E: %a"}
!1081 = distinct !{!1081, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h310d80ab4250adf7E"}
!1082 = !{!1083}
!1083 = distinct !{!1083, !1081, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h310d80ab4250adf7E: %b"}
!1084 = !{!1085}
!1085 = distinct !{!1085, !1086, !"_ZN4core3ops8function5FnMut8call_mut17h7d33f9a75c1b7329E: argument 0"}
!1086 = distinct !{!1086, !"_ZN4core3ops8function5FnMut8call_mut17h7d33f9a75c1b7329E"}
!1087 = !{!1088}
!1088 = distinct !{!1088, !1086, !"_ZN4core3ops8function5FnMut8call_mut17h7d33f9a75c1b7329E: argument 1"}
!1089 = !{!1090}
!1090 = distinct !{!1090, !1091, !"cmpfunc: %a"}
!1091 = distinct !{!1091, !"cmpfunc"}
!1092 = !{!1093}
!1093 = distinct !{!1093, !1091, !"cmpfunc: %b"}
!1094 = !{!1095}
!1095 = distinct !{!1095, !1096, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!1096 = distinct !{!1096, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!1097 = !{!1098}
!1098 = distinct !{!1098, !1096, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!1099 = !{!1095, !1090, !1085, !1080}
!1100 = !{!1098, !1093, !1088, !1083}
!1101 = !{!1102, !1104, !1106, !1108}
!1102 = distinct !{!1102, !1103, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!1103 = distinct !{!1103, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!1104 = distinct !{!1104, !1105, !"cmpfunc: %b"}
!1105 = distinct !{!1105, !"cmpfunc"}
!1106 = distinct !{!1106, !1107, !"_ZN4core3ops8function5FnMut8call_mut17h7d33f9a75c1b7329E: argument 1"}
!1107 = distinct !{!1107, !"_ZN4core3ops8function5FnMut8call_mut17h7d33f9a75c1b7329E"}
!1108 = distinct !{!1108, !1109, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h310d80ab4250adf7E: %b"}
!1109 = distinct !{!1109, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h310d80ab4250adf7E"}
!1110 = !{!1111, !1112, !1113, !1114}
!1111 = distinct !{!1111, !1103, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!1112 = distinct !{!1112, !1105, !"cmpfunc: %a"}
!1113 = distinct !{!1113, !1107, !"_ZN4core3ops8function5FnMut8call_mut17h7d33f9a75c1b7329E: argument 0"}
!1114 = distinct !{!1114, !1109, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h310d80ab4250adf7E: %a"}
!1115 = !{!1116, !1118}
!1116 = distinct !{!1116, !1117, !"_ZN99_$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h21148157d7f7cce3E: %self"}
!1117 = distinct !{!1117, !"_ZN99_$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h21148157d7f7cce3E"}
!1118 = distinct !{!1118, !1119, !"_ZN4core3ptr80drop_in_place$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$i32$GT$$GT$17h15a8e616d2e8405dE: %_1"}
!1119 = distinct !{!1119, !"_ZN4core3ptr80drop_in_place$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$i32$GT$$GT$17h15a8e616d2e8405dE"}
!1120 = !{!1121}
!1121 = distinct !{!1121, !1122, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h310d80ab4250adf7E: %a"}
!1122 = distinct !{!1122, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h310d80ab4250adf7E"}
!1123 = !{!1124}
!1124 = distinct !{!1124, !1122, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h310d80ab4250adf7E: %b"}
!1125 = !{!1126}
!1126 = distinct !{!1126, !1127, !"_ZN4core3ops8function5FnMut8call_mut17h7d33f9a75c1b7329E: argument 0"}
!1127 = distinct !{!1127, !"_ZN4core3ops8function5FnMut8call_mut17h7d33f9a75c1b7329E"}
!1128 = !{!1129}
!1129 = distinct !{!1129, !1127, !"_ZN4core3ops8function5FnMut8call_mut17h7d33f9a75c1b7329E: argument 1"}
!1130 = !{!1131}
!1131 = distinct !{!1131, !1132, !"cmpfunc: %a"}
!1132 = distinct !{!1132, !"cmpfunc"}
!1133 = !{!1134}
!1134 = distinct !{!1134, !1132, !"cmpfunc: %b"}
!1135 = !{!1136}
!1136 = distinct !{!1136, !1137, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!1137 = distinct !{!1137, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!1138 = !{!1139}
!1139 = distinct !{!1139, !1137, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!1140 = !{!1136, !1131, !1126, !1121}
!1141 = !{!1139, !1134, !1129, !1124}
!1142 = !{!1143}
!1143 = distinct !{!1143, !1144, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h310d80ab4250adf7E: %a"}
!1144 = distinct !{!1144, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h310d80ab4250adf7E"}
!1145 = !{!1146}
!1146 = distinct !{!1146, !1144, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h310d80ab4250adf7E: %b"}
!1147 = !{!1148}
!1148 = distinct !{!1148, !1149, !"_ZN4core3ops8function5FnMut8call_mut17h7d33f9a75c1b7329E: argument 0"}
!1149 = distinct !{!1149, !"_ZN4core3ops8function5FnMut8call_mut17h7d33f9a75c1b7329E"}
!1150 = !{!1151}
!1151 = distinct !{!1151, !1149, !"_ZN4core3ops8function5FnMut8call_mut17h7d33f9a75c1b7329E: argument 1"}
!1152 = !{!1153}
!1153 = distinct !{!1153, !1154, !"cmpfunc: %a"}
!1154 = distinct !{!1154, !"cmpfunc"}
!1155 = !{!1156}
!1156 = distinct !{!1156, !1154, !"cmpfunc: %b"}
!1157 = !{!1158}
!1158 = distinct !{!1158, !1159, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!1159 = distinct !{!1159, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!1160 = !{!1161}
!1161 = distinct !{!1161, !1159, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!1162 = !{!1158, !1153, !1148, !1143}
!1163 = !{!1161, !1156, !1151, !1146}
!1164 = !{!1165}
!1165 = distinct !{!1165, !1166, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h310d80ab4250adf7E: %a"}
!1166 = distinct !{!1166, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h310d80ab4250adf7E"}
!1167 = !{!1168}
!1168 = distinct !{!1168, !1166, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h310d80ab4250adf7E: %b"}
!1169 = !{!1170}
!1170 = distinct !{!1170, !1171, !"_ZN4core3ops8function5FnMut8call_mut17h7d33f9a75c1b7329E: argument 0"}
!1171 = distinct !{!1171, !"_ZN4core3ops8function5FnMut8call_mut17h7d33f9a75c1b7329E"}
!1172 = !{!1173}
!1173 = distinct !{!1173, !1171, !"_ZN4core3ops8function5FnMut8call_mut17h7d33f9a75c1b7329E: argument 1"}
!1174 = !{!1175}
!1175 = distinct !{!1175, !1176, !"cmpfunc: %a"}
!1176 = distinct !{!1176, !"cmpfunc"}
!1177 = !{!1178}
!1178 = distinct !{!1178, !1176, !"cmpfunc: %b"}
!1179 = !{!1180}
!1180 = distinct !{!1180, !1181, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!1181 = distinct !{!1181, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!1182 = !{!1183}
!1183 = distinct !{!1183, !1181, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!1184 = !{!1180, !1175, !1170, !1165}
!1185 = !{!1183, !1178, !1173, !1168}
!1186 = !{!1187}
!1187 = distinct !{!1187, !1188, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h310d80ab4250adf7E: %a"}
!1188 = distinct !{!1188, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h310d80ab4250adf7E"}
!1189 = !{!1190}
!1190 = distinct !{!1190, !1188, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h310d80ab4250adf7E: %b"}
!1191 = !{!1192}
!1192 = distinct !{!1192, !1193, !"_ZN4core3ops8function5FnMut8call_mut17h7d33f9a75c1b7329E: argument 0"}
!1193 = distinct !{!1193, !"_ZN4core3ops8function5FnMut8call_mut17h7d33f9a75c1b7329E"}
!1194 = !{!1195}
!1195 = distinct !{!1195, !1193, !"_ZN4core3ops8function5FnMut8call_mut17h7d33f9a75c1b7329E: argument 1"}
!1196 = !{!1197}
!1197 = distinct !{!1197, !1198, !"cmpfunc: %a"}
!1198 = distinct !{!1198, !"cmpfunc"}
!1199 = !{!1200}
!1200 = distinct !{!1200, !1198, !"cmpfunc: %b"}
!1201 = !{!1202}
!1202 = distinct !{!1202, !1203, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!1203 = distinct !{!1203, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!1204 = !{!1205}
!1205 = distinct !{!1205, !1203, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!1206 = !{!1202, !1197, !1192, !1187}
!1207 = !{!1205, !1200, !1195, !1190}
!1208 = !{!1209}
!1209 = distinct !{!1209, !1210, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h310d80ab4250adf7E: %a"}
!1210 = distinct !{!1210, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h310d80ab4250adf7E"}
!1211 = !{!1212}
!1212 = distinct !{!1212, !1210, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h310d80ab4250adf7E: %b"}
!1213 = !{!1214}
!1214 = distinct !{!1214, !1215, !"_ZN4core3ops8function5FnMut8call_mut17h7d33f9a75c1b7329E: argument 0"}
!1215 = distinct !{!1215, !"_ZN4core3ops8function5FnMut8call_mut17h7d33f9a75c1b7329E"}
!1216 = !{!1217}
!1217 = distinct !{!1217, !1215, !"_ZN4core3ops8function5FnMut8call_mut17h7d33f9a75c1b7329E: argument 1"}
!1218 = !{!1219}
!1219 = distinct !{!1219, !1220, !"cmpfunc: %a"}
!1220 = distinct !{!1220, !"cmpfunc"}
!1221 = !{!1222}
!1222 = distinct !{!1222, !1220, !"cmpfunc: %b"}
!1223 = !{!1224}
!1224 = distinct !{!1224, !1225, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!1225 = distinct !{!1225, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!1226 = !{!1227}
!1227 = distinct !{!1227, !1225, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!1228 = !{!1224, !1219, !1214, !1209}
!1229 = !{!1227, !1222, !1217, !1212}
!1230 = !{!1231}
!1231 = distinct !{!1231, !1232, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h310d80ab4250adf7E: %a"}
!1232 = distinct !{!1232, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h310d80ab4250adf7E"}
!1233 = !{!1234}
!1234 = distinct !{!1234, !1232, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h310d80ab4250adf7E: %b"}
!1235 = !{!1236}
!1236 = distinct !{!1236, !1237, !"_ZN4core3ops8function5FnMut8call_mut17h7d33f9a75c1b7329E: argument 0"}
!1237 = distinct !{!1237, !"_ZN4core3ops8function5FnMut8call_mut17h7d33f9a75c1b7329E"}
!1238 = !{!1239}
!1239 = distinct !{!1239, !1237, !"_ZN4core3ops8function5FnMut8call_mut17h7d33f9a75c1b7329E: argument 1"}
!1240 = !{!1241}
!1241 = distinct !{!1241, !1242, !"cmpfunc: %a"}
!1242 = distinct !{!1242, !"cmpfunc"}
!1243 = !{!1244}
!1244 = distinct !{!1244, !1242, !"cmpfunc: %b"}
!1245 = !{!1246}
!1246 = distinct !{!1246, !1247, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!1247 = distinct !{!1247, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!1248 = !{!1249}
!1249 = distinct !{!1249, !1247, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!1250 = !{!1246, !1241, !1236, !1231}
!1251 = !{!1249, !1244, !1239, !1234}
!1252 = !{!1253}
!1253 = distinct !{!1253, !1254, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h310d80ab4250adf7E: %a"}
!1254 = distinct !{!1254, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h310d80ab4250adf7E"}
!1255 = !{!1256}
!1256 = distinct !{!1256, !1254, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h310d80ab4250adf7E: %b"}
!1257 = !{!1258}
!1258 = distinct !{!1258, !1259, !"_ZN4core3ops8function5FnMut8call_mut17h7d33f9a75c1b7329E: argument 0"}
!1259 = distinct !{!1259, !"_ZN4core3ops8function5FnMut8call_mut17h7d33f9a75c1b7329E"}
!1260 = !{!1261}
!1261 = distinct !{!1261, !1259, !"_ZN4core3ops8function5FnMut8call_mut17h7d33f9a75c1b7329E: argument 1"}
!1262 = !{!1263}
!1263 = distinct !{!1263, !1264, !"cmpfunc: %a"}
!1264 = distinct !{!1264, !"cmpfunc"}
!1265 = !{!1266}
!1266 = distinct !{!1266, !1264, !"cmpfunc: %b"}
!1267 = !{!1268}
!1268 = distinct !{!1268, !1269, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!1269 = distinct !{!1269, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!1270 = !{!1271}
!1271 = distinct !{!1271, !1269, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!1272 = !{!1268, !1263, !1258, !1253}
!1273 = !{!1271, !1266, !1261, !1256}
!1274 = !{!1275}
!1275 = distinct !{!1275, !1276, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h310d80ab4250adf7E: %a"}
!1276 = distinct !{!1276, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h310d80ab4250adf7E"}
!1277 = !{!1278}
!1278 = distinct !{!1278, !1276, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h310d80ab4250adf7E: %b"}
!1279 = !{!1280}
!1280 = distinct !{!1280, !1281, !"_ZN4core3ops8function5FnMut8call_mut17h7d33f9a75c1b7329E: argument 0"}
!1281 = distinct !{!1281, !"_ZN4core3ops8function5FnMut8call_mut17h7d33f9a75c1b7329E"}
!1282 = !{!1283}
!1283 = distinct !{!1283, !1281, !"_ZN4core3ops8function5FnMut8call_mut17h7d33f9a75c1b7329E: argument 1"}
!1284 = !{!1285}
!1285 = distinct !{!1285, !1286, !"cmpfunc: %a"}
!1286 = distinct !{!1286, !"cmpfunc"}
!1287 = !{!1288}
!1288 = distinct !{!1288, !1286, !"cmpfunc: %b"}
!1289 = !{!1290}
!1290 = distinct !{!1290, !1291, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!1291 = distinct !{!1291, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!1292 = !{!1293}
!1293 = distinct !{!1293, !1291, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!1294 = !{!1290, !1285, !1280, !1275}
!1295 = !{!1293, !1288, !1283, !1278}
!1296 = !{!1297}
!1297 = distinct !{!1297, !1298, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h310d80ab4250adf7E: %a"}
!1298 = distinct !{!1298, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h310d80ab4250adf7E"}
!1299 = !{!1300}
!1300 = distinct !{!1300, !1298, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h310d80ab4250adf7E: %b"}
!1301 = !{!1302}
!1302 = distinct !{!1302, !1303, !"_ZN4core3ops8function5FnMut8call_mut17h7d33f9a75c1b7329E: argument 0"}
!1303 = distinct !{!1303, !"_ZN4core3ops8function5FnMut8call_mut17h7d33f9a75c1b7329E"}
!1304 = !{!1305}
!1305 = distinct !{!1305, !1303, !"_ZN4core3ops8function5FnMut8call_mut17h7d33f9a75c1b7329E: argument 1"}
!1306 = !{!1307}
!1307 = distinct !{!1307, !1308, !"cmpfunc: %a"}
!1308 = distinct !{!1308, !"cmpfunc"}
!1309 = !{!1310}
!1310 = distinct !{!1310, !1308, !"cmpfunc: %b"}
!1311 = !{!1312}
!1312 = distinct !{!1312, !1313, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!1313 = distinct !{!1313, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!1314 = !{!1315}
!1315 = distinct !{!1315, !1313, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!1316 = !{!1312, !1307, !1302, !1297}
!1317 = !{!1315, !1310, !1305, !1300}
!1318 = !{!1319}
!1319 = distinct !{!1319, !1320, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h310d80ab4250adf7E: %a"}
!1320 = distinct !{!1320, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h310d80ab4250adf7E"}
!1321 = !{!1322}
!1322 = distinct !{!1322, !1320, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h310d80ab4250adf7E: %b"}
!1323 = !{!1324}
!1324 = distinct !{!1324, !1325, !"_ZN4core3ops8function5FnMut8call_mut17h7d33f9a75c1b7329E: argument 0"}
!1325 = distinct !{!1325, !"_ZN4core3ops8function5FnMut8call_mut17h7d33f9a75c1b7329E"}
!1326 = !{!1327}
!1327 = distinct !{!1327, !1325, !"_ZN4core3ops8function5FnMut8call_mut17h7d33f9a75c1b7329E: argument 1"}
!1328 = !{!1329}
!1329 = distinct !{!1329, !1330, !"cmpfunc: %a"}
!1330 = distinct !{!1330, !"cmpfunc"}
!1331 = !{!1332}
!1332 = distinct !{!1332, !1330, !"cmpfunc: %b"}
!1333 = !{!1334}
!1334 = distinct !{!1334, !1335, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!1335 = distinct !{!1335, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!1336 = !{!1337}
!1337 = distinct !{!1337, !1335, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!1338 = !{!1334, !1329, !1324, !1319}
!1339 = !{!1337, !1332, !1327, !1322}
!1340 = !{!1341}
!1341 = distinct !{!1341, !1342, !"_ZN4core5array4iter10iter_inner78PolymorphicIter$LT$$u5b$core..mem..maybe_uninit..MaybeUninit$LT$T$GT$$u5d$$GT$4next17h26b40a176e2c2310E: %self.0"}
!1342 = distinct !{!1342, !"_ZN4core5array4iter10iter_inner78PolymorphicIter$LT$$u5b$core..mem..maybe_uninit..MaybeUninit$LT$T$GT$$u5d$$GT$4next17h26b40a176e2c2310E"}
!1343 = !{!1344}
!1344 = distinct !{!1344, !1345, !"_ZN4core5slice4sort6shared9smallsort19bidirectional_merge17h9a78ceb788512c3fE: %v.0"}
!1345 = distinct !{!1345, !"_ZN4core5slice4sort6shared9smallsort19bidirectional_merge17h9a78ceb788512c3fE"}
!1346 = !{!1347}
!1347 = distinct !{!1347, !1348, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h310d80ab4250adf7E: %a"}
!1348 = distinct !{!1348, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h310d80ab4250adf7E"}
!1349 = !{!1350}
!1350 = distinct !{!1350, !1348, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h310d80ab4250adf7E: %b"}
!1351 = !{!1352}
!1352 = distinct !{!1352, !1353, !"_ZN4core3ops8function5FnMut8call_mut17h7d33f9a75c1b7329E: argument 0"}
!1353 = distinct !{!1353, !"_ZN4core3ops8function5FnMut8call_mut17h7d33f9a75c1b7329E"}
!1354 = !{!1355}
!1355 = distinct !{!1355, !1356, !"_ZN4core5slice4sort6shared9smallsort8merge_up17h123fe25a22554e1dE: %_0"}
!1356 = distinct !{!1356, !"_ZN4core5slice4sort6shared9smallsort8merge_up17h123fe25a22554e1dE"}
!1357 = !{!1358}
!1358 = distinct !{!1358, !1353, !"_ZN4core3ops8function5FnMut8call_mut17h7d33f9a75c1b7329E: argument 1"}
!1359 = !{!1360}
!1360 = distinct !{!1360, !1361, !"cmpfunc: %a"}
!1361 = distinct !{!1361, !"cmpfunc"}
!1362 = !{!1363}
!1363 = distinct !{!1363, !1361, !"cmpfunc: %b"}
!1364 = !{!1365}
!1365 = distinct !{!1365, !1366, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!1366 = distinct !{!1366, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!1367 = !{!1368}
!1368 = distinct !{!1368, !1366, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!1369 = !{!1365, !1360, !1352, !1347, !1344}
!1370 = !{!1368, !1363, !1358, !1350, !1355}
!1371 = !{!1368, !1363, !1358, !1350, !1344}
!1372 = !{!1365, !1360, !1352, !1347, !1355}
!1373 = !{!1355, !1374, !1344}
!1374 = distinct !{!1374, !1356, !"_ZN4core5slice4sort6shared9smallsort8merge_up17h123fe25a22554e1dE: %is_less"}
!1375 = !{!1376}
!1376 = distinct !{!1376, !1377, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h310d80ab4250adf7E: %a"}
!1377 = distinct !{!1377, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h310d80ab4250adf7E"}
!1378 = !{!1379}
!1379 = distinct !{!1379, !1377, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h310d80ab4250adf7E: %b"}
!1380 = !{!1381}
!1381 = distinct !{!1381, !1382, !"_ZN4core3ops8function5FnMut8call_mut17h7d33f9a75c1b7329E: argument 0"}
!1382 = distinct !{!1382, !"_ZN4core3ops8function5FnMut8call_mut17h7d33f9a75c1b7329E"}
!1383 = !{!1384}
!1384 = distinct !{!1384, !1385, !"_ZN4core5slice4sort6shared9smallsort10merge_down17hfcb97d1e7d3bd007E: %_0"}
!1385 = distinct !{!1385, !"_ZN4core5slice4sort6shared9smallsort10merge_down17hfcb97d1e7d3bd007E"}
!1386 = !{!1387}
!1387 = distinct !{!1387, !1382, !"_ZN4core3ops8function5FnMut8call_mut17h7d33f9a75c1b7329E: argument 1"}
!1388 = !{!1389}
!1389 = distinct !{!1389, !1390, !"cmpfunc: %a"}
!1390 = distinct !{!1390, !"cmpfunc"}
!1391 = !{!1392}
!1392 = distinct !{!1392, !1390, !"cmpfunc: %b"}
!1393 = !{!1394}
!1394 = distinct !{!1394, !1395, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!1395 = distinct !{!1395, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!1396 = !{!1397}
!1397 = distinct !{!1397, !1395, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!1398 = !{!1394, !1389, !1381, !1376, !1344}
!1399 = !{!1397, !1392, !1387, !1379, !1384}
!1400 = !{!1397, !1392, !1387, !1379, !1344}
!1401 = !{!1394, !1389, !1381, !1376, !1384}
!1402 = !{!1384, !1403, !1344}
!1403 = distinct !{!1403, !1385, !"_ZN4core5slice4sort6shared9smallsort10merge_down17hfcb97d1e7d3bd007E: %is_less"}
!1404 = !{!1405, !1407}
!1405 = distinct !{!1405, !1406, !"_ZN99_$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h21148157d7f7cce3E: %self"}
!1406 = distinct !{!1406, !"_ZN99_$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h21148157d7f7cce3E"}
!1407 = distinct !{!1407, !1408, !"_ZN4core3ptr80drop_in_place$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$i32$GT$$GT$17h15a8e616d2e8405dE: %_1"}
!1408 = distinct !{!1408, !"_ZN4core3ptr80drop_in_place$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$i32$GT$$GT$17h15a8e616d2e8405dE"}
!1409 = !{!1410, !1412, !1414, !1416}
!1410 = distinct !{!1410, !1411, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!1411 = distinct !{!1411, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!1412 = distinct !{!1412, !1413, !"cmpfunc: %b"}
!1413 = distinct !{!1413, !"cmpfunc"}
!1414 = distinct !{!1414, !1415, !"_ZN4core3ops8function5FnMut8call_mut17h7d33f9a75c1b7329E: argument 1"}
!1415 = distinct !{!1415, !"_ZN4core3ops8function5FnMut8call_mut17h7d33f9a75c1b7329E"}
!1416 = distinct !{!1416, !1417, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h310d80ab4250adf7E: %b"}
!1417 = distinct !{!1417, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h310d80ab4250adf7E"}
!1418 = !{!1419, !1420, !1421, !1422}
!1419 = distinct !{!1419, !1411, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!1420 = distinct !{!1420, !1413, !"cmpfunc: %a"}
!1421 = distinct !{!1421, !1415, !"_ZN4core3ops8function5FnMut8call_mut17h7d33f9a75c1b7329E: argument 0"}
!1422 = distinct !{!1422, !1417, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h310d80ab4250adf7E: %a"}
!1423 = !{!1424, !1426, !1428, !1430}
!1424 = distinct !{!1424, !1425, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!1425 = distinct !{!1425, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!1426 = distinct !{!1426, !1427, !"cmpfunc: %b"}
!1427 = distinct !{!1427, !"cmpfunc"}
!1428 = distinct !{!1428, !1429, !"_ZN4core3ops8function5FnMut8call_mut17h7d33f9a75c1b7329E: argument 1"}
!1429 = distinct !{!1429, !"_ZN4core3ops8function5FnMut8call_mut17h7d33f9a75c1b7329E"}
!1430 = distinct !{!1430, !1431, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h310d80ab4250adf7E: %b"}
!1431 = distinct !{!1431, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h310d80ab4250adf7E"}
!1432 = !{!1433, !1434, !1435, !1436}
!1433 = distinct !{!1433, !1425, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!1434 = distinct !{!1434, !1427, !"cmpfunc: %a"}
!1435 = distinct !{!1435, !1429, !"_ZN4core3ops8function5FnMut8call_mut17h7d33f9a75c1b7329E: argument 0"}
!1436 = distinct !{!1436, !1431, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h310d80ab4250adf7E: %a"}
!1437 = !{!1438, !1440}
!1438 = distinct !{!1438, !1439, !"_ZN99_$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h21148157d7f7cce3E: %self"}
!1439 = distinct !{!1439, !"_ZN99_$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h21148157d7f7cce3E"}
!1440 = distinct !{!1440, !1441, !"_ZN4core3ptr80drop_in_place$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$i32$GT$$GT$17h15a8e616d2e8405dE: %_1"}
!1441 = distinct !{!1441, !"_ZN4core3ptr80drop_in_place$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$i32$GT$$GT$17h15a8e616d2e8405dE"}
!1442 = !{!1443}
!1443 = distinct !{!1443, !1444, !"_ZN4core5array4iter10iter_inner78PolymorphicIter$LT$$u5b$core..mem..maybe_uninit..MaybeUninit$LT$T$GT$$u5d$$GT$4next17h26b40a176e2c2310E: %self.0"}
!1444 = distinct !{!1444, !"_ZN4core5array4iter10iter_inner78PolymorphicIter$LT$$u5b$core..mem..maybe_uninit..MaybeUninit$LT$T$GT$$u5d$$GT$4next17h26b40a176e2c2310E"}
!1445 = !{!1446, !1448}
!1446 = distinct !{!1446, !1447, !"_ZN99_$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h0fd8ed5edd0e04a3E: %self"}
!1447 = distinct !{!1447, !"_ZN99_$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h0fd8ed5edd0e04a3E"}
!1448 = distinct !{!1448, !1449, !"_ZN4core3ptr80drop_in_place$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$f32$GT$$GT$17h1b2519a8f05f1306E: %_1"}
!1449 = distinct !{!1449, !"_ZN4core3ptr80drop_in_place$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$f32$GT$$GT$17h1b2519a8f05f1306E"}
!1450 = !{!1451}
!1451 = distinct !{!1451, !1452, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h47d2093944d38971E: %a"}
!1452 = distinct !{!1452, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h47d2093944d38971E"}
!1453 = !{!1454}
!1454 = distinct !{!1454, !1452, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h47d2093944d38971E: %b"}
!1455 = !{!1456}
!1456 = distinct !{!1456, !1457, !"_ZN58FIND_MINIMUM_RADIUS_ATLEAST_K_POINT_LIE_INSIDE_CIRCLE_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h1ee6c5ec76d06603E: %a"}
!1457 = distinct !{!1457, !"_ZN58FIND_MINIMUM_RADIUS_ATLEAST_K_POINT_LIE_INSIDE_CIRCLE_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h1ee6c5ec76d06603E"}
!1458 = !{!1459}
!1459 = distinct !{!1459, !1457, !"_ZN58FIND_MINIMUM_RADIUS_ATLEAST_K_POINT_LIE_INSIDE_CIRCLE_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h1ee6c5ec76d06603E: %b"}
!1460 = !{!1461}
!1461 = distinct !{!1461, !1462, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$f32$GT$11partial_cmp17h51acfdb7fcc2b22aE: %self"}
!1462 = distinct !{!1462, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$f32$GT$11partial_cmp17h51acfdb7fcc2b22aE"}
!1463 = !{!1464}
!1464 = distinct !{!1464, !1462, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$f32$GT$11partial_cmp17h51acfdb7fcc2b22aE: %other"}
!1465 = !{!1461, !1456, !1451}
!1466 = !{!1464, !1459, !1454}
!1467 = !{!1468, !1470, !1472}
!1468 = distinct !{!1468, !1469, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$f32$GT$11partial_cmp17h51acfdb7fcc2b22aE: %other"}
!1469 = distinct !{!1469, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$f32$GT$11partial_cmp17h51acfdb7fcc2b22aE"}
!1470 = distinct !{!1470, !1471, !"_ZN58FIND_MINIMUM_RADIUS_ATLEAST_K_POINT_LIE_INSIDE_CIRCLE_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h1ee6c5ec76d06603E: %b"}
!1471 = distinct !{!1471, !"_ZN58FIND_MINIMUM_RADIUS_ATLEAST_K_POINT_LIE_INSIDE_CIRCLE_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h1ee6c5ec76d06603E"}
!1472 = distinct !{!1472, !1473, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h47d2093944d38971E: %b"}
!1473 = distinct !{!1473, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h47d2093944d38971E"}
!1474 = !{!1475, !1476, !1477}
!1475 = distinct !{!1475, !1469, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$f32$GT$11partial_cmp17h51acfdb7fcc2b22aE: %self"}
!1476 = distinct !{!1476, !1471, !"_ZN58FIND_MINIMUM_RADIUS_ATLEAST_K_POINT_LIE_INSIDE_CIRCLE_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h1ee6c5ec76d06603E: %a"}
!1477 = distinct !{!1477, !1473, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h47d2093944d38971E: %a"}
!1478 = !{!1479, !1481}
!1479 = distinct !{!1479, !1480, !"_ZN99_$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h0fd8ed5edd0e04a3E: %self"}
!1480 = distinct !{!1480, !"_ZN99_$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h0fd8ed5edd0e04a3E"}
!1481 = distinct !{!1481, !1482, !"_ZN4core3ptr80drop_in_place$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$f32$GT$$GT$17h1b2519a8f05f1306E: %_1"}
!1482 = distinct !{!1482, !"_ZN4core3ptr80drop_in_place$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$f32$GT$$GT$17h1b2519a8f05f1306E"}
!1483 = !{!1484, !1486}
!1484 = distinct !{!1484, !1485, !"_ZN99_$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h0fd8ed5edd0e04a3E: %self"}
!1485 = distinct !{!1485, !"_ZN99_$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h0fd8ed5edd0e04a3E"}
!1486 = distinct !{!1486, !1487, !"_ZN4core3ptr80drop_in_place$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$f32$GT$$GT$17h1b2519a8f05f1306E: %_1"}
!1487 = distinct !{!1487, !"_ZN4core3ptr80drop_in_place$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$f32$GT$$GT$17h1b2519a8f05f1306E"}
!1488 = !{!1489}
!1489 = distinct !{!1489, !1490, !"_ZN5alloc5slice99_$LT$impl$u20$core..slice..sort..stable..BufGuard$LT$T$GT$$u20$for$u20$alloc..vec..Vec$LT$T$GT$$GT$13with_capacity17he104ce91b9416e00E: %_0"}
!1490 = distinct !{!1490, !"_ZN5alloc5slice99_$LT$impl$u20$core..slice..sort..stable..BufGuard$LT$T$GT$$u20$for$u20$alloc..vec..Vec$LT$T$GT$$GT$13with_capacity17he104ce91b9416e00E"}
!1491 = !{i64 0, i64 2}
!1492 = !{i64 0, i64 -9223372036854775807}
!1493 = !{!1494}
!1494 = distinct !{!1494, !1495, !"_ZN5alloc5slice99_$LT$impl$u20$core..slice..sort..stable..BufGuard$LT$T$GT$$u20$for$u20$alloc..vec..Vec$LT$T$GT$$GT$13with_capacity17h0fb4ef15602973b4E: %_0"}
!1495 = distinct !{!1495, !"_ZN5alloc5slice99_$LT$impl$u20$core..slice..sort..stable..BufGuard$LT$T$GT$$u20$for$u20$alloc..vec..Vec$LT$T$GT$$GT$13with_capacity17h0fb4ef15602973b4E"}
!1496 = !{!1497}
!1497 = distinct !{!1497, !1498, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h47d2093944d38971E: %a"}
!1498 = distinct !{!1498, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h47d2093944d38971E"}
!1499 = !{!1500}
!1500 = distinct !{!1500, !1498, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h47d2093944d38971E: %b"}
!1501 = !{!1502}
!1502 = distinct !{!1502, !1503, !"_ZN58FIND_MINIMUM_RADIUS_ATLEAST_K_POINT_LIE_INSIDE_CIRCLE_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h1ee6c5ec76d06603E: %a"}
!1503 = distinct !{!1503, !"_ZN58FIND_MINIMUM_RADIUS_ATLEAST_K_POINT_LIE_INSIDE_CIRCLE_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h1ee6c5ec76d06603E"}
!1504 = !{!1505}
!1505 = distinct !{!1505, !1503, !"_ZN58FIND_MINIMUM_RADIUS_ATLEAST_K_POINT_LIE_INSIDE_CIRCLE_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h1ee6c5ec76d06603E: %b"}
!1506 = !{!1507}
!1507 = distinct !{!1507, !1508, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$f32$GT$11partial_cmp17h51acfdb7fcc2b22aE: %self"}
!1508 = distinct !{!1508, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$f32$GT$11partial_cmp17h51acfdb7fcc2b22aE"}
!1509 = !{!1510}
!1510 = distinct !{!1510, !1508, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$f32$GT$11partial_cmp17h51acfdb7fcc2b22aE: %other"}
!1511 = !{!1507, !1502, !1497}
!1512 = !{!1510, !1505, !1500}
!1513 = !{!1502, !1505, !1497, !1500}
!1514 = !{!1515}
!1515 = distinct !{!1515, !1516, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h47d2093944d38971E: %a"}
!1516 = distinct !{!1516, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h47d2093944d38971E"}
!1517 = !{!1518}
!1518 = distinct !{!1518, !1516, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h47d2093944d38971E: %b"}
!1519 = !{!1520}
!1520 = distinct !{!1520, !1521, !"_ZN58FIND_MINIMUM_RADIUS_ATLEAST_K_POINT_LIE_INSIDE_CIRCLE_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h1ee6c5ec76d06603E: %a"}
!1521 = distinct !{!1521, !"_ZN58FIND_MINIMUM_RADIUS_ATLEAST_K_POINT_LIE_INSIDE_CIRCLE_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h1ee6c5ec76d06603E"}
!1522 = !{!1523}
!1523 = distinct !{!1523, !1521, !"_ZN58FIND_MINIMUM_RADIUS_ATLEAST_K_POINT_LIE_INSIDE_CIRCLE_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h1ee6c5ec76d06603E: %b"}
!1524 = !{!1525}
!1525 = distinct !{!1525, !1526, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$f32$GT$11partial_cmp17h51acfdb7fcc2b22aE: %self"}
!1526 = distinct !{!1526, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$f32$GT$11partial_cmp17h51acfdb7fcc2b22aE"}
!1527 = !{!1528}
!1528 = distinct !{!1528, !1526, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$f32$GT$11partial_cmp17h51acfdb7fcc2b22aE: %other"}
!1529 = !{!1525, !1520, !1515}
!1530 = !{!1528, !1523, !1518}
!1531 = !{!1520, !1523, !1515, !1518}
!1532 = !{!1533}
!1533 = distinct !{!1533, !1534, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h47d2093944d38971E: %a"}
!1534 = distinct !{!1534, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h47d2093944d38971E"}
!1535 = !{!1536}
!1536 = distinct !{!1536, !1534, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h47d2093944d38971E: %b"}
!1537 = !{!1538}
!1538 = distinct !{!1538, !1539, !"_ZN58FIND_MINIMUM_RADIUS_ATLEAST_K_POINT_LIE_INSIDE_CIRCLE_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h1ee6c5ec76d06603E: %a"}
!1539 = distinct !{!1539, !"_ZN58FIND_MINIMUM_RADIUS_ATLEAST_K_POINT_LIE_INSIDE_CIRCLE_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h1ee6c5ec76d06603E"}
!1540 = !{!1541}
!1541 = distinct !{!1541, !1539, !"_ZN58FIND_MINIMUM_RADIUS_ATLEAST_K_POINT_LIE_INSIDE_CIRCLE_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h1ee6c5ec76d06603E: %b"}
!1542 = !{!1543}
!1543 = distinct !{!1543, !1544, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$f32$GT$11partial_cmp17h51acfdb7fcc2b22aE: %self"}
!1544 = distinct !{!1544, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$f32$GT$11partial_cmp17h51acfdb7fcc2b22aE"}
!1545 = !{!1546}
!1546 = distinct !{!1546, !1544, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$f32$GT$11partial_cmp17h51acfdb7fcc2b22aE: %other"}
!1547 = !{!1543, !1538, !1533}
!1548 = !{!1546, !1541, !1536}
!1549 = !{!1538, !1541, !1533, !1536}
!1550 = !{!1551, !1553}
!1551 = distinct !{!1551, !1552, !"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse7revswap17hc825c8588ed3386aE: %a.0"}
!1552 = distinct !{!1552, !"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse7revswap17hc825c8588ed3386aE"}
!1553 = distinct !{!1553, !1554, !"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17h0503b9361f20364dE: %self.0"}
!1554 = distinct !{!1554, !"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17h0503b9361f20364dE"}
!1555 = !{!1556}
!1556 = distinct !{!1556, !1552, !"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse7revswap17hc825c8588ed3386aE: %b.0"}
!1557 = !{!1556, !1553}
!1558 = !{!1551}
!1559 = !{!1560}
!1560 = distinct !{!1560, !1561, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h310d80ab4250adf7E: %a"}
!1561 = distinct !{!1561, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h310d80ab4250adf7E"}
!1562 = !{!1563}
!1563 = distinct !{!1563, !1561, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h310d80ab4250adf7E: %b"}
!1564 = !{!1565}
!1565 = distinct !{!1565, !1566, !"_ZN4core3ops8function5FnMut8call_mut17h7d33f9a75c1b7329E: argument 0"}
!1566 = distinct !{!1566, !"_ZN4core3ops8function5FnMut8call_mut17h7d33f9a75c1b7329E"}
!1567 = !{!1568}
!1568 = distinct !{!1568, !1566, !"_ZN4core3ops8function5FnMut8call_mut17h7d33f9a75c1b7329E: argument 1"}
!1569 = !{!1570}
!1570 = distinct !{!1570, !1571, !"cmpfunc: %a"}
!1571 = distinct !{!1571, !"cmpfunc"}
!1572 = !{!1573}
!1573 = distinct !{!1573, !1571, !"cmpfunc: %b"}
!1574 = !{!1575}
!1575 = distinct !{!1575, !1576, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!1576 = distinct !{!1576, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!1577 = !{!1578}
!1578 = distinct !{!1578, !1576, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!1579 = !{!1575, !1570, !1565, !1560}
!1580 = !{!1578, !1573, !1568, !1563}
!1581 = !{!1582}
!1582 = distinct !{!1582, !1583, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h310d80ab4250adf7E: %a"}
!1583 = distinct !{!1583, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h310d80ab4250adf7E"}
!1584 = !{!1585}
!1585 = distinct !{!1585, !1583, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h310d80ab4250adf7E: %b"}
!1586 = !{!1587}
!1587 = distinct !{!1587, !1588, !"_ZN4core3ops8function5FnMut8call_mut17h7d33f9a75c1b7329E: argument 0"}
!1588 = distinct !{!1588, !"_ZN4core3ops8function5FnMut8call_mut17h7d33f9a75c1b7329E"}
!1589 = !{!1590}
!1590 = distinct !{!1590, !1588, !"_ZN4core3ops8function5FnMut8call_mut17h7d33f9a75c1b7329E: argument 1"}
!1591 = !{!1592}
!1592 = distinct !{!1592, !1593, !"cmpfunc: %a"}
!1593 = distinct !{!1593, !"cmpfunc"}
!1594 = !{!1595}
!1595 = distinct !{!1595, !1593, !"cmpfunc: %b"}
!1596 = !{!1597}
!1597 = distinct !{!1597, !1598, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!1598 = distinct !{!1598, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!1599 = !{!1600}
!1600 = distinct !{!1600, !1598, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!1601 = !{!1597, !1592, !1587, !1582}
!1602 = !{!1600, !1595, !1590, !1585}
!1603 = !{!1604}
!1604 = distinct !{!1604, !1605, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h310d80ab4250adf7E: %a"}
!1605 = distinct !{!1605, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h310d80ab4250adf7E"}
!1606 = !{!1607}
!1607 = distinct !{!1607, !1605, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h310d80ab4250adf7E: %b"}
!1608 = !{!1609}
!1609 = distinct !{!1609, !1610, !"_ZN4core3ops8function5FnMut8call_mut17h7d33f9a75c1b7329E: argument 0"}
!1610 = distinct !{!1610, !"_ZN4core3ops8function5FnMut8call_mut17h7d33f9a75c1b7329E"}
!1611 = !{!1612}
!1612 = distinct !{!1612, !1610, !"_ZN4core3ops8function5FnMut8call_mut17h7d33f9a75c1b7329E: argument 1"}
!1613 = !{!1614}
!1614 = distinct !{!1614, !1615, !"cmpfunc: %a"}
!1615 = distinct !{!1615, !"cmpfunc"}
!1616 = !{!1617}
!1617 = distinct !{!1617, !1615, !"cmpfunc: %b"}
!1618 = !{!1619}
!1619 = distinct !{!1619, !1620, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!1620 = distinct !{!1620, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!1621 = !{!1622}
!1622 = distinct !{!1622, !1620, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!1623 = !{!1619, !1614, !1609, !1604}
!1624 = !{!1622, !1617, !1612, !1607}
!1625 = !{!1626, !1628}
!1626 = distinct !{!1626, !1627, !"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse7revswap17hcf0547063945902aE: %a.0"}
!1627 = distinct !{!1627, !"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse7revswap17hcf0547063945902aE"}
!1628 = distinct !{!1628, !1629, !"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17h19fa2fe467f3c462E: %self.0"}
!1629 = distinct !{!1629, !"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17h19fa2fe467f3c462E"}
!1630 = !{!1631}
!1631 = distinct !{!1631, !1627, !"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse7revswap17hcf0547063945902aE: %b.0"}
!1632 = !{!1631, !1628}
!1633 = !{!1626}
!1634 = !{!1635}
!1635 = distinct !{!1635, !1636, !"_ZN4core5slice4sort6stable5merge5merge17ha398925cfe361572E: %v.0"}
!1636 = distinct !{!1636, !"_ZN4core5slice4sort6stable5merge5merge17ha398925cfe361572E"}
!1637 = !{!1638}
!1638 = distinct !{!1638, !1636, !"_ZN4core5slice4sort6stable5merge5merge17ha398925cfe361572E: %scratch.0"}
!1639 = !{!1635, !1638}
!1640 = !{!1641}
!1641 = distinct !{!1641, !1642, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h310d80ab4250adf7E: %a"}
!1642 = distinct !{!1642, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h310d80ab4250adf7E"}
!1643 = !{!1644}
!1644 = distinct !{!1644, !1642, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h310d80ab4250adf7E: %b"}
!1645 = !{!1646}
!1646 = distinct !{!1646, !1647, !"_ZN4core3ops8function5FnMut8call_mut17h7d33f9a75c1b7329E: argument 0"}
!1647 = distinct !{!1647, !"_ZN4core3ops8function5FnMut8call_mut17h7d33f9a75c1b7329E"}
!1648 = !{!1649}
!1649 = distinct !{!1649, !1647, !"_ZN4core3ops8function5FnMut8call_mut17h7d33f9a75c1b7329E: argument 1"}
!1650 = !{!1651}
!1651 = distinct !{!1651, !1652, !"cmpfunc: %a"}
!1652 = distinct !{!1652, !"cmpfunc"}
!1653 = !{!1654}
!1654 = distinct !{!1654, !1652, !"cmpfunc: %b"}
!1655 = !{!1656}
!1656 = distinct !{!1656, !1657, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!1657 = distinct !{!1657, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!1658 = !{!1659}
!1659 = distinct !{!1659, !1657, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!1660 = !{!1656, !1651, !1646, !1641, !1638}
!1661 = !{!1659, !1654, !1649, !1644, !1662, !1635}
!1662 = distinct !{!1662, !1663, !"_ZN4core5slice4sort6stable5merge19MergeState$LT$T$GT$10merge_down17h82040c10322937ffE: %self"}
!1663 = distinct !{!1663, !"_ZN4core5slice4sort6stable5merge19MergeState$LT$T$GT$10merge_down17h82040c10322937ffE"}
!1664 = !{!1659, !1654, !1649, !1644, !1635}
!1665 = !{!1656, !1651, !1646, !1641, !1662, !1638}
!1666 = !{!1662, !1638}
!1667 = !{!1668}
!1668 = distinct !{!1668, !1669, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h310d80ab4250adf7E: %a"}
!1669 = distinct !{!1669, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h310d80ab4250adf7E"}
!1670 = !{!1671}
!1671 = distinct !{!1671, !1669, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h310d80ab4250adf7E: %b"}
!1672 = !{!1673}
!1673 = distinct !{!1673, !1674, !"_ZN4core3ops8function5FnMut8call_mut17h7d33f9a75c1b7329E: argument 0"}
!1674 = distinct !{!1674, !"_ZN4core3ops8function5FnMut8call_mut17h7d33f9a75c1b7329E"}
!1675 = !{!1676}
!1676 = distinct !{!1676, !1674, !"_ZN4core3ops8function5FnMut8call_mut17h7d33f9a75c1b7329E: argument 1"}
!1677 = !{!1678}
!1678 = distinct !{!1678, !1679, !"cmpfunc: %a"}
!1679 = distinct !{!1679, !"cmpfunc"}
!1680 = !{!1681}
!1681 = distinct !{!1681, !1679, !"cmpfunc: %b"}
!1682 = !{!1683}
!1683 = distinct !{!1683, !1684, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!1684 = distinct !{!1684, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!1685 = !{!1686}
!1686 = distinct !{!1686, !1684, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!1687 = !{!1683, !1678, !1673, !1668, !1635}
!1688 = !{!1686, !1681, !1676, !1671, !1689, !1638}
!1689 = distinct !{!1689, !1690, !"_ZN4core5slice4sort6stable5merge19MergeState$LT$T$GT$8merge_up17h551d82588688e894E: %self"}
!1690 = distinct !{!1690, !"_ZN4core5slice4sort6stable5merge19MergeState$LT$T$GT$8merge_up17h551d82588688e894E"}
!1691 = !{!1686, !1681, !1676, !1671, !1638}
!1692 = !{!1683, !1678, !1673, !1668, !1689, !1635}
!1693 = !{!1689, !1638}
!1694 = !{!1695, !1697}
!1695 = distinct !{!1695, !1696, !"_ZN95_$LT$core..slice..sort..stable..merge..MergeState$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h825a2c529873648fE: %self"}
!1696 = distinct !{!1696, !"_ZN95_$LT$core..slice..sort..stable..merge..MergeState$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h825a2c529873648fE"}
!1697 = distinct !{!1697, !1698, !"_ZN4core3ptr76drop_in_place$LT$core..slice..sort..stable..merge..MergeState$LT$i32$GT$$GT$17h777bc40a9f6fc87eE: %_1"}
!1698 = distinct !{!1698, !"_ZN4core3ptr76drop_in_place$LT$core..slice..sort..stable..merge..MergeState$LT$i32$GT$$GT$17h777bc40a9f6fc87eE"}
!1699 = !{!1700}
!1700 = distinct !{!1700, !1701, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h310d80ab4250adf7E: %a"}
!1701 = distinct !{!1701, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h310d80ab4250adf7E"}
!1702 = !{!1703}
!1703 = distinct !{!1703, !1701, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h310d80ab4250adf7E: %b"}
!1704 = !{!1705}
!1705 = distinct !{!1705, !1706, !"_ZN4core3ops8function5FnMut8call_mut17h7d33f9a75c1b7329E: argument 0"}
!1706 = distinct !{!1706, !"_ZN4core3ops8function5FnMut8call_mut17h7d33f9a75c1b7329E"}
!1707 = !{!1708}
!1708 = distinct !{!1708, !1706, !"_ZN4core3ops8function5FnMut8call_mut17h7d33f9a75c1b7329E: argument 1"}
!1709 = !{!1710}
!1710 = distinct !{!1710, !1711, !"cmpfunc: %a"}
!1711 = distinct !{!1711, !"cmpfunc"}
!1712 = !{!1713}
!1713 = distinct !{!1713, !1711, !"cmpfunc: %b"}
!1714 = !{!1715}
!1715 = distinct !{!1715, !1716, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!1716 = distinct !{!1716, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!1717 = !{!1718}
!1718 = distinct !{!1718, !1716, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!1719 = !{!1715, !1710, !1705, !1700}
!1720 = !{!1718, !1713, !1708, !1703}
!1721 = !{!1722}
!1722 = distinct !{!1722, !1723, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h47d2093944d38971E: %a"}
!1723 = distinct !{!1723, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h47d2093944d38971E"}
!1724 = !{!1725}
!1725 = distinct !{!1725, !1723, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h47d2093944d38971E: %b"}
!1726 = !{!1727}
!1727 = distinct !{!1727, !1728, !"_ZN58FIND_MINIMUM_RADIUS_ATLEAST_K_POINT_LIE_INSIDE_CIRCLE_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h1ee6c5ec76d06603E: %a"}
!1728 = distinct !{!1728, !"_ZN58FIND_MINIMUM_RADIUS_ATLEAST_K_POINT_LIE_INSIDE_CIRCLE_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h1ee6c5ec76d06603E"}
!1729 = !{!1730}
!1730 = distinct !{!1730, !1728, !"_ZN58FIND_MINIMUM_RADIUS_ATLEAST_K_POINT_LIE_INSIDE_CIRCLE_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h1ee6c5ec76d06603E: %b"}
!1731 = !{!1732}
!1732 = distinct !{!1732, !1733, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$f32$GT$11partial_cmp17h51acfdb7fcc2b22aE: %self"}
!1733 = distinct !{!1733, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$f32$GT$11partial_cmp17h51acfdb7fcc2b22aE"}
!1734 = !{!1735}
!1735 = distinct !{!1735, !1733, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$f32$GT$11partial_cmp17h51acfdb7fcc2b22aE: %other"}
!1736 = !{!1732, !1727, !1722}
!1737 = !{!1735, !1730, !1725}
!1738 = !{!1727, !1730, !1722, !1725}
!1739 = !{!1740}
!1740 = distinct !{!1740, !1741, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h310d80ab4250adf7E: %a"}
!1741 = distinct !{!1741, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h310d80ab4250adf7E"}
!1742 = !{!1743}
!1743 = distinct !{!1743, !1741, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h310d80ab4250adf7E: %b"}
!1744 = !{!1745}
!1745 = distinct !{!1745, !1746, !"_ZN4core3ops8function5FnMut8call_mut17h7d33f9a75c1b7329E: argument 0"}
!1746 = distinct !{!1746, !"_ZN4core3ops8function5FnMut8call_mut17h7d33f9a75c1b7329E"}
!1747 = !{!1748}
!1748 = distinct !{!1748, !1746, !"_ZN4core3ops8function5FnMut8call_mut17h7d33f9a75c1b7329E: argument 1"}
!1749 = !{!1750}
!1750 = distinct !{!1750, !1751, !"cmpfunc: %a"}
!1751 = distinct !{!1751, !"cmpfunc"}
!1752 = !{!1753}
!1753 = distinct !{!1753, !1751, !"cmpfunc: %b"}
!1754 = !{!1755}
!1755 = distinct !{!1755, !1756, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!1756 = distinct !{!1756, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!1757 = !{!1758}
!1758 = distinct !{!1758, !1756, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!1759 = !{!1755, !1750, !1745, !1740}
!1760 = !{!1758, !1753, !1748, !1743}
!1761 = !{!1762}
!1762 = distinct !{!1762, !1763, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h47d2093944d38971E: %a"}
!1763 = distinct !{!1763, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h47d2093944d38971E"}
!1764 = !{!1765}
!1765 = distinct !{!1765, !1763, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h47d2093944d38971E: %b"}
!1766 = !{!1767}
!1767 = distinct !{!1767, !1768, !"_ZN58FIND_MINIMUM_RADIUS_ATLEAST_K_POINT_LIE_INSIDE_CIRCLE_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h1ee6c5ec76d06603E: %a"}
!1768 = distinct !{!1768, !"_ZN58FIND_MINIMUM_RADIUS_ATLEAST_K_POINT_LIE_INSIDE_CIRCLE_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h1ee6c5ec76d06603E"}
!1769 = !{!1770}
!1770 = distinct !{!1770, !1768, !"_ZN58FIND_MINIMUM_RADIUS_ATLEAST_K_POINT_LIE_INSIDE_CIRCLE_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h1ee6c5ec76d06603E: %b"}
!1771 = !{!1772}
!1772 = distinct !{!1772, !1773, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$f32$GT$11partial_cmp17h51acfdb7fcc2b22aE: %self"}
!1773 = distinct !{!1773, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$f32$GT$11partial_cmp17h51acfdb7fcc2b22aE"}
!1774 = !{!1775}
!1775 = distinct !{!1775, !1773, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$f32$GT$11partial_cmp17h51acfdb7fcc2b22aE: %other"}
!1776 = !{!1772, !1767, !1762}
!1777 = !{!1775, !1770, !1765}
!1778 = !{!1767, !1770, !1762, !1765}
!1779 = !{!1780}
!1780 = distinct !{!1780, !1781, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h47d2093944d38971E: %a"}
!1781 = distinct !{!1781, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h47d2093944d38971E"}
!1782 = !{!1783}
!1783 = distinct !{!1783, !1781, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h47d2093944d38971E: %b"}
!1784 = !{!1785}
!1785 = distinct !{!1785, !1786, !"_ZN58FIND_MINIMUM_RADIUS_ATLEAST_K_POINT_LIE_INSIDE_CIRCLE_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h1ee6c5ec76d06603E: %a"}
!1786 = distinct !{!1786, !"_ZN58FIND_MINIMUM_RADIUS_ATLEAST_K_POINT_LIE_INSIDE_CIRCLE_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h1ee6c5ec76d06603E"}
!1787 = !{!1788}
!1788 = distinct !{!1788, !1786, !"_ZN58FIND_MINIMUM_RADIUS_ATLEAST_K_POINT_LIE_INSIDE_CIRCLE_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h1ee6c5ec76d06603E: %b"}
!1789 = !{!1790}
!1790 = distinct !{!1790, !1791, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$f32$GT$11partial_cmp17h51acfdb7fcc2b22aE: %self"}
!1791 = distinct !{!1791, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$f32$GT$11partial_cmp17h51acfdb7fcc2b22aE"}
!1792 = !{!1793}
!1793 = distinct !{!1793, !1791, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$f32$GT$11partial_cmp17h51acfdb7fcc2b22aE: %other"}
!1794 = !{!1790, !1785, !1780}
!1795 = !{!1793, !1788, !1783, !1796}
!1796 = distinct !{!1796, !1797, !"_ZN4core5slice4sort6stable5merge19MergeState$LT$T$GT$10merge_down17ha45849566116a889E: %self"}
!1797 = distinct !{!1797, !"_ZN4core5slice4sort6stable5merge19MergeState$LT$T$GT$10merge_down17ha45849566116a889E"}
!1798 = !{!1793, !1788, !1783}
!1799 = !{!1790, !1785, !1780, !1796}
!1800 = !{!1796}
!1801 = !{!1802}
!1802 = distinct !{!1802, !1803, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h47d2093944d38971E: %a"}
!1803 = distinct !{!1803, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h47d2093944d38971E"}
!1804 = !{!1805}
!1805 = distinct !{!1805, !1803, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h47d2093944d38971E: %b"}
!1806 = !{!1807}
!1807 = distinct !{!1807, !1808, !"_ZN58FIND_MINIMUM_RADIUS_ATLEAST_K_POINT_LIE_INSIDE_CIRCLE_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h1ee6c5ec76d06603E: %a"}
!1808 = distinct !{!1808, !"_ZN58FIND_MINIMUM_RADIUS_ATLEAST_K_POINT_LIE_INSIDE_CIRCLE_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h1ee6c5ec76d06603E"}
!1809 = !{!1810}
!1810 = distinct !{!1810, !1808, !"_ZN58FIND_MINIMUM_RADIUS_ATLEAST_K_POINT_LIE_INSIDE_CIRCLE_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h1ee6c5ec76d06603E: %b"}
!1811 = !{!1812}
!1812 = distinct !{!1812, !1813, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$f32$GT$11partial_cmp17h51acfdb7fcc2b22aE: %self"}
!1813 = distinct !{!1813, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$f32$GT$11partial_cmp17h51acfdb7fcc2b22aE"}
!1814 = !{!1815}
!1815 = distinct !{!1815, !1813, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$f32$GT$11partial_cmp17h51acfdb7fcc2b22aE: %other"}
!1816 = !{!1812, !1807, !1802}
!1817 = !{!1815, !1810, !1805, !1818}
!1818 = distinct !{!1818, !1819, !"_ZN4core5slice4sort6stable5merge19MergeState$LT$T$GT$8merge_up17hf3bb952b16dc98dcE: %self"}
!1819 = distinct !{!1819, !"_ZN4core5slice4sort6stable5merge19MergeState$LT$T$GT$8merge_up17hf3bb952b16dc98dcE"}
!1820 = !{!1815, !1810, !1805}
!1821 = !{!1812, !1807, !1802, !1818}
!1822 = !{!1818}
!1823 = !{!1824, !1826}
!1824 = distinct !{!1824, !1825, !"_ZN95_$LT$core..slice..sort..stable..merge..MergeState$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h21adb8d682c7057dE: %self"}
!1825 = distinct !{!1825, !"_ZN95_$LT$core..slice..sort..stable..merge..MergeState$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h21adb8d682c7057dE"}
!1826 = distinct !{!1826, !1827, !"_ZN4core3ptr76drop_in_place$LT$core..slice..sort..stable..merge..MergeState$LT$f32$GT$$GT$17hd9a83d41a064e66cE: %_1"}
!1827 = distinct !{!1827, !"_ZN4core3ptr76drop_in_place$LT$core..slice..sort..stable..merge..MergeState$LT$f32$GT$$GT$17hd9a83d41a064e66cE"}
!1828 = !{!1829, !1831}
!1829 = distinct !{!1829, !1830, !"_ZN95_$LT$core..slice..sort..stable..merge..MergeState$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h21adb8d682c7057dE: %self"}
!1830 = distinct !{!1830, !"_ZN95_$LT$core..slice..sort..stable..merge..MergeState$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h21adb8d682c7057dE"}
!1831 = distinct !{!1831, !1832, !"_ZN4core3ptr76drop_in_place$LT$core..slice..sort..stable..merge..MergeState$LT$f32$GT$$GT$17hd9a83d41a064e66cE: %_1"}
!1832 = distinct !{!1832, !"_ZN4core3ptr76drop_in_place$LT$core..slice..sort..stable..merge..MergeState$LT$f32$GT$$GT$17hd9a83d41a064e66cE"}
!1833 = !{!1834}
!1834 = distinct !{!1834, !1835, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h310d80ab4250adf7E: %a"}
!1835 = distinct !{!1835, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h310d80ab4250adf7E"}
!1836 = !{!1837}
!1837 = distinct !{!1837, !1835, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h310d80ab4250adf7E: %b"}
!1838 = !{!1839}
!1839 = distinct !{!1839, !1840, !"_ZN4core3ops8function5FnMut8call_mut17h7d33f9a75c1b7329E: argument 0"}
!1840 = distinct !{!1840, !"_ZN4core3ops8function5FnMut8call_mut17h7d33f9a75c1b7329E"}
!1841 = !{!1842}
!1842 = distinct !{!1842, !1840, !"_ZN4core3ops8function5FnMut8call_mut17h7d33f9a75c1b7329E: argument 1"}
!1843 = !{!1844}
!1844 = distinct !{!1844, !1845, !"cmpfunc: %a"}
!1845 = distinct !{!1845, !"cmpfunc"}
!1846 = !{!1847}
!1847 = distinct !{!1847, !1845, !"cmpfunc: %b"}
!1848 = !{!1849}
!1849 = distinct !{!1849, !1850, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!1850 = distinct !{!1850, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!1851 = !{!1852}
!1852 = distinct !{!1852, !1850, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!1853 = !{!1849, !1844, !1839, !1834}
!1854 = !{!1852, !1847, !1842, !1837, !1855}
!1855 = distinct !{!1855, !1856, !"_ZN4core5slice4sort6stable5merge19MergeState$LT$T$GT$10merge_down17h82040c10322937ffE: %self"}
!1856 = distinct !{!1856, !"_ZN4core5slice4sort6stable5merge19MergeState$LT$T$GT$10merge_down17h82040c10322937ffE"}
!1857 = !{!1852, !1847, !1842, !1837}
!1858 = !{!1849, !1844, !1839, !1834, !1855}
!1859 = !{!1855}
!1860 = !{!1861}
!1861 = distinct !{!1861, !1862, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h310d80ab4250adf7E: %a"}
!1862 = distinct !{!1862, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h310d80ab4250adf7E"}
!1863 = !{!1864}
!1864 = distinct !{!1864, !1862, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h310d80ab4250adf7E: %b"}
!1865 = !{!1866}
!1866 = distinct !{!1866, !1867, !"_ZN4core3ops8function5FnMut8call_mut17h7d33f9a75c1b7329E: argument 0"}
!1867 = distinct !{!1867, !"_ZN4core3ops8function5FnMut8call_mut17h7d33f9a75c1b7329E"}
!1868 = !{!1869}
!1869 = distinct !{!1869, !1867, !"_ZN4core3ops8function5FnMut8call_mut17h7d33f9a75c1b7329E: argument 1"}
!1870 = !{!1871}
!1871 = distinct !{!1871, !1872, !"cmpfunc: %a"}
!1872 = distinct !{!1872, !"cmpfunc"}
!1873 = !{!1874}
!1874 = distinct !{!1874, !1872, !"cmpfunc: %b"}
!1875 = !{!1876}
!1876 = distinct !{!1876, !1877, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!1877 = distinct !{!1877, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!1878 = !{!1879}
!1879 = distinct !{!1879, !1877, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!1880 = !{!1876, !1871, !1866, !1861}
!1881 = !{!1879, !1874, !1869, !1864, !1882}
!1882 = distinct !{!1882, !1883, !"_ZN4core5slice4sort6stable5merge19MergeState$LT$T$GT$8merge_up17h551d82588688e894E: %self"}
!1883 = distinct !{!1883, !"_ZN4core5slice4sort6stable5merge19MergeState$LT$T$GT$8merge_up17h551d82588688e894E"}
!1884 = !{!1879, !1874, !1869, !1864}
!1885 = !{!1876, !1871, !1866, !1861, !1882}
!1886 = !{!1882}
!1887 = !{!1888, !1890}
!1888 = distinct !{!1888, !1889, !"_ZN95_$LT$core..slice..sort..stable..merge..MergeState$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h825a2c529873648fE: %self"}
!1889 = distinct !{!1889, !"_ZN95_$LT$core..slice..sort..stable..merge..MergeState$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h825a2c529873648fE"}
!1890 = distinct !{!1890, !1891, !"_ZN4core3ptr76drop_in_place$LT$core..slice..sort..stable..merge..MergeState$LT$i32$GT$$GT$17h777bc40a9f6fc87eE: %_1"}
!1891 = distinct !{!1891, !"_ZN4core3ptr76drop_in_place$LT$core..slice..sort..stable..merge..MergeState$LT$i32$GT$$GT$17h777bc40a9f6fc87eE"}
!1892 = !{!"branch_weights", i32 4000000, i32 4001}
!1893 = !{!1894}
!1894 = distinct !{!1894, !1895, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17h353d22016253964aE: %a"}
!1895 = distinct !{!1895, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17h353d22016253964aE"}
!1896 = !{!1897}
!1897 = distinct !{!1897, !1895, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17h353d22016253964aE: %b"}
!1898 = !{!1899}
!1899 = distinct !{!1899, !1900, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h310d80ab4250adf7E: %a"}
!1900 = distinct !{!1900, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h310d80ab4250adf7E"}
!1901 = !{!1902}
!1902 = distinct !{!1902, !1900, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h310d80ab4250adf7E: %b"}
!1903 = !{!1904}
!1904 = distinct !{!1904, !1905, !"_ZN4core3ops8function5FnMut8call_mut17h7d33f9a75c1b7329E: argument 0"}
!1905 = distinct !{!1905, !"_ZN4core3ops8function5FnMut8call_mut17h7d33f9a75c1b7329E"}
!1906 = !{!1907}
!1907 = distinct !{!1907, !1905, !"_ZN4core3ops8function5FnMut8call_mut17h7d33f9a75c1b7329E: argument 1"}
!1908 = !{!1909}
!1909 = distinct !{!1909, !1910, !"cmpfunc: %a"}
!1910 = distinct !{!1910, !"cmpfunc"}
!1911 = !{!1912}
!1912 = distinct !{!1912, !1910, !"cmpfunc: %b"}
!1913 = !{!1914}
!1914 = distinct !{!1914, !1915, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!1915 = distinct !{!1915, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!1916 = !{!1917}
!1917 = distinct !{!1917, !1915, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!1918 = !{!1914, !1909, !1904, !1899, !1897}
!1919 = !{!1917, !1912, !1907, !1902, !1894}
!1920 = !{!1921}
!1921 = distinct !{!1921, !1922, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17he2df93c6488aa0ddE: %self"}
!1922 = distinct !{!1922, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17he2df93c6488aa0ddE"}
!1923 = !{!1924}
!1924 = distinct !{!1924, !1925, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17h353d22016253964aE: %a"}
!1925 = distinct !{!1925, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17h353d22016253964aE"}
!1926 = !{!1927}
!1927 = distinct !{!1927, !1925, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17h353d22016253964aE: %b"}
!1928 = !{!1929}
!1929 = distinct !{!1929, !1930, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h310d80ab4250adf7E: %a"}
!1930 = distinct !{!1930, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h310d80ab4250adf7E"}
!1931 = !{!1932}
!1932 = distinct !{!1932, !1930, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h310d80ab4250adf7E: %b"}
!1933 = !{!1934}
!1934 = distinct !{!1934, !1935, !"_ZN4core3ops8function5FnMut8call_mut17h7d33f9a75c1b7329E: argument 0"}
!1935 = distinct !{!1935, !"_ZN4core3ops8function5FnMut8call_mut17h7d33f9a75c1b7329E"}
!1936 = !{!1937}
!1937 = distinct !{!1937, !1935, !"_ZN4core3ops8function5FnMut8call_mut17h7d33f9a75c1b7329E: argument 1"}
!1938 = !{!1939}
!1939 = distinct !{!1939, !1940, !"cmpfunc: %a"}
!1940 = distinct !{!1940, !"cmpfunc"}
!1941 = !{!1942}
!1942 = distinct !{!1942, !1940, !"cmpfunc: %b"}
!1943 = !{!1944}
!1944 = distinct !{!1944, !1945, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!1945 = distinct !{!1945, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!1946 = !{!1947}
!1947 = distinct !{!1947, !1945, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!1948 = !{!1944, !1939, !1934, !1929, !1927}
!1949 = !{!1947, !1942, !1937, !1932, !1924}
!1950 = !{!1951}
!1951 = distinct !{!1951, !1952, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17he2df93c6488aa0ddE: %self"}
!1952 = distinct !{!1952, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17he2df93c6488aa0ddE"}
!1953 = !{!1954}
!1954 = distinct !{!1954, !1955, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17h353d22016253964aE: %a"}
!1955 = distinct !{!1955, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17h353d22016253964aE"}
!1956 = !{!1957}
!1957 = distinct !{!1957, !1955, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17h353d22016253964aE: %b"}
!1958 = !{!1959}
!1959 = distinct !{!1959, !1960, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h310d80ab4250adf7E: %a"}
!1960 = distinct !{!1960, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h310d80ab4250adf7E"}
!1961 = !{!1962}
!1962 = distinct !{!1962, !1960, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h310d80ab4250adf7E: %b"}
!1963 = !{!1964}
!1964 = distinct !{!1964, !1965, !"_ZN4core3ops8function5FnMut8call_mut17h7d33f9a75c1b7329E: argument 0"}
!1965 = distinct !{!1965, !"_ZN4core3ops8function5FnMut8call_mut17h7d33f9a75c1b7329E"}
!1966 = !{!1967}
!1967 = distinct !{!1967, !1965, !"_ZN4core3ops8function5FnMut8call_mut17h7d33f9a75c1b7329E: argument 1"}
!1968 = !{!1969}
!1969 = distinct !{!1969, !1970, !"cmpfunc: %a"}
!1970 = distinct !{!1970, !"cmpfunc"}
!1971 = !{!1972}
!1972 = distinct !{!1972, !1970, !"cmpfunc: %b"}
!1973 = !{!1974}
!1974 = distinct !{!1974, !1975, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!1975 = distinct !{!1975, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!1976 = !{!1977}
!1977 = distinct !{!1977, !1975, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!1978 = !{!1974, !1969, !1964, !1959, !1957}
!1979 = !{!1977, !1972, !1967, !1962, !1954}
!1980 = !{!1981}
!1981 = distinct !{!1981, !1982, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17he2df93c6488aa0ddE: %self"}
!1982 = distinct !{!1982, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17he2df93c6488aa0ddE"}
!1983 = !{!1984}
!1984 = distinct !{!1984, !1985, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17h353d22016253964aE: %a"}
!1985 = distinct !{!1985, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17h353d22016253964aE"}
!1986 = !{!1987}
!1987 = distinct !{!1987, !1985, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17h353d22016253964aE: %b"}
!1988 = !{!1989}
!1989 = distinct !{!1989, !1990, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h310d80ab4250adf7E: %a"}
!1990 = distinct !{!1990, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h310d80ab4250adf7E"}
!1991 = !{!1992}
!1992 = distinct !{!1992, !1990, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h310d80ab4250adf7E: %b"}
!1993 = !{!1994}
!1994 = distinct !{!1994, !1995, !"_ZN4core3ops8function5FnMut8call_mut17h7d33f9a75c1b7329E: argument 0"}
!1995 = distinct !{!1995, !"_ZN4core3ops8function5FnMut8call_mut17h7d33f9a75c1b7329E"}
!1996 = !{!1997}
!1997 = distinct !{!1997, !1995, !"_ZN4core3ops8function5FnMut8call_mut17h7d33f9a75c1b7329E: argument 1"}
!1998 = !{!1999}
!1999 = distinct !{!1999, !2000, !"cmpfunc: %a"}
!2000 = distinct !{!2000, !"cmpfunc"}
!2001 = !{!2002}
!2002 = distinct !{!2002, !2000, !"cmpfunc: %b"}
!2003 = !{!2004}
!2004 = distinct !{!2004, !2005, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!2005 = distinct !{!2005, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!2006 = !{!2007}
!2007 = distinct !{!2007, !2005, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!2008 = !{!2004, !1999, !1994, !1989, !1987}
!2009 = !{!2007, !2002, !1997, !1992, !1984}
!2010 = !{!2011}
!2011 = distinct !{!2011, !2012, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17he2df93c6488aa0ddE: %self"}
!2012 = distinct !{!2012, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17he2df93c6488aa0ddE"}
!2013 = !{!2014}
!2014 = distinct !{!2014, !2015, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17h353d22016253964aE: %a"}
!2015 = distinct !{!2015, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17h353d22016253964aE"}
!2016 = !{!2017}
!2017 = distinct !{!2017, !2015, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17h353d22016253964aE: %b"}
!2018 = !{!2019}
!2019 = distinct !{!2019, !2020, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h310d80ab4250adf7E: %a"}
!2020 = distinct !{!2020, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h310d80ab4250adf7E"}
!2021 = !{!2022}
!2022 = distinct !{!2022, !2020, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h310d80ab4250adf7E: %b"}
!2023 = !{!2024}
!2024 = distinct !{!2024, !2025, !"_ZN4core3ops8function5FnMut8call_mut17h7d33f9a75c1b7329E: argument 0"}
!2025 = distinct !{!2025, !"_ZN4core3ops8function5FnMut8call_mut17h7d33f9a75c1b7329E"}
!2026 = !{!2027}
!2027 = distinct !{!2027, !2025, !"_ZN4core3ops8function5FnMut8call_mut17h7d33f9a75c1b7329E: argument 1"}
!2028 = !{!2029}
!2029 = distinct !{!2029, !2030, !"cmpfunc: %a"}
!2030 = distinct !{!2030, !"cmpfunc"}
!2031 = !{!2032}
!2032 = distinct !{!2032, !2030, !"cmpfunc: %b"}
!2033 = !{!2034}
!2034 = distinct !{!2034, !2035, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!2035 = distinct !{!2035, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!2036 = !{!2037}
!2037 = distinct !{!2037, !2035, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!2038 = !{!2034, !2029, !2024, !2019, !2017}
!2039 = !{!2037, !2032, !2027, !2022, !2014}
!2040 = !{!2041}
!2041 = distinct !{!2041, !2042, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17he2df93c6488aa0ddE: %self"}
!2042 = distinct !{!2042, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17he2df93c6488aa0ddE"}
!2043 = !{!2044}
!2044 = distinct !{!2044, !2045, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17he2df93c6488aa0ddE: %self"}
!2045 = distinct !{!2045, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17he2df93c6488aa0ddE"}
!2046 = distinct !{!2046, !2047}
!2047 = !{!"llvm.loop.unroll.disable"}
!2048 = !{!2049}
!2049 = distinct !{!2049, !2050, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17hfb79a77bb13a9fcfE: %a"}
!2050 = distinct !{!2050, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17hfb79a77bb13a9fcfE"}
!2051 = !{!2052}
!2052 = distinct !{!2052, !2050, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17hfb79a77bb13a9fcfE: %b"}
!2053 = !{!2054}
!2054 = distinct !{!2054, !2055, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h47d2093944d38971E: %a"}
!2055 = distinct !{!2055, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h47d2093944d38971E"}
!2056 = !{!2057}
!2057 = distinct !{!2057, !2055, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h47d2093944d38971E: %b"}
!2058 = !{!2059}
!2059 = distinct !{!2059, !2060, !"_ZN58FIND_MINIMUM_RADIUS_ATLEAST_K_POINT_LIE_INSIDE_CIRCLE_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h1ee6c5ec76d06603E: %a"}
!2060 = distinct !{!2060, !"_ZN58FIND_MINIMUM_RADIUS_ATLEAST_K_POINT_LIE_INSIDE_CIRCLE_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h1ee6c5ec76d06603E"}
!2061 = !{!2062}
!2062 = distinct !{!2062, !2060, !"_ZN58FIND_MINIMUM_RADIUS_ATLEAST_K_POINT_LIE_INSIDE_CIRCLE_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h1ee6c5ec76d06603E: %b"}
!2063 = !{!2064}
!2064 = distinct !{!2064, !2065, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$f32$GT$11partial_cmp17h51acfdb7fcc2b22aE: %self"}
!2065 = distinct !{!2065, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$f32$GT$11partial_cmp17h51acfdb7fcc2b22aE"}
!2066 = !{!2067}
!2067 = distinct !{!2067, !2065, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$f32$GT$11partial_cmp17h51acfdb7fcc2b22aE: %other"}
!2068 = !{!2064, !2059, !2054, !2052}
!2069 = !{!2067, !2062, !2057, !2049}
!2070 = !{!2059, !2062, !2054, !2057, !2049, !2052}
!2071 = !{!2072}
!2072 = distinct !{!2072, !2073, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17he28618422af7c6b6E: %self"}
!2073 = distinct !{!2073, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17he28618422af7c6b6E"}
!2074 = !{!2075}
!2075 = distinct !{!2075, !2076, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17hfb79a77bb13a9fcfE: %a"}
!2076 = distinct !{!2076, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17hfb79a77bb13a9fcfE"}
!2077 = !{!2078}
!2078 = distinct !{!2078, !2076, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17hfb79a77bb13a9fcfE: %b"}
!2079 = !{!2080}
!2080 = distinct !{!2080, !2081, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h47d2093944d38971E: %a"}
!2081 = distinct !{!2081, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h47d2093944d38971E"}
!2082 = !{!2083}
!2083 = distinct !{!2083, !2081, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h47d2093944d38971E: %b"}
!2084 = !{!2085}
!2085 = distinct !{!2085, !2086, !"_ZN58FIND_MINIMUM_RADIUS_ATLEAST_K_POINT_LIE_INSIDE_CIRCLE_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h1ee6c5ec76d06603E: %a"}
!2086 = distinct !{!2086, !"_ZN58FIND_MINIMUM_RADIUS_ATLEAST_K_POINT_LIE_INSIDE_CIRCLE_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h1ee6c5ec76d06603E"}
!2087 = !{!2088}
!2088 = distinct !{!2088, !2086, !"_ZN58FIND_MINIMUM_RADIUS_ATLEAST_K_POINT_LIE_INSIDE_CIRCLE_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h1ee6c5ec76d06603E: %b"}
!2089 = !{!2090}
!2090 = distinct !{!2090, !2091, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$f32$GT$11partial_cmp17h51acfdb7fcc2b22aE: %self"}
!2091 = distinct !{!2091, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$f32$GT$11partial_cmp17h51acfdb7fcc2b22aE"}
!2092 = !{!2093}
!2093 = distinct !{!2093, !2091, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$f32$GT$11partial_cmp17h51acfdb7fcc2b22aE: %other"}
!2094 = !{!2090, !2085, !2080, !2078}
!2095 = !{!2093, !2088, !2083, !2075}
!2096 = !{!2085, !2088, !2080, !2083, !2075, !2078}
!2097 = !{!2098}
!2098 = distinct !{!2098, !2099, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17he28618422af7c6b6E: %self"}
!2099 = distinct !{!2099, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17he28618422af7c6b6E"}
!2100 = !{!2101}
!2101 = distinct !{!2101, !2102, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17hfb79a77bb13a9fcfE: %a"}
!2102 = distinct !{!2102, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17hfb79a77bb13a9fcfE"}
!2103 = !{!2104}
!2104 = distinct !{!2104, !2102, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17hfb79a77bb13a9fcfE: %b"}
!2105 = !{!2106}
!2106 = distinct !{!2106, !2107, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h47d2093944d38971E: %a"}
!2107 = distinct !{!2107, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h47d2093944d38971E"}
!2108 = !{!2109}
!2109 = distinct !{!2109, !2107, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h47d2093944d38971E: %b"}
!2110 = !{!2111}
!2111 = distinct !{!2111, !2112, !"_ZN58FIND_MINIMUM_RADIUS_ATLEAST_K_POINT_LIE_INSIDE_CIRCLE_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h1ee6c5ec76d06603E: %a"}
!2112 = distinct !{!2112, !"_ZN58FIND_MINIMUM_RADIUS_ATLEAST_K_POINT_LIE_INSIDE_CIRCLE_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h1ee6c5ec76d06603E"}
!2113 = !{!2114}
!2114 = distinct !{!2114, !2112, !"_ZN58FIND_MINIMUM_RADIUS_ATLEAST_K_POINT_LIE_INSIDE_CIRCLE_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h1ee6c5ec76d06603E: %b"}
!2115 = !{!2116}
!2116 = distinct !{!2116, !2117, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$f32$GT$11partial_cmp17h51acfdb7fcc2b22aE: %self"}
!2117 = distinct !{!2117, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$f32$GT$11partial_cmp17h51acfdb7fcc2b22aE"}
!2118 = !{!2119}
!2119 = distinct !{!2119, !2117, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$f32$GT$11partial_cmp17h51acfdb7fcc2b22aE: %other"}
!2120 = !{!2116, !2111, !2106, !2104}
!2121 = !{!2119, !2114, !2109, !2101}
!2122 = !{!2111, !2114, !2106, !2109, !2101, !2104}
!2123 = !{!2124}
!2124 = distinct !{!2124, !2125, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17he28618422af7c6b6E: %self"}
!2125 = distinct !{!2125, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17he28618422af7c6b6E"}
!2126 = !{!2127}
!2127 = distinct !{!2127, !2128, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17hfb79a77bb13a9fcfE: %a"}
!2128 = distinct !{!2128, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17hfb79a77bb13a9fcfE"}
!2129 = !{!2130}
!2130 = distinct !{!2130, !2128, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17hfb79a77bb13a9fcfE: %b"}
!2131 = !{!2132}
!2132 = distinct !{!2132, !2133, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h47d2093944d38971E: %a"}
!2133 = distinct !{!2133, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h47d2093944d38971E"}
!2134 = !{!2135}
!2135 = distinct !{!2135, !2133, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h47d2093944d38971E: %b"}
!2136 = !{!2137}
!2137 = distinct !{!2137, !2138, !"_ZN58FIND_MINIMUM_RADIUS_ATLEAST_K_POINT_LIE_INSIDE_CIRCLE_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h1ee6c5ec76d06603E: %a"}
!2138 = distinct !{!2138, !"_ZN58FIND_MINIMUM_RADIUS_ATLEAST_K_POINT_LIE_INSIDE_CIRCLE_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h1ee6c5ec76d06603E"}
!2139 = !{!2140}
!2140 = distinct !{!2140, !2138, !"_ZN58FIND_MINIMUM_RADIUS_ATLEAST_K_POINT_LIE_INSIDE_CIRCLE_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h1ee6c5ec76d06603E: %b"}
!2141 = !{!2142}
!2142 = distinct !{!2142, !2143, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$f32$GT$11partial_cmp17h51acfdb7fcc2b22aE: %self"}
!2143 = distinct !{!2143, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$f32$GT$11partial_cmp17h51acfdb7fcc2b22aE"}
!2144 = !{!2145}
!2145 = distinct !{!2145, !2143, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$f32$GT$11partial_cmp17h51acfdb7fcc2b22aE: %other"}
!2146 = !{!2142, !2137, !2132, !2130}
!2147 = !{!2145, !2140, !2135, !2127}
!2148 = !{!2137, !2140, !2132, !2135, !2127, !2130}
!2149 = !{!2150}
!2150 = distinct !{!2150, !2151, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17he28618422af7c6b6E: %self"}
!2151 = distinct !{!2151, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17he28618422af7c6b6E"}
!2152 = !{!2153}
!2153 = distinct !{!2153, !2154, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17hfb79a77bb13a9fcfE: %a"}
!2154 = distinct !{!2154, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17hfb79a77bb13a9fcfE"}
!2155 = !{!2156}
!2156 = distinct !{!2156, !2154, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17hfb79a77bb13a9fcfE: %b"}
!2157 = !{!2158}
!2158 = distinct !{!2158, !2159, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h47d2093944d38971E: %a"}
!2159 = distinct !{!2159, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h47d2093944d38971E"}
!2160 = !{!2161}
!2161 = distinct !{!2161, !2159, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h47d2093944d38971E: %b"}
!2162 = !{!2163}
!2163 = distinct !{!2163, !2164, !"_ZN58FIND_MINIMUM_RADIUS_ATLEAST_K_POINT_LIE_INSIDE_CIRCLE_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h1ee6c5ec76d06603E: %a"}
!2164 = distinct !{!2164, !"_ZN58FIND_MINIMUM_RADIUS_ATLEAST_K_POINT_LIE_INSIDE_CIRCLE_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h1ee6c5ec76d06603E"}
!2165 = !{!2166}
!2166 = distinct !{!2166, !2164, !"_ZN58FIND_MINIMUM_RADIUS_ATLEAST_K_POINT_LIE_INSIDE_CIRCLE_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h1ee6c5ec76d06603E: %b"}
!2167 = !{!2168}
!2168 = distinct !{!2168, !2169, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$f32$GT$11partial_cmp17h51acfdb7fcc2b22aE: %self"}
!2169 = distinct !{!2169, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$f32$GT$11partial_cmp17h51acfdb7fcc2b22aE"}
!2170 = !{!2171}
!2171 = distinct !{!2171, !2169, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$f32$GT$11partial_cmp17h51acfdb7fcc2b22aE: %other"}
!2172 = !{!2168, !2163, !2158, !2156}
!2173 = !{!2171, !2166, !2161, !2153}
!2174 = !{!2163, !2166, !2158, !2161, !2153, !2156}
!2175 = !{!2176}
!2176 = distinct !{!2176, !2177, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17he28618422af7c6b6E: %self"}
!2177 = distinct !{!2177, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17he28618422af7c6b6E"}
!2178 = !{!2179}
!2179 = distinct !{!2179, !2180, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17he28618422af7c6b6E: %self"}
!2180 = distinct !{!2180, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17he28618422af7c6b6E"}
!2181 = distinct !{!2181, !2047}
!2182 = !{!2183}
!2183 = distinct !{!2183, !2184, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h47d2093944d38971E: %a"}
!2184 = distinct !{!2184, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h47d2093944d38971E"}
!2185 = !{!2186}
!2186 = distinct !{!2186, !2184, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h47d2093944d38971E: %b"}
!2187 = !{!2188}
!2188 = distinct !{!2188, !2189, !"_ZN58FIND_MINIMUM_RADIUS_ATLEAST_K_POINT_LIE_INSIDE_CIRCLE_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h1ee6c5ec76d06603E: %a"}
!2189 = distinct !{!2189, !"_ZN58FIND_MINIMUM_RADIUS_ATLEAST_K_POINT_LIE_INSIDE_CIRCLE_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h1ee6c5ec76d06603E"}
!2190 = !{!2191}
!2191 = distinct !{!2191, !2189, !"_ZN58FIND_MINIMUM_RADIUS_ATLEAST_K_POINT_LIE_INSIDE_CIRCLE_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h1ee6c5ec76d06603E: %b"}
!2192 = !{!2193}
!2193 = distinct !{!2193, !2194, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$f32$GT$11partial_cmp17h51acfdb7fcc2b22aE: %self"}
!2194 = distinct !{!2194, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$f32$GT$11partial_cmp17h51acfdb7fcc2b22aE"}
!2195 = !{!2196}
!2196 = distinct !{!2196, !2194, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$f32$GT$11partial_cmp17h51acfdb7fcc2b22aE: %other"}
!2197 = !{!2193, !2188, !2183}
!2198 = !{!2196, !2191, !2186}
!2199 = !{!2188, !2191, !2183, !2186}
!2200 = !{!2201}
!2201 = distinct !{!2201, !2202, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17he28618422af7c6b6E: %self"}
!2202 = distinct !{!2202, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17he28618422af7c6b6E"}
!2203 = !{!2204}
!2204 = distinct !{!2204, !2205, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h47d2093944d38971E: %a"}
!2205 = distinct !{!2205, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h47d2093944d38971E"}
!2206 = !{!2207}
!2207 = distinct !{!2207, !2205, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h47d2093944d38971E: %b"}
!2208 = !{!2209}
!2209 = distinct !{!2209, !2210, !"_ZN58FIND_MINIMUM_RADIUS_ATLEAST_K_POINT_LIE_INSIDE_CIRCLE_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h1ee6c5ec76d06603E: %a"}
!2210 = distinct !{!2210, !"_ZN58FIND_MINIMUM_RADIUS_ATLEAST_K_POINT_LIE_INSIDE_CIRCLE_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h1ee6c5ec76d06603E"}
!2211 = !{!2212}
!2212 = distinct !{!2212, !2210, !"_ZN58FIND_MINIMUM_RADIUS_ATLEAST_K_POINT_LIE_INSIDE_CIRCLE_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h1ee6c5ec76d06603E: %b"}
!2213 = !{!2214}
!2214 = distinct !{!2214, !2215, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$f32$GT$11partial_cmp17h51acfdb7fcc2b22aE: %self"}
!2215 = distinct !{!2215, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$f32$GT$11partial_cmp17h51acfdb7fcc2b22aE"}
!2216 = !{!2217}
!2217 = distinct !{!2217, !2215, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$f32$GT$11partial_cmp17h51acfdb7fcc2b22aE: %other"}
!2218 = !{!2214, !2209, !2204}
!2219 = !{!2217, !2212, !2207}
!2220 = !{!2209, !2212, !2204, !2207}
!2221 = !{!2222}
!2222 = distinct !{!2222, !2223, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17he28618422af7c6b6E: %self"}
!2223 = distinct !{!2223, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17he28618422af7c6b6E"}
!2224 = !{!2225}
!2225 = distinct !{!2225, !2226, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h47d2093944d38971E: %a"}
!2226 = distinct !{!2226, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h47d2093944d38971E"}
!2227 = !{!2228}
!2228 = distinct !{!2228, !2226, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h47d2093944d38971E: %b"}
!2229 = !{!2230}
!2230 = distinct !{!2230, !2231, !"_ZN58FIND_MINIMUM_RADIUS_ATLEAST_K_POINT_LIE_INSIDE_CIRCLE_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h1ee6c5ec76d06603E: %a"}
!2231 = distinct !{!2231, !"_ZN58FIND_MINIMUM_RADIUS_ATLEAST_K_POINT_LIE_INSIDE_CIRCLE_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h1ee6c5ec76d06603E"}
!2232 = !{!2233}
!2233 = distinct !{!2233, !2231, !"_ZN58FIND_MINIMUM_RADIUS_ATLEAST_K_POINT_LIE_INSIDE_CIRCLE_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h1ee6c5ec76d06603E: %b"}
!2234 = !{!2235}
!2235 = distinct !{!2235, !2236, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$f32$GT$11partial_cmp17h51acfdb7fcc2b22aE: %self"}
!2236 = distinct !{!2236, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$f32$GT$11partial_cmp17h51acfdb7fcc2b22aE"}
!2237 = !{!2238}
!2238 = distinct !{!2238, !2236, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$f32$GT$11partial_cmp17h51acfdb7fcc2b22aE: %other"}
!2239 = !{!2235, !2230, !2225}
!2240 = !{!2238, !2233, !2228}
!2241 = !{!2230, !2233, !2225, !2228}
!2242 = !{!2243}
!2243 = distinct !{!2243, !2244, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17he28618422af7c6b6E: %self"}
!2244 = distinct !{!2244, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17he28618422af7c6b6E"}
!2245 = !{!2246}
!2246 = distinct !{!2246, !2247, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h47d2093944d38971E: %a"}
!2247 = distinct !{!2247, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h47d2093944d38971E"}
!2248 = !{!2249}
!2249 = distinct !{!2249, !2247, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h47d2093944d38971E: %b"}
!2250 = !{!2251}
!2251 = distinct !{!2251, !2252, !"_ZN58FIND_MINIMUM_RADIUS_ATLEAST_K_POINT_LIE_INSIDE_CIRCLE_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h1ee6c5ec76d06603E: %a"}
!2252 = distinct !{!2252, !"_ZN58FIND_MINIMUM_RADIUS_ATLEAST_K_POINT_LIE_INSIDE_CIRCLE_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h1ee6c5ec76d06603E"}
!2253 = !{!2254}
!2254 = distinct !{!2254, !2252, !"_ZN58FIND_MINIMUM_RADIUS_ATLEAST_K_POINT_LIE_INSIDE_CIRCLE_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h1ee6c5ec76d06603E: %b"}
!2255 = !{!2256}
!2256 = distinct !{!2256, !2257, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$f32$GT$11partial_cmp17h51acfdb7fcc2b22aE: %self"}
!2257 = distinct !{!2257, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$f32$GT$11partial_cmp17h51acfdb7fcc2b22aE"}
!2258 = !{!2259}
!2259 = distinct !{!2259, !2257, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$f32$GT$11partial_cmp17h51acfdb7fcc2b22aE: %other"}
!2260 = !{!2256, !2251, !2246}
!2261 = !{!2259, !2254, !2249}
!2262 = !{!2251, !2254, !2246, !2249}
!2263 = !{!2264}
!2264 = distinct !{!2264, !2265, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17he28618422af7c6b6E: %self"}
!2265 = distinct !{!2265, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17he28618422af7c6b6E"}
!2266 = !{!2267}
!2267 = distinct !{!2267, !2268, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h47d2093944d38971E: %a"}
!2268 = distinct !{!2268, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h47d2093944d38971E"}
!2269 = !{!2270}
!2270 = distinct !{!2270, !2268, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h47d2093944d38971E: %b"}
!2271 = !{!2272}
!2272 = distinct !{!2272, !2273, !"_ZN58FIND_MINIMUM_RADIUS_ATLEAST_K_POINT_LIE_INSIDE_CIRCLE_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h1ee6c5ec76d06603E: %a"}
!2273 = distinct !{!2273, !"_ZN58FIND_MINIMUM_RADIUS_ATLEAST_K_POINT_LIE_INSIDE_CIRCLE_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h1ee6c5ec76d06603E"}
!2274 = !{!2275}
!2275 = distinct !{!2275, !2273, !"_ZN58FIND_MINIMUM_RADIUS_ATLEAST_K_POINT_LIE_INSIDE_CIRCLE_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h1ee6c5ec76d06603E: %b"}
!2276 = !{!2277}
!2277 = distinct !{!2277, !2278, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$f32$GT$11partial_cmp17h51acfdb7fcc2b22aE: %self"}
!2278 = distinct !{!2278, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$f32$GT$11partial_cmp17h51acfdb7fcc2b22aE"}
!2279 = !{!2280}
!2280 = distinct !{!2280, !2278, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$f32$GT$11partial_cmp17h51acfdb7fcc2b22aE: %other"}
!2281 = !{!2277, !2272, !2267}
!2282 = !{!2280, !2275, !2270}
!2283 = !{!2272, !2275, !2267, !2270}
!2284 = !{!2285}
!2285 = distinct !{!2285, !2286, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17he28618422af7c6b6E: %self"}
!2286 = distinct !{!2286, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17he28618422af7c6b6E"}
!2287 = !{!2288}
!2288 = distinct !{!2288, !2289, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17he28618422af7c6b6E: %self"}
!2289 = distinct !{!2289, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17he28618422af7c6b6E"}
!2290 = distinct !{!2290, !2047}
!2291 = !{!2292}
!2292 = distinct !{!2292, !2293, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h310d80ab4250adf7E: %a"}
!2293 = distinct !{!2293, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h310d80ab4250adf7E"}
!2294 = !{!2295}
!2295 = distinct !{!2295, !2293, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h310d80ab4250adf7E: %b"}
!2296 = !{!2297}
!2297 = distinct !{!2297, !2298, !"_ZN4core3ops8function5FnMut8call_mut17h7d33f9a75c1b7329E: argument 0"}
!2298 = distinct !{!2298, !"_ZN4core3ops8function5FnMut8call_mut17h7d33f9a75c1b7329E"}
!2299 = !{!2300}
!2300 = distinct !{!2300, !2298, !"_ZN4core3ops8function5FnMut8call_mut17h7d33f9a75c1b7329E: argument 1"}
!2301 = !{!2302}
!2302 = distinct !{!2302, !2303, !"cmpfunc: %a"}
!2303 = distinct !{!2303, !"cmpfunc"}
!2304 = !{!2305}
!2305 = distinct !{!2305, !2303, !"cmpfunc: %b"}
!2306 = !{!2307}
!2307 = distinct !{!2307, !2308, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!2308 = distinct !{!2308, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!2309 = !{!2310}
!2310 = distinct !{!2310, !2308, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!2311 = !{!2307, !2302, !2297, !2292}
!2312 = !{!2310, !2305, !2300, !2295}
!2313 = !{!2314}
!2314 = distinct !{!2314, !2315, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17he2df93c6488aa0ddE: %self"}
!2315 = distinct !{!2315, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17he2df93c6488aa0ddE"}
!2316 = !{!2317}
!2317 = distinct !{!2317, !2318, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h310d80ab4250adf7E: %a"}
!2318 = distinct !{!2318, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h310d80ab4250adf7E"}
!2319 = !{!2320}
!2320 = distinct !{!2320, !2318, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h310d80ab4250adf7E: %b"}
!2321 = !{!2322}
!2322 = distinct !{!2322, !2323, !"_ZN4core3ops8function5FnMut8call_mut17h7d33f9a75c1b7329E: argument 0"}
!2323 = distinct !{!2323, !"_ZN4core3ops8function5FnMut8call_mut17h7d33f9a75c1b7329E"}
!2324 = !{!2325}
!2325 = distinct !{!2325, !2323, !"_ZN4core3ops8function5FnMut8call_mut17h7d33f9a75c1b7329E: argument 1"}
!2326 = !{!2327}
!2327 = distinct !{!2327, !2328, !"cmpfunc: %a"}
!2328 = distinct !{!2328, !"cmpfunc"}
!2329 = !{!2330}
!2330 = distinct !{!2330, !2328, !"cmpfunc: %b"}
!2331 = !{!2332}
!2332 = distinct !{!2332, !2333, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!2333 = distinct !{!2333, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!2334 = !{!2335}
!2335 = distinct !{!2335, !2333, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!2336 = !{!2332, !2327, !2322, !2317}
!2337 = !{!2335, !2330, !2325, !2320}
!2338 = !{!2339}
!2339 = distinct !{!2339, !2340, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17he2df93c6488aa0ddE: %self"}
!2340 = distinct !{!2340, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17he2df93c6488aa0ddE"}
!2341 = !{!2342}
!2342 = distinct !{!2342, !2343, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h310d80ab4250adf7E: %a"}
!2343 = distinct !{!2343, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h310d80ab4250adf7E"}
!2344 = !{!2345}
!2345 = distinct !{!2345, !2343, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h310d80ab4250adf7E: %b"}
!2346 = !{!2347}
!2347 = distinct !{!2347, !2348, !"_ZN4core3ops8function5FnMut8call_mut17h7d33f9a75c1b7329E: argument 0"}
!2348 = distinct !{!2348, !"_ZN4core3ops8function5FnMut8call_mut17h7d33f9a75c1b7329E"}
!2349 = !{!2350}
!2350 = distinct !{!2350, !2348, !"_ZN4core3ops8function5FnMut8call_mut17h7d33f9a75c1b7329E: argument 1"}
!2351 = !{!2352}
!2352 = distinct !{!2352, !2353, !"cmpfunc: %a"}
!2353 = distinct !{!2353, !"cmpfunc"}
!2354 = !{!2355}
!2355 = distinct !{!2355, !2353, !"cmpfunc: %b"}
!2356 = !{!2357}
!2357 = distinct !{!2357, !2358, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!2358 = distinct !{!2358, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!2359 = !{!2360}
!2360 = distinct !{!2360, !2358, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!2361 = !{!2357, !2352, !2347, !2342}
!2362 = !{!2360, !2355, !2350, !2345}
!2363 = !{!2364}
!2364 = distinct !{!2364, !2365, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17he2df93c6488aa0ddE: %self"}
!2365 = distinct !{!2365, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17he2df93c6488aa0ddE"}
!2366 = !{!2367}
!2367 = distinct !{!2367, !2368, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h310d80ab4250adf7E: %a"}
!2368 = distinct !{!2368, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h310d80ab4250adf7E"}
!2369 = !{!2370}
!2370 = distinct !{!2370, !2368, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h310d80ab4250adf7E: %b"}
!2371 = !{!2372}
!2372 = distinct !{!2372, !2373, !"_ZN4core3ops8function5FnMut8call_mut17h7d33f9a75c1b7329E: argument 0"}
!2373 = distinct !{!2373, !"_ZN4core3ops8function5FnMut8call_mut17h7d33f9a75c1b7329E"}
!2374 = !{!2375}
!2375 = distinct !{!2375, !2373, !"_ZN4core3ops8function5FnMut8call_mut17h7d33f9a75c1b7329E: argument 1"}
!2376 = !{!2377}
!2377 = distinct !{!2377, !2378, !"cmpfunc: %a"}
!2378 = distinct !{!2378, !"cmpfunc"}
!2379 = !{!2380}
!2380 = distinct !{!2380, !2378, !"cmpfunc: %b"}
!2381 = !{!2382}
!2382 = distinct !{!2382, !2383, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!2383 = distinct !{!2383, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!2384 = !{!2385}
!2385 = distinct !{!2385, !2383, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!2386 = !{!2382, !2377, !2372, !2367}
!2387 = !{!2385, !2380, !2375, !2370}
!2388 = !{!2389}
!2389 = distinct !{!2389, !2390, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17he2df93c6488aa0ddE: %self"}
!2390 = distinct !{!2390, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17he2df93c6488aa0ddE"}
!2391 = !{!2392}
!2392 = distinct !{!2392, !2393, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h310d80ab4250adf7E: %a"}
!2393 = distinct !{!2393, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h310d80ab4250adf7E"}
!2394 = !{!2395}
!2395 = distinct !{!2395, !2393, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h310d80ab4250adf7E: %b"}
!2396 = !{!2397}
!2397 = distinct !{!2397, !2398, !"_ZN4core3ops8function5FnMut8call_mut17h7d33f9a75c1b7329E: argument 0"}
!2398 = distinct !{!2398, !"_ZN4core3ops8function5FnMut8call_mut17h7d33f9a75c1b7329E"}
!2399 = !{!2400}
!2400 = distinct !{!2400, !2398, !"_ZN4core3ops8function5FnMut8call_mut17h7d33f9a75c1b7329E: argument 1"}
!2401 = !{!2402}
!2402 = distinct !{!2402, !2403, !"cmpfunc: %a"}
!2403 = distinct !{!2403, !"cmpfunc"}
!2404 = !{!2405}
!2405 = distinct !{!2405, !2403, !"cmpfunc: %b"}
!2406 = !{!2407}
!2407 = distinct !{!2407, !2408, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!2408 = distinct !{!2408, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!2409 = !{!2410}
!2410 = distinct !{!2410, !2408, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!2411 = !{!2407, !2402, !2397, !2392}
!2412 = !{!2410, !2405, !2400, !2395}
!2413 = !{!2414}
!2414 = distinct !{!2414, !2415, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17he2df93c6488aa0ddE: %self"}
!2415 = distinct !{!2415, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17he2df93c6488aa0ddE"}
!2416 = !{!2417}
!2417 = distinct !{!2417, !2418, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17he2df93c6488aa0ddE: %self"}
!2418 = distinct !{!2418, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17he2df93c6488aa0ddE"}
!2419 = distinct !{!2419, !2047}
!2420 = !{!2421}
!2421 = distinct !{!2421, !2422, !"_ZN4core5slice4sort6shared5pivot12choose_pivot17h30130fdc5e5525a2E: %v.0"}
!2422 = distinct !{!2422, !"_ZN4core5slice4sort6shared5pivot12choose_pivot17h30130fdc5e5525a2E"}
!2423 = !{!2424}
!2424 = distinct !{!2424, !2425, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h47d2093944d38971E: %a"}
!2425 = distinct !{!2425, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h47d2093944d38971E"}
!2426 = !{!2427}
!2427 = distinct !{!2427, !2425, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h47d2093944d38971E: %b"}
!2428 = !{!2429}
!2429 = distinct !{!2429, !2430, !"_ZN58FIND_MINIMUM_RADIUS_ATLEAST_K_POINT_LIE_INSIDE_CIRCLE_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h1ee6c5ec76d06603E: %a"}
!2430 = distinct !{!2430, !"_ZN58FIND_MINIMUM_RADIUS_ATLEAST_K_POINT_LIE_INSIDE_CIRCLE_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h1ee6c5ec76d06603E"}
!2431 = !{!2432}
!2432 = distinct !{!2432, !2433, !"_ZN4core5slice4sort6shared5pivot7median317h10f5e7d7bf5b7b20E: %c"}
!2433 = distinct !{!2433, !"_ZN4core5slice4sort6shared5pivot7median317h10f5e7d7bf5b7b20E"}
!2434 = !{!2435}
!2435 = distinct !{!2435, !2430, !"_ZN58FIND_MINIMUM_RADIUS_ATLEAST_K_POINT_LIE_INSIDE_CIRCLE_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h1ee6c5ec76d06603E: %b"}
!2436 = !{!2437}
!2437 = distinct !{!2437, !2438, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$f32$GT$11partial_cmp17h51acfdb7fcc2b22aE: %self"}
!2438 = distinct !{!2438, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$f32$GT$11partial_cmp17h51acfdb7fcc2b22aE"}
!2439 = !{!2440}
!2440 = distinct !{!2440, !2438, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$f32$GT$11partial_cmp17h51acfdb7fcc2b22aE: %other"}
!2441 = !{!2437, !2429, !2424, !2421}
!2442 = !{!2440, !2435, !2427, !2432, !2443}
!2443 = distinct !{!2443, !2422, !"_ZN4core5slice4sort6shared5pivot12choose_pivot17h30130fdc5e5525a2E: %is_less"}
!2444 = !{!2440, !2435, !2427, !2421}
!2445 = !{!2437, !2429, !2424, !2432, !2443}
!2446 = !{!2429, !2435, !2424, !2427, !2432, !2421, !2443}
!2447 = !{!2448}
!2448 = distinct !{!2448, !2449, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h47d2093944d38971E: %b"}
!2449 = distinct !{!2449, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h47d2093944d38971E"}
!2450 = !{!2451}
!2451 = distinct !{!2451, !2452, !"_ZN58FIND_MINIMUM_RADIUS_ATLEAST_K_POINT_LIE_INSIDE_CIRCLE_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h1ee6c5ec76d06603E: %b"}
!2452 = distinct !{!2452, !"_ZN58FIND_MINIMUM_RADIUS_ATLEAST_K_POINT_LIE_INSIDE_CIRCLE_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h1ee6c5ec76d06603E"}
!2453 = !{!2454, !2451, !2448, !2421}
!2454 = distinct !{!2454, !2455, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$f32$GT$11partial_cmp17h51acfdb7fcc2b22aE: %other"}
!2455 = distinct !{!2455, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$f32$GT$11partial_cmp17h51acfdb7fcc2b22aE"}
!2456 = !{!2457, !2458, !2459, !2443}
!2457 = distinct !{!2457, !2455, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$f32$GT$11partial_cmp17h51acfdb7fcc2b22aE: %self"}
!2458 = distinct !{!2458, !2452, !"_ZN58FIND_MINIMUM_RADIUS_ATLEAST_K_POINT_LIE_INSIDE_CIRCLE_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h1ee6c5ec76d06603E: %a"}
!2459 = distinct !{!2459, !2449, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h47d2093944d38971E: %a"}
!2460 = !{!2458, !2451, !2459, !2448, !2421, !2443}
!2461 = !{!2462, !2464, !2465, !2467, !2421, !2443}
!2462 = distinct !{!2462, !2463, !"_ZN58FIND_MINIMUM_RADIUS_ATLEAST_K_POINT_LIE_INSIDE_CIRCLE_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h1ee6c5ec76d06603E: %a"}
!2463 = distinct !{!2463, !"_ZN58FIND_MINIMUM_RADIUS_ATLEAST_K_POINT_LIE_INSIDE_CIRCLE_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h1ee6c5ec76d06603E"}
!2464 = distinct !{!2464, !2463, !"_ZN58FIND_MINIMUM_RADIUS_ATLEAST_K_POINT_LIE_INSIDE_CIRCLE_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h1ee6c5ec76d06603E: %b"}
!2465 = distinct !{!2465, !2466, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h47d2093944d38971E: %a"}
!2466 = distinct !{!2466, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h47d2093944d38971E"}
!2467 = distinct !{!2467, !2466, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h47d2093944d38971E: %b"}
!2468 = !{!2469}
!2469 = distinct !{!2469, !2470, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h47d2093944d38971E: %a"}
!2470 = distinct !{!2470, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h47d2093944d38971E"}
!2471 = !{!2472}
!2472 = distinct !{!2472, !2473, !"_ZN58FIND_MINIMUM_RADIUS_ATLEAST_K_POINT_LIE_INSIDE_CIRCLE_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h1ee6c5ec76d06603E: %a"}
!2473 = distinct !{!2473, !"_ZN58FIND_MINIMUM_RADIUS_ATLEAST_K_POINT_LIE_INSIDE_CIRCLE_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h1ee6c5ec76d06603E"}
!2474 = !{!2475, !2472, !2469}
!2475 = distinct !{!2475, !2476, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$f32$GT$11partial_cmp17h51acfdb7fcc2b22aE: %self"}
!2476 = distinct !{!2476, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$f32$GT$11partial_cmp17h51acfdb7fcc2b22aE"}
!2477 = !{!2478, !2479, !2480}
!2478 = distinct !{!2478, !2476, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$f32$GT$11partial_cmp17h51acfdb7fcc2b22aE: %other"}
!2479 = distinct !{!2479, !2473, !"_ZN58FIND_MINIMUM_RADIUS_ATLEAST_K_POINT_LIE_INSIDE_CIRCLE_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h1ee6c5ec76d06603E: %b"}
!2480 = distinct !{!2480, !2470, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h47d2093944d38971E: %b"}
!2481 = !{!2472, !2479, !2469, !2480}
!2482 = !{!2483, !2485}
!2483 = distinct !{!2483, !2484, !"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$12split_at_mut17hd9cc43366b0a69c4E: %pair"}
!2484 = distinct !{!2484, !"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$12split_at_mut17hd9cc43366b0a69c4E"}
!2485 = distinct !{!2485, !2484, !"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$12split_at_mut17hd9cc43366b0a69c4E: %self.0"}
!2486 = !{!2487}
!2487 = distinct !{!2487, !2488, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h310d80ab4250adf7E: %a"}
!2488 = distinct !{!2488, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h310d80ab4250adf7E"}
!2489 = !{!2490}
!2490 = distinct !{!2490, !2488, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h310d80ab4250adf7E: %b"}
!2491 = !{!2492}
!2492 = distinct !{!2492, !2493, !"_ZN4core3ops8function5FnMut8call_mut17h7d33f9a75c1b7329E: argument 0"}
!2493 = distinct !{!2493, !"_ZN4core3ops8function5FnMut8call_mut17h7d33f9a75c1b7329E"}
!2494 = !{!2495}
!2495 = distinct !{!2495, !2496, !"_ZN4core5slice4sort6shared5pivot7median317h7965bf09953299d8E: %c"}
!2496 = distinct !{!2496, !"_ZN4core5slice4sort6shared5pivot7median317h7965bf09953299d8E"}
!2497 = !{!2498}
!2498 = distinct !{!2498, !2493, !"_ZN4core3ops8function5FnMut8call_mut17h7d33f9a75c1b7329E: argument 1"}
!2499 = !{!2500}
!2500 = distinct !{!2500, !2501, !"cmpfunc: %a"}
!2501 = distinct !{!2501, !"cmpfunc"}
!2502 = !{!2503}
!2503 = distinct !{!2503, !2501, !"cmpfunc: %b"}
!2504 = !{!2505}
!2505 = distinct !{!2505, !2506, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!2506 = distinct !{!2506, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!2507 = !{!2508}
!2508 = distinct !{!2508, !2506, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!2509 = !{!2505, !2500, !2492, !2487, !2510}
!2510 = distinct !{!2510, !2511, !"_ZN4core5slice4sort6shared5pivot12choose_pivot17hf5f5fcbe01a11142E: %v.0"}
!2511 = distinct !{!2511, !"_ZN4core5slice4sort6shared5pivot12choose_pivot17hf5f5fcbe01a11142E"}
!2512 = !{!2508, !2503, !2498, !2490, !2495, !2513}
!2513 = distinct !{!2513, !2511, !"_ZN4core5slice4sort6shared5pivot12choose_pivot17hf5f5fcbe01a11142E: %is_less"}
!2514 = !{!2508, !2503, !2498, !2490, !2510}
!2515 = !{!2505, !2500, !2492, !2487, !2495, !2513}
!2516 = !{!2517, !2519, !2521, !2523, !2510}
!2517 = distinct !{!2517, !2518, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!2518 = distinct !{!2518, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!2519 = distinct !{!2519, !2520, !"cmpfunc: %b"}
!2520 = distinct !{!2520, !"cmpfunc"}
!2521 = distinct !{!2521, !2522, !"_ZN4core3ops8function5FnMut8call_mut17h7d33f9a75c1b7329E: argument 1"}
!2522 = distinct !{!2522, !"_ZN4core3ops8function5FnMut8call_mut17h7d33f9a75c1b7329E"}
!2523 = distinct !{!2523, !2524, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h310d80ab4250adf7E: %b"}
!2524 = distinct !{!2524, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h310d80ab4250adf7E"}
!2525 = !{!2526, !2527, !2528, !2529, !2513}
!2526 = distinct !{!2526, !2518, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!2527 = distinct !{!2527, !2520, !"cmpfunc: %a"}
!2528 = distinct !{!2528, !2522, !"_ZN4core3ops8function5FnMut8call_mut17h7d33f9a75c1b7329E: argument 0"}
!2529 = distinct !{!2529, !2524, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h310d80ab4250adf7E: %a"}
!2530 = !{!2531, !2533, !2535, !2537}
!2531 = distinct !{!2531, !2532, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!2532 = distinct !{!2532, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!2533 = distinct !{!2533, !2534, !"cmpfunc: %a"}
!2534 = distinct !{!2534, !"cmpfunc"}
!2535 = distinct !{!2535, !2536, !"_ZN4core3ops8function5FnMut8call_mut17h7d33f9a75c1b7329E: argument 0"}
!2536 = distinct !{!2536, !"_ZN4core3ops8function5FnMut8call_mut17h7d33f9a75c1b7329E"}
!2537 = distinct !{!2537, !2538, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h310d80ab4250adf7E: %a"}
!2538 = distinct !{!2538, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h310d80ab4250adf7E"}
!2539 = !{!2540, !2541, !2542, !2543}
!2540 = distinct !{!2540, !2532, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!2541 = distinct !{!2541, !2534, !"cmpfunc: %b"}
!2542 = distinct !{!2542, !2536, !"_ZN4core3ops8function5FnMut8call_mut17h7d33f9a75c1b7329E: argument 1"}
!2543 = distinct !{!2543, !2538, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h310d80ab4250adf7E: %b"}
!2544 = !{!2545, !2547}
!2545 = distinct !{!2545, !2546, !"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$12split_at_mut17h77ab04c1f2f49d7cE: %pair"}
!2546 = distinct !{!2546, !"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$12split_at_mut17h77ab04c1f2f49d7cE"}
!2547 = distinct !{!2547, !2546, !"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$12split_at_mut17h77ab04c1f2f49d7cE: %self.0"}
!2548 = !{i64 0, i64 -9223372036854775808}
!2549 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!2550 = !{!2551}
!2551 = distinct !{!2551, !2552, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!2552 = distinct !{!2552, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!2553 = !{!2554}
!2554 = distinct !{!2554, !2552, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!2555 = !{!2556}
!2556 = distinct !{!2556, !2557, !"_ZN5alloc3vec12Vec$LT$T$GT$3new17h183fbbd5832de085E: %_0"}
!2557 = distinct !{!2557, !"_ZN5alloc3vec12Vec$LT$T$GT$3new17h183fbbd5832de085E"}
!2558 = !{!2559, !2561}
!2559 = distinct !{!2559, !2560, !"_ZN5alloc3vec16Vec$LT$T$C$A$GT$12as_mut_slice17h2b23710c8afbd64aE: %self"}
!2560 = distinct !{!2560, !"_ZN5alloc3vec16Vec$LT$T$C$A$GT$12as_mut_slice17h2b23710c8afbd64aE"}
!2561 = distinct !{!2561, !2562, !"_ZN75_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..deref..DerefMut$GT$9deref_mut17he4f796f0bb61dcb4E: %self"}
!2562 = distinct !{!2562, !"_ZN75_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..deref..DerefMut$GT$9deref_mut17he4f796f0bb61dcb4E"}
!2563 = !{!2564}
!2564 = distinct !{!2564, !2565, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by17h608b13231a9d7d4eE: %self.0"}
!2565 = distinct !{!2565, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by17h608b13231a9d7d4eE"}
!2566 = !{!2567, !2569, !2564}
!2567 = distinct !{!2567, !2568, !"_ZN5alloc5slice11stable_sort17h3fcb2380e68fa139E: %v.0"}
!2568 = distinct !{!2568, !"_ZN5alloc5slice11stable_sort17h3fcb2380e68fa139E"}
!2569 = distinct !{!2569, !2568, !"_ZN5alloc5slice11stable_sort17h3fcb2380e68fa139E: argument 1"}
!2570 = !{!2571}
!2571 = distinct !{!2571, !2572, !"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h97940fa83caacb18E: %self"}
!2572 = distinct !{!2572, !"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h97940fa83caacb18E"}
!2573 = !{!2574, !2576}
!2574 = distinct !{!2574, !2575, !"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17h89028d718c8aa267E: %self"}
!2575 = distinct !{!2575, !"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17h89028d718c8aa267E"}
!2576 = distinct !{!2576, !2577, !"_ZN5alloc3vec16Vec$LT$T$C$A$GT$4push17haf513d1686ccb29eE: %self"}
!2577 = distinct !{!2577, !"_ZN5alloc3vec16Vec$LT$T$C$A$GT$4push17haf513d1686ccb29eE"}
!2578 = !{!2579}
!2579 = distinct !{!2579, !2580, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by17h75e7423505bf07c7E: %self.0"}
!2580 = distinct !{!2580, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by17h75e7423505bf07c7E"}
!2581 = !{!2582, !2584, !2579}
!2582 = distinct !{!2582, !2583, !"_ZN5alloc5slice11stable_sort17h57cbdd38fb9c9b3fE: %v.0"}
!2583 = distinct !{!2583, !"_ZN5alloc5slice11stable_sort17h57cbdd38fb9c9b3fE"}
!2584 = distinct !{!2584, !2583, !"_ZN5alloc5slice11stable_sort17h57cbdd38fb9c9b3fE: argument 1"}

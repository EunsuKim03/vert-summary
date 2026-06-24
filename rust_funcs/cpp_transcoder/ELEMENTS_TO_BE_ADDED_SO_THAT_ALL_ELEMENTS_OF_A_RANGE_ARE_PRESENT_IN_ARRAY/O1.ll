; ModuleID = 'ELEMENTS_TO_BE_ADDED_SO_THAT_ALL_ELEMENTS_OF_A_RANGE_ARE_PRESENT_IN_ARRAY_emit.88068c06f47142e4-cgu.0'
source_filename = "ELEMENTS_TO_BE_ADDED_SO_THAT_ALL_ELEMENTS_OF_A_RANGE_ARE_PRESENT_IN_ARRAY_emit.88068c06f47142e4-cgu.0"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%"core::mem::maybe_uninit::MaybeUninit<[u8; 8]>" = type { [8 x i8] }

@alloc_d1084648e479974e70c9329824bf76f9 = private unnamed_addr constant [9 x i8] c"mid > len", align 1
@alloc_e8e5fd9f509afcb950667480b3e3e42a = private unnamed_addr constant [126 x i8] c"/root/.rustup/toolchains/stable-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/slice/sort/stable/quicksort.rs\00", align 1
@alloc_58d434a1e795f965ef82c8e9c5db822a = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_e8e5fd9f509afcb950667480b3e3e42a, [16 x i8] c"}\00\00\00\00\00\00\00J\00\00\00\1F\00\00\00" }>, align 8
@alloc_0766b232215672ee1bd2195fdb153938 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_e8e5fd9f509afcb950667480b3e3e42a, [16 x i8] c"}\00\00\00\00\00\00\00D\00\00\00\17\00\00\00" }>, align 8
@alloc_fa80a8d1a09ad5bbf234e94914da5963 = private unnamed_addr constant [201 x i8] c"/root/es/vert/vert/rust_funcs/cpp_transcoder/ELEMENTS_TO_BE_ADDED_SO_THAT_ALL_ELEMENTS_OF_A_RANGE_ARE_PRESENT_IN_ARRAY/ELEMENTS_TO_BE_ADDED_SO_THAT_ALL_ELEMENTS_OF_A_RANGE_ARE_PRESENT_IN_ARRAY_emit.rs\00", align 1
@alloc_a137618f5dc17edd74250a3f8711c076 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_fa80a8d1a09ad5bbf234e94914da5963, [16 x i8] c"\C8\00\00\00\00\00\00\00\17\00\00\00)\00\00\00" }>, align 8
@alloc_c57df5a5e420aa3a935b0836c52d5722 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_fa80a8d1a09ad5bbf234e94914da5963, [16 x i8] c"\C8\00\00\00\00\00\00\00\1A\00\00\00\0C\00\00\00" }>, align 8
@alloc_fdf0cf6cbeffe0b665e615036846c3c5 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_fa80a8d1a09ad5bbf234e94914da5963, [16 x i8] c"\C8\00\00\00\00\00\00\00\1A\00\00\00\16\00\00\00" }>, align 8

; core::ptr::swap_nonoverlapping_bytes::swap_nonoverlapping_chunks
; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable
define void @_ZN4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunks17h70a0c1aca26170caE(ptr noundef captures(none) %x, ptr noundef captures(none) %y, i64 noundef range(i64 1, 0) %chunks) unnamed_addr #0 {
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
define noundef nonnull ptr @_ZN4core5slice4sort6shared5pivot11median3_rec17hb9a1dace95ca481dE(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %n, ptr noalias noundef align 8 dereferenceable(8) %is_less) unnamed_addr #1 {
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
  %4 = tail call noundef ptr @_ZN4core5slice4sort6shared5pivot11median3_rec17hb9a1dace95ca481dE(ptr noundef %0, ptr noundef %_10, ptr noundef %_13, i64 noundef %n84, ptr noalias noundef align 8 dereferenceable(8) %is_less)
  %_16 = getelementptr inbounds nuw float, ptr %1, i64 %count
  %_18 = getelementptr inbounds nuw float, ptr %1, i64 %count1
; call core::slice::sort::shared::pivot::median3_rec
  %5 = tail call noundef ptr @_ZN4core5slice4sort6shared5pivot11median3_rec17hb9a1dace95ca481dE(ptr noundef %1, ptr noundef %_16, ptr noundef %_18, i64 noundef %n84, ptr noalias noundef align 8 dereferenceable(8) %is_less)
  %_20 = getelementptr inbounds nuw float, ptr %2, i64 %count
  %_22 = getelementptr inbounds nuw float, ptr %2, i64 %count1
; call core::slice::sort::shared::pivot::median3_rec
  %6 = tail call noundef ptr @_ZN4core5slice4sort6shared5pivot11median3_rec17hb9a1dace95ca481dE(ptr noundef %2, ptr noundef %_20, ptr noundef %_22, i64 noundef %n84, ptr noalias noundef align 8 dereferenceable(8) %is_less)
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
  br i1 %.not.i.i.i, label %bb2.i.i.i, label %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17ha080091ea5002393E.exit", !prof !35

bb2.i.i.i:                                        ; preds = %bb6
; call core::option::unwrap_failed
  tail call void @_ZN4core6option13unwrap_failed17hef2534b77b89c04fE(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_a137618f5dc17edd74250a3f8711c076) #24, !noalias !36
  unreachable

"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17ha080091ea5002393E.exit": ; preds = %bb6
  %_0.i = fcmp olt float %_4.i.i.i, %_5.i.i.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !37)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !40)
  %_5.i.i.i6 = load float, ptr %c.sroa.0.0, align 4, !alias.scope !43, !noalias !46, !noundef !32
  %.not.i.i.i7 = fcmp uno float %_4.i.i.i, %_5.i.i.i6
  br i1 %.not.i.i.i7, label %bb2.i.i.i9, label %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17ha080091ea5002393E.exit10", !prof !35

bb2.i.i.i9:                                       ; preds = %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17ha080091ea5002393E.exit"
; call core::option::unwrap_failed
  tail call void @_ZN4core6option13unwrap_failed17hef2534b77b89c04fE(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_a137618f5dc17edd74250a3f8711c076) #24, !noalias !50
  unreachable

"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17ha080091ea5002393E.exit10": ; preds = %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17ha080091ea5002393E.exit"
  %_0.i8 = fcmp olt float %_4.i.i.i, %_5.i.i.i6
  %7 = xor i1 %_0.i, %_0.i8
  br i1 %7, label %_ZN4core5slice4sort6shared5pivot7median317he379b955d68dac04E.exit, label %bb3.i

bb3.i:                                            ; preds = %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17ha080091ea5002393E.exit10"
  %.not.i.i.i13 = fcmp uno float %_5.i.i.i, %_5.i.i.i6
  br i1 %.not.i.i.i13, label %bb2.i.i.i15, label %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17ha080091ea5002393E.exit16", !prof !35

bb2.i.i.i15:                                      ; preds = %bb3.i
; call core::option::unwrap_failed
  tail call void @_ZN4core6option13unwrap_failed17hef2534b77b89c04fE(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_a137618f5dc17edd74250a3f8711c076) #24, !noalias !51
  unreachable

"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17ha080091ea5002393E.exit16": ; preds = %bb3.i
  %_0.i14 = fcmp olt float %_5.i.i.i, %_5.i.i.i6
  %_12.i = xor i1 %_0.i, %_0.i14
  %c.b.i = select i1 %_12.i, ptr %c.sroa.0.0, ptr %b.sroa.0.0
  br label %_ZN4core5slice4sort6shared5pivot7median317he379b955d68dac04E.exit

_ZN4core5slice4sort6shared5pivot7median317he379b955d68dac04E.exit: ; preds = %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17ha080091ea5002393E.exit10", %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17ha080091ea5002393E.exit16"
  %_0.sroa.0.0.i = phi ptr [ %a.sroa.0.0, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17ha080091ea5002393E.exit10" ], [ %c.b.i, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17ha080091ea5002393E.exit16" ]
  ret ptr %_0.sroa.0.0.i
}

; core::slice::sort::shared::pivot::median3_rec
; Function Attrs: nofree nosync nounwind nonlazybind memory(read, inaccessiblemem: readwrite) uwtable
define noundef nonnull ptr @_ZN4core5slice4sort6shared5pivot11median3_rec17he82d7d4612c70007E(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %n, ptr noalias noundef align 8 dereferenceable(8) %is_less) unnamed_addr #2 {
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
  %4 = tail call noundef ptr @_ZN4core5slice4sort6shared5pivot11median3_rec17he82d7d4612c70007E(ptr noundef %0, ptr noundef %_10, ptr noundef %_13, i64 noundef %n84, ptr noalias noundef align 8 dereferenceable(8) %is_less)
  %_16 = getelementptr inbounds nuw i32, ptr %1, i64 %count
  %_18 = getelementptr inbounds nuw i32, ptr %1, i64 %count1
; call core::slice::sort::shared::pivot::median3_rec
  %5 = tail call noundef ptr @_ZN4core5slice4sort6shared5pivot11median3_rec17he82d7d4612c70007E(ptr noundef %1, ptr noundef %_16, ptr noundef %_18, i64 noundef %n84, ptr noalias noundef align 8 dereferenceable(8) %is_less)
  %_20 = getelementptr inbounds nuw i32, ptr %2, i64 %count
  %_22 = getelementptr inbounds nuw i32, ptr %2, i64 %count1
; call core::slice::sort::shared::pivot::median3_rec
  %6 = tail call noundef ptr @_ZN4core5slice4sort6shared5pivot11median3_rec17he82d7d4612c70007E(ptr noundef %2, ptr noundef %_20, ptr noundef %_22, i64 noundef %n84, ptr noalias noundef align 8 dereferenceable(8) %is_less)
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
; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable
define void @_ZN4core5slice4sort6shared9smallsort11insert_tail17h860b7523fd27f2bfE(ptr noundef readnone captures(address) %begin, ptr noundef captures(address) %tail, ptr noalias noundef readnone align 8 captures(none) dereferenceable(8) %is_less) unnamed_addr #0 personality ptr @rust_eh_personality {
start:
  %0 = getelementptr inbounds i8, ptr %tail, i64 -4
  tail call void @llvm.experimental.noalias.scope.decl(metadata !99)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !102)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !104)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !107)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !109)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !112)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !114)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !117)
  %_3.i.i.i.i = load i32, ptr %tail, align 4, !alias.scope !119, !noalias !120, !noundef !32
  %_4.i.i.i.i = load i32, ptr %0, align 4, !alias.scope !120, !noalias !119, !noundef !32
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
  %_4.i.i.i.i2 = load i32, ptr %2, align 4, !alias.scope !121, !noalias !130, !noundef !32
  %_0.i3 = icmp slt i32 %_3.i.i.i.i, %_4.i.i.i.i2
  br i1 %_0.i3, label %bb4, label %bb10

bb10:                                             ; preds = %bb6, %bb4
  store i32 %_3.i.i.i.i, ptr %sift.sroa.0.0, align 4, !noalias !135
  br label %bb12
}

; core::slice::sort::shared::smallsort::insert_tail
; Function Attrs: nonlazybind uwtable
define void @_ZN4core5slice4sort6shared9smallsort11insert_tail17hbd5d4204d5355ab0E(ptr noundef readnone captures(address) %begin, ptr noundef captures(address) %tail, ptr noalias noundef readnone align 8 captures(none) dereferenceable(8) %is_less) unnamed_addr #1 personality ptr @rust_eh_personality {
start:
  %0 = getelementptr inbounds i8, ptr %tail, i64 -4
  tail call void @llvm.experimental.noalias.scope.decl(metadata !140)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !143)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !145)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !148)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !150)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !153)
  %_4.i.i.i = load float, ptr %tail, align 4, !alias.scope !155, !noalias !156, !noundef !32
  %_5.i.i.i = load float, ptr %0, align 4, !alias.scope !156, !noalias !155, !noundef !32
  %.not.i.i.i = fcmp uno float %_4.i.i.i, %_5.i.i.i
  br i1 %.not.i.i.i, label %bb2.i.i.i, label %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17ha080091ea5002393E.exit", !prof !35

bb2.i.i.i:                                        ; preds = %start
; call core::option::unwrap_failed
  tail call void @_ZN4core6option13unwrap_failed17hef2534b77b89c04fE(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_a137618f5dc17edd74250a3f8711c076) #24, !noalias !157
  unreachable

"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17ha080091ea5002393E.exit": ; preds = %start
  %_0.i = fcmp olt float %_4.i.i.i, %_5.i.i.i
  br i1 %_0.i, label %bb4, label %bb12

bb12:                                             ; preds = %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17ha080091ea5002393E.exit", %bb10
  ret void

bb4:                                              ; preds = %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17ha080091ea5002393E.exit", %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17ha080091ea5002393E.exit6"
  %gap_guard.sroa.5.0 = phi ptr [ %sift.sroa.0.0, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17ha080091ea5002393E.exit6" ], [ %tail, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17ha080091ea5002393E.exit" ]
  %sift.sroa.0.0 = phi ptr [ %2, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17ha080091ea5002393E.exit6" ], [ %0, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17ha080091ea5002393E.exit" ]
  %1 = load i32, ptr %sift.sroa.0.0, align 4
  store i32 %1, ptr %gap_guard.sroa.5.0, align 4
  %_18 = icmp eq ptr %sift.sroa.0.0, %begin
  br i1 %_18, label %bb10, label %bb6

bb6:                                              ; preds = %bb4
  %2 = getelementptr inbounds i8, ptr %sift.sroa.0.0, i64 -4
  %_5.i.i.i2 = load float, ptr %2, align 4, !alias.scope !158, !noalias !165, !noundef !32
  %.not.i.i.i3 = fcmp uno float %_4.i.i.i, %_5.i.i.i2
  br i1 %.not.i.i.i3, label %bb2.i.i.i5, label %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17ha080091ea5002393E.exit6", !prof !35

bb2.i.i.i5:                                       ; preds = %bb6
; invoke core::option::unwrap_failed
  invoke void @_ZN4core6option13unwrap_failed17hef2534b77b89c04fE(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_a137618f5dc17edd74250a3f8711c076) #24
          to label %.noexc unwind label %cleanup

.noexc:                                           ; preds = %bb2.i.i.i5
  unreachable

"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17ha080091ea5002393E.exit6": ; preds = %bb6
  %_0.i4 = fcmp olt float %_4.i.i.i, %_5.i.i.i2
  br i1 %_0.i4, label %bb4, label %bb10

cleanup:                                          ; preds = %bb2.i.i.i5
  %3 = landingpad { ptr, i32 }
          cleanup
  store float %_4.i.i.i, ptr %sift.sroa.0.0, align 4, !noalias !169
  resume { ptr, i32 } %3

bb10:                                             ; preds = %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17ha080091ea5002393E.exit6", %bb4
  store float %_4.i.i.i, ptr %sift.sroa.0.0, align 4, !noalias !174
  br label %bb12
}

; core::slice::sort::shared::smallsort::sort4_stable
; Function Attrs: nonlazybind uwtable
define void @_ZN4core5slice4sort6shared9smallsort12sort4_stable17h2be7aae30e916996E(ptr noundef readonly captures(none) %v_base, ptr noundef writeonly captures(none) %dst, ptr noalias readnone align 8 captures(none) %is_less) unnamed_addr #1 personality ptr @rust_eh_personality {
start:
  %_7 = getelementptr inbounds nuw i8, ptr %v_base, i64 4
  tail call void @llvm.experimental.noalias.scope.decl(metadata !179)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !182)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !184)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !187)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !189)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !192)
  %_4.i.i.i = load float, ptr %_7, align 4, !alias.scope !194, !noalias !195, !noundef !32
  %_5.i.i.i = load float, ptr %v_base, align 4, !alias.scope !195, !noalias !194, !noundef !32
  %.not.i.i.i = fcmp uno float %_4.i.i.i, %_5.i.i.i
  br i1 %.not.i.i.i, label %bb2.i.i.i, label %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17ha080091ea5002393E.exit", !prof !35

bb2.i.i.i:                                        ; preds = %start
; call core::option::unwrap_failed
  tail call void @_ZN4core6option13unwrap_failed17hef2534b77b89c04fE(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_a137618f5dc17edd74250a3f8711c076) #24, !noalias !196
  unreachable

"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17ha080091ea5002393E.exit": ; preds = %start
  %_12 = getelementptr inbounds nuw i8, ptr %v_base, i64 12
  %_14 = getelementptr inbounds nuw i8, ptr %v_base, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !197)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !200)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !202)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !205)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !207)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !210)
  %_4.i.i.i7 = load float, ptr %_12, align 4, !alias.scope !212, !noalias !213, !noundef !32
  %_5.i.i.i8 = load float, ptr %_14, align 4, !alias.scope !213, !noalias !212, !noundef !32
  %.not.i.i.i9 = fcmp uno float %_4.i.i.i7, %_5.i.i.i8
  br i1 %.not.i.i.i9, label %bb2.i.i.i11, label %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17ha080091ea5002393E.exit12", !prof !35

bb2.i.i.i11:                                      ; preds = %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17ha080091ea5002393E.exit"
; call core::option::unwrap_failed
  tail call void @_ZN4core6option13unwrap_failed17hef2534b77b89c04fE(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_a137618f5dc17edd74250a3f8711c076) #24, !noalias !214
  unreachable

"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17ha080091ea5002393E.exit12": ; preds = %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17ha080091ea5002393E.exit"
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !215)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !218)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !220)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !223)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !225)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !228)
  %_4.i.i.i13 = load float, ptr %c, align 4, !alias.scope !230, !noalias !231, !noundef !32
  %_5.i.i.i14 = load float, ptr %a, align 4, !alias.scope !231, !noalias !230, !noundef !32
  %.not.i.i.i15 = fcmp uno float %_4.i.i.i13, %_5.i.i.i14
  br i1 %.not.i.i.i15, label %bb2.i.i.i17, label %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17ha080091ea5002393E.exit18", !prof !35

bb2.i.i.i17:                                      ; preds = %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17ha080091ea5002393E.exit12"
; call core::option::unwrap_failed
  tail call void @_ZN4core6option13unwrap_failed17hef2534b77b89c04fE(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_a137618f5dc17edd74250a3f8711c076) #24, !noalias !232
  unreachable

"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17ha080091ea5002393E.exit18": ; preds = %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17ha080091ea5002393E.exit12"
  tail call void @llvm.experimental.noalias.scope.decl(metadata !233)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !236)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !238)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !241)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !243)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !246)
  %_4.i.i.i19 = load float, ptr %d, align 4, !alias.scope !248, !noalias !249, !noundef !32
  %_5.i.i.i20 = load float, ptr %b, align 4, !alias.scope !249, !noalias !248, !noundef !32
  %.not.i.i.i21 = fcmp uno float %_4.i.i.i19, %_5.i.i.i20
  br i1 %.not.i.i.i21, label %bb2.i.i.i23, label %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17ha080091ea5002393E.exit24", !prof !35

bb2.i.i.i23:                                      ; preds = %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17ha080091ea5002393E.exit18"
; call core::option::unwrap_failed
  tail call void @_ZN4core6option13unwrap_failed17hef2534b77b89c04fE(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_a137618f5dc17edd74250a3f8711c076) #24, !noalias !250
  unreachable

"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17ha080091ea5002393E.exit24": ; preds = %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17ha080091ea5002393E.exit18"
  %_0.i16 = fcmp olt float %_4.i.i.i13, %_5.i.i.i14
  %_0.i22 = fcmp olt float %_4.i.i.i19, %_5.i.i.i20
  %0 = select i1 %_0.i22, ptr %c, ptr %b, !unpredictable !32
  %1 = select i1 %_0.i16, ptr %a, ptr %0, !unpredictable !32
  %2 = select i1 %_0.i16, ptr %b, ptr %c, !unpredictable !32
  %3 = select i1 %_0.i22, ptr %d, ptr %2, !unpredictable !32
  tail call void @llvm.experimental.noalias.scope.decl(metadata !251)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !254)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !256)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !259)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !261)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !264)
  %_4.i.i.i25 = load float, ptr %3, align 4, !alias.scope !266, !noalias !267, !noundef !32
  %_5.i.i.i26 = load float, ptr %1, align 4, !alias.scope !267, !noalias !266, !noundef !32
  %.not.i.i.i27 = fcmp uno float %_4.i.i.i25, %_5.i.i.i26
  br i1 %.not.i.i.i27, label %bb2.i.i.i29, label %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17ha080091ea5002393E.exit30", !prof !35

bb2.i.i.i29:                                      ; preds = %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17ha080091ea5002393E.exit24"
; call core::option::unwrap_failed
  tail call void @_ZN4core6option13unwrap_failed17hef2534b77b89c04fE(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_a137618f5dc17edd74250a3f8711c076) #24, !noalias !268
  unreachable

"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17ha080091ea5002393E.exit30": ; preds = %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17ha080091ea5002393E.exit24"
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
define void @_ZN4core5slice4sort6shared9smallsort12sort4_stable17hfc25e097ef82bb84E(ptr noundef readonly captures(none) %v_base, ptr noundef writeonly captures(none) initializes((0, 16)) %dst, ptr noalias noundef readnone align 8 captures(none) dereferenceable(8) %is_less) unnamed_addr #3 personality ptr @rust_eh_personality {
start:
  %_7 = getelementptr inbounds nuw i8, ptr %v_base, i64 4
  tail call void @llvm.experimental.noalias.scope.decl(metadata !269)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !272)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !274)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !277)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !279)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !282)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !284)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !287)
  %_3.i.i.i.i = load i32, ptr %_7, align 4, !alias.scope !289, !noalias !290, !noundef !32
  %_4.i.i.i.i = load i32, ptr %v_base, align 4, !alias.scope !290, !noalias !289, !noundef !32
  %_0.i = icmp slt i32 %_3.i.i.i.i, %_4.i.i.i.i
  %_12 = getelementptr inbounds nuw i8, ptr %v_base, i64 12
  %_14 = getelementptr inbounds nuw i8, ptr %v_base, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !291)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !294)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !296)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !299)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !301)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !304)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !306)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !309)
  %_3.i.i.i.i7 = load i32, ptr %_12, align 4, !alias.scope !311, !noalias !312, !noundef !32
  %_4.i.i.i.i8 = load i32, ptr %_14, align 4, !alias.scope !312, !noalias !311, !noundef !32
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !313)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !316)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !318)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !321)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !323)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !326)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !328)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !331)
  %_3.i.i.i.i10 = load i32, ptr %c, align 4, !alias.scope !333, !noalias !334, !noundef !32
  %_4.i.i.i.i11 = load i32, ptr %a, align 4, !alias.scope !334, !noalias !333, !noundef !32
  %_0.i12 = icmp slt i32 %_3.i.i.i.i10, %_4.i.i.i.i11
  tail call void @llvm.experimental.noalias.scope.decl(metadata !335)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !338)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !340)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !343)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !345)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !348)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !350)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !353)
  %_3.i.i.i.i13 = load i32, ptr %d, align 4, !alias.scope !355, !noalias !356, !noundef !32
  %_4.i.i.i.i14 = load i32, ptr %b, align 4, !alias.scope !356, !noalias !355, !noundef !32
  %_0.i15 = icmp slt i32 %_3.i.i.i.i13, %_4.i.i.i.i14
  %0 = select i1 %_0.i12, ptr %c, ptr %a, !unpredictable !32
  %1 = select i1 %_0.i15, ptr %c, ptr %b, !unpredictable !32
  %2 = select i1 %_0.i12, ptr %a, ptr %1, !unpredictable !32
  %3 = select i1 %_0.i12, ptr %b, ptr %c, !unpredictable !32
  %4 = select i1 %_0.i15, ptr %d, ptr %3, !unpredictable !32
  tail call void @llvm.experimental.noalias.scope.decl(metadata !357)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !360)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !362)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !365)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !367)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !370)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !372)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !375)
  %_3.i.i.i.i16 = load i32, ptr %4, align 4, !alias.scope !377, !noalias !378, !noundef !32
  %_4.i.i.i.i17 = load i32, ptr %2, align 4, !alias.scope !378, !noalias !377, !noundef !32
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
define void @_ZN4core5slice4sort6shared9smallsort12sort8_stable17h172ca519dd346112E(ptr noundef readonly captures(none) %v_base, ptr noundef writeonly captures(none) initializes((0, 32)) %dst, ptr noundef captures(address) initializes((0, 32)) %scratch_base, ptr noalias readnone align 8 captures(none) %is_less) unnamed_addr #1 personality ptr @rust_eh_personality {
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
  br i1 %or.cond.i, label %bb13.i, label %_ZN4core5slice4sort6shared9smallsort19bidirectional_merge17hdea9b47e74e374a8E.exit, !prof !780

bb13.i:                                           ; preds = %start
; call core::slice::sort::shared::smallsort::panic_on_ord_violation
  tail call void @_ZN4core5slice4sort6shared9smallsort22panic_on_ord_violation17hc77a22a2d50782cdE() #24, !noalias !599
  unreachable

_ZN4core5slice4sort6shared9smallsort19bidirectional_merge17hdea9b47e74e374a8E.exit: ; preds = %start
  ret void
}

; core::slice::sort::shared::smallsort::sort8_stable
; Function Attrs: nonlazybind uwtable
define void @_ZN4core5slice4sort6shared9smallsort12sort8_stable17hb7dcd0e06caddc59E(ptr noundef readonly captures(none) %v_base, ptr noundef writeonly captures(none) %dst, ptr noundef captures(address) %scratch_base, ptr noalias readnone align 8 captures(none) %is_less) unnamed_addr #1 {
start:
; call core::slice::sort::shared::smallsort::sort4_stable
  tail call void @_ZN4core5slice4sort6shared9smallsort12sort4_stable17h2be7aae30e916996E(ptr noundef %v_base, ptr noundef %scratch_base, ptr noalias align 8 poison)
  %_9 = getelementptr inbounds nuw i8, ptr %v_base, i64 16
  %_10 = getelementptr inbounds nuw i8, ptr %scratch_base, i64 16
; call core::slice::sort::shared::smallsort::sort4_stable
  tail call void @_ZN4core5slice4sort6shared9smallsort12sort4_stable17h2be7aae30e916996E(ptr noundef nonnull %_9, ptr noundef nonnull %_10, ptr noalias align 8 poison)
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
  br i1 %.not.i.i.i.i, label %bb2.i.i.i.i, label %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17ha080091ea5002393E.exit.i", !prof !35

bb2.i.i.i.i:                                      ; preds = %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17ha080091ea5002393E.exit24.i.2", %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17ha080091ea5002393E.exit24.i.1", %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17ha080091ea5002393E.exit24.i", %start
; call core::option::unwrap_failed
  tail call void @_ZN4core6option13unwrap_failed17hef2534b77b89c04fE(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_a137618f5dc17edd74250a3f8711c076) #24, !noalias !806
  unreachable

"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17ha080091ea5002393E.exit.i": ; preds = %start
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
  br i1 %.not.i.i.i21.i, label %bb2.i.i.i23.i, label %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17ha080091ea5002393E.exit24.i", !prof !35

bb2.i.i.i23.i:                                    ; preds = %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17ha080091ea5002393E.exit.i.3", %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17ha080091ea5002393E.exit.i.2", %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17ha080091ea5002393E.exit.i.1", %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17ha080091ea5002393E.exit.i"
; call core::option::unwrap_failed
  tail call void @_ZN4core6option13unwrap_failed17hef2534b77b89c04fE(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_a137618f5dc17edd74250a3f8711c076) #24, !noalias !832
  unreachable

"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17ha080091ea5002393E.exit24.i": ; preds = %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17ha080091ea5002393E.exit.i"
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
  br i1 %.not.i.i.i.i.1, label %bb2.i.i.i.i, label %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17ha080091ea5002393E.exit.i.1", !prof !35

"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17ha080091ea5002393E.exit.i.1": ; preds = %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17ha080091ea5002393E.exit24.i"
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
  br i1 %.not.i.i.i21.i.1, label %bb2.i.i.i23.i, label %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17ha080091ea5002393E.exit24.i.1", !prof !35

"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17ha080091ea5002393E.exit24.i.1": ; preds = %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17ha080091ea5002393E.exit.i.1"
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
  br i1 %.not.i.i.i.i.2, label %bb2.i.i.i.i, label %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17ha080091ea5002393E.exit.i.2", !prof !35

"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17ha080091ea5002393E.exit.i.2": ; preds = %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17ha080091ea5002393E.exit24.i.1"
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
  br i1 %.not.i.i.i21.i.2, label %bb2.i.i.i23.i, label %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17ha080091ea5002393E.exit24.i.2", !prof !35

"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17ha080091ea5002393E.exit24.i.2": ; preds = %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17ha080091ea5002393E.exit.i.2"
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
  br i1 %.not.i.i.i.i.3, label %bb2.i.i.i.i, label %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17ha080091ea5002393E.exit.i.3", !prof !35

"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17ha080091ea5002393E.exit.i.3": ; preds = %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17ha080091ea5002393E.exit24.i.2"
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
  br i1 %.not.i.i.i21.i.3, label %bb2.i.i.i23.i, label %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17ha080091ea5002393E.exit24.i.3", !prof !35

"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17ha080091ea5002393E.exit24.i.3": ; preds = %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17ha080091ea5002393E.exit.i.3"
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
  br i1 %or.cond.i, label %bb13.i, label %_ZN4core5slice4sort6shared9smallsort19bidirectional_merge17ha0c0e7d74af75276E.exit, !prof !780

bb13.i:                                           ; preds = %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17ha080091ea5002393E.exit24.i.3"
; call core::slice::sort::shared::smallsort::panic_on_ord_violation
  tail call void @_ZN4core5slice4sort6shared9smallsort22panic_on_ord_violation17hc77a22a2d50782cdE() #24, !noalias !781
  unreachable

_ZN4core5slice4sort6shared9smallsort19bidirectional_merge17ha0c0e7d74af75276E.exit: ; preds = %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17ha080091ea5002393E.exit24.i.3"
  ret void
}

; core::slice::sort::shared::smallsort::bidirectional_merge
; Function Attrs: nonlazybind uwtable
define void @_ZN4core5slice4sort6shared9smallsort19bidirectional_merge17ha0c0e7d74af75276E(ptr noalias noundef nonnull readonly align 4 captures(address) %v.0, i64 noundef range(i64 0, 2305843009213693952) %v.1, ptr noundef writeonly captures(none) %0, ptr noalias readnone align 8 captures(none) %is_less) unnamed_addr #1 {
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

bb16:                                             ; preds = %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17ha080091ea5002393E.exit24"
  %5 = getelementptr i8, ptr %10, i64 4
  %6 = getelementptr i8, ptr %9, i64 4
  %_44 = and i64 %v.1, 1
  %_22 = icmp eq i64 %_44, 0
  br i1 %_22, label %bb9, label %bb5

bb15:                                             ; preds = %start, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17ha080091ea5002393E.exit24"
  %dst.sroa.0.042 = phi ptr [ %_16.i, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17ha080091ea5002393E.exit24" ], [ %0, %start ]
  %iter.sroa.0.041 = phi i64 [ %_39, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17ha080091ea5002393E.exit24" ], [ 0, %start ]
  %left.sroa.0.040 = phi ptr [ %_14.i, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17ha080091ea5002393E.exit24" ], [ %v.0, %start ]
  %right.sroa.0.039 = phi ptr [ %_12.i, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17ha080091ea5002393E.exit24" ], [ %3, %start ]
  %left_rev.sroa.0.038 = phi ptr [ %10, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17ha080091ea5002393E.exit24" ], [ %4, %start ]
  %right_rev.sroa.0.037 = phi ptr [ %9, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17ha080091ea5002393E.exit24" ], [ %2, %start ]
  %dst_rev.sroa.0.036 = phi ptr [ %11, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17ha080091ea5002393E.exit24" ], [ %1, %start ]
  %_39 = add nuw nsw i64 %iter.sroa.0.041, 1
  tail call void @llvm.experimental.noalias.scope.decl(metadata !932)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !935)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !937), !noalias !940
  tail call void @llvm.experimental.noalias.scope.decl(metadata !943), !noalias !940
  tail call void @llvm.experimental.noalias.scope.decl(metadata !945), !noalias !940
  tail call void @llvm.experimental.noalias.scope.decl(metadata !948), !noalias !940
  %_4.i.i.i = load float, ptr %right.sroa.0.039, align 4, !alias.scope !950, !noalias !951, !noundef !32
  %_5.i.i.i = load float, ptr %left.sroa.0.040, align 4, !alias.scope !952, !noalias !953, !noundef !32
  %.not.i.i.i = fcmp uno float %_4.i.i.i, %_5.i.i.i
  br i1 %.not.i.i.i, label %bb2.i.i.i, label %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17ha080091ea5002393E.exit", !prof !35

bb2.i.i.i:                                        ; preds = %bb15
; call core::option::unwrap_failed
  tail call void @_ZN4core6option13unwrap_failed17hef2534b77b89c04fE(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_a137618f5dc17edd74250a3f8711c076) #24, !noalias !954
  unreachable

"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17ha080091ea5002393E.exit": ; preds = %bb15
  %_0.i = fcmp olt float %_4.i.i.i, %_5.i.i.i
  %..i17 = select i1 %_0.i, ptr %right.sroa.0.039, ptr %left.sroa.0.040
  %7 = load i32, ptr %..i17, align 4, !noalias !955
  store i32 %7, ptr %dst.sroa.0.042, align 4, !noalias !955
  tail call void @llvm.experimental.noalias.scope.decl(metadata !957)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !960)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !962), !noalias !965
  tail call void @llvm.experimental.noalias.scope.decl(metadata !968), !noalias !965
  tail call void @llvm.experimental.noalias.scope.decl(metadata !970), !noalias !965
  tail call void @llvm.experimental.noalias.scope.decl(metadata !973), !noalias !965
  %_4.i.i.i19 = load float, ptr %right_rev.sroa.0.037, align 4, !alias.scope !975, !noalias !976, !noundef !32
  %_5.i.i.i20 = load float, ptr %left_rev.sroa.0.038, align 4, !alias.scope !977, !noalias !978, !noundef !32
  %.not.i.i.i21 = fcmp uno float %_4.i.i.i19, %_5.i.i.i20
  br i1 %.not.i.i.i21, label %bb2.i.i.i23, label %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17ha080091ea5002393E.exit24", !prof !35

bb2.i.i.i23:                                      ; preds = %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17ha080091ea5002393E.exit"
; call core::option::unwrap_failed
  tail call void @_ZN4core6option13unwrap_failed17hef2534b77b89c04fE(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_a137618f5dc17edd74250a3f8711c076) #24, !noalias !979
  unreachable

"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17ha080091ea5002393E.exit24": ; preds = %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17ha080091ea5002393E.exit"
  %_16.i = getelementptr inbounds nuw i8, ptr %dst.sroa.0.042, i64 4
  %is_l.i18 = xor i1 %_0.i, true
  %count2.i = zext i1 %is_l.i18 to i64
  %_14.i = getelementptr inbounds nuw float, ptr %left.sroa.0.040, i64 %count2.i
  %count.i = zext i1 %_0.i to i64
  %_12.i = getelementptr inbounds nuw float, ptr %right.sroa.0.039, i64 %count.i
  %_0.i22 = fcmp olt float %_4.i.i.i19, %_5.i.i.i20
  %..i = select i1 %_0.i22, ptr %left_rev.sroa.0.038, ptr %right_rev.sroa.0.037
  %is_l.i = xor i1 %_0.i22, true
  %8 = load i32, ptr %..i, align 4, !noalias !980
  store i32 %8, ptr %dst_rev.sroa.0.036, align 4, !noalias !980
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

; core::slice::sort::shared::smallsort::bidirectional_merge
; Function Attrs: nonlazybind uwtable
define void @_ZN4core5slice4sort6shared9smallsort19bidirectional_merge17hdea9b47e74e374a8E(ptr noalias noundef nonnull readonly align 4 captures(address) %v.0, i64 noundef range(i64 0, 2305843009213693952) %v.1, ptr noundef writeonly captures(none) %0, ptr noalias noundef readnone align 8 captures(none) dereferenceable(8) %is_less) unnamed_addr #1 {
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !982)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !985)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !987), !noalias !990
  tail call void @llvm.experimental.noalias.scope.decl(metadata !993), !noalias !990
  tail call void @llvm.experimental.noalias.scope.decl(metadata !995), !noalias !990
  tail call void @llvm.experimental.noalias.scope.decl(metadata !998), !noalias !990
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1000), !noalias !990
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1003), !noalias !990
  %_3.i.i.i.i = load i32, ptr %right.sroa.0.026, align 4, !alias.scope !1005, !noalias !1006, !noundef !32
  %_4.i.i.i.i = load i32, ptr %left.sroa.0.027, align 4, !alias.scope !1007, !noalias !1008, !noundef !32
  %_0.i = icmp slt i32 %_3.i.i.i.i, %_4.i.i.i.i
  %is_l.i18 = xor i1 %_0.i, true
  %7 = tail call i32 @llvm.smin.i32(i32 %_3.i.i.i.i, i32 %_4.i.i.i.i)
  store i32 %7, ptr %dst.sroa.0.029, align 4, !noalias !1009
  %count.i = zext i1 %_0.i to i64
  %_12.i = getelementptr inbounds nuw i32, ptr %right.sroa.0.026, i64 %count.i
  %count2.i = zext i1 %is_l.i18 to i64
  %_14.i = getelementptr inbounds nuw i32, ptr %left.sroa.0.027, i64 %count2.i
  %_16.i = getelementptr inbounds nuw i8, ptr %dst.sroa.0.029, i64 4
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1011)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1014)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1016), !noalias !1019
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1022), !noalias !1019
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1024), !noalias !1019
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1027), !noalias !1019
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1029), !noalias !1019
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1032), !noalias !1019
  %_3.i.i.i.i19 = load i32, ptr %right_rev.sroa.0.024, align 4, !alias.scope !1034, !noalias !1035, !noundef !32
  %_4.i.i.i.i20 = load i32, ptr %left_rev.sroa.0.025, align 4, !alias.scope !1036, !noalias !1037, !noundef !32
  %_0.i21 = icmp slt i32 %_3.i.i.i.i19, %_4.i.i.i.i20
  %is_l.i = xor i1 %_0.i21, true
  %8 = tail call i32 @llvm.smax.i32(i32 %_3.i.i.i.i19, i32 %_4.i.i.i.i20)
  store i32 %8, ptr %dst_rev.sroa.0.023, align 4, !noalias !1038
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

; core::slice::sort::shared::smallsort::insertion_sort_shift_left
; Function Attrs: nounwind nonlazybind memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable
define void @_ZN4core5slice4sort6shared9smallsort25insertion_sort_shift_left17h7a8aa2b5097a11dcE(ptr noalias noundef nonnull align 4 captures(address) %v.0, i64 noundef range(i64 0, 2305843009213693952) %v.1, i64 noundef %offset, ptr noalias readnone align 8 captures(none) %is_less) unnamed_addr #4 personality ptr @rust_eh_personality {
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

bb7:                                              ; preds = %_ZN4core5slice4sort6shared9smallsort11insert_tail17h860b7523fd27f2bfE.exit, %bb3
  ret void

bb5:                                              ; preds = %bb5.preheader, %_ZN4core5slice4sort6shared9smallsort11insert_tail17h860b7523fd27f2bfE.exit
  %tail.sroa.0.02 = phi ptr [ %_15, %_ZN4core5slice4sort6shared9smallsort11insert_tail17h860b7523fd27f2bfE.exit ], [ %1, %bb5.preheader ]
  %2 = getelementptr inbounds i8, ptr %tail.sroa.0.02, i64 -4
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1040)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1043)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1045)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1048)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1050)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1053)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1055)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1058)
  %_3.i.i.i.i.i = load i32, ptr %tail.sroa.0.02, align 4, !alias.scope !1060, !noalias !1061, !noundef !32
  %_4.i.i.i.i.i = load i32, ptr %2, align 4, !alias.scope !1061, !noalias !1060, !noundef !32
  %_0.i.i = icmp slt i32 %_3.i.i.i.i.i, %_4.i.i.i.i.i
  br i1 %_0.i.i, label %bb4.i, label %_ZN4core5slice4sort6shared9smallsort11insert_tail17h860b7523fd27f2bfE.exit

bb4.i:                                            ; preds = %bb5, %bb6.i
  %gap_guard.sroa.5.0.i = phi ptr [ %sift.sroa.0.0.i, %bb6.i ], [ %tail.sroa.0.02, %bb5 ]
  %sift.sroa.0.0.i = phi ptr [ %4, %bb6.i ], [ %2, %bb5 ]
  %3 = load i32, ptr %sift.sroa.0.0.i, align 4
  store i32 %3, ptr %gap_guard.sroa.5.0.i, align 4
  %_18.i = icmp eq ptr %sift.sroa.0.0.i, %v.0
  br i1 %_18.i, label %bb10.i, label %bb6.i

bb6.i:                                            ; preds = %bb4.i
  %4 = getelementptr inbounds i8, ptr %sift.sroa.0.0.i, i64 -4
  %_4.i.i.i.i2.i = load i32, ptr %4, align 4, !alias.scope !1062, !noalias !1071, !noundef !32
  %_0.i3.i = icmp slt i32 %_3.i.i.i.i.i, %_4.i.i.i.i2.i
  br i1 %_0.i3.i, label %bb4.i, label %bb10.i

bb10.i:                                           ; preds = %bb6.i, %bb4.i
  store i32 %_3.i.i.i.i.i, ptr %sift.sroa.0.0.i, align 4, !noalias !1076
  br label %_ZN4core5slice4sort6shared9smallsort11insert_tail17h860b7523fd27f2bfE.exit

_ZN4core5slice4sort6shared9smallsort11insert_tail17h860b7523fd27f2bfE.exit: ; preds = %bb5, %bb10.i
  %_15 = getelementptr inbounds nuw i8, ptr %tail.sroa.0.02, i64 4
  %_11.not = icmp eq ptr %_15, %v_end
  br i1 %_11.not, label %bb7, label %bb5
}

; core::slice::sort::shared::smallsort::insertion_sort_shift_left
; Function Attrs: nonlazybind uwtable
define void @_ZN4core5slice4sort6shared9smallsort25insertion_sort_shift_left17h9ff766c275f64972E(ptr noalias noundef nonnull align 4 captures(address) %v.0, i64 noundef range(i64 0, 2305843009213693952) %v.1, i64 noundef %offset, ptr noalias readnone align 8 captures(none) %is_less) unnamed_addr #1 personality ptr @rust_eh_personality {
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

bb7:                                              ; preds = %_ZN4core5slice4sort6shared9smallsort11insert_tail17hbd5d4204d5355ab0E.exit, %bb3
  ret void

bb5:                                              ; preds = %bb5.preheader, %_ZN4core5slice4sort6shared9smallsort11insert_tail17hbd5d4204d5355ab0E.exit
  %tail.sroa.0.04 = phi ptr [ %_15, %_ZN4core5slice4sort6shared9smallsort11insert_tail17hbd5d4204d5355ab0E.exit ], [ %1, %bb5.preheader ]
  %2 = getelementptr inbounds i8, ptr %tail.sroa.0.04, i64 -4
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1081)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1084)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1086)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1089)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1091)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1094)
  %_4.i.i.i.i = load float, ptr %tail.sroa.0.04, align 4, !alias.scope !1096, !noalias !1097, !noundef !32
  %_5.i.i.i.i = load float, ptr %2, align 4, !alias.scope !1097, !noalias !1096, !noundef !32
  %.not.i.i.i.i = fcmp uno float %_4.i.i.i.i, %_5.i.i.i.i
  br i1 %.not.i.i.i.i, label %bb2.i.i.i.i, label %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17ha080091ea5002393E.exit.i", !prof !35

bb2.i.i.i.i:                                      ; preds = %bb5
; call core::option::unwrap_failed
  tail call void @_ZN4core6option13unwrap_failed17hef2534b77b89c04fE(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_a137618f5dc17edd74250a3f8711c076) #24, !noalias !1098
  unreachable

"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17ha080091ea5002393E.exit.i": ; preds = %bb5
  %_0.i.i = fcmp olt float %_4.i.i.i.i, %_5.i.i.i.i
  br i1 %_0.i.i, label %bb4.i, label %_ZN4core5slice4sort6shared9smallsort11insert_tail17hbd5d4204d5355ab0E.exit

bb4.i:                                            ; preds = %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17ha080091ea5002393E.exit.i", %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17ha080091ea5002393E.exit6.i"
  %gap_guard.sroa.5.0.i = phi ptr [ %sift.sroa.0.0.i, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17ha080091ea5002393E.exit6.i" ], [ %tail.sroa.0.04, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17ha080091ea5002393E.exit.i" ]
  %sift.sroa.0.0.i = phi ptr [ %4, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17ha080091ea5002393E.exit6.i" ], [ %2, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17ha080091ea5002393E.exit.i" ]
  %3 = load i32, ptr %sift.sroa.0.0.i, align 4
  store i32 %3, ptr %gap_guard.sroa.5.0.i, align 4
  %_18.i = icmp eq ptr %sift.sroa.0.0.i, %v.0
  br i1 %_18.i, label %bb10.i, label %bb6.i

bb6.i:                                            ; preds = %bb4.i
  %4 = getelementptr inbounds i8, ptr %sift.sroa.0.0.i, i64 -4
  %_5.i.i.i2.i = load float, ptr %4, align 4, !alias.scope !1099, !noalias !1106, !noundef !32
  %.not.i.i.i3.i = fcmp uno float %_4.i.i.i.i, %_5.i.i.i2.i
  br i1 %.not.i.i.i3.i, label %bb2.i.i.i5.i, label %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17ha080091ea5002393E.exit6.i", !prof !35

bb2.i.i.i5.i:                                     ; preds = %bb6.i
; invoke core::option::unwrap_failed
  invoke void @_ZN4core6option13unwrap_failed17hef2534b77b89c04fE(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_a137618f5dc17edd74250a3f8711c076) #24
          to label %.noexc.i unwind label %cleanup.i

.noexc.i:                                         ; preds = %bb2.i.i.i5.i
  unreachable

"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17ha080091ea5002393E.exit6.i": ; preds = %bb6.i
  %_0.i4.i = fcmp olt float %_4.i.i.i.i, %_5.i.i.i2.i
  br i1 %_0.i4.i, label %bb4.i, label %bb10.i

cleanup.i:                                        ; preds = %bb2.i.i.i5.i
  %5 = landingpad { ptr, i32 }
          cleanup
  store float %_4.i.i.i.i, ptr %sift.sroa.0.0.i, align 4, !noalias !1110
  resume { ptr, i32 } %5

bb10.i:                                           ; preds = %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17ha080091ea5002393E.exit6.i", %bb4.i
  store float %_4.i.i.i.i, ptr %sift.sroa.0.0.i, align 4, !noalias !1115
  br label %_ZN4core5slice4sort6shared9smallsort11insert_tail17hbd5d4204d5355ab0E.exit

_ZN4core5slice4sort6shared9smallsort11insert_tail17hbd5d4204d5355ab0E.exit: ; preds = %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17ha080091ea5002393E.exit.i", %bb10.i
  %_15 = getelementptr inbounds nuw i8, ptr %tail.sroa.0.04, i64 4
  %_11.not = icmp eq ptr %_15, %v_end
  br i1 %_11.not, label %bb7, label %bb5
}

; core::slice::sort::shared::smallsort::small_sort_general_with_scratch
; Function Attrs: nonlazybind uwtable
define void @_ZN4core5slice4sort6shared9smallsort31small_sort_general_with_scratch17h0213d17bbbc3e1feE(ptr noalias noundef nonnull align 4 captures(none) %v.0, i64 noundef range(i64 0, 2305843009213693952) %v.1, ptr noalias noundef nonnull align 4 captures(address) %scratch.0, i64 noundef range(i64 0, 2305843009213693952) %scratch.1, ptr noalias readnone align 8 captures(none) %is_less) unnamed_addr #1 personality ptr @rust_eh_personality {
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
  tail call void @_ZN4core5slice4sort6shared9smallsort12sort8_stable17hb7dcd0e06caddc59E(ptr noundef nonnull %v.0, ptr noundef nonnull %scratch.0, ptr noundef nonnull %_16, ptr noalias align 8 poison)
  %_18 = getelementptr inbounds nuw float, ptr %v.0, i64 %len_div_211
  %_19 = getelementptr inbounds nuw float, ptr %scratch.0, i64 %len_div_211
  %_20 = getelementptr inbounds nuw i8, ptr %_16, i64 32
; call core::slice::sort::shared::smallsort::sort8_stable
  tail call void @_ZN4core5slice4sort6shared9smallsort12sort8_stable17hb7dcd0e06caddc59E(ptr noundef nonnull %_18, ptr noundef nonnull %_19, ptr noundef nonnull %_20, ptr noalias align 8 poison)
  br label %bb15

bb10:                                             ; preds = %bb9
; call core::slice::sort::shared::smallsort::sort4_stable
  tail call void @_ZN4core5slice4sort6shared9smallsort12sort4_stable17h2be7aae30e916996E(ptr noundef nonnull %v.0, ptr noundef nonnull %scratch.0, ptr noalias align 8 poison)
  %_27 = getelementptr inbounds nuw float, ptr %v.0, i64 %len_div_211
  %_28 = getelementptr inbounds nuw float, ptr %scratch.0, i64 %len_div_211
; call core::slice::sort::shared::smallsort::sort4_stable
  tail call void @_ZN4core5slice4sort6shared9smallsort12sort4_stable17h2be7aae30e916996E(ptr noundef nonnull %_27, ptr noundef nonnull %_28, ptr noalias align 8 poison)
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
  br i1 %_5.not.i.not, label %"_ZN4core5array4iter10iter_inner78PolymorphicIter$LT$$u5b$core..mem..maybe_uninit..MaybeUninit$LT$T$GT$$u5d$$GT$4next17h0303a36267910a86E.exit", label %bb1.i

bb1.i:                                            ; preds = %bb16
  %_11.i = add nuw nsw i64 %4, 1
  store i64 %_11.i, ptr %iter, align 8, !alias.scope !1120
  %_20.i = icmp ult i64 %4, 2
  tail call void @llvm.assume(i1 %_20.i)
  %self3.i = getelementptr inbounds nuw i64, ptr %_37.sroa.5.0.iter.sroa_idx, i64 %4
  %_15.i = load i64, ptr %self3.i, align 8, !alias.scope !1120, !noundef !32
  br label %"_ZN4core5array4iter10iter_inner78PolymorphicIter$LT$$u5b$core..mem..maybe_uninit..MaybeUninit$LT$T$GT$$u5d$$GT$4next17h0303a36267910a86E.exit"

"_ZN4core5array4iter10iter_inner78PolymorphicIter$LT$$u5b$core..mem..maybe_uninit..MaybeUninit$LT$T$GT$$u5d$$GT$4next17h0303a36267910a86E.exit": ; preds = %bb16, %bb1.i
  %5 = phi i64 [ %_11.i, %bb1.i ], [ %4, %bb16 ]
  %_0.sroa.3.0.i = phi i64 [ %_15.i, %bb1.i ], [ undef, %bb16 ]
  br i1 %_5.not.i.not, label %bb19, label %bb18

bb18:                                             ; preds = %"_ZN4core5array4iter10iter_inner78PolymorphicIter$LT$$u5b$core..mem..maybe_uninit..MaybeUninit$LT$T$GT$$u5d$$GT$4next17h0303a36267910a86E.exit"
  %src5 = getelementptr inbounds nuw float, ptr %v.0, i64 %_0.sroa.3.0.i
  %dst6 = getelementptr inbounds nuw float, ptr %scratch.0, i64 %_0.sroa.3.0.i
  %_47 = icmp eq i64 %_0.sroa.3.0.i, 0
  %desired_len.sroa.0.0 = select i1 %_47, i64 %len_div_211, i64 %3
  %_8015 = icmp ult i64 %presorted_len.sroa.0.0, %desired_len.sroa.0.0
  br i1 %_8015, label %bb24, label %bb16.backedge

bb16.backedge:                                    ; preds = %_ZN4core5slice4sort6shared9smallsort11insert_tail17hbd5d4204d5355ab0E.exit, %bb18
  br label %bb16

bb19:                                             ; preds = %"_ZN4core5array4iter10iter_inner78PolymorphicIter$LT$$u5b$core..mem..maybe_uninit..MaybeUninit$LT$T$GT$$u5d$$GT$4next17h0303a36267910a86E.exit"
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %iter)
; invoke core::slice::sort::shared::smallsort::bidirectional_merge
  invoke void @_ZN4core5slice4sort6shared9smallsort19bidirectional_merge17ha0c0e7d74af75276E(ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) %scratch.0, i64 noundef %v.1, ptr noundef nonnull %v.0, ptr noalias align 8 poison)
          to label %bb29 unwind label %cleanup2

cleanup2:                                         ; preds = %bb19
  %6 = landingpad { ptr, i32 }
          cleanup
  %7 = shl nuw nsw i64 %v.1, 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %v.0, ptr nonnull align 4 %scratch.0, i64 %7, i1 false), !noalias !1123
  br label %bb31

bb29:                                             ; preds = %bb19, %start
  ret void

bb31:                                             ; preds = %cleanup.i, %cleanup2
  %.pn = phi { ptr, i32 } [ %6, %cleanup2 ], [ %12, %cleanup.i ]
  resume { ptr, i32 } %.pn

bb24:                                             ; preds = %bb18, %_ZN4core5slice4sort6shared9smallsort11insert_tail17hbd5d4204d5355ab0E.exit
  %iter1.sroa.0.119 = phi i64 [ %iter1.sroa.0.1, %_ZN4core5slice4sort6shared9smallsort11insert_tail17hbd5d4204d5355ab0E.exit ], [ %iter1.sroa.0.117, %bb18 ]
  %iter1.sroa.0.018 = phi i64 [ %iter1.sroa.0.119, %_ZN4core5slice4sort6shared9smallsort11insert_tail17hbd5d4204d5355ab0E.exit ], [ %presorted_len.sroa.0.0, %bb18 ]
  %_55 = getelementptr inbounds nuw float, ptr %src5, i64 %iter1.sroa.0.018
  %dst7 = getelementptr inbounds nuw float, ptr %dst6, i64 %iter1.sroa.0.018
  %8 = load i32, ptr %_55, align 4
  store i32 %8, ptr %dst7, align 4
  %9 = getelementptr inbounds i8, ptr %dst7, i64 -4
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1128)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1131)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1133)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1136)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1138)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1141)
  %_4.i.i.i.i = load float, ptr %dst7, align 4, !alias.scope !1143, !noalias !1144, !noundef !32
  %_5.i.i.i.i = load float, ptr %9, align 4, !alias.scope !1144, !noalias !1143, !noundef !32
  %.not.i.i.i.i = fcmp uno float %_4.i.i.i.i, %_5.i.i.i.i
  br i1 %.not.i.i.i.i, label %bb2.i.i.i.i, label %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17ha080091ea5002393E.exit.i", !prof !35

bb2.i.i.i.i:                                      ; preds = %bb24
; call core::option::unwrap_failed
  tail call void @_ZN4core6option13unwrap_failed17hef2534b77b89c04fE(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_a137618f5dc17edd74250a3f8711c076) #24
  unreachable

"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17ha080091ea5002393E.exit.i": ; preds = %bb24
  %_0.i.i = fcmp olt float %_4.i.i.i.i, %_5.i.i.i.i
  br i1 %_0.i.i, label %bb4.i, label %_ZN4core5slice4sort6shared9smallsort11insert_tail17hbd5d4204d5355ab0E.exit

bb4.i:                                            ; preds = %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17ha080091ea5002393E.exit.i", %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17ha080091ea5002393E.exit6.i"
  %gap_guard.sroa.5.0.i = phi ptr [ %sift.sroa.0.0.i, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17ha080091ea5002393E.exit6.i" ], [ %dst7, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17ha080091ea5002393E.exit.i" ]
  %sift.sroa.0.0.i = phi ptr [ %11, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17ha080091ea5002393E.exit6.i" ], [ %9, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17ha080091ea5002393E.exit.i" ]
  %10 = load i32, ptr %sift.sroa.0.0.i, align 4
  store i32 %10, ptr %gap_guard.sroa.5.0.i, align 4
  %_18.i = icmp eq ptr %sift.sroa.0.0.i, %dst6
  br i1 %_18.i, label %bb10.i, label %bb6.i

bb6.i:                                            ; preds = %bb4.i
  %11 = getelementptr inbounds i8, ptr %sift.sroa.0.0.i, i64 -4
  %_5.i.i.i2.i = load float, ptr %11, align 4, !alias.scope !1145, !noalias !1152, !noundef !32
  %.not.i.i.i3.i = fcmp uno float %_4.i.i.i.i, %_5.i.i.i2.i
  br i1 %.not.i.i.i3.i, label %bb2.i.i.i5.i, label %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17ha080091ea5002393E.exit6.i", !prof !35

bb2.i.i.i5.i:                                     ; preds = %bb6.i
; invoke core::option::unwrap_failed
  invoke void @_ZN4core6option13unwrap_failed17hef2534b77b89c04fE(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_a137618f5dc17edd74250a3f8711c076) #24
          to label %.noexc.i unwind label %cleanup.i

.noexc.i:                                         ; preds = %bb2.i.i.i5.i
  unreachable

"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17ha080091ea5002393E.exit6.i": ; preds = %bb6.i
  %_0.i4.i = fcmp olt float %_4.i.i.i.i, %_5.i.i.i2.i
  br i1 %_0.i4.i, label %bb4.i, label %bb10.i

cleanup.i:                                        ; preds = %bb2.i.i.i5.i
  %12 = landingpad { ptr, i32 }
          cleanup
  store float %_4.i.i.i.i, ptr %sift.sroa.0.0.i, align 4, !noalias !1156
  br label %bb31

bb10.i:                                           ; preds = %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17ha080091ea5002393E.exit6.i", %bb4.i
  store float %_4.i.i.i.i, ptr %sift.sroa.0.0.i, align 4, !noalias !1161
  br label %_ZN4core5slice4sort6shared9smallsort11insert_tail17hbd5d4204d5355ab0E.exit

_ZN4core5slice4sort6shared9smallsort11insert_tail17hbd5d4204d5355ab0E.exit: ; preds = %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17ha080091ea5002393E.exit.i", %bb10.i
  %_80 = icmp ult i64 %iter1.sroa.0.119, %desired_len.sroa.0.0
  %_84 = zext i1 %_80 to i64
  %iter1.sroa.0.1 = add nuw i64 %iter1.sroa.0.119, %_84
  br i1 %_80, label %bb24, label %bb16.backedge
}

; core::slice::sort::shared::smallsort::small_sort_general_with_scratch
; Function Attrs: nonlazybind uwtable
define void @_ZN4core5slice4sort6shared9smallsort31small_sort_general_with_scratch17h2a65b03088153d90E(ptr noalias noundef nonnull align 4 captures(none) %v.0, i64 noundef range(i64 0, 2305843009213693952) %v.1, ptr noalias noundef nonnull align 4 captures(address) %scratch.0, i64 noundef range(i64 0, 2305843009213693952) %scratch.1, ptr noalias readnone align 8 captures(none) %is_less) unnamed_addr #1 personality ptr @rust_eh_personality {
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
  tail call void @_ZN4core5slice4sort6shared9smallsort12sort8_stable17h172ca519dd346112E(ptr noundef nonnull %v.0, ptr noundef nonnull %scratch.0, ptr noundef nonnull %_16, ptr noalias align 8 poison)
  %_18 = getelementptr inbounds nuw i32, ptr %v.0, i64 %len_div_211
  %_19 = getelementptr inbounds nuw i32, ptr %scratch.0, i64 %len_div_211
  %_20 = getelementptr inbounds nuw i8, ptr %_16, i64 32
; call core::slice::sort::shared::smallsort::sort8_stable
  tail call void @_ZN4core5slice4sort6shared9smallsort12sort8_stable17h172ca519dd346112E(ptr noundef nonnull %_18, ptr noundef nonnull %_19, ptr noundef nonnull %_20, ptr noalias align 8 poison)
  br label %bb15

bb10:                                             ; preds = %bb9
  %_7.i = getelementptr inbounds nuw i8, ptr %v.0, i64 4
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1166)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1169)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1171)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1174)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1176)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1179)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1181)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1184)
  %_3.i.i.i.i.i = load i32, ptr %_7.i, align 4, !alias.scope !1186, !noalias !1187, !noundef !32
  %_4.i.i.i.i.i = load i32, ptr %v.0, align 4, !alias.scope !1187, !noalias !1186, !noundef !32
  %_0.i.i = icmp slt i32 %_3.i.i.i.i.i, %_4.i.i.i.i.i
  %_12.i = getelementptr inbounds nuw i8, ptr %v.0, i64 12
  %_14.i = getelementptr inbounds nuw i8, ptr %v.0, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1188)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1191)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1193)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1196)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1198)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1201)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1203)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1206)
  %_3.i.i.i.i7.i = load i32, ptr %_12.i, align 4, !alias.scope !1208, !noalias !1209, !noundef !32
  %_4.i.i.i.i8.i = load i32, ptr %_14.i, align 4, !alias.scope !1209, !noalias !1208, !noundef !32
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1210)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1213)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1215)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1218)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1220)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1223)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1225)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1228)
  %_3.i.i.i.i10.i = load i32, ptr %c.i, align 4, !alias.scope !1230, !noalias !1231, !noundef !32
  %_4.i.i.i.i11.i = load i32, ptr %a.i, align 4, !alias.scope !1231, !noalias !1230, !noundef !32
  %_0.i12.i = icmp slt i32 %_3.i.i.i.i10.i, %_4.i.i.i.i11.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1232)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1235)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1237)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1240)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1242)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1245)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1247)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1250)
  %_3.i.i.i.i13.i = load i32, ptr %d.i, align 4, !alias.scope !1252, !noalias !1253, !noundef !32
  %_4.i.i.i.i14.i = load i32, ptr %b.i, align 4, !alias.scope !1253, !noalias !1252, !noundef !32
  %_0.i15.i = icmp slt i32 %_3.i.i.i.i13.i, %_4.i.i.i.i14.i
  %0 = select i1 %_0.i12.i, ptr %c.i, ptr %a.i, !unpredictable !32
  %1 = select i1 %_0.i15.i, ptr %c.i, ptr %b.i, !unpredictable !32
  %2 = select i1 %_0.i12.i, ptr %a.i, ptr %1, !unpredictable !32
  %3 = select i1 %_0.i12.i, ptr %b.i, ptr %c.i, !unpredictable !32
  %4 = select i1 %_0.i15.i, ptr %d.i, ptr %3, !unpredictable !32
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1254)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1257)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1259)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1262)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1264)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1267)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1269)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1272)
  %_3.i.i.i.i16.i = load i32, ptr %4, align 4, !alias.scope !1274, !noalias !1275, !noundef !32
  %_4.i.i.i.i17.i = load i32, ptr %2, align 4, !alias.scope !1275, !noalias !1274, !noundef !32
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1276)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1279)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1281)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1284)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1286)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1289)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1291)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1294)
  %_3.i.i.i.i.i14 = load i32, ptr %_7.i13, align 4, !alias.scope !1296, !noalias !1297, !noundef !32
  %_4.i.i.i.i.i15 = load i32, ptr %_27, align 4, !alias.scope !1297, !noalias !1296, !noundef !32
  %_0.i.i16 = icmp slt i32 %_3.i.i.i.i.i14, %_4.i.i.i.i.i15
  %_12.i17 = getelementptr inbounds nuw i8, ptr %_27, i64 12
  %_14.i18 = getelementptr inbounds nuw i8, ptr %_27, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1298)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1301)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1303)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1306)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1308)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1311)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1313)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1316)
  %_3.i.i.i.i7.i19 = load i32, ptr %_12.i17, align 4, !alias.scope !1318, !noalias !1319, !noundef !32
  %_4.i.i.i.i8.i20 = load i32, ptr %_14.i18, align 4, !alias.scope !1319, !noalias !1318, !noundef !32
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1320)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1323)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1325)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1328)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1330)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1333)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1335)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1338)
  %_3.i.i.i.i10.i31 = load i32, ptr %c.i28, align 4, !alias.scope !1340, !noalias !1341, !noundef !32
  %_4.i.i.i.i11.i32 = load i32, ptr %a.i23, align 4, !alias.scope !1341, !noalias !1340, !noundef !32
  %_0.i12.i33 = icmp slt i32 %_3.i.i.i.i10.i31, %_4.i.i.i.i11.i32
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1342)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1345)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1347)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1350)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1352)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1355)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1357)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1360)
  %_3.i.i.i.i13.i34 = load i32, ptr %d.i30, align 4, !alias.scope !1362, !noalias !1363, !noundef !32
  %_4.i.i.i.i14.i35 = load i32, ptr %b.i26, align 4, !alias.scope !1363, !noalias !1362, !noundef !32
  %_0.i15.i36 = icmp slt i32 %_3.i.i.i.i13.i34, %_4.i.i.i.i14.i35
  %10 = select i1 %_0.i12.i33, ptr %c.i28, ptr %a.i23, !unpredictable !32
  %11 = select i1 %_0.i15.i36, ptr %c.i28, ptr %b.i26, !unpredictable !32
  %12 = select i1 %_0.i12.i33, ptr %a.i23, ptr %11, !unpredictable !32
  %13 = select i1 %_0.i12.i33, ptr %b.i26, ptr %c.i28, !unpredictable !32
  %14 = select i1 %_0.i15.i36, ptr %d.i30, ptr %13, !unpredictable !32
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1364)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1367)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1369)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1372)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1374)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1377)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1379)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1382)
  %_3.i.i.i.i16.i37 = load i32, ptr %14, align 4, !alias.scope !1384, !noalias !1385, !noundef !32
  %_4.i.i.i.i17.i38 = load i32, ptr %12, align 4, !alias.scope !1385, !noalias !1384, !noundef !32
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
  br i1 %_5.not.i.not, label %"_ZN4core5array4iter10iter_inner78PolymorphicIter$LT$$u5b$core..mem..maybe_uninit..MaybeUninit$LT$T$GT$$u5d$$GT$4next17h0303a36267910a86E.exit", label %bb1.i

bb1.i:                                            ; preds = %bb16
  %_11.i = add nuw nsw i64 %24, 1
  store i64 %_11.i, ptr %iter, align 8, !alias.scope !1386
  %_20.i = icmp ult i64 %24, 2
  tail call void @llvm.assume(i1 %_20.i)
  %self3.i = getelementptr inbounds nuw i64, ptr %_37.sroa.5.0.iter.sroa_idx, i64 %24
  %_15.i = load i64, ptr %self3.i, align 8, !alias.scope !1386, !noundef !32
  br label %"_ZN4core5array4iter10iter_inner78PolymorphicIter$LT$$u5b$core..mem..maybe_uninit..MaybeUninit$LT$T$GT$$u5d$$GT$4next17h0303a36267910a86E.exit"

"_ZN4core5array4iter10iter_inner78PolymorphicIter$LT$$u5b$core..mem..maybe_uninit..MaybeUninit$LT$T$GT$$u5d$$GT$4next17h0303a36267910a86E.exit": ; preds = %bb16, %bb1.i
  %25 = phi i64 [ %_11.i, %bb1.i ], [ %24, %bb16 ]
  %_0.sroa.3.0.i = phi i64 [ %_15.i, %bb1.i ], [ undef, %bb16 ]
  br i1 %_5.not.i.not, label %bb19, label %bb18

bb18:                                             ; preds = %"_ZN4core5array4iter10iter_inner78PolymorphicIter$LT$$u5b$core..mem..maybe_uninit..MaybeUninit$LT$T$GT$$u5d$$GT$4next17h0303a36267910a86E.exit"
  %src5 = getelementptr inbounds nuw i32, ptr %v.0, i64 %_0.sroa.3.0.i
  %dst6 = getelementptr inbounds nuw i32, ptr %scratch.0, i64 %_0.sroa.3.0.i
  %_47 = icmp eq i64 %_0.sroa.3.0.i, 0
  %desired_len.sroa.0.0 = select i1 %_47, i64 %len_div_211, i64 %23
  %_8059 = icmp ult i64 %presorted_len.sroa.0.0, %desired_len.sroa.0.0
  br i1 %_8059, label %bb24, label %bb16.backedge

bb16.backedge:                                    ; preds = %_ZN4core5slice4sort6shared9smallsort11insert_tail17h860b7523fd27f2bfE.exit, %bb18
  br label %bb16

bb19:                                             ; preds = %"_ZN4core5array4iter10iter_inner78PolymorphicIter$LT$$u5b$core..mem..maybe_uninit..MaybeUninit$LT$T$GT$$u5d$$GT$4next17h0303a36267910a86E.exit"
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %iter)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1389)
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1392)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1395)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1397), !noalias !1400
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1403), !noalias !1400
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1405), !noalias !1400
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1408), !noalias !1400
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1410), !noalias !1400
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1413), !noalias !1400
  %_3.i.i.i.i.i49 = load i32, ptr %right.sroa.0.026.i, align 4, !alias.scope !1415, !noalias !1416, !noundef !32
  %_4.i.i.i.i.i50 = load i32, ptr %left.sroa.0.027.i, align 4, !alias.scope !1417, !noalias !1418, !noundef !32
  %_0.i.i51 = icmp slt i32 %_3.i.i.i.i.i49, %_4.i.i.i.i.i50
  %is_l.i18.i = xor i1 %_0.i.i51, true
  %32 = tail call i32 @llvm.smin.i32(i32 %_3.i.i.i.i.i49, i32 %_4.i.i.i.i.i50)
  store i32 %32, ptr %dst.sroa.0.029.i, align 4, !noalias !1419
  %count.i.i = zext i1 %_0.i.i51 to i64
  %_12.i.i = getelementptr inbounds nuw i32, ptr %right.sroa.0.026.i, i64 %count.i.i
  %count2.i.i = zext i1 %is_l.i18.i to i64
  %_14.i.i = getelementptr inbounds nuw i32, ptr %left.sroa.0.027.i, i64 %count2.i.i
  %_16.i.i = getelementptr inbounds nuw i8, ptr %dst.sroa.0.029.i, i64 4
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1421)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1424)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1426), !noalias !1429
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1432), !noalias !1429
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1434), !noalias !1429
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1437), !noalias !1429
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1439), !noalias !1429
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1442), !noalias !1429
  %_3.i.i.i.i19.i = load i32, ptr %right_rev.sroa.0.024.i, align 4, !alias.scope !1444, !noalias !1445, !noundef !32
  %_4.i.i.i.i20.i = load i32, ptr %left_rev.sroa.0.025.i, align 4, !alias.scope !1446, !noalias !1447, !noundef !32
  %_0.i21.i = icmp slt i32 %_3.i.i.i.i19.i, %_4.i.i.i.i20.i
  %is_l.i.i = xor i1 %_0.i21.i, true
  %33 = tail call i32 @llvm.smax.i32(i32 %_3.i.i.i.i19.i, i32 %_4.i.i.i.i20.i)
  store i32 %33, ptr %dst_rev.sroa.0.023.i, align 4, !noalias !1448
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
  %37 = load i32, ptr %left.sroa.0.0.right.sroa.0.0.i, align 4, !alias.scope !1389
  store i32 %37, ptr %_16.i.i, align 4, !noalias !1389
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
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %v.0, ptr nonnull align 4 %scratch.0, i64 %39, i1 false), !noalias !1450
  resume { ptr, i32 } %38

bb29:                                             ; preds = %bb9.i, %start
  ret void

bb24:                                             ; preds = %bb18, %_ZN4core5slice4sort6shared9smallsort11insert_tail17h860b7523fd27f2bfE.exit
  %iter1.sroa.0.163 = phi i64 [ %iter1.sroa.0.1, %_ZN4core5slice4sort6shared9smallsort11insert_tail17h860b7523fd27f2bfE.exit ], [ %iter1.sroa.0.161, %bb18 ]
  %iter1.sroa.0.062 = phi i64 [ %iter1.sroa.0.163, %_ZN4core5slice4sort6shared9smallsort11insert_tail17h860b7523fd27f2bfE.exit ], [ %presorted_len.sroa.0.0, %bb18 ]
  %_55 = getelementptr inbounds nuw i32, ptr %src5, i64 %iter1.sroa.0.062
  %dst7 = getelementptr inbounds nuw i32, ptr %dst6, i64 %iter1.sroa.0.062
  %40 = load i32, ptr %_55, align 4
  store i32 %40, ptr %dst7, align 4
  %41 = getelementptr inbounds i8, ptr %dst7, i64 -4
  %_4.i.i.i.i.i56 = load i32, ptr %41, align 4, !alias.scope !1455, !noalias !1464, !noundef !32
  %_0.i.i57 = icmp slt i32 %40, %_4.i.i.i.i.i56
  br i1 %_0.i.i57, label %bb4.i, label %_ZN4core5slice4sort6shared9smallsort11insert_tail17h860b7523fd27f2bfE.exit

bb4.i:                                            ; preds = %bb24, %bb6.i
  %gap_guard.sroa.5.0.i = phi ptr [ %sift.sroa.0.0.i, %bb6.i ], [ %dst7, %bb24 ]
  %sift.sroa.0.0.i = phi ptr [ %43, %bb6.i ], [ %41, %bb24 ]
  %42 = load i32, ptr %sift.sroa.0.0.i, align 4
  store i32 %42, ptr %gap_guard.sroa.5.0.i, align 4
  %_18.i = icmp eq ptr %sift.sroa.0.0.i, %dst6
  br i1 %_18.i, label %bb10.i, label %bb6.i

bb6.i:                                            ; preds = %bb4.i
  %43 = getelementptr inbounds i8, ptr %sift.sroa.0.0.i, i64 -4
  %_4.i.i.i.i2.i = load i32, ptr %43, align 4, !alias.scope !1469, !noalias !1478, !noundef !32
  %_0.i3.i = icmp slt i32 %40, %_4.i.i.i.i2.i
  br i1 %_0.i3.i, label %bb4.i, label %bb10.i

bb10.i:                                           ; preds = %bb6.i, %bb4.i
  store i32 %40, ptr %sift.sroa.0.0.i, align 4, !noalias !1483
  br label %_ZN4core5slice4sort6shared9smallsort11insert_tail17h860b7523fd27f2bfE.exit

_ZN4core5slice4sort6shared9smallsort11insert_tail17h860b7523fd27f2bfE.exit: ; preds = %bb24, %bb10.i
  %_80 = icmp ult i64 %iter1.sroa.0.163, %desired_len.sroa.0.0
  %_84 = zext i1 %_80 to i64
  %iter1.sroa.0.1 = add nuw i64 %iter1.sroa.0.163, %_84
  br i1 %_80, label %bb24, label %bb16.backedge
}

; core::slice::sort::stable::driftsort_main
; Function Attrs: noinline nonlazybind uwtable
define void @_ZN4core5slice4sort6stable14driftsort_main17h3dcbfe23b0e24ea2E(ptr noalias noundef nonnull align 4 %v.0, i64 noundef range(i64 0, 2305843009213693952) %v.1, ptr noalias noundef align 8 dereferenceable(8) %is_less) unnamed_addr #5 personality ptr @rust_eh_personality {
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
  br i1 %0, label %bb3.i.i, label %"_ZN5alloc5slice99_$LT$impl$u20$core..slice..sort..stable..BufGuard$LT$T$GT$$u20$for$u20$alloc..vec..Vec$LT$T$GT$$GT$13with_capacity17h31a3bb75fe65f1d4E.exit", !prof !35

bb3.i.i:                                          ; preds = %.noexc
  %err.1.i.i = load i64, ptr %2, align 8, !noalias !1488
; invoke alloc::raw_vec::handle_error
  invoke void @_ZN5alloc7raw_vec12handle_error17h3a8c375904e593b2E(i64 noundef %err.0.i.i, i64 %err.1.i.i) #25
          to label %.noexc8 unwind label %cleanup

.noexc8:                                          ; preds = %bb3.i.i
  unreachable

"_ZN5alloc5slice99_$LT$impl$u20$core..slice..sort..stable..BufGuard$LT$T$GT$$u20$for$u20$alloc..vec..Vec$LT$T$GT$$GT$13with_capacity17h31a3bb75fe65f1d4E.exit": ; preds = %.noexc
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

bb8:                                              ; preds = %"_ZN5alloc5slice99_$LT$impl$u20$core..slice..sort..stable..BufGuard$LT$T$GT$$u20$for$u20$alloc..vec..Vec$LT$T$GT$$GT$13with_capacity17h31a3bb75fe65f1d4E.exit", %start
  %_24.sroa.0.1 = phi i8 [ 0, %start ], [ 1, %"_ZN5alloc5slice99_$LT$impl$u20$core..slice..sort..stable..BufGuard$LT$T$GT$$u20$for$u20$alloc..vec..Vec$LT$T$GT$$GT$13with_capacity17h31a3bb75fe65f1d4E.exit" ]
  %stack_scratch.sroa.4.0 = phi i64 [ 1024, %start ], [ %err.0.i.i, %"_ZN5alloc5slice99_$LT$impl$u20$core..slice..sort..stable..BufGuard$LT$T$GT$$u20$for$u20$alloc..vec..Vec$LT$T$GT$$GT$13with_capacity17h31a3bb75fe65f1d4E.exit" ]
  %stack_buf.pn = phi ptr [ %stack_buf, %start ], [ %this.1.i.i, %"_ZN5alloc5slice99_$LT$impl$u20$core..slice..sort..stable..BufGuard$LT$T$GT$$u20$for$u20$alloc..vec..Vec$LT$T$GT$$GT$13with_capacity17h31a3bb75fe65f1d4E.exit" ]
  %eager_sort = icmp samesign ult i64 %v.1, 65
; invoke core::slice::sort::stable::drift::sort
  invoke void @_ZN4core5slice4sort6stable5drift4sort17h793e51c9bdcee9d5E(ptr noalias noundef nonnull align 4 %v.0, i64 noundef %v.1, ptr noalias noundef nonnull align 4 %stack_buf.pn, i64 noundef %stack_scratch.sroa.4.0, i1 noundef zeroext %eager_sort, ptr noalias noundef align 8 dereferenceable(8) %is_less)
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
define void @_ZN4core5slice4sort6stable14driftsort_main17hd941c990cf943cf1E(ptr noalias noundef nonnull align 4 %v.0, i64 noundef range(i64 0, 2305843009213693952) %v.1, ptr noalias noundef align 8 dereferenceable(8) %is_less) unnamed_addr #5 personality ptr @rust_eh_personality {
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
  br i1 %0, label %bb3.i.i, label %"_ZN5alloc5slice99_$LT$impl$u20$core..slice..sort..stable..BufGuard$LT$T$GT$$u20$for$u20$alloc..vec..Vec$LT$T$GT$$GT$13with_capacity17h6293cbdad6d0ff30E.exit", !prof !35

bb3.i.i:                                          ; preds = %.noexc
  %err.1.i.i = load i64, ptr %2, align 8, !noalias !1493
; invoke alloc::raw_vec::handle_error
  invoke void @_ZN5alloc7raw_vec12handle_error17h3a8c375904e593b2E(i64 noundef %err.0.i.i, i64 %err.1.i.i) #25
          to label %.noexc8 unwind label %cleanup

.noexc8:                                          ; preds = %bb3.i.i
  unreachable

"_ZN5alloc5slice99_$LT$impl$u20$core..slice..sort..stable..BufGuard$LT$T$GT$$u20$for$u20$alloc..vec..Vec$LT$T$GT$$GT$13with_capacity17h6293cbdad6d0ff30E.exit": ; preds = %.noexc
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

bb8:                                              ; preds = %"_ZN5alloc5slice99_$LT$impl$u20$core..slice..sort..stable..BufGuard$LT$T$GT$$u20$for$u20$alloc..vec..Vec$LT$T$GT$$GT$13with_capacity17h6293cbdad6d0ff30E.exit", %start
  %_24.sroa.0.1 = phi i8 [ 0, %start ], [ 1, %"_ZN5alloc5slice99_$LT$impl$u20$core..slice..sort..stable..BufGuard$LT$T$GT$$u20$for$u20$alloc..vec..Vec$LT$T$GT$$GT$13with_capacity17h6293cbdad6d0ff30E.exit" ]
  %stack_scratch.sroa.4.0 = phi i64 [ 1024, %start ], [ %err.0.i.i, %"_ZN5alloc5slice99_$LT$impl$u20$core..slice..sort..stable..BufGuard$LT$T$GT$$u20$for$u20$alloc..vec..Vec$LT$T$GT$$GT$13with_capacity17h6293cbdad6d0ff30E.exit" ]
  %stack_buf.pn = phi ptr [ %stack_buf, %start ], [ %this.1.i.i, %"_ZN5alloc5slice99_$LT$impl$u20$core..slice..sort..stable..BufGuard$LT$T$GT$$u20$for$u20$alloc..vec..Vec$LT$T$GT$$GT$13with_capacity17h6293cbdad6d0ff30E.exit" ]
  %eager_sort = icmp samesign ult i64 %v.1, 65
; invoke core::slice::sort::stable::drift::sort
  invoke void @_ZN4core5slice4sort6stable5drift4sort17hb3ec81fdb7da295eE(ptr noalias noundef nonnull align 4 %v.0, i64 noundef %v.1, ptr noalias noundef nonnull align 4 %stack_buf.pn, i64 noundef %stack_scratch.sroa.4.0, i1 noundef zeroext %eager_sort, ptr noalias noundef align 8 dereferenceable(8) %is_less)
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
define { ptr, i64 } @"_ZN4core5slice4sort6stable27AlignedStorage$LT$T$C$_$GT$19as_uninit_slice_mut17h2aaeb5d26306ebacE"(ptr noalias noundef align 4 dereferenceable(4096) %self) unnamed_addr #6 {
start:
  %0 = insertvalue { ptr, i64 } poison, ptr %self, 0
  %1 = insertvalue { ptr, i64 } %0, i64 1024, 1
  ret { ptr, i64 } %1
}

; core::slice::sort::stable::AlignedStorage<T,_>::as_uninit_slice_mut
; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define { ptr, i64 } @"_ZN4core5slice4sort6stable27AlignedStorage$LT$T$C$_$GT$19as_uninit_slice_mut17h77e93358085b8e41E"(ptr noalias noundef align 4 dereferenceable(4096) %self) unnamed_addr #6 {
start:
  %0 = insertvalue { ptr, i64 } poison, ptr %self, 0
  %1 = insertvalue { ptr, i64 } %0, i64 1024, 1
  ret { ptr, i64 } %1
}

; core::slice::sort::stable::drift::create_run
; Function Attrs: nonlazybind uwtable
define noundef range(i64 0, -1) i64 @_ZN4core5slice4sort6stable5drift10create_run17h7bc8335efd319d55E(ptr noalias noundef nonnull align 4 %v.0, i64 noundef range(i64 0, 2305843009213693952) %v.1, ptr noalias noundef nonnull align 4 %scratch.0, i64 noundef range(i64 0, 2305843009213693952) %scratch.1, i64 noundef %min_good_run_len, i1 noundef zeroext %eager_sort, ptr noalias noundef align 8 dereferenceable(8) %is_less) unnamed_addr #1 personality ptr @rust_eh_personality {
start:
  %_7.not = icmp ult i64 %v.1, %min_good_run_len
  br i1 %_7.not, label %bb7, label %bb1

bb7:                                              ; preds = %_ZN4core5slice4sort6shared17find_existing_run17h013157d78b3f022fE.exit, %start
  br i1 %eager_sort, label %bb8, label %bb11

bb1:                                              ; preds = %start
  %_4.i = icmp samesign ult i64 %v.1, 2
  br i1 %_4.i, label %_ZN4core5slice4sort6shared17find_existing_run17h013157d78b3f022fE.exit, label %bb2.i

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
  br i1 %.not.i.i.i, label %bb2.i.i.i, label %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17ha080091ea5002393E.exit", !prof !35

bb2.i.i.i:                                        ; preds = %bb2.i
; call core::option::unwrap_failed
  tail call void @_ZN4core6option13unwrap_failed17hef2534b77b89c04fE(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_a137618f5dc17edd74250a3f8711c076) #24, !noalias !1513
  unreachable

"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17ha080091ea5002393E.exit": ; preds = %bb2.i
  %_0.i = fcmp olt float %_4.i.i.i, %_5.i.i.i
  %_10.i21.not = icmp eq i64 %v.1, 2
  br i1 %_0.i, label %bb4.i.preheader, label %bb11.i.preheader

bb11.i.preheader:                                 ; preds = %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17ha080091ea5002393E.exit"
  br i1 %_10.i21.not, label %_ZN4core5slice4sort6shared17find_existing_run17h013157d78b3f022fE.exit, label %bb12.i.preheader

bb12.i.preheader:                                 ; preds = %bb11.i.preheader
  %invariant.gep = getelementptr i8, ptr %v.0, i64 -4
  br label %bb12.i

bb4.i.preheader:                                  ; preds = %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17ha080091ea5002393E.exit"
  br i1 %_10.i21.not, label %_ZN4core5slice4sort6shared17find_existing_run17h013157d78b3f022fE.exit, label %bb5.i.preheader

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
  br i1 %.not.i.i.i3, label %bb2.i.i.i5, label %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17ha080091ea5002393E.exit6", !prof !35

bb2.i.i.i5:                                       ; preds = %bb12.i
; call core::option::unwrap_failed
  tail call void @_ZN4core6option13unwrap_failed17hef2534b77b89c04fE(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_a137618f5dc17edd74250a3f8711c076) #24, !noalias !1531
  unreachable

"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17ha080091ea5002393E.exit6": ; preds = %bb12.i
  %_0.i4 = fcmp olt float %_4.i.i.i1, %_5.i.i.i2
  br i1 %_0.i4, label %_ZN4core5slice4sort6shared17find_existing_run17h013157d78b3f022fE.exit, label %bb15.i

bb15.i:                                           ; preds = %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17ha080091ea5002393E.exit6"
  %1 = add nuw nsw i64 %run_len.sroa.0.0.i19, 1
  %exitcond.not = icmp eq i64 %1, %v.1
  br i1 %exitcond.not, label %_ZN4core5slice4sort6shared17find_existing_run17h013157d78b3f022fE.exit, label %bb12.i

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
  br i1 %.not.i.i.i9, label %bb2.i.i.i11, label %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17ha080091ea5002393E.exit12", !prof !35

bb2.i.i.i11:                                      ; preds = %bb5.i
; call core::option::unwrap_failed
  tail call void @_ZN4core6option13unwrap_failed17hef2534b77b89c04fE(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_a137618f5dc17edd74250a3f8711c076) #24, !noalias !1549
  unreachable

"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17ha080091ea5002393E.exit12": ; preds = %bb5.i
  %_0.i10 = fcmp olt float %_4.i.i.i7, %_5.i.i.i8
  br i1 %_0.i10, label %bb7.i, label %_ZN4core5slice4sort6shared17find_existing_run17h013157d78b3f022fE.exit

bb7.i:                                            ; preds = %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17ha080091ea5002393E.exit12"
  %3 = add nuw nsw i64 %run_len.sroa.0.1.i22, 1
  %exitcond27.not = icmp eq i64 %3, %v.1
  br i1 %exitcond27.not, label %_ZN4core5slice4sort6shared17find_existing_run17h013157d78b3f022fE.exit, label %bb5.i

_ZN4core5slice4sort6shared17find_existing_run17h013157d78b3f022fE.exit: ; preds = %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17ha080091ea5002393E.exit6", %bb15.i, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17ha080091ea5002393E.exit12", %bb7.i, %bb11.i.preheader, %bb4.i.preheader, %bb1
  %_0.sroa.3.0.i = phi i1 [ false, %bb1 ], [ true, %bb4.i.preheader ], [ false, %bb11.i.preheader ], [ true, %bb7.i ], [ true, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17ha080091ea5002393E.exit12" ], [ false, %bb15.i ], [ false, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17ha080091ea5002393E.exit6" ]
  %_0.sroa.0.0.i = phi i64 [ %v.1, %bb1 ], [ 2, %bb4.i.preheader ], [ 2, %bb11.i.preheader ], [ %run_len.sroa.0.1.i22, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17ha080091ea5002393E.exit12" ], [ %v.1, %bb7.i ], [ %run_len.sroa.0.0.i19, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17ha080091ea5002393E.exit6" ], [ %v.1, %bb15.i ]
  %_12 = icmp samesign ule i64 %_0.sroa.0.0.i, %v.1
  tail call void @llvm.assume(i1 %_12)
  %_13.not = icmp ult i64 %_0.sroa.0.0.i, %min_good_run_len
  br i1 %_13.not, label %bb7, label %bb3

bb3:                                              ; preds = %_ZN4core5slice4sort6shared17find_existing_run17h013157d78b3f022fE.exit
  br i1 %_0.sroa.3.0.i, label %bb14, label %bb5

bb11:                                             ; preds = %bb7
  %_0.sroa.0.0.i13 = tail call noundef i64 @llvm.umin.i64(i64 range(i64 -2305843009213693950, 2305843009213693952) %v.1, i64 %min_good_run_len)
  %_36 = shl nuw nsw i64 %_0.sroa.0.0.i13, 1
  br label %bb12

bb8:                                              ; preds = %bb7
  %_0.sroa.0.0.i14 = tail call noundef i64 @llvm.umin.i64(i64 range(i64 -2305843009213693950, 2305843009213693952) %v.1, i64 32)
; call core::slice::sort::stable::quicksort::quicksort
  tail call void @_ZN4core5slice4sort6stable9quicksort9quicksort17hf652837b0252945fE(ptr noalias noundef nonnull align 4 %v.0, i64 noundef %_0.sroa.0.0.i14, ptr noalias noundef nonnull align 4 %scratch.0, i64 noundef %scratch.1, i32 noundef 0, ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable_or_null(4) null, ptr noalias noundef align 8 dereferenceable(8) %is_less) #27
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
define noundef range(i64 0, -1) i64 @_ZN4core5slice4sort6stable5drift10create_run17hb112a5267fe29e6eE(ptr noalias noundef nonnull align 4 %v.0, i64 noundef range(i64 0, 2305843009213693952) %v.1, ptr noalias noundef nonnull align 4 %scratch.0, i64 noundef range(i64 0, 2305843009213693952) %scratch.1, i64 noundef %min_good_run_len, i1 noundef zeroext %eager_sort, ptr noalias noundef align 8 dereferenceable(8) %is_less) unnamed_addr #1 personality ptr @rust_eh_personality {
start:
  %_7.not = icmp ult i64 %v.1, %min_good_run_len
  br i1 %_7.not, label %bb7, label %bb1

bb7:                                              ; preds = %_ZN4core5slice4sort6shared17find_existing_run17h656f22935aee137fE.exit, %start
  br i1 %eager_sort, label %bb8, label %bb11

bb1:                                              ; preds = %start
  %_4.i = icmp samesign ult i64 %v.1, 2
  br i1 %_4.i, label %_ZN4core5slice4sort6shared17find_existing_run17h656f22935aee137fE.exit, label %bb2.i

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
  br i1 %_10.i13.not, label %_ZN4core5slice4sort6shared17find_existing_run17h656f22935aee137fE.exit, label %bb12.i.preheader

bb12.i.preheader:                                 ; preds = %bb11.i.preheader
  %invariant.gep = getelementptr i8, ptr %v.0, i64 -4
  br label %bb12.i

bb4.i.preheader:                                  ; preds = %bb2.i
  br i1 %_10.i13.not, label %_ZN4core5slice4sort6shared17find_existing_run17h656f22935aee137fE.exit, label %bb5.i.preheader

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
  br i1 %_0.i3, label %_ZN4core5slice4sort6shared17find_existing_run17h656f22935aee137fE.exit, label %bb15.i

bb15.i:                                           ; preds = %bb12.i
  %1 = add nuw nsw i64 %run_len.sroa.0.0.i11, 1
  %exitcond.not = icmp eq i64 %1, %v.1
  br i1 %exitcond.not, label %_ZN4core5slice4sort6shared17find_existing_run17h656f22935aee137fE.exit, label %bb12.i

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
  br i1 %_0.i6, label %bb7.i, label %_ZN4core5slice4sort6shared17find_existing_run17h656f22935aee137fE.exit

bb7.i:                                            ; preds = %bb5.i
  %3 = add nuw nsw i64 %run_len.sroa.0.1.i14, 1
  %exitcond19.not = icmp eq i64 %3, %v.1
  br i1 %exitcond19.not, label %_ZN4core5slice4sort6shared17find_existing_run17h656f22935aee137fE.exit, label %bb5.i

_ZN4core5slice4sort6shared17find_existing_run17h656f22935aee137fE.exit: ; preds = %bb12.i, %bb15.i, %bb5.i, %bb7.i, %bb11.i.preheader, %bb4.i.preheader, %bb1
  %_0.sroa.3.0.i = phi i1 [ false, %bb1 ], [ true, %bb4.i.preheader ], [ false, %bb11.i.preheader ], [ true, %bb7.i ], [ true, %bb5.i ], [ false, %bb15.i ], [ false, %bb12.i ]
  %_0.sroa.0.0.i = phi i64 [ %v.1, %bb1 ], [ 2, %bb4.i.preheader ], [ 2, %bb11.i.preheader ], [ %run_len.sroa.0.1.i14, %bb5.i ], [ %v.1, %bb7.i ], [ %run_len.sroa.0.0.i11, %bb12.i ], [ %v.1, %bb15.i ]
  %_12 = icmp samesign ule i64 %_0.sroa.0.0.i, %v.1
  tail call void @llvm.assume(i1 %_12)
  %_13.not = icmp ult i64 %_0.sroa.0.0.i, %min_good_run_len
  br i1 %_13.not, label %bb7, label %bb3

bb3:                                              ; preds = %_ZN4core5slice4sort6shared17find_existing_run17h656f22935aee137fE.exit
  br i1 %_0.sroa.3.0.i, label %bb14, label %bb5

bb11:                                             ; preds = %bb7
  %_0.sroa.0.0.i7 = tail call noundef i64 @llvm.umin.i64(i64 range(i64 -2305843009213693950, 2305843009213693952) %v.1, i64 %min_good_run_len)
  %_36 = shl nuw nsw i64 %_0.sroa.0.0.i7, 1
  br label %bb12

bb8:                                              ; preds = %bb7
  %_0.sroa.0.0.i8 = tail call noundef i64 @llvm.umin.i64(i64 range(i64 -2305843009213693950, 2305843009213693952) %v.1, i64 32)
; call core::slice::sort::stable::quicksort::quicksort
  tail call void @_ZN4core5slice4sort6stable9quicksort9quicksort17ha7fbfa28cb4bcd67E(ptr noalias noundef nonnull align 4 %v.0, i64 noundef %_0.sroa.0.0.i8, ptr noalias noundef nonnull align 4 %scratch.0, i64 noundef %scratch.1, i32 noundef 0, ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable_or_null(4) null, ptr noalias noundef align 8 dereferenceable(8) %is_less) #27
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
define void @_ZN4core5slice4sort6stable5drift16stable_quicksort17h6b7e47bb7c1d5530E(ptr noalias noundef nonnull align 4 %v.0, i64 noundef range(i64 0, 2305843009213693952) %v.1, ptr noalias noundef nonnull align 4 %scratch.0, i64 noundef range(i64 0, 2305843009213693952) %scratch.1, ptr noalias noundef align 8 dereferenceable(8) %is_less) unnamed_addr #1 {
start:
  %self = or i64 %v.1, 1
  %0 = tail call range(i64 3, 64) i64 @llvm.ctlz.i64(i64 %self, i1 true)
  %1 = trunc nuw nsw i64 %0 to i32
  %log = shl nuw nsw i32 %1, 1
  %limit = xor i32 %log, 126
; call core::slice::sort::stable::quicksort::quicksort
  tail call void @_ZN4core5slice4sort6stable9quicksort9quicksort17hf652837b0252945fE(ptr noalias noundef nonnull align 4 %v.0, i64 noundef %v.1, ptr noalias noundef nonnull align 4 %scratch.0, i64 noundef %scratch.1, i32 noundef %limit, ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable_or_null(4) null, ptr noalias noundef align 8 dereferenceable(8) %is_less) #27
  ret void
}

; core::slice::sort::stable::drift::stable_quicksort
; Function Attrs: nonlazybind uwtable
define void @_ZN4core5slice4sort6stable5drift16stable_quicksort17hefc6fa222fcff494E(ptr noalias noundef nonnull align 4 %v.0, i64 noundef range(i64 0, 2305843009213693952) %v.1, ptr noalias noundef nonnull align 4 %scratch.0, i64 noundef range(i64 0, 2305843009213693952) %scratch.1, ptr noalias noundef align 8 dereferenceable(8) %is_less) unnamed_addr #1 {
start:
  %self = or i64 %v.1, 1
  %0 = tail call range(i64 3, 64) i64 @llvm.ctlz.i64(i64 %self, i1 true)
  %1 = trunc nuw nsw i64 %0 to i32
  %log = shl nuw nsw i32 %1, 1
  %limit = xor i32 %log, 126
; call core::slice::sort::stable::quicksort::quicksort
  tail call void @_ZN4core5slice4sort6stable9quicksort9quicksort17ha7fbfa28cb4bcd67E(ptr noalias noundef nonnull align 4 %v.0, i64 noundef %v.1, ptr noalias noundef nonnull align 4 %scratch.0, i64 noundef %scratch.1, i32 noundef %limit, ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable_or_null(4) null, ptr noalias noundef align 8 dereferenceable(8) %is_less) #27
  ret void
}

; core::slice::sort::stable::drift::sort
; Function Attrs: nonlazybind uwtable
define void @_ZN4core5slice4sort6stable5drift4sort17h793e51c9bdcee9d5E(ptr noalias noundef nonnull align 4 %v.0, i64 noundef range(i64 0, 2305843009213693952) %v.1, ptr noalias noundef nonnull align 4 %scratch.0, i64 noundef range(i64 0, 2305843009213693952) %scratch.1, i1 noundef zeroext %eager_sort, ptr noalias noundef align 8 dereferenceable(8) %is_less) unnamed_addr #1 personality ptr @rust_eh_personality {
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
  %2 = tail call noundef i64 @_ZN4core5slice4sort6stable5drift10create_run17hb112a5267fe29e6eE(ptr noalias noundef nonnull align 4 %_82, i64 noundef %new_len, ptr noalias noundef nonnull align 4 %scratch.0, i64 noundef %scratch.1, i64 noundef %min_good_run_len.sroa.0.0, i1 noundef zeroext %eager_sort, ptr noalias noundef align 8 dereferenceable(8) %is_less)
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

bb12:                                             ; preds = %bb12.lr.ph, %_ZN4core5slice4sort6stable5drift13logical_merge17h967fae4f6264a966E.exit
  %stack_len.sroa.0.150 = phi i64 [ %stack_len.sroa.0.0, %bb12.lr.ph ], [ %count, %_ZN4core5slice4sort6stable5drift13logical_merge17h967fae4f6264a966E.exit ]
  %prev_run.sroa.0.149 = phi i64 [ %prev_run.sroa.0.0, %bb12.lr.ph ], [ %_0.sroa.0.0.i, %_ZN4core5slice4sort6stable5drift13logical_merge17h967fae4f6264a966E.exit ]
  %count = add i64 %stack_len.sroa.0.150, -1
  %_41 = getelementptr inbounds nuw i8, ptr %desired_depth_storage, i64 %count
  %_40 = load i8, ptr %_41, align 1, !noundef !32
  %_39.not = icmp ult i8 %_40, %desired_depth.sroa.0.0
  br i1 %_39.not, label %bb17, label %bb13

bb17:                                             ; preds = %_ZN4core5slice4sort6stable5drift13logical_merge17h967fae4f6264a966E.exit, %bb12, %bb10
  %prev_run.sroa.0.1.lcssa = phi i64 [ %prev_run.sroa.0.0, %bb10 ], [ %_0.sroa.0.0.i, %_ZN4core5slice4sort6stable5drift13logical_merge17h967fae4f6264a966E.exit ], [ %prev_run.sroa.0.149, %bb12 ]
  %stack_len.sroa.0.1.lcssa = phi i64 [ %stack_len.sroa.0.0, %bb10 ], [ 1, %_ZN4core5slice4sort6stable5drift13logical_merge17h967fae4f6264a966E.exit ], [ %stack_len.sroa.0.150, %bb12 ]
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
  br label %_ZN4core5slice4sort6stable5drift13logical_merge17h967fae4f6264a966E.exit

bb5.i:                                            ; preds = %bb11.i, %bb3.i
  br i1 %_10.not.i, label %bb16.i, label %bb7.i

bb11.i:                                           ; preds = %bb3.i
  %self.i = or i64 %_50, 1
  %8 = tail call range(i64 3, 64) i64 @llvm.ctlz.i64(i64 %self.i, i1 true)
  %9 = trunc nuw nsw i64 %8 to i32
  %log.i = shl nuw nsw i32 %9, 1
  %limit.i = xor i32 %log.i, 126
; call core::slice::sort::stable::quicksort::quicksort
  tail call void @_ZN4core5slice4sort6stable9quicksort9quicksort17ha7fbfa28cb4bcd67E(ptr noalias noundef nonnull align 4 %_98, i64 noundef range(i64 0, 2305843009213693952) %_50, ptr noalias noundef nonnull align 4 %scratch.0, i64 noundef range(i64 0, 2305843009213693952) %scratch.1, i32 noundef %limit.i, ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable_or_null(4) null, ptr noalias noundef nonnull align 8 dereferenceable(8) %is_less) #27
  br label %bb5.i

bb7.i:                                            ; preds = %bb16.i, %bb5.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1634)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1637)
  %_6.i = icmp ult i64 %left10, 2
  %_7.i = icmp ult i64 %prev_run.sroa.0.149, 2
  %or.cond.i = or i1 %_7.i, %_6.i
  br i1 %or.cond.i, label %_ZN4core5slice4sort6stable5merge5merge17h2d6da087c7c7e505E.exit, label %bb2.i

bb2.i:                                            ; preds = %bb7.i
  %_0.sroa.0.0.i.i = tail call i64 @llvm.umin.i64(i64 %_51, i64 %_50)
  %_8.i = icmp samesign ult i64 %scratch.1, %_0.sroa.0.0.i.i
  br i1 %_8.i, label %_ZN4core5slice4sort6stable5merge5merge17h2d6da087c7c7e505E.exit, label %bb5.i37

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
  br label %_ZN4core5slice4sort6stable5merge5merge17h2d6da087c7c7e505E.exit

_ZN4core5slice4sort6stable5merge5merge17h2d6da087c7c7e505E.exit: ; preds = %bb7.i, %bb2.i, %bb16.i40
  %_39.i = shl nuw nsw i64 %merged_len, 1
  %_38.i = or disjoint i64 %_39.i, 1
  br label %_ZN4core5slice4sort6stable5drift13logical_merge17h967fae4f6264a966E.exit

bb16.i:                                           ; preds = %bb5.i
  %_37.i = getelementptr inbounds nuw i32, ptr %_98, i64 %_50
  %self.i41 = or i64 %_51, 1
  %19 = tail call range(i64 3, 64) i64 @llvm.ctlz.i64(i64 %self.i41, i1 true)
  %20 = trunc nuw nsw i64 %19 to i32
  %log.i42 = shl nuw nsw i32 %20, 1
  %limit.i43 = xor i32 %log.i42, 126
; call core::slice::sort::stable::quicksort::quicksort
  tail call void @_ZN4core5slice4sort6stable9quicksort9quicksort17ha7fbfa28cb4bcd67E(ptr noalias noundef nonnull align 4 %_37.i, i64 noundef range(i64 0, 2305843009213693952) %_51, ptr noalias noundef nonnull align 4 %scratch.0, i64 noundef range(i64 0, 2305843009213693952) %scratch.1, i32 noundef %limit.i43, ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable_or_null(4) null, ptr noalias noundef nonnull align 8 dereferenceable(8) %is_less) #27
  br label %bb7.i

_ZN4core5slice4sort6stable5drift13logical_merge17h967fae4f6264a966E.exit: ; preds = %bb9.i, %_ZN4core5slice4sort6stable5merge5merge17h2d6da087c7c7e505E.exit
  %_0.sroa.0.0.i = phi i64 [ %_38.i, %_ZN4core5slice4sort6stable5merge5merge17h2d6da087c7c7e505E.exit ], [ %_40.i, %bb9.i ]
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
  tail call void @_ZN4core5slice4sort6stable9quicksort9quicksort17ha7fbfa28cb4bcd67E(ptr noalias noundef nonnull align 4 %v.0, i64 noundef range(i64 0, 2305843009213693952) %v.1, ptr noalias noundef nonnull align 4 %scratch.0, i64 noundef range(i64 0, 2305843009213693952) %scratch.1, i32 noundef %limit.i46, ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable_or_null(4) null, ptr noalias noundef align 8 dereferenceable(8) %is_less) #27
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
define void @_ZN4core5slice4sort6stable5drift4sort17hb3ec81fdb7da295eE(ptr noalias noundef nonnull align 4 %v.0, i64 noundef range(i64 0, 2305843009213693952) %v.1, ptr noalias noundef nonnull align 4 %scratch.0, i64 noundef range(i64 0, 2305843009213693952) %scratch.1, i1 noundef zeroext %eager_sort, ptr noalias noundef align 8 dereferenceable(8) %is_less) unnamed_addr #1 personality ptr @rust_eh_personality {
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
  %2 = tail call noundef i64 @_ZN4core5slice4sort6stable5drift10create_run17h7bc8335efd319d55E(ptr noalias noundef nonnull align 4 %_82, i64 noundef %new_len, ptr noalias noundef nonnull align 4 %scratch.0, i64 noundef %scratch.1, i64 noundef %min_good_run_len.sroa.0.0, i1 noundef zeroext %eager_sort, ptr noalias noundef align 8 dereferenceable(8) %is_less)
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

bb12:                                             ; preds = %bb10, %_ZN4core5slice4sort6stable5drift13logical_merge17hcbf04992fef00833E.exit
  %stack_len.sroa.0.145 = phi i64 [ %count, %_ZN4core5slice4sort6stable5drift13logical_merge17hcbf04992fef00833E.exit ], [ %stack_len.sroa.0.0, %bb10 ]
  %prev_run.sroa.0.144 = phi i64 [ %_0.sroa.0.0.i, %_ZN4core5slice4sort6stable5drift13logical_merge17hcbf04992fef00833E.exit ], [ %prev_run.sroa.0.0, %bb10 ]
  %count = add i64 %stack_len.sroa.0.145, -1
  %_41 = getelementptr inbounds nuw i8, ptr %desired_depth_storage, i64 %count
  %_40 = load i8, ptr %_41, align 1, !noundef !32
  %_39.not = icmp ult i8 %_40, %desired_depth.sroa.0.0
  br i1 %_39.not, label %bb17, label %bb13

bb17:                                             ; preds = %_ZN4core5slice4sort6stable5drift13logical_merge17hcbf04992fef00833E.exit, %bb12, %bb10
  %prev_run.sroa.0.1.lcssa = phi i64 [ %prev_run.sroa.0.0, %bb10 ], [ %_0.sroa.0.0.i, %_ZN4core5slice4sort6stable5drift13logical_merge17hcbf04992fef00833E.exit ], [ %prev_run.sroa.0.144, %bb12 ]
  %stack_len.sroa.0.1.lcssa = phi i64 [ %stack_len.sroa.0.0, %bb10 ], [ 1, %_ZN4core5slice4sort6stable5drift13logical_merge17hcbf04992fef00833E.exit ], [ %stack_len.sroa.0.145, %bb12 ]
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
  br label %_ZN4core5slice4sort6stable5drift13logical_merge17hcbf04992fef00833E.exit

bb5.i:                                            ; preds = %bb11.i, %bb3.i
  br i1 %_10.not.i, label %bb16.i, label %bb7.i

bb11.i:                                           ; preds = %bb3.i
  %self.i = or i64 %_50, 1
  %8 = tail call range(i64 3, 64) i64 @llvm.ctlz.i64(i64 %self.i, i1 true)
  %9 = trunc nuw nsw i64 %8 to i32
  %log.i = shl nuw nsw i32 %9, 1
  %limit.i = xor i32 %log.i, 126
; call core::slice::sort::stable::quicksort::quicksort
  tail call void @_ZN4core5slice4sort6stable9quicksort9quicksort17hf652837b0252945fE(ptr noalias noundef nonnull align 4 %_98, i64 noundef range(i64 0, 2305843009213693952) %_50, ptr noalias noundef nonnull align 4 %scratch.0, i64 noundef range(i64 0, 2305843009213693952) %scratch.1, i32 noundef %limit.i, ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable_or_null(4) null, ptr noalias noundef nonnull align 8 dereferenceable(8) %is_less) #27
  br label %bb5.i

bb7.i:                                            ; preds = %bb16.i, %bb5.i
; call core::slice::sort::stable::merge::merge
  tail call void @_ZN4core5slice4sort6stable5merge5merge17h53e490dace665f16E(ptr noalias noundef nonnull align 4 %_98, i64 noundef range(i64 0, 2305843009213693952) %merged_len, ptr noalias noundef nonnull align 4 %scratch.0, i64 noundef range(i64 0, 2305843009213693952) %scratch.1, i64 noundef %_50, ptr noalias nonnull align 8 poison)
  %_39.i = shl nuw nsw i64 %merged_len, 1
  %_38.i = or disjoint i64 %_39.i, 1
  br label %_ZN4core5slice4sort6stable5drift13logical_merge17hcbf04992fef00833E.exit

bb16.i:                                           ; preds = %bb5.i
  %_37.i = getelementptr inbounds nuw float, ptr %_98, i64 %_50
  %self.i37 = or i64 %_51, 1
  %10 = tail call range(i64 3, 64) i64 @llvm.ctlz.i64(i64 %self.i37, i1 true)
  %11 = trunc nuw nsw i64 %10 to i32
  %log.i38 = shl nuw nsw i32 %11, 1
  %limit.i39 = xor i32 %log.i38, 126
; call core::slice::sort::stable::quicksort::quicksort
  tail call void @_ZN4core5slice4sort6stable9quicksort9quicksort17hf652837b0252945fE(ptr noalias noundef nonnull align 4 %_37.i, i64 noundef range(i64 0, 2305843009213693952) %_51, ptr noalias noundef nonnull align 4 %scratch.0, i64 noundef range(i64 0, 2305843009213693952) %scratch.1, i32 noundef %limit.i39, ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable_or_null(4) null, ptr noalias noundef nonnull align 8 dereferenceable(8) %is_less) #27
  br label %bb7.i

_ZN4core5slice4sort6stable5drift13logical_merge17hcbf04992fef00833E.exit: ; preds = %bb9.i, %bb7.i
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
  tail call void @_ZN4core5slice4sort6stable9quicksort9quicksort17hf652837b0252945fE(ptr noalias noundef nonnull align 4 %v.0, i64 noundef range(i64 0, 2305843009213693952) %v.1, ptr noalias noundef nonnull align 4 %scratch.0, i64 noundef range(i64 0, 2305843009213693952) %scratch.1, i32 noundef %limit.i42, ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable_or_null(4) null, ptr noalias noundef align 8 dereferenceable(8) %is_less) #27
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
define void @"_ZN4core5slice4sort6stable5merge19MergeState$LT$T$GT$10merge_down17h6c9782b6b3314686E"(ptr noalias noundef align 8 captures(none) dereferenceable(24) %self, ptr noundef readnone captures(address) %left_end, ptr noundef readnone captures(address) %right_end, ptr noundef writeonly captures(none) %0, ptr noalias noundef readnone align 8 captures(none) dereferenceable(8) %is_less) unnamed_addr #7 {
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
define void @"_ZN4core5slice4sort6stable5merge19MergeState$LT$T$GT$10merge_down17he289e5c367d31d63E"(ptr noalias noundef align 8 captures(none) dereferenceable(24) %self, ptr noundef readnone captures(address) %left_end, ptr noundef readnone captures(address) %right_end, ptr noundef writeonly captures(none) %0, ptr noalias noundef readnone align 8 captures(none) dereferenceable(8) %is_less) unnamed_addr #1 {
start:
  %1 = getelementptr inbounds nuw i8, ptr %self, i64 16
  %2 = getelementptr inbounds nuw i8, ptr %self, i64 8
  %.promoted = load ptr, ptr %1, align 8
  %.promoted8 = load ptr, ptr %2, align 8
  br label %bb1

bb1:                                              ; preds = %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17ha080091ea5002393E.exit", %start
  %_219 = phi ptr [ %.promoted8, %start ], [ %_21, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17ha080091ea5002393E.exit" ]
  %_187 = phi ptr [ %.promoted, %start ], [ %_18, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17ha080091ea5002393E.exit" ]
  %out.sroa.0.0 = phi ptr [ %0, %start ], [ %5, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17ha080091ea5002393E.exit" ]
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
  br i1 %.not.i.i.i, label %bb2.i.i.i, label %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17ha080091ea5002393E.exit", !prof !35

bb2.i.i.i:                                        ; preds = %bb1
; call core::option::unwrap_failed
  tail call void @_ZN4core6option13unwrap_failed17hef2534b77b89c04fE(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_a137618f5dc17edd74250a3f8711c076) #24, !noalias !1738
  unreachable

"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17ha080091ea5002393E.exit": ; preds = %bb1
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

bb7:                                              ; preds = %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17ha080091ea5002393E.exit"
  ret void
}

; core::slice::sort::stable::merge::MergeState<T>::merge_up
; Function Attrs: nonlazybind uwtable
define void @"_ZN4core5slice4sort6stable5merge19MergeState$LT$T$GT$8merge_up17h198b1ccb8b971c05E"(ptr noalias noundef align 8 captures(none) dereferenceable(24) %self, ptr noundef readonly captures(address) %0, ptr noundef readnone captures(address) %right_end, ptr noalias noundef readnone align 8 captures(none) dereferenceable(8) %is_less) unnamed_addr #1 {
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

bb9:                                              ; preds = %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17ha080091ea5002393E.exit", %start
  ret void

bb3:                                              ; preds = %bb3.lr.ph, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17ha080091ea5002393E.exit"
  %_2511 = phi ptr [ %.promoted, %bb3.lr.ph ], [ %_25, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17ha080091ea5002393E.exit" ]
  %right.sroa.0.010 = phi ptr [ %0, %bb3.lr.ph ], [ %_23, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17ha080091ea5002393E.exit" ]
  %_2059 = phi ptr [ %self.promoted, %bb3.lr.ph ], [ %_20, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17ha080091ea5002393E.exit" ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1739)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1742)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1744)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1747)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1749)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1752)
  %_4.i.i.i = load float, ptr %right.sroa.0.010, align 4, !alias.scope !1754, !noalias !1755, !noundef !32
  %_5.i.i.i = load float, ptr %_2059, align 4, !alias.scope !1755, !noalias !1754, !noundef !32
  %.not.i.i.i = fcmp uno float %_4.i.i.i, %_5.i.i.i
  br i1 %.not.i.i.i, label %bb2.i.i.i, label %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17ha080091ea5002393E.exit", !prof !35

bb2.i.i.i:                                        ; preds = %bb3
; call core::option::unwrap_failed
  tail call void @_ZN4core6option13unwrap_failed17hef2534b77b89c04fE(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_a137618f5dc17edd74250a3f8711c076) #24, !noalias !1756
  unreachable

"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17ha080091ea5002393E.exit": ; preds = %bb3
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
define void @"_ZN4core5slice4sort6stable5merge19MergeState$LT$T$GT$8merge_up17h646a50214b5e3b0aE"(ptr noalias noundef align 8 captures(none) dereferenceable(24) %self, ptr noundef readonly captures(address) %0, ptr noundef readnone captures(address) %right_end, ptr noalias noundef readnone align 8 captures(none) dereferenceable(8) %is_less) unnamed_addr #8 {
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1757)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1760)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1762)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1765)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1767)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1770)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1772)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1775)
  %_3.i.i.i.i = load i32, ptr %right.sroa.0.010, align 4, !alias.scope !1777, !noalias !1778, !noundef !32
  %_4.i.i.i.i = load i32, ptr %_2059, align 4, !alias.scope !1778, !noalias !1777, !noundef !32
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
define void @_ZN4core5slice4sort6stable5merge5merge17h2d6da087c7c7e505E(ptr noalias noundef nonnull align 4 captures(address) %v.0, i64 noundef range(i64 0, 2305843009213693952) %v.1, ptr noalias noundef nonnull align 4 %scratch.0, i64 noundef range(i64 0, 2305843009213693952) %scratch.1, i64 noundef %0, ptr noalias noundef readnone align 8 captures(none) dereferenceable(8) %is_less) unnamed_addr #0 personality ptr @rust_eh_personality {
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1779)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1782)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1784)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1787)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1789)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1792)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1794)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1797)
  %_3.i.i.i.i.i = load i32, ptr %3, align 4, !alias.scope !1799, !noalias !1800, !noundef !32
  %_4.i.i.i.i.i = load i32, ptr %2, align 4, !alias.scope !1803, !noalias !1804, !noundef !32
  %_0.i.i = icmp slt i32 %_3.i.i.i.i.i, %_4.i.i.i.i.i
  %5 = tail call i32 @llvm.smax.i32(i32 %_3.i.i.i.i.i, i32 %_4.i.i.i.i.i)
  store i32 %5, ptr %4, align 4, !noalias !1805
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1806)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1809)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1811)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1814)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1816)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1819)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1821)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1824)
  %_3.i.i.i.i.i12 = load i32, ptr %right.sroa.0.010.i, align 4, !alias.scope !1826, !noalias !1827, !noundef !32
  %_4.i.i.i.i.i13 = load i32, ptr %_2059.i, align 4, !alias.scope !1830, !noalias !1831, !noundef !32
  %_0.i.i14 = icmp slt i32 %_3.i.i.i.i.i12, %_4.i.i.i.i.i13
  %consume_left.i = xor i1 %_0.i.i14, true
  %6 = tail call i32 @llvm.smin.i32(i32 %_3.i.i.i.i.i12, i32 %_4.i.i.i.i.i13)
  store i32 %6, ptr %_2511.i, align 4, !noalias !1832
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
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %merge_state.sroa.13.0, ptr align 4 %merge_state.sroa.0.0, i64 %9, i1 false), !noalias !1833
  br label %bb18

bb18:                                             ; preds = %bb2, %start, %bb16
  ret void
}

; core::slice::sort::stable::merge::merge
; Function Attrs: nonlazybind uwtable
define void @_ZN4core5slice4sort6stable5merge5merge17h53e490dace665f16E(ptr noalias noundef nonnull align 4 captures(address) %v.0, i64 noundef range(i64 0, 2305843009213693952) %v.1, ptr noalias noundef nonnull align 4 %scratch.0, i64 noundef range(i64 0, 2305843009213693952) %scratch.1, i64 noundef %0, ptr noalias readnone align 8 captures(none) %is_less) unnamed_addr #1 personality ptr @rust_eh_personality {
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

bb1.i:                                            ; preds = %bb5, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17ha080091ea5002393E.exit.i"
  %merge_state.sroa.13.2 = phi ptr [ %_18.i, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17ha080091ea5002393E.exit.i" ], [ %spec.select, %bb5 ]
  %merge_state.sroa.7.2 = phi ptr [ %_21.i, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17ha080091ea5002393E.exit.i" ], [ %_22, %bb5 ]
  %out.sroa.0.0.i = phi ptr [ %4, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17ha080091ea5002393E.exit.i" ], [ %v_end, %bb5 ]
  %2 = getelementptr inbounds i8, ptr %merge_state.sroa.13.2, i64 -4
  %3 = getelementptr inbounds i8, ptr %merge_state.sroa.7.2, i64 -4
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1838)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1841)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1843)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1846)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1848)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1851)
  %_4.i.i.i.i = load float, ptr %3, align 4, !alias.scope !1853, !noalias !1854, !noundef !32
  %_5.i.i.i.i = load float, ptr %2, align 4, !alias.scope !1857, !noalias !1858, !noundef !32
  %.not.i.i.i.i = fcmp uno float %_4.i.i.i.i, %_5.i.i.i.i
  br i1 %.not.i.i.i.i, label %bb2.i.i.i.i, label %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17ha080091ea5002393E.exit.i", !prof !35

bb2.i.i.i.i:                                      ; preds = %bb1.i
; invoke core::option::unwrap_failed
  invoke void @_ZN4core6option13unwrap_failed17hef2534b77b89c04fE(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_a137618f5dc17edd74250a3f8711c076) #24
          to label %.noexc unwind label %cleanup

.noexc:                                           ; preds = %bb2.i.i.i.i
  unreachable

"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17ha080091ea5002393E.exit.i": ; preds = %bb1.i
  %4 = getelementptr inbounds i8, ptr %out.sroa.0.0.i, i64 -4
  %_0.i.i = fcmp olt float %_4.i.i.i.i, %_5.i.i.i.i
  %..i = select i1 %_0.i.i, ptr %2, ptr %3
  %5 = load i32, ptr %..i, align 4, !noalias !1859
  store i32 %5, ptr %4, align 4, !noalias !1859
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

bb3.i:                                            ; preds = %bb12, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17ha080091ea5002393E.exit.i15"
  %merge_state.sroa.13.3 = phi ptr [ %_25.i, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17ha080091ea5002393E.exit.i15" ], [ %spec.select, %bb12 ]
  %merge_state.sroa.0.2 = phi ptr [ %_20.i18, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17ha080091ea5002393E.exit.i15" ], [ %scratch.0, %bb12 ]
  %right.sroa.0.010.i = phi ptr [ %_23.i19, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17ha080091ea5002393E.exit.i15" ], [ %v_mid, %bb12 ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1860)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1863)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1865)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1868)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1870)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1873)
  %_4.i.i.i.i12 = load float, ptr %right.sroa.0.010.i, align 4, !alias.scope !1875, !noalias !1876, !noundef !32
  %_5.i.i.i.i13 = load float, ptr %merge_state.sroa.0.2, align 4, !alias.scope !1879, !noalias !1880, !noundef !32
  %.not.i.i.i.i14 = fcmp uno float %_4.i.i.i.i12, %_5.i.i.i.i13
  br i1 %.not.i.i.i.i14, label %bb2.i.i.i.i21, label %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17ha080091ea5002393E.exit.i15", !prof !35

bb2.i.i.i.i21:                                    ; preds = %bb3.i
; invoke core::option::unwrap_failed
  invoke void @_ZN4core6option13unwrap_failed17hef2534b77b89c04fE(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_a137618f5dc17edd74250a3f8711c076) #24
          to label %.noexc22 unwind label %cleanup

.noexc22:                                         ; preds = %bb2.i.i.i.i21
  unreachable

"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17ha080091ea5002393E.exit.i15": ; preds = %bb3.i
  %_0.i.i16 = fcmp olt float %_4.i.i.i.i12, %_5.i.i.i.i13
  %consume_left.i = xor i1 %_0.i.i16, true
  %src.sroa.0.0.i = select i1 %_0.i.i16, ptr %right.sroa.0.010.i, ptr %merge_state.sroa.0.2
  %6 = load i32, ptr %src.sroa.0.0.i, align 4, !noalias !1881
  store i32 %6, ptr %merge_state.sroa.13.3, align 4, !noalias !1881
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
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %merge_state.sroa.13.0, ptr nonnull align 4 %merge_state.sroa.0.0, i64 %10, i1 false), !noalias !1882
  resume { ptr, i32 } %7

bb16:                                             ; preds = %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17ha080091ea5002393E.exit.i15", %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17ha080091ea5002393E.exit.i", %bb12
  %merge_state.sroa.13.1 = phi ptr [ %spec.select, %bb12 ], [ %_18.i, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17ha080091ea5002393E.exit.i" ], [ %_25.i, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17ha080091ea5002393E.exit.i15" ]
  %merge_state.sroa.7.1 = phi ptr [ %_22, %bb12 ], [ %_21.i, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17ha080091ea5002393E.exit.i" ], [ %_22, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17ha080091ea5002393E.exit.i15" ]
  %merge_state.sroa.0.1 = phi ptr [ %scratch.0, %bb12 ], [ %scratch.0, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17ha080091ea5002393E.exit.i" ], [ %_20.i18, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17ha080091ea5002393E.exit.i15" ]
  %11 = ptrtoint ptr %merge_state.sroa.7.1 to i64
  %12 = ptrtoint ptr %merge_state.sroa.0.1 to i64
  %13 = sub nuw i64 %11, %12
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %merge_state.sroa.13.1, ptr align 4 %merge_state.sroa.0.1, i64 %13, i1 false), !noalias !1887
  br label %bb18

bb18:                                             ; preds = %bb2, %start, %bb16
  ret void
}

; core::slice::sort::stable::quicksort::stable_partition
; Function Attrs: nounwind nonlazybind memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable
define noundef i64 @_ZN4core5slice4sort6stable9quicksort16stable_partition17h38a25487072c08e5E(ptr noalias noundef nonnull align 4 captures(address) %v.0, i64 noundef range(i64 0, 2305843009213693952) %v.1, ptr noalias noundef nonnull align 4 captures(none) %scratch.0, i64 noundef range(i64 0, 2305843009213693952) %scratch.1, i64 noundef %0, i1 noundef zeroext %pivot_goes_left, ptr noalias readnone align 8 captures(none) %is_less) unnamed_addr #4 {
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
  %_3.i.i.i.i = load i32, ptr %state.sroa.9.187, align 4, !alias.scope !1913, !noalias !1914, !noundef !32
  %_4.i.i.i.i = load i32, ptr %pivot, align 4, !alias.scope !1914, !noalias !1913, !noundef !32
  %_0.i = icmp slt i32 %_3.i.i.i.i, %_4.i.i.i.i
  %2 = getelementptr inbounds i8, ptr %state.sroa.43.188, i64 -4
  %dst_base.sroa.0.0.i = select i1 %_0.i, ptr %scratch.0, ptr %2
  %dst.i = getelementptr inbounds nuw i32, ptr %dst_base.sroa.0.0.i, i64 %state.sroa.27.186
  store i32 %_3.i.i.i.i, ptr %dst.i, align 4, !noalias !1915
  %_8.i = zext i1 %_0.i to i64
  %3 = add i64 %state.sroa.27.186, %_8.i
  %_9.i = getelementptr inbounds nuw i8, ptr %state.sroa.9.187, i64 4
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1918)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1921)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1923)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1926)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1928)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1931)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1933)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1936)
  %_3.i.i.i.i25 = load i32, ptr %_9.i, align 4, !alias.scope !1938, !noalias !1939, !noundef !32
  %_4.i.i.i.i26 = load i32, ptr %pivot, align 4, !alias.scope !1939, !noalias !1938, !noundef !32
  %_0.i27 = icmp slt i32 %_3.i.i.i.i25, %_4.i.i.i.i26
  %4 = getelementptr inbounds i8, ptr %state.sroa.43.188, i64 -8
  %dst_base.sroa.0.0.i29 = select i1 %_0.i27, ptr %scratch.0, ptr %4
  %dst.i31 = getelementptr inbounds nuw i32, ptr %dst_base.sroa.0.0.i29, i64 %3
  store i32 %_3.i.i.i.i25, ptr %dst.i31, align 4, !noalias !1940
  %_8.i33 = zext i1 %_0.i27 to i64
  %5 = add i64 %3, %_8.i33
  %_9.i34 = getelementptr inbounds nuw i8, ptr %state.sroa.9.187, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1943)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1946)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1948)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1951)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1953)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1956)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1958)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1961)
  %_3.i.i.i.i35 = load i32, ptr %_9.i34, align 4, !alias.scope !1963, !noalias !1964, !noundef !32
  %_4.i.i.i.i36 = load i32, ptr %pivot, align 4, !alias.scope !1964, !noalias !1963, !noundef !32
  %_0.i37 = icmp slt i32 %_3.i.i.i.i35, %_4.i.i.i.i36
  %6 = getelementptr inbounds i8, ptr %state.sroa.43.188, i64 -12
  %dst_base.sroa.0.0.i39 = select i1 %_0.i37, ptr %scratch.0, ptr %6
  %dst.i41 = getelementptr inbounds nuw i32, ptr %dst_base.sroa.0.0.i39, i64 %5
  store i32 %_3.i.i.i.i35, ptr %dst.i41, align 4, !noalias !1965
  %_8.i43 = zext i1 %_0.i37 to i64
  %7 = add i64 %5, %_8.i43
  %_9.i44 = getelementptr inbounds nuw i8, ptr %state.sroa.9.187, i64 12
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1968)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1971)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1973)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1976)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1978)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1981)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1983)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1986)
  %_3.i.i.i.i45 = load i32, ptr %_9.i44, align 4, !alias.scope !1988, !noalias !1989, !noundef !32
  %_4.i.i.i.i46 = load i32, ptr %pivot, align 4, !alias.scope !1989, !noalias !1988, !noundef !32
  %_0.i47 = icmp slt i32 %_3.i.i.i.i45, %_4.i.i.i.i46
  %8 = getelementptr inbounds i8, ptr %state.sroa.43.188, i64 -16
  %dst_base.sroa.0.0.i49 = select i1 %_0.i47, ptr %scratch.0, ptr %8
  %dst.i51 = getelementptr inbounds nuw i32, ptr %dst_base.sroa.0.0.i49, i64 %7
  store i32 %_3.i.i.i.i45, ptr %dst.i51, align 4, !noalias !1990
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1993)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1996)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1998)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2001)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2003)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2006)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2008)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2011)
  %_3.i.i.i.i55 = load i32, ptr %state.sroa.9.293, align 4, !alias.scope !2013, !noalias !2014, !noundef !32
  %_4.i.i.i.i56 = load i32, ptr %pivot, align 4, !alias.scope !2014, !noalias !2013, !noundef !32
  %_0.i57 = icmp slt i32 %_3.i.i.i.i55, %_4.i.i.i.i56
  %10 = getelementptr inbounds i8, ptr %state.sroa.43.294, i64 -4
  %dst_base.sroa.0.0.i59 = select i1 %_0.i57, ptr %scratch.0, ptr %10
  %dst.i61 = getelementptr inbounds nuw i32, ptr %dst_base.sroa.0.0.i59, i64 %state.sroa.27.292
  store i32 %_3.i.i.i.i55, ptr %dst.i61, align 4, !noalias !2015
  %_8.i63 = zext i1 %_0.i57 to i64
  %11 = add i64 %state.sroa.27.292, %_8.i63
  %_9.i64 = getelementptr inbounds nuw i8, ptr %state.sroa.9.293, i64 4
  %_47 = icmp ult ptr %_9.i64, %loop_end
  br i1 %_47, label %bb18, label %bb21

bb23:                                             ; preds = %bb21
  %12 = getelementptr inbounds i8, ptr %state.sroa.43.2.lcssa, i64 -4
  %dst_base.sroa.0.0.i66 = select i1 %pivot_goes_left, ptr %scratch.0, ptr %12
  %dst.i68 = getelementptr inbounds nuw i32, ptr %dst_base.sroa.0.0.i66, i64 %state.sroa.27.2.lcssa
  %13 = load i32, ptr %state.sroa.9.2.lcssa, align 4, !noalias !2018
  store i32 %13, ptr %dst.i68, align 4, !noalias !2018
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
  br i1 %epil.iter.cmp.not, label %bb30, label %bb42.epil, !llvm.loop !2021

bb30:                                             ; preds = %bb30.loopexit.unr-lcssa, %bb42.epil, %bb22
  ret i64 %state.sroa.27.2.lcssa
}

; core::slice::sort::stable::quicksort::stable_partition
; Function Attrs: nonlazybind uwtable
define noundef i64 @_ZN4core5slice4sort6stable9quicksort16stable_partition17h56da4b28959292e3E(ptr noalias noundef nonnull align 4 captures(address) %v.0, i64 noundef range(i64 0, 2305843009213693952) %v.1, ptr noalias noundef nonnull align 4 captures(none) %scratch.0, i64 noundef range(i64 0, 2305843009213693952) %scratch.1, i64 noundef %0, i1 noundef zeroext %pivot_goes_left, ptr noalias readnone align 8 captures(none) %is_less) unnamed_addr #1 {
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

bb6:                                              ; preds = %bb3, %"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17he134ba6577d8691eE.exit56"
  %state.sroa.43.1115 = phi ptr [ %11, %"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17he134ba6577d8691eE.exit56" ], [ %state.sroa.43.0, %bb3 ]
  %state.sroa.9.1114 = phi ptr [ %_9.i63, %"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17he134ba6577d8691eE.exit56" ], [ %state.sroa.9.0, %bb3 ]
  %state.sroa.27.1113 = phi i64 [ %13, %"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17he134ba6577d8691eE.exit56" ], [ %state.sroa.27.0, %bb3 ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2023)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2026)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2028)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2031)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2033)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2036)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2038)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2041)
  %_4.i.i.i.i = load float, ptr %pivot, align 4, !alias.scope !2043, !noalias !2044, !noundef !32
  %_5.i.i.i.i = load float, ptr %state.sroa.9.1114, align 4, !alias.scope !2044, !noalias !2043, !noundef !32
  %.not.i.i.i.i = fcmp uno float %_4.i.i.i.i, %_5.i.i.i.i
  br i1 %.not.i.i.i.i, label %bb2.i.i.i.i, label %"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17he134ba6577d8691eE.exit", !prof !35

bb2.i.i.i.i:                                      ; preds = %bb6
; call core::option::unwrap_failed
  tail call void @_ZN4core6option13unwrap_failed17hef2534b77b89c04fE(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_a137618f5dc17edd74250a3f8711c076) #24, !noalias !2045
  unreachable

"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17he134ba6577d8691eE.exit": ; preds = %bb6
  %_0.i.i = fcmp uge float %_4.i.i.i.i, %_5.i.i.i.i
  %2 = getelementptr inbounds i8, ptr %state.sroa.43.1115, i64 -4
  %dst_base.sroa.0.0.i = select i1 %_0.i.i, ptr %scratch.0, ptr %2
  %dst.i = getelementptr inbounds nuw float, ptr %dst_base.sroa.0.0.i, i64 %state.sroa.27.1113
  %3 = load i32, ptr %state.sroa.9.1114, align 4, !noalias !2046
  store i32 %3, ptr %dst.i, align 4, !noalias !2046
  %_9.i = getelementptr inbounds nuw i8, ptr %state.sroa.9.1114, i64 4
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2049)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2052)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2054)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2057)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2059)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2062)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2064)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2067)
  %_4.i.i.i.i25 = load float, ptr %pivot, align 4, !alias.scope !2069, !noalias !2070, !noundef !32
  %_5.i.i.i.i26 = load float, ptr %_9.i, align 4, !alias.scope !2070, !noalias !2069, !noundef !32
  %.not.i.i.i.i27 = fcmp uno float %_4.i.i.i.i25, %_5.i.i.i.i26
  br i1 %.not.i.i.i.i27, label %bb2.i.i.i.i29, label %"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17he134ba6577d8691eE.exit30", !prof !35

bb2.i.i.i.i29:                                    ; preds = %"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17he134ba6577d8691eE.exit"
; call core::option::unwrap_failed
  tail call void @_ZN4core6option13unwrap_failed17hef2534b77b89c04fE(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_a137618f5dc17edd74250a3f8711c076) #24, !noalias !2071
  unreachable

"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17he134ba6577d8691eE.exit30": ; preds = %"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17he134ba6577d8691eE.exit"
  %_8.i = zext i1 %_0.i.i to i64
  %4 = add i64 %state.sroa.27.1113, %_8.i
  %_0.i.i28 = fcmp uge float %_4.i.i.i.i25, %_5.i.i.i.i26
  %5 = getelementptr inbounds i8, ptr %state.sroa.43.1115, i64 -8
  %dst_base.sroa.0.0.i32 = select i1 %_0.i.i28, ptr %scratch.0, ptr %5
  %dst.i34 = getelementptr inbounds nuw float, ptr %dst_base.sroa.0.0.i32, i64 %4
  %6 = load i32, ptr %_9.i, align 4, !noalias !2072
  store i32 %6, ptr %dst.i34, align 4, !noalias !2072
  %_9.i37 = getelementptr inbounds nuw i8, ptr %state.sroa.9.1114, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2075)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2078)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2080)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2083)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2085)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2088)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2090)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2093)
  %_4.i.i.i.i38 = load float, ptr %pivot, align 4, !alias.scope !2095, !noalias !2096, !noundef !32
  %_5.i.i.i.i39 = load float, ptr %_9.i37, align 4, !alias.scope !2096, !noalias !2095, !noundef !32
  %.not.i.i.i.i40 = fcmp uno float %_4.i.i.i.i38, %_5.i.i.i.i39
  br i1 %.not.i.i.i.i40, label %bb2.i.i.i.i42, label %"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17he134ba6577d8691eE.exit43", !prof !35

bb2.i.i.i.i42:                                    ; preds = %"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17he134ba6577d8691eE.exit30"
; call core::option::unwrap_failed
  tail call void @_ZN4core6option13unwrap_failed17hef2534b77b89c04fE(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_a137618f5dc17edd74250a3f8711c076) #24, !noalias !2097
  unreachable

"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17he134ba6577d8691eE.exit43": ; preds = %"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17he134ba6577d8691eE.exit30"
  %_8.i36 = zext i1 %_0.i.i28 to i64
  %7 = add i64 %4, %_8.i36
  %_0.i.i41 = fcmp uge float %_4.i.i.i.i38, %_5.i.i.i.i39
  %8 = getelementptr inbounds i8, ptr %state.sroa.43.1115, i64 -12
  %dst_base.sroa.0.0.i45 = select i1 %_0.i.i41, ptr %scratch.0, ptr %8
  %dst.i47 = getelementptr inbounds nuw float, ptr %dst_base.sroa.0.0.i45, i64 %7
  %9 = load i32, ptr %_9.i37, align 4, !noalias !2098
  store i32 %9, ptr %dst.i47, align 4, !noalias !2098
  %_9.i50 = getelementptr inbounds nuw i8, ptr %state.sroa.9.1114, i64 12
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2101)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2104)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2106)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2109)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2111)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2114)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2116)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2119)
  %_4.i.i.i.i51 = load float, ptr %pivot, align 4, !alias.scope !2121, !noalias !2122, !noundef !32
  %_5.i.i.i.i52 = load float, ptr %_9.i50, align 4, !alias.scope !2122, !noalias !2121, !noundef !32
  %.not.i.i.i.i53 = fcmp uno float %_4.i.i.i.i51, %_5.i.i.i.i52
  br i1 %.not.i.i.i.i53, label %bb2.i.i.i.i55, label %"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17he134ba6577d8691eE.exit56", !prof !35

bb2.i.i.i.i55:                                    ; preds = %"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17he134ba6577d8691eE.exit43"
; call core::option::unwrap_failed
  tail call void @_ZN4core6option13unwrap_failed17hef2534b77b89c04fE(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_a137618f5dc17edd74250a3f8711c076) #24, !noalias !2123
  unreachable

"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17he134ba6577d8691eE.exit56": ; preds = %"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17he134ba6577d8691eE.exit43"
  %_8.i49 = zext i1 %_0.i.i41 to i64
  %10 = add i64 %7, %_8.i49
  %_0.i.i54 = fcmp uge float %_4.i.i.i.i51, %_5.i.i.i.i52
  %11 = getelementptr inbounds i8, ptr %state.sroa.43.1115, i64 -16
  %dst_base.sroa.0.0.i58 = select i1 %_0.i.i54, ptr %scratch.0, ptr %11
  %dst.i60 = getelementptr inbounds nuw float, ptr %dst_base.sroa.0.0.i58, i64 %10
  %12 = load i32, ptr %_9.i50, align 4, !noalias !2124
  store i32 %12, ptr %dst.i60, align 4, !noalias !2124
  %_8.i62 = zext i1 %_0.i.i54 to i64
  %13 = add i64 %10, %_8.i62
  %_9.i63 = getelementptr inbounds nuw i8, ptr %state.sroa.9.1114, i64 16
  %_19 = icmp ult ptr %_9.i63, %unroll_end
  br i1 %_19, label %bb6, label %bb16

bb16:                                             ; preds = %"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17he134ba6577d8691eE.exit56", %bb3
  %state.sroa.27.1.lcssa = phi i64 [ %state.sroa.27.0, %bb3 ], [ %13, %"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17he134ba6577d8691eE.exit56" ]
  %state.sroa.9.1.lcssa = phi ptr [ %state.sroa.9.0, %bb3 ], [ %_9.i63, %"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17he134ba6577d8691eE.exit56" ]
  %state.sroa.43.1.lcssa = phi ptr [ %state.sroa.43.0, %bb3 ], [ %11, %"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17he134ba6577d8691eE.exit56" ]
  %loop_end = getelementptr inbounds nuw float, ptr %v.0, i64 %pivot_pos.sroa.0.0
  %_47118 = icmp ult ptr %state.sroa.9.1.lcssa, %loop_end
  br i1 %_47118, label %bb18, label %bb21

bb21:                                             ; preds = %"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17he134ba6577d8691eE.exit69", %bb16
  %state.sroa.27.2.lcssa = phi i64 [ %state.sroa.27.1.lcssa, %bb16 ], [ %16, %"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17he134ba6577d8691eE.exit69" ]
  %state.sroa.9.2.lcssa = phi ptr [ %state.sroa.9.1.lcssa, %bb16 ], [ %_9.i76, %"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17he134ba6577d8691eE.exit69" ]
  %state.sroa.43.2.lcssa = phi ptr [ %state.sroa.43.1.lcssa, %bb16 ], [ %14, %"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17he134ba6577d8691eE.exit69" ]
  %_55 = icmp eq i64 %pivot_pos.sroa.0.0, %v.1
  br i1 %_55, label %bb22, label %bb23

bb18:                                             ; preds = %bb16, %"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17he134ba6577d8691eE.exit69"
  %state.sroa.43.2121 = phi ptr [ %14, %"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17he134ba6577d8691eE.exit69" ], [ %state.sroa.43.1.lcssa, %bb16 ]
  %state.sroa.9.2120 = phi ptr [ %_9.i76, %"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17he134ba6577d8691eE.exit69" ], [ %state.sroa.9.1.lcssa, %bb16 ]
  %state.sroa.27.2119 = phi i64 [ %16, %"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17he134ba6577d8691eE.exit69" ], [ %state.sroa.27.1.lcssa, %bb16 ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2127)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2130)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2132)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2135)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2137)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2140)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2142)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2145)
  %_4.i.i.i.i64 = load float, ptr %pivot, align 4, !alias.scope !2147, !noalias !2148, !noundef !32
  %_5.i.i.i.i65 = load float, ptr %state.sroa.9.2120, align 4, !alias.scope !2148, !noalias !2147, !noundef !32
  %.not.i.i.i.i66 = fcmp uno float %_4.i.i.i.i64, %_5.i.i.i.i65
  br i1 %.not.i.i.i.i66, label %bb2.i.i.i.i68, label %"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17he134ba6577d8691eE.exit69", !prof !35

bb2.i.i.i.i68:                                    ; preds = %bb18
; call core::option::unwrap_failed
  tail call void @_ZN4core6option13unwrap_failed17hef2534b77b89c04fE(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_a137618f5dc17edd74250a3f8711c076) #24, !noalias !2149
  unreachable

"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17he134ba6577d8691eE.exit69": ; preds = %bb18
  %_0.i.i67 = fcmp uge float %_4.i.i.i.i64, %_5.i.i.i.i65
  %14 = getelementptr inbounds i8, ptr %state.sroa.43.2121, i64 -4
  %dst_base.sroa.0.0.i71 = select i1 %_0.i.i67, ptr %scratch.0, ptr %14
  %dst.i73 = getelementptr inbounds nuw float, ptr %dst_base.sroa.0.0.i71, i64 %state.sroa.27.2119
  %15 = load i32, ptr %state.sroa.9.2120, align 4, !noalias !2150
  store i32 %15, ptr %dst.i73, align 4, !noalias !2150
  %_8.i75 = zext i1 %_0.i.i67 to i64
  %16 = add i64 %state.sroa.27.2119, %_8.i75
  %_9.i76 = getelementptr inbounds nuw i8, ptr %state.sroa.9.2120, i64 4
  %_47 = icmp ult ptr %_9.i76, %loop_end
  br i1 %_47, label %bb18, label %bb21

bb23:                                             ; preds = %bb21
  %17 = getelementptr inbounds i8, ptr %state.sroa.43.2.lcssa, i64 -4
  %dst_base.sroa.0.0.i78 = select i1 %pivot_goes_left, ptr %scratch.0, ptr %17
  %dst.i80 = getelementptr inbounds nuw float, ptr %dst_base.sroa.0.0.i78, i64 %state.sroa.27.2.lcssa
  %18 = load i32, ptr %state.sroa.9.2.lcssa, align 4, !noalias !2153
  store i32 %18, ptr %dst.i80, align 4, !noalias !2153
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
  br i1 %epil.iter.cmp.not, label %bb30, label %bb42.epil, !llvm.loop !2156

bb30:                                             ; preds = %bb30.loopexit.unr-lcssa, %bb42.epil, %bb22
  ret i64 %state.sroa.27.2.lcssa
}

; core::slice::sort::stable::quicksort::stable_partition
; Function Attrs: nounwind nonlazybind memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable
define noundef i64 @_ZN4core5slice4sort6stable9quicksort16stable_partition17hd7705ca4df02c598E(ptr noalias noundef nonnull align 4 captures(address) %v.0, i64 noundef range(i64 0, 2305843009213693952) %v.1, ptr noalias noundef nonnull align 4 captures(none) %scratch.0, i64 noundef range(i64 0, 2305843009213693952) %scratch.1, i64 noundef %0, i1 noundef zeroext %pivot_goes_left, ptr noalias readnone align 8 captures(none) %is_less) unnamed_addr #4 {
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2157)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2160)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2162)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2165)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2167)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2170)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2172)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2175)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2177)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2180)
  %_3.i.i.i.i.i = load i32, ptr %pivot, align 4, !alias.scope !2182, !noalias !2183, !noundef !32
  %_4.i.i.i.i.i = load i32, ptr %state.sroa.9.187, align 4, !alias.scope !2183, !noalias !2182, !noundef !32
  %_0.i.i = icmp sge i32 %_3.i.i.i.i.i, %_4.i.i.i.i.i
  %2 = getelementptr inbounds i8, ptr %state.sroa.43.188, i64 -4
  %dst_base.sroa.0.0.i = select i1 %_0.i.i, ptr %scratch.0, ptr %2
  %dst.i = getelementptr inbounds nuw i32, ptr %dst_base.sroa.0.0.i, i64 %state.sroa.27.186
  store i32 %_4.i.i.i.i.i, ptr %dst.i, align 4, !noalias !2184
  %_8.i = zext i1 %_0.i.i to i64
  %3 = add i64 %state.sroa.27.186, %_8.i
  %_9.i = getelementptr inbounds nuw i8, ptr %state.sroa.9.187, i64 4
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2187)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2190)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2192)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2195)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2197)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2200)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2202)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2205)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2207)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2210)
  %_3.i.i.i.i.i25 = load i32, ptr %pivot, align 4, !alias.scope !2212, !noalias !2213, !noundef !32
  %_4.i.i.i.i.i26 = load i32, ptr %_9.i, align 4, !alias.scope !2213, !noalias !2212, !noundef !32
  %_0.i.i27 = icmp sge i32 %_3.i.i.i.i.i25, %_4.i.i.i.i.i26
  %4 = getelementptr inbounds i8, ptr %state.sroa.43.188, i64 -8
  %dst_base.sroa.0.0.i29 = select i1 %_0.i.i27, ptr %scratch.0, ptr %4
  %dst.i31 = getelementptr inbounds nuw i32, ptr %dst_base.sroa.0.0.i29, i64 %3
  store i32 %_4.i.i.i.i.i26, ptr %dst.i31, align 4, !noalias !2214
  %_8.i33 = zext i1 %_0.i.i27 to i64
  %5 = add i64 %3, %_8.i33
  %_9.i34 = getelementptr inbounds nuw i8, ptr %state.sroa.9.187, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2217)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2220)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2222)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2225)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2227)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2230)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2232)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2235)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2237)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2240)
  %_3.i.i.i.i.i35 = load i32, ptr %pivot, align 4, !alias.scope !2242, !noalias !2243, !noundef !32
  %_4.i.i.i.i.i36 = load i32, ptr %_9.i34, align 4, !alias.scope !2243, !noalias !2242, !noundef !32
  %_0.i.i37 = icmp sge i32 %_3.i.i.i.i.i35, %_4.i.i.i.i.i36
  %6 = getelementptr inbounds i8, ptr %state.sroa.43.188, i64 -12
  %dst_base.sroa.0.0.i39 = select i1 %_0.i.i37, ptr %scratch.0, ptr %6
  %dst.i41 = getelementptr inbounds nuw i32, ptr %dst_base.sroa.0.0.i39, i64 %5
  store i32 %_4.i.i.i.i.i36, ptr %dst.i41, align 4, !noalias !2244
  %_8.i43 = zext i1 %_0.i.i37 to i64
  %7 = add i64 %5, %_8.i43
  %_9.i44 = getelementptr inbounds nuw i8, ptr %state.sroa.9.187, i64 12
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2247)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2250)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2252)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2255)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2257)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2260)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2262)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2265)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2267)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2270)
  %_3.i.i.i.i.i45 = load i32, ptr %pivot, align 4, !alias.scope !2272, !noalias !2273, !noundef !32
  %_4.i.i.i.i.i46 = load i32, ptr %_9.i44, align 4, !alias.scope !2273, !noalias !2272, !noundef !32
  %_0.i.i47 = icmp sge i32 %_3.i.i.i.i.i45, %_4.i.i.i.i.i46
  %8 = getelementptr inbounds i8, ptr %state.sroa.43.188, i64 -16
  %dst_base.sroa.0.0.i49 = select i1 %_0.i.i47, ptr %scratch.0, ptr %8
  %dst.i51 = getelementptr inbounds nuw i32, ptr %dst_base.sroa.0.0.i49, i64 %7
  store i32 %_4.i.i.i.i.i46, ptr %dst.i51, align 4, !noalias !2274
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2277)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2280)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2282)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2285)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2287)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2290)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2292)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2295)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2297)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2300)
  %_3.i.i.i.i.i55 = load i32, ptr %pivot, align 4, !alias.scope !2302, !noalias !2303, !noundef !32
  %_4.i.i.i.i.i56 = load i32, ptr %state.sroa.9.293, align 4, !alias.scope !2303, !noalias !2302, !noundef !32
  %_0.i.i57 = icmp sge i32 %_3.i.i.i.i.i55, %_4.i.i.i.i.i56
  %10 = getelementptr inbounds i8, ptr %state.sroa.43.294, i64 -4
  %dst_base.sroa.0.0.i59 = select i1 %_0.i.i57, ptr %scratch.0, ptr %10
  %dst.i61 = getelementptr inbounds nuw i32, ptr %dst_base.sroa.0.0.i59, i64 %state.sroa.27.292
  store i32 %_4.i.i.i.i.i56, ptr %dst.i61, align 4, !noalias !2304
  %_8.i63 = zext i1 %_0.i.i57 to i64
  %11 = add i64 %state.sroa.27.292, %_8.i63
  %_9.i64 = getelementptr inbounds nuw i8, ptr %state.sroa.9.293, i64 4
  %_47 = icmp ult ptr %_9.i64, %loop_end
  br i1 %_47, label %bb18, label %bb21

bb23:                                             ; preds = %bb21
  %12 = getelementptr inbounds i8, ptr %state.sroa.43.2.lcssa, i64 -4
  %dst_base.sroa.0.0.i66 = select i1 %pivot_goes_left, ptr %scratch.0, ptr %12
  %dst.i68 = getelementptr inbounds nuw i32, ptr %dst_base.sroa.0.0.i66, i64 %state.sroa.27.2.lcssa
  %13 = load i32, ptr %state.sroa.9.2.lcssa, align 4, !noalias !2307
  store i32 %13, ptr %dst.i68, align 4, !noalias !2307
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
  br i1 %epil.iter.cmp.not, label %bb30, label %bb42.epil, !llvm.loop !2310

bb30:                                             ; preds = %bb30.loopexit.unr-lcssa, %bb42.epil, %bb22
  ret i64 %state.sroa.27.2.lcssa
}

; core::slice::sort::stable::quicksort::stable_partition
; Function Attrs: nonlazybind uwtable
define noundef i64 @_ZN4core5slice4sort6stable9quicksort16stable_partition17he0fdbd8c712074f8E(ptr noalias noundef nonnull align 4 captures(address) %v.0, i64 noundef range(i64 0, 2305843009213693952) %v.1, ptr noalias noundef nonnull align 4 captures(none) %scratch.0, i64 noundef range(i64 0, 2305843009213693952) %scratch.1, i64 noundef %0, i1 noundef zeroext %pivot_goes_left, ptr noalias readnone align 8 captures(none) %is_less) unnamed_addr #1 {
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

bb6:                                              ; preds = %bb3, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17ha080091ea5002393E.exit56"
  %state.sroa.43.1115 = phi ptr [ %11, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17ha080091ea5002393E.exit56" ], [ %state.sroa.43.0, %bb3 ]
  %state.sroa.9.1114 = phi ptr [ %_9.i63, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17ha080091ea5002393E.exit56" ], [ %state.sroa.9.0, %bb3 ]
  %state.sroa.27.1113 = phi i64 [ %13, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17ha080091ea5002393E.exit56" ], [ %state.sroa.27.0, %bb3 ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2311)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2314)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2316)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2319)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2321)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2324)
  %_4.i.i.i = load float, ptr %state.sroa.9.1114, align 4, !alias.scope !2326, !noalias !2327, !noundef !32
  %_5.i.i.i = load float, ptr %pivot, align 4, !alias.scope !2327, !noalias !2326, !noundef !32
  %.not.i.i.i = fcmp uno float %_4.i.i.i, %_5.i.i.i
  br i1 %.not.i.i.i, label %bb2.i.i.i, label %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17ha080091ea5002393E.exit", !prof !35

bb2.i.i.i:                                        ; preds = %bb6
; call core::option::unwrap_failed
  tail call void @_ZN4core6option13unwrap_failed17hef2534b77b89c04fE(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_a137618f5dc17edd74250a3f8711c076) #24, !noalias !2328
  unreachable

"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17ha080091ea5002393E.exit": ; preds = %bb6
  %_0.i = fcmp olt float %_4.i.i.i, %_5.i.i.i
  %2 = getelementptr inbounds i8, ptr %state.sroa.43.1115, i64 -4
  %dst_base.sroa.0.0.i = select i1 %_0.i, ptr %scratch.0, ptr %2
  %dst.i = getelementptr inbounds nuw float, ptr %dst_base.sroa.0.0.i, i64 %state.sroa.27.1113
  %3 = load i32, ptr %state.sroa.9.1114, align 4, !noalias !2329
  store i32 %3, ptr %dst.i, align 4, !noalias !2329
  %_9.i = getelementptr inbounds nuw i8, ptr %state.sroa.9.1114, i64 4
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2332)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2335)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2337)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2340)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2342)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2345)
  %_4.i.i.i25 = load float, ptr %_9.i, align 4, !alias.scope !2347, !noalias !2348, !noundef !32
  %_5.i.i.i26 = load float, ptr %pivot, align 4, !alias.scope !2348, !noalias !2347, !noundef !32
  %.not.i.i.i27 = fcmp uno float %_4.i.i.i25, %_5.i.i.i26
  br i1 %.not.i.i.i27, label %bb2.i.i.i29, label %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17ha080091ea5002393E.exit30", !prof !35

bb2.i.i.i29:                                      ; preds = %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17ha080091ea5002393E.exit"
; call core::option::unwrap_failed
  tail call void @_ZN4core6option13unwrap_failed17hef2534b77b89c04fE(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_a137618f5dc17edd74250a3f8711c076) #24, !noalias !2349
  unreachable

"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17ha080091ea5002393E.exit30": ; preds = %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17ha080091ea5002393E.exit"
  %_8.i = zext i1 %_0.i to i64
  %4 = add i64 %state.sroa.27.1113, %_8.i
  %_0.i28 = fcmp olt float %_4.i.i.i25, %_5.i.i.i26
  %5 = getelementptr inbounds i8, ptr %state.sroa.43.1115, i64 -8
  %dst_base.sroa.0.0.i32 = select i1 %_0.i28, ptr %scratch.0, ptr %5
  %dst.i34 = getelementptr inbounds nuw float, ptr %dst_base.sroa.0.0.i32, i64 %4
  %6 = load i32, ptr %_9.i, align 4, !noalias !2350
  store i32 %6, ptr %dst.i34, align 4, !noalias !2350
  %_9.i37 = getelementptr inbounds nuw i8, ptr %state.sroa.9.1114, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2353)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2356)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2358)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2361)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2363)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2366)
  %_4.i.i.i38 = load float, ptr %_9.i37, align 4, !alias.scope !2368, !noalias !2369, !noundef !32
  %_5.i.i.i39 = load float, ptr %pivot, align 4, !alias.scope !2369, !noalias !2368, !noundef !32
  %.not.i.i.i40 = fcmp uno float %_4.i.i.i38, %_5.i.i.i39
  br i1 %.not.i.i.i40, label %bb2.i.i.i42, label %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17ha080091ea5002393E.exit43", !prof !35

bb2.i.i.i42:                                      ; preds = %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17ha080091ea5002393E.exit30"
; call core::option::unwrap_failed
  tail call void @_ZN4core6option13unwrap_failed17hef2534b77b89c04fE(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_a137618f5dc17edd74250a3f8711c076) #24, !noalias !2370
  unreachable

"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17ha080091ea5002393E.exit43": ; preds = %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17ha080091ea5002393E.exit30"
  %_8.i36 = zext i1 %_0.i28 to i64
  %7 = add i64 %4, %_8.i36
  %_0.i41 = fcmp olt float %_4.i.i.i38, %_5.i.i.i39
  %8 = getelementptr inbounds i8, ptr %state.sroa.43.1115, i64 -12
  %dst_base.sroa.0.0.i45 = select i1 %_0.i41, ptr %scratch.0, ptr %8
  %dst.i47 = getelementptr inbounds nuw float, ptr %dst_base.sroa.0.0.i45, i64 %7
  %9 = load i32, ptr %_9.i37, align 4, !noalias !2371
  store i32 %9, ptr %dst.i47, align 4, !noalias !2371
  %_9.i50 = getelementptr inbounds nuw i8, ptr %state.sroa.9.1114, i64 12
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2374)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2377)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2379)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2382)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2384)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2387)
  %_4.i.i.i51 = load float, ptr %_9.i50, align 4, !alias.scope !2389, !noalias !2390, !noundef !32
  %_5.i.i.i52 = load float, ptr %pivot, align 4, !alias.scope !2390, !noalias !2389, !noundef !32
  %.not.i.i.i53 = fcmp uno float %_4.i.i.i51, %_5.i.i.i52
  br i1 %.not.i.i.i53, label %bb2.i.i.i55, label %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17ha080091ea5002393E.exit56", !prof !35

bb2.i.i.i55:                                      ; preds = %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17ha080091ea5002393E.exit43"
; call core::option::unwrap_failed
  tail call void @_ZN4core6option13unwrap_failed17hef2534b77b89c04fE(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_a137618f5dc17edd74250a3f8711c076) #24, !noalias !2391
  unreachable

"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17ha080091ea5002393E.exit56": ; preds = %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17ha080091ea5002393E.exit43"
  %_8.i49 = zext i1 %_0.i41 to i64
  %10 = add i64 %7, %_8.i49
  %_0.i54 = fcmp olt float %_4.i.i.i51, %_5.i.i.i52
  %11 = getelementptr inbounds i8, ptr %state.sroa.43.1115, i64 -16
  %dst_base.sroa.0.0.i58 = select i1 %_0.i54, ptr %scratch.0, ptr %11
  %dst.i60 = getelementptr inbounds nuw float, ptr %dst_base.sroa.0.0.i58, i64 %10
  %12 = load i32, ptr %_9.i50, align 4, !noalias !2392
  store i32 %12, ptr %dst.i60, align 4, !noalias !2392
  %_8.i62 = zext i1 %_0.i54 to i64
  %13 = add i64 %10, %_8.i62
  %_9.i63 = getelementptr inbounds nuw i8, ptr %state.sroa.9.1114, i64 16
  %_19 = icmp ult ptr %_9.i63, %unroll_end
  br i1 %_19, label %bb6, label %bb16

bb16:                                             ; preds = %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17ha080091ea5002393E.exit56", %bb3
  %state.sroa.27.1.lcssa = phi i64 [ %state.sroa.27.0, %bb3 ], [ %13, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17ha080091ea5002393E.exit56" ]
  %state.sroa.9.1.lcssa = phi ptr [ %state.sroa.9.0, %bb3 ], [ %_9.i63, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17ha080091ea5002393E.exit56" ]
  %state.sroa.43.1.lcssa = phi ptr [ %state.sroa.43.0, %bb3 ], [ %11, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17ha080091ea5002393E.exit56" ]
  %loop_end = getelementptr inbounds nuw float, ptr %v.0, i64 %pivot_pos.sroa.0.0
  %_47118 = icmp ult ptr %state.sroa.9.1.lcssa, %loop_end
  br i1 %_47118, label %bb18, label %bb21

bb21:                                             ; preds = %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17ha080091ea5002393E.exit69", %bb16
  %state.sroa.27.2.lcssa = phi i64 [ %state.sroa.27.1.lcssa, %bb16 ], [ %16, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17ha080091ea5002393E.exit69" ]
  %state.sroa.9.2.lcssa = phi ptr [ %state.sroa.9.1.lcssa, %bb16 ], [ %_9.i76, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17ha080091ea5002393E.exit69" ]
  %state.sroa.43.2.lcssa = phi ptr [ %state.sroa.43.1.lcssa, %bb16 ], [ %14, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17ha080091ea5002393E.exit69" ]
  %_55 = icmp eq i64 %pivot_pos.sroa.0.0, %v.1
  br i1 %_55, label %bb22, label %bb23

bb18:                                             ; preds = %bb16, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17ha080091ea5002393E.exit69"
  %state.sroa.43.2121 = phi ptr [ %14, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17ha080091ea5002393E.exit69" ], [ %state.sroa.43.1.lcssa, %bb16 ]
  %state.sroa.9.2120 = phi ptr [ %_9.i76, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17ha080091ea5002393E.exit69" ], [ %state.sroa.9.1.lcssa, %bb16 ]
  %state.sroa.27.2119 = phi i64 [ %16, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17ha080091ea5002393E.exit69" ], [ %state.sroa.27.1.lcssa, %bb16 ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2395)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2398)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2400)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2403)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2405)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2408)
  %_4.i.i.i64 = load float, ptr %state.sroa.9.2120, align 4, !alias.scope !2410, !noalias !2411, !noundef !32
  %_5.i.i.i65 = load float, ptr %pivot, align 4, !alias.scope !2411, !noalias !2410, !noundef !32
  %.not.i.i.i66 = fcmp uno float %_4.i.i.i64, %_5.i.i.i65
  br i1 %.not.i.i.i66, label %bb2.i.i.i68, label %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17ha080091ea5002393E.exit69", !prof !35

bb2.i.i.i68:                                      ; preds = %bb18
; call core::option::unwrap_failed
  tail call void @_ZN4core6option13unwrap_failed17hef2534b77b89c04fE(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_a137618f5dc17edd74250a3f8711c076) #24, !noalias !2412
  unreachable

"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17ha080091ea5002393E.exit69": ; preds = %bb18
  %_0.i67 = fcmp olt float %_4.i.i.i64, %_5.i.i.i65
  %14 = getelementptr inbounds i8, ptr %state.sroa.43.2121, i64 -4
  %dst_base.sroa.0.0.i71 = select i1 %_0.i67, ptr %scratch.0, ptr %14
  %dst.i73 = getelementptr inbounds nuw float, ptr %dst_base.sroa.0.0.i71, i64 %state.sroa.27.2119
  %15 = load i32, ptr %state.sroa.9.2120, align 4, !noalias !2413
  store i32 %15, ptr %dst.i73, align 4, !noalias !2413
  %_8.i75 = zext i1 %_0.i67 to i64
  %16 = add i64 %state.sroa.27.2119, %_8.i75
  %_9.i76 = getelementptr inbounds nuw i8, ptr %state.sroa.9.2120, i64 4
  %_47 = icmp ult ptr %_9.i76, %loop_end
  br i1 %_47, label %bb18, label %bb21

bb23:                                             ; preds = %bb21
  %17 = getelementptr inbounds i8, ptr %state.sroa.43.2.lcssa, i64 -4
  %dst_base.sroa.0.0.i78 = select i1 %pivot_goes_left, ptr %scratch.0, ptr %17
  %dst.i80 = getelementptr inbounds nuw float, ptr %dst_base.sroa.0.0.i78, i64 %state.sroa.27.2.lcssa
  %18 = load i32, ptr %state.sroa.9.2.lcssa, align 4, !noalias !2416
  store i32 %18, ptr %dst.i80, align 4, !noalias !2416
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
  br i1 %epil.iter.cmp.not, label %bb30, label %bb42.epil, !llvm.loop !2419

bb30:                                             ; preds = %bb30.loopexit.unr-lcssa, %bb42.epil, %bb22
  ret i64 %state.sroa.27.2.lcssa
}

; core::slice::sort::stable::quicksort::PartitionState<T>::partition_one
; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define noundef ptr @"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h9465fa304d45e9adE"(ptr noalias noundef align 8 captures(none) dereferenceable(32) %self, i1 noundef zeroext %towards_left) unnamed_addr #9 {
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
define noundef ptr @"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17ha33a8671d1614144E"(ptr noalias noundef align 8 captures(none) dereferenceable(32) %self, i1 noundef zeroext %towards_left) unnamed_addr #9 {
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
define void @_ZN4core5slice4sort6stable9quicksort9quicksort17ha7fbfa28cb4bcd67E(ptr noalias noundef nonnull align 4 %0, i64 noundef range(i64 0, 2305843009213693952) %1, ptr noalias noundef nonnull align 4 %scratch.0, i64 noundef range(i64 0, 2305843009213693952) %scratch.1, i32 noundef %2, ptr noalias noundef readonly align 4 captures(address) dereferenceable_or_null(4) %3, ptr noalias noundef align 8 dereferenceable(8) %is_less) unnamed_addr #5 {
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

bb5:                                              ; preds = %bb5.lr.ph, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$12split_at_mut17h4a7a8215d0b3eeeeE.exit"
  %v.sroa.16.034 = phi i64 [ %v.sroa.16.0.ph41, %bb5.lr.ph ], [ %left_partition_len.sroa.0.0, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$12split_at_mut17h4a7a8215d0b3eeeeE.exit" ]
  %limit.sroa.0.033 = phi i32 [ %limit.sroa.0.0.ph40, %bb5.lr.ph ], [ %4, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$12split_at_mut17h4a7a8215d0b3eeeeE.exit" ]
  %_11 = icmp eq i32 %limit.sroa.0.033, 0
  br i1 %_11, label %bb6, label %bb7

bb3:                                              ; preds = %bb28, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$12split_at_mut17h4a7a8215d0b3eeeeE.exit", %start
  %v.sroa.0.0.ph.lcssa31 = phi ptr [ %0, %start ], [ %v.sroa.0.0.ph42, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$12split_at_mut17h4a7a8215d0b3eeeeE.exit" ], [ %_54, %bb28 ]
  %v.sroa.16.0.lcssa = phi i64 [ %1, %start ], [ %left_partition_len.sroa.0.0, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$12split_at_mut17h4a7a8215d0b3eeeeE.exit" ], [ %new_len, %bb28 ]
; call core::slice::sort::shared::smallsort::small_sort_general_with_scratch
  call void @_ZN4core5slice4sort6shared9smallsort31small_sort_general_with_scratch17h2a65b03088153d90E(ptr noalias noundef nonnull align 4 %v.sroa.0.0.ph.lcssa31, i64 noundef range(i64 0, 33) %v.sroa.16.0.lcssa, ptr noalias noundef nonnull align 4 %scratch.0, i64 noundef range(i64 0, 2305843009213693952) %scratch.1, ptr noalias nonnull align 8 poison)
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
  %self.i = call noundef ptr @_ZN4core5slice4sort6shared5pivot11median3_rec17he82d7d4612c70007E(ptr noundef nonnull readonly align 4 %v.sroa.0.0.ph42, ptr noundef nonnull readonly %b.i, ptr noundef nonnull readonly %c.i, i64 noundef %len_div_84.i, ptr noalias noundef nonnull align 8 dereferenceable(8) %is_less)
  br label %_ZN4core5slice4sort6shared5pivot12choose_pivot17h6506ff019939ff4bE.exit

bb3.i:                                            ; preds = %bb7
  call void @llvm.experimental.noalias.scope.decl(metadata !2420)
  call void @llvm.experimental.noalias.scope.decl(metadata !2423)
  call void @llvm.experimental.noalias.scope.decl(metadata !2425), !noalias !2428
  call void @llvm.experimental.noalias.scope.decl(metadata !2431), !noalias !2428
  call void @llvm.experimental.noalias.scope.decl(metadata !2433), !noalias !2428
  call void @llvm.experimental.noalias.scope.decl(metadata !2436), !noalias !2428
  call void @llvm.experimental.noalias.scope.decl(metadata !2438), !noalias !2428
  call void @llvm.experimental.noalias.scope.decl(metadata !2441), !noalias !2428
  %_3.i.i.i.i.i = load i32, ptr %v.sroa.0.0.ph42, align 4, !alias.scope !2443, !noalias !2446, !noundef !32
  %_4.i.i.i.i.i = load i32, ptr %b.i, align 4, !alias.scope !2448, !noalias !2449, !noundef !32
  %_0.i.i = icmp slt i32 %_3.i.i.i.i.i, %_4.i.i.i.i.i
  %_4.i.i.i.i6.i = load i32, ptr %c.i, align 4, !alias.scope !2450, !noalias !2459, !noundef !32
  %_0.i7.i = icmp slt i32 %_3.i.i.i.i.i, %_4.i.i.i.i6.i
  %5 = xor i1 %_0.i.i, %_0.i7.i
  %_0.i10.i = icmp slt i32 %_4.i.i.i.i.i, %_4.i.i.i.i6.i
  %_12.i.i = xor i1 %_0.i.i, %_0.i10.i
  %c.b.i.i = select i1 %_12.i.i, ptr %c.i, ptr %b.i
  %_0.sroa.0.0.i.i = select i1 %5, ptr %v.sroa.0.0.ph42, ptr %c.b.i.i
  br label %_ZN4core5slice4sort6shared5pivot12choose_pivot17h6506ff019939ff4bE.exit

_ZN4core5slice4sort6shared5pivot12choose_pivot17h6506ff019939ff4bE.exit: ; preds = %bb5.i, %bb3.i
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
  call void @_ZN4core5slice4sort6stable5drift4sort17h793e51c9bdcee9d5E(ptr noalias noundef nonnull align 4 %v.sroa.0.0.ph42, i64 noundef %v.sroa.16.034, ptr noalias noundef nonnull align 4 %scratch.0, i64 noundef %scratch.1, i1 noundef zeroext true, ptr noalias noundef align 8 dereferenceable(8) %is_less)
  br label %bb22

bb12:                                             ; preds = %_ZN4core5slice4sort6shared5pivot12choose_pivot17h6506ff019939ff4bE.exit
  %_3.i.i.i.i = load i32, ptr %left_ancestor_pivot.sroa.0.0.ph39, align 4, !alias.scope !2464, !noalias !2473, !noundef !32
  %_0.i.not = icmp slt i32 %_3.i.i.i.i, %value
  br i1 %_0.i.not, label %bb14, label %bb16

bb14:                                             ; preds = %_ZN4core5slice4sort6shared5pivot12choose_pivot17h6506ff019939ff4bE.exit, %bb12
; call core::slice::sort::stable::quicksort::stable_partition
  %8 = call noundef i64 @_ZN4core5slice4sort6stable9quicksort16stable_partition17h38a25487072c08e5E(ptr noalias noundef nonnull align 4 %v.sroa.0.0.ph42, i64 noundef %v.sroa.16.034, ptr noalias noundef nonnull align 4 %scratch.0, i64 noundef %scratch.1, i64 noundef %index.sroa.0.0.i, i1 noundef zeroext false, ptr noalias align 8 poison)
  %9 = icmp eq i64 %8, 0
  br label %bb16

bb16:                                             ; preds = %bb14, %bb12
  %left_partition_len.sroa.0.0 = phi i64 [ 0, %bb12 ], [ %8, %bb14 ]
  %perform_equal_partition.sroa.0.0.in = phi i1 [ true, %bb12 ], [ %9, %bb14 ]
  br i1 %perform_equal_partition.sroa.0.0.in, label %bb17, label %bb19

bb19:                                             ; preds = %bb16
  %_6.not.i = icmp ugt i64 %left_partition_len.sroa.0.0, %v.sroa.16.034
  br i1 %_6.not.i, label %bb3.i23, label %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$12split_at_mut17h4a7a8215d0b3eeeeE.exit", !prof !35

bb3.i23:                                          ; preds = %bb19
; call core::panicking::panic_fmt
  call void @_ZN4core9panicking9panic_fmt17ha4414e4328fe24a0E(ptr noundef nonnull @alloc_d1084648e479974e70c9329824bf76f9, ptr noundef nonnull inttoptr (i64 19 to ptr), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_58d434a1e795f965ef82c8e9c5db822a) #24, !noalias !2478
  unreachable

"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$12split_at_mut17h4a7a8215d0b3eeeeE.exit": ; preds = %bb19
  %10 = getelementptr inbounds nuw i32, ptr %v.sroa.0.0.ph42, i64 %left_partition_len.sroa.0.0
  %11 = sub nuw nsw i64 %v.sroa.16.034, %left_partition_len.sroa.0.0
; call core::slice::sort::stable::quicksort::quicksort
  call void @_ZN4core5slice4sort6stable9quicksort9quicksort17ha7fbfa28cb4bcd67E(ptr noalias noundef nonnull align 4 %10, i64 noundef %11, ptr noalias noundef nonnull align 4 %scratch.0, i64 noundef %scratch.1, i32 noundef %4, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable_or_null(4) %pivot_copy, ptr noalias noundef align 8 dereferenceable(8) %is_less) #27
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pivot_copy)
  %_8 = icmp ult i64 %left_partition_len.sroa.0.0, 33
  br i1 %_8, label %bb3, label %bb5

bb17:                                             ; preds = %bb16
; call core::slice::sort::stable::quicksort::stable_partition
  %mid_eq = call noundef i64 @_ZN4core5slice4sort6stable9quicksort16stable_partition17hd7705ca4df02c598E(ptr noalias noundef nonnull align 4 %v.sroa.0.0.ph42, i64 noundef %v.sroa.16.034, ptr noalias noundef nonnull align 4 %scratch.0, i64 noundef %scratch.1, i64 noundef %index.sroa.0.0.i, i1 noundef zeroext true, ptr noalias align 8 poison)
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

; core::slice::sort::stable::quicksort::quicksort
; Function Attrs: noinline nonlazybind uwtable
define void @_ZN4core5slice4sort6stable9quicksort9quicksort17hf652837b0252945fE(ptr noalias noundef nonnull align 4 %0, i64 noundef range(i64 0, 2305843009213693952) %1, ptr noalias noundef nonnull align 4 %scratch.0, i64 noundef range(i64 0, 2305843009213693952) %scratch.1, i32 noundef %2, ptr noalias noundef readonly align 4 captures(address) dereferenceable_or_null(4) %3, ptr noalias noundef align 8 dereferenceable(8) %is_less) unnamed_addr #5 {
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

bb5:                                              ; preds = %bb5.lr.ph, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$12split_at_mut17h1fd75c439b0f7021E.exit"
  %v.sroa.16.047 = phi i64 [ %v.sroa.16.0.ph54, %bb5.lr.ph ], [ %left_partition_len.sroa.0.0, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$12split_at_mut17h1fd75c439b0f7021E.exit" ]
  %limit.sroa.0.046 = phi i32 [ %limit.sroa.0.0.ph53, %bb5.lr.ph ], [ %4, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$12split_at_mut17h1fd75c439b0f7021E.exit" ]
  %_11 = icmp eq i32 %limit.sroa.0.046, 0
  br i1 %_11, label %bb6, label %bb7

bb3:                                              ; preds = %bb28, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$12split_at_mut17h1fd75c439b0f7021E.exit", %start
  %v.sroa.0.0.ph.lcssa44 = phi ptr [ %0, %start ], [ %v.sroa.0.0.ph55, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$12split_at_mut17h1fd75c439b0f7021E.exit" ], [ %_54, %bb28 ]
  %v.sroa.16.0.lcssa = phi i64 [ %1, %start ], [ %left_partition_len.sroa.0.0, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$12split_at_mut17h1fd75c439b0f7021E.exit" ], [ %new_len, %bb28 ]
; call core::slice::sort::shared::smallsort::small_sort_general_with_scratch
  call void @_ZN4core5slice4sort6shared9smallsort31small_sort_general_with_scratch17h0213d17bbbc3e1feE(ptr noalias noundef nonnull align 4 %v.sroa.0.0.ph.lcssa44, i64 noundef range(i64 0, 33) %v.sroa.16.0.lcssa, ptr noalias noundef nonnull align 4 %scratch.0, i64 noundef range(i64 0, 2305843009213693952) %scratch.1, ptr noalias nonnull align 8 poison)
  br label %bb22

bb7:                                              ; preds = %bb5
  %4 = add i32 %limit.sroa.0.046, -1
  call void @llvm.experimental.noalias.scope.decl(metadata !2482)
  %len_div_84.i = lshr i64 %v.sroa.16.047, 3
  %b.idx.i = shl nuw nsw i64 %len_div_84.i, 4
  %b.i = getelementptr inbounds nuw i8, ptr %v.sroa.0.0.ph55, i64 %b.idx.i
  %c.idx.i = mul nuw nsw i64 %len_div_84.i, 28
  %c.i = getelementptr inbounds nuw i8, ptr %v.sroa.0.0.ph55, i64 %c.idx.i
  %_12.i = icmp samesign ult i64 %v.sroa.16.047, 64
  br i1 %_12.i, label %bb3.i, label %bb5.i

bb5.i:                                            ; preds = %bb7
; call core::slice::sort::shared::pivot::median3_rec
  %self.i = call noundef ptr @_ZN4core5slice4sort6shared5pivot11median3_rec17hb9a1dace95ca481dE(ptr noundef nonnull readonly align 4 %v.sroa.0.0.ph55, ptr noundef nonnull readonly %b.i, ptr noundef nonnull readonly %c.i, i64 noundef %len_div_84.i, ptr noalias noundef nonnull align 8 dereferenceable(8) %is_less)
  br label %_ZN4core5slice4sort6shared5pivot12choose_pivot17hd9a5406a9f240046E.exit

bb3.i:                                            ; preds = %bb7
  call void @llvm.experimental.noalias.scope.decl(metadata !2485)
  call void @llvm.experimental.noalias.scope.decl(metadata !2488)
  call void @llvm.experimental.noalias.scope.decl(metadata !2490), !noalias !2493
  call void @llvm.experimental.noalias.scope.decl(metadata !2496), !noalias !2493
  call void @llvm.experimental.noalias.scope.decl(metadata !2498), !noalias !2493
  call void @llvm.experimental.noalias.scope.decl(metadata !2501), !noalias !2493
  %_4.i.i.i.i = load float, ptr %v.sroa.0.0.ph55, align 4, !alias.scope !2503, !noalias !2504, !noundef !32
  %_5.i.i.i.i = load float, ptr %b.i, align 4, !alias.scope !2506, !noalias !2507, !noundef !32
  %.not.i.i.i.i = fcmp uno float %_4.i.i.i.i, %_5.i.i.i.i
  br i1 %.not.i.i.i.i, label %bb2.i.i.i.i, label %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17ha080091ea5002393E.exit.i", !prof !35

bb2.i.i.i.i:                                      ; preds = %bb3.i
; call core::option::unwrap_failed
  call void @_ZN4core6option13unwrap_failed17hef2534b77b89c04fE(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_a137618f5dc17edd74250a3f8711c076) #24, !noalias !2508
  unreachable

"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17ha080091ea5002393E.exit.i": ; preds = %bb3.i
  %_0.i.i = fcmp olt float %_4.i.i.i.i, %_5.i.i.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !2509)
  call void @llvm.experimental.noalias.scope.decl(metadata !2512)
  %_5.i.i.i6.i = load float, ptr %c.i, align 4, !alias.scope !2515, !noalias !2518, !noundef !32
  %.not.i.i.i7.i = fcmp uno float %_4.i.i.i.i, %_5.i.i.i6.i
  br i1 %.not.i.i.i7.i, label %bb2.i.i.i9.i, label %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17ha080091ea5002393E.exit10.i", !prof !35

bb2.i.i.i9.i:                                     ; preds = %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17ha080091ea5002393E.exit.i"
; call core::option::unwrap_failed
  call void @_ZN4core6option13unwrap_failed17hef2534b77b89c04fE(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_a137618f5dc17edd74250a3f8711c076) #24, !noalias !2522
  unreachable

"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17ha080091ea5002393E.exit10.i": ; preds = %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17ha080091ea5002393E.exit.i"
  %_0.i8.i = fcmp olt float %_4.i.i.i.i, %_5.i.i.i6.i
  %5 = xor i1 %_0.i.i, %_0.i8.i
  br i1 %5, label %_ZN4core5slice4sort6shared5pivot12choose_pivot17hd9a5406a9f240046E.exit, label %bb3.i.i

bb3.i.i:                                          ; preds = %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17ha080091ea5002393E.exit10.i"
  %.not.i.i.i13.i = fcmp uno float %_5.i.i.i.i, %_5.i.i.i6.i
  br i1 %.not.i.i.i13.i, label %bb2.i.i.i15.i, label %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17ha080091ea5002393E.exit16.i", !prof !35

bb2.i.i.i15.i:                                    ; preds = %bb3.i.i
; call core::option::unwrap_failed
  call void @_ZN4core6option13unwrap_failed17hef2534b77b89c04fE(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_a137618f5dc17edd74250a3f8711c076) #24, !noalias !2523
  unreachable

"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17ha080091ea5002393E.exit16.i": ; preds = %bb3.i.i
  %_0.i14.i = fcmp olt float %_5.i.i.i.i, %_5.i.i.i6.i
  %_12.i.i = xor i1 %_0.i.i, %_0.i14.i
  %c.b.i.i = select i1 %_12.i.i, ptr %c.i, ptr %b.i
  br label %_ZN4core5slice4sort6shared5pivot12choose_pivot17hd9a5406a9f240046E.exit

_ZN4core5slice4sort6shared5pivot12choose_pivot17hd9a5406a9f240046E.exit: ; preds = %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17ha080091ea5002393E.exit10.i", %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17ha080091ea5002393E.exit16.i", %bb5.i
  %self.i.sink = phi ptr [ %self.i, %bb5.i ], [ %v.sroa.0.0.ph55, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17ha080091ea5002393E.exit10.i" ], [ %c.b.i.i, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17ha080091ea5002393E.exit16.i" ]
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
  call void @_ZN4core5slice4sort6stable5drift4sort17hb3ec81fdb7da295eE(ptr noalias noundef nonnull align 4 %v.sroa.0.0.ph55, i64 noundef %v.sroa.16.047, ptr noalias noundef nonnull align 4 %scratch.0, i64 noundef %scratch.1, i1 noundef zeroext true, ptr noalias noundef align 8 dereferenceable(8) %is_less)
  br label %bb22

bb12:                                             ; preds = %_ZN4core5slice4sort6shared5pivot12choose_pivot17hd9a5406a9f240046E.exit
  call void @llvm.experimental.noalias.scope.decl(metadata !2530)
  call void @llvm.experimental.noalias.scope.decl(metadata !2533)
  %_4.i.i.i = load float, ptr %left_ancestor_pivot.sroa.0.0.ph52, align 4, !alias.scope !2536, !noalias !2539, !noundef !32
  %.not.i.i.i = fcmp uno float %_4.i.i.i, %value
  br i1 %.not.i.i.i, label %bb2.i.i.i, label %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17ha080091ea5002393E.exit", !prof !35

bb2.i.i.i:                                        ; preds = %bb12
; call core::option::unwrap_failed
  call void @_ZN4core6option13unwrap_failed17hef2534b77b89c04fE(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_a137618f5dc17edd74250a3f8711c076) #24, !noalias !2543
  unreachable

"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17ha080091ea5002393E.exit": ; preds = %bb12
  %_0.i = fcmp uge float %_4.i.i.i, %value
  br i1 %_0.i, label %bb16, label %bb14

bb14:                                             ; preds = %_ZN4core5slice4sort6shared5pivot12choose_pivot17hd9a5406a9f240046E.exit, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17ha080091ea5002393E.exit"
; call core::slice::sort::stable::quicksort::stable_partition
  %8 = call noundef i64 @_ZN4core5slice4sort6stable9quicksort16stable_partition17he0fdbd8c712074f8E(ptr noalias noundef nonnull align 4 %v.sroa.0.0.ph55, i64 noundef %v.sroa.16.047, ptr noalias noundef nonnull align 4 %scratch.0, i64 noundef %scratch.1, i64 noundef %index.sroa.0.0.i, i1 noundef zeroext false, ptr noalias align 8 poison)
  %9 = icmp eq i64 %8, 0
  br label %bb16

bb16:                                             ; preds = %bb14, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17ha080091ea5002393E.exit"
  %left_partition_len.sroa.0.0 = phi i64 [ 0, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17ha080091ea5002393E.exit" ], [ %8, %bb14 ]
  %perform_equal_partition.sroa.0.0.in = phi i1 [ true, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17ha080091ea5002393E.exit" ], [ %9, %bb14 ]
  br i1 %perform_equal_partition.sroa.0.0.in, label %bb17, label %bb19

bb19:                                             ; preds = %bb16
  %_6.not.i = icmp ugt i64 %left_partition_len.sroa.0.0, %v.sroa.16.047
  br i1 %_6.not.i, label %bb3.i23, label %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$12split_at_mut17h1fd75c439b0f7021E.exit", !prof !35

bb3.i23:                                          ; preds = %bb19
; call core::panicking::panic_fmt
  call void @_ZN4core9panicking9panic_fmt17ha4414e4328fe24a0E(ptr noundef nonnull @alloc_d1084648e479974e70c9329824bf76f9, ptr noundef nonnull inttoptr (i64 19 to ptr), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_58d434a1e795f965ef82c8e9c5db822a) #24, !noalias !2544
  unreachable

"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$12split_at_mut17h1fd75c439b0f7021E.exit": ; preds = %bb19
  %10 = getelementptr inbounds nuw float, ptr %v.sroa.0.0.ph55, i64 %left_partition_len.sroa.0.0
  %11 = sub nuw nsw i64 %v.sroa.16.047, %left_partition_len.sroa.0.0
; call core::slice::sort::stable::quicksort::quicksort
  call void @_ZN4core5slice4sort6stable9quicksort9quicksort17hf652837b0252945fE(ptr noalias noundef nonnull align 4 %10, i64 noundef %11, ptr noalias noundef nonnull align 4 %scratch.0, i64 noundef %scratch.1, i32 noundef %4, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable_or_null(4) %pivot_copy, ptr noalias noundef align 8 dereferenceable(8) %is_less) #27
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pivot_copy)
  %_8 = icmp ult i64 %left_partition_len.sroa.0.0, 33
  br i1 %_8, label %bb3, label %bb5

bb17:                                             ; preds = %bb16
; call core::slice::sort::stable::quicksort::stable_partition
  %mid_eq = call noundef i64 @_ZN4core5slice4sort6stable9quicksort16stable_partition17h56da4b28959292e3E(ptr noalias noundef nonnull align 4 %v.sroa.0.0.ph55, i64 noundef %v.sroa.16.047, ptr noalias noundef nonnull align 4 %scratch.0, i64 noundef %scratch.1, i64 noundef %index.sroa.0.0.i, i1 noundef zeroext true, ptr noalias align 8 poison)
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

; alloc::slice::<impl core::slice::sort::stable::BufGuard<T> for alloc::vec::Vec<T>>::with_capacity
; Function Attrs: nonlazybind uwtable
define void @"_ZN5alloc5slice99_$LT$impl$u20$core..slice..sort..stable..BufGuard$LT$T$GT$$u20$for$u20$alloc..vec..Vec$LT$T$GT$$GT$13with_capacity17h31a3bb75fe65f1d4E"(ptr dead_on_unwind noalias noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %_0, i64 noundef %capacity) unnamed_addr #1 {
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
  br i1 %0, label %bb3.i, label %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h650c0b6961d0f791E.exit", !prof !35

bb3.i:                                            ; preds = %start
  %err.1.i = load i64, ptr %2, align 8
; call alloc::raw_vec::handle_error
  tail call void @_ZN5alloc7raw_vec12handle_error17h3a8c375904e593b2E(i64 noundef %err.0.i, i64 %err.1.i) #25
  unreachable

"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h650c0b6961d0f791E.exit": ; preds = %start
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
define void @"_ZN5alloc5slice99_$LT$impl$u20$core..slice..sort..stable..BufGuard$LT$T$GT$$u20$for$u20$alloc..vec..Vec$LT$T$GT$$GT$13with_capacity17h6293cbdad6d0ff30E"(ptr dead_on_unwind noalias noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %_0, i64 noundef %capacity) unnamed_addr #1 {
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
  br i1 %0, label %bb3.i, label %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h650c0b6961d0f791E.exit", !prof !35

bb3.i:                                            ; preds = %start
  %err.1.i = load i64, ptr %2, align 8
; call alloc::raw_vec::handle_error
  tail call void @_ZN5alloc7raw_vec12handle_error17h3a8c375904e593b2E(i64 noundef %err.0.i, i64 %err.1.i) #25
  unreachable

"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h650c0b6961d0f791E.exit": ; preds = %start
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
define { ptr, i64 } @"_ZN5alloc5slice99_$LT$impl$u20$core..slice..sort..stable..BufGuard$LT$T$GT$$u20$for$u20$alloc..vec..Vec$LT$T$GT$$GT$19as_uninit_slice_mut17h4722b0bf4759c88bE"(ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) %self) unnamed_addr #10 {
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
define { ptr, i64 } @"_ZN5alloc5slice99_$LT$impl$u20$core..slice..sort..stable..BufGuard$LT$T$GT$$u20$for$u20$alloc..vec..Vec$LT$T$GT$$GT$19as_uninit_slice_mut17hd7ba9a704d10024dE"(ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) %self) unnamed_addr #10 {
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

; <alloc::vec::Vec<T,A> as core::ops::drop::Drop>::drop
; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define void @"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17ha6f1da85fee51f0cE"(ptr noalias noundef readnone align 8 captures(none) dereferenceable(24) %self) unnamed_addr #6 {
start:
  ret void
}

; <alloc::vec::Vec<T,A> as core::ops::drop::Drop>::drop
; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define void @"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hfe11e797bc746b9aE"(ptr noalias noundef readnone align 8 captures(none) dereferenceable(24) %self) unnamed_addr #6 {
start:
  ret void
}

; <alloc::raw_vec::RawVec<T,A> as core::ops::drop::Drop>::drop
; Function Attrs: nonlazybind uwtable
define void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h966c393b908b5057E"(ptr noalias noundef align 8 dereferenceable(16) %self) unnamed_addr #1 {
start:
; call alloc::raw_vec::RawVecInner<A>::deallocate
  tail call void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$10deallocate17h6ddf8733b0451bb9E"(ptr noalias noundef align 8 dereferenceable(16) %self, i64 noundef 4, i64 noundef 4)
  ret void
}

; <alloc::raw_vec::RawVec<T,A> as core::ops::drop::Drop>::drop
; Function Attrs: nonlazybind uwtable
define void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hb7ff5d666122ce93E"(ptr noalias noundef align 8 dereferenceable(16) %self) unnamed_addr #1 {
start:
; call alloc::raw_vec::RawVecInner<A>::deallocate
  tail call void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$10deallocate17h6ddf8733b0451bb9E"(ptr noalias noundef align 8 dereferenceable(16) %self, i64 noundef 4, i64 noundef 4)
  ret void
}

; <core::slice::sort::stable::merge::MergeState<T> as core::ops::drop::Drop>::drop
; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define void @"_ZN95_$LT$core..slice..sort..stable..merge..MergeState$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h8c9cf90529128850E"(ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) %self) unnamed_addr #9 {
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
define void @"_ZN95_$LT$core..slice..sort..stable..merge..MergeState$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hdb582f01993658c3E"(ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) %self) unnamed_addr #9 {
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
define void @"_ZN96_$LT$core..hint..select_unpredictable..DropOnPanic$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h12c158514a66e91eE"(ptr noalias noundef readnone align 8 captures(none) dereferenceable(8) %self) unnamed_addr #6 {
start:
  ret void
}

; <core::hint::select_unpredictable::DropOnPanic<T> as core::ops::drop::Drop>::drop
; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define void @"_ZN96_$LT$core..hint..select_unpredictable..DropOnPanic$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h4654ceeef6d095bcE"(ptr noalias noundef readnone align 8 captures(none) dereferenceable(8) %self) unnamed_addr #6 {
start:
  ret void
}

; <core::slice::sort::shared::smallsort::CopyOnDrop<T> as core::ops::drop::Drop>::drop
; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define void @"_ZN99_$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h39cb3a73019d0e90E"(ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) %self) unnamed_addr #9 {
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
define void @"_ZN99_$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h51027331dc75e514E"(ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) %self) unnamed_addr #9 {
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2549)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2552)
  %_3.i = load i32, ptr %a, align 4, !alias.scope !2549, !noalias !2552, !noundef !32
  %_4.i = load i32, ptr %b, align 4, !alias.scope !2552, !noalias !2549, !noundef !32
  %_0.i = tail call noundef range(i8 -1, 2) i8 @llvm.scmp.i8.i32(i32 %_3.i, i32 %_4.i)
  ret i8 %_0.i
}

; Function Attrs: nonlazybind uwtable
define noundef i32 @f_gold(ptr noalias noundef nonnull align 4 %arr.0, i64 noundef range(i64 0, 2305843009213693952) %arr.1, i32 noundef %n) unnamed_addr #1 personality ptr @rust_eh_personality {
start:
  %compare.i = alloca [0 x i8], align 1
  %is_less.i.i = alloca [8 x i8], align 8
  call void @llvm.lifetime.start.p0(i64 0, ptr nonnull %compare.i)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %is_less.i.i), !noalias !2554
  store ptr %compare.i, ptr %is_less.i.i, align 8, !noalias !2557
  %b.i.i = icmp samesign ult i64 %arr.1, 2
  br i1 %b.i.i, label %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by17h49c61478579fe639E.exit", label %bb7.i.i, !prof !2561

bb7.i.i:                                          ; preds = %start
  %b1.i.i = icmp samesign ult i64 %arr.1, 21
  br i1 %b1.i.i, label %bb9.i.i, label %bb10.i.i, !prof !2561

bb10.i.i:                                         ; preds = %bb7.i.i
; call core::slice::sort::stable::driftsort_main
  call void @_ZN4core5slice4sort6stable14driftsort_main17hd941c990cf943cf1E(ptr noalias noundef nonnull align 4 %arr.0, i64 noundef range(i64 0, 2305843009213693952) %arr.1, ptr noalias noundef align 8 dereferenceable(8) %is_less.i.i)
  br label %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by17h49c61478579fe639E.exit"

bb9.i.i:                                          ; preds = %bb7.i.i
; call core::slice::sort::shared::smallsort::insertion_sort_shift_left
  call void @_ZN4core5slice4sort6shared9smallsort25insertion_sort_shift_left17h9ff766c275f64972E(ptr noalias noundef nonnull align 4 %arr.0, i64 noundef range(i64 0, 2305843009213693952) %arr.1, i64 noundef 1, ptr noalias align 8 poison)
  br label %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by17h49c61478579fe639E.exit"

"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by17h49c61478579fe639E.exit": ; preds = %start, %bb10.i.i, %bb9.i.i
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %is_less.i.i), !noalias !2554
  call void @llvm.lifetime.end.p0(i64 0, ptr nonnull %compare.i)
  %_7 = add i32 %n, -1
  %_6 = sext i32 %_7 to i64
  %_0.i.i.i13.not = icmp eq i32 %_7, 0
  br i1 %_0.i.i.i13.not, label %bb7, label %bb6

bb6:                                              ; preds = %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by17h49c61478579fe639E.exit", %bb18
  %spec.select17 = phi i64 [ %spec.select, %bb18 ], [ 1, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by17h49c61478579fe639E.exit" ]
  %count.sroa.0.016 = phi i32 [ %count.sroa.0.1, %bb18 ], [ 0, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by17h49c61478579fe639E.exit" ]
  %iter.sroa.0.015 = phi i64 [ %spec.select17, %bb18 ], [ 0, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by17h49c61478579fe639E.exit" ]
  %_16 = icmp ult i64 %iter.sroa.0.015, %arr.1
  br i1 %_16, label %bb8, label %panic

bb7:                                              ; preds = %bb18, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by17h49c61478579fe639E.exit"
  %count.sroa.0.0.lcssa = phi i32 [ 0, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by17h49c61478579fe639E.exit" ], [ %count.sroa.0.1, %bb18 ]
  ret i32 %count.sroa.0.0.lcssa

bb8:                                              ; preds = %bb6
  %0 = getelementptr inbounds nuw float, ptr %arr.0, i64 %iter.sroa.0.015
  %_14 = load float, ptr %0, align 4, !noundef !32
  %_18 = add nuw nsw i64 %iter.sroa.0.015, 1
  %_19 = icmp ult i64 %_18, %arr.1
  br i1 %_19, label %bb9, label %panic1

panic:                                            ; preds = %bb6
; call core::panicking::panic_bounds_check
  call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef %iter.sroa.0.015, i64 noundef %arr.1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_c57df5a5e420aa3a935b0836c52d5722) #24
  unreachable

bb9:                                              ; preds = %bb8
  %1 = getelementptr inbounds nuw float, ptr %arr.0, i64 %_18
  %_17 = load float, ptr %1, align 4, !noundef !32
  %_13 = fcmp une float %_14, %_17
  %_22 = fadd float %_14, 1.000000e+00
  %_20 = fcmp une float %_17, %_22
  %or.cond = and i1 %_13, %_20
  br i1 %or.cond, label %bb15, label %bb18

panic1:                                           ; preds = %bb8
; call core::panicking::panic_bounds_check
  call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef %_18, i64 noundef %arr.1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_fdf0cf6cbeffe0b665e615036846c3c5) #24
  unreachable

bb18:                                             ; preds = %bb9, %bb15
  %count.sroa.0.1 = phi i32 [ %2, %bb15 ], [ %count.sroa.0.016, %bb9 ]
  %_0.i.i.i = icmp ult i64 %spec.select17, %_6
  %_0.i1.i.i = zext i1 %_0.i.i.i to i64
  %spec.select = add nuw i64 %spec.select17, %_0.i1.i.i
  br i1 %_0.i.i.i, label %bb6, label %bb7

bb15:                                             ; preds = %bb9
  %_26 = fsub float %_17, %_14
  %_25 = fadd float %_26, -1.000000e+00
  %_24 = call i32 @llvm.fptosi.sat.i32.f32(float %_25)
  %2 = add i32 %_24, %count.sroa.0.016
  br label %bb18
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
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %is_less.i.i), !noalias !2562
  store ptr %compare.i, ptr %is_less.i.i, align 8, !noalias !2565
  %b.i.i = icmp samesign ult i64 %arr.1, 2
  br i1 %b.i.i, label %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by17hb0220a00e5e99892E.exit", label %bb7.i.i, !prof !2561

bb7.i.i:                                          ; preds = %start
  %b1.i.i = icmp samesign ult i64 %arr.1, 21
  br i1 %b1.i.i, label %bb9.i.i, label %bb10.i.i, !prof !2561

bb10.i.i:                                         ; preds = %bb7.i.i
; call core::slice::sort::stable::driftsort_main
  call void @_ZN4core5slice4sort6stable14driftsort_main17h3dcbfe23b0e24ea2E(ptr noalias noundef nonnull align 4 %arr.0, i64 noundef range(i64 0, 2305843009213693952) %arr.1, ptr noalias noundef align 8 dereferenceable(8) %is_less.i.i)
  br label %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by17hb0220a00e5e99892E.exit"

bb9.i.i:                                          ; preds = %bb7.i.i
; call core::slice::sort::shared::smallsort::insertion_sort_shift_left
  call void @_ZN4core5slice4sort6shared9smallsort25insertion_sort_shift_left17h7a8aa2b5097a11dcE(ptr noalias noundef nonnull align 4 %arr.0, i64 noundef range(i64 0, 2305843009213693952) %arr.1, i64 noundef 1, ptr noalias align 8 poison)
  br label %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by17hb0220a00e5e99892E.exit"

"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by17hb0220a00e5e99892E.exit": ; preds = %start, %bb10.i.i, %bb9.i.i
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %is_less.i.i), !noalias !2562
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
!4 = distinct !{!4, !5, !"_ZN4core3ptr10swap_chunk17h5b608d1c464d0376E: %x"}
!5 = distinct !{!5, !"_ZN4core3ptr10swap_chunk17h5b608d1c464d0376E"}
!6 = !{!7}
!7 = distinct !{!7, !5, !"_ZN4core3ptr10swap_chunk17h5b608d1c464d0376E: %y"}
!8 = !{!9}
!9 = distinct !{!9, !5, !"_ZN4core3ptr10swap_chunk17h5b608d1c464d0376E: %x:It1"}
!10 = !{!11}
!11 = distinct !{!11, !5, !"_ZN4core3ptr10swap_chunk17h5b608d1c464d0376E: %y:It1"}
!12 = !{!13}
!13 = distinct !{!13, !14, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17ha080091ea5002393E: %a"}
!14 = distinct !{!14, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17ha080091ea5002393E"}
!15 = !{!16}
!16 = distinct !{!16, !14, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17ha080091ea5002393E: %b"}
!17 = !{!18}
!18 = distinct !{!18, !19, !"_ZN78ELEMENTS_TO_BE_ADDED_SO_THAT_ALL_ELEMENTS_OF_A_RANGE_ARE_PRESENT_IN_ARRAY_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h43094daefb7e4e03E: %a"}
!19 = distinct !{!19, !"_ZN78ELEMENTS_TO_BE_ADDED_SO_THAT_ALL_ELEMENTS_OF_A_RANGE_ARE_PRESENT_IN_ARRAY_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h43094daefb7e4e03E"}
!20 = !{!21}
!21 = distinct !{!21, !22, !"_ZN4core5slice4sort6shared5pivot7median317he379b955d68dac04E: %c"}
!22 = distinct !{!22, !"_ZN4core5slice4sort6shared5pivot7median317he379b955d68dac04E"}
!23 = !{!24}
!24 = distinct !{!24, !19, !"_ZN78ELEMENTS_TO_BE_ADDED_SO_THAT_ALL_ELEMENTS_OF_A_RANGE_ARE_PRESENT_IN_ARRAY_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h43094daefb7e4e03E: %b"}
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
!38 = distinct !{!38, !39, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17ha080091ea5002393E: %b"}
!39 = distinct !{!39, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17ha080091ea5002393E"}
!40 = !{!41}
!41 = distinct !{!41, !42, !"_ZN78ELEMENTS_TO_BE_ADDED_SO_THAT_ALL_ELEMENTS_OF_A_RANGE_ARE_PRESENT_IN_ARRAY_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h43094daefb7e4e03E: %b"}
!42 = distinct !{!42, !"_ZN78ELEMENTS_TO_BE_ADDED_SO_THAT_ALL_ELEMENTS_OF_A_RANGE_ARE_PRESENT_IN_ARRAY_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h43094daefb7e4e03E"}
!43 = !{!44, !41, !38}
!44 = distinct !{!44, !45, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$f32$GT$11partial_cmp17h51acfdb7fcc2b22aE: %other"}
!45 = distinct !{!45, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$f32$GT$11partial_cmp17h51acfdb7fcc2b22aE"}
!46 = !{!47, !48, !49}
!47 = distinct !{!47, !45, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$f32$GT$11partial_cmp17h51acfdb7fcc2b22aE: %self"}
!48 = distinct !{!48, !42, !"_ZN78ELEMENTS_TO_BE_ADDED_SO_THAT_ALL_ELEMENTS_OF_A_RANGE_ARE_PRESENT_IN_ARRAY_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h43094daefb7e4e03E: %a"}
!49 = distinct !{!49, !39, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17ha080091ea5002393E: %a"}
!50 = !{!48, !41, !49, !38}
!51 = !{!52, !54, !55, !57}
!52 = distinct !{!52, !53, !"_ZN78ELEMENTS_TO_BE_ADDED_SO_THAT_ALL_ELEMENTS_OF_A_RANGE_ARE_PRESENT_IN_ARRAY_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h43094daefb7e4e03E: %a"}
!53 = distinct !{!53, !"_ZN78ELEMENTS_TO_BE_ADDED_SO_THAT_ALL_ELEMENTS_OF_A_RANGE_ARE_PRESENT_IN_ARRAY_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h43094daefb7e4e03E"}
!54 = distinct !{!54, !53, !"_ZN78ELEMENTS_TO_BE_ADDED_SO_THAT_ALL_ELEMENTS_OF_A_RANGE_ARE_PRESENT_IN_ARRAY_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h43094daefb7e4e03E: %b"}
!55 = distinct !{!55, !56, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17ha080091ea5002393E: %a"}
!56 = distinct !{!56, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17ha080091ea5002393E"}
!57 = distinct !{!57, !56, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17ha080091ea5002393E: %b"}
!58 = !{!59}
!59 = distinct !{!59, !60, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17he4137d5308dd0d04E: %a"}
!60 = distinct !{!60, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17he4137d5308dd0d04E"}
!61 = !{!62}
!62 = distinct !{!62, !60, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17he4137d5308dd0d04E: %b"}
!63 = !{!64}
!64 = distinct !{!64, !65, !"_ZN4core3ops8function5FnMut8call_mut17h363a9eaade227cf9E: argument 0"}
!65 = distinct !{!65, !"_ZN4core3ops8function5FnMut8call_mut17h363a9eaade227cf9E"}
!66 = !{!67}
!67 = distinct !{!67, !68, !"_ZN4core5slice4sort6shared5pivot7median317h9a79a162f16dac2fE: %c"}
!68 = distinct !{!68, !"_ZN4core5slice4sort6shared5pivot7median317h9a79a162f16dac2fE"}
!69 = !{!70}
!70 = distinct !{!70, !65, !"_ZN4core3ops8function5FnMut8call_mut17h363a9eaade227cf9E: argument 1"}
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
!90 = distinct !{!90, !91, !"_ZN4core3ops8function5FnMut8call_mut17h363a9eaade227cf9E: argument 1"}
!91 = distinct !{!91, !"_ZN4core3ops8function5FnMut8call_mut17h363a9eaade227cf9E"}
!92 = distinct !{!92, !93, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17he4137d5308dd0d04E: %b"}
!93 = distinct !{!93, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17he4137d5308dd0d04E"}
!94 = !{!95, !96, !97, !98}
!95 = distinct !{!95, !87, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!96 = distinct !{!96, !89, !"cmpfunc: %a"}
!97 = distinct !{!97, !91, !"_ZN4core3ops8function5FnMut8call_mut17h363a9eaade227cf9E: argument 0"}
!98 = distinct !{!98, !93, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17he4137d5308dd0d04E: %a"}
!99 = !{!100}
!100 = distinct !{!100, !101, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17he4137d5308dd0d04E: %a"}
!101 = distinct !{!101, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17he4137d5308dd0d04E"}
!102 = !{!103}
!103 = distinct !{!103, !101, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17he4137d5308dd0d04E: %b"}
!104 = !{!105}
!105 = distinct !{!105, !106, !"_ZN4core3ops8function5FnMut8call_mut17h363a9eaade227cf9E: argument 0"}
!106 = distinct !{!106, !"_ZN4core3ops8function5FnMut8call_mut17h363a9eaade227cf9E"}
!107 = !{!108}
!108 = distinct !{!108, !106, !"_ZN4core3ops8function5FnMut8call_mut17h363a9eaade227cf9E: argument 1"}
!109 = !{!110}
!110 = distinct !{!110, !111, !"cmpfunc: %a"}
!111 = distinct !{!111, !"cmpfunc"}
!112 = !{!113}
!113 = distinct !{!113, !111, !"cmpfunc: %b"}
!114 = !{!115}
!115 = distinct !{!115, !116, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!116 = distinct !{!116, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!117 = !{!118}
!118 = distinct !{!118, !116, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!119 = !{!115, !110, !105, !100}
!120 = !{!118, !113, !108, !103}
!121 = !{!122, !124, !126, !128}
!122 = distinct !{!122, !123, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!123 = distinct !{!123, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!124 = distinct !{!124, !125, !"cmpfunc: %b"}
!125 = distinct !{!125, !"cmpfunc"}
!126 = distinct !{!126, !127, !"_ZN4core3ops8function5FnMut8call_mut17h363a9eaade227cf9E: argument 1"}
!127 = distinct !{!127, !"_ZN4core3ops8function5FnMut8call_mut17h363a9eaade227cf9E"}
!128 = distinct !{!128, !129, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17he4137d5308dd0d04E: %b"}
!129 = distinct !{!129, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17he4137d5308dd0d04E"}
!130 = !{!131, !132, !133, !134}
!131 = distinct !{!131, !123, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!132 = distinct !{!132, !125, !"cmpfunc: %a"}
!133 = distinct !{!133, !127, !"_ZN4core3ops8function5FnMut8call_mut17h363a9eaade227cf9E: argument 0"}
!134 = distinct !{!134, !129, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17he4137d5308dd0d04E: %a"}
!135 = !{!136, !138}
!136 = distinct !{!136, !137, !"_ZN99_$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h39cb3a73019d0e90E: %self"}
!137 = distinct !{!137, !"_ZN99_$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h39cb3a73019d0e90E"}
!138 = distinct !{!138, !139, !"_ZN4core3ptr80drop_in_place$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$i32$GT$$GT$17h2f6c310581a8af70E: %_1"}
!139 = distinct !{!139, !"_ZN4core3ptr80drop_in_place$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$i32$GT$$GT$17h2f6c310581a8af70E"}
!140 = !{!141}
!141 = distinct !{!141, !142, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17ha080091ea5002393E: %a"}
!142 = distinct !{!142, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17ha080091ea5002393E"}
!143 = !{!144}
!144 = distinct !{!144, !142, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17ha080091ea5002393E: %b"}
!145 = !{!146}
!146 = distinct !{!146, !147, !"_ZN78ELEMENTS_TO_BE_ADDED_SO_THAT_ALL_ELEMENTS_OF_A_RANGE_ARE_PRESENT_IN_ARRAY_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h43094daefb7e4e03E: %a"}
!147 = distinct !{!147, !"_ZN78ELEMENTS_TO_BE_ADDED_SO_THAT_ALL_ELEMENTS_OF_A_RANGE_ARE_PRESENT_IN_ARRAY_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h43094daefb7e4e03E"}
!148 = !{!149}
!149 = distinct !{!149, !147, !"_ZN78ELEMENTS_TO_BE_ADDED_SO_THAT_ALL_ELEMENTS_OF_A_RANGE_ARE_PRESENT_IN_ARRAY_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h43094daefb7e4e03E: %b"}
!150 = !{!151}
!151 = distinct !{!151, !152, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$f32$GT$11partial_cmp17h51acfdb7fcc2b22aE: %self"}
!152 = distinct !{!152, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$f32$GT$11partial_cmp17h51acfdb7fcc2b22aE"}
!153 = !{!154}
!154 = distinct !{!154, !152, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$f32$GT$11partial_cmp17h51acfdb7fcc2b22aE: %other"}
!155 = !{!151, !146, !141}
!156 = !{!154, !149, !144}
!157 = !{!146, !149, !141, !144}
!158 = !{!159, !161, !163}
!159 = distinct !{!159, !160, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$f32$GT$11partial_cmp17h51acfdb7fcc2b22aE: %other"}
!160 = distinct !{!160, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$f32$GT$11partial_cmp17h51acfdb7fcc2b22aE"}
!161 = distinct !{!161, !162, !"_ZN78ELEMENTS_TO_BE_ADDED_SO_THAT_ALL_ELEMENTS_OF_A_RANGE_ARE_PRESENT_IN_ARRAY_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h43094daefb7e4e03E: %b"}
!162 = distinct !{!162, !"_ZN78ELEMENTS_TO_BE_ADDED_SO_THAT_ALL_ELEMENTS_OF_A_RANGE_ARE_PRESENT_IN_ARRAY_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h43094daefb7e4e03E"}
!163 = distinct !{!163, !164, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17ha080091ea5002393E: %b"}
!164 = distinct !{!164, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17ha080091ea5002393E"}
!165 = !{!166, !167, !168}
!166 = distinct !{!166, !160, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$f32$GT$11partial_cmp17h51acfdb7fcc2b22aE: %self"}
!167 = distinct !{!167, !162, !"_ZN78ELEMENTS_TO_BE_ADDED_SO_THAT_ALL_ELEMENTS_OF_A_RANGE_ARE_PRESENT_IN_ARRAY_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h43094daefb7e4e03E: %a"}
!168 = distinct !{!168, !164, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17ha080091ea5002393E: %a"}
!169 = !{!170, !172}
!170 = distinct !{!170, !171, !"_ZN99_$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h51027331dc75e514E: %self"}
!171 = distinct !{!171, !"_ZN99_$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h51027331dc75e514E"}
!172 = distinct !{!172, !173, !"_ZN4core3ptr80drop_in_place$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$f32$GT$$GT$17hea77ec8e27d8eea9E: %_1"}
!173 = distinct !{!173, !"_ZN4core3ptr80drop_in_place$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$f32$GT$$GT$17hea77ec8e27d8eea9E"}
!174 = !{!175, !177}
!175 = distinct !{!175, !176, !"_ZN99_$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h51027331dc75e514E: %self"}
!176 = distinct !{!176, !"_ZN99_$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h51027331dc75e514E"}
!177 = distinct !{!177, !178, !"_ZN4core3ptr80drop_in_place$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$f32$GT$$GT$17hea77ec8e27d8eea9E: %_1"}
!178 = distinct !{!178, !"_ZN4core3ptr80drop_in_place$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$f32$GT$$GT$17hea77ec8e27d8eea9E"}
!179 = !{!180}
!180 = distinct !{!180, !181, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17ha080091ea5002393E: %a"}
!181 = distinct !{!181, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17ha080091ea5002393E"}
!182 = !{!183}
!183 = distinct !{!183, !181, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17ha080091ea5002393E: %b"}
!184 = !{!185}
!185 = distinct !{!185, !186, !"_ZN78ELEMENTS_TO_BE_ADDED_SO_THAT_ALL_ELEMENTS_OF_A_RANGE_ARE_PRESENT_IN_ARRAY_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h43094daefb7e4e03E: %a"}
!186 = distinct !{!186, !"_ZN78ELEMENTS_TO_BE_ADDED_SO_THAT_ALL_ELEMENTS_OF_A_RANGE_ARE_PRESENT_IN_ARRAY_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h43094daefb7e4e03E"}
!187 = !{!188}
!188 = distinct !{!188, !186, !"_ZN78ELEMENTS_TO_BE_ADDED_SO_THAT_ALL_ELEMENTS_OF_A_RANGE_ARE_PRESENT_IN_ARRAY_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h43094daefb7e4e03E: %b"}
!189 = !{!190}
!190 = distinct !{!190, !191, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$f32$GT$11partial_cmp17h51acfdb7fcc2b22aE: %self"}
!191 = distinct !{!191, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$f32$GT$11partial_cmp17h51acfdb7fcc2b22aE"}
!192 = !{!193}
!193 = distinct !{!193, !191, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$f32$GT$11partial_cmp17h51acfdb7fcc2b22aE: %other"}
!194 = !{!190, !185, !180}
!195 = !{!193, !188, !183}
!196 = !{!185, !188, !180, !183}
!197 = !{!198}
!198 = distinct !{!198, !199, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17ha080091ea5002393E: %a"}
!199 = distinct !{!199, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17ha080091ea5002393E"}
!200 = !{!201}
!201 = distinct !{!201, !199, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17ha080091ea5002393E: %b"}
!202 = !{!203}
!203 = distinct !{!203, !204, !"_ZN78ELEMENTS_TO_BE_ADDED_SO_THAT_ALL_ELEMENTS_OF_A_RANGE_ARE_PRESENT_IN_ARRAY_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h43094daefb7e4e03E: %a"}
!204 = distinct !{!204, !"_ZN78ELEMENTS_TO_BE_ADDED_SO_THAT_ALL_ELEMENTS_OF_A_RANGE_ARE_PRESENT_IN_ARRAY_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h43094daefb7e4e03E"}
!205 = !{!206}
!206 = distinct !{!206, !204, !"_ZN78ELEMENTS_TO_BE_ADDED_SO_THAT_ALL_ELEMENTS_OF_A_RANGE_ARE_PRESENT_IN_ARRAY_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h43094daefb7e4e03E: %b"}
!207 = !{!208}
!208 = distinct !{!208, !209, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$f32$GT$11partial_cmp17h51acfdb7fcc2b22aE: %self"}
!209 = distinct !{!209, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$f32$GT$11partial_cmp17h51acfdb7fcc2b22aE"}
!210 = !{!211}
!211 = distinct !{!211, !209, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$f32$GT$11partial_cmp17h51acfdb7fcc2b22aE: %other"}
!212 = !{!208, !203, !198}
!213 = !{!211, !206, !201}
!214 = !{!203, !206, !198, !201}
!215 = !{!216}
!216 = distinct !{!216, !217, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17ha080091ea5002393E: %a"}
!217 = distinct !{!217, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17ha080091ea5002393E"}
!218 = !{!219}
!219 = distinct !{!219, !217, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17ha080091ea5002393E: %b"}
!220 = !{!221}
!221 = distinct !{!221, !222, !"_ZN78ELEMENTS_TO_BE_ADDED_SO_THAT_ALL_ELEMENTS_OF_A_RANGE_ARE_PRESENT_IN_ARRAY_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h43094daefb7e4e03E: %a"}
!222 = distinct !{!222, !"_ZN78ELEMENTS_TO_BE_ADDED_SO_THAT_ALL_ELEMENTS_OF_A_RANGE_ARE_PRESENT_IN_ARRAY_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h43094daefb7e4e03E"}
!223 = !{!224}
!224 = distinct !{!224, !222, !"_ZN78ELEMENTS_TO_BE_ADDED_SO_THAT_ALL_ELEMENTS_OF_A_RANGE_ARE_PRESENT_IN_ARRAY_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h43094daefb7e4e03E: %b"}
!225 = !{!226}
!226 = distinct !{!226, !227, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$f32$GT$11partial_cmp17h51acfdb7fcc2b22aE: %self"}
!227 = distinct !{!227, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$f32$GT$11partial_cmp17h51acfdb7fcc2b22aE"}
!228 = !{!229}
!229 = distinct !{!229, !227, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$f32$GT$11partial_cmp17h51acfdb7fcc2b22aE: %other"}
!230 = !{!226, !221, !216}
!231 = !{!229, !224, !219}
!232 = !{!221, !224, !216, !219}
!233 = !{!234}
!234 = distinct !{!234, !235, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17ha080091ea5002393E: %a"}
!235 = distinct !{!235, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17ha080091ea5002393E"}
!236 = !{!237}
!237 = distinct !{!237, !235, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17ha080091ea5002393E: %b"}
!238 = !{!239}
!239 = distinct !{!239, !240, !"_ZN78ELEMENTS_TO_BE_ADDED_SO_THAT_ALL_ELEMENTS_OF_A_RANGE_ARE_PRESENT_IN_ARRAY_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h43094daefb7e4e03E: %a"}
!240 = distinct !{!240, !"_ZN78ELEMENTS_TO_BE_ADDED_SO_THAT_ALL_ELEMENTS_OF_A_RANGE_ARE_PRESENT_IN_ARRAY_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h43094daefb7e4e03E"}
!241 = !{!242}
!242 = distinct !{!242, !240, !"_ZN78ELEMENTS_TO_BE_ADDED_SO_THAT_ALL_ELEMENTS_OF_A_RANGE_ARE_PRESENT_IN_ARRAY_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h43094daefb7e4e03E: %b"}
!243 = !{!244}
!244 = distinct !{!244, !245, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$f32$GT$11partial_cmp17h51acfdb7fcc2b22aE: %self"}
!245 = distinct !{!245, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$f32$GT$11partial_cmp17h51acfdb7fcc2b22aE"}
!246 = !{!247}
!247 = distinct !{!247, !245, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$f32$GT$11partial_cmp17h51acfdb7fcc2b22aE: %other"}
!248 = !{!244, !239, !234}
!249 = !{!247, !242, !237}
!250 = !{!239, !242, !234, !237}
!251 = !{!252}
!252 = distinct !{!252, !253, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17ha080091ea5002393E: %a"}
!253 = distinct !{!253, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17ha080091ea5002393E"}
!254 = !{!255}
!255 = distinct !{!255, !253, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17ha080091ea5002393E: %b"}
!256 = !{!257}
!257 = distinct !{!257, !258, !"_ZN78ELEMENTS_TO_BE_ADDED_SO_THAT_ALL_ELEMENTS_OF_A_RANGE_ARE_PRESENT_IN_ARRAY_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h43094daefb7e4e03E: %a"}
!258 = distinct !{!258, !"_ZN78ELEMENTS_TO_BE_ADDED_SO_THAT_ALL_ELEMENTS_OF_A_RANGE_ARE_PRESENT_IN_ARRAY_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h43094daefb7e4e03E"}
!259 = !{!260}
!260 = distinct !{!260, !258, !"_ZN78ELEMENTS_TO_BE_ADDED_SO_THAT_ALL_ELEMENTS_OF_A_RANGE_ARE_PRESENT_IN_ARRAY_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h43094daefb7e4e03E: %b"}
!261 = !{!262}
!262 = distinct !{!262, !263, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$f32$GT$11partial_cmp17h51acfdb7fcc2b22aE: %self"}
!263 = distinct !{!263, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$f32$GT$11partial_cmp17h51acfdb7fcc2b22aE"}
!264 = !{!265}
!265 = distinct !{!265, !263, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$f32$GT$11partial_cmp17h51acfdb7fcc2b22aE: %other"}
!266 = !{!262, !257, !252}
!267 = !{!265, !260, !255}
!268 = !{!257, !260, !252, !255}
!269 = !{!270}
!270 = distinct !{!270, !271, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17he4137d5308dd0d04E: %a"}
!271 = distinct !{!271, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17he4137d5308dd0d04E"}
!272 = !{!273}
!273 = distinct !{!273, !271, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17he4137d5308dd0d04E: %b"}
!274 = !{!275}
!275 = distinct !{!275, !276, !"_ZN4core3ops8function5FnMut8call_mut17h363a9eaade227cf9E: argument 0"}
!276 = distinct !{!276, !"_ZN4core3ops8function5FnMut8call_mut17h363a9eaade227cf9E"}
!277 = !{!278}
!278 = distinct !{!278, !276, !"_ZN4core3ops8function5FnMut8call_mut17h363a9eaade227cf9E: argument 1"}
!279 = !{!280}
!280 = distinct !{!280, !281, !"cmpfunc: %a"}
!281 = distinct !{!281, !"cmpfunc"}
!282 = !{!283}
!283 = distinct !{!283, !281, !"cmpfunc: %b"}
!284 = !{!285}
!285 = distinct !{!285, !286, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!286 = distinct !{!286, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!287 = !{!288}
!288 = distinct !{!288, !286, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!289 = !{!285, !280, !275, !270}
!290 = !{!288, !283, !278, !273}
!291 = !{!292}
!292 = distinct !{!292, !293, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17he4137d5308dd0d04E: %a"}
!293 = distinct !{!293, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17he4137d5308dd0d04E"}
!294 = !{!295}
!295 = distinct !{!295, !293, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17he4137d5308dd0d04E: %b"}
!296 = !{!297}
!297 = distinct !{!297, !298, !"_ZN4core3ops8function5FnMut8call_mut17h363a9eaade227cf9E: argument 0"}
!298 = distinct !{!298, !"_ZN4core3ops8function5FnMut8call_mut17h363a9eaade227cf9E"}
!299 = !{!300}
!300 = distinct !{!300, !298, !"_ZN4core3ops8function5FnMut8call_mut17h363a9eaade227cf9E: argument 1"}
!301 = !{!302}
!302 = distinct !{!302, !303, !"cmpfunc: %a"}
!303 = distinct !{!303, !"cmpfunc"}
!304 = !{!305}
!305 = distinct !{!305, !303, !"cmpfunc: %b"}
!306 = !{!307}
!307 = distinct !{!307, !308, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!308 = distinct !{!308, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!309 = !{!310}
!310 = distinct !{!310, !308, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!311 = !{!307, !302, !297, !292}
!312 = !{!310, !305, !300, !295}
!313 = !{!314}
!314 = distinct !{!314, !315, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17he4137d5308dd0d04E: %a"}
!315 = distinct !{!315, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17he4137d5308dd0d04E"}
!316 = !{!317}
!317 = distinct !{!317, !315, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17he4137d5308dd0d04E: %b"}
!318 = !{!319}
!319 = distinct !{!319, !320, !"_ZN4core3ops8function5FnMut8call_mut17h363a9eaade227cf9E: argument 0"}
!320 = distinct !{!320, !"_ZN4core3ops8function5FnMut8call_mut17h363a9eaade227cf9E"}
!321 = !{!322}
!322 = distinct !{!322, !320, !"_ZN4core3ops8function5FnMut8call_mut17h363a9eaade227cf9E: argument 1"}
!323 = !{!324}
!324 = distinct !{!324, !325, !"cmpfunc: %a"}
!325 = distinct !{!325, !"cmpfunc"}
!326 = !{!327}
!327 = distinct !{!327, !325, !"cmpfunc: %b"}
!328 = !{!329}
!329 = distinct !{!329, !330, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!330 = distinct !{!330, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!331 = !{!332}
!332 = distinct !{!332, !330, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!333 = !{!329, !324, !319, !314}
!334 = !{!332, !327, !322, !317}
!335 = !{!336}
!336 = distinct !{!336, !337, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17he4137d5308dd0d04E: %a"}
!337 = distinct !{!337, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17he4137d5308dd0d04E"}
!338 = !{!339}
!339 = distinct !{!339, !337, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17he4137d5308dd0d04E: %b"}
!340 = !{!341}
!341 = distinct !{!341, !342, !"_ZN4core3ops8function5FnMut8call_mut17h363a9eaade227cf9E: argument 0"}
!342 = distinct !{!342, !"_ZN4core3ops8function5FnMut8call_mut17h363a9eaade227cf9E"}
!343 = !{!344}
!344 = distinct !{!344, !342, !"_ZN4core3ops8function5FnMut8call_mut17h363a9eaade227cf9E: argument 1"}
!345 = !{!346}
!346 = distinct !{!346, !347, !"cmpfunc: %a"}
!347 = distinct !{!347, !"cmpfunc"}
!348 = !{!349}
!349 = distinct !{!349, !347, !"cmpfunc: %b"}
!350 = !{!351}
!351 = distinct !{!351, !352, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!352 = distinct !{!352, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!353 = !{!354}
!354 = distinct !{!354, !352, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!355 = !{!351, !346, !341, !336}
!356 = !{!354, !349, !344, !339}
!357 = !{!358}
!358 = distinct !{!358, !359, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17he4137d5308dd0d04E: %a"}
!359 = distinct !{!359, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17he4137d5308dd0d04E"}
!360 = !{!361}
!361 = distinct !{!361, !359, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17he4137d5308dd0d04E: %b"}
!362 = !{!363}
!363 = distinct !{!363, !364, !"_ZN4core3ops8function5FnMut8call_mut17h363a9eaade227cf9E: argument 0"}
!364 = distinct !{!364, !"_ZN4core3ops8function5FnMut8call_mut17h363a9eaade227cf9E"}
!365 = !{!366}
!366 = distinct !{!366, !364, !"_ZN4core3ops8function5FnMut8call_mut17h363a9eaade227cf9E: argument 1"}
!367 = !{!368}
!368 = distinct !{!368, !369, !"cmpfunc: %a"}
!369 = distinct !{!369, !"cmpfunc"}
!370 = !{!371}
!371 = distinct !{!371, !369, !"cmpfunc: %b"}
!372 = !{!373}
!373 = distinct !{!373, !374, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!374 = distinct !{!374, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!375 = !{!376}
!376 = distinct !{!376, !374, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!377 = !{!373, !368, !363, !358}
!378 = !{!376, !371, !366, !361}
!379 = !{!380}
!380 = distinct !{!380, !381, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17he4137d5308dd0d04E: %a"}
!381 = distinct !{!381, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17he4137d5308dd0d04E"}
!382 = !{!383}
!383 = distinct !{!383, !381, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17he4137d5308dd0d04E: %b"}
!384 = !{!385}
!385 = distinct !{!385, !386, !"_ZN4core3ops8function5FnMut8call_mut17h363a9eaade227cf9E: argument 0"}
!386 = distinct !{!386, !"_ZN4core3ops8function5FnMut8call_mut17h363a9eaade227cf9E"}
!387 = !{!388}
!388 = distinct !{!388, !386, !"_ZN4core3ops8function5FnMut8call_mut17h363a9eaade227cf9E: argument 1"}
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
!402 = distinct !{!402, !403, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17he4137d5308dd0d04E: %a"}
!403 = distinct !{!403, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17he4137d5308dd0d04E"}
!404 = !{!405}
!405 = distinct !{!405, !403, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17he4137d5308dd0d04E: %b"}
!406 = !{!407}
!407 = distinct !{!407, !408, !"_ZN4core3ops8function5FnMut8call_mut17h363a9eaade227cf9E: argument 0"}
!408 = distinct !{!408, !"_ZN4core3ops8function5FnMut8call_mut17h363a9eaade227cf9E"}
!409 = !{!410}
!410 = distinct !{!410, !408, !"_ZN4core3ops8function5FnMut8call_mut17h363a9eaade227cf9E: argument 1"}
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
!424 = distinct !{!424, !425, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17he4137d5308dd0d04E: %a"}
!425 = distinct !{!425, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17he4137d5308dd0d04E"}
!426 = !{!427}
!427 = distinct !{!427, !425, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17he4137d5308dd0d04E: %b"}
!428 = !{!429}
!429 = distinct !{!429, !430, !"_ZN4core3ops8function5FnMut8call_mut17h363a9eaade227cf9E: argument 0"}
!430 = distinct !{!430, !"_ZN4core3ops8function5FnMut8call_mut17h363a9eaade227cf9E"}
!431 = !{!432}
!432 = distinct !{!432, !430, !"_ZN4core3ops8function5FnMut8call_mut17h363a9eaade227cf9E: argument 1"}
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
!446 = distinct !{!446, !447, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17he4137d5308dd0d04E: %a"}
!447 = distinct !{!447, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17he4137d5308dd0d04E"}
!448 = !{!449}
!449 = distinct !{!449, !447, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17he4137d5308dd0d04E: %b"}
!450 = !{!451}
!451 = distinct !{!451, !452, !"_ZN4core3ops8function5FnMut8call_mut17h363a9eaade227cf9E: argument 0"}
!452 = distinct !{!452, !"_ZN4core3ops8function5FnMut8call_mut17h363a9eaade227cf9E"}
!453 = !{!454}
!454 = distinct !{!454, !452, !"_ZN4core3ops8function5FnMut8call_mut17h363a9eaade227cf9E: argument 1"}
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
!468 = distinct !{!468, !469, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17he4137d5308dd0d04E: %a"}
!469 = distinct !{!469, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17he4137d5308dd0d04E"}
!470 = !{!471}
!471 = distinct !{!471, !469, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17he4137d5308dd0d04E: %b"}
!472 = !{!473}
!473 = distinct !{!473, !474, !"_ZN4core3ops8function5FnMut8call_mut17h363a9eaade227cf9E: argument 0"}
!474 = distinct !{!474, !"_ZN4core3ops8function5FnMut8call_mut17h363a9eaade227cf9E"}
!475 = !{!476}
!476 = distinct !{!476, !474, !"_ZN4core3ops8function5FnMut8call_mut17h363a9eaade227cf9E: argument 1"}
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
!490 = distinct !{!490, !491, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17he4137d5308dd0d04E: %a"}
!491 = distinct !{!491, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17he4137d5308dd0d04E"}
!492 = !{!493}
!493 = distinct !{!493, !491, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17he4137d5308dd0d04E: %b"}
!494 = !{!495}
!495 = distinct !{!495, !496, !"_ZN4core3ops8function5FnMut8call_mut17h363a9eaade227cf9E: argument 0"}
!496 = distinct !{!496, !"_ZN4core3ops8function5FnMut8call_mut17h363a9eaade227cf9E"}
!497 = !{!498}
!498 = distinct !{!498, !496, !"_ZN4core3ops8function5FnMut8call_mut17h363a9eaade227cf9E: argument 1"}
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
!512 = distinct !{!512, !513, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17he4137d5308dd0d04E: %a"}
!513 = distinct !{!513, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17he4137d5308dd0d04E"}
!514 = !{!515}
!515 = distinct !{!515, !513, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17he4137d5308dd0d04E: %b"}
!516 = !{!517}
!517 = distinct !{!517, !518, !"_ZN4core3ops8function5FnMut8call_mut17h363a9eaade227cf9E: argument 0"}
!518 = distinct !{!518, !"_ZN4core3ops8function5FnMut8call_mut17h363a9eaade227cf9E"}
!519 = !{!520}
!520 = distinct !{!520, !518, !"_ZN4core3ops8function5FnMut8call_mut17h363a9eaade227cf9E: argument 1"}
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
!534 = distinct !{!534, !535, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17he4137d5308dd0d04E: %a"}
!535 = distinct !{!535, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17he4137d5308dd0d04E"}
!536 = !{!537}
!537 = distinct !{!537, !535, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17he4137d5308dd0d04E: %b"}
!538 = !{!539}
!539 = distinct !{!539, !540, !"_ZN4core3ops8function5FnMut8call_mut17h363a9eaade227cf9E: argument 0"}
!540 = distinct !{!540, !"_ZN4core3ops8function5FnMut8call_mut17h363a9eaade227cf9E"}
!541 = !{!542}
!542 = distinct !{!542, !540, !"_ZN4core3ops8function5FnMut8call_mut17h363a9eaade227cf9E: argument 1"}
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
!556 = distinct !{!556, !557, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17he4137d5308dd0d04E: %a"}
!557 = distinct !{!557, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17he4137d5308dd0d04E"}
!558 = !{!559}
!559 = distinct !{!559, !557, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17he4137d5308dd0d04E: %b"}
!560 = !{!561}
!561 = distinct !{!561, !562, !"_ZN4core3ops8function5FnMut8call_mut17h363a9eaade227cf9E: argument 0"}
!562 = distinct !{!562, !"_ZN4core3ops8function5FnMut8call_mut17h363a9eaade227cf9E"}
!563 = !{!564}
!564 = distinct !{!564, !562, !"_ZN4core3ops8function5FnMut8call_mut17h363a9eaade227cf9E: argument 1"}
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
!578 = distinct !{!578, !579, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17he4137d5308dd0d04E: %a"}
!579 = distinct !{!579, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17he4137d5308dd0d04E"}
!580 = !{!581}
!581 = distinct !{!581, !579, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17he4137d5308dd0d04E: %b"}
!582 = !{!583}
!583 = distinct !{!583, !584, !"_ZN4core3ops8function5FnMut8call_mut17h363a9eaade227cf9E: argument 0"}
!584 = distinct !{!584, !"_ZN4core3ops8function5FnMut8call_mut17h363a9eaade227cf9E"}
!585 = !{!586}
!586 = distinct !{!586, !584, !"_ZN4core3ops8function5FnMut8call_mut17h363a9eaade227cf9E: argument 1"}
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
!600 = distinct !{!600, !601, !"_ZN4core5slice4sort6shared9smallsort19bidirectional_merge17hdea9b47e74e374a8E: %v.0"}
!601 = distinct !{!601, !"_ZN4core5slice4sort6shared9smallsort19bidirectional_merge17hdea9b47e74e374a8E"}
!602 = !{!603}
!603 = distinct !{!603, !604, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17he4137d5308dd0d04E: %a"}
!604 = distinct !{!604, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17he4137d5308dd0d04E"}
!605 = !{!606}
!606 = distinct !{!606, !604, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17he4137d5308dd0d04E: %b"}
!607 = !{!608}
!608 = distinct !{!608, !609, !"_ZN4core3ops8function5FnMut8call_mut17h363a9eaade227cf9E: argument 0"}
!609 = distinct !{!609, !"_ZN4core3ops8function5FnMut8call_mut17h363a9eaade227cf9E"}
!610 = !{!611}
!611 = distinct !{!611, !612, !"_ZN4core5slice4sort6shared9smallsort8merge_up17h9e0b59dd5e686f18E: %_0"}
!612 = distinct !{!612, !"_ZN4core5slice4sort6shared9smallsort8merge_up17h9e0b59dd5e686f18E"}
!613 = !{!614}
!614 = distinct !{!614, !609, !"_ZN4core3ops8function5FnMut8call_mut17h363a9eaade227cf9E: argument 1"}
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
!630 = distinct !{!630, !612, !"_ZN4core5slice4sort6shared9smallsort8merge_up17h9e0b59dd5e686f18E: %is_less"}
!631 = !{!632}
!632 = distinct !{!632, !633, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17he4137d5308dd0d04E: %a"}
!633 = distinct !{!633, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17he4137d5308dd0d04E"}
!634 = !{!635}
!635 = distinct !{!635, !633, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17he4137d5308dd0d04E: %b"}
!636 = !{!637}
!637 = distinct !{!637, !638, !"_ZN4core3ops8function5FnMut8call_mut17h363a9eaade227cf9E: argument 0"}
!638 = distinct !{!638, !"_ZN4core3ops8function5FnMut8call_mut17h363a9eaade227cf9E"}
!639 = !{!640}
!640 = distinct !{!640, !641, !"_ZN4core5slice4sort6shared9smallsort10merge_down17h1409e1622974ef5fE: %_0"}
!641 = distinct !{!641, !"_ZN4core5slice4sort6shared9smallsort10merge_down17h1409e1622974ef5fE"}
!642 = !{!643}
!643 = distinct !{!643, !638, !"_ZN4core3ops8function5FnMut8call_mut17h363a9eaade227cf9E: argument 1"}
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
!659 = distinct !{!659, !641, !"_ZN4core5slice4sort6shared9smallsort10merge_down17h1409e1622974ef5fE: %is_less"}
!660 = !{!661}
!661 = distinct !{!661, !604, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17he4137d5308dd0d04E: %a:It1"}
!662 = !{!663}
!663 = distinct !{!663, !604, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17he4137d5308dd0d04E: %b:It1"}
!664 = !{!665}
!665 = distinct !{!665, !609, !"_ZN4core3ops8function5FnMut8call_mut17h363a9eaade227cf9E: argument 0:It1"}
!666 = !{!667}
!667 = distinct !{!667, !609, !"_ZN4core3ops8function5FnMut8call_mut17h363a9eaade227cf9E: argument 1:It1"}
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
!681 = distinct !{!681, !633, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17he4137d5308dd0d04E: %a:It1"}
!682 = !{!683}
!683 = distinct !{!683, !633, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17he4137d5308dd0d04E: %b:It1"}
!684 = !{!685}
!685 = distinct !{!685, !638, !"_ZN4core3ops8function5FnMut8call_mut17h363a9eaade227cf9E: argument 0:It1"}
!686 = !{!687}
!687 = distinct !{!687, !638, !"_ZN4core3ops8function5FnMut8call_mut17h363a9eaade227cf9E: argument 1:It1"}
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
!701 = distinct !{!701, !604, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17he4137d5308dd0d04E: %a:It2"}
!702 = !{!703}
!703 = distinct !{!703, !604, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17he4137d5308dd0d04E: %b:It2"}
!704 = !{!705}
!705 = distinct !{!705, !609, !"_ZN4core3ops8function5FnMut8call_mut17h363a9eaade227cf9E: argument 0:It2"}
!706 = !{!707}
!707 = distinct !{!707, !609, !"_ZN4core3ops8function5FnMut8call_mut17h363a9eaade227cf9E: argument 1:It2"}
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
!721 = distinct !{!721, !633, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17he4137d5308dd0d04E: %a:It2"}
!722 = !{!723}
!723 = distinct !{!723, !633, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17he4137d5308dd0d04E: %b:It2"}
!724 = !{!725}
!725 = distinct !{!725, !638, !"_ZN4core3ops8function5FnMut8call_mut17h363a9eaade227cf9E: argument 0:It2"}
!726 = !{!727}
!727 = distinct !{!727, !638, !"_ZN4core3ops8function5FnMut8call_mut17h363a9eaade227cf9E: argument 1:It2"}
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
!741 = distinct !{!741, !604, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17he4137d5308dd0d04E: %a:It3"}
!742 = !{!743}
!743 = distinct !{!743, !604, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17he4137d5308dd0d04E: %b:It3"}
!744 = !{!745}
!745 = distinct !{!745, !609, !"_ZN4core3ops8function5FnMut8call_mut17h363a9eaade227cf9E: argument 0:It3"}
!746 = !{!747}
!747 = distinct !{!747, !609, !"_ZN4core3ops8function5FnMut8call_mut17h363a9eaade227cf9E: argument 1:It3"}
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
!761 = distinct !{!761, !633, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17he4137d5308dd0d04E: %a:It3"}
!762 = !{!763}
!763 = distinct !{!763, !633, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17he4137d5308dd0d04E: %b:It3"}
!764 = !{!765}
!765 = distinct !{!765, !638, !"_ZN4core3ops8function5FnMut8call_mut17h363a9eaade227cf9E: argument 0:It3"}
!766 = !{!767}
!767 = distinct !{!767, !638, !"_ZN4core3ops8function5FnMut8call_mut17h363a9eaade227cf9E: argument 1:It3"}
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
!782 = distinct !{!782, !783, !"_ZN4core5slice4sort6shared9smallsort19bidirectional_merge17ha0c0e7d74af75276E: %v.0"}
!783 = distinct !{!783, !"_ZN4core5slice4sort6shared9smallsort19bidirectional_merge17ha0c0e7d74af75276E"}
!784 = !{!785}
!785 = distinct !{!785, !786, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17ha080091ea5002393E: %a"}
!786 = distinct !{!786, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17ha080091ea5002393E"}
!787 = !{!788}
!788 = distinct !{!788, !786, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17ha080091ea5002393E: %b"}
!789 = !{!790}
!790 = distinct !{!790, !791, !"_ZN78ELEMENTS_TO_BE_ADDED_SO_THAT_ALL_ELEMENTS_OF_A_RANGE_ARE_PRESENT_IN_ARRAY_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h43094daefb7e4e03E: %a"}
!791 = distinct !{!791, !"_ZN78ELEMENTS_TO_BE_ADDED_SO_THAT_ALL_ELEMENTS_OF_A_RANGE_ARE_PRESENT_IN_ARRAY_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h43094daefb7e4e03E"}
!792 = !{!793}
!793 = distinct !{!793, !794, !"_ZN4core5slice4sort6shared9smallsort8merge_up17hf0decbaa60ab9bc8E: %_0"}
!794 = distinct !{!794, !"_ZN4core5slice4sort6shared9smallsort8merge_up17hf0decbaa60ab9bc8E"}
!795 = !{!796}
!796 = distinct !{!796, !791, !"_ZN78ELEMENTS_TO_BE_ADDED_SO_THAT_ALL_ELEMENTS_OF_A_RANGE_ARE_PRESENT_IN_ARRAY_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h43094daefb7e4e03E: %b"}
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
!808 = distinct !{!808, !794, !"_ZN4core5slice4sort6shared9smallsort8merge_up17hf0decbaa60ab9bc8E: %is_less"}
!809 = !{!793, !808, !782}
!810 = !{!811}
!811 = distinct !{!811, !812, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17ha080091ea5002393E: %a"}
!812 = distinct !{!812, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17ha080091ea5002393E"}
!813 = !{!814}
!814 = distinct !{!814, !812, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17ha080091ea5002393E: %b"}
!815 = !{!816}
!816 = distinct !{!816, !817, !"_ZN78ELEMENTS_TO_BE_ADDED_SO_THAT_ALL_ELEMENTS_OF_A_RANGE_ARE_PRESENT_IN_ARRAY_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h43094daefb7e4e03E: %a"}
!817 = distinct !{!817, !"_ZN78ELEMENTS_TO_BE_ADDED_SO_THAT_ALL_ELEMENTS_OF_A_RANGE_ARE_PRESENT_IN_ARRAY_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h43094daefb7e4e03E"}
!818 = !{!819}
!819 = distinct !{!819, !820, !"_ZN4core5slice4sort6shared9smallsort10merge_down17h0cb493f98a08eb65E: %_0"}
!820 = distinct !{!820, !"_ZN4core5slice4sort6shared9smallsort10merge_down17h0cb493f98a08eb65E"}
!821 = !{!822}
!822 = distinct !{!822, !817, !"_ZN78ELEMENTS_TO_BE_ADDED_SO_THAT_ALL_ELEMENTS_OF_A_RANGE_ARE_PRESENT_IN_ARRAY_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h43094daefb7e4e03E: %b"}
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
!834 = distinct !{!834, !820, !"_ZN4core5slice4sort6shared9smallsort10merge_down17h0cb493f98a08eb65E: %is_less"}
!835 = !{!819, !834, !782}
!836 = !{!837}
!837 = distinct !{!837, !786, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17ha080091ea5002393E: %a:It1"}
!838 = !{!839}
!839 = distinct !{!839, !786, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17ha080091ea5002393E: %b:It1"}
!840 = !{!841}
!841 = distinct !{!841, !791, !"_ZN78ELEMENTS_TO_BE_ADDED_SO_THAT_ALL_ELEMENTS_OF_A_RANGE_ARE_PRESENT_IN_ARRAY_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h43094daefb7e4e03E: %a:It1"}
!842 = !{!843}
!843 = distinct !{!843, !791, !"_ZN78ELEMENTS_TO_BE_ADDED_SO_THAT_ALL_ELEMENTS_OF_A_RANGE_ARE_PRESENT_IN_ARRAY_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h43094daefb7e4e03E: %b:It1"}
!844 = !{!845}
!845 = distinct !{!845, !799, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$f32$GT$11partial_cmp17h51acfdb7fcc2b22aE: %self:It1"}
!846 = !{!847}
!847 = distinct !{!847, !799, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$f32$GT$11partial_cmp17h51acfdb7fcc2b22aE: %other:It1"}
!848 = !{!845, !841, !837, !782}
!849 = !{!847, !843, !839, !793}
!850 = !{!847, !843, !839, !782}
!851 = !{!845, !841, !837, !793}
!852 = !{!853}
!853 = distinct !{!853, !812, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17ha080091ea5002393E: %a:It1"}
!854 = !{!855}
!855 = distinct !{!855, !812, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17ha080091ea5002393E: %b:It1"}
!856 = !{!857}
!857 = distinct !{!857, !817, !"_ZN78ELEMENTS_TO_BE_ADDED_SO_THAT_ALL_ELEMENTS_OF_A_RANGE_ARE_PRESENT_IN_ARRAY_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h43094daefb7e4e03E: %a:It1"}
!858 = !{!859}
!859 = distinct !{!859, !817, !"_ZN78ELEMENTS_TO_BE_ADDED_SO_THAT_ALL_ELEMENTS_OF_A_RANGE_ARE_PRESENT_IN_ARRAY_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h43094daefb7e4e03E: %b:It1"}
!860 = !{!861}
!861 = distinct !{!861, !825, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$f32$GT$11partial_cmp17h51acfdb7fcc2b22aE: %self:It1"}
!862 = !{!863}
!863 = distinct !{!863, !825, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$f32$GT$11partial_cmp17h51acfdb7fcc2b22aE: %other:It1"}
!864 = !{!861, !857, !853, !782}
!865 = !{!863, !859, !855, !819}
!866 = !{!863, !859, !855, !782}
!867 = !{!861, !857, !853, !819}
!868 = !{!869}
!869 = distinct !{!869, !786, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17ha080091ea5002393E: %a:It2"}
!870 = !{!871}
!871 = distinct !{!871, !786, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17ha080091ea5002393E: %b:It2"}
!872 = !{!873}
!873 = distinct !{!873, !791, !"_ZN78ELEMENTS_TO_BE_ADDED_SO_THAT_ALL_ELEMENTS_OF_A_RANGE_ARE_PRESENT_IN_ARRAY_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h43094daefb7e4e03E: %a:It2"}
!874 = !{!875}
!875 = distinct !{!875, !791, !"_ZN78ELEMENTS_TO_BE_ADDED_SO_THAT_ALL_ELEMENTS_OF_A_RANGE_ARE_PRESENT_IN_ARRAY_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h43094daefb7e4e03E: %b:It2"}
!876 = !{!877}
!877 = distinct !{!877, !799, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$f32$GT$11partial_cmp17h51acfdb7fcc2b22aE: %self:It2"}
!878 = !{!879}
!879 = distinct !{!879, !799, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$f32$GT$11partial_cmp17h51acfdb7fcc2b22aE: %other:It2"}
!880 = !{!877, !873, !869, !782}
!881 = !{!879, !875, !871, !793}
!882 = !{!879, !875, !871, !782}
!883 = !{!877, !873, !869, !793}
!884 = !{!885}
!885 = distinct !{!885, !812, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17ha080091ea5002393E: %a:It2"}
!886 = !{!887}
!887 = distinct !{!887, !812, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17ha080091ea5002393E: %b:It2"}
!888 = !{!889}
!889 = distinct !{!889, !817, !"_ZN78ELEMENTS_TO_BE_ADDED_SO_THAT_ALL_ELEMENTS_OF_A_RANGE_ARE_PRESENT_IN_ARRAY_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h43094daefb7e4e03E: %a:It2"}
!890 = !{!891}
!891 = distinct !{!891, !817, !"_ZN78ELEMENTS_TO_BE_ADDED_SO_THAT_ALL_ELEMENTS_OF_A_RANGE_ARE_PRESENT_IN_ARRAY_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h43094daefb7e4e03E: %b:It2"}
!892 = !{!893}
!893 = distinct !{!893, !825, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$f32$GT$11partial_cmp17h51acfdb7fcc2b22aE: %self:It2"}
!894 = !{!895}
!895 = distinct !{!895, !825, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$f32$GT$11partial_cmp17h51acfdb7fcc2b22aE: %other:It2"}
!896 = !{!893, !889, !885, !782}
!897 = !{!895, !891, !887, !819}
!898 = !{!895, !891, !887, !782}
!899 = !{!893, !889, !885, !819}
!900 = !{!901}
!901 = distinct !{!901, !786, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17ha080091ea5002393E: %a:It3"}
!902 = !{!903}
!903 = distinct !{!903, !786, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17ha080091ea5002393E: %b:It3"}
!904 = !{!905}
!905 = distinct !{!905, !791, !"_ZN78ELEMENTS_TO_BE_ADDED_SO_THAT_ALL_ELEMENTS_OF_A_RANGE_ARE_PRESENT_IN_ARRAY_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h43094daefb7e4e03E: %a:It3"}
!906 = !{!907}
!907 = distinct !{!907, !791, !"_ZN78ELEMENTS_TO_BE_ADDED_SO_THAT_ALL_ELEMENTS_OF_A_RANGE_ARE_PRESENT_IN_ARRAY_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h43094daefb7e4e03E: %b:It3"}
!908 = !{!909}
!909 = distinct !{!909, !799, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$f32$GT$11partial_cmp17h51acfdb7fcc2b22aE: %self:It3"}
!910 = !{!911}
!911 = distinct !{!911, !799, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$f32$GT$11partial_cmp17h51acfdb7fcc2b22aE: %other:It3"}
!912 = !{!909, !905, !901, !782}
!913 = !{!911, !907, !903, !793}
!914 = !{!911, !907, !903, !782}
!915 = !{!909, !905, !901, !793}
!916 = !{!917}
!917 = distinct !{!917, !812, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17ha080091ea5002393E: %a:It3"}
!918 = !{!919}
!919 = distinct !{!919, !812, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17ha080091ea5002393E: %b:It3"}
!920 = !{!921}
!921 = distinct !{!921, !817, !"_ZN78ELEMENTS_TO_BE_ADDED_SO_THAT_ALL_ELEMENTS_OF_A_RANGE_ARE_PRESENT_IN_ARRAY_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h43094daefb7e4e03E: %a:It3"}
!922 = !{!923}
!923 = distinct !{!923, !817, !"_ZN78ELEMENTS_TO_BE_ADDED_SO_THAT_ALL_ELEMENTS_OF_A_RANGE_ARE_PRESENT_IN_ARRAY_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h43094daefb7e4e03E: %b:It3"}
!924 = !{!925}
!925 = distinct !{!925, !825, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$f32$GT$11partial_cmp17h51acfdb7fcc2b22aE: %self:It3"}
!926 = !{!927}
!927 = distinct !{!927, !825, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$f32$GT$11partial_cmp17h51acfdb7fcc2b22aE: %other:It3"}
!928 = !{!925, !921, !917, !782}
!929 = !{!927, !923, !919, !819}
!930 = !{!927, !923, !919, !782}
!931 = !{!925, !921, !917, !819}
!932 = !{!933}
!933 = distinct !{!933, !934, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17ha080091ea5002393E: %a"}
!934 = distinct !{!934, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17ha080091ea5002393E"}
!935 = !{!936}
!936 = distinct !{!936, !934, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17ha080091ea5002393E: %b"}
!937 = !{!938}
!938 = distinct !{!938, !939, !"_ZN78ELEMENTS_TO_BE_ADDED_SO_THAT_ALL_ELEMENTS_OF_A_RANGE_ARE_PRESENT_IN_ARRAY_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h43094daefb7e4e03E: %a"}
!939 = distinct !{!939, !"_ZN78ELEMENTS_TO_BE_ADDED_SO_THAT_ALL_ELEMENTS_OF_A_RANGE_ARE_PRESENT_IN_ARRAY_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h43094daefb7e4e03E"}
!940 = !{!941}
!941 = distinct !{!941, !942, !"_ZN4core5slice4sort6shared9smallsort8merge_up17hf0decbaa60ab9bc8E: %_0"}
!942 = distinct !{!942, !"_ZN4core5slice4sort6shared9smallsort8merge_up17hf0decbaa60ab9bc8E"}
!943 = !{!944}
!944 = distinct !{!944, !939, !"_ZN78ELEMENTS_TO_BE_ADDED_SO_THAT_ALL_ELEMENTS_OF_A_RANGE_ARE_PRESENT_IN_ARRAY_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h43094daefb7e4e03E: %b"}
!945 = !{!946}
!946 = distinct !{!946, !947, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$f32$GT$11partial_cmp17h51acfdb7fcc2b22aE: %self"}
!947 = distinct !{!947, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$f32$GT$11partial_cmp17h51acfdb7fcc2b22aE"}
!948 = !{!949}
!949 = distinct !{!949, !947, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$f32$GT$11partial_cmp17h51acfdb7fcc2b22aE: %other"}
!950 = !{!946, !938, !933}
!951 = !{!949, !944, !936, !941}
!952 = !{!949, !944, !936}
!953 = !{!946, !938, !933, !941}
!954 = !{!938, !944, !933, !936, !941}
!955 = !{!941, !956}
!956 = distinct !{!956, !942, !"_ZN4core5slice4sort6shared9smallsort8merge_up17hf0decbaa60ab9bc8E: %is_less"}
!957 = !{!958}
!958 = distinct !{!958, !959, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17ha080091ea5002393E: %a"}
!959 = distinct !{!959, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17ha080091ea5002393E"}
!960 = !{!961}
!961 = distinct !{!961, !959, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17ha080091ea5002393E: %b"}
!962 = !{!963}
!963 = distinct !{!963, !964, !"_ZN78ELEMENTS_TO_BE_ADDED_SO_THAT_ALL_ELEMENTS_OF_A_RANGE_ARE_PRESENT_IN_ARRAY_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h43094daefb7e4e03E: %a"}
!964 = distinct !{!964, !"_ZN78ELEMENTS_TO_BE_ADDED_SO_THAT_ALL_ELEMENTS_OF_A_RANGE_ARE_PRESENT_IN_ARRAY_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h43094daefb7e4e03E"}
!965 = !{!966}
!966 = distinct !{!966, !967, !"_ZN4core5slice4sort6shared9smallsort10merge_down17h0cb493f98a08eb65E: %_0"}
!967 = distinct !{!967, !"_ZN4core5slice4sort6shared9smallsort10merge_down17h0cb493f98a08eb65E"}
!968 = !{!969}
!969 = distinct !{!969, !964, !"_ZN78ELEMENTS_TO_BE_ADDED_SO_THAT_ALL_ELEMENTS_OF_A_RANGE_ARE_PRESENT_IN_ARRAY_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h43094daefb7e4e03E: %b"}
!970 = !{!971}
!971 = distinct !{!971, !972, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$f32$GT$11partial_cmp17h51acfdb7fcc2b22aE: %self"}
!972 = distinct !{!972, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$f32$GT$11partial_cmp17h51acfdb7fcc2b22aE"}
!973 = !{!974}
!974 = distinct !{!974, !972, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$f32$GT$11partial_cmp17h51acfdb7fcc2b22aE: %other"}
!975 = !{!971, !963, !958}
!976 = !{!974, !969, !961, !966}
!977 = !{!974, !969, !961}
!978 = !{!971, !963, !958, !966}
!979 = !{!963, !969, !958, !961, !966}
!980 = !{!966, !981}
!981 = distinct !{!981, !967, !"_ZN4core5slice4sort6shared9smallsort10merge_down17h0cb493f98a08eb65E: %is_less"}
!982 = !{!983}
!983 = distinct !{!983, !984, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17he4137d5308dd0d04E: %a"}
!984 = distinct !{!984, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17he4137d5308dd0d04E"}
!985 = !{!986}
!986 = distinct !{!986, !984, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17he4137d5308dd0d04E: %b"}
!987 = !{!988}
!988 = distinct !{!988, !989, !"_ZN4core3ops8function5FnMut8call_mut17h363a9eaade227cf9E: argument 0"}
!989 = distinct !{!989, !"_ZN4core3ops8function5FnMut8call_mut17h363a9eaade227cf9E"}
!990 = !{!991}
!991 = distinct !{!991, !992, !"_ZN4core5slice4sort6shared9smallsort8merge_up17h9e0b59dd5e686f18E: %_0"}
!992 = distinct !{!992, !"_ZN4core5slice4sort6shared9smallsort8merge_up17h9e0b59dd5e686f18E"}
!993 = !{!994}
!994 = distinct !{!994, !989, !"_ZN4core3ops8function5FnMut8call_mut17h363a9eaade227cf9E: argument 1"}
!995 = !{!996}
!996 = distinct !{!996, !997, !"cmpfunc: %a"}
!997 = distinct !{!997, !"cmpfunc"}
!998 = !{!999}
!999 = distinct !{!999, !997, !"cmpfunc: %b"}
!1000 = !{!1001}
!1001 = distinct !{!1001, !1002, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!1002 = distinct !{!1002, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!1003 = !{!1004}
!1004 = distinct !{!1004, !1002, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!1005 = !{!1001, !996, !988, !983}
!1006 = !{!1004, !999, !994, !986, !991}
!1007 = !{!1004, !999, !994, !986}
!1008 = !{!1001, !996, !988, !983, !991}
!1009 = !{!991, !1010}
!1010 = distinct !{!1010, !992, !"_ZN4core5slice4sort6shared9smallsort8merge_up17h9e0b59dd5e686f18E: %is_less"}
!1011 = !{!1012}
!1012 = distinct !{!1012, !1013, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17he4137d5308dd0d04E: %a"}
!1013 = distinct !{!1013, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17he4137d5308dd0d04E"}
!1014 = !{!1015}
!1015 = distinct !{!1015, !1013, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17he4137d5308dd0d04E: %b"}
!1016 = !{!1017}
!1017 = distinct !{!1017, !1018, !"_ZN4core3ops8function5FnMut8call_mut17h363a9eaade227cf9E: argument 0"}
!1018 = distinct !{!1018, !"_ZN4core3ops8function5FnMut8call_mut17h363a9eaade227cf9E"}
!1019 = !{!1020}
!1020 = distinct !{!1020, !1021, !"_ZN4core5slice4sort6shared9smallsort10merge_down17h1409e1622974ef5fE: %_0"}
!1021 = distinct !{!1021, !"_ZN4core5slice4sort6shared9smallsort10merge_down17h1409e1622974ef5fE"}
!1022 = !{!1023}
!1023 = distinct !{!1023, !1018, !"_ZN4core3ops8function5FnMut8call_mut17h363a9eaade227cf9E: argument 1"}
!1024 = !{!1025}
!1025 = distinct !{!1025, !1026, !"cmpfunc: %a"}
!1026 = distinct !{!1026, !"cmpfunc"}
!1027 = !{!1028}
!1028 = distinct !{!1028, !1026, !"cmpfunc: %b"}
!1029 = !{!1030}
!1030 = distinct !{!1030, !1031, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!1031 = distinct !{!1031, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!1032 = !{!1033}
!1033 = distinct !{!1033, !1031, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!1034 = !{!1030, !1025, !1017, !1012}
!1035 = !{!1033, !1028, !1023, !1015, !1020}
!1036 = !{!1033, !1028, !1023, !1015}
!1037 = !{!1030, !1025, !1017, !1012, !1020}
!1038 = !{!1020, !1039}
!1039 = distinct !{!1039, !1021, !"_ZN4core5slice4sort6shared9smallsort10merge_down17h1409e1622974ef5fE: %is_less"}
!1040 = !{!1041}
!1041 = distinct !{!1041, !1042, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17he4137d5308dd0d04E: %a"}
!1042 = distinct !{!1042, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17he4137d5308dd0d04E"}
!1043 = !{!1044}
!1044 = distinct !{!1044, !1042, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17he4137d5308dd0d04E: %b"}
!1045 = !{!1046}
!1046 = distinct !{!1046, !1047, !"_ZN4core3ops8function5FnMut8call_mut17h363a9eaade227cf9E: argument 0"}
!1047 = distinct !{!1047, !"_ZN4core3ops8function5FnMut8call_mut17h363a9eaade227cf9E"}
!1048 = !{!1049}
!1049 = distinct !{!1049, !1047, !"_ZN4core3ops8function5FnMut8call_mut17h363a9eaade227cf9E: argument 1"}
!1050 = !{!1051}
!1051 = distinct !{!1051, !1052, !"cmpfunc: %a"}
!1052 = distinct !{!1052, !"cmpfunc"}
!1053 = !{!1054}
!1054 = distinct !{!1054, !1052, !"cmpfunc: %b"}
!1055 = !{!1056}
!1056 = distinct !{!1056, !1057, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!1057 = distinct !{!1057, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!1058 = !{!1059}
!1059 = distinct !{!1059, !1057, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!1060 = !{!1056, !1051, !1046, !1041}
!1061 = !{!1059, !1054, !1049, !1044}
!1062 = !{!1063, !1065, !1067, !1069}
!1063 = distinct !{!1063, !1064, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!1064 = distinct !{!1064, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!1065 = distinct !{!1065, !1066, !"cmpfunc: %b"}
!1066 = distinct !{!1066, !"cmpfunc"}
!1067 = distinct !{!1067, !1068, !"_ZN4core3ops8function5FnMut8call_mut17h363a9eaade227cf9E: argument 1"}
!1068 = distinct !{!1068, !"_ZN4core3ops8function5FnMut8call_mut17h363a9eaade227cf9E"}
!1069 = distinct !{!1069, !1070, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17he4137d5308dd0d04E: %b"}
!1070 = distinct !{!1070, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17he4137d5308dd0d04E"}
!1071 = !{!1072, !1073, !1074, !1075}
!1072 = distinct !{!1072, !1064, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!1073 = distinct !{!1073, !1066, !"cmpfunc: %a"}
!1074 = distinct !{!1074, !1068, !"_ZN4core3ops8function5FnMut8call_mut17h363a9eaade227cf9E: argument 0"}
!1075 = distinct !{!1075, !1070, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17he4137d5308dd0d04E: %a"}
!1076 = !{!1077, !1079}
!1077 = distinct !{!1077, !1078, !"_ZN99_$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h39cb3a73019d0e90E: %self"}
!1078 = distinct !{!1078, !"_ZN99_$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h39cb3a73019d0e90E"}
!1079 = distinct !{!1079, !1080, !"_ZN4core3ptr80drop_in_place$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$i32$GT$$GT$17h2f6c310581a8af70E: %_1"}
!1080 = distinct !{!1080, !"_ZN4core3ptr80drop_in_place$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$i32$GT$$GT$17h2f6c310581a8af70E"}
!1081 = !{!1082}
!1082 = distinct !{!1082, !1083, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17ha080091ea5002393E: %a"}
!1083 = distinct !{!1083, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17ha080091ea5002393E"}
!1084 = !{!1085}
!1085 = distinct !{!1085, !1083, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17ha080091ea5002393E: %b"}
!1086 = !{!1087}
!1087 = distinct !{!1087, !1088, !"_ZN78ELEMENTS_TO_BE_ADDED_SO_THAT_ALL_ELEMENTS_OF_A_RANGE_ARE_PRESENT_IN_ARRAY_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h43094daefb7e4e03E: %a"}
!1088 = distinct !{!1088, !"_ZN78ELEMENTS_TO_BE_ADDED_SO_THAT_ALL_ELEMENTS_OF_A_RANGE_ARE_PRESENT_IN_ARRAY_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h43094daefb7e4e03E"}
!1089 = !{!1090}
!1090 = distinct !{!1090, !1088, !"_ZN78ELEMENTS_TO_BE_ADDED_SO_THAT_ALL_ELEMENTS_OF_A_RANGE_ARE_PRESENT_IN_ARRAY_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h43094daefb7e4e03E: %b"}
!1091 = !{!1092}
!1092 = distinct !{!1092, !1093, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$f32$GT$11partial_cmp17h51acfdb7fcc2b22aE: %self"}
!1093 = distinct !{!1093, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$f32$GT$11partial_cmp17h51acfdb7fcc2b22aE"}
!1094 = !{!1095}
!1095 = distinct !{!1095, !1093, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$f32$GT$11partial_cmp17h51acfdb7fcc2b22aE: %other"}
!1096 = !{!1092, !1087, !1082}
!1097 = !{!1095, !1090, !1085}
!1098 = !{!1087, !1090, !1082, !1085}
!1099 = !{!1100, !1102, !1104}
!1100 = distinct !{!1100, !1101, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$f32$GT$11partial_cmp17h51acfdb7fcc2b22aE: %other"}
!1101 = distinct !{!1101, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$f32$GT$11partial_cmp17h51acfdb7fcc2b22aE"}
!1102 = distinct !{!1102, !1103, !"_ZN78ELEMENTS_TO_BE_ADDED_SO_THAT_ALL_ELEMENTS_OF_A_RANGE_ARE_PRESENT_IN_ARRAY_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h43094daefb7e4e03E: %b"}
!1103 = distinct !{!1103, !"_ZN78ELEMENTS_TO_BE_ADDED_SO_THAT_ALL_ELEMENTS_OF_A_RANGE_ARE_PRESENT_IN_ARRAY_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h43094daefb7e4e03E"}
!1104 = distinct !{!1104, !1105, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17ha080091ea5002393E: %b"}
!1105 = distinct !{!1105, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17ha080091ea5002393E"}
!1106 = !{!1107, !1108, !1109}
!1107 = distinct !{!1107, !1101, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$f32$GT$11partial_cmp17h51acfdb7fcc2b22aE: %self"}
!1108 = distinct !{!1108, !1103, !"_ZN78ELEMENTS_TO_BE_ADDED_SO_THAT_ALL_ELEMENTS_OF_A_RANGE_ARE_PRESENT_IN_ARRAY_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h43094daefb7e4e03E: %a"}
!1109 = distinct !{!1109, !1105, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17ha080091ea5002393E: %a"}
!1110 = !{!1111, !1113}
!1111 = distinct !{!1111, !1112, !"_ZN99_$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h51027331dc75e514E: %self"}
!1112 = distinct !{!1112, !"_ZN99_$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h51027331dc75e514E"}
!1113 = distinct !{!1113, !1114, !"_ZN4core3ptr80drop_in_place$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$f32$GT$$GT$17hea77ec8e27d8eea9E: %_1"}
!1114 = distinct !{!1114, !"_ZN4core3ptr80drop_in_place$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$f32$GT$$GT$17hea77ec8e27d8eea9E"}
!1115 = !{!1116, !1118}
!1116 = distinct !{!1116, !1117, !"_ZN99_$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h51027331dc75e514E: %self"}
!1117 = distinct !{!1117, !"_ZN99_$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h51027331dc75e514E"}
!1118 = distinct !{!1118, !1119, !"_ZN4core3ptr80drop_in_place$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$f32$GT$$GT$17hea77ec8e27d8eea9E: %_1"}
!1119 = distinct !{!1119, !"_ZN4core3ptr80drop_in_place$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$f32$GT$$GT$17hea77ec8e27d8eea9E"}
!1120 = !{!1121}
!1121 = distinct !{!1121, !1122, !"_ZN4core5array4iter10iter_inner78PolymorphicIter$LT$$u5b$core..mem..maybe_uninit..MaybeUninit$LT$T$GT$$u5d$$GT$4next17h0303a36267910a86E: %self.0"}
!1122 = distinct !{!1122, !"_ZN4core5array4iter10iter_inner78PolymorphicIter$LT$$u5b$core..mem..maybe_uninit..MaybeUninit$LT$T$GT$$u5d$$GT$4next17h0303a36267910a86E"}
!1123 = !{!1124, !1126}
!1124 = distinct !{!1124, !1125, !"_ZN99_$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h51027331dc75e514E: %self"}
!1125 = distinct !{!1125, !"_ZN99_$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h51027331dc75e514E"}
!1126 = distinct !{!1126, !1127, !"_ZN4core3ptr80drop_in_place$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$f32$GT$$GT$17hea77ec8e27d8eea9E: %_1"}
!1127 = distinct !{!1127, !"_ZN4core3ptr80drop_in_place$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$f32$GT$$GT$17hea77ec8e27d8eea9E"}
!1128 = !{!1129}
!1129 = distinct !{!1129, !1130, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17ha080091ea5002393E: %a"}
!1130 = distinct !{!1130, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17ha080091ea5002393E"}
!1131 = !{!1132}
!1132 = distinct !{!1132, !1130, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17ha080091ea5002393E: %b"}
!1133 = !{!1134}
!1134 = distinct !{!1134, !1135, !"_ZN78ELEMENTS_TO_BE_ADDED_SO_THAT_ALL_ELEMENTS_OF_A_RANGE_ARE_PRESENT_IN_ARRAY_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h43094daefb7e4e03E: %a"}
!1135 = distinct !{!1135, !"_ZN78ELEMENTS_TO_BE_ADDED_SO_THAT_ALL_ELEMENTS_OF_A_RANGE_ARE_PRESENT_IN_ARRAY_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h43094daefb7e4e03E"}
!1136 = !{!1137}
!1137 = distinct !{!1137, !1135, !"_ZN78ELEMENTS_TO_BE_ADDED_SO_THAT_ALL_ELEMENTS_OF_A_RANGE_ARE_PRESENT_IN_ARRAY_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h43094daefb7e4e03E: %b"}
!1138 = !{!1139}
!1139 = distinct !{!1139, !1140, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$f32$GT$11partial_cmp17h51acfdb7fcc2b22aE: %self"}
!1140 = distinct !{!1140, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$f32$GT$11partial_cmp17h51acfdb7fcc2b22aE"}
!1141 = !{!1142}
!1142 = distinct !{!1142, !1140, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$f32$GT$11partial_cmp17h51acfdb7fcc2b22aE: %other"}
!1143 = !{!1139, !1134, !1129}
!1144 = !{!1142, !1137, !1132}
!1145 = !{!1146, !1148, !1150}
!1146 = distinct !{!1146, !1147, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$f32$GT$11partial_cmp17h51acfdb7fcc2b22aE: %other"}
!1147 = distinct !{!1147, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$f32$GT$11partial_cmp17h51acfdb7fcc2b22aE"}
!1148 = distinct !{!1148, !1149, !"_ZN78ELEMENTS_TO_BE_ADDED_SO_THAT_ALL_ELEMENTS_OF_A_RANGE_ARE_PRESENT_IN_ARRAY_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h43094daefb7e4e03E: %b"}
!1149 = distinct !{!1149, !"_ZN78ELEMENTS_TO_BE_ADDED_SO_THAT_ALL_ELEMENTS_OF_A_RANGE_ARE_PRESENT_IN_ARRAY_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h43094daefb7e4e03E"}
!1150 = distinct !{!1150, !1151, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17ha080091ea5002393E: %b"}
!1151 = distinct !{!1151, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17ha080091ea5002393E"}
!1152 = !{!1153, !1154, !1155}
!1153 = distinct !{!1153, !1147, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$f32$GT$11partial_cmp17h51acfdb7fcc2b22aE: %self"}
!1154 = distinct !{!1154, !1149, !"_ZN78ELEMENTS_TO_BE_ADDED_SO_THAT_ALL_ELEMENTS_OF_A_RANGE_ARE_PRESENT_IN_ARRAY_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h43094daefb7e4e03E: %a"}
!1155 = distinct !{!1155, !1151, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17ha080091ea5002393E: %a"}
!1156 = !{!1157, !1159}
!1157 = distinct !{!1157, !1158, !"_ZN99_$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h51027331dc75e514E: %self"}
!1158 = distinct !{!1158, !"_ZN99_$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h51027331dc75e514E"}
!1159 = distinct !{!1159, !1160, !"_ZN4core3ptr80drop_in_place$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$f32$GT$$GT$17hea77ec8e27d8eea9E: %_1"}
!1160 = distinct !{!1160, !"_ZN4core3ptr80drop_in_place$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$f32$GT$$GT$17hea77ec8e27d8eea9E"}
!1161 = !{!1162, !1164}
!1162 = distinct !{!1162, !1163, !"_ZN99_$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h51027331dc75e514E: %self"}
!1163 = distinct !{!1163, !"_ZN99_$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h51027331dc75e514E"}
!1164 = distinct !{!1164, !1165, !"_ZN4core3ptr80drop_in_place$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$f32$GT$$GT$17hea77ec8e27d8eea9E: %_1"}
!1165 = distinct !{!1165, !"_ZN4core3ptr80drop_in_place$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$f32$GT$$GT$17hea77ec8e27d8eea9E"}
!1166 = !{!1167}
!1167 = distinct !{!1167, !1168, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17he4137d5308dd0d04E: %a"}
!1168 = distinct !{!1168, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17he4137d5308dd0d04E"}
!1169 = !{!1170}
!1170 = distinct !{!1170, !1168, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17he4137d5308dd0d04E: %b"}
!1171 = !{!1172}
!1172 = distinct !{!1172, !1173, !"_ZN4core3ops8function5FnMut8call_mut17h363a9eaade227cf9E: argument 0"}
!1173 = distinct !{!1173, !"_ZN4core3ops8function5FnMut8call_mut17h363a9eaade227cf9E"}
!1174 = !{!1175}
!1175 = distinct !{!1175, !1173, !"_ZN4core3ops8function5FnMut8call_mut17h363a9eaade227cf9E: argument 1"}
!1176 = !{!1177}
!1177 = distinct !{!1177, !1178, !"cmpfunc: %a"}
!1178 = distinct !{!1178, !"cmpfunc"}
!1179 = !{!1180}
!1180 = distinct !{!1180, !1178, !"cmpfunc: %b"}
!1181 = !{!1182}
!1182 = distinct !{!1182, !1183, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!1183 = distinct !{!1183, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!1184 = !{!1185}
!1185 = distinct !{!1185, !1183, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!1186 = !{!1182, !1177, !1172, !1167}
!1187 = !{!1185, !1180, !1175, !1170}
!1188 = !{!1189}
!1189 = distinct !{!1189, !1190, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17he4137d5308dd0d04E: %a"}
!1190 = distinct !{!1190, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17he4137d5308dd0d04E"}
!1191 = !{!1192}
!1192 = distinct !{!1192, !1190, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17he4137d5308dd0d04E: %b"}
!1193 = !{!1194}
!1194 = distinct !{!1194, !1195, !"_ZN4core3ops8function5FnMut8call_mut17h363a9eaade227cf9E: argument 0"}
!1195 = distinct !{!1195, !"_ZN4core3ops8function5FnMut8call_mut17h363a9eaade227cf9E"}
!1196 = !{!1197}
!1197 = distinct !{!1197, !1195, !"_ZN4core3ops8function5FnMut8call_mut17h363a9eaade227cf9E: argument 1"}
!1198 = !{!1199}
!1199 = distinct !{!1199, !1200, !"cmpfunc: %a"}
!1200 = distinct !{!1200, !"cmpfunc"}
!1201 = !{!1202}
!1202 = distinct !{!1202, !1200, !"cmpfunc: %b"}
!1203 = !{!1204}
!1204 = distinct !{!1204, !1205, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!1205 = distinct !{!1205, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!1206 = !{!1207}
!1207 = distinct !{!1207, !1205, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!1208 = !{!1204, !1199, !1194, !1189}
!1209 = !{!1207, !1202, !1197, !1192}
!1210 = !{!1211}
!1211 = distinct !{!1211, !1212, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17he4137d5308dd0d04E: %a"}
!1212 = distinct !{!1212, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17he4137d5308dd0d04E"}
!1213 = !{!1214}
!1214 = distinct !{!1214, !1212, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17he4137d5308dd0d04E: %b"}
!1215 = !{!1216}
!1216 = distinct !{!1216, !1217, !"_ZN4core3ops8function5FnMut8call_mut17h363a9eaade227cf9E: argument 0"}
!1217 = distinct !{!1217, !"_ZN4core3ops8function5FnMut8call_mut17h363a9eaade227cf9E"}
!1218 = !{!1219}
!1219 = distinct !{!1219, !1217, !"_ZN4core3ops8function5FnMut8call_mut17h363a9eaade227cf9E: argument 1"}
!1220 = !{!1221}
!1221 = distinct !{!1221, !1222, !"cmpfunc: %a"}
!1222 = distinct !{!1222, !"cmpfunc"}
!1223 = !{!1224}
!1224 = distinct !{!1224, !1222, !"cmpfunc: %b"}
!1225 = !{!1226}
!1226 = distinct !{!1226, !1227, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!1227 = distinct !{!1227, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!1228 = !{!1229}
!1229 = distinct !{!1229, !1227, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!1230 = !{!1226, !1221, !1216, !1211}
!1231 = !{!1229, !1224, !1219, !1214}
!1232 = !{!1233}
!1233 = distinct !{!1233, !1234, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17he4137d5308dd0d04E: %a"}
!1234 = distinct !{!1234, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17he4137d5308dd0d04E"}
!1235 = !{!1236}
!1236 = distinct !{!1236, !1234, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17he4137d5308dd0d04E: %b"}
!1237 = !{!1238}
!1238 = distinct !{!1238, !1239, !"_ZN4core3ops8function5FnMut8call_mut17h363a9eaade227cf9E: argument 0"}
!1239 = distinct !{!1239, !"_ZN4core3ops8function5FnMut8call_mut17h363a9eaade227cf9E"}
!1240 = !{!1241}
!1241 = distinct !{!1241, !1239, !"_ZN4core3ops8function5FnMut8call_mut17h363a9eaade227cf9E: argument 1"}
!1242 = !{!1243}
!1243 = distinct !{!1243, !1244, !"cmpfunc: %a"}
!1244 = distinct !{!1244, !"cmpfunc"}
!1245 = !{!1246}
!1246 = distinct !{!1246, !1244, !"cmpfunc: %b"}
!1247 = !{!1248}
!1248 = distinct !{!1248, !1249, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!1249 = distinct !{!1249, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!1250 = !{!1251}
!1251 = distinct !{!1251, !1249, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!1252 = !{!1248, !1243, !1238, !1233}
!1253 = !{!1251, !1246, !1241, !1236}
!1254 = !{!1255}
!1255 = distinct !{!1255, !1256, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17he4137d5308dd0d04E: %a"}
!1256 = distinct !{!1256, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17he4137d5308dd0d04E"}
!1257 = !{!1258}
!1258 = distinct !{!1258, !1256, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17he4137d5308dd0d04E: %b"}
!1259 = !{!1260}
!1260 = distinct !{!1260, !1261, !"_ZN4core3ops8function5FnMut8call_mut17h363a9eaade227cf9E: argument 0"}
!1261 = distinct !{!1261, !"_ZN4core3ops8function5FnMut8call_mut17h363a9eaade227cf9E"}
!1262 = !{!1263}
!1263 = distinct !{!1263, !1261, !"_ZN4core3ops8function5FnMut8call_mut17h363a9eaade227cf9E: argument 1"}
!1264 = !{!1265}
!1265 = distinct !{!1265, !1266, !"cmpfunc: %a"}
!1266 = distinct !{!1266, !"cmpfunc"}
!1267 = !{!1268}
!1268 = distinct !{!1268, !1266, !"cmpfunc: %b"}
!1269 = !{!1270}
!1270 = distinct !{!1270, !1271, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!1271 = distinct !{!1271, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!1272 = !{!1273}
!1273 = distinct !{!1273, !1271, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!1274 = !{!1270, !1265, !1260, !1255}
!1275 = !{!1273, !1268, !1263, !1258}
!1276 = !{!1277}
!1277 = distinct !{!1277, !1278, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17he4137d5308dd0d04E: %a"}
!1278 = distinct !{!1278, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17he4137d5308dd0d04E"}
!1279 = !{!1280}
!1280 = distinct !{!1280, !1278, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17he4137d5308dd0d04E: %b"}
!1281 = !{!1282}
!1282 = distinct !{!1282, !1283, !"_ZN4core3ops8function5FnMut8call_mut17h363a9eaade227cf9E: argument 0"}
!1283 = distinct !{!1283, !"_ZN4core3ops8function5FnMut8call_mut17h363a9eaade227cf9E"}
!1284 = !{!1285}
!1285 = distinct !{!1285, !1283, !"_ZN4core3ops8function5FnMut8call_mut17h363a9eaade227cf9E: argument 1"}
!1286 = !{!1287}
!1287 = distinct !{!1287, !1288, !"cmpfunc: %a"}
!1288 = distinct !{!1288, !"cmpfunc"}
!1289 = !{!1290}
!1290 = distinct !{!1290, !1288, !"cmpfunc: %b"}
!1291 = !{!1292}
!1292 = distinct !{!1292, !1293, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!1293 = distinct !{!1293, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!1294 = !{!1295}
!1295 = distinct !{!1295, !1293, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!1296 = !{!1292, !1287, !1282, !1277}
!1297 = !{!1295, !1290, !1285, !1280}
!1298 = !{!1299}
!1299 = distinct !{!1299, !1300, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17he4137d5308dd0d04E: %a"}
!1300 = distinct !{!1300, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17he4137d5308dd0d04E"}
!1301 = !{!1302}
!1302 = distinct !{!1302, !1300, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17he4137d5308dd0d04E: %b"}
!1303 = !{!1304}
!1304 = distinct !{!1304, !1305, !"_ZN4core3ops8function5FnMut8call_mut17h363a9eaade227cf9E: argument 0"}
!1305 = distinct !{!1305, !"_ZN4core3ops8function5FnMut8call_mut17h363a9eaade227cf9E"}
!1306 = !{!1307}
!1307 = distinct !{!1307, !1305, !"_ZN4core3ops8function5FnMut8call_mut17h363a9eaade227cf9E: argument 1"}
!1308 = !{!1309}
!1309 = distinct !{!1309, !1310, !"cmpfunc: %a"}
!1310 = distinct !{!1310, !"cmpfunc"}
!1311 = !{!1312}
!1312 = distinct !{!1312, !1310, !"cmpfunc: %b"}
!1313 = !{!1314}
!1314 = distinct !{!1314, !1315, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!1315 = distinct !{!1315, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!1316 = !{!1317}
!1317 = distinct !{!1317, !1315, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!1318 = !{!1314, !1309, !1304, !1299}
!1319 = !{!1317, !1312, !1307, !1302}
!1320 = !{!1321}
!1321 = distinct !{!1321, !1322, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17he4137d5308dd0d04E: %a"}
!1322 = distinct !{!1322, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17he4137d5308dd0d04E"}
!1323 = !{!1324}
!1324 = distinct !{!1324, !1322, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17he4137d5308dd0d04E: %b"}
!1325 = !{!1326}
!1326 = distinct !{!1326, !1327, !"_ZN4core3ops8function5FnMut8call_mut17h363a9eaade227cf9E: argument 0"}
!1327 = distinct !{!1327, !"_ZN4core3ops8function5FnMut8call_mut17h363a9eaade227cf9E"}
!1328 = !{!1329}
!1329 = distinct !{!1329, !1327, !"_ZN4core3ops8function5FnMut8call_mut17h363a9eaade227cf9E: argument 1"}
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
!1340 = !{!1336, !1331, !1326, !1321}
!1341 = !{!1339, !1334, !1329, !1324}
!1342 = !{!1343}
!1343 = distinct !{!1343, !1344, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17he4137d5308dd0d04E: %a"}
!1344 = distinct !{!1344, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17he4137d5308dd0d04E"}
!1345 = !{!1346}
!1346 = distinct !{!1346, !1344, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17he4137d5308dd0d04E: %b"}
!1347 = !{!1348}
!1348 = distinct !{!1348, !1349, !"_ZN4core3ops8function5FnMut8call_mut17h363a9eaade227cf9E: argument 0"}
!1349 = distinct !{!1349, !"_ZN4core3ops8function5FnMut8call_mut17h363a9eaade227cf9E"}
!1350 = !{!1351}
!1351 = distinct !{!1351, !1349, !"_ZN4core3ops8function5FnMut8call_mut17h363a9eaade227cf9E: argument 1"}
!1352 = !{!1353}
!1353 = distinct !{!1353, !1354, !"cmpfunc: %a"}
!1354 = distinct !{!1354, !"cmpfunc"}
!1355 = !{!1356}
!1356 = distinct !{!1356, !1354, !"cmpfunc: %b"}
!1357 = !{!1358}
!1358 = distinct !{!1358, !1359, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!1359 = distinct !{!1359, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!1360 = !{!1361}
!1361 = distinct !{!1361, !1359, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!1362 = !{!1358, !1353, !1348, !1343}
!1363 = !{!1361, !1356, !1351, !1346}
!1364 = !{!1365}
!1365 = distinct !{!1365, !1366, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17he4137d5308dd0d04E: %a"}
!1366 = distinct !{!1366, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17he4137d5308dd0d04E"}
!1367 = !{!1368}
!1368 = distinct !{!1368, !1366, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17he4137d5308dd0d04E: %b"}
!1369 = !{!1370}
!1370 = distinct !{!1370, !1371, !"_ZN4core3ops8function5FnMut8call_mut17h363a9eaade227cf9E: argument 0"}
!1371 = distinct !{!1371, !"_ZN4core3ops8function5FnMut8call_mut17h363a9eaade227cf9E"}
!1372 = !{!1373}
!1373 = distinct !{!1373, !1371, !"_ZN4core3ops8function5FnMut8call_mut17h363a9eaade227cf9E: argument 1"}
!1374 = !{!1375}
!1375 = distinct !{!1375, !1376, !"cmpfunc: %a"}
!1376 = distinct !{!1376, !"cmpfunc"}
!1377 = !{!1378}
!1378 = distinct !{!1378, !1376, !"cmpfunc: %b"}
!1379 = !{!1380}
!1380 = distinct !{!1380, !1381, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!1381 = distinct !{!1381, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!1382 = !{!1383}
!1383 = distinct !{!1383, !1381, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!1384 = !{!1380, !1375, !1370, !1365}
!1385 = !{!1383, !1378, !1373, !1368}
!1386 = !{!1387}
!1387 = distinct !{!1387, !1388, !"_ZN4core5array4iter10iter_inner78PolymorphicIter$LT$$u5b$core..mem..maybe_uninit..MaybeUninit$LT$T$GT$$u5d$$GT$4next17h0303a36267910a86E: %self.0"}
!1388 = distinct !{!1388, !"_ZN4core5array4iter10iter_inner78PolymorphicIter$LT$$u5b$core..mem..maybe_uninit..MaybeUninit$LT$T$GT$$u5d$$GT$4next17h0303a36267910a86E"}
!1389 = !{!1390}
!1390 = distinct !{!1390, !1391, !"_ZN4core5slice4sort6shared9smallsort19bidirectional_merge17hdea9b47e74e374a8E: %v.0"}
!1391 = distinct !{!1391, !"_ZN4core5slice4sort6shared9smallsort19bidirectional_merge17hdea9b47e74e374a8E"}
!1392 = !{!1393}
!1393 = distinct !{!1393, !1394, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17he4137d5308dd0d04E: %a"}
!1394 = distinct !{!1394, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17he4137d5308dd0d04E"}
!1395 = !{!1396}
!1396 = distinct !{!1396, !1394, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17he4137d5308dd0d04E: %b"}
!1397 = !{!1398}
!1398 = distinct !{!1398, !1399, !"_ZN4core3ops8function5FnMut8call_mut17h363a9eaade227cf9E: argument 0"}
!1399 = distinct !{!1399, !"_ZN4core3ops8function5FnMut8call_mut17h363a9eaade227cf9E"}
!1400 = !{!1401}
!1401 = distinct !{!1401, !1402, !"_ZN4core5slice4sort6shared9smallsort8merge_up17h9e0b59dd5e686f18E: %_0"}
!1402 = distinct !{!1402, !"_ZN4core5slice4sort6shared9smallsort8merge_up17h9e0b59dd5e686f18E"}
!1403 = !{!1404}
!1404 = distinct !{!1404, !1399, !"_ZN4core3ops8function5FnMut8call_mut17h363a9eaade227cf9E: argument 1"}
!1405 = !{!1406}
!1406 = distinct !{!1406, !1407, !"cmpfunc: %a"}
!1407 = distinct !{!1407, !"cmpfunc"}
!1408 = !{!1409}
!1409 = distinct !{!1409, !1407, !"cmpfunc: %b"}
!1410 = !{!1411}
!1411 = distinct !{!1411, !1412, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!1412 = distinct !{!1412, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!1413 = !{!1414}
!1414 = distinct !{!1414, !1412, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!1415 = !{!1411, !1406, !1398, !1393, !1390}
!1416 = !{!1414, !1409, !1404, !1396, !1401}
!1417 = !{!1414, !1409, !1404, !1396, !1390}
!1418 = !{!1411, !1406, !1398, !1393, !1401}
!1419 = !{!1401, !1420, !1390}
!1420 = distinct !{!1420, !1402, !"_ZN4core5slice4sort6shared9smallsort8merge_up17h9e0b59dd5e686f18E: %is_less"}
!1421 = !{!1422}
!1422 = distinct !{!1422, !1423, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17he4137d5308dd0d04E: %a"}
!1423 = distinct !{!1423, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17he4137d5308dd0d04E"}
!1424 = !{!1425}
!1425 = distinct !{!1425, !1423, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17he4137d5308dd0d04E: %b"}
!1426 = !{!1427}
!1427 = distinct !{!1427, !1428, !"_ZN4core3ops8function5FnMut8call_mut17h363a9eaade227cf9E: argument 0"}
!1428 = distinct !{!1428, !"_ZN4core3ops8function5FnMut8call_mut17h363a9eaade227cf9E"}
!1429 = !{!1430}
!1430 = distinct !{!1430, !1431, !"_ZN4core5slice4sort6shared9smallsort10merge_down17h1409e1622974ef5fE: %_0"}
!1431 = distinct !{!1431, !"_ZN4core5slice4sort6shared9smallsort10merge_down17h1409e1622974ef5fE"}
!1432 = !{!1433}
!1433 = distinct !{!1433, !1428, !"_ZN4core3ops8function5FnMut8call_mut17h363a9eaade227cf9E: argument 1"}
!1434 = !{!1435}
!1435 = distinct !{!1435, !1436, !"cmpfunc: %a"}
!1436 = distinct !{!1436, !"cmpfunc"}
!1437 = !{!1438}
!1438 = distinct !{!1438, !1436, !"cmpfunc: %b"}
!1439 = !{!1440}
!1440 = distinct !{!1440, !1441, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!1441 = distinct !{!1441, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!1442 = !{!1443}
!1443 = distinct !{!1443, !1441, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!1444 = !{!1440, !1435, !1427, !1422, !1390}
!1445 = !{!1443, !1438, !1433, !1425, !1430}
!1446 = !{!1443, !1438, !1433, !1425, !1390}
!1447 = !{!1440, !1435, !1427, !1422, !1430}
!1448 = !{!1430, !1449, !1390}
!1449 = distinct !{!1449, !1431, !"_ZN4core5slice4sort6shared9smallsort10merge_down17h1409e1622974ef5fE: %is_less"}
!1450 = !{!1451, !1453}
!1451 = distinct !{!1451, !1452, !"_ZN99_$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h39cb3a73019d0e90E: %self"}
!1452 = distinct !{!1452, !"_ZN99_$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h39cb3a73019d0e90E"}
!1453 = distinct !{!1453, !1454, !"_ZN4core3ptr80drop_in_place$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$i32$GT$$GT$17h2f6c310581a8af70E: %_1"}
!1454 = distinct !{!1454, !"_ZN4core3ptr80drop_in_place$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$i32$GT$$GT$17h2f6c310581a8af70E"}
!1455 = !{!1456, !1458, !1460, !1462}
!1456 = distinct !{!1456, !1457, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!1457 = distinct !{!1457, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!1458 = distinct !{!1458, !1459, !"cmpfunc: %b"}
!1459 = distinct !{!1459, !"cmpfunc"}
!1460 = distinct !{!1460, !1461, !"_ZN4core3ops8function5FnMut8call_mut17h363a9eaade227cf9E: argument 1"}
!1461 = distinct !{!1461, !"_ZN4core3ops8function5FnMut8call_mut17h363a9eaade227cf9E"}
!1462 = distinct !{!1462, !1463, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17he4137d5308dd0d04E: %b"}
!1463 = distinct !{!1463, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17he4137d5308dd0d04E"}
!1464 = !{!1465, !1466, !1467, !1468}
!1465 = distinct !{!1465, !1457, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!1466 = distinct !{!1466, !1459, !"cmpfunc: %a"}
!1467 = distinct !{!1467, !1461, !"_ZN4core3ops8function5FnMut8call_mut17h363a9eaade227cf9E: argument 0"}
!1468 = distinct !{!1468, !1463, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17he4137d5308dd0d04E: %a"}
!1469 = !{!1470, !1472, !1474, !1476}
!1470 = distinct !{!1470, !1471, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!1471 = distinct !{!1471, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!1472 = distinct !{!1472, !1473, !"cmpfunc: %b"}
!1473 = distinct !{!1473, !"cmpfunc"}
!1474 = distinct !{!1474, !1475, !"_ZN4core3ops8function5FnMut8call_mut17h363a9eaade227cf9E: argument 1"}
!1475 = distinct !{!1475, !"_ZN4core3ops8function5FnMut8call_mut17h363a9eaade227cf9E"}
!1476 = distinct !{!1476, !1477, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17he4137d5308dd0d04E: %b"}
!1477 = distinct !{!1477, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17he4137d5308dd0d04E"}
!1478 = !{!1479, !1480, !1481, !1482}
!1479 = distinct !{!1479, !1471, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!1480 = distinct !{!1480, !1473, !"cmpfunc: %a"}
!1481 = distinct !{!1481, !1475, !"_ZN4core3ops8function5FnMut8call_mut17h363a9eaade227cf9E: argument 0"}
!1482 = distinct !{!1482, !1477, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17he4137d5308dd0d04E: %a"}
!1483 = !{!1484, !1486}
!1484 = distinct !{!1484, !1485, !"_ZN99_$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h39cb3a73019d0e90E: %self"}
!1485 = distinct !{!1485, !"_ZN99_$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h39cb3a73019d0e90E"}
!1486 = distinct !{!1486, !1487, !"_ZN4core3ptr80drop_in_place$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$i32$GT$$GT$17h2f6c310581a8af70E: %_1"}
!1487 = distinct !{!1487, !"_ZN4core3ptr80drop_in_place$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$i32$GT$$GT$17h2f6c310581a8af70E"}
!1488 = !{!1489}
!1489 = distinct !{!1489, !1490, !"_ZN5alloc5slice99_$LT$impl$u20$core..slice..sort..stable..BufGuard$LT$T$GT$$u20$for$u20$alloc..vec..Vec$LT$T$GT$$GT$13with_capacity17h31a3bb75fe65f1d4E: %_0"}
!1490 = distinct !{!1490, !"_ZN5alloc5slice99_$LT$impl$u20$core..slice..sort..stable..BufGuard$LT$T$GT$$u20$for$u20$alloc..vec..Vec$LT$T$GT$$GT$13with_capacity17h31a3bb75fe65f1d4E"}
!1491 = !{i64 0, i64 2}
!1492 = !{i64 0, i64 -9223372036854775807}
!1493 = !{!1494}
!1494 = distinct !{!1494, !1495, !"_ZN5alloc5slice99_$LT$impl$u20$core..slice..sort..stable..BufGuard$LT$T$GT$$u20$for$u20$alloc..vec..Vec$LT$T$GT$$GT$13with_capacity17h6293cbdad6d0ff30E: %_0"}
!1495 = distinct !{!1495, !"_ZN5alloc5slice99_$LT$impl$u20$core..slice..sort..stable..BufGuard$LT$T$GT$$u20$for$u20$alloc..vec..Vec$LT$T$GT$$GT$13with_capacity17h6293cbdad6d0ff30E"}
!1496 = !{!1497}
!1497 = distinct !{!1497, !1498, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17ha080091ea5002393E: %a"}
!1498 = distinct !{!1498, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17ha080091ea5002393E"}
!1499 = !{!1500}
!1500 = distinct !{!1500, !1498, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17ha080091ea5002393E: %b"}
!1501 = !{!1502}
!1502 = distinct !{!1502, !1503, !"_ZN78ELEMENTS_TO_BE_ADDED_SO_THAT_ALL_ELEMENTS_OF_A_RANGE_ARE_PRESENT_IN_ARRAY_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h43094daefb7e4e03E: %a"}
!1503 = distinct !{!1503, !"_ZN78ELEMENTS_TO_BE_ADDED_SO_THAT_ALL_ELEMENTS_OF_A_RANGE_ARE_PRESENT_IN_ARRAY_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h43094daefb7e4e03E"}
!1504 = !{!1505}
!1505 = distinct !{!1505, !1503, !"_ZN78ELEMENTS_TO_BE_ADDED_SO_THAT_ALL_ELEMENTS_OF_A_RANGE_ARE_PRESENT_IN_ARRAY_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h43094daefb7e4e03E: %b"}
!1506 = !{!1507}
!1507 = distinct !{!1507, !1508, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$f32$GT$11partial_cmp17h51acfdb7fcc2b22aE: %self"}
!1508 = distinct !{!1508, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$f32$GT$11partial_cmp17h51acfdb7fcc2b22aE"}
!1509 = !{!1510}
!1510 = distinct !{!1510, !1508, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$f32$GT$11partial_cmp17h51acfdb7fcc2b22aE: %other"}
!1511 = !{!1507, !1502, !1497}
!1512 = !{!1510, !1505, !1500}
!1513 = !{!1502, !1505, !1497, !1500}
!1514 = !{!1515}
!1515 = distinct !{!1515, !1516, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17ha080091ea5002393E: %a"}
!1516 = distinct !{!1516, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17ha080091ea5002393E"}
!1517 = !{!1518}
!1518 = distinct !{!1518, !1516, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17ha080091ea5002393E: %b"}
!1519 = !{!1520}
!1520 = distinct !{!1520, !1521, !"_ZN78ELEMENTS_TO_BE_ADDED_SO_THAT_ALL_ELEMENTS_OF_A_RANGE_ARE_PRESENT_IN_ARRAY_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h43094daefb7e4e03E: %a"}
!1521 = distinct !{!1521, !"_ZN78ELEMENTS_TO_BE_ADDED_SO_THAT_ALL_ELEMENTS_OF_A_RANGE_ARE_PRESENT_IN_ARRAY_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h43094daefb7e4e03E"}
!1522 = !{!1523}
!1523 = distinct !{!1523, !1521, !"_ZN78ELEMENTS_TO_BE_ADDED_SO_THAT_ALL_ELEMENTS_OF_A_RANGE_ARE_PRESENT_IN_ARRAY_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h43094daefb7e4e03E: %b"}
!1524 = !{!1525}
!1525 = distinct !{!1525, !1526, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$f32$GT$11partial_cmp17h51acfdb7fcc2b22aE: %self"}
!1526 = distinct !{!1526, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$f32$GT$11partial_cmp17h51acfdb7fcc2b22aE"}
!1527 = !{!1528}
!1528 = distinct !{!1528, !1526, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$f32$GT$11partial_cmp17h51acfdb7fcc2b22aE: %other"}
!1529 = !{!1525, !1520, !1515}
!1530 = !{!1528, !1523, !1518}
!1531 = !{!1520, !1523, !1515, !1518}
!1532 = !{!1533}
!1533 = distinct !{!1533, !1534, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17ha080091ea5002393E: %a"}
!1534 = distinct !{!1534, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17ha080091ea5002393E"}
!1535 = !{!1536}
!1536 = distinct !{!1536, !1534, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17ha080091ea5002393E: %b"}
!1537 = !{!1538}
!1538 = distinct !{!1538, !1539, !"_ZN78ELEMENTS_TO_BE_ADDED_SO_THAT_ALL_ELEMENTS_OF_A_RANGE_ARE_PRESENT_IN_ARRAY_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h43094daefb7e4e03E: %a"}
!1539 = distinct !{!1539, !"_ZN78ELEMENTS_TO_BE_ADDED_SO_THAT_ALL_ELEMENTS_OF_A_RANGE_ARE_PRESENT_IN_ARRAY_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h43094daefb7e4e03E"}
!1540 = !{!1541}
!1541 = distinct !{!1541, !1539, !"_ZN78ELEMENTS_TO_BE_ADDED_SO_THAT_ALL_ELEMENTS_OF_A_RANGE_ARE_PRESENT_IN_ARRAY_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h43094daefb7e4e03E: %b"}
!1542 = !{!1543}
!1543 = distinct !{!1543, !1544, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$f32$GT$11partial_cmp17h51acfdb7fcc2b22aE: %self"}
!1544 = distinct !{!1544, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$f32$GT$11partial_cmp17h51acfdb7fcc2b22aE"}
!1545 = !{!1546}
!1546 = distinct !{!1546, !1544, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$f32$GT$11partial_cmp17h51acfdb7fcc2b22aE: %other"}
!1547 = !{!1543, !1538, !1533}
!1548 = !{!1546, !1541, !1536}
!1549 = !{!1538, !1541, !1533, !1536}
!1550 = !{!1551, !1553}
!1551 = distinct !{!1551, !1552, !"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse7revswap17he6ea8d5be4138df9E: %a.0"}
!1552 = distinct !{!1552, !"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse7revswap17he6ea8d5be4138df9E"}
!1553 = distinct !{!1553, !1554, !"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17h3384b0bd0d967691E: %self.0"}
!1554 = distinct !{!1554, !"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17h3384b0bd0d967691E"}
!1555 = !{!1556}
!1556 = distinct !{!1556, !1552, !"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse7revswap17he6ea8d5be4138df9E: %b.0"}
!1557 = !{!1556, !1553}
!1558 = !{!1551}
!1559 = !{!1560}
!1560 = distinct !{!1560, !1561, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17he4137d5308dd0d04E: %a"}
!1561 = distinct !{!1561, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17he4137d5308dd0d04E"}
!1562 = !{!1563}
!1563 = distinct !{!1563, !1561, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17he4137d5308dd0d04E: %b"}
!1564 = !{!1565}
!1565 = distinct !{!1565, !1566, !"_ZN4core3ops8function5FnMut8call_mut17h363a9eaade227cf9E: argument 0"}
!1566 = distinct !{!1566, !"_ZN4core3ops8function5FnMut8call_mut17h363a9eaade227cf9E"}
!1567 = !{!1568}
!1568 = distinct !{!1568, !1566, !"_ZN4core3ops8function5FnMut8call_mut17h363a9eaade227cf9E: argument 1"}
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
!1582 = distinct !{!1582, !1583, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17he4137d5308dd0d04E: %a"}
!1583 = distinct !{!1583, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17he4137d5308dd0d04E"}
!1584 = !{!1585}
!1585 = distinct !{!1585, !1583, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17he4137d5308dd0d04E: %b"}
!1586 = !{!1587}
!1587 = distinct !{!1587, !1588, !"_ZN4core3ops8function5FnMut8call_mut17h363a9eaade227cf9E: argument 0"}
!1588 = distinct !{!1588, !"_ZN4core3ops8function5FnMut8call_mut17h363a9eaade227cf9E"}
!1589 = !{!1590}
!1590 = distinct !{!1590, !1588, !"_ZN4core3ops8function5FnMut8call_mut17h363a9eaade227cf9E: argument 1"}
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
!1604 = distinct !{!1604, !1605, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17he4137d5308dd0d04E: %a"}
!1605 = distinct !{!1605, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17he4137d5308dd0d04E"}
!1606 = !{!1607}
!1607 = distinct !{!1607, !1605, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17he4137d5308dd0d04E: %b"}
!1608 = !{!1609}
!1609 = distinct !{!1609, !1610, !"_ZN4core3ops8function5FnMut8call_mut17h363a9eaade227cf9E: argument 0"}
!1610 = distinct !{!1610, !"_ZN4core3ops8function5FnMut8call_mut17h363a9eaade227cf9E"}
!1611 = !{!1612}
!1612 = distinct !{!1612, !1610, !"_ZN4core3ops8function5FnMut8call_mut17h363a9eaade227cf9E: argument 1"}
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
!1626 = distinct !{!1626, !1627, !"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse7revswap17h680011fad5223088E: %a.0"}
!1627 = distinct !{!1627, !"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse7revswap17h680011fad5223088E"}
!1628 = distinct !{!1628, !1629, !"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17h64810979be69c781E: %self.0"}
!1629 = distinct !{!1629, !"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17h64810979be69c781E"}
!1630 = !{!1631}
!1631 = distinct !{!1631, !1627, !"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse7revswap17h680011fad5223088E: %b.0"}
!1632 = !{!1631, !1628}
!1633 = !{!1626}
!1634 = !{!1635}
!1635 = distinct !{!1635, !1636, !"_ZN4core5slice4sort6stable5merge5merge17h2d6da087c7c7e505E: %v.0"}
!1636 = distinct !{!1636, !"_ZN4core5slice4sort6stable5merge5merge17h2d6da087c7c7e505E"}
!1637 = !{!1638}
!1638 = distinct !{!1638, !1636, !"_ZN4core5slice4sort6stable5merge5merge17h2d6da087c7c7e505E: %scratch.0"}
!1639 = !{!1635, !1638}
!1640 = !{!1641}
!1641 = distinct !{!1641, !1642, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17he4137d5308dd0d04E: %a"}
!1642 = distinct !{!1642, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17he4137d5308dd0d04E"}
!1643 = !{!1644}
!1644 = distinct !{!1644, !1642, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17he4137d5308dd0d04E: %b"}
!1645 = !{!1646}
!1646 = distinct !{!1646, !1647, !"_ZN4core3ops8function5FnMut8call_mut17h363a9eaade227cf9E: argument 0"}
!1647 = distinct !{!1647, !"_ZN4core3ops8function5FnMut8call_mut17h363a9eaade227cf9E"}
!1648 = !{!1649}
!1649 = distinct !{!1649, !1647, !"_ZN4core3ops8function5FnMut8call_mut17h363a9eaade227cf9E: argument 1"}
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
!1662 = distinct !{!1662, !1663, !"_ZN4core5slice4sort6stable5merge19MergeState$LT$T$GT$10merge_down17h6c9782b6b3314686E: %self"}
!1663 = distinct !{!1663, !"_ZN4core5slice4sort6stable5merge19MergeState$LT$T$GT$10merge_down17h6c9782b6b3314686E"}
!1664 = !{!1659, !1654, !1649, !1644, !1635}
!1665 = !{!1656, !1651, !1646, !1641, !1662, !1638}
!1666 = !{!1662, !1638}
!1667 = !{!1668}
!1668 = distinct !{!1668, !1669, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17he4137d5308dd0d04E: %a"}
!1669 = distinct !{!1669, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17he4137d5308dd0d04E"}
!1670 = !{!1671}
!1671 = distinct !{!1671, !1669, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17he4137d5308dd0d04E: %b"}
!1672 = !{!1673}
!1673 = distinct !{!1673, !1674, !"_ZN4core3ops8function5FnMut8call_mut17h363a9eaade227cf9E: argument 0"}
!1674 = distinct !{!1674, !"_ZN4core3ops8function5FnMut8call_mut17h363a9eaade227cf9E"}
!1675 = !{!1676}
!1676 = distinct !{!1676, !1674, !"_ZN4core3ops8function5FnMut8call_mut17h363a9eaade227cf9E: argument 1"}
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
!1689 = distinct !{!1689, !1690, !"_ZN4core5slice4sort6stable5merge19MergeState$LT$T$GT$8merge_up17h646a50214b5e3b0aE: %self"}
!1690 = distinct !{!1690, !"_ZN4core5slice4sort6stable5merge19MergeState$LT$T$GT$8merge_up17h646a50214b5e3b0aE"}
!1691 = !{!1686, !1681, !1676, !1671, !1638}
!1692 = !{!1683, !1678, !1673, !1668, !1689, !1635}
!1693 = !{!1689, !1638}
!1694 = !{!1695, !1697}
!1695 = distinct !{!1695, !1696, !"_ZN95_$LT$core..slice..sort..stable..merge..MergeState$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hdb582f01993658c3E: %self"}
!1696 = distinct !{!1696, !"_ZN95_$LT$core..slice..sort..stable..merge..MergeState$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hdb582f01993658c3E"}
!1697 = distinct !{!1697, !1698, !"_ZN4core3ptr76drop_in_place$LT$core..slice..sort..stable..merge..MergeState$LT$i32$GT$$GT$17hc8d6c898e2b45a96E: %_1"}
!1698 = distinct !{!1698, !"_ZN4core3ptr76drop_in_place$LT$core..slice..sort..stable..merge..MergeState$LT$i32$GT$$GT$17hc8d6c898e2b45a96E"}
!1699 = !{!1700}
!1700 = distinct !{!1700, !1701, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17he4137d5308dd0d04E: %a"}
!1701 = distinct !{!1701, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17he4137d5308dd0d04E"}
!1702 = !{!1703}
!1703 = distinct !{!1703, !1701, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17he4137d5308dd0d04E: %b"}
!1704 = !{!1705}
!1705 = distinct !{!1705, !1706, !"_ZN4core3ops8function5FnMut8call_mut17h363a9eaade227cf9E: argument 0"}
!1706 = distinct !{!1706, !"_ZN4core3ops8function5FnMut8call_mut17h363a9eaade227cf9E"}
!1707 = !{!1708}
!1708 = distinct !{!1708, !1706, !"_ZN4core3ops8function5FnMut8call_mut17h363a9eaade227cf9E: argument 1"}
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
!1722 = distinct !{!1722, !1723, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17ha080091ea5002393E: %a"}
!1723 = distinct !{!1723, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17ha080091ea5002393E"}
!1724 = !{!1725}
!1725 = distinct !{!1725, !1723, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17ha080091ea5002393E: %b"}
!1726 = !{!1727}
!1727 = distinct !{!1727, !1728, !"_ZN78ELEMENTS_TO_BE_ADDED_SO_THAT_ALL_ELEMENTS_OF_A_RANGE_ARE_PRESENT_IN_ARRAY_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h43094daefb7e4e03E: %a"}
!1728 = distinct !{!1728, !"_ZN78ELEMENTS_TO_BE_ADDED_SO_THAT_ALL_ELEMENTS_OF_A_RANGE_ARE_PRESENT_IN_ARRAY_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h43094daefb7e4e03E"}
!1729 = !{!1730}
!1730 = distinct !{!1730, !1728, !"_ZN78ELEMENTS_TO_BE_ADDED_SO_THAT_ALL_ELEMENTS_OF_A_RANGE_ARE_PRESENT_IN_ARRAY_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h43094daefb7e4e03E: %b"}
!1731 = !{!1732}
!1732 = distinct !{!1732, !1733, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$f32$GT$11partial_cmp17h51acfdb7fcc2b22aE: %self"}
!1733 = distinct !{!1733, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$f32$GT$11partial_cmp17h51acfdb7fcc2b22aE"}
!1734 = !{!1735}
!1735 = distinct !{!1735, !1733, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$f32$GT$11partial_cmp17h51acfdb7fcc2b22aE: %other"}
!1736 = !{!1732, !1727, !1722}
!1737 = !{!1735, !1730, !1725}
!1738 = !{!1727, !1730, !1722, !1725}
!1739 = !{!1740}
!1740 = distinct !{!1740, !1741, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17ha080091ea5002393E: %a"}
!1741 = distinct !{!1741, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17ha080091ea5002393E"}
!1742 = !{!1743}
!1743 = distinct !{!1743, !1741, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17ha080091ea5002393E: %b"}
!1744 = !{!1745}
!1745 = distinct !{!1745, !1746, !"_ZN78ELEMENTS_TO_BE_ADDED_SO_THAT_ALL_ELEMENTS_OF_A_RANGE_ARE_PRESENT_IN_ARRAY_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h43094daefb7e4e03E: %a"}
!1746 = distinct !{!1746, !"_ZN78ELEMENTS_TO_BE_ADDED_SO_THAT_ALL_ELEMENTS_OF_A_RANGE_ARE_PRESENT_IN_ARRAY_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h43094daefb7e4e03E"}
!1747 = !{!1748}
!1748 = distinct !{!1748, !1746, !"_ZN78ELEMENTS_TO_BE_ADDED_SO_THAT_ALL_ELEMENTS_OF_A_RANGE_ARE_PRESENT_IN_ARRAY_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h43094daefb7e4e03E: %b"}
!1749 = !{!1750}
!1750 = distinct !{!1750, !1751, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$f32$GT$11partial_cmp17h51acfdb7fcc2b22aE: %self"}
!1751 = distinct !{!1751, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$f32$GT$11partial_cmp17h51acfdb7fcc2b22aE"}
!1752 = !{!1753}
!1753 = distinct !{!1753, !1751, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$f32$GT$11partial_cmp17h51acfdb7fcc2b22aE: %other"}
!1754 = !{!1750, !1745, !1740}
!1755 = !{!1753, !1748, !1743}
!1756 = !{!1745, !1748, !1740, !1743}
!1757 = !{!1758}
!1758 = distinct !{!1758, !1759, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17he4137d5308dd0d04E: %a"}
!1759 = distinct !{!1759, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17he4137d5308dd0d04E"}
!1760 = !{!1761}
!1761 = distinct !{!1761, !1759, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17he4137d5308dd0d04E: %b"}
!1762 = !{!1763}
!1763 = distinct !{!1763, !1764, !"_ZN4core3ops8function5FnMut8call_mut17h363a9eaade227cf9E: argument 0"}
!1764 = distinct !{!1764, !"_ZN4core3ops8function5FnMut8call_mut17h363a9eaade227cf9E"}
!1765 = !{!1766}
!1766 = distinct !{!1766, !1764, !"_ZN4core3ops8function5FnMut8call_mut17h363a9eaade227cf9E: argument 1"}
!1767 = !{!1768}
!1768 = distinct !{!1768, !1769, !"cmpfunc: %a"}
!1769 = distinct !{!1769, !"cmpfunc"}
!1770 = !{!1771}
!1771 = distinct !{!1771, !1769, !"cmpfunc: %b"}
!1772 = !{!1773}
!1773 = distinct !{!1773, !1774, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!1774 = distinct !{!1774, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!1775 = !{!1776}
!1776 = distinct !{!1776, !1774, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!1777 = !{!1773, !1768, !1763, !1758}
!1778 = !{!1776, !1771, !1766, !1761}
!1779 = !{!1780}
!1780 = distinct !{!1780, !1781, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17he4137d5308dd0d04E: %a"}
!1781 = distinct !{!1781, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17he4137d5308dd0d04E"}
!1782 = !{!1783}
!1783 = distinct !{!1783, !1781, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17he4137d5308dd0d04E: %b"}
!1784 = !{!1785}
!1785 = distinct !{!1785, !1786, !"_ZN4core3ops8function5FnMut8call_mut17h363a9eaade227cf9E: argument 0"}
!1786 = distinct !{!1786, !"_ZN4core3ops8function5FnMut8call_mut17h363a9eaade227cf9E"}
!1787 = !{!1788}
!1788 = distinct !{!1788, !1786, !"_ZN4core3ops8function5FnMut8call_mut17h363a9eaade227cf9E: argument 1"}
!1789 = !{!1790}
!1790 = distinct !{!1790, !1791, !"cmpfunc: %a"}
!1791 = distinct !{!1791, !"cmpfunc"}
!1792 = !{!1793}
!1793 = distinct !{!1793, !1791, !"cmpfunc: %b"}
!1794 = !{!1795}
!1795 = distinct !{!1795, !1796, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!1796 = distinct !{!1796, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!1797 = !{!1798}
!1798 = distinct !{!1798, !1796, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!1799 = !{!1795, !1790, !1785, !1780}
!1800 = !{!1798, !1793, !1788, !1783, !1801}
!1801 = distinct !{!1801, !1802, !"_ZN4core5slice4sort6stable5merge19MergeState$LT$T$GT$10merge_down17h6c9782b6b3314686E: %self"}
!1802 = distinct !{!1802, !"_ZN4core5slice4sort6stable5merge19MergeState$LT$T$GT$10merge_down17h6c9782b6b3314686E"}
!1803 = !{!1798, !1793, !1788, !1783}
!1804 = !{!1795, !1790, !1785, !1780, !1801}
!1805 = !{!1801}
!1806 = !{!1807}
!1807 = distinct !{!1807, !1808, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17he4137d5308dd0d04E: %a"}
!1808 = distinct !{!1808, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17he4137d5308dd0d04E"}
!1809 = !{!1810}
!1810 = distinct !{!1810, !1808, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17he4137d5308dd0d04E: %b"}
!1811 = !{!1812}
!1812 = distinct !{!1812, !1813, !"_ZN4core3ops8function5FnMut8call_mut17h363a9eaade227cf9E: argument 0"}
!1813 = distinct !{!1813, !"_ZN4core3ops8function5FnMut8call_mut17h363a9eaade227cf9E"}
!1814 = !{!1815}
!1815 = distinct !{!1815, !1813, !"_ZN4core3ops8function5FnMut8call_mut17h363a9eaade227cf9E: argument 1"}
!1816 = !{!1817}
!1817 = distinct !{!1817, !1818, !"cmpfunc: %a"}
!1818 = distinct !{!1818, !"cmpfunc"}
!1819 = !{!1820}
!1820 = distinct !{!1820, !1818, !"cmpfunc: %b"}
!1821 = !{!1822}
!1822 = distinct !{!1822, !1823, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!1823 = distinct !{!1823, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!1824 = !{!1825}
!1825 = distinct !{!1825, !1823, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!1826 = !{!1822, !1817, !1812, !1807}
!1827 = !{!1825, !1820, !1815, !1810, !1828}
!1828 = distinct !{!1828, !1829, !"_ZN4core5slice4sort6stable5merge19MergeState$LT$T$GT$8merge_up17h646a50214b5e3b0aE: %self"}
!1829 = distinct !{!1829, !"_ZN4core5slice4sort6stable5merge19MergeState$LT$T$GT$8merge_up17h646a50214b5e3b0aE"}
!1830 = !{!1825, !1820, !1815, !1810}
!1831 = !{!1822, !1817, !1812, !1807, !1828}
!1832 = !{!1828}
!1833 = !{!1834, !1836}
!1834 = distinct !{!1834, !1835, !"_ZN95_$LT$core..slice..sort..stable..merge..MergeState$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hdb582f01993658c3E: %self"}
!1835 = distinct !{!1835, !"_ZN95_$LT$core..slice..sort..stable..merge..MergeState$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hdb582f01993658c3E"}
!1836 = distinct !{!1836, !1837, !"_ZN4core3ptr76drop_in_place$LT$core..slice..sort..stable..merge..MergeState$LT$i32$GT$$GT$17hc8d6c898e2b45a96E: %_1"}
!1837 = distinct !{!1837, !"_ZN4core3ptr76drop_in_place$LT$core..slice..sort..stable..merge..MergeState$LT$i32$GT$$GT$17hc8d6c898e2b45a96E"}
!1838 = !{!1839}
!1839 = distinct !{!1839, !1840, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17ha080091ea5002393E: %a"}
!1840 = distinct !{!1840, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17ha080091ea5002393E"}
!1841 = !{!1842}
!1842 = distinct !{!1842, !1840, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17ha080091ea5002393E: %b"}
!1843 = !{!1844}
!1844 = distinct !{!1844, !1845, !"_ZN78ELEMENTS_TO_BE_ADDED_SO_THAT_ALL_ELEMENTS_OF_A_RANGE_ARE_PRESENT_IN_ARRAY_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h43094daefb7e4e03E: %a"}
!1845 = distinct !{!1845, !"_ZN78ELEMENTS_TO_BE_ADDED_SO_THAT_ALL_ELEMENTS_OF_A_RANGE_ARE_PRESENT_IN_ARRAY_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h43094daefb7e4e03E"}
!1846 = !{!1847}
!1847 = distinct !{!1847, !1845, !"_ZN78ELEMENTS_TO_BE_ADDED_SO_THAT_ALL_ELEMENTS_OF_A_RANGE_ARE_PRESENT_IN_ARRAY_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h43094daefb7e4e03E: %b"}
!1848 = !{!1849}
!1849 = distinct !{!1849, !1850, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$f32$GT$11partial_cmp17h51acfdb7fcc2b22aE: %self"}
!1850 = distinct !{!1850, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$f32$GT$11partial_cmp17h51acfdb7fcc2b22aE"}
!1851 = !{!1852}
!1852 = distinct !{!1852, !1850, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$f32$GT$11partial_cmp17h51acfdb7fcc2b22aE: %other"}
!1853 = !{!1849, !1844, !1839}
!1854 = !{!1852, !1847, !1842, !1855}
!1855 = distinct !{!1855, !1856, !"_ZN4core5slice4sort6stable5merge19MergeState$LT$T$GT$10merge_down17he289e5c367d31d63E: %self"}
!1856 = distinct !{!1856, !"_ZN4core5slice4sort6stable5merge19MergeState$LT$T$GT$10merge_down17he289e5c367d31d63E"}
!1857 = !{!1852, !1847, !1842}
!1858 = !{!1849, !1844, !1839, !1855}
!1859 = !{!1855}
!1860 = !{!1861}
!1861 = distinct !{!1861, !1862, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17ha080091ea5002393E: %a"}
!1862 = distinct !{!1862, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17ha080091ea5002393E"}
!1863 = !{!1864}
!1864 = distinct !{!1864, !1862, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17ha080091ea5002393E: %b"}
!1865 = !{!1866}
!1866 = distinct !{!1866, !1867, !"_ZN78ELEMENTS_TO_BE_ADDED_SO_THAT_ALL_ELEMENTS_OF_A_RANGE_ARE_PRESENT_IN_ARRAY_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h43094daefb7e4e03E: %a"}
!1867 = distinct !{!1867, !"_ZN78ELEMENTS_TO_BE_ADDED_SO_THAT_ALL_ELEMENTS_OF_A_RANGE_ARE_PRESENT_IN_ARRAY_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h43094daefb7e4e03E"}
!1868 = !{!1869}
!1869 = distinct !{!1869, !1867, !"_ZN78ELEMENTS_TO_BE_ADDED_SO_THAT_ALL_ELEMENTS_OF_A_RANGE_ARE_PRESENT_IN_ARRAY_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h43094daefb7e4e03E: %b"}
!1870 = !{!1871}
!1871 = distinct !{!1871, !1872, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$f32$GT$11partial_cmp17h51acfdb7fcc2b22aE: %self"}
!1872 = distinct !{!1872, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$f32$GT$11partial_cmp17h51acfdb7fcc2b22aE"}
!1873 = !{!1874}
!1874 = distinct !{!1874, !1872, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$f32$GT$11partial_cmp17h51acfdb7fcc2b22aE: %other"}
!1875 = !{!1871, !1866, !1861}
!1876 = !{!1874, !1869, !1864, !1877}
!1877 = distinct !{!1877, !1878, !"_ZN4core5slice4sort6stable5merge19MergeState$LT$T$GT$8merge_up17h198b1ccb8b971c05E: %self"}
!1878 = distinct !{!1878, !"_ZN4core5slice4sort6stable5merge19MergeState$LT$T$GT$8merge_up17h198b1ccb8b971c05E"}
!1879 = !{!1874, !1869, !1864}
!1880 = !{!1871, !1866, !1861, !1877}
!1881 = !{!1877}
!1882 = !{!1883, !1885}
!1883 = distinct !{!1883, !1884, !"_ZN95_$LT$core..slice..sort..stable..merge..MergeState$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h8c9cf90529128850E: %self"}
!1884 = distinct !{!1884, !"_ZN95_$LT$core..slice..sort..stable..merge..MergeState$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h8c9cf90529128850E"}
!1885 = distinct !{!1885, !1886, !"_ZN4core3ptr76drop_in_place$LT$core..slice..sort..stable..merge..MergeState$LT$f32$GT$$GT$17hcee777ae0edb0bc2E: %_1"}
!1886 = distinct !{!1886, !"_ZN4core3ptr76drop_in_place$LT$core..slice..sort..stable..merge..MergeState$LT$f32$GT$$GT$17hcee777ae0edb0bc2E"}
!1887 = !{!1888, !1890}
!1888 = distinct !{!1888, !1889, !"_ZN95_$LT$core..slice..sort..stable..merge..MergeState$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h8c9cf90529128850E: %self"}
!1889 = distinct !{!1889, !"_ZN95_$LT$core..slice..sort..stable..merge..MergeState$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h8c9cf90529128850E"}
!1890 = distinct !{!1890, !1891, !"_ZN4core3ptr76drop_in_place$LT$core..slice..sort..stable..merge..MergeState$LT$f32$GT$$GT$17hcee777ae0edb0bc2E: %_1"}
!1891 = distinct !{!1891, !"_ZN4core3ptr76drop_in_place$LT$core..slice..sort..stable..merge..MergeState$LT$f32$GT$$GT$17hcee777ae0edb0bc2E"}
!1892 = !{!"branch_weights", i32 4000000, i32 4001}
!1893 = !{!1894}
!1894 = distinct !{!1894, !1895, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17he4137d5308dd0d04E: %a"}
!1895 = distinct !{!1895, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17he4137d5308dd0d04E"}
!1896 = !{!1897}
!1897 = distinct !{!1897, !1895, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17he4137d5308dd0d04E: %b"}
!1898 = !{!1899}
!1899 = distinct !{!1899, !1900, !"_ZN4core3ops8function5FnMut8call_mut17h363a9eaade227cf9E: argument 0"}
!1900 = distinct !{!1900, !"_ZN4core3ops8function5FnMut8call_mut17h363a9eaade227cf9E"}
!1901 = !{!1902}
!1902 = distinct !{!1902, !1900, !"_ZN4core3ops8function5FnMut8call_mut17h363a9eaade227cf9E: argument 1"}
!1903 = !{!1904}
!1904 = distinct !{!1904, !1905, !"cmpfunc: %a"}
!1905 = distinct !{!1905, !"cmpfunc"}
!1906 = !{!1907}
!1907 = distinct !{!1907, !1905, !"cmpfunc: %b"}
!1908 = !{!1909}
!1909 = distinct !{!1909, !1910, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!1910 = distinct !{!1910, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!1911 = !{!1912}
!1912 = distinct !{!1912, !1910, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!1913 = !{!1909, !1904, !1899, !1894}
!1914 = !{!1912, !1907, !1902, !1897}
!1915 = !{!1916}
!1916 = distinct !{!1916, !1917, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17ha33a8671d1614144E: %self"}
!1917 = distinct !{!1917, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17ha33a8671d1614144E"}
!1918 = !{!1919}
!1919 = distinct !{!1919, !1920, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17he4137d5308dd0d04E: %a"}
!1920 = distinct !{!1920, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17he4137d5308dd0d04E"}
!1921 = !{!1922}
!1922 = distinct !{!1922, !1920, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17he4137d5308dd0d04E: %b"}
!1923 = !{!1924}
!1924 = distinct !{!1924, !1925, !"_ZN4core3ops8function5FnMut8call_mut17h363a9eaade227cf9E: argument 0"}
!1925 = distinct !{!1925, !"_ZN4core3ops8function5FnMut8call_mut17h363a9eaade227cf9E"}
!1926 = !{!1927}
!1927 = distinct !{!1927, !1925, !"_ZN4core3ops8function5FnMut8call_mut17h363a9eaade227cf9E: argument 1"}
!1928 = !{!1929}
!1929 = distinct !{!1929, !1930, !"cmpfunc: %a"}
!1930 = distinct !{!1930, !"cmpfunc"}
!1931 = !{!1932}
!1932 = distinct !{!1932, !1930, !"cmpfunc: %b"}
!1933 = !{!1934}
!1934 = distinct !{!1934, !1935, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!1935 = distinct !{!1935, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!1936 = !{!1937}
!1937 = distinct !{!1937, !1935, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!1938 = !{!1934, !1929, !1924, !1919}
!1939 = !{!1937, !1932, !1927, !1922}
!1940 = !{!1941}
!1941 = distinct !{!1941, !1942, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17ha33a8671d1614144E: %self"}
!1942 = distinct !{!1942, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17ha33a8671d1614144E"}
!1943 = !{!1944}
!1944 = distinct !{!1944, !1945, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17he4137d5308dd0d04E: %a"}
!1945 = distinct !{!1945, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17he4137d5308dd0d04E"}
!1946 = !{!1947}
!1947 = distinct !{!1947, !1945, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17he4137d5308dd0d04E: %b"}
!1948 = !{!1949}
!1949 = distinct !{!1949, !1950, !"_ZN4core3ops8function5FnMut8call_mut17h363a9eaade227cf9E: argument 0"}
!1950 = distinct !{!1950, !"_ZN4core3ops8function5FnMut8call_mut17h363a9eaade227cf9E"}
!1951 = !{!1952}
!1952 = distinct !{!1952, !1950, !"_ZN4core3ops8function5FnMut8call_mut17h363a9eaade227cf9E: argument 1"}
!1953 = !{!1954}
!1954 = distinct !{!1954, !1955, !"cmpfunc: %a"}
!1955 = distinct !{!1955, !"cmpfunc"}
!1956 = !{!1957}
!1957 = distinct !{!1957, !1955, !"cmpfunc: %b"}
!1958 = !{!1959}
!1959 = distinct !{!1959, !1960, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!1960 = distinct !{!1960, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!1961 = !{!1962}
!1962 = distinct !{!1962, !1960, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!1963 = !{!1959, !1954, !1949, !1944}
!1964 = !{!1962, !1957, !1952, !1947}
!1965 = !{!1966}
!1966 = distinct !{!1966, !1967, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17ha33a8671d1614144E: %self"}
!1967 = distinct !{!1967, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17ha33a8671d1614144E"}
!1968 = !{!1969}
!1969 = distinct !{!1969, !1970, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17he4137d5308dd0d04E: %a"}
!1970 = distinct !{!1970, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17he4137d5308dd0d04E"}
!1971 = !{!1972}
!1972 = distinct !{!1972, !1970, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17he4137d5308dd0d04E: %b"}
!1973 = !{!1974}
!1974 = distinct !{!1974, !1975, !"_ZN4core3ops8function5FnMut8call_mut17h363a9eaade227cf9E: argument 0"}
!1975 = distinct !{!1975, !"_ZN4core3ops8function5FnMut8call_mut17h363a9eaade227cf9E"}
!1976 = !{!1977}
!1977 = distinct !{!1977, !1975, !"_ZN4core3ops8function5FnMut8call_mut17h363a9eaade227cf9E: argument 1"}
!1978 = !{!1979}
!1979 = distinct !{!1979, !1980, !"cmpfunc: %a"}
!1980 = distinct !{!1980, !"cmpfunc"}
!1981 = !{!1982}
!1982 = distinct !{!1982, !1980, !"cmpfunc: %b"}
!1983 = !{!1984}
!1984 = distinct !{!1984, !1985, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!1985 = distinct !{!1985, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!1986 = !{!1987}
!1987 = distinct !{!1987, !1985, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!1988 = !{!1984, !1979, !1974, !1969}
!1989 = !{!1987, !1982, !1977, !1972}
!1990 = !{!1991}
!1991 = distinct !{!1991, !1992, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17ha33a8671d1614144E: %self"}
!1992 = distinct !{!1992, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17ha33a8671d1614144E"}
!1993 = !{!1994}
!1994 = distinct !{!1994, !1995, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17he4137d5308dd0d04E: %a"}
!1995 = distinct !{!1995, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17he4137d5308dd0d04E"}
!1996 = !{!1997}
!1997 = distinct !{!1997, !1995, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17he4137d5308dd0d04E: %b"}
!1998 = !{!1999}
!1999 = distinct !{!1999, !2000, !"_ZN4core3ops8function5FnMut8call_mut17h363a9eaade227cf9E: argument 0"}
!2000 = distinct !{!2000, !"_ZN4core3ops8function5FnMut8call_mut17h363a9eaade227cf9E"}
!2001 = !{!2002}
!2002 = distinct !{!2002, !2000, !"_ZN4core3ops8function5FnMut8call_mut17h363a9eaade227cf9E: argument 1"}
!2003 = !{!2004}
!2004 = distinct !{!2004, !2005, !"cmpfunc: %a"}
!2005 = distinct !{!2005, !"cmpfunc"}
!2006 = !{!2007}
!2007 = distinct !{!2007, !2005, !"cmpfunc: %b"}
!2008 = !{!2009}
!2009 = distinct !{!2009, !2010, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!2010 = distinct !{!2010, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!2011 = !{!2012}
!2012 = distinct !{!2012, !2010, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!2013 = !{!2009, !2004, !1999, !1994}
!2014 = !{!2012, !2007, !2002, !1997}
!2015 = !{!2016}
!2016 = distinct !{!2016, !2017, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17ha33a8671d1614144E: %self"}
!2017 = distinct !{!2017, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17ha33a8671d1614144E"}
!2018 = !{!2019}
!2019 = distinct !{!2019, !2020, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17ha33a8671d1614144E: %self"}
!2020 = distinct !{!2020, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17ha33a8671d1614144E"}
!2021 = distinct !{!2021, !2022}
!2022 = !{!"llvm.loop.unroll.disable"}
!2023 = !{!2024}
!2024 = distinct !{!2024, !2025, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17he134ba6577d8691eE: %a"}
!2025 = distinct !{!2025, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17he134ba6577d8691eE"}
!2026 = !{!2027}
!2027 = distinct !{!2027, !2025, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17he134ba6577d8691eE: %b"}
!2028 = !{!2029}
!2029 = distinct !{!2029, !2030, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17ha080091ea5002393E: %a"}
!2030 = distinct !{!2030, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17ha080091ea5002393E"}
!2031 = !{!2032}
!2032 = distinct !{!2032, !2030, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17ha080091ea5002393E: %b"}
!2033 = !{!2034}
!2034 = distinct !{!2034, !2035, !"_ZN78ELEMENTS_TO_BE_ADDED_SO_THAT_ALL_ELEMENTS_OF_A_RANGE_ARE_PRESENT_IN_ARRAY_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h43094daefb7e4e03E: %a"}
!2035 = distinct !{!2035, !"_ZN78ELEMENTS_TO_BE_ADDED_SO_THAT_ALL_ELEMENTS_OF_A_RANGE_ARE_PRESENT_IN_ARRAY_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h43094daefb7e4e03E"}
!2036 = !{!2037}
!2037 = distinct !{!2037, !2035, !"_ZN78ELEMENTS_TO_BE_ADDED_SO_THAT_ALL_ELEMENTS_OF_A_RANGE_ARE_PRESENT_IN_ARRAY_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h43094daefb7e4e03E: %b"}
!2038 = !{!2039}
!2039 = distinct !{!2039, !2040, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$f32$GT$11partial_cmp17h51acfdb7fcc2b22aE: %self"}
!2040 = distinct !{!2040, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$f32$GT$11partial_cmp17h51acfdb7fcc2b22aE"}
!2041 = !{!2042}
!2042 = distinct !{!2042, !2040, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$f32$GT$11partial_cmp17h51acfdb7fcc2b22aE: %other"}
!2043 = !{!2039, !2034, !2029, !2027}
!2044 = !{!2042, !2037, !2032, !2024}
!2045 = !{!2034, !2037, !2029, !2032, !2024, !2027}
!2046 = !{!2047}
!2047 = distinct !{!2047, !2048, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h9465fa304d45e9adE: %self"}
!2048 = distinct !{!2048, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h9465fa304d45e9adE"}
!2049 = !{!2050}
!2050 = distinct !{!2050, !2051, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17he134ba6577d8691eE: %a"}
!2051 = distinct !{!2051, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17he134ba6577d8691eE"}
!2052 = !{!2053}
!2053 = distinct !{!2053, !2051, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17he134ba6577d8691eE: %b"}
!2054 = !{!2055}
!2055 = distinct !{!2055, !2056, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17ha080091ea5002393E: %a"}
!2056 = distinct !{!2056, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17ha080091ea5002393E"}
!2057 = !{!2058}
!2058 = distinct !{!2058, !2056, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17ha080091ea5002393E: %b"}
!2059 = !{!2060}
!2060 = distinct !{!2060, !2061, !"_ZN78ELEMENTS_TO_BE_ADDED_SO_THAT_ALL_ELEMENTS_OF_A_RANGE_ARE_PRESENT_IN_ARRAY_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h43094daefb7e4e03E: %a"}
!2061 = distinct !{!2061, !"_ZN78ELEMENTS_TO_BE_ADDED_SO_THAT_ALL_ELEMENTS_OF_A_RANGE_ARE_PRESENT_IN_ARRAY_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h43094daefb7e4e03E"}
!2062 = !{!2063}
!2063 = distinct !{!2063, !2061, !"_ZN78ELEMENTS_TO_BE_ADDED_SO_THAT_ALL_ELEMENTS_OF_A_RANGE_ARE_PRESENT_IN_ARRAY_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h43094daefb7e4e03E: %b"}
!2064 = !{!2065}
!2065 = distinct !{!2065, !2066, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$f32$GT$11partial_cmp17h51acfdb7fcc2b22aE: %self"}
!2066 = distinct !{!2066, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$f32$GT$11partial_cmp17h51acfdb7fcc2b22aE"}
!2067 = !{!2068}
!2068 = distinct !{!2068, !2066, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$f32$GT$11partial_cmp17h51acfdb7fcc2b22aE: %other"}
!2069 = !{!2065, !2060, !2055, !2053}
!2070 = !{!2068, !2063, !2058, !2050}
!2071 = !{!2060, !2063, !2055, !2058, !2050, !2053}
!2072 = !{!2073}
!2073 = distinct !{!2073, !2074, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h9465fa304d45e9adE: %self"}
!2074 = distinct !{!2074, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h9465fa304d45e9adE"}
!2075 = !{!2076}
!2076 = distinct !{!2076, !2077, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17he134ba6577d8691eE: %a"}
!2077 = distinct !{!2077, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17he134ba6577d8691eE"}
!2078 = !{!2079}
!2079 = distinct !{!2079, !2077, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17he134ba6577d8691eE: %b"}
!2080 = !{!2081}
!2081 = distinct !{!2081, !2082, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17ha080091ea5002393E: %a"}
!2082 = distinct !{!2082, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17ha080091ea5002393E"}
!2083 = !{!2084}
!2084 = distinct !{!2084, !2082, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17ha080091ea5002393E: %b"}
!2085 = !{!2086}
!2086 = distinct !{!2086, !2087, !"_ZN78ELEMENTS_TO_BE_ADDED_SO_THAT_ALL_ELEMENTS_OF_A_RANGE_ARE_PRESENT_IN_ARRAY_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h43094daefb7e4e03E: %a"}
!2087 = distinct !{!2087, !"_ZN78ELEMENTS_TO_BE_ADDED_SO_THAT_ALL_ELEMENTS_OF_A_RANGE_ARE_PRESENT_IN_ARRAY_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h43094daefb7e4e03E"}
!2088 = !{!2089}
!2089 = distinct !{!2089, !2087, !"_ZN78ELEMENTS_TO_BE_ADDED_SO_THAT_ALL_ELEMENTS_OF_A_RANGE_ARE_PRESENT_IN_ARRAY_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h43094daefb7e4e03E: %b"}
!2090 = !{!2091}
!2091 = distinct !{!2091, !2092, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$f32$GT$11partial_cmp17h51acfdb7fcc2b22aE: %self"}
!2092 = distinct !{!2092, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$f32$GT$11partial_cmp17h51acfdb7fcc2b22aE"}
!2093 = !{!2094}
!2094 = distinct !{!2094, !2092, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$f32$GT$11partial_cmp17h51acfdb7fcc2b22aE: %other"}
!2095 = !{!2091, !2086, !2081, !2079}
!2096 = !{!2094, !2089, !2084, !2076}
!2097 = !{!2086, !2089, !2081, !2084, !2076, !2079}
!2098 = !{!2099}
!2099 = distinct !{!2099, !2100, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h9465fa304d45e9adE: %self"}
!2100 = distinct !{!2100, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h9465fa304d45e9adE"}
!2101 = !{!2102}
!2102 = distinct !{!2102, !2103, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17he134ba6577d8691eE: %a"}
!2103 = distinct !{!2103, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17he134ba6577d8691eE"}
!2104 = !{!2105}
!2105 = distinct !{!2105, !2103, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17he134ba6577d8691eE: %b"}
!2106 = !{!2107}
!2107 = distinct !{!2107, !2108, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17ha080091ea5002393E: %a"}
!2108 = distinct !{!2108, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17ha080091ea5002393E"}
!2109 = !{!2110}
!2110 = distinct !{!2110, !2108, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17ha080091ea5002393E: %b"}
!2111 = !{!2112}
!2112 = distinct !{!2112, !2113, !"_ZN78ELEMENTS_TO_BE_ADDED_SO_THAT_ALL_ELEMENTS_OF_A_RANGE_ARE_PRESENT_IN_ARRAY_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h43094daefb7e4e03E: %a"}
!2113 = distinct !{!2113, !"_ZN78ELEMENTS_TO_BE_ADDED_SO_THAT_ALL_ELEMENTS_OF_A_RANGE_ARE_PRESENT_IN_ARRAY_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h43094daefb7e4e03E"}
!2114 = !{!2115}
!2115 = distinct !{!2115, !2113, !"_ZN78ELEMENTS_TO_BE_ADDED_SO_THAT_ALL_ELEMENTS_OF_A_RANGE_ARE_PRESENT_IN_ARRAY_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h43094daefb7e4e03E: %b"}
!2116 = !{!2117}
!2117 = distinct !{!2117, !2118, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$f32$GT$11partial_cmp17h51acfdb7fcc2b22aE: %self"}
!2118 = distinct !{!2118, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$f32$GT$11partial_cmp17h51acfdb7fcc2b22aE"}
!2119 = !{!2120}
!2120 = distinct !{!2120, !2118, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$f32$GT$11partial_cmp17h51acfdb7fcc2b22aE: %other"}
!2121 = !{!2117, !2112, !2107, !2105}
!2122 = !{!2120, !2115, !2110, !2102}
!2123 = !{!2112, !2115, !2107, !2110, !2102, !2105}
!2124 = !{!2125}
!2125 = distinct !{!2125, !2126, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h9465fa304d45e9adE: %self"}
!2126 = distinct !{!2126, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h9465fa304d45e9adE"}
!2127 = !{!2128}
!2128 = distinct !{!2128, !2129, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17he134ba6577d8691eE: %a"}
!2129 = distinct !{!2129, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17he134ba6577d8691eE"}
!2130 = !{!2131}
!2131 = distinct !{!2131, !2129, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17he134ba6577d8691eE: %b"}
!2132 = !{!2133}
!2133 = distinct !{!2133, !2134, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17ha080091ea5002393E: %a"}
!2134 = distinct !{!2134, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17ha080091ea5002393E"}
!2135 = !{!2136}
!2136 = distinct !{!2136, !2134, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17ha080091ea5002393E: %b"}
!2137 = !{!2138}
!2138 = distinct !{!2138, !2139, !"_ZN78ELEMENTS_TO_BE_ADDED_SO_THAT_ALL_ELEMENTS_OF_A_RANGE_ARE_PRESENT_IN_ARRAY_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h43094daefb7e4e03E: %a"}
!2139 = distinct !{!2139, !"_ZN78ELEMENTS_TO_BE_ADDED_SO_THAT_ALL_ELEMENTS_OF_A_RANGE_ARE_PRESENT_IN_ARRAY_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h43094daefb7e4e03E"}
!2140 = !{!2141}
!2141 = distinct !{!2141, !2139, !"_ZN78ELEMENTS_TO_BE_ADDED_SO_THAT_ALL_ELEMENTS_OF_A_RANGE_ARE_PRESENT_IN_ARRAY_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h43094daefb7e4e03E: %b"}
!2142 = !{!2143}
!2143 = distinct !{!2143, !2144, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$f32$GT$11partial_cmp17h51acfdb7fcc2b22aE: %self"}
!2144 = distinct !{!2144, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$f32$GT$11partial_cmp17h51acfdb7fcc2b22aE"}
!2145 = !{!2146}
!2146 = distinct !{!2146, !2144, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$f32$GT$11partial_cmp17h51acfdb7fcc2b22aE: %other"}
!2147 = !{!2143, !2138, !2133, !2131}
!2148 = !{!2146, !2141, !2136, !2128}
!2149 = !{!2138, !2141, !2133, !2136, !2128, !2131}
!2150 = !{!2151}
!2151 = distinct !{!2151, !2152, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h9465fa304d45e9adE: %self"}
!2152 = distinct !{!2152, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h9465fa304d45e9adE"}
!2153 = !{!2154}
!2154 = distinct !{!2154, !2155, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h9465fa304d45e9adE: %self"}
!2155 = distinct !{!2155, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h9465fa304d45e9adE"}
!2156 = distinct !{!2156, !2022}
!2157 = !{!2158}
!2158 = distinct !{!2158, !2159, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17hae92bba9771807d2E: %a"}
!2159 = distinct !{!2159, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17hae92bba9771807d2E"}
!2160 = !{!2161}
!2161 = distinct !{!2161, !2159, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17hae92bba9771807d2E: %b"}
!2162 = !{!2163}
!2163 = distinct !{!2163, !2164, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17he4137d5308dd0d04E: %a"}
!2164 = distinct !{!2164, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17he4137d5308dd0d04E"}
!2165 = !{!2166}
!2166 = distinct !{!2166, !2164, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17he4137d5308dd0d04E: %b"}
!2167 = !{!2168}
!2168 = distinct !{!2168, !2169, !"_ZN4core3ops8function5FnMut8call_mut17h363a9eaade227cf9E: argument 0"}
!2169 = distinct !{!2169, !"_ZN4core3ops8function5FnMut8call_mut17h363a9eaade227cf9E"}
!2170 = !{!2171}
!2171 = distinct !{!2171, !2169, !"_ZN4core3ops8function5FnMut8call_mut17h363a9eaade227cf9E: argument 1"}
!2172 = !{!2173}
!2173 = distinct !{!2173, !2174, !"cmpfunc: %a"}
!2174 = distinct !{!2174, !"cmpfunc"}
!2175 = !{!2176}
!2176 = distinct !{!2176, !2174, !"cmpfunc: %b"}
!2177 = !{!2178}
!2178 = distinct !{!2178, !2179, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!2179 = distinct !{!2179, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!2180 = !{!2181}
!2181 = distinct !{!2181, !2179, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!2182 = !{!2178, !2173, !2168, !2163, !2161}
!2183 = !{!2181, !2176, !2171, !2166, !2158}
!2184 = !{!2185}
!2185 = distinct !{!2185, !2186, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17ha33a8671d1614144E: %self"}
!2186 = distinct !{!2186, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17ha33a8671d1614144E"}
!2187 = !{!2188}
!2188 = distinct !{!2188, !2189, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17hae92bba9771807d2E: %a"}
!2189 = distinct !{!2189, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17hae92bba9771807d2E"}
!2190 = !{!2191}
!2191 = distinct !{!2191, !2189, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17hae92bba9771807d2E: %b"}
!2192 = !{!2193}
!2193 = distinct !{!2193, !2194, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17he4137d5308dd0d04E: %a"}
!2194 = distinct !{!2194, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17he4137d5308dd0d04E"}
!2195 = !{!2196}
!2196 = distinct !{!2196, !2194, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17he4137d5308dd0d04E: %b"}
!2197 = !{!2198}
!2198 = distinct !{!2198, !2199, !"_ZN4core3ops8function5FnMut8call_mut17h363a9eaade227cf9E: argument 0"}
!2199 = distinct !{!2199, !"_ZN4core3ops8function5FnMut8call_mut17h363a9eaade227cf9E"}
!2200 = !{!2201}
!2201 = distinct !{!2201, !2199, !"_ZN4core3ops8function5FnMut8call_mut17h363a9eaade227cf9E: argument 1"}
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
!2212 = !{!2208, !2203, !2198, !2193, !2191}
!2213 = !{!2211, !2206, !2201, !2196, !2188}
!2214 = !{!2215}
!2215 = distinct !{!2215, !2216, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17ha33a8671d1614144E: %self"}
!2216 = distinct !{!2216, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17ha33a8671d1614144E"}
!2217 = !{!2218}
!2218 = distinct !{!2218, !2219, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17hae92bba9771807d2E: %a"}
!2219 = distinct !{!2219, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17hae92bba9771807d2E"}
!2220 = !{!2221}
!2221 = distinct !{!2221, !2219, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17hae92bba9771807d2E: %b"}
!2222 = !{!2223}
!2223 = distinct !{!2223, !2224, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17he4137d5308dd0d04E: %a"}
!2224 = distinct !{!2224, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17he4137d5308dd0d04E"}
!2225 = !{!2226}
!2226 = distinct !{!2226, !2224, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17he4137d5308dd0d04E: %b"}
!2227 = !{!2228}
!2228 = distinct !{!2228, !2229, !"_ZN4core3ops8function5FnMut8call_mut17h363a9eaade227cf9E: argument 0"}
!2229 = distinct !{!2229, !"_ZN4core3ops8function5FnMut8call_mut17h363a9eaade227cf9E"}
!2230 = !{!2231}
!2231 = distinct !{!2231, !2229, !"_ZN4core3ops8function5FnMut8call_mut17h363a9eaade227cf9E: argument 1"}
!2232 = !{!2233}
!2233 = distinct !{!2233, !2234, !"cmpfunc: %a"}
!2234 = distinct !{!2234, !"cmpfunc"}
!2235 = !{!2236}
!2236 = distinct !{!2236, !2234, !"cmpfunc: %b"}
!2237 = !{!2238}
!2238 = distinct !{!2238, !2239, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!2239 = distinct !{!2239, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!2240 = !{!2241}
!2241 = distinct !{!2241, !2239, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!2242 = !{!2238, !2233, !2228, !2223, !2221}
!2243 = !{!2241, !2236, !2231, !2226, !2218}
!2244 = !{!2245}
!2245 = distinct !{!2245, !2246, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17ha33a8671d1614144E: %self"}
!2246 = distinct !{!2246, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17ha33a8671d1614144E"}
!2247 = !{!2248}
!2248 = distinct !{!2248, !2249, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17hae92bba9771807d2E: %a"}
!2249 = distinct !{!2249, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17hae92bba9771807d2E"}
!2250 = !{!2251}
!2251 = distinct !{!2251, !2249, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17hae92bba9771807d2E: %b"}
!2252 = !{!2253}
!2253 = distinct !{!2253, !2254, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17he4137d5308dd0d04E: %a"}
!2254 = distinct !{!2254, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17he4137d5308dd0d04E"}
!2255 = !{!2256}
!2256 = distinct !{!2256, !2254, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17he4137d5308dd0d04E: %b"}
!2257 = !{!2258}
!2258 = distinct !{!2258, !2259, !"_ZN4core3ops8function5FnMut8call_mut17h363a9eaade227cf9E: argument 0"}
!2259 = distinct !{!2259, !"_ZN4core3ops8function5FnMut8call_mut17h363a9eaade227cf9E"}
!2260 = !{!2261}
!2261 = distinct !{!2261, !2259, !"_ZN4core3ops8function5FnMut8call_mut17h363a9eaade227cf9E: argument 1"}
!2262 = !{!2263}
!2263 = distinct !{!2263, !2264, !"cmpfunc: %a"}
!2264 = distinct !{!2264, !"cmpfunc"}
!2265 = !{!2266}
!2266 = distinct !{!2266, !2264, !"cmpfunc: %b"}
!2267 = !{!2268}
!2268 = distinct !{!2268, !2269, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!2269 = distinct !{!2269, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!2270 = !{!2271}
!2271 = distinct !{!2271, !2269, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!2272 = !{!2268, !2263, !2258, !2253, !2251}
!2273 = !{!2271, !2266, !2261, !2256, !2248}
!2274 = !{!2275}
!2275 = distinct !{!2275, !2276, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17ha33a8671d1614144E: %self"}
!2276 = distinct !{!2276, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17ha33a8671d1614144E"}
!2277 = !{!2278}
!2278 = distinct !{!2278, !2279, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17hae92bba9771807d2E: %a"}
!2279 = distinct !{!2279, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17hae92bba9771807d2E"}
!2280 = !{!2281}
!2281 = distinct !{!2281, !2279, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17hae92bba9771807d2E: %b"}
!2282 = !{!2283}
!2283 = distinct !{!2283, !2284, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17he4137d5308dd0d04E: %a"}
!2284 = distinct !{!2284, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17he4137d5308dd0d04E"}
!2285 = !{!2286}
!2286 = distinct !{!2286, !2284, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17he4137d5308dd0d04E: %b"}
!2287 = !{!2288}
!2288 = distinct !{!2288, !2289, !"_ZN4core3ops8function5FnMut8call_mut17h363a9eaade227cf9E: argument 0"}
!2289 = distinct !{!2289, !"_ZN4core3ops8function5FnMut8call_mut17h363a9eaade227cf9E"}
!2290 = !{!2291}
!2291 = distinct !{!2291, !2289, !"_ZN4core3ops8function5FnMut8call_mut17h363a9eaade227cf9E: argument 1"}
!2292 = !{!2293}
!2293 = distinct !{!2293, !2294, !"cmpfunc: %a"}
!2294 = distinct !{!2294, !"cmpfunc"}
!2295 = !{!2296}
!2296 = distinct !{!2296, !2294, !"cmpfunc: %b"}
!2297 = !{!2298}
!2298 = distinct !{!2298, !2299, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!2299 = distinct !{!2299, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!2300 = !{!2301}
!2301 = distinct !{!2301, !2299, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!2302 = !{!2298, !2293, !2288, !2283, !2281}
!2303 = !{!2301, !2296, !2291, !2286, !2278}
!2304 = !{!2305}
!2305 = distinct !{!2305, !2306, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17ha33a8671d1614144E: %self"}
!2306 = distinct !{!2306, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17ha33a8671d1614144E"}
!2307 = !{!2308}
!2308 = distinct !{!2308, !2309, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17ha33a8671d1614144E: %self"}
!2309 = distinct !{!2309, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17ha33a8671d1614144E"}
!2310 = distinct !{!2310, !2022}
!2311 = !{!2312}
!2312 = distinct !{!2312, !2313, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17ha080091ea5002393E: %a"}
!2313 = distinct !{!2313, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17ha080091ea5002393E"}
!2314 = !{!2315}
!2315 = distinct !{!2315, !2313, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17ha080091ea5002393E: %b"}
!2316 = !{!2317}
!2317 = distinct !{!2317, !2318, !"_ZN78ELEMENTS_TO_BE_ADDED_SO_THAT_ALL_ELEMENTS_OF_A_RANGE_ARE_PRESENT_IN_ARRAY_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h43094daefb7e4e03E: %a"}
!2318 = distinct !{!2318, !"_ZN78ELEMENTS_TO_BE_ADDED_SO_THAT_ALL_ELEMENTS_OF_A_RANGE_ARE_PRESENT_IN_ARRAY_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h43094daefb7e4e03E"}
!2319 = !{!2320}
!2320 = distinct !{!2320, !2318, !"_ZN78ELEMENTS_TO_BE_ADDED_SO_THAT_ALL_ELEMENTS_OF_A_RANGE_ARE_PRESENT_IN_ARRAY_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h43094daefb7e4e03E: %b"}
!2321 = !{!2322}
!2322 = distinct !{!2322, !2323, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$f32$GT$11partial_cmp17h51acfdb7fcc2b22aE: %self"}
!2323 = distinct !{!2323, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$f32$GT$11partial_cmp17h51acfdb7fcc2b22aE"}
!2324 = !{!2325}
!2325 = distinct !{!2325, !2323, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$f32$GT$11partial_cmp17h51acfdb7fcc2b22aE: %other"}
!2326 = !{!2322, !2317, !2312}
!2327 = !{!2325, !2320, !2315}
!2328 = !{!2317, !2320, !2312, !2315}
!2329 = !{!2330}
!2330 = distinct !{!2330, !2331, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h9465fa304d45e9adE: %self"}
!2331 = distinct !{!2331, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h9465fa304d45e9adE"}
!2332 = !{!2333}
!2333 = distinct !{!2333, !2334, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17ha080091ea5002393E: %a"}
!2334 = distinct !{!2334, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17ha080091ea5002393E"}
!2335 = !{!2336}
!2336 = distinct !{!2336, !2334, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17ha080091ea5002393E: %b"}
!2337 = !{!2338}
!2338 = distinct !{!2338, !2339, !"_ZN78ELEMENTS_TO_BE_ADDED_SO_THAT_ALL_ELEMENTS_OF_A_RANGE_ARE_PRESENT_IN_ARRAY_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h43094daefb7e4e03E: %a"}
!2339 = distinct !{!2339, !"_ZN78ELEMENTS_TO_BE_ADDED_SO_THAT_ALL_ELEMENTS_OF_A_RANGE_ARE_PRESENT_IN_ARRAY_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h43094daefb7e4e03E"}
!2340 = !{!2341}
!2341 = distinct !{!2341, !2339, !"_ZN78ELEMENTS_TO_BE_ADDED_SO_THAT_ALL_ELEMENTS_OF_A_RANGE_ARE_PRESENT_IN_ARRAY_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h43094daefb7e4e03E: %b"}
!2342 = !{!2343}
!2343 = distinct !{!2343, !2344, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$f32$GT$11partial_cmp17h51acfdb7fcc2b22aE: %self"}
!2344 = distinct !{!2344, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$f32$GT$11partial_cmp17h51acfdb7fcc2b22aE"}
!2345 = !{!2346}
!2346 = distinct !{!2346, !2344, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$f32$GT$11partial_cmp17h51acfdb7fcc2b22aE: %other"}
!2347 = !{!2343, !2338, !2333}
!2348 = !{!2346, !2341, !2336}
!2349 = !{!2338, !2341, !2333, !2336}
!2350 = !{!2351}
!2351 = distinct !{!2351, !2352, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h9465fa304d45e9adE: %self"}
!2352 = distinct !{!2352, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h9465fa304d45e9adE"}
!2353 = !{!2354}
!2354 = distinct !{!2354, !2355, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17ha080091ea5002393E: %a"}
!2355 = distinct !{!2355, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17ha080091ea5002393E"}
!2356 = !{!2357}
!2357 = distinct !{!2357, !2355, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17ha080091ea5002393E: %b"}
!2358 = !{!2359}
!2359 = distinct !{!2359, !2360, !"_ZN78ELEMENTS_TO_BE_ADDED_SO_THAT_ALL_ELEMENTS_OF_A_RANGE_ARE_PRESENT_IN_ARRAY_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h43094daefb7e4e03E: %a"}
!2360 = distinct !{!2360, !"_ZN78ELEMENTS_TO_BE_ADDED_SO_THAT_ALL_ELEMENTS_OF_A_RANGE_ARE_PRESENT_IN_ARRAY_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h43094daefb7e4e03E"}
!2361 = !{!2362}
!2362 = distinct !{!2362, !2360, !"_ZN78ELEMENTS_TO_BE_ADDED_SO_THAT_ALL_ELEMENTS_OF_A_RANGE_ARE_PRESENT_IN_ARRAY_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h43094daefb7e4e03E: %b"}
!2363 = !{!2364}
!2364 = distinct !{!2364, !2365, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$f32$GT$11partial_cmp17h51acfdb7fcc2b22aE: %self"}
!2365 = distinct !{!2365, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$f32$GT$11partial_cmp17h51acfdb7fcc2b22aE"}
!2366 = !{!2367}
!2367 = distinct !{!2367, !2365, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$f32$GT$11partial_cmp17h51acfdb7fcc2b22aE: %other"}
!2368 = !{!2364, !2359, !2354}
!2369 = !{!2367, !2362, !2357}
!2370 = !{!2359, !2362, !2354, !2357}
!2371 = !{!2372}
!2372 = distinct !{!2372, !2373, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h9465fa304d45e9adE: %self"}
!2373 = distinct !{!2373, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h9465fa304d45e9adE"}
!2374 = !{!2375}
!2375 = distinct !{!2375, !2376, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17ha080091ea5002393E: %a"}
!2376 = distinct !{!2376, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17ha080091ea5002393E"}
!2377 = !{!2378}
!2378 = distinct !{!2378, !2376, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17ha080091ea5002393E: %b"}
!2379 = !{!2380}
!2380 = distinct !{!2380, !2381, !"_ZN78ELEMENTS_TO_BE_ADDED_SO_THAT_ALL_ELEMENTS_OF_A_RANGE_ARE_PRESENT_IN_ARRAY_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h43094daefb7e4e03E: %a"}
!2381 = distinct !{!2381, !"_ZN78ELEMENTS_TO_BE_ADDED_SO_THAT_ALL_ELEMENTS_OF_A_RANGE_ARE_PRESENT_IN_ARRAY_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h43094daefb7e4e03E"}
!2382 = !{!2383}
!2383 = distinct !{!2383, !2381, !"_ZN78ELEMENTS_TO_BE_ADDED_SO_THAT_ALL_ELEMENTS_OF_A_RANGE_ARE_PRESENT_IN_ARRAY_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h43094daefb7e4e03E: %b"}
!2384 = !{!2385}
!2385 = distinct !{!2385, !2386, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$f32$GT$11partial_cmp17h51acfdb7fcc2b22aE: %self"}
!2386 = distinct !{!2386, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$f32$GT$11partial_cmp17h51acfdb7fcc2b22aE"}
!2387 = !{!2388}
!2388 = distinct !{!2388, !2386, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$f32$GT$11partial_cmp17h51acfdb7fcc2b22aE: %other"}
!2389 = !{!2385, !2380, !2375}
!2390 = !{!2388, !2383, !2378}
!2391 = !{!2380, !2383, !2375, !2378}
!2392 = !{!2393}
!2393 = distinct !{!2393, !2394, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h9465fa304d45e9adE: %self"}
!2394 = distinct !{!2394, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h9465fa304d45e9adE"}
!2395 = !{!2396}
!2396 = distinct !{!2396, !2397, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17ha080091ea5002393E: %a"}
!2397 = distinct !{!2397, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17ha080091ea5002393E"}
!2398 = !{!2399}
!2399 = distinct !{!2399, !2397, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17ha080091ea5002393E: %b"}
!2400 = !{!2401}
!2401 = distinct !{!2401, !2402, !"_ZN78ELEMENTS_TO_BE_ADDED_SO_THAT_ALL_ELEMENTS_OF_A_RANGE_ARE_PRESENT_IN_ARRAY_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h43094daefb7e4e03E: %a"}
!2402 = distinct !{!2402, !"_ZN78ELEMENTS_TO_BE_ADDED_SO_THAT_ALL_ELEMENTS_OF_A_RANGE_ARE_PRESENT_IN_ARRAY_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h43094daefb7e4e03E"}
!2403 = !{!2404}
!2404 = distinct !{!2404, !2402, !"_ZN78ELEMENTS_TO_BE_ADDED_SO_THAT_ALL_ELEMENTS_OF_A_RANGE_ARE_PRESENT_IN_ARRAY_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h43094daefb7e4e03E: %b"}
!2405 = !{!2406}
!2406 = distinct !{!2406, !2407, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$f32$GT$11partial_cmp17h51acfdb7fcc2b22aE: %self"}
!2407 = distinct !{!2407, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$f32$GT$11partial_cmp17h51acfdb7fcc2b22aE"}
!2408 = !{!2409}
!2409 = distinct !{!2409, !2407, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$f32$GT$11partial_cmp17h51acfdb7fcc2b22aE: %other"}
!2410 = !{!2406, !2401, !2396}
!2411 = !{!2409, !2404, !2399}
!2412 = !{!2401, !2404, !2396, !2399}
!2413 = !{!2414}
!2414 = distinct !{!2414, !2415, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h9465fa304d45e9adE: %self"}
!2415 = distinct !{!2415, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h9465fa304d45e9adE"}
!2416 = !{!2417}
!2417 = distinct !{!2417, !2418, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h9465fa304d45e9adE: %self"}
!2418 = distinct !{!2418, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h9465fa304d45e9adE"}
!2419 = distinct !{!2419, !2022}
!2420 = !{!2421}
!2421 = distinct !{!2421, !2422, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17he4137d5308dd0d04E: %a"}
!2422 = distinct !{!2422, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17he4137d5308dd0d04E"}
!2423 = !{!2424}
!2424 = distinct !{!2424, !2422, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17he4137d5308dd0d04E: %b"}
!2425 = !{!2426}
!2426 = distinct !{!2426, !2427, !"_ZN4core3ops8function5FnMut8call_mut17h363a9eaade227cf9E: argument 0"}
!2427 = distinct !{!2427, !"_ZN4core3ops8function5FnMut8call_mut17h363a9eaade227cf9E"}
!2428 = !{!2429}
!2429 = distinct !{!2429, !2430, !"_ZN4core5slice4sort6shared5pivot7median317h9a79a162f16dac2fE: %c"}
!2430 = distinct !{!2430, !"_ZN4core5slice4sort6shared5pivot7median317h9a79a162f16dac2fE"}
!2431 = !{!2432}
!2432 = distinct !{!2432, !2427, !"_ZN4core3ops8function5FnMut8call_mut17h363a9eaade227cf9E: argument 1"}
!2433 = !{!2434}
!2434 = distinct !{!2434, !2435, !"cmpfunc: %a"}
!2435 = distinct !{!2435, !"cmpfunc"}
!2436 = !{!2437}
!2437 = distinct !{!2437, !2435, !"cmpfunc: %b"}
!2438 = !{!2439}
!2439 = distinct !{!2439, !2440, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!2440 = distinct !{!2440, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!2441 = !{!2442}
!2442 = distinct !{!2442, !2440, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!2443 = !{!2439, !2434, !2426, !2421, !2444}
!2444 = distinct !{!2444, !2445, !"_ZN4core5slice4sort6shared5pivot12choose_pivot17h6506ff019939ff4bE: %v.0"}
!2445 = distinct !{!2445, !"_ZN4core5slice4sort6shared5pivot12choose_pivot17h6506ff019939ff4bE"}
!2446 = !{!2442, !2437, !2432, !2424, !2429, !2447}
!2447 = distinct !{!2447, !2445, !"_ZN4core5slice4sort6shared5pivot12choose_pivot17h6506ff019939ff4bE: %is_less"}
!2448 = !{!2442, !2437, !2432, !2424, !2444}
!2449 = !{!2439, !2434, !2426, !2421, !2429, !2447}
!2450 = !{!2451, !2453, !2455, !2457, !2444}
!2451 = distinct !{!2451, !2452, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!2452 = distinct !{!2452, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!2453 = distinct !{!2453, !2454, !"cmpfunc: %b"}
!2454 = distinct !{!2454, !"cmpfunc"}
!2455 = distinct !{!2455, !2456, !"_ZN4core3ops8function5FnMut8call_mut17h363a9eaade227cf9E: argument 1"}
!2456 = distinct !{!2456, !"_ZN4core3ops8function5FnMut8call_mut17h363a9eaade227cf9E"}
!2457 = distinct !{!2457, !2458, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17he4137d5308dd0d04E: %b"}
!2458 = distinct !{!2458, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17he4137d5308dd0d04E"}
!2459 = !{!2460, !2461, !2462, !2463, !2447}
!2460 = distinct !{!2460, !2452, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!2461 = distinct !{!2461, !2454, !"cmpfunc: %a"}
!2462 = distinct !{!2462, !2456, !"_ZN4core3ops8function5FnMut8call_mut17h363a9eaade227cf9E: argument 0"}
!2463 = distinct !{!2463, !2458, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17he4137d5308dd0d04E: %a"}
!2464 = !{!2465, !2467, !2469, !2471}
!2465 = distinct !{!2465, !2466, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!2466 = distinct !{!2466, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!2467 = distinct !{!2467, !2468, !"cmpfunc: %a"}
!2468 = distinct !{!2468, !"cmpfunc"}
!2469 = distinct !{!2469, !2470, !"_ZN4core3ops8function5FnMut8call_mut17h363a9eaade227cf9E: argument 0"}
!2470 = distinct !{!2470, !"_ZN4core3ops8function5FnMut8call_mut17h363a9eaade227cf9E"}
!2471 = distinct !{!2471, !2472, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17he4137d5308dd0d04E: %a"}
!2472 = distinct !{!2472, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17he4137d5308dd0d04E"}
!2473 = !{!2474, !2475, !2476, !2477}
!2474 = distinct !{!2474, !2466, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!2475 = distinct !{!2475, !2468, !"cmpfunc: %b"}
!2476 = distinct !{!2476, !2470, !"_ZN4core3ops8function5FnMut8call_mut17h363a9eaade227cf9E: argument 1"}
!2477 = distinct !{!2477, !2472, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17he4137d5308dd0d04E: %b"}
!2478 = !{!2479, !2481}
!2479 = distinct !{!2479, !2480, !"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$12split_at_mut17h4a7a8215d0b3eeeeE: %pair"}
!2480 = distinct !{!2480, !"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$12split_at_mut17h4a7a8215d0b3eeeeE"}
!2481 = distinct !{!2481, !2480, !"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$12split_at_mut17h4a7a8215d0b3eeeeE: %self.0"}
!2482 = !{!2483}
!2483 = distinct !{!2483, !2484, !"_ZN4core5slice4sort6shared5pivot12choose_pivot17hd9a5406a9f240046E: %v.0"}
!2484 = distinct !{!2484, !"_ZN4core5slice4sort6shared5pivot12choose_pivot17hd9a5406a9f240046E"}
!2485 = !{!2486}
!2486 = distinct !{!2486, !2487, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17ha080091ea5002393E: %a"}
!2487 = distinct !{!2487, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17ha080091ea5002393E"}
!2488 = !{!2489}
!2489 = distinct !{!2489, !2487, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17ha080091ea5002393E: %b"}
!2490 = !{!2491}
!2491 = distinct !{!2491, !2492, !"_ZN78ELEMENTS_TO_BE_ADDED_SO_THAT_ALL_ELEMENTS_OF_A_RANGE_ARE_PRESENT_IN_ARRAY_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h43094daefb7e4e03E: %a"}
!2492 = distinct !{!2492, !"_ZN78ELEMENTS_TO_BE_ADDED_SO_THAT_ALL_ELEMENTS_OF_A_RANGE_ARE_PRESENT_IN_ARRAY_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h43094daefb7e4e03E"}
!2493 = !{!2494}
!2494 = distinct !{!2494, !2495, !"_ZN4core5slice4sort6shared5pivot7median317he379b955d68dac04E: %c"}
!2495 = distinct !{!2495, !"_ZN4core5slice4sort6shared5pivot7median317he379b955d68dac04E"}
!2496 = !{!2497}
!2497 = distinct !{!2497, !2492, !"_ZN78ELEMENTS_TO_BE_ADDED_SO_THAT_ALL_ELEMENTS_OF_A_RANGE_ARE_PRESENT_IN_ARRAY_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h43094daefb7e4e03E: %b"}
!2498 = !{!2499}
!2499 = distinct !{!2499, !2500, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$f32$GT$11partial_cmp17h51acfdb7fcc2b22aE: %self"}
!2500 = distinct !{!2500, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$f32$GT$11partial_cmp17h51acfdb7fcc2b22aE"}
!2501 = !{!2502}
!2502 = distinct !{!2502, !2500, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$f32$GT$11partial_cmp17h51acfdb7fcc2b22aE: %other"}
!2503 = !{!2499, !2491, !2486, !2483}
!2504 = !{!2502, !2497, !2489, !2494, !2505}
!2505 = distinct !{!2505, !2484, !"_ZN4core5slice4sort6shared5pivot12choose_pivot17hd9a5406a9f240046E: %is_less"}
!2506 = !{!2502, !2497, !2489, !2483}
!2507 = !{!2499, !2491, !2486, !2494, !2505}
!2508 = !{!2491, !2497, !2486, !2489, !2494, !2483, !2505}
!2509 = !{!2510}
!2510 = distinct !{!2510, !2511, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17ha080091ea5002393E: %b"}
!2511 = distinct !{!2511, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17ha080091ea5002393E"}
!2512 = !{!2513}
!2513 = distinct !{!2513, !2514, !"_ZN78ELEMENTS_TO_BE_ADDED_SO_THAT_ALL_ELEMENTS_OF_A_RANGE_ARE_PRESENT_IN_ARRAY_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h43094daefb7e4e03E: %b"}
!2514 = distinct !{!2514, !"_ZN78ELEMENTS_TO_BE_ADDED_SO_THAT_ALL_ELEMENTS_OF_A_RANGE_ARE_PRESENT_IN_ARRAY_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h43094daefb7e4e03E"}
!2515 = !{!2516, !2513, !2510, !2483}
!2516 = distinct !{!2516, !2517, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$f32$GT$11partial_cmp17h51acfdb7fcc2b22aE: %other"}
!2517 = distinct !{!2517, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$f32$GT$11partial_cmp17h51acfdb7fcc2b22aE"}
!2518 = !{!2519, !2520, !2521, !2505}
!2519 = distinct !{!2519, !2517, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$f32$GT$11partial_cmp17h51acfdb7fcc2b22aE: %self"}
!2520 = distinct !{!2520, !2514, !"_ZN78ELEMENTS_TO_BE_ADDED_SO_THAT_ALL_ELEMENTS_OF_A_RANGE_ARE_PRESENT_IN_ARRAY_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h43094daefb7e4e03E: %a"}
!2521 = distinct !{!2521, !2511, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17ha080091ea5002393E: %a"}
!2522 = !{!2520, !2513, !2521, !2510, !2483, !2505}
!2523 = !{!2524, !2526, !2527, !2529, !2483, !2505}
!2524 = distinct !{!2524, !2525, !"_ZN78ELEMENTS_TO_BE_ADDED_SO_THAT_ALL_ELEMENTS_OF_A_RANGE_ARE_PRESENT_IN_ARRAY_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h43094daefb7e4e03E: %a"}
!2525 = distinct !{!2525, !"_ZN78ELEMENTS_TO_BE_ADDED_SO_THAT_ALL_ELEMENTS_OF_A_RANGE_ARE_PRESENT_IN_ARRAY_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h43094daefb7e4e03E"}
!2526 = distinct !{!2526, !2525, !"_ZN78ELEMENTS_TO_BE_ADDED_SO_THAT_ALL_ELEMENTS_OF_A_RANGE_ARE_PRESENT_IN_ARRAY_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h43094daefb7e4e03E: %b"}
!2527 = distinct !{!2527, !2528, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17ha080091ea5002393E: %a"}
!2528 = distinct !{!2528, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17ha080091ea5002393E"}
!2529 = distinct !{!2529, !2528, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17ha080091ea5002393E: %b"}
!2530 = !{!2531}
!2531 = distinct !{!2531, !2532, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17ha080091ea5002393E: %a"}
!2532 = distinct !{!2532, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17ha080091ea5002393E"}
!2533 = !{!2534}
!2534 = distinct !{!2534, !2535, !"_ZN78ELEMENTS_TO_BE_ADDED_SO_THAT_ALL_ELEMENTS_OF_A_RANGE_ARE_PRESENT_IN_ARRAY_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h43094daefb7e4e03E: %a"}
!2535 = distinct !{!2535, !"_ZN78ELEMENTS_TO_BE_ADDED_SO_THAT_ALL_ELEMENTS_OF_A_RANGE_ARE_PRESENT_IN_ARRAY_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h43094daefb7e4e03E"}
!2536 = !{!2537, !2534, !2531}
!2537 = distinct !{!2537, !2538, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$f32$GT$11partial_cmp17h51acfdb7fcc2b22aE: %self"}
!2538 = distinct !{!2538, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$f32$GT$11partial_cmp17h51acfdb7fcc2b22aE"}
!2539 = !{!2540, !2541, !2542}
!2540 = distinct !{!2540, !2538, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$f32$GT$11partial_cmp17h51acfdb7fcc2b22aE: %other"}
!2541 = distinct !{!2541, !2535, !"_ZN78ELEMENTS_TO_BE_ADDED_SO_THAT_ALL_ELEMENTS_OF_A_RANGE_ARE_PRESENT_IN_ARRAY_emit6f_gold28_$u7b$$u7b$closure$u7d$$u7d$17h43094daefb7e4e03E: %b"}
!2542 = distinct !{!2542, !2532, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17ha080091ea5002393E: %b"}
!2543 = !{!2534, !2541, !2531, !2542}
!2544 = !{!2545, !2547}
!2545 = distinct !{!2545, !2546, !"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$12split_at_mut17h1fd75c439b0f7021E: %pair"}
!2546 = distinct !{!2546, !"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$12split_at_mut17h1fd75c439b0f7021E"}
!2547 = distinct !{!2547, !2546, !"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$12split_at_mut17h1fd75c439b0f7021E: %self.0"}
!2548 = !{i64 0, i64 -9223372036854775808}
!2549 = !{!2550}
!2550 = distinct !{!2550, !2551, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!2551 = distinct !{!2551, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!2552 = !{!2553}
!2553 = distinct !{!2553, !2551, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!2554 = !{!2555}
!2555 = distinct !{!2555, !2556, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by17h49c61478579fe639E: %self.0"}
!2556 = distinct !{!2556, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by17h49c61478579fe639E"}
!2557 = !{!2558, !2560, !2555}
!2558 = distinct !{!2558, !2559, !"_ZN5alloc5slice11stable_sort17h2dbae5c74c9512bcE: %v.0"}
!2559 = distinct !{!2559, !"_ZN5alloc5slice11stable_sort17h2dbae5c74c9512bcE"}
!2560 = distinct !{!2560, !2559, !"_ZN5alloc5slice11stable_sort17h2dbae5c74c9512bcE: argument 1"}
!2561 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!2562 = !{!2563}
!2563 = distinct !{!2563, !2564, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by17hb0220a00e5e99892E: %self.0"}
!2564 = distinct !{!2564, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by17hb0220a00e5e99892E"}
!2565 = !{!2566, !2568, !2563}
!2566 = distinct !{!2566, !2567, !"_ZN5alloc5slice11stable_sort17he1b675446aed81f5E: %v.0"}
!2567 = distinct !{!2567, !"_ZN5alloc5slice11stable_sort17he1b675446aed81f5E"}
!2568 = distinct !{!2568, !2567, !"_ZN5alloc5slice11stable_sort17he1b675446aed81f5E: argument 1"}

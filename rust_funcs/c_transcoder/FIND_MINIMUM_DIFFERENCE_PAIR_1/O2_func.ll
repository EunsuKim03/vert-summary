define noundef i32 @f_gold(ptr noalias noundef nonnull align 4 %arr.0, i64 noundef range(i64 0, 2305843009213693952) %arr.1, i32 noundef %n) unnamed_addr #1 personality ptr @rust_eh_personality {
start:
  %is_less.i = alloca [0 x i8], align 1
  %_4 = sext i32 %n to i64
  %_18.not = icmp ult i64 %arr.1, %_4
  br i1 %_18.not, label %bb11, label %bb9, !prof !271

bb9:                                              ; preds = %start
  call void @llvm.lifetime.start.p0(i64 0, ptr nonnull %is_less.i)
  %b.i = icmp ult i32 %n, 2
  br i1 %b.i, label %_ZN5alloc5slice11stable_sort17h5d2b3f314554494aE.exit, label %bb7.i, !prof !1817

bb7.i:                                            ; preds = %bb9
  %b1.i = icmp ult i32 %n, 21
  br i1 %b1.i, label %bb9.i, label %bb10.i, !prof !1817

bb10.i:                                           ; preds = %bb7.i
; call core::slice::sort::stable::driftsort_main
  call void @_ZN4core5slice4sort6stable14driftsort_main17h0125b80e416ec6f7E(ptr noalias noundef nonnull align 4 %arr.0, i64 noundef range(i64 0, 2147483648) %_4, ptr noalias noundef nonnull align 1 %is_less.i)
  br label %_ZN5alloc5slice11stable_sort17h5d2b3f314554494aE.exit

bb9.i:                                            ; preds = %bb7.i
  %v_end.idx.i.i = shl nuw nsw i64 %_4, 2
  %v_end.i.i = getelementptr inbounds nuw i8, ptr %arr.0, i64 %v_end.idx.i.i
  %tail.sroa.0.01.i.i = getelementptr inbounds nuw i8, ptr %arr.0, i64 4
  %0 = and i32 %n, 1
  %lcmp.mod.not.not = icmp eq i32 %0, 0
  br i1 %lcmp.mod.not.not, label %bb5.i.i.prol, label %bb5.i.i.prol.loopexit

bb5.i.i.prol:                                     ; preds = %bb9.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1818)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1821)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1823)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1826)
  %_3.i.i.i.i.i.prol = load i32, ptr %tail.sroa.0.01.i.i, align 4, !alias.scope !1828, !noalias !1833, !noundef !18
  %_4.i.i.i.i.i.prol = load i32, ptr %arr.0, align 4, !alias.scope !1834, !noalias !1835, !noundef !18
  %_0.i.i.i.i.i.prol = icmp slt i32 %_3.i.i.i.i.i.prol, %_4.i.i.i.i.i.prol
  br i1 %_0.i.i.i.i.i.prol, label %bb4.i.i.i.prol, label %_ZN4core5slice4sort6shared9smallsort11insert_tail17hb865fc1a57428a68E.exit.i.i.prol

bb4.i.i.i.prol:                                   ; preds = %bb5.i.i.prol, %bb7.i.i.i.prol
  %1 = phi i32 [ %_4.i.i2.i.i.i.prol, %bb7.i.i.i.prol ], [ %_4.i.i.i.i.i.prol, %bb5.i.i.prol ]
  %gap_guard.sroa.5.0.i.i.i.prol = phi ptr [ %sift.sroa.0.0.i.i.i.prol, %bb7.i.i.i.prol ], [ %tail.sroa.0.01.i.i, %bb5.i.i.prol ]
  %sift.sroa.0.0.i.i.i.prol = phi ptr [ %2, %bb7.i.i.i.prol ], [ %arr.0, %bb5.i.i.prol ]
  store i32 %1, ptr %gap_guard.sroa.5.0.i.i.i.prol, align 4, !alias.scope !1836
  %_18.i.i.i.prol = icmp eq ptr %sift.sroa.0.0.i.i.i.prol, %arr.0
  br i1 %_18.i.i.i.prol, label %bb10.i.i.i.prol, label %bb7.i.i.i.prol

bb7.i.i.i.prol:                                   ; preds = %bb4.i.i.i.prol
  %2 = getelementptr inbounds i8, ptr %sift.sroa.0.0.i.i.i.prol, i64 -4
  %_4.i.i2.i.i.i.prol = load i32, ptr %2, align 4, !alias.scope !1837, !noalias !1842, !noundef !18
  %_0.i.i3.i.i.i.prol = icmp slt i32 %_3.i.i.i.i.i.prol, %_4.i.i2.i.i.i.prol
  br i1 %_0.i.i3.i.i.i.prol, label %bb4.i.i.i.prol, label %bb10.i.i.i.prol

bb10.i.i.i.prol:                                  ; preds = %bb7.i.i.i.prol, %bb4.i.i.i.prol
  %sift.sroa.0.0.i.lcssa.i.i.prol = phi ptr [ %sift.sroa.0.0.i.i.i.prol, %bb7.i.i.i.prol ], [ %arr.0, %bb4.i.i.i.prol ]
  store i32 %_3.i.i.i.i.i.prol, ptr %sift.sroa.0.0.i.lcssa.i.i.prol, align 4, !alias.scope !1836, !noalias !1845
  br label %_ZN4core5slice4sort6shared9smallsort11insert_tail17hb865fc1a57428a68E.exit.i.i.prol

_ZN4core5slice4sort6shared9smallsort11insert_tail17hb865fc1a57428a68E.exit.i.i.prol: ; preds = %bb10.i.i.i.prol, %bb5.i.i.prol
  %tail.sroa.0.0.i.i.prol = getelementptr inbounds nuw i8, ptr %arr.0, i64 8
  br label %bb5.i.i.prol.loopexit

bb5.i.i.prol.loopexit:                            ; preds = %_ZN4core5slice4sort6shared9smallsort11insert_tail17hb865fc1a57428a68E.exit.i.i.prol, %bb9.i
  %tail.sroa.0.04.i.i.unr = phi ptr [ %tail.sroa.0.01.i.i, %bb9.i ], [ %tail.sroa.0.0.i.i.prol, %_ZN4core5slice4sort6shared9smallsort11insert_tail17hb865fc1a57428a68E.exit.i.i.prol ]
  %v.0.pn3.i.i.unr = phi ptr [ %arr.0, %bb9.i ], [ %tail.sroa.0.01.i.i, %_ZN4core5slice4sort6shared9smallsort11insert_tail17hb865fc1a57428a68E.exit.i.i.prol ]
  %3 = icmp eq i32 %n, 2
  br i1 %3, label %_ZN5alloc5slice11stable_sort17h5d2b3f314554494aE.exit, label %bb5.i.i

bb5.i.i:                                          ; preds = %bb5.i.i.prol.loopexit, %_ZN4core5slice4sort6shared9smallsort11insert_tail17hb865fc1a57428a68E.exit.i.i.1
  %tail.sroa.0.04.i.i = phi ptr [ %tail.sroa.0.0.i.i.1, %_ZN4core5slice4sort6shared9smallsort11insert_tail17hb865fc1a57428a68E.exit.i.i.1 ], [ %tail.sroa.0.04.i.i.unr, %bb5.i.i.prol.loopexit ]
  %v.0.pn3.i.i = phi ptr [ %tail.sroa.0.0.i.i, %_ZN4core5slice4sort6shared9smallsort11insert_tail17hb865fc1a57428a68E.exit.i.i.1 ], [ %v.0.pn3.i.i.unr, %bb5.i.i.prol.loopexit ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1818)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1821)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1823)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1826)
  %_3.i.i.i.i.i = load i32, ptr %tail.sroa.0.04.i.i, align 4, !alias.scope !1828, !noalias !1833, !noundef !18
  %_4.i.i.i.i.i = load i32, ptr %v.0.pn3.i.i, align 4, !alias.scope !1834, !noalias !1835, !noundef !18
  %_0.i.i.i.i.i = icmp slt i32 %_3.i.i.i.i.i, %_4.i.i.i.i.i
  br i1 %_0.i.i.i.i.i, label %bb4.i.i.i, label %_ZN4core5slice4sort6shared9smallsort11insert_tail17hb865fc1a57428a68E.exit.i.i

bb4.i.i.i:                                        ; preds = %bb5.i.i, %bb7.i.i.i
  %4 = phi i32 [ %_4.i.i2.i.i.i, %bb7.i.i.i ], [ %_4.i.i.i.i.i, %bb5.i.i ]
  %gap_guard.sroa.5.0.i.i.i = phi ptr [ %sift.sroa.0.0.i.i.i, %bb7.i.i.i ], [ %tail.sroa.0.04.i.i, %bb5.i.i ]
  %sift.sroa.0.0.i.i.i = phi ptr [ %5, %bb7.i.i.i ], [ %v.0.pn3.i.i, %bb5.i.i ]
  store i32 %4, ptr %gap_guard.sroa.5.0.i.i.i, align 4, !alias.scope !1836
  %_18.i.i.i = icmp eq ptr %sift.sroa.0.0.i.i.i, %arr.0
  br i1 %_18.i.i.i, label %bb10.i.i.i, label %bb7.i.i.i

bb7.i.i.i:                                        ; preds = %bb4.i.i.i
  %5 = getelementptr inbounds i8, ptr %sift.sroa.0.0.i.i.i, i64 -4
  %_4.i.i2.i.i.i = load i32, ptr %5, align 4, !alias.scope !1837, !noalias !1842, !noundef !18
  %_0.i.i3.i.i.i = icmp slt i32 %_3.i.i.i.i.i, %_4.i.i2.i.i.i
  br i1 %_0.i.i3.i.i.i, label %bb4.i.i.i, label %bb10.i.i.i

bb10.i.i.i:                                       ; preds = %bb7.i.i.i, %bb4.i.i.i
  %sift.sroa.0.0.i.lcssa.i.i = phi ptr [ %sift.sroa.0.0.i.i.i, %bb7.i.i.i ], [ %arr.0, %bb4.i.i.i ]
  store i32 %_3.i.i.i.i.i, ptr %sift.sroa.0.0.i.lcssa.i.i, align 4, !alias.scope !1836, !noalias !1845
  br label %_ZN4core5slice4sort6shared9smallsort11insert_tail17hb865fc1a57428a68E.exit.i.i

_ZN4core5slice4sort6shared9smallsort11insert_tail17hb865fc1a57428a68E.exit.i.i: ; preds = %bb10.i.i.i, %bb5.i.i
  %tail.sroa.0.0.i.i = getelementptr inbounds nuw i8, ptr %tail.sroa.0.04.i.i, i64 4
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1850)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1852)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1854)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1856)
  %_3.i.i.i.i.i.1 = load i32, ptr %tail.sroa.0.0.i.i, align 4, !alias.scope !1858, !noalias !1859, !noundef !18
  %_4.i.i.i.i.i.1 = load i32, ptr %tail.sroa.0.04.i.i, align 4, !alias.scope !1860, !noalias !1861, !noundef !18
  %_0.i.i.i.i.i.1 = icmp slt i32 %_3.i.i.i.i.i.1, %_4.i.i.i.i.i.1
  br i1 %_0.i.i.i.i.i.1, label %bb4.i.i.i.1, label %_ZN4core5slice4sort6shared9smallsort11insert_tail17hb865fc1a57428a68E.exit.i.i.1

bb4.i.i.i.1:                                      ; preds = %_ZN4core5slice4sort6shared9smallsort11insert_tail17hb865fc1a57428a68E.exit.i.i, %bb7.i.i.i.1
  %6 = phi i32 [ %_4.i.i2.i.i.i.1, %bb7.i.i.i.1 ], [ %_4.i.i.i.i.i.1, %_ZN4core5slice4sort6shared9smallsort11insert_tail17hb865fc1a57428a68E.exit.i.i ]
  %gap_guard.sroa.5.0.i.i.i.1 = phi ptr [ %sift.sroa.0.0.i.i.i.1, %bb7.i.i.i.1 ], [ %tail.sroa.0.0.i.i, %_ZN4core5slice4sort6shared9smallsort11insert_tail17hb865fc1a57428a68E.exit.i.i ]
  %sift.sroa.0.0.i.i.i.1 = phi ptr [ %7, %bb7.i.i.i.1 ], [ %tail.sroa.0.04.i.i, %_ZN4core5slice4sort6shared9smallsort11insert_tail17hb865fc1a57428a68E.exit.i.i ]
  store i32 %6, ptr %gap_guard.sroa.5.0.i.i.i.1, align 4, !alias.scope !1836
  %_18.i.i.i.1 = icmp eq ptr %sift.sroa.0.0.i.i.i.1, %arr.0
  br i1 %_18.i.i.i.1, label %bb10.i.i.i.1, label %bb7.i.i.i.1

bb7.i.i.i.1:                                      ; preds = %bb4.i.i.i.1
  %7 = getelementptr inbounds i8, ptr %sift.sroa.0.0.i.i.i.1, i64 -4
  %_4.i.i2.i.i.i.1 = load i32, ptr %7, align 4, !alias.scope !1837, !noalias !1842, !noundef !18
  %_0.i.i3.i.i.i.1 = icmp slt i32 %_3.i.i.i.i.i.1, %_4.i.i2.i.i.i.1
  br i1 %_0.i.i3.i.i.i.1, label %bb4.i.i.i.1, label %bb10.i.i.i.1

bb10.i.i.i.1:                                     ; preds = %bb7.i.i.i.1, %bb4.i.i.i.1
  %sift.sroa.0.0.i.lcssa.i.i.1 = phi ptr [ %sift.sroa.0.0.i.i.i.1, %bb7.i.i.i.1 ], [ %arr.0, %bb4.i.i.i.1 ]
  store i32 %_3.i.i.i.i.i.1, ptr %sift.sroa.0.0.i.lcssa.i.i.1, align 4, !alias.scope !1836, !noalias !1845
  br label %_ZN4core5slice4sort6shared9smallsort11insert_tail17hb865fc1a57428a68E.exit.i.i.1

_ZN4core5slice4sort6shared9smallsort11insert_tail17hb865fc1a57428a68E.exit.i.i.1: ; preds = %bb10.i.i.i.1, %_ZN4core5slice4sort6shared9smallsort11insert_tail17hb865fc1a57428a68E.exit.i.i
  %tail.sroa.0.0.i.i.1 = getelementptr inbounds nuw i8, ptr %tail.sroa.0.04.i.i, i64 8
  %_11.not.i.i.1 = icmp eq ptr %tail.sroa.0.0.i.i.1, %v_end.i.i
  br i1 %_11.not.i.i.1, label %_ZN5alloc5slice11stable_sort17h5d2b3f314554494aE.exit, label %bb5.i.i

_ZN5alloc5slice11stable_sort17h5d2b3f314554494aE.exit: ; preds = %bb5.i.i.prol.loopexit, %_ZN4core5slice4sort6shared9smallsort11insert_tail17hb865fc1a57428a68E.exit.i.i.1, %bb9, %bb10.i
  call void @llvm.lifetime.end.p0(i64 0, ptr nonnull %is_less.i)
  %iter1 = add nsw i64 %_4, -1
  %_278.not = icmp eq i64 %iter1, 0
  br i1 %_278.not, label %bb16, label %bb15.preheader

bb15.preheader:                                   ; preds = %_ZN5alloc5slice11stable_sort17h5d2b3f314554494aE.exit
  %8 = call i64 @llvm.usub.sat.i64(i64 %_4, i64 1)
  %9 = add nsw i64 %_4, -2
  %umin = call i64 @llvm.umin.i64(i64 %8, i64 %9)
  %10 = add nsw i64 %umin, 1
  %min.iters.check = icmp ult i64 %10, 9
  br i1 %min.iters.check, label %bb15.preheader19, label %vector.ph

vector.ph:                                        ; preds = %bb15.preheader
  %n.mod.vf = and i64 %10, 7
  %11 = icmp eq i64 %n.mod.vf, 0
  %12 = select i1 %11, i64 8, i64 %n.mod.vf
  %n.vec = sub i64 %10, %12
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %vec.phi = phi <4 x i32> [ splat (i32 2147483647), %vector.ph ], [ %20, %vector.body ]
  %vec.phi15 = phi <4 x i32> [ splat (i32 2147483647), %vector.ph ], [ %21, %vector.body ]
  %13 = getelementptr inbounds nuw i32, ptr %arr.0, i64 %index
  %14 = getelementptr inbounds nuw i8, ptr %13, i64 4
  %15 = getelementptr inbounds nuw i8, ptr %13, i64 20
  %wide.load = load <4 x i32>, ptr %14, align 4
  %wide.load16 = load <4 x i32>, ptr %15, align 4
  %16 = getelementptr inbounds nuw i32, ptr %arr.0, i64 %index
  %17 = getelementptr inbounds nuw i8, ptr %16, i64 16
  %wide.load17 = load <4 x i32>, ptr %16, align 4
  %wide.load18 = load <4 x i32>, ptr %17, align 4
  %18 = sub <4 x i32> %wide.load, %wide.load17
  %19 = sub <4 x i32> %wide.load16, %wide.load18
  %20 = call <4 x i32> @llvm.smin.v4i32(<4 x i32> %18, <4 x i32> %vec.phi)
  %21 = call <4 x i32> @llvm.smin.v4i32(<4 x i32> %19, <4 x i32> %vec.phi15)
  %index.next = add nuw i64 %index, 8
  %22 = icmp eq i64 %index.next, %n.vec
  br i1 %22, label %middle.block, label %vector.body, !llvm.loop !1862

middle.block:                                     ; preds = %vector.body
  %rdx.minmax = call <4 x i32> @llvm.smin.v4i32(<4 x i32> %20, <4 x i32> %21)
  %23 = call i32 @llvm.vector.reduce.smin.v4i32(<4 x i32> %rdx.minmax)
  br label %bb15.preheader19

bb15.preheader19:                                 ; preds = %bb15.preheader, %middle.block
  %diff.sroa.0.010.ph = phi i32 [ 2147483647, %bb15.preheader ], [ %23, %middle.block ]
  %iter.sroa.0.09.ph = phi i64 [ 0, %bb15.preheader ], [ %n.vec, %middle.block ]
  br label %bb15

bb11:                                             ; preds = %start
; call core::slice::index::slice_index_fail
  tail call void @_ZN4core5slice5index16slice_index_fail17h62807bcaa490c9c1E(i64 noundef 0, i64 noundef %_4, i64 noundef %arr.1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_8758960cdfc140d3d64ebb07cbafe497) #18
  unreachable

bb16:                                             ; preds = %bb3, %_ZN5alloc5slice11stable_sort17h5d2b3f314554494aE.exit
  %diff.sroa.0.0.lcssa = phi i32 [ 2147483647, %_ZN5alloc5slice11stable_sort17h5d2b3f314554494aE.exit ], [ %spec.select, %bb3 ]
  ret i32 %diff.sroa.0.0.lcssa

bb15:                                             ; preds = %bb15.preheader19, %bb3
  %diff.sroa.0.010 = phi i32 [ %spec.select, %bb3 ], [ %diff.sroa.0.010.ph, %bb15.preheader19 ]
  %iter.sroa.0.09 = phi i64 [ %24, %bb3 ], [ %iter.sroa.0.09.ph, %bb15.preheader19 ]
  %24 = add nuw i64 %iter.sroa.0.09, 1
  %exitcond.not = icmp eq i64 %iter.sroa.0.09, %8
  br i1 %exitcond.not, label %panic, label %bb3

panic:                                            ; preds = %bb15
; call core::panicking::panic_bounds_check
  call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef %24, i64 noundef %_4, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_22a390995d2a7031794e9abf51bda787) #18
  unreachable

bb3:                                              ; preds = %bb15
  %25 = getelementptr inbounds nuw i32, ptr %arr.0, i64 %24
  %_10 = load i32, ptr %25, align 4, !noundef !18
  %26 = getelementptr inbounds nuw i32, ptr %arr.0, i64 %iter.sroa.0.09
  %_13 = load i32, ptr %26, align 4, !noundef !18
  %_9 = sub i32 %_10, %_13
  %spec.select = call i32 @llvm.smin.i32(i32 %_9, i32 %diff.sroa.0.010)
  %exitcond12.not = icmp eq i64 %24, %iter1
  br i1 %exitcond12.not, label %bb16, label %bb15, !llvm.loop !1863
}

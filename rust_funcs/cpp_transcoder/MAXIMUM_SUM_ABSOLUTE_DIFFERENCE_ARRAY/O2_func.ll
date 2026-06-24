define noundef i32 @f_gold(ptr noalias noundef nonnull align 4 %a.0, i64 noundef range(i64 0, 2305843009213693952) %a.1, i32 noundef %n) unnamed_addr #1 personality ptr @rust_eh_personality {
start:
  %is_less.i = alloca [0 x i8], align 1
  %final_sequence = alloca [24 x i8], align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %final_sequence)
  store i64 0, ptr %final_sequence, align 8
  %0 = getelementptr inbounds nuw i8, ptr %final_sequence, i64 8
  store ptr inttoptr (i64 4 to ptr), ptr %0, align 8
  %1 = getelementptr inbounds nuw i8, ptr %final_sequence, i64 16
  store i64 0, ptr %1, align 8
  call void @llvm.lifetime.start.p0(i64 0, ptr nonnull %is_less.i)
  %b.i = icmp samesign ult i64 %a.1, 2
  br i1 %b.i, label %bb1, label %bb7.i, !prof !1818

bb7.i:                                            ; preds = %start
  %b1.i = icmp samesign ult i64 %a.1, 21
  br i1 %b1.i, label %bb9.i, label %bb10.i, !prof !1818

bb10.i:                                           ; preds = %bb7.i
; invoke core::slice::sort::stable::driftsort_main
  invoke void @_ZN4core5slice4sort6stable14driftsort_main17hafe5787a31fd95b4E(ptr noalias noundef nonnull align 4 %a.0, i64 noundef range(i64 0, 2305843009213693952) %a.1, ptr noalias noundef nonnull align 1 %is_less.i)
          to label %bb1 unwind label %cleanup.loopexit.split-lp

bb9.i:                                            ; preds = %bb7.i
  %v_end.idx.i.i = shl nuw nsw i64 %a.1, 2
  %v_end.i.i = getelementptr inbounds nuw i8, ptr %a.0, i64 %v_end.idx.i.i
  %tail.sroa.0.01.i.i = getelementptr inbounds nuw i8, ptr %a.0, i64 4
  %2 = and i64 %a.1, 1
  %lcmp.mod.not.not = icmp eq i64 %2, 0
  br i1 %lcmp.mod.not.not, label %bb5.i.i.prol, label %bb5.i.i.prol.loopexit

bb5.i.i.prol:                                     ; preds = %bb9.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1826)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1829)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1831)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1834)
  %_3.i.i.i.i.i.prol = load i32, ptr %tail.sroa.0.01.i.i, align 4, !alias.scope !1836, !noalias !1841, !noundef !18
  %_4.i.i.i.i.i.prol = load i32, ptr %a.0, align 4, !alias.scope !1842, !noalias !1843, !noundef !18
  %_0.i.i.i.i.i.prol = icmp slt i32 %_3.i.i.i.i.i.prol, %_4.i.i.i.i.i.prol
  br i1 %_0.i.i.i.i.i.prol, label %bb4.i.i.i.prol, label %_ZN4core5slice4sort6shared9smallsort11insert_tail17h3c1ea7084d42895cE.exit.i.i.prol

bb4.i.i.i.prol:                                   ; preds = %bb5.i.i.prol, %bb7.i.i.i.prol
  %3 = phi i32 [ %_4.i.i2.i.i.i.prol, %bb7.i.i.i.prol ], [ %_4.i.i.i.i.i.prol, %bb5.i.i.prol ]
  %gap_guard.sroa.5.0.i.i.i.prol = phi ptr [ %sift.sroa.0.0.i.i.i.prol, %bb7.i.i.i.prol ], [ %tail.sroa.0.01.i.i, %bb5.i.i.prol ]
  %sift.sroa.0.0.i.i.i.prol = phi ptr [ %4, %bb7.i.i.i.prol ], [ %a.0, %bb5.i.i.prol ]
  store i32 %3, ptr %gap_guard.sroa.5.0.i.i.i.prol, align 4, !alias.scope !1844
  %_18.i.i.i.prol = icmp eq ptr %sift.sroa.0.0.i.i.i.prol, %a.0
  br i1 %_18.i.i.i.prol, label %bb10.i.i.i.prol, label %bb7.i.i.i.prol

bb7.i.i.i.prol:                                   ; preds = %bb4.i.i.i.prol
  %4 = getelementptr inbounds i8, ptr %sift.sroa.0.0.i.i.i.prol, i64 -4
  %_4.i.i2.i.i.i.prol = load i32, ptr %4, align 4, !alias.scope !1845, !noalias !1850, !noundef !18
  %_0.i.i3.i.i.i.prol = icmp slt i32 %_3.i.i.i.i.i.prol, %_4.i.i2.i.i.i.prol
  br i1 %_0.i.i3.i.i.i.prol, label %bb4.i.i.i.prol, label %bb10.i.i.i.prol

bb10.i.i.i.prol:                                  ; preds = %bb7.i.i.i.prol, %bb4.i.i.i.prol
  %sift.sroa.0.0.i.lcssa.i.i.prol = phi ptr [ %sift.sroa.0.0.i.i.i.prol, %bb7.i.i.i.prol ], [ %a.0, %bb4.i.i.i.prol ]
  store i32 %_3.i.i.i.i.i.prol, ptr %sift.sroa.0.0.i.lcssa.i.i.prol, align 4, !alias.scope !1844, !noalias !1853
  br label %_ZN4core5slice4sort6shared9smallsort11insert_tail17h3c1ea7084d42895cE.exit.i.i.prol

_ZN4core5slice4sort6shared9smallsort11insert_tail17h3c1ea7084d42895cE.exit.i.i.prol: ; preds = %bb10.i.i.i.prol, %bb5.i.i.prol
  %tail.sroa.0.0.i.i.prol = getelementptr inbounds nuw i8, ptr %a.0, i64 8
  br label %bb5.i.i.prol.loopexit

bb5.i.i.prol.loopexit:                            ; preds = %_ZN4core5slice4sort6shared9smallsort11insert_tail17h3c1ea7084d42895cE.exit.i.i.prol, %bb9.i
  %tail.sroa.0.04.i.i.unr = phi ptr [ %tail.sroa.0.01.i.i, %bb9.i ], [ %tail.sroa.0.0.i.i.prol, %_ZN4core5slice4sort6shared9smallsort11insert_tail17h3c1ea7084d42895cE.exit.i.i.prol ]
  %v.0.pn3.i.i.unr = phi ptr [ %a.0, %bb9.i ], [ %tail.sroa.0.01.i.i, %_ZN4core5slice4sort6shared9smallsort11insert_tail17h3c1ea7084d42895cE.exit.i.i.prol ]
  %5 = icmp eq i64 %a.1, 2
  br i1 %5, label %bb1, label %bb5.i.i

bb5.i.i:                                          ; preds = %bb5.i.i.prol.loopexit, %_ZN4core5slice4sort6shared9smallsort11insert_tail17h3c1ea7084d42895cE.exit.i.i.1
  %tail.sroa.0.04.i.i = phi ptr [ %tail.sroa.0.0.i.i.1, %_ZN4core5slice4sort6shared9smallsort11insert_tail17h3c1ea7084d42895cE.exit.i.i.1 ], [ %tail.sroa.0.04.i.i.unr, %bb5.i.i.prol.loopexit ]
  %v.0.pn3.i.i = phi ptr [ %tail.sroa.0.0.i.i, %_ZN4core5slice4sort6shared9smallsort11insert_tail17h3c1ea7084d42895cE.exit.i.i.1 ], [ %v.0.pn3.i.i.unr, %bb5.i.i.prol.loopexit ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1826)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1829)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1831)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1834)
  %_3.i.i.i.i.i = load i32, ptr %tail.sroa.0.04.i.i, align 4, !alias.scope !1836, !noalias !1841, !noundef !18
  %_4.i.i.i.i.i = load i32, ptr %v.0.pn3.i.i, align 4, !alias.scope !1842, !noalias !1843, !noundef !18
  %_0.i.i.i.i.i = icmp slt i32 %_3.i.i.i.i.i, %_4.i.i.i.i.i
  br i1 %_0.i.i.i.i.i, label %bb4.i.i.i, label %_ZN4core5slice4sort6shared9smallsort11insert_tail17h3c1ea7084d42895cE.exit.i.i

bb4.i.i.i:                                        ; preds = %bb5.i.i, %bb7.i.i.i
  %6 = phi i32 [ %_4.i.i2.i.i.i, %bb7.i.i.i ], [ %_4.i.i.i.i.i, %bb5.i.i ]
  %gap_guard.sroa.5.0.i.i.i = phi ptr [ %sift.sroa.0.0.i.i.i, %bb7.i.i.i ], [ %tail.sroa.0.04.i.i, %bb5.i.i ]
  %sift.sroa.0.0.i.i.i = phi ptr [ %7, %bb7.i.i.i ], [ %v.0.pn3.i.i, %bb5.i.i ]
  store i32 %6, ptr %gap_guard.sroa.5.0.i.i.i, align 4, !alias.scope !1844
  %_18.i.i.i = icmp eq ptr %sift.sroa.0.0.i.i.i, %a.0
  br i1 %_18.i.i.i, label %bb10.i.i.i, label %bb7.i.i.i

bb7.i.i.i:                                        ; preds = %bb4.i.i.i
  %7 = getelementptr inbounds i8, ptr %sift.sroa.0.0.i.i.i, i64 -4
  %_4.i.i2.i.i.i = load i32, ptr %7, align 4, !alias.scope !1845, !noalias !1850, !noundef !18
  %_0.i.i3.i.i.i = icmp slt i32 %_3.i.i.i.i.i, %_4.i.i2.i.i.i
  br i1 %_0.i.i3.i.i.i, label %bb4.i.i.i, label %bb10.i.i.i

bb10.i.i.i:                                       ; preds = %bb7.i.i.i, %bb4.i.i.i
  %sift.sroa.0.0.i.lcssa.i.i = phi ptr [ %sift.sroa.0.0.i.i.i, %bb7.i.i.i ], [ %a.0, %bb4.i.i.i ]
  store i32 %_3.i.i.i.i.i, ptr %sift.sroa.0.0.i.lcssa.i.i, align 4, !alias.scope !1844, !noalias !1853
  br label %_ZN4core5slice4sort6shared9smallsort11insert_tail17h3c1ea7084d42895cE.exit.i.i

_ZN4core5slice4sort6shared9smallsort11insert_tail17h3c1ea7084d42895cE.exit.i.i: ; preds = %bb10.i.i.i, %bb5.i.i
  %tail.sroa.0.0.i.i = getelementptr inbounds nuw i8, ptr %tail.sroa.0.04.i.i, i64 4
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1858)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1860)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1862)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1864)
  %_3.i.i.i.i.i.1 = load i32, ptr %tail.sroa.0.0.i.i, align 4, !alias.scope !1866, !noalias !1867, !noundef !18
  %_4.i.i.i.i.i.1 = load i32, ptr %tail.sroa.0.04.i.i, align 4, !alias.scope !1868, !noalias !1869, !noundef !18
  %_0.i.i.i.i.i.1 = icmp slt i32 %_3.i.i.i.i.i.1, %_4.i.i.i.i.i.1
  br i1 %_0.i.i.i.i.i.1, label %bb4.i.i.i.1, label %_ZN4core5slice4sort6shared9smallsort11insert_tail17h3c1ea7084d42895cE.exit.i.i.1

bb4.i.i.i.1:                                      ; preds = %_ZN4core5slice4sort6shared9smallsort11insert_tail17h3c1ea7084d42895cE.exit.i.i, %bb7.i.i.i.1
  %8 = phi i32 [ %_4.i.i2.i.i.i.1, %bb7.i.i.i.1 ], [ %_4.i.i.i.i.i.1, %_ZN4core5slice4sort6shared9smallsort11insert_tail17h3c1ea7084d42895cE.exit.i.i ]
  %gap_guard.sroa.5.0.i.i.i.1 = phi ptr [ %sift.sroa.0.0.i.i.i.1, %bb7.i.i.i.1 ], [ %tail.sroa.0.0.i.i, %_ZN4core5slice4sort6shared9smallsort11insert_tail17h3c1ea7084d42895cE.exit.i.i ]
  %sift.sroa.0.0.i.i.i.1 = phi ptr [ %9, %bb7.i.i.i.1 ], [ %tail.sroa.0.04.i.i, %_ZN4core5slice4sort6shared9smallsort11insert_tail17h3c1ea7084d42895cE.exit.i.i ]
  store i32 %8, ptr %gap_guard.sroa.5.0.i.i.i.1, align 4, !alias.scope !1844
  %_18.i.i.i.1 = icmp eq ptr %sift.sroa.0.0.i.i.i.1, %a.0
  br i1 %_18.i.i.i.1, label %bb10.i.i.i.1, label %bb7.i.i.i.1

bb7.i.i.i.1:                                      ; preds = %bb4.i.i.i.1
  %9 = getelementptr inbounds i8, ptr %sift.sroa.0.0.i.i.i.1, i64 -4
  %_4.i.i2.i.i.i.1 = load i32, ptr %9, align 4, !alias.scope !1845, !noalias !1850, !noundef !18
  %_0.i.i3.i.i.i.1 = icmp slt i32 %_3.i.i.i.i.i.1, %_4.i.i2.i.i.i.1
  br i1 %_0.i.i3.i.i.i.1, label %bb4.i.i.i.1, label %bb10.i.i.i.1

bb10.i.i.i.1:                                     ; preds = %bb7.i.i.i.1, %bb4.i.i.i.1
  %sift.sroa.0.0.i.lcssa.i.i.1 = phi ptr [ %sift.sroa.0.0.i.i.i.1, %bb7.i.i.i.1 ], [ %a.0, %bb4.i.i.i.1 ]
  store i32 %_3.i.i.i.i.i.1, ptr %sift.sroa.0.0.i.lcssa.i.i.1, align 4, !alias.scope !1844, !noalias !1853
  br label %_ZN4core5slice4sort6shared9smallsort11insert_tail17h3c1ea7084d42895cE.exit.i.i.1

_ZN4core5slice4sort6shared9smallsort11insert_tail17h3c1ea7084d42895cE.exit.i.i.1: ; preds = %bb10.i.i.i.1, %_ZN4core5slice4sort6shared9smallsort11insert_tail17h3c1ea7084d42895cE.exit.i.i
  %tail.sroa.0.0.i.i.1 = getelementptr inbounds nuw i8, ptr %tail.sroa.0.04.i.i, i64 8
  %_11.not.i.i.1 = icmp eq ptr %tail.sroa.0.0.i.i.1, %v_end.i.i
  br i1 %_11.not.i.i.1, label %bb1, label %bb5.i.i

cleanup.loopexit:                                 ; preds = %bb1.i, %bb1.i25
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %cleanup

cleanup.loopexit.split-lp:                        ; preds = %panic.invoke, %bb10.i
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %cleanup

cleanup:                                          ; preds = %cleanup.loopexit.split-lp, %cleanup.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %cleanup.loopexit ], [ %lpad.loopexit.split-lp, %cleanup.loopexit.split-lp ]
  call void @llvm.experimental.noalias.scope.decl(metadata !1870)
  call void @llvm.experimental.noalias.scope.decl(metadata !1873)
  call void @llvm.experimental.noalias.scope.decl(metadata !1876)
  call void @llvm.experimental.noalias.scope.decl(metadata !1879)
  %self1.i.i.i.i1.i = load i64, ptr %final_sequence, align 8, !range !1817, !alias.scope !1882, !noalias !1885, !noundef !18
  %_6.i.i.i.i2.i = icmp eq i64 %self1.i.i.i.i1.i, 0
  br i1 %_6.i.i.i.i2.i, label %bb8, label %bb2.i.i.i3.i

bb2.i.i.i3.i:                                     ; preds = %cleanup
  %10 = shl nuw i64 %self1.i.i.i.i1.i, 2
  %self3.i.i.i.i4.i = load ptr, ptr %0, align 8, !alias.scope !1882, !noalias !1885, !nonnull !18, !noundef !18
; call __rustc::__rust_dealloc
  call void @_RNvCsdBezzDwma51_7___rustc14___rust_dealloc(ptr noundef nonnull %self3.i.i.i.i4.i, i64 noundef %10, i64 noundef range(i64 1, -9223372036854775807) 4) #22, !noalias !1887
  br label %bb8

bb1:                                              ; preds = %bb5.i.i.prol.loopexit, %_ZN4core5slice4sort6shared9smallsort11insert_tail17h3c1ea7084d42895cE.exit.i.i.1, %start, %bb10.i
  call void @llvm.lifetime.end.p0(i64 0, ptr nonnull %is_less.i)
  %_3836 = icmp sgt i32 %n, 1
  br i1 %_3836, label %bb9.preheader, label %bb1.bb10_crit_edge

bb1.bb10_crit_edge:                               ; preds = %bb1
  %_58.pre.pre = load ptr, ptr %0, align 8
  %_57.pre.pre = load i64, ptr %1, align 8
  br label %bb10

bb9.preheader:                                    ; preds = %bb1
  %iter26066 = lshr i32 %n, 1
  %11 = zext nneg i32 %n to i64
  %wide.trip.count = zext nneg i32 %iter26066 to i64
  br label %bb9

bb10:                                             ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17h6e4dcd32827a31fcE.exit27", %bb1.bb10_crit_edge
  %_57.pre = phi i64 [ %_57.pre.pre, %bb1.bb10_crit_edge ], [ %42, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17h6e4dcd32827a31fcE.exit27" ]
  %_58.pre = phi ptr [ %_58.pre.pre, %bb1.bb10_crit_edge ], [ %_15.i23, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17h6e4dcd32827a31fcE.exit27" ]
  %_19 = add i32 %n, -1
  %iter3 = sext i32 %_19 to i64
  %_4738.not = icmp eq i32 %_19, 0
  br i1 %_4738.not, label %bb17, label %bb16.lr.ph

bb16.lr.ph:                                       ; preds = %bb10
  %12 = call i64 @llvm.usub.sat.i64(i64 %_57.pre, i64 1)
  %13 = add nsw i64 %iter3, -1
  %umin72 = call i64 @llvm.umin.i64(i64 %12, i64 %13)
  %14 = add i64 %umin72, 1
  %min.iters.check = icmp ult i64 %14, 9
  br i1 %min.iters.check, label %bb16.preheader, label %vector.ph

vector.ph:                                        ; preds = %bb16.lr.ph
  %n.mod.vf = and i64 %14, 7
  %15 = icmp eq i64 %n.mod.vf, 0
  %16 = select i1 %15, i64 8, i64 %n.mod.vf
  %n.vec = sub i64 %14, %16
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %vec.phi = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %26, %vector.body ]
  %vec.phi73 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %27, %vector.body ]
  %17 = getelementptr inbounds nuw i32, ptr %_58.pre, i64 %index
  %18 = getelementptr inbounds nuw i8, ptr %17, i64 16
  %wide.load = load <4 x i32>, ptr %17, align 4
  %wide.load74 = load <4 x i32>, ptr %18, align 4
  %19 = getelementptr inbounds nuw i32, ptr %_58.pre, i64 %index
  %20 = getelementptr inbounds nuw i8, ptr %19, i64 4
  %21 = getelementptr inbounds nuw i8, ptr %19, i64 20
  %wide.load75 = load <4 x i32>, ptr %20, align 4
  %wide.load76 = load <4 x i32>, ptr %21, align 4
  %22 = sub <4 x i32> %wide.load, %wide.load75
  %23 = sub <4 x i32> %wide.load74, %wide.load76
  %24 = call <4 x i32> @llvm.abs.v4i32(<4 x i32> %22, i1 false)
  %25 = call <4 x i32> @llvm.abs.v4i32(<4 x i32> %23, i1 false)
  %26 = add <4 x i32> %24, %vec.phi
  %27 = add <4 x i32> %25, %vec.phi73
  %index.next = add nuw i64 %index, 8
  %28 = icmp eq i64 %index.next, %n.vec
  br i1 %28, label %middle.block, label %vector.body, !llvm.loop !1888

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <4 x i32> %27, %26
  %29 = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx)
  br label %bb16.preheader

bb16.preheader:                                   ; preds = %bb16.lr.ph, %middle.block
  %maximum_sum.sroa.0.040.ph = phi i32 [ 0, %bb16.lr.ph ], [ %29, %middle.block ]
  %iter1.sroa.0.039.ph = phi i64 [ 0, %bb16.lr.ph ], [ %n.vec, %middle.block ]
  br label %bb16

bb9:                                              ; preds = %bb9.preheader, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17h6e4dcd32827a31fcE.exit27"
  %indvars.iv = phi i64 [ 0, %bb9.preheader ], [ %indvars.iv.next, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17h6e4dcd32827a31fcE.exit27" ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond.not = icmp eq i64 %indvars.iv, %a.1
  br i1 %exitcond.not, label %panic.invoke, label %bb3

bb17:                                             ; preds = %bb20, %bb10
  %maximum_sum.sroa.0.0.lcssa = phi i32 [ 0, %bb10 ], [ %36, %bb20 ]
  %_60 = icmp ugt i64 %_57.pre, %iter3
  br i1 %_60, label %bb25, label %panic.invoke

bb16:                                             ; preds = %bb16.preheader, %bb20
  %maximum_sum.sroa.0.040 = phi i32 [ %36, %bb20 ], [ %maximum_sum.sroa.0.040.ph, %bb16.preheader ]
  %iter1.sroa.0.039 = phi i64 [ %30, %bb20 ], [ %iter1.sroa.0.039.ph, %bb16.preheader ]
  %30 = add nuw i64 %iter1.sroa.0.039, 1
  %exitcond53.not = icmp eq i64 %iter1.sroa.0.039, %_57.pre
  br i1 %exitcond53.not, label %panic.invoke, label %bb18

panic.invoke:                                     ; preds = %bb14, %bb9, %bb18, %bb16, %bb17
  %31 = phi i64 [ %iter3, %bb17 ], [ %_57.pre, %bb16 ], [ %30, %bb18 ], [ %a.1, %bb9 ], [ %40, %bb14 ]
  %32 = phi i64 [ %_57.pre, %bb17 ], [ %_57.pre, %bb16 ], [ %_57.pre, %bb18 ], [ %a.1, %bb9 ], [ %a.1, %bb14 ]
  %33 = phi ptr [ @alloc_62ab56ba51a7eee5b63ca60b5c4609cd, %bb17 ], [ @alloc_266bd23a1387e20541653db12889ae4a, %bb16 ], [ @alloc_8d65dd8dce2671cc8ce691df9c1904a7, %bb18 ], [ @alloc_b00172e95c940ccb1ed768019527c186, %bb9 ], [ @alloc_21a1721c82ced171f22487ef50df60e1, %bb14 ]
; invoke core::panicking::panic_bounds_check
  invoke void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef %31, i64 noundef %32, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %33) #23
          to label %panic.cont unwind label %cleanup.loopexit.split-lp

panic.cont:                                       ; preds = %panic.invoke
  unreachable

bb25:                                             ; preds = %bb17
  %_34 = getelementptr inbounds nuw i32, ptr %_58.pre, i64 %iter3
  %_33 = load i32, ptr %_34, align 4, !noundef !18
  %_35 = load i32, ptr %_58.pre, align 4, !noundef !18
  call void @llvm.experimental.noalias.scope.decl(metadata !1889)
  call void @llvm.experimental.noalias.scope.decl(metadata !1892)
  call void @llvm.experimental.noalias.scope.decl(metadata !1895)
  call void @llvm.experimental.noalias.scope.decl(metadata !1898)
  %self1.i.i.i.i1.i14 = load i64, ptr %final_sequence, align 8, !range !1817, !alias.scope !1901, !noalias !1904, !noundef !18
  %_6.i.i.i.i2.i15 = icmp eq i64 %self1.i.i.i.i1.i14, 0
  br i1 %_6.i.i.i.i2.i15, label %"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17hbf6b57196d66dc0bE.exit18", label %bb2.i.i.i3.i16

bb2.i.i.i3.i16:                                   ; preds = %bb25
  %34 = shl nuw i64 %self1.i.i.i.i1.i14, 2
; call __rustc::__rust_dealloc
  call void @_RNvCsdBezzDwma51_7___rustc14___rust_dealloc(ptr noundef nonnull %_58.pre, i64 noundef %34, i64 noundef range(i64 1, -9223372036854775807) 4) #22, !noalias !1906
  br label %"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17hbf6b57196d66dc0bE.exit18"

"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17hbf6b57196d66dc0bE.exit18": ; preds = %bb25, %bb2.i.i.i3.i16
  %_32 = sub i32 %_33, %_35
  %_31.sroa.0.0 = call i32 @llvm.abs.i32(i32 %_32, i1 false)
  %35 = add i32 %_31.sroa.0.0, %maximum_sum.sroa.0.0.lcssa
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %final_sequence)
  ret i32 %35

bb18:                                             ; preds = %bb16
  %exitcond54.not = icmp eq i64 %iter1.sroa.0.039, %12
  br i1 %exitcond54.not, label %panic.invoke, label %bb20

bb20:                                             ; preds = %bb18
  %_26 = getelementptr inbounds nuw i32, ptr %_58.pre, i64 %iter1.sroa.0.039
  %_25 = load i32, ptr %_26, align 4, !noundef !18
  %_28 = getelementptr inbounds nuw i32, ptr %_58.pre, i64 %30
  %_27 = load i32, ptr %_28, align 4, !noundef !18
  %_24 = sub i32 %_25, %_27
  %_23.sroa.0.0 = call i32 @llvm.abs.i32(i32 %_24, i1 false)
  %36 = add i32 %_23.sroa.0.0, %maximum_sum.sroa.0.040
  %exitcond56.not = icmp eq i64 %30, %iter3
  br i1 %exitcond56.not, label %bb17, label %bb16, !llvm.loop !1907

bb3:                                              ; preds = %bb9
  %37 = getelementptr inbounds nuw i32, ptr %a.0, i64 %indvars.iv
  %_8 = load i32, ptr %37, align 4, !noundef !18
  call void @llvm.experimental.noalias.scope.decl(metadata !1908)
  %len.i = load i64, ptr %1, align 8, !alias.scope !1908, !noundef !18
  %self1.i = load i64, ptr %final_sequence, align 8, !range !1817, !alias.scope !1908, !noundef !18
  %_4.i = icmp eq i64 %len.i, %self1.i
  br i1 %_4.i, label %bb1.i, label %bb14

bb1.i:                                            ; preds = %bb3
; invoke alloc::raw_vec::RawVec<T,A>::grow_one
  invoke void @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$8grow_one17h444c6fbf2c23cfe8E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %final_sequence)
          to label %bb14 unwind label %cleanup.loopexit

bb14:                                             ; preds = %bb3, %bb1.i
  %_15.i = load ptr, ptr %0, align 8, !alias.scope !1908, !nonnull !18, !noundef !18
  %end.i = getelementptr inbounds nuw i32, ptr %_15.i, i64 %len.i
  store i32 %_8, ptr %end.i, align 4, !noalias !1908
  %38 = add i64 %len.i, 1
  store i64 %38, ptr %1, align 8, !alias.scope !1908
  %39 = xor i64 %indvars.iv, -1
  %40 = add nsw i64 %11, %39
  %_17 = icmp ugt i64 %a.1, %40
  br i1 %_17, label %bb4, label %panic.invoke

bb4:                                              ; preds = %bb14
  %41 = getelementptr inbounds nuw i32, ptr %a.0, i64 %40
  %_13 = load i32, ptr %41, align 4, !noundef !18
  call void @llvm.experimental.noalias.scope.decl(metadata !1911)
  %self1.i21 = load i64, ptr %final_sequence, align 8, !range !1817, !alias.scope !1911, !noundef !18
  %_4.i22 = icmp eq i64 %38, %self1.i21
  br i1 %_4.i22, label %bb1.i25, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17h6e4dcd32827a31fcE.exit27"

bb1.i25:                                          ; preds = %bb4
; invoke alloc::raw_vec::RawVec<T,A>::grow_one
  invoke void @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$8grow_one17h444c6fbf2c23cfe8E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %final_sequence)
          to label %"bb1.i25._ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17h6e4dcd32827a31fcE.exit27_crit_edge" unwind label %cleanup.loopexit

"bb1.i25._ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17h6e4dcd32827a31fcE.exit27_crit_edge": ; preds = %bb1.i25
  %_15.i23.pre = load ptr, ptr %0, align 8, !alias.scope !1911
  br label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17h6e4dcd32827a31fcE.exit27"

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17h6e4dcd32827a31fcE.exit27": ; preds = %"bb1.i25._ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17h6e4dcd32827a31fcE.exit27_crit_edge", %bb4
  %_15.i23 = phi ptr [ %_15.i23.pre, %"bb1.i25._ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17h6e4dcd32827a31fcE.exit27_crit_edge" ], [ %_15.i, %bb4 ]
  %end.i24 = getelementptr inbounds nuw i32, ptr %_15.i23, i64 %38
  store i32 %_13, ptr %end.i24, align 4, !noalias !1911
  %42 = add i64 %len.i, 2
  store i64 %42, ptr %1, align 8, !alias.scope !1911
  %exitcond52.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond52.not, label %bb10, label %bb9

bb8:                                              ; preds = %bb2.i.i.i3.i, %cleanup
  resume { ptr, i32 } %lpad.phi
}

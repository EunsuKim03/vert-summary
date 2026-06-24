define noundef i32 @f_gold(ptr noalias noundef nonnull align 4 %arr.0, i64 noundef range(i64 0, 2305843009213693952) %arr.1, i32 noundef %n) unnamed_addr #1 personality ptr @rust_eh_personality {
start:
  %is_less.i = alloca [0 x i8], align 1
  call void @llvm.lifetime.start.p0(i64 0, ptr nonnull %is_less.i)
  %b.i = icmp samesign ult i64 %arr.1, 2
  br i1 %b.i, label %_ZN5alloc5slice11stable_sort17h0ae29a9fdc0d2fa7E.exit, label %bb7.i, !prof !1817

bb7.i:                                            ; preds = %start
  %b1.i = icmp samesign ult i64 %arr.1, 21
  br i1 %b1.i, label %bb9.i, label %bb10.i, !prof !1817

bb10.i:                                           ; preds = %bb7.i
; call core::slice::sort::stable::driftsort_main
  call void @_ZN4core5slice4sort6stable14driftsort_main17haffca987db10b02fE(ptr noalias noundef nonnull align 4 %arr.0, i64 noundef range(i64 0, 2305843009213693952) %arr.1, ptr noalias noundef nonnull align 1 %is_less.i)
  br label %_ZN5alloc5slice11stable_sort17h0ae29a9fdc0d2fa7E.exit

bb9.i:                                            ; preds = %bb7.i
  %v_end.idx.i.i = shl nuw nsw i64 %arr.1, 2
  %v_end.i.i = getelementptr inbounds nuw i8, ptr %arr.0, i64 %v_end.idx.i.i
  %tail.sroa.0.01.i.i = getelementptr inbounds nuw i8, ptr %arr.0, i64 4
  %0 = and i64 %arr.1, 1
  %lcmp.mod.not.not = icmp eq i64 %0, 0
  br i1 %lcmp.mod.not.not, label %bb5.i.i.prol, label %bb5.i.i.prol.loopexit

bb5.i.i.prol:                                     ; preds = %bb9.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1818)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1821)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1823)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1826)
  %_3.i.i.i.i.i.prol = load i32, ptr %tail.sroa.0.01.i.i, align 4, !alias.scope !1828, !noalias !1833, !noundef !23
  %_4.i.i.i.i.i.prol = load i32, ptr %arr.0, align 4, !alias.scope !1834, !noalias !1835, !noundef !23
  %_0.i.i.i.i.i.prol = icmp slt i32 %_3.i.i.i.i.i.prol, %_4.i.i.i.i.i.prol
  br i1 %_0.i.i.i.i.i.prol, label %bb4.i.i.i.prol, label %_ZN4core5slice4sort6shared9smallsort11insert_tail17hcd5826e4a6462d7bE.exit.i.i.prol

bb4.i.i.i.prol:                                   ; preds = %bb5.i.i.prol, %bb7.i.i.i.prol
  %1 = phi i32 [ %_4.i.i2.i.i.i.prol, %bb7.i.i.i.prol ], [ %_4.i.i.i.i.i.prol, %bb5.i.i.prol ]
  %gap_guard.sroa.5.0.i.i.i.prol = phi ptr [ %sift.sroa.0.0.i.i.i.prol, %bb7.i.i.i.prol ], [ %tail.sroa.0.01.i.i, %bb5.i.i.prol ]
  %sift.sroa.0.0.i.i.i.prol = phi ptr [ %2, %bb7.i.i.i.prol ], [ %arr.0, %bb5.i.i.prol ]
  store i32 %1, ptr %gap_guard.sroa.5.0.i.i.i.prol, align 4, !alias.scope !1836
  %_18.i.i.i.prol = icmp eq ptr %sift.sroa.0.0.i.i.i.prol, %arr.0
  br i1 %_18.i.i.i.prol, label %bb10.i.i.i.prol, label %bb7.i.i.i.prol

bb7.i.i.i.prol:                                   ; preds = %bb4.i.i.i.prol
  %2 = getelementptr inbounds i8, ptr %sift.sroa.0.0.i.i.i.prol, i64 -4
  %_4.i.i2.i.i.i.prol = load i32, ptr %2, align 4, !alias.scope !1837, !noalias !1842, !noundef !23
  %_0.i.i3.i.i.i.prol = icmp slt i32 %_3.i.i.i.i.i.prol, %_4.i.i2.i.i.i.prol
  br i1 %_0.i.i3.i.i.i.prol, label %bb4.i.i.i.prol, label %bb10.i.i.i.prol

bb10.i.i.i.prol:                                  ; preds = %bb7.i.i.i.prol, %bb4.i.i.i.prol
  %sift.sroa.0.0.i.lcssa.i.i.prol = phi ptr [ %sift.sroa.0.0.i.i.i.prol, %bb7.i.i.i.prol ], [ %arr.0, %bb4.i.i.i.prol ]
  store i32 %_3.i.i.i.i.i.prol, ptr %sift.sroa.0.0.i.lcssa.i.i.prol, align 4, !alias.scope !1836, !noalias !1845
  br label %_ZN4core5slice4sort6shared9smallsort11insert_tail17hcd5826e4a6462d7bE.exit.i.i.prol

_ZN4core5slice4sort6shared9smallsort11insert_tail17hcd5826e4a6462d7bE.exit.i.i.prol: ; preds = %bb10.i.i.i.prol, %bb5.i.i.prol
  %tail.sroa.0.0.i.i.prol = getelementptr inbounds nuw i8, ptr %arr.0, i64 8
  br label %bb5.i.i.prol.loopexit

bb5.i.i.prol.loopexit:                            ; preds = %_ZN4core5slice4sort6shared9smallsort11insert_tail17hcd5826e4a6462d7bE.exit.i.i.prol, %bb9.i
  %tail.sroa.0.04.i.i.unr = phi ptr [ %tail.sroa.0.01.i.i, %bb9.i ], [ %tail.sroa.0.0.i.i.prol, %_ZN4core5slice4sort6shared9smallsort11insert_tail17hcd5826e4a6462d7bE.exit.i.i.prol ]
  %v.0.pn3.i.i.unr = phi ptr [ %arr.0, %bb9.i ], [ %tail.sroa.0.01.i.i, %_ZN4core5slice4sort6shared9smallsort11insert_tail17hcd5826e4a6462d7bE.exit.i.i.prol ]
  %3 = icmp eq i64 %arr.1, 2
  br i1 %3, label %_ZN5alloc5slice11stable_sort17h0ae29a9fdc0d2fa7E.exit, label %bb5.i.i

bb5.i.i:                                          ; preds = %bb5.i.i.prol.loopexit, %_ZN4core5slice4sort6shared9smallsort11insert_tail17hcd5826e4a6462d7bE.exit.i.i.1
  %tail.sroa.0.04.i.i = phi ptr [ %tail.sroa.0.0.i.i.1, %_ZN4core5slice4sort6shared9smallsort11insert_tail17hcd5826e4a6462d7bE.exit.i.i.1 ], [ %tail.sroa.0.04.i.i.unr, %bb5.i.i.prol.loopexit ]
  %v.0.pn3.i.i = phi ptr [ %tail.sroa.0.0.i.i, %_ZN4core5slice4sort6shared9smallsort11insert_tail17hcd5826e4a6462d7bE.exit.i.i.1 ], [ %v.0.pn3.i.i.unr, %bb5.i.i.prol.loopexit ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1818)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1821)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1823)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1826)
  %_3.i.i.i.i.i = load i32, ptr %tail.sroa.0.04.i.i, align 4, !alias.scope !1828, !noalias !1833, !noundef !23
  %_4.i.i.i.i.i = load i32, ptr %v.0.pn3.i.i, align 4, !alias.scope !1834, !noalias !1835, !noundef !23
  %_0.i.i.i.i.i = icmp slt i32 %_3.i.i.i.i.i, %_4.i.i.i.i.i
  br i1 %_0.i.i.i.i.i, label %bb4.i.i.i, label %_ZN4core5slice4sort6shared9smallsort11insert_tail17hcd5826e4a6462d7bE.exit.i.i

bb4.i.i.i:                                        ; preds = %bb5.i.i, %bb7.i.i.i
  %4 = phi i32 [ %_4.i.i2.i.i.i, %bb7.i.i.i ], [ %_4.i.i.i.i.i, %bb5.i.i ]
  %gap_guard.sroa.5.0.i.i.i = phi ptr [ %sift.sroa.0.0.i.i.i, %bb7.i.i.i ], [ %tail.sroa.0.04.i.i, %bb5.i.i ]
  %sift.sroa.0.0.i.i.i = phi ptr [ %5, %bb7.i.i.i ], [ %v.0.pn3.i.i, %bb5.i.i ]
  store i32 %4, ptr %gap_guard.sroa.5.0.i.i.i, align 4, !alias.scope !1836
  %_18.i.i.i = icmp eq ptr %sift.sroa.0.0.i.i.i, %arr.0
  br i1 %_18.i.i.i, label %bb10.i.i.i, label %bb7.i.i.i

bb7.i.i.i:                                        ; preds = %bb4.i.i.i
  %5 = getelementptr inbounds i8, ptr %sift.sroa.0.0.i.i.i, i64 -4
  %_4.i.i2.i.i.i = load i32, ptr %5, align 4, !alias.scope !1837, !noalias !1842, !noundef !23
  %_0.i.i3.i.i.i = icmp slt i32 %_3.i.i.i.i.i, %_4.i.i2.i.i.i
  br i1 %_0.i.i3.i.i.i, label %bb4.i.i.i, label %bb10.i.i.i

bb10.i.i.i:                                       ; preds = %bb7.i.i.i, %bb4.i.i.i
  %sift.sroa.0.0.i.lcssa.i.i = phi ptr [ %sift.sroa.0.0.i.i.i, %bb7.i.i.i ], [ %arr.0, %bb4.i.i.i ]
  store i32 %_3.i.i.i.i.i, ptr %sift.sroa.0.0.i.lcssa.i.i, align 4, !alias.scope !1836, !noalias !1845
  br label %_ZN4core5slice4sort6shared9smallsort11insert_tail17hcd5826e4a6462d7bE.exit.i.i

_ZN4core5slice4sort6shared9smallsort11insert_tail17hcd5826e4a6462d7bE.exit.i.i: ; preds = %bb10.i.i.i, %bb5.i.i
  %tail.sroa.0.0.i.i = getelementptr inbounds nuw i8, ptr %tail.sroa.0.04.i.i, i64 4
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1850)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1852)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1854)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1856)
  %_3.i.i.i.i.i.1 = load i32, ptr %tail.sroa.0.0.i.i, align 4, !alias.scope !1858, !noalias !1859, !noundef !23
  %_4.i.i.i.i.i.1 = load i32, ptr %tail.sroa.0.04.i.i, align 4, !alias.scope !1860, !noalias !1861, !noundef !23
  %_0.i.i.i.i.i.1 = icmp slt i32 %_3.i.i.i.i.i.1, %_4.i.i.i.i.i.1
  br i1 %_0.i.i.i.i.i.1, label %bb4.i.i.i.1, label %_ZN4core5slice4sort6shared9smallsort11insert_tail17hcd5826e4a6462d7bE.exit.i.i.1

bb4.i.i.i.1:                                      ; preds = %_ZN4core5slice4sort6shared9smallsort11insert_tail17hcd5826e4a6462d7bE.exit.i.i, %bb7.i.i.i.1
  %6 = phi i32 [ %_4.i.i2.i.i.i.1, %bb7.i.i.i.1 ], [ %_4.i.i.i.i.i.1, %_ZN4core5slice4sort6shared9smallsort11insert_tail17hcd5826e4a6462d7bE.exit.i.i ]
  %gap_guard.sroa.5.0.i.i.i.1 = phi ptr [ %sift.sroa.0.0.i.i.i.1, %bb7.i.i.i.1 ], [ %tail.sroa.0.0.i.i, %_ZN4core5slice4sort6shared9smallsort11insert_tail17hcd5826e4a6462d7bE.exit.i.i ]
  %sift.sroa.0.0.i.i.i.1 = phi ptr [ %7, %bb7.i.i.i.1 ], [ %tail.sroa.0.04.i.i, %_ZN4core5slice4sort6shared9smallsort11insert_tail17hcd5826e4a6462d7bE.exit.i.i ]
  store i32 %6, ptr %gap_guard.sroa.5.0.i.i.i.1, align 4, !alias.scope !1836
  %_18.i.i.i.1 = icmp eq ptr %sift.sroa.0.0.i.i.i.1, %arr.0
  br i1 %_18.i.i.i.1, label %bb10.i.i.i.1, label %bb7.i.i.i.1

bb7.i.i.i.1:                                      ; preds = %bb4.i.i.i.1
  %7 = getelementptr inbounds i8, ptr %sift.sroa.0.0.i.i.i.1, i64 -4
  %_4.i.i2.i.i.i.1 = load i32, ptr %7, align 4, !alias.scope !1837, !noalias !1842, !noundef !23
  %_0.i.i3.i.i.i.1 = icmp slt i32 %_3.i.i.i.i.i.1, %_4.i.i2.i.i.i.1
  br i1 %_0.i.i3.i.i.i.1, label %bb4.i.i.i.1, label %bb10.i.i.i.1

bb10.i.i.i.1:                                     ; preds = %bb7.i.i.i.1, %bb4.i.i.i.1
  %sift.sroa.0.0.i.lcssa.i.i.1 = phi ptr [ %sift.sroa.0.0.i.i.i.1, %bb7.i.i.i.1 ], [ %arr.0, %bb4.i.i.i.1 ]
  store i32 %_3.i.i.i.i.i.1, ptr %sift.sroa.0.0.i.lcssa.i.i.1, align 4, !alias.scope !1836, !noalias !1845
  br label %_ZN4core5slice4sort6shared9smallsort11insert_tail17hcd5826e4a6462d7bE.exit.i.i.1

_ZN4core5slice4sort6shared9smallsort11insert_tail17hcd5826e4a6462d7bE.exit.i.i.1: ; preds = %bb10.i.i.i.1, %_ZN4core5slice4sort6shared9smallsort11insert_tail17hcd5826e4a6462d7bE.exit.i.i
  %tail.sroa.0.0.i.i.1 = getelementptr inbounds nuw i8, ptr %tail.sroa.0.04.i.i, i64 8
  %_11.not.i.i.1 = icmp eq ptr %tail.sroa.0.0.i.i.1, %v_end.i.i
  br i1 %_11.not.i.i.1, label %_ZN5alloc5slice11stable_sort17h0ae29a9fdc0d2fa7E.exit, label %bb5.i.i

_ZN5alloc5slice11stable_sort17h0ae29a9fdc0d2fa7E.exit: ; preds = %bb5.i.i.prol.loopexit, %_ZN4core5slice4sort6shared9smallsort11insert_tail17hcd5826e4a6462d7bE.exit.i.i.1, %start, %bb10.i
  call void @llvm.lifetime.end.p0(i64 0, ptr nonnull %is_less.i)
  %iter1 = add i32 %n, -1
  %_222127 = icmp sgt i32 %iter1, 0
  br i1 %_222127, label %bb7.lr.ph.preheader, label %bb8

bb7.lr.ph.preheader:                              ; preds = %_ZN5alloc5slice11stable_sort17h0ae29a9fdc0d2fa7E.exit
  %8 = zext nneg i32 %iter1 to i64
  br label %bb7.lr.ph

bb7.lr.ph:                                        ; preds = %bb7.lr.ph.preheader, %bb5
  %max_count.sroa.0.0.ph30 = phi i32 [ %_0.sroa.0.0.i, %bb5 ], [ 0, %bb7.lr.ph.preheader ]
  %min_count.sroa.0.0.ph29 = phi i32 [ %_0.sroa.0.0.i8, %bb5 ], [ %n, %bb7.lr.ph.preheader ]
  %iter.sroa.0.0.ph28 = phi i64 [ %indvars.iv.next, %bb5 ], [ 0, %bb7.lr.ph.preheader ]
  %sext = shl i64 %iter.sroa.0.0.ph28, 32
  %9 = ashr exact i64 %sext, 32
  br label %bb7

bb8:                                              ; preds = %bb5, %bb4, %_ZN5alloc5slice11stable_sort17h0ae29a9fdc0d2fa7E.exit
  %min_count.sroa.0.0.ph.lcssa20 = phi i32 [ %n, %_ZN5alloc5slice11stable_sort17h0ae29a9fdc0d2fa7E.exit ], [ %min_count.sroa.0.0.ph29, %bb4 ], [ %_0.sroa.0.0.i8, %bb5 ]
  %max_count.sroa.0.0.ph.lcssa18 = phi i32 [ 0, %_ZN5alloc5slice11stable_sort17h0ae29a9fdc0d2fa7E.exit ], [ %max_count.sroa.0.0.ph30, %bb4 ], [ %_0.sroa.0.0.i, %bb5 ]
  %_0 = sub i32 %max_count.sroa.0.0.ph.lcssa18, %min_count.sroa.0.0.ph.lcssa20
  ret i32 %_0

bb7:                                              ; preds = %bb7.lr.ph, %bb4
  %indvars.iv = phi i64 [ %9, %bb7.lr.ph ], [ %indvars.iv.next, %bb4 ]
  %count.sroa.0.023 = phi i32 [ 0, %bb7.lr.ph ], [ %14, %bb4 ]
  %indvars.iv.next = add nsw i64 %indvars.iv, 1
  %_13 = icmp ugt i64 %arr.1, %indvars.iv
  br i1 %_13, label %bb2, label %panic

bb2:                                              ; preds = %bb7
  %_17 = icmp ugt i64 %arr.1, %indvars.iv.next
  br i1 %_17, label %bb3, label %panic2

panic:                                            ; preds = %bb7
  %umax = call i64 @llvm.umax.i64(i64 %arr.1, i64 %9)
; call core::panicking::panic_bounds_check
  call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef %umax, i64 noundef %arr.1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_66217a4a5eeecbd2f2070acb82859146) #18
  unreachable

bb3:                                              ; preds = %bb2
  %10 = getelementptr inbounds nuw i32, ptr %arr.0, i64 %indvars.iv
  %_10 = load i32, ptr %10, align 4, !noundef !23
  %11 = getelementptr inbounds nuw i32, ptr %arr.0, i64 %indvars.iv.next
  %_14 = load i32, ptr %11, align 4, !noundef !23
  %_9 = icmp eq i32 %_10, %_14
  br i1 %_9, label %bb4, label %bb5

panic2:                                           ; preds = %bb2
  %12 = add nsw i64 %9, 1
  %umax51 = call i64 @llvm.umax.i64(i64 %arr.1, i64 %12)
; call core::panicking::panic_bounds_check
  call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef %umax51, i64 noundef %arr.1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_10de8051f6ed184c0afb19ab290cd0cd) #18
  unreachable

bb5:                                              ; preds = %bb3
  %13 = trunc nsw i64 %indvars.iv.next to i32
  %_0.sroa.0.0.i = call noundef i32 @llvm.smax.i32(i32 %count.sroa.0.023, i32 %max_count.sroa.0.0.ph30)
  %_0.sroa.0.0.i8 = call noundef i32 @llvm.smin.i32(i32 %count.sroa.0.023, i32 %min_count.sroa.0.0.ph29)
  %_2221 = icmp sgt i32 %iter1, %13
  br i1 %_2221, label %bb7.lr.ph, label %bb8

bb4:                                              ; preds = %bb3
  %14 = add i32 %count.sroa.0.023, 1
  %_22 = icmp slt i64 %indvars.iv.next, %8
  br i1 %_22, label %bb7, label %bb8
}

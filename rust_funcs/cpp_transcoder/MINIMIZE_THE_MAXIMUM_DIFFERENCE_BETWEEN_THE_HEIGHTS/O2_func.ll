define noundef i32 @f_gold(ptr noalias noundef nonnull align 4 %arr.0, i64 noundef range(i64 0, 2305843009213693952) %arr.1, i32 noundef %n, i32 noundef %k) unnamed_addr #1 personality ptr @rust_eh_personality {
start:
  %is_less.i = alloca [0 x i8], align 1
  %_4 = icmp eq i32 %n, 1
  br i1 %_4, label %bb21, label %bb2

bb2:                                              ; preds = %start
  call void @llvm.lifetime.start.p0(i64 0, ptr nonnull %is_less.i)
  %b.i = icmp samesign ult i64 %arr.1, 2
  br i1 %b.i, label %_ZN5alloc5slice11stable_sort17h116ae07959088353E.exit, label %bb7.i, !prof !1817

bb7.i:                                            ; preds = %bb2
  %b1.i = icmp samesign ult i64 %arr.1, 21
  br i1 %b1.i, label %bb9.i, label %bb10.i, !prof !1817

bb10.i:                                           ; preds = %bb7.i
; call core::slice::sort::stable::driftsort_main
  call void @_ZN4core5slice4sort6stable14driftsort_main17h37b0cc1e6013af8bE(ptr noalias noundef nonnull align 4 %arr.0, i64 noundef range(i64 0, 2305843009213693952) %arr.1, ptr noalias noundef nonnull align 1 %is_less.i)
  br label %_ZN5alloc5slice11stable_sort17h116ae07959088353E.exit

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
  br i1 %_0.i.i.i.i.i.prol, label %bb4.i.i.i.prol, label %_ZN4core5slice4sort6shared9smallsort11insert_tail17hada0b569640dd2ccE.exit.i.i.prol

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
  br label %_ZN4core5slice4sort6shared9smallsort11insert_tail17hada0b569640dd2ccE.exit.i.i.prol

_ZN4core5slice4sort6shared9smallsort11insert_tail17hada0b569640dd2ccE.exit.i.i.prol: ; preds = %bb10.i.i.i.prol, %bb5.i.i.prol
  %tail.sroa.0.0.i.i.prol = getelementptr inbounds nuw i8, ptr %arr.0, i64 8
  br label %bb5.i.i.prol.loopexit

bb5.i.i.prol.loopexit:                            ; preds = %_ZN4core5slice4sort6shared9smallsort11insert_tail17hada0b569640dd2ccE.exit.i.i.prol, %bb9.i
  %tail.sroa.0.04.i.i.unr = phi ptr [ %tail.sroa.0.01.i.i, %bb9.i ], [ %tail.sroa.0.0.i.i.prol, %_ZN4core5slice4sort6shared9smallsort11insert_tail17hada0b569640dd2ccE.exit.i.i.prol ]
  %v.0.pn3.i.i.unr = phi ptr [ %arr.0, %bb9.i ], [ %tail.sroa.0.01.i.i, %_ZN4core5slice4sort6shared9smallsort11insert_tail17hada0b569640dd2ccE.exit.i.i.prol ]
  %3 = icmp eq i64 %arr.1, 2
  br i1 %3, label %_ZN5alloc5slice11stable_sort17h116ae07959088353E.exit, label %bb5.i.i

bb5.i.i:                                          ; preds = %bb5.i.i.prol.loopexit, %_ZN4core5slice4sort6shared9smallsort11insert_tail17hada0b569640dd2ccE.exit.i.i.1
  %tail.sroa.0.04.i.i = phi ptr [ %tail.sroa.0.0.i.i.1, %_ZN4core5slice4sort6shared9smallsort11insert_tail17hada0b569640dd2ccE.exit.i.i.1 ], [ %tail.sroa.0.04.i.i.unr, %bb5.i.i.prol.loopexit ]
  %v.0.pn3.i.i = phi ptr [ %tail.sroa.0.0.i.i, %_ZN4core5slice4sort6shared9smallsort11insert_tail17hada0b569640dd2ccE.exit.i.i.1 ], [ %v.0.pn3.i.i.unr, %bb5.i.i.prol.loopexit ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1818)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1821)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1823)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1826)
  %_3.i.i.i.i.i = load i32, ptr %tail.sroa.0.04.i.i, align 4, !alias.scope !1828, !noalias !1833, !noundef !23
  %_4.i.i.i.i.i = load i32, ptr %v.0.pn3.i.i, align 4, !alias.scope !1834, !noalias !1835, !noundef !23
  %_0.i.i.i.i.i = icmp slt i32 %_3.i.i.i.i.i, %_4.i.i.i.i.i
  br i1 %_0.i.i.i.i.i, label %bb4.i.i.i, label %_ZN4core5slice4sort6shared9smallsort11insert_tail17hada0b569640dd2ccE.exit.i.i

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
  br label %_ZN4core5slice4sort6shared9smallsort11insert_tail17hada0b569640dd2ccE.exit.i.i

_ZN4core5slice4sort6shared9smallsort11insert_tail17hada0b569640dd2ccE.exit.i.i: ; preds = %bb10.i.i.i, %bb5.i.i
  %tail.sroa.0.0.i.i = getelementptr inbounds nuw i8, ptr %tail.sroa.0.04.i.i, i64 4
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1850)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1852)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1854)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1856)
  %_3.i.i.i.i.i.1 = load i32, ptr %tail.sroa.0.0.i.i, align 4, !alias.scope !1858, !noalias !1859, !noundef !23
  %_4.i.i.i.i.i.1 = load i32, ptr %tail.sroa.0.04.i.i, align 4, !alias.scope !1860, !noalias !1861, !noundef !23
  %_0.i.i.i.i.i.1 = icmp slt i32 %_3.i.i.i.i.i.1, %_4.i.i.i.i.i.1
  br i1 %_0.i.i.i.i.i.1, label %bb4.i.i.i.1, label %_ZN4core5slice4sort6shared9smallsort11insert_tail17hada0b569640dd2ccE.exit.i.i.1

bb4.i.i.i.1:                                      ; preds = %_ZN4core5slice4sort6shared9smallsort11insert_tail17hada0b569640dd2ccE.exit.i.i, %bb7.i.i.i.1
  %6 = phi i32 [ %_4.i.i2.i.i.i.1, %bb7.i.i.i.1 ], [ %_4.i.i.i.i.i.1, %_ZN4core5slice4sort6shared9smallsort11insert_tail17hada0b569640dd2ccE.exit.i.i ]
  %gap_guard.sroa.5.0.i.i.i.1 = phi ptr [ %sift.sroa.0.0.i.i.i.1, %bb7.i.i.i.1 ], [ %tail.sroa.0.0.i.i, %_ZN4core5slice4sort6shared9smallsort11insert_tail17hada0b569640dd2ccE.exit.i.i ]
  %sift.sroa.0.0.i.i.i.1 = phi ptr [ %7, %bb7.i.i.i.1 ], [ %tail.sroa.0.04.i.i, %_ZN4core5slice4sort6shared9smallsort11insert_tail17hada0b569640dd2ccE.exit.i.i ]
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
  br label %_ZN4core5slice4sort6shared9smallsort11insert_tail17hada0b569640dd2ccE.exit.i.i.1

_ZN4core5slice4sort6shared9smallsort11insert_tail17hada0b569640dd2ccE.exit.i.i.1: ; preds = %bb10.i.i.i.1, %_ZN4core5slice4sort6shared9smallsort11insert_tail17hada0b569640dd2ccE.exit.i.i
  %tail.sroa.0.0.i.i.1 = getelementptr inbounds nuw i8, ptr %tail.sroa.0.04.i.i, i64 8
  %_11.not.i.i.1 = icmp eq ptr %tail.sroa.0.0.i.i.1, %v_end.i.i
  br i1 %_11.not.i.i.1, label %_ZN5alloc5slice11stable_sort17h116ae07959088353E.exit, label %bb5.i.i

_ZN5alloc5slice11stable_sort17h116ae07959088353E.exit: ; preds = %bb5.i.i.prol.loopexit, %_ZN4core5slice4sort6shared9smallsort11insert_tail17hada0b569640dd2ccE.exit.i.i.1, %bb2, %bb10.i
  call void @llvm.lifetime.end.p0(i64 0, ptr nonnull %is_less.i)
  %_8 = sext i32 %n to i64
  %_7 = add nsw i64 %_8, -1
  %_10 = icmp ult i64 %_7, %arr.1
  br i1 %_10, label %bb3, label %panic

bb3:                                              ; preds = %_ZN5alloc5slice11stable_sort17h116ae07959088353E.exit
  %8 = getelementptr inbounds nuw i32, ptr %arr.0, i64 %_7
  %_6 = load i32, ptr %8, align 4, !noundef !23
  %_11 = load i32, ptr %arr.0, align 4, !noundef !23
  %ans = sub i32 %_6, %_11
  %9 = add i32 %_11, %k
  %10 = sub i32 %_6, %k
  %spec.select = call i32 @llvm.smax.i32(i32 %9, i32 %10)
  %spec.select18 = call i32 @llvm.smin.i32(i32 %9, i32 %10)
  %iter4 = add i32 %n, -1
  br label %bb10.outer

bb10.outer:                                       ; preds = %bb16, %bb3
  %iter.sroa.0.0.ph = phi i32 [ %13, %bb16 ], [ 1, %bb3 ]
  %big.sroa.0.1.ph = phi i32 [ %add.big.sroa.0.1, %bb16 ], [ %spec.select, %bb3 ]
  %small.sroa.0.1.ph = phi i32 [ %small.sroa.0.1.subtract, %bb16 ], [ %spec.select18, %bb3 ]
  %11 = sext i32 %iter.sroa.0.0.ph to i64
  %smax = call i32 @llvm.smax.i32(i32 %iter.sroa.0.0.ph, i32 %iter4)
  %wide.trip.count = sext i32 %smax to i64
  br label %bb10

panic:                                            ; preds = %_ZN5alloc5slice11stable_sort17h116ae07959088353E.exit
; call core::panicking::panic_bounds_check
  call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef %_7, i64 noundef %arr.1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_bda68cbdd90346ed2b546cbcfae38282) #18
  unreachable

bb10:                                             ; preds = %bb10.outer, %bb11
  %indvars.iv = phi i64 [ %11, %bb10.outer ], [ %indvars.iv.next, %bb11 ]
  %exitcond.not = icmp eq i64 %indvars.iv, %wide.trip.count
  br i1 %exitcond.not, label %bb25, label %bb24

bb25:                                             ; preds = %bb10
  %_39 = sub i32 %big.sroa.0.1.ph, %small.sroa.0.1.ph
  %_0.sroa.0.0.i = call noundef i32 @llvm.smin.i32(i32 %_39, i32 %ans)
  br label %bb21

bb24:                                             ; preds = %bb10
  %_27 = icmp ugt i64 %arr.1, %indvars.iv
  br i1 %_27, label %bb11, label %panic5

bb21:                                             ; preds = %start, %bb25
  %_0.sroa.0.0 = phi i32 [ %_0.sroa.0.0.i, %bb25 ], [ 0, %start ]
  ret i32 %_0.sroa.0.0

bb11:                                             ; preds = %bb24
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %12 = getelementptr inbounds nuw i32, ptr %arr.0, i64 %indvars.iv
  %_25 = load i32, ptr %12, align 4, !noundef !23
  %subtract = sub i32 %_25, %k
  %add = add i32 %_25, %k
  %_30 = icmp sge i32 %subtract, %small.sroa.0.1.ph
  %_32 = icmp sle i32 %add, %big.sroa.0.1.ph
  %or.cond = select i1 %_30, i1 true, i1 %_32
  br i1 %or.cond, label %bb10, label %bb16

panic5:                                           ; preds = %bb24
  %umax = call i64 @llvm.umax.i64(i64 %arr.1, i64 %11)
; call core::panicking::panic_bounds_check
  call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef %umax, i64 noundef %arr.1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_13d6b956a5caa9a94b2a71870bef7f03) #18
  unreachable

bb16:                                             ; preds = %bb11
  %13 = trunc nsw i64 %indvars.iv.next to i32
  %_35 = sub i32 %big.sroa.0.1.ph, %subtract
  %_37 = sub i32 %add, %small.sroa.0.1.ph
  %_34.not = icmp sgt i32 %_35, %_37
  %add.big.sroa.0.1 = select i1 %_34.not, i32 %add, i32 %big.sroa.0.1.ph
  %small.sroa.0.1.subtract = select i1 %_34.not, i32 %small.sroa.0.1.ph, i32 %subtract
  br label %bb10.outer
}

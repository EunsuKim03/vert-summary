define noundef range(i32 0, -2147483648) i32 @f_gold(ptr noalias noundef nonnull align 4 %ar.0, i64 noundef range(i64 0, 2305843009213693952) %ar.1, i32 noundef %n) unnamed_addr #1 personality ptr @rust_eh_personality {
start:
  %is_less.i = alloca [0 x i8], align 1
  call void @llvm.lifetime.start.p0(i64 0, ptr nonnull %is_less.i)
  %b.i = icmp samesign ult i64 %ar.1, 2
  br i1 %b.i, label %_ZN5alloc5slice11stable_sort17hec37be94b6deeb57E.exit, label %bb7.i, !prof !1817

bb7.i:                                            ; preds = %start
  %b1.i = icmp samesign ult i64 %ar.1, 21
  br i1 %b1.i, label %bb9.i, label %bb10.i, !prof !1817

bb10.i:                                           ; preds = %bb7.i
; call core::slice::sort::stable::driftsort_main
  call void @_ZN4core5slice4sort6stable14driftsort_main17hf8b56acd288cc975E(ptr noalias noundef nonnull align 4 %ar.0, i64 noundef range(i64 0, 2305843009213693952) %ar.1, ptr noalias noundef nonnull align 1 %is_less.i)
  br label %_ZN5alloc5slice11stable_sort17hec37be94b6deeb57E.exit

bb9.i:                                            ; preds = %bb7.i
  %v_end.idx.i.i = shl nuw nsw i64 %ar.1, 2
  %v_end.i.i = getelementptr inbounds nuw i8, ptr %ar.0, i64 %v_end.idx.i.i
  %tail.sroa.0.01.i.i = getelementptr inbounds nuw i8, ptr %ar.0, i64 4
  %0 = and i64 %ar.1, 1
  %lcmp.mod.not.not = icmp eq i64 %0, 0
  br i1 %lcmp.mod.not.not, label %bb5.i.i.prol, label %bb5.i.i.prol.loopexit

bb5.i.i.prol:                                     ; preds = %bb9.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1818)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1821)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1823)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1826)
  %_3.i.i.i.i.i.prol = load i32, ptr %tail.sroa.0.01.i.i, align 4, !alias.scope !1828, !noalias !1833, !noundef !23
  %_4.i.i.i.i.i.prol = load i32, ptr %ar.0, align 4, !alias.scope !1834, !noalias !1835, !noundef !23
  %_0.i.i.i.i.i.prol = icmp slt i32 %_3.i.i.i.i.i.prol, %_4.i.i.i.i.i.prol
  br i1 %_0.i.i.i.i.i.prol, label %bb4.i.i.i.prol, label %_ZN4core5slice4sort6shared9smallsort11insert_tail17h05a8b5340615c48bE.exit.i.i.prol

bb4.i.i.i.prol:                                   ; preds = %bb5.i.i.prol, %bb7.i.i.i.prol
  %1 = phi i32 [ %_4.i.i2.i.i.i.prol, %bb7.i.i.i.prol ], [ %_4.i.i.i.i.i.prol, %bb5.i.i.prol ]
  %gap_guard.sroa.5.0.i.i.i.prol = phi ptr [ %sift.sroa.0.0.i.i.i.prol, %bb7.i.i.i.prol ], [ %tail.sroa.0.01.i.i, %bb5.i.i.prol ]
  %sift.sroa.0.0.i.i.i.prol = phi ptr [ %2, %bb7.i.i.i.prol ], [ %ar.0, %bb5.i.i.prol ]
  store i32 %1, ptr %gap_guard.sroa.5.0.i.i.i.prol, align 4, !alias.scope !1836
  %_18.i.i.i.prol = icmp eq ptr %sift.sroa.0.0.i.i.i.prol, %ar.0
  br i1 %_18.i.i.i.prol, label %bb10.i.i.i.prol, label %bb7.i.i.i.prol

bb7.i.i.i.prol:                                   ; preds = %bb4.i.i.i.prol
  %2 = getelementptr inbounds i8, ptr %sift.sroa.0.0.i.i.i.prol, i64 -4
  %_4.i.i2.i.i.i.prol = load i32, ptr %2, align 4, !alias.scope !1837, !noalias !1842, !noundef !23
  %_0.i.i3.i.i.i.prol = icmp slt i32 %_3.i.i.i.i.i.prol, %_4.i.i2.i.i.i.prol
  br i1 %_0.i.i3.i.i.i.prol, label %bb4.i.i.i.prol, label %bb10.i.i.i.prol

bb10.i.i.i.prol:                                  ; preds = %bb7.i.i.i.prol, %bb4.i.i.i.prol
  %sift.sroa.0.0.i.lcssa.i.i.prol = phi ptr [ %sift.sroa.0.0.i.i.i.prol, %bb7.i.i.i.prol ], [ %ar.0, %bb4.i.i.i.prol ]
  store i32 %_3.i.i.i.i.i.prol, ptr %sift.sroa.0.0.i.lcssa.i.i.prol, align 4, !alias.scope !1836, !noalias !1845
  br label %_ZN4core5slice4sort6shared9smallsort11insert_tail17h05a8b5340615c48bE.exit.i.i.prol

_ZN4core5slice4sort6shared9smallsort11insert_tail17h05a8b5340615c48bE.exit.i.i.prol: ; preds = %bb10.i.i.i.prol, %bb5.i.i.prol
  %tail.sroa.0.0.i.i.prol = getelementptr inbounds nuw i8, ptr %ar.0, i64 8
  br label %bb5.i.i.prol.loopexit

bb5.i.i.prol.loopexit:                            ; preds = %_ZN4core5slice4sort6shared9smallsort11insert_tail17h05a8b5340615c48bE.exit.i.i.prol, %bb9.i
  %tail.sroa.0.04.i.i.unr = phi ptr [ %tail.sroa.0.01.i.i, %bb9.i ], [ %tail.sroa.0.0.i.i.prol, %_ZN4core5slice4sort6shared9smallsort11insert_tail17h05a8b5340615c48bE.exit.i.i.prol ]
  %v.0.pn3.i.i.unr = phi ptr [ %ar.0, %bb9.i ], [ %tail.sroa.0.01.i.i, %_ZN4core5slice4sort6shared9smallsort11insert_tail17h05a8b5340615c48bE.exit.i.i.prol ]
  %3 = icmp eq i64 %ar.1, 2
  br i1 %3, label %_ZN5alloc5slice11stable_sort17hec37be94b6deeb57E.exit, label %bb5.i.i

bb5.i.i:                                          ; preds = %bb5.i.i.prol.loopexit, %_ZN4core5slice4sort6shared9smallsort11insert_tail17h05a8b5340615c48bE.exit.i.i.1
  %tail.sroa.0.04.i.i = phi ptr [ %tail.sroa.0.0.i.i.1, %_ZN4core5slice4sort6shared9smallsort11insert_tail17h05a8b5340615c48bE.exit.i.i.1 ], [ %tail.sroa.0.04.i.i.unr, %bb5.i.i.prol.loopexit ]
  %v.0.pn3.i.i = phi ptr [ %tail.sroa.0.0.i.i, %_ZN4core5slice4sort6shared9smallsort11insert_tail17h05a8b5340615c48bE.exit.i.i.1 ], [ %v.0.pn3.i.i.unr, %bb5.i.i.prol.loopexit ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1818)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1821)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1823)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1826)
  %_3.i.i.i.i.i = load i32, ptr %tail.sroa.0.04.i.i, align 4, !alias.scope !1828, !noalias !1833, !noundef !23
  %_4.i.i.i.i.i = load i32, ptr %v.0.pn3.i.i, align 4, !alias.scope !1834, !noalias !1835, !noundef !23
  %_0.i.i.i.i.i = icmp slt i32 %_3.i.i.i.i.i, %_4.i.i.i.i.i
  br i1 %_0.i.i.i.i.i, label %bb4.i.i.i, label %_ZN4core5slice4sort6shared9smallsort11insert_tail17h05a8b5340615c48bE.exit.i.i

bb4.i.i.i:                                        ; preds = %bb5.i.i, %bb7.i.i.i
  %4 = phi i32 [ %_4.i.i2.i.i.i, %bb7.i.i.i ], [ %_4.i.i.i.i.i, %bb5.i.i ]
  %gap_guard.sroa.5.0.i.i.i = phi ptr [ %sift.sroa.0.0.i.i.i, %bb7.i.i.i ], [ %tail.sroa.0.04.i.i, %bb5.i.i ]
  %sift.sroa.0.0.i.i.i = phi ptr [ %5, %bb7.i.i.i ], [ %v.0.pn3.i.i, %bb5.i.i ]
  store i32 %4, ptr %gap_guard.sroa.5.0.i.i.i, align 4, !alias.scope !1836
  %_18.i.i.i = icmp eq ptr %sift.sroa.0.0.i.i.i, %ar.0
  br i1 %_18.i.i.i, label %bb10.i.i.i, label %bb7.i.i.i

bb7.i.i.i:                                        ; preds = %bb4.i.i.i
  %5 = getelementptr inbounds i8, ptr %sift.sroa.0.0.i.i.i, i64 -4
  %_4.i.i2.i.i.i = load i32, ptr %5, align 4, !alias.scope !1837, !noalias !1842, !noundef !23
  %_0.i.i3.i.i.i = icmp slt i32 %_3.i.i.i.i.i, %_4.i.i2.i.i.i
  br i1 %_0.i.i3.i.i.i, label %bb4.i.i.i, label %bb10.i.i.i

bb10.i.i.i:                                       ; preds = %bb7.i.i.i, %bb4.i.i.i
  %sift.sroa.0.0.i.lcssa.i.i = phi ptr [ %sift.sroa.0.0.i.i.i, %bb7.i.i.i ], [ %ar.0, %bb4.i.i.i ]
  store i32 %_3.i.i.i.i.i, ptr %sift.sroa.0.0.i.lcssa.i.i, align 4, !alias.scope !1836, !noalias !1845
  br label %_ZN4core5slice4sort6shared9smallsort11insert_tail17h05a8b5340615c48bE.exit.i.i

_ZN4core5slice4sort6shared9smallsort11insert_tail17h05a8b5340615c48bE.exit.i.i: ; preds = %bb10.i.i.i, %bb5.i.i
  %tail.sroa.0.0.i.i = getelementptr inbounds nuw i8, ptr %tail.sroa.0.04.i.i, i64 4
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1850)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1852)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1854)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1856)
  %_3.i.i.i.i.i.1 = load i32, ptr %tail.sroa.0.0.i.i, align 4, !alias.scope !1858, !noalias !1859, !noundef !23
  %_4.i.i.i.i.i.1 = load i32, ptr %tail.sroa.0.04.i.i, align 4, !alias.scope !1860, !noalias !1861, !noundef !23
  %_0.i.i.i.i.i.1 = icmp slt i32 %_3.i.i.i.i.i.1, %_4.i.i.i.i.i.1
  br i1 %_0.i.i.i.i.i.1, label %bb4.i.i.i.1, label %_ZN4core5slice4sort6shared9smallsort11insert_tail17h05a8b5340615c48bE.exit.i.i.1

bb4.i.i.i.1:                                      ; preds = %_ZN4core5slice4sort6shared9smallsort11insert_tail17h05a8b5340615c48bE.exit.i.i, %bb7.i.i.i.1
  %6 = phi i32 [ %_4.i.i2.i.i.i.1, %bb7.i.i.i.1 ], [ %_4.i.i.i.i.i.1, %_ZN4core5slice4sort6shared9smallsort11insert_tail17h05a8b5340615c48bE.exit.i.i ]
  %gap_guard.sroa.5.0.i.i.i.1 = phi ptr [ %sift.sroa.0.0.i.i.i.1, %bb7.i.i.i.1 ], [ %tail.sroa.0.0.i.i, %_ZN4core5slice4sort6shared9smallsort11insert_tail17h05a8b5340615c48bE.exit.i.i ]
  %sift.sroa.0.0.i.i.i.1 = phi ptr [ %7, %bb7.i.i.i.1 ], [ %tail.sroa.0.04.i.i, %_ZN4core5slice4sort6shared9smallsort11insert_tail17h05a8b5340615c48bE.exit.i.i ]
  store i32 %6, ptr %gap_guard.sroa.5.0.i.i.i.1, align 4, !alias.scope !1836
  %_18.i.i.i.1 = icmp eq ptr %sift.sroa.0.0.i.i.i.1, %ar.0
  br i1 %_18.i.i.i.1, label %bb10.i.i.i.1, label %bb7.i.i.i.1

bb7.i.i.i.1:                                      ; preds = %bb4.i.i.i.1
  %7 = getelementptr inbounds i8, ptr %sift.sroa.0.0.i.i.i.1, i64 -4
  %_4.i.i2.i.i.i.1 = load i32, ptr %7, align 4, !alias.scope !1837, !noalias !1842, !noundef !23
  %_0.i.i3.i.i.i.1 = icmp slt i32 %_3.i.i.i.i.i.1, %_4.i.i2.i.i.i.1
  br i1 %_0.i.i3.i.i.i.1, label %bb4.i.i.i.1, label %bb10.i.i.i.1

bb10.i.i.i.1:                                     ; preds = %bb7.i.i.i.1, %bb4.i.i.i.1
  %sift.sroa.0.0.i.lcssa.i.i.1 = phi ptr [ %sift.sroa.0.0.i.i.i.1, %bb7.i.i.i.1 ], [ %ar.0, %bb4.i.i.i.1 ]
  store i32 %_3.i.i.i.i.i.1, ptr %sift.sroa.0.0.i.lcssa.i.i.1, align 4, !alias.scope !1836, !noalias !1845
  br label %_ZN4core5slice4sort6shared9smallsort11insert_tail17h05a8b5340615c48bE.exit.i.i.1

_ZN4core5slice4sort6shared9smallsort11insert_tail17h05a8b5340615c48bE.exit.i.i.1: ; preds = %bb10.i.i.i.1, %_ZN4core5slice4sort6shared9smallsort11insert_tail17h05a8b5340615c48bE.exit.i.i
  %tail.sroa.0.0.i.i.1 = getelementptr inbounds nuw i8, ptr %tail.sroa.0.04.i.i, i64 8
  %_11.not.i.i.1 = icmp eq ptr %tail.sroa.0.0.i.i.1, %v_end.i.i
  br i1 %_11.not.i.i.1, label %_ZN5alloc5slice11stable_sort17hec37be94b6deeb57E.exit, label %bb5.i.i

_ZN5alloc5slice11stable_sort17hec37be94b6deeb57E.exit: ; preds = %bb5.i.i.prol.loopexit, %_ZN4core5slice4sort6shared9smallsort11insert_tail17h05a8b5340615c48bE.exit.i.i.1, %start, %bb10.i
  call void @llvm.lifetime.end.p0(i64 0, ptr nonnull %is_less.i)
  %_7 = sext i32 %n to i64
  %_6 = add nsw i64 %_7, -1
  %_417.not = icmp eq i64 %_6, 0
  br i1 %_417.not, label %bb12, label %bb3.preheader

bb3.preheader:                                    ; preds = %_ZN5alloc5slice11stable_sort17hec37be94b6deeb57E.exit, %bb10
  %res.sroa.0.019 = phi i32 [ %_0.sroa.0.0.i, %bb10 ], [ 0, %_ZN5alloc5slice11stable_sort17hec37be94b6deeb57E.exit ]
  %i.sroa.0.018 = phi i64 [ %.pre-phi, %bb10 ], [ 0, %_ZN5alloc5slice11stable_sort17hec37be94b6deeb57E.exit ]
  %8 = add nuw i64 %i.sroa.0.018, 1
  %umax24 = call i64 @llvm.umax.i64(i64 %_6, i64 %8)
  br label %bb4

bb12:                                             ; preds = %bb10, %_ZN5alloc5slice11stable_sort17hec37be94b6deeb57E.exit
  %res.sroa.0.0.lcssa = phi i32 [ 0, %_ZN5alloc5slice11stable_sort17hec37be94b6deeb57E.exit ], [ %_0.sroa.0.0.i, %bb10 ]
  ret i32 %res.sroa.0.0.lcssa

bb4:                                              ; preds = %bb3.preheader, %bb7
  %i.sroa.0.116 = phi i64 [ %i.sroa.0.018, %bb3.preheader ], [ %_17, %bb7 ]
  %count.sroa.0.015 = phi i32 [ 1, %bb3.preheader ], [ %11, %bb7 ]
  %_15 = icmp ult i64 %i.sroa.0.116, %ar.1
  br i1 %_15, label %bb5, label %panic

bb10:                                             ; preds = %bb6, %bb7.bb10_crit_edge
  %.pre-phi = phi i64 [ %.pre, %bb7.bb10_crit_edge ], [ %_17, %bb6 ]
  %count.sroa.0.0.lcssa = phi i32 [ %11, %bb7.bb10_crit_edge ], [ %count.sroa.0.015, %bb6 ]
  %_0.sroa.0.0.i = call noundef i32 @llvm.smax.i32(i32 %count.sroa.0.0.lcssa, i32 %res.sroa.0.019)
  %_4 = icmp ult i64 %.pre-phi, %_6
  br i1 %_4, label %bb3.preheader, label %bb12

bb5:                                              ; preds = %bb4
  %_17 = add nuw i64 %i.sroa.0.116, 1
  %_19 = icmp ult i64 %_17, %ar.1
  br i1 %_19, label %bb6, label %panic1

panic:                                            ; preds = %bb4
  %umax = call i64 @llvm.umax.i64(i64 %i.sroa.0.018, i64 %ar.1)
; call core::panicking::panic_bounds_check
  call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef %umax, i64 noundef %ar.1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_5b702a30463347958fb8d0101a1491a2) #18
  unreachable

bb6:                                              ; preds = %bb5
  %9 = getelementptr inbounds nuw i32, ptr %ar.0, i64 %i.sroa.0.116
  %_12 = load i32, ptr %9, align 4, !noundef !23
  %10 = getelementptr inbounds nuw i32, ptr %ar.0, i64 %_17
  %_16 = load i32, ptr %10, align 4, !noundef !23
  %_11 = icmp eq i32 %_12, %_16
  br i1 %_11, label %bb7, label %bb10

panic1:                                           ; preds = %bb5
  %umax23 = call i64 @llvm.umax.i64(i64 %ar.1, i64 %8)
; call core::panicking::panic_bounds_check
  call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef %umax23, i64 noundef %ar.1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_873eebaa8e2ea828cb6f02bd71ac525d) #18
  unreachable

bb7:                                              ; preds = %bb6
  %11 = add i32 %count.sroa.0.015, 1
  %exitcond.not = icmp eq i64 %_17, %umax24
  br i1 %exitcond.not, label %bb7.bb10_crit_edge, label %bb4

bb7.bb10_crit_edge:                               ; preds = %bb7
  %.pre = add nuw i64 %umax24, 1
  br label %bb10
}

define noundef range(i32 0, 2) i32 @f_gold(ptr noalias noundef nonnull align 4 %arr.0, i64 noundef range(i64 0, 2305843009213693952) %arr.1, i32 noundef %n) unnamed_addr #1 personality ptr @rust_eh_personality {
start:
  %compare.i = alloca [0 x i8], align 1
  %is_less.i.i = alloca [8 x i8], align 8
  %_3 = icmp slt i32 %n, 3
  br i1 %_3, label %bb12, label %bb2

bb2:                                              ; preds = %start
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1817)
  call void @llvm.lifetime.start.p0(i64 0, ptr nonnull %compare.i)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1820)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %is_less.i.i), !noalias !1817
  store ptr %compare.i, ptr %is_less.i.i, align 8, !noalias !1823
  %b.i.i = icmp samesign ult i64 %arr.1, 2
  br i1 %b.i.i, label %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by17h976c6bff772219a4E.exit", label %bb7.i.i, !prof !1825

bb7.i.i:                                          ; preds = %bb2
  %b1.i.i = icmp samesign ult i64 %arr.1, 21
  br i1 %b1.i.i, label %bb9.i.i, label %bb10.i.i, !prof !1825

bb10.i.i:                                         ; preds = %bb7.i.i
; call core::slice::sort::stable::driftsort_main
  call void @_ZN4core5slice4sort6stable14driftsort_main17h1de84e17b771f56dE(ptr noalias noundef nonnull align 4 %arr.0, i64 noundef range(i64 0, 2305843009213693952) %arr.1, ptr noalias noundef nonnull align 8 dereferenceable(8) %is_less.i.i)
  br label %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by17h976c6bff772219a4E.exit"

bb9.i.i:                                          ; preds = %bb7.i.i
  %v_end.idx.i.i.i = shl nuw nsw i64 %arr.1, 2
  %v_end.i.i.i = getelementptr inbounds nuw i8, ptr %arr.0, i64 %v_end.idx.i.i.i
  %tail.sroa.0.01.i.i.i = getelementptr inbounds nuw i8, ptr %arr.0, i64 4
  %0 = and i64 %arr.1, 1
  %lcmp.mod.not.not = icmp eq i64 %0, 0
  br i1 %lcmp.mod.not.not, label %bb5.i.i.i.prol, label %bb5.i.i.i.prol.loopexit

bb5.i.i.i.prol:                                   ; preds = %bb9.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !1826)
  call void @llvm.experimental.noalias.scope.decl(metadata !1829)
  call void @llvm.experimental.noalias.scope.decl(metadata !1831)
  call void @llvm.experimental.noalias.scope.decl(metadata !1834)
  %_4.i.i.i.i.i.i.prol = load i32, ptr %tail.sroa.0.01.i.i.i, align 4, !alias.scope !1836, !noalias !1839, !noundef !18
  %_5.i.i.i.i.i.i.prol = load i32, ptr %arr.0, align 4, !alias.scope !1840, !noalias !1841, !noundef !18
  %_0.i.i.i.i.i.prol = icmp slt i32 %_4.i.i.i.i.i.i.prol, %_5.i.i.i.i.i.i.prol
  br i1 %_0.i.i.i.i.i.prol, label %bb4.i.i.i.i.prol, label %_ZN4core5slice4sort6shared9smallsort11insert_tail17h9695016a2ae8d5dfE.exit.i.i.i.prol

bb4.i.i.i.i.prol:                                 ; preds = %bb5.i.i.i.prol, %bb7.i.i.i.i.prol
  %1 = phi i32 [ %_5.i.i2.i.i.i.i.prol, %bb7.i.i.i.i.prol ], [ %_5.i.i.i.i.i.i.prol, %bb5.i.i.i.prol ]
  %gap_guard.sroa.5.0.i.i.i.i.prol = phi ptr [ %sift.sroa.0.0.i.i.i.i.prol, %bb7.i.i.i.i.prol ], [ %tail.sroa.0.01.i.i.i, %bb5.i.i.i.prol ]
  %sift.sroa.0.0.i.i.i.i.prol = phi ptr [ %2, %bb7.i.i.i.i.prol ], [ %arr.0, %bb5.i.i.i.prol ]
  store i32 %1, ptr %gap_guard.sroa.5.0.i.i.i.i.prol, align 4, !alias.scope !1842, !noalias !1843
  %_18.i.i.i.i.prol = icmp eq ptr %sift.sroa.0.0.i.i.i.i.prol, %arr.0
  br i1 %_18.i.i.i.i.prol, label %bb10.i.i.i.i.prol, label %bb7.i.i.i.i.prol

bb7.i.i.i.i.prol:                                 ; preds = %bb4.i.i.i.i.prol
  %2 = getelementptr inbounds i8, ptr %sift.sroa.0.0.i.i.i.i.prol, i64 -4
  %_5.i.i2.i.i.i.i.prol = load i32, ptr %2, align 4, !alias.scope !1844, !noalias !1849, !noundef !18
  %_0.i3.i.i.i.i.prol = icmp slt i32 %_4.i.i.i.i.i.i.prol, %_5.i.i2.i.i.i.i.prol
  br i1 %_0.i3.i.i.i.i.prol, label %bb4.i.i.i.i.prol, label %bb10.i.i.i.i.prol

bb10.i.i.i.i.prol:                                ; preds = %bb7.i.i.i.i.prol, %bb4.i.i.i.i.prol
  %sift.sroa.0.0.i.lcssa.i.i.i.prol = phi ptr [ %sift.sroa.0.0.i.i.i.i.prol, %bb7.i.i.i.i.prol ], [ %arr.0, %bb4.i.i.i.i.prol ]
  store i32 %_4.i.i.i.i.i.i.prol, ptr %sift.sroa.0.0.i.lcssa.i.i.i.prol, align 4, !alias.scope !1842, !noalias !1852
  br label %_ZN4core5slice4sort6shared9smallsort11insert_tail17h9695016a2ae8d5dfE.exit.i.i.i.prol

_ZN4core5slice4sort6shared9smallsort11insert_tail17h9695016a2ae8d5dfE.exit.i.i.i.prol: ; preds = %bb10.i.i.i.i.prol, %bb5.i.i.i.prol
  %tail.sroa.0.0.i.i.i.prol = getelementptr inbounds nuw i8, ptr %arr.0, i64 8
  br label %bb5.i.i.i.prol.loopexit

bb5.i.i.i.prol.loopexit:                          ; preds = %_ZN4core5slice4sort6shared9smallsort11insert_tail17h9695016a2ae8d5dfE.exit.i.i.i.prol, %bb9.i.i
  %tail.sroa.0.04.i.i.i.unr = phi ptr [ %tail.sroa.0.01.i.i.i, %bb9.i.i ], [ %tail.sroa.0.0.i.i.i.prol, %_ZN4core5slice4sort6shared9smallsort11insert_tail17h9695016a2ae8d5dfE.exit.i.i.i.prol ]
  %v.0.pn3.i.i.i.unr = phi ptr [ %arr.0, %bb9.i.i ], [ %tail.sroa.0.01.i.i.i, %_ZN4core5slice4sort6shared9smallsort11insert_tail17h9695016a2ae8d5dfE.exit.i.i.i.prol ]
  %3 = icmp eq i64 %arr.1, 2
  br i1 %3, label %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by17h976c6bff772219a4E.exit", label %bb5.i.i.i

bb5.i.i.i:                                        ; preds = %bb5.i.i.i.prol.loopexit, %_ZN4core5slice4sort6shared9smallsort11insert_tail17h9695016a2ae8d5dfE.exit.i.i.i.1
  %tail.sroa.0.04.i.i.i = phi ptr [ %tail.sroa.0.0.i.i.i.1, %_ZN4core5slice4sort6shared9smallsort11insert_tail17h9695016a2ae8d5dfE.exit.i.i.i.1 ], [ %tail.sroa.0.04.i.i.i.unr, %bb5.i.i.i.prol.loopexit ]
  %v.0.pn3.i.i.i = phi ptr [ %tail.sroa.0.0.i.i.i, %_ZN4core5slice4sort6shared9smallsort11insert_tail17h9695016a2ae8d5dfE.exit.i.i.i.1 ], [ %v.0.pn3.i.i.i.unr, %bb5.i.i.i.prol.loopexit ]
  call void @llvm.experimental.noalias.scope.decl(metadata !1826)
  call void @llvm.experimental.noalias.scope.decl(metadata !1829)
  call void @llvm.experimental.noalias.scope.decl(metadata !1831)
  call void @llvm.experimental.noalias.scope.decl(metadata !1834)
  %_4.i.i.i.i.i.i = load i32, ptr %tail.sroa.0.04.i.i.i, align 4, !alias.scope !1836, !noalias !1839, !noundef !18
  %_5.i.i.i.i.i.i = load i32, ptr %v.0.pn3.i.i.i, align 4, !alias.scope !1840, !noalias !1841, !noundef !18
  %_0.i.i.i.i.i = icmp slt i32 %_4.i.i.i.i.i.i, %_5.i.i.i.i.i.i
  br i1 %_0.i.i.i.i.i, label %bb4.i.i.i.i, label %_ZN4core5slice4sort6shared9smallsort11insert_tail17h9695016a2ae8d5dfE.exit.i.i.i

bb4.i.i.i.i:                                      ; preds = %bb5.i.i.i, %bb7.i.i.i.i
  %4 = phi i32 [ %_5.i.i2.i.i.i.i, %bb7.i.i.i.i ], [ %_5.i.i.i.i.i.i, %bb5.i.i.i ]
  %gap_guard.sroa.5.0.i.i.i.i = phi ptr [ %sift.sroa.0.0.i.i.i.i, %bb7.i.i.i.i ], [ %tail.sroa.0.04.i.i.i, %bb5.i.i.i ]
  %sift.sroa.0.0.i.i.i.i = phi ptr [ %5, %bb7.i.i.i.i ], [ %v.0.pn3.i.i.i, %bb5.i.i.i ]
  store i32 %4, ptr %gap_guard.sroa.5.0.i.i.i.i, align 4, !alias.scope !1842, !noalias !1843
  %_18.i.i.i.i = icmp eq ptr %sift.sroa.0.0.i.i.i.i, %arr.0
  br i1 %_18.i.i.i.i, label %bb10.i.i.i.i, label %bb7.i.i.i.i

bb7.i.i.i.i:                                      ; preds = %bb4.i.i.i.i
  %5 = getelementptr inbounds i8, ptr %sift.sroa.0.0.i.i.i.i, i64 -4
  %_5.i.i2.i.i.i.i = load i32, ptr %5, align 4, !alias.scope !1844, !noalias !1849, !noundef !18
  %_0.i3.i.i.i.i = icmp slt i32 %_4.i.i.i.i.i.i, %_5.i.i2.i.i.i.i
  br i1 %_0.i3.i.i.i.i, label %bb4.i.i.i.i, label %bb10.i.i.i.i

bb10.i.i.i.i:                                     ; preds = %bb7.i.i.i.i, %bb4.i.i.i.i
  %sift.sroa.0.0.i.lcssa.i.i.i = phi ptr [ %sift.sroa.0.0.i.i.i.i, %bb7.i.i.i.i ], [ %arr.0, %bb4.i.i.i.i ]
  store i32 %_4.i.i.i.i.i.i, ptr %sift.sroa.0.0.i.lcssa.i.i.i, align 4, !alias.scope !1842, !noalias !1852
  br label %_ZN4core5slice4sort6shared9smallsort11insert_tail17h9695016a2ae8d5dfE.exit.i.i.i

_ZN4core5slice4sort6shared9smallsort11insert_tail17h9695016a2ae8d5dfE.exit.i.i.i: ; preds = %bb10.i.i.i.i, %bb5.i.i.i
  %tail.sroa.0.0.i.i.i = getelementptr inbounds nuw i8, ptr %tail.sroa.0.04.i.i.i, i64 4
  call void @llvm.experimental.noalias.scope.decl(metadata !1857)
  call void @llvm.experimental.noalias.scope.decl(metadata !1859)
  call void @llvm.experimental.noalias.scope.decl(metadata !1861)
  call void @llvm.experimental.noalias.scope.decl(metadata !1863)
  %_4.i.i.i.i.i.i.1 = load i32, ptr %tail.sroa.0.0.i.i.i, align 4, !alias.scope !1865, !noalias !1866, !noundef !18
  %_5.i.i.i.i.i.i.1 = load i32, ptr %tail.sroa.0.04.i.i.i, align 4, !alias.scope !1867, !noalias !1868, !noundef !18
  %_0.i.i.i.i.i.1 = icmp slt i32 %_4.i.i.i.i.i.i.1, %_5.i.i.i.i.i.i.1
  br i1 %_0.i.i.i.i.i.1, label %bb4.i.i.i.i.1, label %_ZN4core5slice4sort6shared9smallsort11insert_tail17h9695016a2ae8d5dfE.exit.i.i.i.1

bb4.i.i.i.i.1:                                    ; preds = %_ZN4core5slice4sort6shared9smallsort11insert_tail17h9695016a2ae8d5dfE.exit.i.i.i, %bb7.i.i.i.i.1
  %6 = phi i32 [ %_5.i.i2.i.i.i.i.1, %bb7.i.i.i.i.1 ], [ %_5.i.i.i.i.i.i.1, %_ZN4core5slice4sort6shared9smallsort11insert_tail17h9695016a2ae8d5dfE.exit.i.i.i ]
  %gap_guard.sroa.5.0.i.i.i.i.1 = phi ptr [ %sift.sroa.0.0.i.i.i.i.1, %bb7.i.i.i.i.1 ], [ %tail.sroa.0.0.i.i.i, %_ZN4core5slice4sort6shared9smallsort11insert_tail17h9695016a2ae8d5dfE.exit.i.i.i ]
  %sift.sroa.0.0.i.i.i.i.1 = phi ptr [ %7, %bb7.i.i.i.i.1 ], [ %tail.sroa.0.04.i.i.i, %_ZN4core5slice4sort6shared9smallsort11insert_tail17h9695016a2ae8d5dfE.exit.i.i.i ]
  store i32 %6, ptr %gap_guard.sroa.5.0.i.i.i.i.1, align 4, !alias.scope !1842, !noalias !1843
  %_18.i.i.i.i.1 = icmp eq ptr %sift.sroa.0.0.i.i.i.i.1, %arr.0
  br i1 %_18.i.i.i.i.1, label %bb10.i.i.i.i.1, label %bb7.i.i.i.i.1

bb7.i.i.i.i.1:                                    ; preds = %bb4.i.i.i.i.1
  %7 = getelementptr inbounds i8, ptr %sift.sroa.0.0.i.i.i.i.1, i64 -4
  %_5.i.i2.i.i.i.i.1 = load i32, ptr %7, align 4, !alias.scope !1844, !noalias !1849, !noundef !18
  %_0.i3.i.i.i.i.1 = icmp slt i32 %_4.i.i.i.i.i.i.1, %_5.i.i2.i.i.i.i.1
  br i1 %_0.i3.i.i.i.i.1, label %bb4.i.i.i.i.1, label %bb10.i.i.i.i.1

bb10.i.i.i.i.1:                                   ; preds = %bb7.i.i.i.i.1, %bb4.i.i.i.i.1
  %sift.sroa.0.0.i.lcssa.i.i.i.1 = phi ptr [ %sift.sroa.0.0.i.i.i.i.1, %bb7.i.i.i.i.1 ], [ %arr.0, %bb4.i.i.i.i.1 ]
  store i32 %_4.i.i.i.i.i.i.1, ptr %sift.sroa.0.0.i.lcssa.i.i.i.1, align 4, !alias.scope !1842, !noalias !1852
  br label %_ZN4core5slice4sort6shared9smallsort11insert_tail17h9695016a2ae8d5dfE.exit.i.i.i.1

_ZN4core5slice4sort6shared9smallsort11insert_tail17h9695016a2ae8d5dfE.exit.i.i.i.1: ; preds = %bb10.i.i.i.i.1, %_ZN4core5slice4sort6shared9smallsort11insert_tail17h9695016a2ae8d5dfE.exit.i.i.i
  %tail.sroa.0.0.i.i.i.1 = getelementptr inbounds nuw i8, ptr %tail.sroa.0.04.i.i.i, i64 8
  %_11.not.i.i.i.1 = icmp eq ptr %tail.sroa.0.0.i.i.i.1, %v_end.i.i.i
  br i1 %_11.not.i.i.i.1, label %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by17h976c6bff772219a4E.exit", label %bb5.i.i.i

"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by17h976c6bff772219a4E.exit": ; preds = %bb5.i.i.i.prol.loopexit, %_ZN4core5slice4sort6shared9smallsort11insert_tail17h9695016a2ae8d5dfE.exit.i.i.i.1, %bb2, %bb10.i.i
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %is_less.i.i), !noalias !1817
  call void @llvm.lifetime.end.p0(i64 0, ptr nonnull %compare.i)
  %_9 = zext nneg i32 %n to i64
  %_8 = add nsw i64 %_9, -2
  %umax = call i64 @llvm.umax.i64(i64 %arr.1, i64 1)
  %umax15 = call i64 @llvm.umax.i64(i64 %arr.1, i64 2)
  %8 = add nsw i64 %umax, -1
  %9 = add nsw i64 %umax15, -2
  %invariant.gep = getelementptr inbounds nuw i8, ptr %arr.0, i64 8
  br label %bb4

bb4:                                              ; preds = %bb8, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by17h976c6bff772219a4E.exit"
  %i.sroa.0.0 = phi i64 [ 0, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by17h976c6bff772219a4E.exit" ], [ %_17, %bb8 ]
  %exitcond.not = icmp eq i64 %i.sroa.0.0, %_8
  br i1 %exitcond.not, label %bb12, label %bb5

bb5:                                              ; preds = %bb4
  %exitcond16.not = icmp eq i64 %i.sroa.0.0, %arr.1
  br i1 %exitcond16.not, label %panic, label %bb6

bb12:                                             ; preds = %bb8, %bb4, %start
  %_0.sroa.0.0 = phi i32 [ 0, %start ], [ 1, %bb8 ], [ 0, %bb4 ]
  ret i32 %_0.sroa.0.0

bb6:                                              ; preds = %bb5
  %_17 = add nuw nsw i64 %i.sroa.0.0, 1
  %exitcond17.not = icmp eq i64 %i.sroa.0.0, %8
  br i1 %exitcond17.not, label %panic1, label %bb7

panic:                                            ; preds = %bb5
; call core::panicking::panic_bounds_check
  call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef %arr.1, i64 noundef %arr.1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_7dfa0041315cec4bed7c7690a4e25e62) #18
  unreachable

bb7:                                              ; preds = %bb6
  %exitcond18.not = icmp eq i64 %i.sroa.0.0, %9
  br i1 %exitcond18.not, label %panic2, label %bb8

panic1:                                           ; preds = %bb6
; call core::panicking::panic_bounds_check
  call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef %umax, i64 noundef %arr.1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_2e2557740e5afd8e22f8bcf6486be8df) #18
  unreachable

bb8:                                              ; preds = %bb7
  %10 = getelementptr inbounds nuw i32, ptr %arr.0, i64 %i.sroa.0.0
  %_12 = load i32, ptr %10, align 4, !noundef !18
  %11 = getelementptr inbounds nuw i32, ptr %arr.0, i64 %_17
  %_16 = load i32, ptr %11, align 4, !noundef !18
  %_11 = add i32 %_16, %_12
  %gep = getelementptr inbounds nuw i32, ptr %invariant.gep, i64 %i.sroa.0.0
  %_20 = load i32, ptr %gep, align 4, !noundef !18
  %_10 = icmp sgt i32 %_11, %_20
  br i1 %_10, label %bb12, label %bb4

panic2:                                           ; preds = %bb7
; call core::panicking::panic_bounds_check
  call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef %umax15, i64 noundef %arr.1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_5e20287c63c9b23ef3cff9903ae81108) #18
  unreachable
}

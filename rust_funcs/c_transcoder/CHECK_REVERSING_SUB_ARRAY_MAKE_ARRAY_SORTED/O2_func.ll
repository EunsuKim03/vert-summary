define noundef range(i32 0, 2) i32 @f_gold(ptr noalias noundef nonnull readonly align 4 captures(none) %arr.0, i64 noundef range(i64 0, 2305843009213693952) %arr.1, i32 noundef %n) unnamed_addr #1 personality ptr @rust_eh_personality {
start:
  %is_less.i = alloca [0 x i8], align 1
  %_21.0.i.i.i.i = shl nuw nsw i64 %arr.1, 2
  %_8.i.i.i = icmp eq i64 %arr.1, 0
  br i1 %_8.i.i.i, label %"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17h195870e6b0cdd3cdE.exit.thread", label %bb5.i.i.i

"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17h195870e6b0cdd3cdE.exit.thread": ; preds = %start
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 inttoptr (i64 4 to ptr), ptr nonnull readonly align 4 %arr.0, i64 %_21.0.i.i.i.i, i1 false), !noalias !1817
  call void @llvm.lifetime.start.p0(i64 0, ptr nonnull %is_less.i)
  br label %_ZN5alloc5slice11stable_sort17h222022ef7ce71c73E.exit

bb5.i.i.i:                                        ; preds = %start
; call __rustc::__rust_no_alloc_shim_is_unstable_v2
  tail call void @_RNvCsdBezzDwma51_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #19, !noalias !1820
; call __rustc::__rust_alloc
  %0 = tail call noundef align 4 ptr @_RNvCsdBezzDwma51_7___rustc12___rust_alloc(i64 noundef range(i64 1, 0) %_21.0.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 4) #19, !noalias !1820
  %1 = icmp eq ptr %0, null
  br i1 %1, label %bb3.i.i, label %"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17h195870e6b0cdd3cdE.exit"

bb3.i.i:                                          ; preds = %bb5.i.i.i
; call alloc::raw_vec::handle_error
  tail call void @_ZN5alloc7raw_vec12handle_error17h3a8c375904e593b2E(i64 noundef 4, i64 %_21.0.i.i.i.i) #20, !noalias !1824
  unreachable

"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17h195870e6b0cdd3cdE.exit": ; preds = %bb5.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %0, ptr nonnull readonly align 4 %arr.0, i64 %_21.0.i.i.i.i, i1 false), !noalias !1817
  call void @llvm.lifetime.start.p0(i64 0, ptr nonnull %is_less.i)
  %b.i = icmp eq i64 %arr.1, 1
  br i1 %b.i, label %_ZN5alloc5slice11stable_sort17h222022ef7ce71c73E.exit, label %bb7.i, !prof !1825

bb7.i:                                            ; preds = %"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17h195870e6b0cdd3cdE.exit"
  %b1.i = icmp samesign ult i64 %arr.1, 21
  br i1 %b1.i, label %bb9.i, label %bb10.i, !prof !1826

bb10.i:                                           ; preds = %bb7.i
; invoke core::slice::sort::stable::driftsort_main
  invoke void @_ZN4core5slice4sort6stable14driftsort_main17h2aa9d04a700e5c38E(ptr noalias noundef nonnull align 4 %0, i64 noundef range(i64 0, 2305843009213693952) %arr.1, ptr noalias noundef nonnull align 1 %is_less.i)
          to label %_ZN5alloc5slice11stable_sort17h222022ef7ce71c73E.exit unwind label %cleanup.thread

bb9.i:                                            ; preds = %bb7.i
  %v_end.i.i = getelementptr inbounds nuw i8, ptr %0, i64 %_21.0.i.i.i.i
  %tail.sroa.0.01.i.i = getelementptr inbounds nuw i8, ptr %0, i64 4
  %2 = and i64 %arr.1, 1
  %lcmp.mod.not.not = icmp eq i64 %2, 0
  br i1 %lcmp.mod.not.not, label %bb5.i.i.prol, label %bb5.i.i.prol.loopexit

bb5.i.i.prol:                                     ; preds = %bb9.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1827)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1830)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1832)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1835)
  %_3.i.i.i.i.i.prol = load i32, ptr %tail.sroa.0.01.i.i, align 4, !alias.scope !1837, !noalias !1842, !noundef !18
  %_4.i.i.i.i.i.prol = load i32, ptr %0, align 4, !alias.scope !1843, !noalias !1844, !noundef !18
  %_0.i.i.i.i.i.prol = icmp slt i32 %_3.i.i.i.i.i.prol, %_4.i.i.i.i.i.prol
  br i1 %_0.i.i.i.i.i.prol, label %bb4.i.i.i.prol, label %_ZN4core5slice4sort6shared9smallsort11insert_tail17h0dc0d9cb5eabf134E.exit.i.i.prol

bb4.i.i.i.prol:                                   ; preds = %bb5.i.i.prol, %bb7.i.i.i.prol
  %3 = phi i32 [ %_4.i.i2.i.i.i.prol, %bb7.i.i.i.prol ], [ %_4.i.i.i.i.i.prol, %bb5.i.i.prol ]
  %gap_guard.sroa.5.0.i.i.i.prol = phi ptr [ %sift.sroa.0.0.i.i.i.prol, %bb7.i.i.i.prol ], [ %tail.sroa.0.01.i.i, %bb5.i.i.prol ]
  %sift.sroa.0.0.i.i.i.prol = phi ptr [ %4, %bb7.i.i.i.prol ], [ %0, %bb5.i.i.prol ]
  store i32 %3, ptr %gap_guard.sroa.5.0.i.i.i.prol, align 4, !alias.scope !1845
  %_18.i.i.i.prol = icmp eq ptr %sift.sroa.0.0.i.i.i.prol, %0
  br i1 %_18.i.i.i.prol, label %bb10.i.i.i19.prol, label %bb7.i.i.i.prol

bb7.i.i.i.prol:                                   ; preds = %bb4.i.i.i.prol
  %4 = getelementptr inbounds i8, ptr %sift.sroa.0.0.i.i.i.prol, i64 -4
  %_4.i.i2.i.i.i.prol = load i32, ptr %4, align 4, !alias.scope !1846, !noalias !1851, !noundef !18
  %_0.i.i3.i.i.i.prol = icmp slt i32 %_3.i.i.i.i.i.prol, %_4.i.i2.i.i.i.prol
  br i1 %_0.i.i3.i.i.i.prol, label %bb4.i.i.i.prol, label %bb10.i.i.i19.prol

bb10.i.i.i19.prol:                                ; preds = %bb7.i.i.i.prol, %bb4.i.i.i.prol
  %sift.sroa.0.0.i.lcssa.i.i.prol = phi ptr [ %sift.sroa.0.0.i.i.i.prol, %bb7.i.i.i.prol ], [ %0, %bb4.i.i.i.prol ]
  store i32 %_3.i.i.i.i.i.prol, ptr %sift.sroa.0.0.i.lcssa.i.i.prol, align 4, !alias.scope !1845, !noalias !1854
  br label %_ZN4core5slice4sort6shared9smallsort11insert_tail17h0dc0d9cb5eabf134E.exit.i.i.prol

_ZN4core5slice4sort6shared9smallsort11insert_tail17h0dc0d9cb5eabf134E.exit.i.i.prol: ; preds = %bb10.i.i.i19.prol, %bb5.i.i.prol
  %tail.sroa.0.0.i.i.prol = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %bb5.i.i.prol.loopexit

bb5.i.i.prol.loopexit:                            ; preds = %_ZN4core5slice4sort6shared9smallsort11insert_tail17h0dc0d9cb5eabf134E.exit.i.i.prol, %bb9.i
  %tail.sroa.0.04.i.i.unr = phi ptr [ %tail.sroa.0.01.i.i, %bb9.i ], [ %tail.sroa.0.0.i.i.prol, %_ZN4core5slice4sort6shared9smallsort11insert_tail17h0dc0d9cb5eabf134E.exit.i.i.prol ]
  %v.0.pn3.i.i.unr = phi ptr [ %0, %bb9.i ], [ %tail.sroa.0.01.i.i, %_ZN4core5slice4sort6shared9smallsort11insert_tail17h0dc0d9cb5eabf134E.exit.i.i.prol ]
  %5 = icmp eq i64 %arr.1, 2
  br i1 %5, label %_ZN5alloc5slice11stable_sort17h222022ef7ce71c73E.exit, label %bb5.i.i

bb5.i.i:                                          ; preds = %bb5.i.i.prol.loopexit, %_ZN4core5slice4sort6shared9smallsort11insert_tail17h0dc0d9cb5eabf134E.exit.i.i.1
  %tail.sroa.0.04.i.i = phi ptr [ %tail.sroa.0.0.i.i.1, %_ZN4core5slice4sort6shared9smallsort11insert_tail17h0dc0d9cb5eabf134E.exit.i.i.1 ], [ %tail.sroa.0.04.i.i.unr, %bb5.i.i.prol.loopexit ]
  %v.0.pn3.i.i = phi ptr [ %tail.sroa.0.0.i.i, %_ZN4core5slice4sort6shared9smallsort11insert_tail17h0dc0d9cb5eabf134E.exit.i.i.1 ], [ %v.0.pn3.i.i.unr, %bb5.i.i.prol.loopexit ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1827)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1830)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1832)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1835)
  %_3.i.i.i.i.i = load i32, ptr %tail.sroa.0.04.i.i, align 4, !alias.scope !1837, !noalias !1842, !noundef !18
  %_4.i.i.i.i.i = load i32, ptr %v.0.pn3.i.i, align 4, !alias.scope !1843, !noalias !1844, !noundef !18
  %_0.i.i.i.i.i = icmp slt i32 %_3.i.i.i.i.i, %_4.i.i.i.i.i
  br i1 %_0.i.i.i.i.i, label %bb4.i.i.i, label %_ZN4core5slice4sort6shared9smallsort11insert_tail17h0dc0d9cb5eabf134E.exit.i.i

bb4.i.i.i:                                        ; preds = %bb5.i.i, %bb7.i.i.i
  %6 = phi i32 [ %_4.i.i2.i.i.i, %bb7.i.i.i ], [ %_4.i.i.i.i.i, %bb5.i.i ]
  %gap_guard.sroa.5.0.i.i.i = phi ptr [ %sift.sroa.0.0.i.i.i, %bb7.i.i.i ], [ %tail.sroa.0.04.i.i, %bb5.i.i ]
  %sift.sroa.0.0.i.i.i = phi ptr [ %7, %bb7.i.i.i ], [ %v.0.pn3.i.i, %bb5.i.i ]
  store i32 %6, ptr %gap_guard.sroa.5.0.i.i.i, align 4, !alias.scope !1845
  %_18.i.i.i = icmp eq ptr %sift.sroa.0.0.i.i.i, %0
  br i1 %_18.i.i.i, label %bb10.i.i.i19, label %bb7.i.i.i

bb7.i.i.i:                                        ; preds = %bb4.i.i.i
  %7 = getelementptr inbounds i8, ptr %sift.sroa.0.0.i.i.i, i64 -4
  %_4.i.i2.i.i.i = load i32, ptr %7, align 4, !alias.scope !1846, !noalias !1851, !noundef !18
  %_0.i.i3.i.i.i = icmp slt i32 %_3.i.i.i.i.i, %_4.i.i2.i.i.i
  br i1 %_0.i.i3.i.i.i, label %bb4.i.i.i, label %bb10.i.i.i19

bb10.i.i.i19:                                     ; preds = %bb7.i.i.i, %bb4.i.i.i
  %sift.sroa.0.0.i.lcssa.i.i = phi ptr [ %sift.sroa.0.0.i.i.i, %bb7.i.i.i ], [ %0, %bb4.i.i.i ]
  store i32 %_3.i.i.i.i.i, ptr %sift.sroa.0.0.i.lcssa.i.i, align 4, !alias.scope !1845, !noalias !1854
  br label %_ZN4core5slice4sort6shared9smallsort11insert_tail17h0dc0d9cb5eabf134E.exit.i.i

_ZN4core5slice4sort6shared9smallsort11insert_tail17h0dc0d9cb5eabf134E.exit.i.i: ; preds = %bb10.i.i.i19, %bb5.i.i
  %tail.sroa.0.0.i.i = getelementptr inbounds nuw i8, ptr %tail.sroa.0.04.i.i, i64 4
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1859)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1861)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1863)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1865)
  %_3.i.i.i.i.i.1 = load i32, ptr %tail.sroa.0.0.i.i, align 4, !alias.scope !1867, !noalias !1868, !noundef !18
  %_4.i.i.i.i.i.1 = load i32, ptr %tail.sroa.0.04.i.i, align 4, !alias.scope !1869, !noalias !1870, !noundef !18
  %_0.i.i.i.i.i.1 = icmp slt i32 %_3.i.i.i.i.i.1, %_4.i.i.i.i.i.1
  br i1 %_0.i.i.i.i.i.1, label %bb4.i.i.i.1, label %_ZN4core5slice4sort6shared9smallsort11insert_tail17h0dc0d9cb5eabf134E.exit.i.i.1

bb4.i.i.i.1:                                      ; preds = %_ZN4core5slice4sort6shared9smallsort11insert_tail17h0dc0d9cb5eabf134E.exit.i.i, %bb7.i.i.i.1
  %8 = phi i32 [ %_4.i.i2.i.i.i.1, %bb7.i.i.i.1 ], [ %_4.i.i.i.i.i.1, %_ZN4core5slice4sort6shared9smallsort11insert_tail17h0dc0d9cb5eabf134E.exit.i.i ]
  %gap_guard.sroa.5.0.i.i.i.1 = phi ptr [ %sift.sroa.0.0.i.i.i.1, %bb7.i.i.i.1 ], [ %tail.sroa.0.0.i.i, %_ZN4core5slice4sort6shared9smallsort11insert_tail17h0dc0d9cb5eabf134E.exit.i.i ]
  %sift.sroa.0.0.i.i.i.1 = phi ptr [ %9, %bb7.i.i.i.1 ], [ %tail.sroa.0.04.i.i, %_ZN4core5slice4sort6shared9smallsort11insert_tail17h0dc0d9cb5eabf134E.exit.i.i ]
  store i32 %8, ptr %gap_guard.sroa.5.0.i.i.i.1, align 4, !alias.scope !1845
  %_18.i.i.i.1 = icmp eq ptr %sift.sroa.0.0.i.i.i.1, %0
  br i1 %_18.i.i.i.1, label %bb10.i.i.i19.1, label %bb7.i.i.i.1

bb7.i.i.i.1:                                      ; preds = %bb4.i.i.i.1
  %9 = getelementptr inbounds i8, ptr %sift.sroa.0.0.i.i.i.1, i64 -4
  %_4.i.i2.i.i.i.1 = load i32, ptr %9, align 4, !alias.scope !1846, !noalias !1851, !noundef !18
  %_0.i.i3.i.i.i.1 = icmp slt i32 %_3.i.i.i.i.i.1, %_4.i.i2.i.i.i.1
  br i1 %_0.i.i3.i.i.i.1, label %bb4.i.i.i.1, label %bb10.i.i.i19.1

bb10.i.i.i19.1:                                   ; preds = %bb7.i.i.i.1, %bb4.i.i.i.1
  %sift.sroa.0.0.i.lcssa.i.i.1 = phi ptr [ %sift.sroa.0.0.i.i.i.1, %bb7.i.i.i.1 ], [ %0, %bb4.i.i.i.1 ]
  store i32 %_3.i.i.i.i.i.1, ptr %sift.sroa.0.0.i.lcssa.i.i.1, align 4, !alias.scope !1845, !noalias !1854
  br label %_ZN4core5slice4sort6shared9smallsort11insert_tail17h0dc0d9cb5eabf134E.exit.i.i.1

_ZN4core5slice4sort6shared9smallsort11insert_tail17h0dc0d9cb5eabf134E.exit.i.i.1: ; preds = %bb10.i.i.i19.1, %_ZN4core5slice4sort6shared9smallsort11insert_tail17h0dc0d9cb5eabf134E.exit.i.i
  %tail.sroa.0.0.i.i.1 = getelementptr inbounds nuw i8, ptr %tail.sroa.0.04.i.i, i64 8
  %_11.not.i.i.1 = icmp eq ptr %tail.sroa.0.0.i.i.1, %v_end.i.i
  br i1 %_11.not.i.i.1, label %_ZN5alloc5slice11stable_sort17h222022ef7ce71c73E.exit, label %bb5.i.i

_ZN5alloc5slice11stable_sort17h222022ef7ce71c73E.exit: ; preds = %bb5.i.i.prol.loopexit, %_ZN4core5slice4sort6shared9smallsort11insert_tail17h0dc0d9cb5eabf134E.exit.i.i.1, %bb10.i, %"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17h195870e6b0cdd3cdE.exit.thread", %"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17h195870e6b0cdd3cdE.exit"
  %10 = phi ptr [ inttoptr (i64 4 to ptr), %"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17h195870e6b0cdd3cdE.exit.thread" ], [ %0, %"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17h195870e6b0cdd3cdE.exit" ], [ %0, %bb10.i ], [ %0, %_ZN4core5slice4sort6shared9smallsort11insert_tail17h0dc0d9cb5eabf134E.exit.i.i.1 ], [ %0, %bb5.i.i.prol.loopexit ]
  call void @llvm.lifetime.end.p0(i64 0, ptr nonnull %is_less.i)
  %_9 = sext i32 %n to i64
  %_743.not = icmp eq i32 %n, 0
  br i1 %_743.not, label %bb7, label %bb2

cleanup.thread:                                   ; preds = %bb10.i, %panic5
  %.ph = phi ptr [ %10, %panic5 ], [ %0, %bb10.i ]
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
  br label %bb2.i.i.i3.i

cleanup:                                          ; preds = %panic4.invoke
  %lpad.thr_comm.split-lp = landingpad { ptr, i32 }
          cleanup
  br i1 %_8.i.i.i, label %bb27, label %bb2.i.i.i3.i

bb2.i.i.i3.i:                                     ; preds = %cleanup.thread, %cleanup
  %lpad.phi31 = phi { ptr, i32 } [ %lpad.thr_comm, %cleanup.thread ], [ %lpad.thr_comm.split-lp, %cleanup ]
  %11 = phi ptr [ %.ph, %cleanup.thread ], [ %10, %cleanup ]
; call __rustc::__rust_dealloc
  call void @_RNvCsdBezzDwma51_7___rustc14___rust_dealloc(ptr noundef nonnull %11, i64 noundef %_21.0.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 4) #19, !noalias !1871
  br label %bb27

bb2:                                              ; preds = %_ZN5alloc5slice11stable_sort17h222022ef7ce71c73E.exit, %bb4
  %front.sroa.0.044 = phi i64 [ %14, %bb4 ], [ 0, %_ZN5alloc5slice11stable_sort17h222022ef7ce71c73E.exit ]
  %exitcond.not = icmp eq i64 %front.sroa.0.044, %arr.1
  br i1 %exitcond.not, label %panic4.invoke, label %bb3

bb7:                                              ; preds = %bb4, %bb3, %_ZN5alloc5slice11stable_sort17h222022ef7ce71c73E.exit
  %front.sroa.0.0.lcssa = phi i64 [ 0, %_ZN5alloc5slice11stable_sort17h222022ef7ce71c73E.exit ], [ %front.sroa.0.044, %bb3 ], [ %_9, %bb4 ]
  %12 = add nsw i64 %_9, -1
  %_59.first_iter = icmp ult i64 %12, %arr.1
  br label %bb8

unreachable:                                      ; preds = %panic5
  unreachable

bb3:                                              ; preds = %bb2
  %_12 = getelementptr inbounds nuw i32, ptr %10, i64 %front.sroa.0.044
  %_11 = load i32, ptr %_12, align 4, !noundef !18
  %13 = getelementptr inbounds nuw i32, ptr %arr.0, i64 %front.sroa.0.044
  %_14 = load i32, ptr %13, align 4, !noundef !18
  %_10 = icmp eq i32 %_11, %_14
  br i1 %_10, label %bb4, label %bb7

bb4:                                              ; preds = %bb3
  %14 = add nuw nsw i64 %front.sroa.0.044, 1
  %exitcond54.not = icmp eq i64 %14, %_9
  br i1 %exitcond54.not, label %bb7, label %bb2

bb8:                                              ; preds = %bb10, %bb7
  %back.sroa.0.0.in = phi i64 [ %_9, %bb7 ], [ %back.sroa.0.0, %bb10 ]
  %back.sroa.0.0 = add nsw i64 %back.sroa.0.0.in, -1
  %_19.not = icmp eq i64 %back.sroa.0.0, 0
  br i1 %_19.not, label %bb14, label %bb9

bb9:                                              ; preds = %bb8
  br i1 %_59.first_iter, label %bb10, label %panic4.invoke

bb14:                                             ; preds = %bb10, %bb8
  %_29.not = icmp ult i64 %front.sroa.0.0.lcssa, %back.sroa.0.0
  br i1 %_29.not, label %bb17.preheader, label %bb24

bb17.preheader:                                   ; preds = %bb14
  %umax = call i64 @llvm.umax.i64(i64 %front.sroa.0.0.lcssa, i64 %arr.1)
  %15 = add nuw nsw i64 %front.sroa.0.0.lcssa, 1
  %umax56 = call i64 @llvm.umax.i64(i64 %arr.1, i64 %15)
  br label %bb17

bb10:                                             ; preds = %bb9
  %_23 = getelementptr inbounds nuw i32, ptr %10, i64 %back.sroa.0.0
  %_22 = load i32, ptr %_23, align 4, !noundef !18
  %16 = getelementptr inbounds nuw i32, ptr %arr.0, i64 %back.sroa.0.0
  %_25 = load i32, ptr %16, align 4, !noundef !18
  %_21 = icmp eq i32 %_22, %_25
  br i1 %_21, label %bb8, label %bb14

bb17:                                             ; preds = %bb17.preheader, %bb21
  %front.sroa.0.1 = phi i64 [ %17, %bb21 ], [ %front.sroa.0.0.lcssa, %bb17.preheader ]
  %17 = add nuw nsw i64 %front.sroa.0.1, 1
  %_38 = icmp ult i64 %front.sroa.0.1, %arr.1
  br i1 %_38, label %bb18, label %panic4.invoke

bb18:                                             ; preds = %bb17
  %_41 = icmp ult i64 %17, %arr.1
  br i1 %_41, label %bb19, label %panic5

panic4.invoke:                                    ; preds = %bb2, %bb9, %bb17
  %18 = phi i64 [ %umax, %bb17 ], [ %back.sroa.0.0, %bb9 ], [ %arr.1, %bb2 ]
  %19 = phi ptr [ @alloc_bccb9e30fe26e24f7a0999bc52aa5faa, %bb17 ], [ @alloc_a96896050aa4a0ca4b79276cb4fa5348, %bb9 ], [ @alloc_002a255180f84db928a954e882b94c6d, %bb2 ]
; invoke core::panicking::panic_bounds_check
  invoke void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef %18, i64 noundef %arr.1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %19) #20
          to label %panic4.cont unwind label %cleanup

panic4.cont:                                      ; preds = %panic4.invoke
  unreachable

bb19:                                             ; preds = %bb18
  %_34 = getelementptr inbounds nuw i32, ptr %arr.0, i64 %front.sroa.0.1
  %_39 = getelementptr inbounds nuw i32, ptr %arr.0, i64 %17
  %_60 = load i32, ptr %_34, align 4, !noundef !18
  %_61 = load i32, ptr %_39, align 4, !noundef !18
  %_32 = icmp slt i32 %_60, %_61
  br i1 %_32, label %bb2.i.i.i3.i22, label %bb21

panic5:                                           ; preds = %bb18
; invoke core::panicking::panic_bounds_check
  invoke void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef %umax56, i64 noundef %arr.1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_0cf1401e02f1f4c272184d2dd14ba412) #20
          to label %unreachable unwind label %cleanup.thread

bb21:                                             ; preds = %bb19
  %_42 = icmp eq i64 %17, %back.sroa.0.0
  br i1 %_42, label %bb2.i.i.i3.i22, label %bb17

bb24:                                             ; preds = %bb14
  br i1 %_8.i.i.i, label %"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17hc4979ccef2812708E.exit24", label %bb2.i.i.i3.i22

bb2.i.i.i3.i22:                                   ; preds = %bb19, %bb21, %bb24
  %_0.sroa.0.034 = phi i32 [ 1, %bb24 ], [ 0, %bb19 ], [ 1, %bb21 ]
; call __rustc::__rust_dealloc
  call void @_RNvCsdBezzDwma51_7___rustc14___rust_dealloc(ptr noundef nonnull %10, i64 noundef %_21.0.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 4) #19, !noalias !1880
  br label %"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17hc4979ccef2812708E.exit24"

"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17hc4979ccef2812708E.exit24": ; preds = %bb24, %bb2.i.i.i3.i22
  %_0.sroa.0.035 = phi i32 [ 1, %bb24 ], [ %_0.sroa.0.034, %bb2.i.i.i3.i22 ]
  ret i32 %_0.sroa.0.035

bb27:                                             ; preds = %bb2.i.i.i3.i, %cleanup
  %lpad.phi32 = phi { ptr, i32 } [ %lpad.thr_comm.split-lp, %cleanup ], [ %lpad.phi31, %bb2.i.i.i3.i ]
  resume { ptr, i32 } %lpad.phi32
}

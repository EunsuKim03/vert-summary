define noundef range(i32 0, 2) i32 @f_gold(ptr noalias noundef nonnull readonly align 4 captures(none) %a.0, i64 noundef range(i64 0, 2305843009213693952) %a.1, i32 noundef %sum) unnamed_addr #1 personality ptr @rust_eh_personality {
start:
  %is_less.i = alloca [0 x i8], align 1
  %_21.0.i.i.i.i = shl nuw nsw i64 %a.1, 2
  %_8.i.i.i = icmp eq i64 %a.1, 0
  br i1 %_8.i.i.i, label %"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17h796153d1b95adad0E.exit.thread", label %bb5.i.i.i

"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17h796153d1b95adad0E.exit.thread": ; preds = %start
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 inttoptr (i64 4 to ptr), ptr nonnull readonly align 4 %a.0, i64 %_21.0.i.i.i.i, i1 false), !noalias !1817
  call void @llvm.lifetime.start.p0(i64 0, ptr nonnull %is_less.i)
  br label %bb16.thread

bb5.i.i.i:                                        ; preds = %start
; call __rustc::__rust_no_alloc_shim_is_unstable_v2
  tail call void @_RNvCsdBezzDwma51_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #19, !noalias !1820
; call __rustc::__rust_alloc
  %0 = tail call noundef align 4 ptr @_RNvCsdBezzDwma51_7___rustc12___rust_alloc(i64 noundef range(i64 1, 0) %_21.0.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 4) #19, !noalias !1820
  %1 = icmp eq ptr %0, null
  br i1 %1, label %bb3.i.i, label %"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17h796153d1b95adad0E.exit"

bb3.i.i:                                          ; preds = %bb5.i.i.i
; call alloc::raw_vec::handle_error
  tail call void @_ZN5alloc7raw_vec12handle_error17h3a8c375904e593b2E(i64 noundef 4, i64 %_21.0.i.i.i.i) #20, !noalias !1824
  unreachable

"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17h796153d1b95adad0E.exit": ; preds = %bb5.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %0, ptr nonnull readonly align 4 %a.0, i64 %_21.0.i.i.i.i, i1 false), !noalias !1817
  call void @llvm.lifetime.start.p0(i64 0, ptr nonnull %is_less.i)
  %b.i = icmp eq i64 %a.1, 1
  br i1 %b.i, label %bb16.thread, label %bb7.i, !prof !1825

bb7.i:                                            ; preds = %"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17h796153d1b95adad0E.exit"
  %b1.i = icmp samesign ult i64 %a.1, 21
  br i1 %b1.i, label %bb9.i, label %bb10.i, !prof !1826

bb10.i:                                           ; preds = %bb7.i
; invoke core::slice::sort::stable::driftsort_main
  invoke void @_ZN4core5slice4sort6stable14driftsort_main17h8952dd31a0d5396eE(ptr noalias noundef nonnull align 4 %0, i64 noundef range(i64 0, 2305843009213693952) %a.1, ptr noalias noundef nonnull align 1 %is_less.i)
          to label %bb16.thread unwind label %cleanup.thread

bb9.i:                                            ; preds = %bb7.i
  %v_end.i.i = getelementptr inbounds nuw i8, ptr %0, i64 %_21.0.i.i.i.i
  %tail.sroa.0.01.i.i = getelementptr inbounds nuw i8, ptr %0, i64 4
  %2 = and i64 %a.1, 1
  %lcmp.mod.not.not = icmp eq i64 %2, 0
  br i1 %lcmp.mod.not.not, label %bb5.i.i.prol, label %bb5.i.i.prol.loopexit

bb5.i.i.prol:                                     ; preds = %bb9.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1827)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1830)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1832)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1835)
  %_3.i.i.i.i.i.prol = load i32, ptr %tail.sroa.0.01.i.i, align 4, !alias.scope !1837, !noalias !1842, !noundef !23
  %_4.i.i.i.i.i.prol = load i32, ptr %0, align 4, !alias.scope !1843, !noalias !1844, !noundef !23
  %_0.i.i.i.i.i.prol = icmp slt i32 %_3.i.i.i.i.i.prol, %_4.i.i.i.i.i.prol
  br i1 %_0.i.i.i.i.i.prol, label %bb4.i.i.i.prol, label %_ZN4core5slice4sort6shared9smallsort11insert_tail17hf948fbfd77cbf722E.exit.i.i.prol

bb4.i.i.i.prol:                                   ; preds = %bb5.i.i.prol, %bb7.i.i.i.prol
  %3 = phi i32 [ %_4.i.i2.i.i.i.prol, %bb7.i.i.i.prol ], [ %_4.i.i.i.i.i.prol, %bb5.i.i.prol ]
  %gap_guard.sroa.5.0.i.i.i.prol = phi ptr [ %sift.sroa.0.0.i.i.i.prol, %bb7.i.i.i.prol ], [ %tail.sroa.0.01.i.i, %bb5.i.i.prol ]
  %sift.sroa.0.0.i.i.i.prol = phi ptr [ %4, %bb7.i.i.i.prol ], [ %0, %bb5.i.i.prol ]
  store i32 %3, ptr %gap_guard.sroa.5.0.i.i.i.prol, align 4, !alias.scope !1845
  %_18.i.i.i.prol = icmp eq ptr %sift.sroa.0.0.i.i.i.prol, %0
  br i1 %_18.i.i.i.prol, label %bb10.i.i.i14.prol, label %bb7.i.i.i.prol

bb7.i.i.i.prol:                                   ; preds = %bb4.i.i.i.prol
  %4 = getelementptr inbounds i8, ptr %sift.sroa.0.0.i.i.i.prol, i64 -4
  %_4.i.i2.i.i.i.prol = load i32, ptr %4, align 4, !alias.scope !1846, !noalias !1851, !noundef !23
  %_0.i.i3.i.i.i.prol = icmp slt i32 %_3.i.i.i.i.i.prol, %_4.i.i2.i.i.i.prol
  br i1 %_0.i.i3.i.i.i.prol, label %bb4.i.i.i.prol, label %bb10.i.i.i14.prol

bb10.i.i.i14.prol:                                ; preds = %bb7.i.i.i.prol, %bb4.i.i.i.prol
  %sift.sroa.0.0.i.lcssa.i.i.prol = phi ptr [ %sift.sroa.0.0.i.i.i.prol, %bb7.i.i.i.prol ], [ %0, %bb4.i.i.i.prol ]
  store i32 %_3.i.i.i.i.i.prol, ptr %sift.sroa.0.0.i.lcssa.i.i.prol, align 4, !alias.scope !1845, !noalias !1854
  br label %_ZN4core5slice4sort6shared9smallsort11insert_tail17hf948fbfd77cbf722E.exit.i.i.prol

_ZN4core5slice4sort6shared9smallsort11insert_tail17hf948fbfd77cbf722E.exit.i.i.prol: ; preds = %bb10.i.i.i14.prol, %bb5.i.i.prol
  %tail.sroa.0.0.i.i.prol = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %bb5.i.i.prol.loopexit

bb5.i.i.prol.loopexit:                            ; preds = %_ZN4core5slice4sort6shared9smallsort11insert_tail17hf948fbfd77cbf722E.exit.i.i.prol, %bb9.i
  %tail.sroa.0.04.i.i.unr = phi ptr [ %tail.sroa.0.01.i.i, %bb9.i ], [ %tail.sroa.0.0.i.i.prol, %_ZN4core5slice4sort6shared9smallsort11insert_tail17hf948fbfd77cbf722E.exit.i.i.prol ]
  %v.0.pn3.i.i.unr = phi ptr [ %0, %bb9.i ], [ %tail.sroa.0.01.i.i, %_ZN4core5slice4sort6shared9smallsort11insert_tail17hf948fbfd77cbf722E.exit.i.i.prol ]
  %5 = icmp eq i64 %a.1, 2
  br i1 %5, label %bb16, label %bb5.i.i

bb5.i.i:                                          ; preds = %bb5.i.i.prol.loopexit, %_ZN4core5slice4sort6shared9smallsort11insert_tail17hf948fbfd77cbf722E.exit.i.i.1
  %tail.sroa.0.04.i.i = phi ptr [ %tail.sroa.0.0.i.i.1, %_ZN4core5slice4sort6shared9smallsort11insert_tail17hf948fbfd77cbf722E.exit.i.i.1 ], [ %tail.sroa.0.04.i.i.unr, %bb5.i.i.prol.loopexit ]
  %v.0.pn3.i.i = phi ptr [ %tail.sroa.0.0.i.i, %_ZN4core5slice4sort6shared9smallsort11insert_tail17hf948fbfd77cbf722E.exit.i.i.1 ], [ %v.0.pn3.i.i.unr, %bb5.i.i.prol.loopexit ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1827)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1830)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1832)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1835)
  %_3.i.i.i.i.i = load i32, ptr %tail.sroa.0.04.i.i, align 4, !alias.scope !1837, !noalias !1842, !noundef !23
  %_4.i.i.i.i.i = load i32, ptr %v.0.pn3.i.i, align 4, !alias.scope !1843, !noalias !1844, !noundef !23
  %_0.i.i.i.i.i = icmp slt i32 %_3.i.i.i.i.i, %_4.i.i.i.i.i
  br i1 %_0.i.i.i.i.i, label %bb4.i.i.i, label %_ZN4core5slice4sort6shared9smallsort11insert_tail17hf948fbfd77cbf722E.exit.i.i

bb4.i.i.i:                                        ; preds = %bb5.i.i, %bb7.i.i.i
  %6 = phi i32 [ %_4.i.i2.i.i.i, %bb7.i.i.i ], [ %_4.i.i.i.i.i, %bb5.i.i ]
  %gap_guard.sroa.5.0.i.i.i = phi ptr [ %sift.sroa.0.0.i.i.i, %bb7.i.i.i ], [ %tail.sroa.0.04.i.i, %bb5.i.i ]
  %sift.sroa.0.0.i.i.i = phi ptr [ %7, %bb7.i.i.i ], [ %v.0.pn3.i.i, %bb5.i.i ]
  store i32 %6, ptr %gap_guard.sroa.5.0.i.i.i, align 4, !alias.scope !1845
  %_18.i.i.i = icmp eq ptr %sift.sroa.0.0.i.i.i, %0
  br i1 %_18.i.i.i, label %bb10.i.i.i14, label %bb7.i.i.i

bb7.i.i.i:                                        ; preds = %bb4.i.i.i
  %7 = getelementptr inbounds i8, ptr %sift.sroa.0.0.i.i.i, i64 -4
  %_4.i.i2.i.i.i = load i32, ptr %7, align 4, !alias.scope !1846, !noalias !1851, !noundef !23
  %_0.i.i3.i.i.i = icmp slt i32 %_3.i.i.i.i.i, %_4.i.i2.i.i.i
  br i1 %_0.i.i3.i.i.i, label %bb4.i.i.i, label %bb10.i.i.i14

bb10.i.i.i14:                                     ; preds = %bb7.i.i.i, %bb4.i.i.i
  %sift.sroa.0.0.i.lcssa.i.i = phi ptr [ %sift.sroa.0.0.i.i.i, %bb7.i.i.i ], [ %0, %bb4.i.i.i ]
  store i32 %_3.i.i.i.i.i, ptr %sift.sroa.0.0.i.lcssa.i.i, align 4, !alias.scope !1845, !noalias !1854
  br label %_ZN4core5slice4sort6shared9smallsort11insert_tail17hf948fbfd77cbf722E.exit.i.i

_ZN4core5slice4sort6shared9smallsort11insert_tail17hf948fbfd77cbf722E.exit.i.i: ; preds = %bb10.i.i.i14, %bb5.i.i
  %tail.sroa.0.0.i.i = getelementptr inbounds nuw i8, ptr %tail.sroa.0.04.i.i, i64 4
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1859)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1861)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1863)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1865)
  %_3.i.i.i.i.i.1 = load i32, ptr %tail.sroa.0.0.i.i, align 4, !alias.scope !1867, !noalias !1868, !noundef !23
  %_4.i.i.i.i.i.1 = load i32, ptr %tail.sroa.0.04.i.i, align 4, !alias.scope !1869, !noalias !1870, !noundef !23
  %_0.i.i.i.i.i.1 = icmp slt i32 %_3.i.i.i.i.i.1, %_4.i.i.i.i.i.1
  br i1 %_0.i.i.i.i.i.1, label %bb4.i.i.i.1, label %_ZN4core5slice4sort6shared9smallsort11insert_tail17hf948fbfd77cbf722E.exit.i.i.1

bb4.i.i.i.1:                                      ; preds = %_ZN4core5slice4sort6shared9smallsort11insert_tail17hf948fbfd77cbf722E.exit.i.i, %bb7.i.i.i.1
  %8 = phi i32 [ %_4.i.i2.i.i.i.1, %bb7.i.i.i.1 ], [ %_4.i.i.i.i.i.1, %_ZN4core5slice4sort6shared9smallsort11insert_tail17hf948fbfd77cbf722E.exit.i.i ]
  %gap_guard.sroa.5.0.i.i.i.1 = phi ptr [ %sift.sroa.0.0.i.i.i.1, %bb7.i.i.i.1 ], [ %tail.sroa.0.0.i.i, %_ZN4core5slice4sort6shared9smallsort11insert_tail17hf948fbfd77cbf722E.exit.i.i ]
  %sift.sroa.0.0.i.i.i.1 = phi ptr [ %9, %bb7.i.i.i.1 ], [ %tail.sroa.0.04.i.i, %_ZN4core5slice4sort6shared9smallsort11insert_tail17hf948fbfd77cbf722E.exit.i.i ]
  store i32 %8, ptr %gap_guard.sroa.5.0.i.i.i.1, align 4, !alias.scope !1845
  %_18.i.i.i.1 = icmp eq ptr %sift.sroa.0.0.i.i.i.1, %0
  br i1 %_18.i.i.i.1, label %bb10.i.i.i14.1, label %bb7.i.i.i.1

bb7.i.i.i.1:                                      ; preds = %bb4.i.i.i.1
  %9 = getelementptr inbounds i8, ptr %sift.sroa.0.0.i.i.i.1, i64 -4
  %_4.i.i2.i.i.i.1 = load i32, ptr %9, align 4, !alias.scope !1846, !noalias !1851, !noundef !23
  %_0.i.i3.i.i.i.1 = icmp slt i32 %_3.i.i.i.i.i.1, %_4.i.i2.i.i.i.1
  br i1 %_0.i.i3.i.i.i.1, label %bb4.i.i.i.1, label %bb10.i.i.i14.1

bb10.i.i.i14.1:                                   ; preds = %bb7.i.i.i.1, %bb4.i.i.i.1
  %sift.sroa.0.0.i.lcssa.i.i.1 = phi ptr [ %sift.sroa.0.0.i.i.i.1, %bb7.i.i.i.1 ], [ %0, %bb4.i.i.i.1 ]
  store i32 %_3.i.i.i.i.i.1, ptr %sift.sroa.0.0.i.lcssa.i.i.1, align 4, !alias.scope !1845, !noalias !1854
  br label %_ZN4core5slice4sort6shared9smallsort11insert_tail17hf948fbfd77cbf722E.exit.i.i.1

_ZN4core5slice4sort6shared9smallsort11insert_tail17hf948fbfd77cbf722E.exit.i.i.1: ; preds = %bb10.i.i.i14.1, %_ZN4core5slice4sort6shared9smallsort11insert_tail17hf948fbfd77cbf722E.exit.i.i
  %tail.sroa.0.0.i.i.1 = getelementptr inbounds nuw i8, ptr %tail.sroa.0.04.i.i, i64 8
  %_11.not.i.i.1 = icmp eq ptr %tail.sroa.0.0.i.i.1, %v_end.i.i
  br i1 %_11.not.i.i.1, label %bb16, label %bb5.i.i

cleanup.thread:                                   ; preds = %panic3.invoke, %bb10.i
  %.ph = phi ptr [ %0, %bb10.i ], [ %11, %panic3.invoke ]
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
  br label %bb2.i.i.i3.i

cleanup:                                          ; preds = %panic
  %lpad.thr_comm.split-lp = landingpad { ptr, i32 }
          cleanup
  br i1 %_8.i.i.i, label %bb14, label %bb2.i.i.i3.i

bb2.i.i.i3.i:                                     ; preds = %cleanup.thread, %cleanup
  %lpad.phi32 = phi { ptr, i32 } [ %lpad.thr_comm, %cleanup.thread ], [ %lpad.thr_comm.split-lp, %cleanup ]
  %10 = phi ptr [ %.ph, %cleanup.thread ], [ %11, %cleanup ]
; call __rustc::__rust_dealloc
  call void @_RNvCsdBezzDwma51_7___rustc14___rust_dealloc(ptr noundef nonnull %10, i64 noundef %_21.0.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 4) #19, !noalias !1871
  br label %bb14

bb16.thread:                                      ; preds = %"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17h796153d1b95adad0E.exit", %"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17h796153d1b95adad0E.exit.thread", %bb10.i
  %.ph64 = phi ptr [ %0, %bb10.i ], [ %0, %"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17h796153d1b95adad0E.exit" ], [ inttoptr (i64 4 to ptr), %"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17h796153d1b95adad0E.exit.thread" ]
  call void @llvm.lifetime.end.p0(i64 0, ptr nonnull %is_less.i)
  %iter165 = add nsw i64 %a.1, -2
  br label %bb17.preheader

bb16:                                             ; preds = %_ZN4core5slice4sort6shared9smallsort11insert_tail17hf948fbfd77cbf722E.exit.i.i.1, %bb5.i.i.prol.loopexit
  call void @llvm.lifetime.end.p0(i64 0, ptr nonnull %is_less.i)
  %iter1 = add nsw i64 %a.1, -2
  %_4550.not = icmp eq i64 %iter1, 0
  br i1 %_4550.not, label %bb12.sink.split, label %bb17.preheader

bb17.preheader:                                   ; preds = %bb16.thread, %bb16
  %iter167 = phi i64 [ %iter165, %bb16.thread ], [ %iter1, %bb16 ]
  %11 = phi ptr [ %.ph64, %bb16.thread ], [ %0, %bb16 ]
  %12 = add nsw i64 %a.1, -1
  br label %bb17

bb1.loopexit:                                     ; preds = %bb24, %bb17
  %r.sroa.0.1.lcssa = phi i64 [ %r.sroa.0.052, %bb17 ], [ %r.sroa.0.2, %bb24 ]
  %l.sroa.0.1.lcssa = phi i64 [ %l.sroa.0.053, %bb17 ], [ %l.sroa.0.2, %bb24 ]
  %exitcond.not = icmp eq i64 %13, %iter167
  br i1 %exitcond.not, label %bb18, label %bb17

bb18:                                             ; preds = %bb1.loopexit
  br i1 %_8.i.i.i, label %bb12, label %bb12.sink.split

bb17:                                             ; preds = %bb17.preheader, %bb1.loopexit
  %l.sroa.0.053 = phi i64 [ %l.sroa.0.1.lcssa, %bb1.loopexit ], [ 0, %bb17.preheader ]
  %r.sroa.0.052 = phi i64 [ %r.sroa.0.1.lcssa, %bb1.loopexit ], [ %12, %bb17.preheader ]
  %iter.sroa.0.051 = phi i64 [ %13, %bb1.loopexit ], [ 0, %bb17.preheader ]
  %13 = add nuw i64 %iter.sroa.0.051, 1
  %_1346 = icmp ult i64 %l.sroa.0.053, %r.sroa.0.052
  br i1 %_1346, label %bb3.lr.ph, label %bb1.loopexit

bb3.lr.ph:                                        ; preds = %bb17
  %_53 = icmp ult i64 %iter.sroa.0.051, %a.1
  %_20 = getelementptr inbounds nuw i32, ptr %11, i64 %iter.sroa.0.051
  br i1 %_53, label %bb3, label %panic

bb12.sink.split:                                  ; preds = %bb21, %bb18, %bb16
  %.sink = phi ptr [ %11, %bb18 ], [ %0, %bb16 ], [ %11, %bb21 ]
  %_0.sroa.0.0.ph = phi i32 [ 0, %bb18 ], [ 0, %bb16 ], [ 1, %bb21 ]
; call __rustc::__rust_dealloc
  call void @_RNvCsdBezzDwma51_7___rustc14___rust_dealloc(ptr noundef nonnull %.sink, i64 noundef %_21.0.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 4) #19, !noalias !23
  br label %bb12

bb12:                                             ; preds = %bb12.sink.split, %bb18
  %_0.sroa.0.0 = phi i32 [ 0, %bb18 ], [ %_0.sroa.0.0.ph, %bb12.sink.split ]
  ret i32 %_0.sroa.0.0

bb3:                                              ; preds = %bb3.lr.ph, %bb24
  %l.sroa.0.148 = phi i64 [ %l.sroa.0.2, %bb24 ], [ %l.sroa.0.053, %bb3.lr.ph ]
  %r.sroa.0.147 = phi i64 [ %r.sroa.0.2, %bb24 ], [ %r.sroa.0.052, %bb3.lr.ph ]
  %_58 = icmp ult i64 %l.sroa.0.148, %a.1
  br i1 %_58, label %bb20, label %panic3.invoke

panic:                                            ; preds = %bb3.lr.ph
; invoke core::panicking::panic_bounds_check
  invoke void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef %iter.sroa.0.051, i64 noundef %a.1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_c9431082309d99eefb593527d435baa1) #20
          to label %unreachable unwind label %cleanup

unreachable:                                      ; preds = %panic
  unreachable

bb20:                                             ; preds = %bb3
  %_63 = icmp ult i64 %r.sroa.0.147, %a.1
  br i1 %_63, label %bb21, label %panic3.invoke

bb21:                                             ; preds = %bb20
  %_19 = load i32, ptr %_20, align 4, !noundef !23
  %_22 = getelementptr inbounds nuw i32, ptr %11, i64 %l.sroa.0.148
  %_21 = load i32, ptr %_22, align 4, !noundef !23
  %_18 = add i32 %_21, %_19
  %_25 = getelementptr inbounds nuw i32, ptr %11, i64 %r.sroa.0.147
  %_24 = load i32, ptr %_25, align 4, !noundef !23
  %_17 = add i32 %_18, %_24
  %_16 = icmp eq i32 %_17, %sum
  br i1 %_16, label %bb12.sink.split, label %bb24

panic3.invoke:                                    ; preds = %bb20, %bb3
  %14 = phi i64 [ %l.sroa.0.148, %bb3 ], [ %r.sroa.0.147, %bb20 ]
  %15 = phi ptr [ @alloc_8b177e96656587c18cce724a38378d90, %bb3 ], [ @alloc_6fc237616041e22d6261a134a0b03d73, %bb20 ]
; invoke core::panicking::panic_bounds_check
  invoke void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef %14, i64 noundef %a.1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %15) #20
          to label %panic3.cont unwind label %cleanup.thread

panic3.cont:                                      ; preds = %panic3.invoke
  unreachable

bb24:                                             ; preds = %bb21
  %_27 = icmp sge i32 %_17, %sum
  %16 = sext i1 %_27 to i64
  %r.sroa.0.2 = add nsw i64 %r.sroa.0.147, %16
  %not._27 = xor i1 %_27, true
  %17 = zext i1 %not._27 to i64
  %l.sroa.0.2 = add nuw i64 %l.sroa.0.148, %17
  %_13 = icmp ult i64 %l.sroa.0.2, %r.sroa.0.2
  br i1 %_13, label %bb3, label %bb1.loopexit

bb14:                                             ; preds = %bb2.i.i.i3.i, %cleanup
  %lpad.phi33 = phi { ptr, i32 } [ %lpad.thr_comm.split-lp, %cleanup ], [ %lpad.phi32, %bb2.i.i.i3.i ]
  resume { ptr, i32 } %lpad.phi33
}

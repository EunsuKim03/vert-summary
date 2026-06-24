define noundef i32 @f_gold(i64 %0, i32 noundef %N, i32 noundef %K) unnamed_addr #1 personality ptr @rust_eh_personality {
start:
; call __rustc::__rust_no_alloc_shim_is_unstable_v2
  tail call void @_RNvCsdBezzDwma51_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #20, !noalias !1817
; call __rustc::__rust_alloc
  %1 = tail call noundef align 4 dereferenceable_or_null(8) ptr @_RNvCsdBezzDwma51_7___rustc12___rust_alloc(i64 noundef 8, i64 noundef range(i64 1, -9223372036854775807) 4) #20, !noalias !1817
  %2 = icmp eq ptr %1, null
  br i1 %2, label %bb3.i.i, label %bb9.i

bb3.i.i:                                          ; preds = %start
; call alloc::raw_vec::handle_error
  tail call void @_ZN5alloc7raw_vec12handle_error17h3a8c375904e593b2E(i64 noundef 4, i64 8) #21, !noalias !1823
  unreachable

bb9.i:                                            ; preds = %start
  store i64 %0, ptr %1, align 4, !noalias !1823
  %tail.sroa.0.04.i.i.ptr = getelementptr inbounds nuw i8, ptr %1, i64 4
  %3 = lshr i64 %0, 32
  %4 = trunc nuw i64 %3 to i32
  %5 = trunc i64 %0 to i32
  %_0.i.i.i.i.i = icmp slt i32 %4, %5
  br i1 %_0.i.i.i.i.i, label %bb10.i.i.i, label %_ZN4core5slice4sort6shared9smallsort11insert_tail17h44256f99b7a15d0eE.exit.i.i

bb10.i.i.i:                                       ; preds = %bb9.i
  store i32 %5, ptr %tail.sroa.0.04.i.i.ptr, align 4, !alias.scope !1824
  store i32 %4, ptr %1, align 4, !alias.scope !1824, !noalias !1829
  br label %_ZN4core5slice4sort6shared9smallsort11insert_tail17h44256f99b7a15d0eE.exit.i.i

_ZN4core5slice4sort6shared9smallsort11insert_tail17h44256f99b7a15d0eE.exit.i.i: ; preds = %bb10.i.i.i, %bb9.i
  %iter2 = sext i32 %N to i64
  %_21.0.i.i.i = shl nsw i64 %iter2, 2
  %_21.1.i.i.i = icmp slt i32 %N, 0
  %_26.i.i.i = icmp ugt i64 %_21.0.i.i.i, 9223372036854775804
  %or.cond.i.i.i = or i1 %_21.1.i.i.i, %_26.i.i.i
  br i1 %or.cond.i.i.i, label %bb14.i, label %bb17.i.i, !prof !573

cleanup:                                          ; preds = %bb14.i
  %6 = landingpad { ptr, i32 }
          cleanup
  br label %bb15

bb17.i.i:                                         ; preds = %_ZN4core5slice4sort6shared9smallsort11insert_tail17h44256f99b7a15d0eE.exit.i.i
  %_8.i.i = icmp eq i32 %N, 0
  br i1 %_8.i.i, label %panic, label %bb3.i3.i

bb3.i3.i:                                         ; preds = %bb17.i.i
; call __rustc::__rust_no_alloc_shim_is_unstable_v2
  tail call void @_RNvCsdBezzDwma51_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #20, !noalias !1834
; call __rustc::__rust_alloc_zeroed
  %7 = tail call noundef align 4 ptr @_RNvCsdBezzDwma51_7___rustc19___rust_alloc_zeroed(i64 noundef range(i64 1, 0) %_21.0.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 4) #20, !noalias !1834
  %8 = icmp eq ptr %7, null
  br i1 %8, label %bb14.i, label %bb19

bb14.i:                                           ; preds = %bb3.i3.i, %_ZN4core5slice4sort6shared9smallsort11insert_tail17h44256f99b7a15d0eE.exit.i.i
  %_16.sroa.4.0.ph.i = phi i64 [ 4, %bb3.i3.i ], [ 0, %_ZN4core5slice4sort6shared9smallsort11insert_tail17h44256f99b7a15d0eE.exit.i.i ]
; invoke alloc::raw_vec::handle_error
  invoke void @_ZN5alloc7raw_vec12handle_error17h3a8c375904e593b2E(i64 noundef %_16.sroa.4.0.ph.i, i64 %_21.0.i.i.i) #21
          to label %.noexc22 unwind label %cleanup

.noexc22:                                         ; preds = %bb14.i
  unreachable

bb19:                                             ; preds = %bb3.i3.i
  store i32 0, ptr %7, align 4
  %_6058.not = icmp eq i32 %N, 1
  br i1 %_6058.not, label %"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17h5b87c94d843bf57eE.exit37", label %bb25

panic:                                            ; preds = %bb17.i.i
; invoke core::panicking::panic_bounds_check
  invoke void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef 0, i64 noundef 0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_bf59e646bb61a248b441087a84dfad10) #21
          to label %unreachable unwind label %cleanup3.thread52

cleanup3.thread52:                                ; preds = %panic
  %lpad.thr_comm.split-lp54 = landingpad { ptr, i32 }
          cleanup
  br label %bb15

cleanup3.thread:                                  ; preds = %panic7
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
; call __rustc::__rust_dealloc
  tail call void @_RNvCsdBezzDwma51_7___rustc14___rust_dealloc(ptr noundef nonnull %7, i64 noundef %_21.0.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 4) #20, !noalias !1839
  br label %bb15

unreachable:                                      ; preds = %panic7, %panic
  unreachable

"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17h5b87c94d843bf57eE.exit37": ; preds = %bb10, %bb19
  %9 = getelementptr i32, ptr %7, i64 %iter2
  %_47 = getelementptr i8, ptr %9, i64 -4
  %_0 = load i32, ptr %_47, align 4, !noundef !18
; call __rustc::__rust_dealloc
  tail call void @_RNvCsdBezzDwma51_7___rustc14___rust_dealloc(ptr noundef nonnull %7, i64 noundef %_21.0.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 4) #20, !noalias !1848
; call __rustc::__rust_dealloc
  tail call void @_RNvCsdBezzDwma51_7___rustc14___rust_dealloc(ptr noundef nonnull %1, i64 noundef 8, i64 noundef range(i64 1, -9223372036854775807) 4) #20, !noalias !1857
  ret i32 %_0

bb25:                                             ; preds = %bb19
  %_17 = getelementptr inbounds nuw i8, ptr %7, i64 4
  store i32 0, ptr %_17, align 4
  %_20 = load i32, ptr %tail.sroa.0.04.i.i.ptr, align 4, !noundef !18
  %_22 = load i32, ptr %1, align 4, !noundef !18
  %_19 = sub i32 %_20, %_22
  %_18 = icmp slt i32 %_19, %K
  br i1 %_18, label %bb38, label %bb10

panic7:                                           ; preds = %bb10
  %_17.1 = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i32 %_14.1, ptr %_17.1, align 4
; invoke core::panicking::panic_bounds_check
  invoke void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef 2, i64 noundef 2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_867812af7dedc9233078db62fd9013bf) #21
          to label %unreachable unwind label %cleanup3.thread

bb10:                                             ; preds = %bb38, %bb25
  %_14.1 = phi i32 [ %_0.sroa.0.0.i, %bb38 ], [ 0, %bb25 ]
  %exitcond65.not = icmp samesign ult i32 %N, 3
  br i1 %exitcond65.not, label %"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17h5b87c94d843bf57eE.exit37", label %panic7

bb38:                                             ; preds = %bb25
  %_41 = add i32 %_22, %_20
  %_0.sroa.0.0.i = tail call noundef i32 @llvm.smax.i32(i32 %_41, i32 0)
  store i32 %_0.sroa.0.0.i, ptr %_17, align 4
  br label %bb10

bb15:                                             ; preds = %cleanup, %cleanup3.thread52, %cleanup3.thread
  %.pn = phi { ptr, i32 } [ %6, %cleanup ], [ %lpad.thr_comm, %cleanup3.thread ], [ %lpad.thr_comm.split-lp54, %cleanup3.thread52 ]
; call __rustc::__rust_dealloc
  tail call void @_RNvCsdBezzDwma51_7___rustc14___rust_dealloc(ptr noundef nonnull %1, i64 noundef 8, i64 noundef range(i64 1, -9223372036854775807) 4) #20, !noalias !1866
  resume { ptr, i32 } %.pn
}

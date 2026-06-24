define noundef i32 @f_gold(i64 %0, i32 noundef %N, i32 noundef %k) unnamed_addr #1 personality ptr @rust_eh_personality {
start:
  %arr = alloca [8 x i8], align 8
  store i64 %0, ptr %arr, align 8
  %_5 = sext i32 %N to i64
  %_21.0.i.i.i = shl nsw i64 %_5, 2
  %_21.1.i.i.i = icmp slt i32 %N, 0
  %_26.i.i.i = icmp ugt i64 %_21.0.i.i.i, 9223372036854775804
  %or.cond.i.i.i = or i1 %_21.1.i.i.i, %_26.i.i.i
  br i1 %or.cond.i.i.i, label %bb14.i, label %bb17.i.i, !prof !339

bb17.i.i:                                         ; preds = %start
  %_8.i.i = icmp eq i32 %N, 0
  br i1 %_8.i.i, label %panic, label %bb3.i3.i

bb3.i3.i:                                         ; preds = %bb17.i.i
; call __rustc::__rust_no_alloc_shim_is_unstable_v2
  tail call void @_RNvCsdBezzDwma51_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #20, !noalias !1031
; call __rustc::__rust_alloc_zeroed
  %1 = tail call noundef align 4 ptr @_RNvCsdBezzDwma51_7___rustc19___rust_alloc_zeroed(i64 noundef range(i64 1, 0) %_21.0.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 4) #20, !noalias !1031
  %2 = icmp eq ptr %1, null
  br i1 %2, label %bb14.i, label %"_ZN62_$LT$T$u20$as$u20$alloc..vec..spec_from_elem..SpecFromElem$GT$9from_elem17h5873172982eee8c7E.exit"

bb14.i:                                           ; preds = %bb3.i3.i, %start
  %_16.sroa.4.0.ph.i = phi i64 [ 4, %bb3.i3.i ], [ 0, %start ]
; call alloc::raw_vec::handle_error
  tail call void @_ZN5alloc7raw_vec12handle_error17h3a8c375904e593b2E(i64 noundef %_16.sroa.4.0.ph.i, i64 %_21.0.i.i.i) #21, !noalias !1036
  unreachable

"_ZN62_$LT$T$u20$as$u20$alloc..vec..spec_from_elem..SpecFromElem$GT$9from_elem17h5873172982eee8c7E.exit": ; preds = %bb3.i3.i
  %_7 = add nsw i64 %_5, -1
  %_8 = icmp samesign ult i32 %N, 3
  br i1 %_8, label %bb14, label %panic

panic:                                            ; preds = %bb17.i.i, %"_ZN62_$LT$T$u20$as$u20$alloc..vec..spec_from_elem..SpecFromElem$GT$9from_elem17h5873172982eee8c7E.exit"
  %_728 = phi i64 [ %_7, %"_ZN62_$LT$T$u20$as$u20$alloc..vec..spec_from_elem..SpecFromElem$GT$9from_elem17h5873172982eee8c7E.exit" ], [ -1, %bb17.i.i ]
  %3 = phi ptr [ %1, %"_ZN62_$LT$T$u20$as$u20$alloc..vec..spec_from_elem..SpecFromElem$GT$9from_elem17h5873172982eee8c7E.exit" ], [ inttoptr (i64 4 to ptr), %bb17.i.i ]
; invoke core::panicking::panic_bounds_check
  invoke void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef %_728, i64 noundef 2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_82beaa4e32699d39d53e1c2c4ce0afc3) #21
          to label %unreachable unwind label %cleanup

cleanup:                                          ; preds = %panic
  %lpad.thr_comm.split-lp = landingpad { ptr, i32 }
          cleanup
  br i1 %_8.i.i, label %bb12, label %bb2.i.i.i3.i

bb2.i.i.i3.i:                                     ; preds = %cleanup.thread, %cleanup
  %lpad.thr_comm.split-lp56 = phi { ptr, i32 } [ %lpad.thr_comm.split-lp54, %cleanup.thread ], [ %lpad.thr_comm.split-lp, %cleanup ]
  %.ph55 = phi ptr [ %1, %cleanup.thread ], [ %3, %cleanup ]
; call __rustc::__rust_dealloc
  tail call void @_RNvCsdBezzDwma51_7___rustc14___rust_dealloc(ptr noundef nonnull %.ph55, i64 noundef %_21.0.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 4) #20, !noalias !1037
  br label %bb12

unreachable:                                      ; preds = %panic4, %panic
  unreachable

bb14:                                             ; preds = %"_ZN62_$LT$T$u20$as$u20$alloc..vec..spec_from_elem..SpecFromElem$GT$9from_elem17h5873172982eee8c7E.exit"
  %4 = getelementptr inbounds nuw i32, ptr %arr, i64 %_7
  %_6 = load i32, ptr %4, align 4, !noundef !23
  %_9 = getelementptr inbounds nuw i32, ptr %1, i64 %_7
  store i32 %_6, ptr %_9, align 4
  %_4341 = icmp eq i32 %N, 2
  br i1 %_4341, label %bb15, label %"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17h82fd9b3a4d426c68E.exit17"

bb15:                                             ; preds = %bb14
  %_31 = sext i32 %k to i64
  %_30 = add nsw i64 %_31, 1
  %_13 = add i32 %k, 1
  %_12.not = icmp slt i32 %_13, 2
  br i1 %_12.not, label %bb7, label %bb22

"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17h82fd9b3a4d426c68E.exit17.loopexit": ; preds = %bb25, %bb22
  %storemerge = phi i32 [ %5, %bb25 ], [ %_0.sroa.0.0.i18, %bb22 ]
  store i32 %storemerge, ptr %1, align 4
  br label %"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17h82fd9b3a4d426c68E.exit17"

"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17h82fd9b3a4d426c68E.exit17": ; preds = %"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17h82fd9b3a4d426c68E.exit17.loopexit", %bb14
  %_0 = load i32, ptr %1, align 4, !noundef !23
; call __rustc::__rust_dealloc
  tail call void @_RNvCsdBezzDwma51_7___rustc14___rust_dealloc(ptr noundef nonnull %1, i64 noundef %_21.0.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 4) #20, !noalias !1046
  ret i32 %_0

bb7:                                              ; preds = %bb15
  %_70 = icmp ult i64 %_30, %_5
  br i1 %_70, label %bb25, label %panic4

panic4:                                           ; preds = %bb7
; invoke core::panicking::panic_bounds_check
  invoke void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef %_30, i64 noundef %_5, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_c8d2aeb487ccf9fd9b09859cf68ffe85) #21
          to label %unreachable unwind label %cleanup.thread

cleanup.thread:                                   ; preds = %panic4
  %lpad.thr_comm.split-lp54 = landingpad { ptr, i32 }
          cleanup
  br label %bb2.i.i.i3.i

bb25:                                             ; preds = %bb7
  %_23 = load i32, ptr %arr, align 8, !noundef !23
  %_33 = getelementptr inbounds nuw i8, ptr %1, i64 4
  %_32 = load i32, ptr %_33, align 4, !noundef !23
  %_28 = getelementptr inbounds nuw i32, ptr %1, i64 %_30
  %_27 = load i32, ptr %_28, align 4, !noundef !23
  %_0.sroa.0.0.i = tail call noundef i32 @llvm.smax.i32(i32 %_32, i32 %_27)
  %5 = add i32 %_0.sroa.0.0.i, %_23
  br label %"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17h82fd9b3a4d426c68E.exit17.loopexit"

bb22:                                             ; preds = %bb15
  %_20 = getelementptr inbounds nuw i8, ptr %1, i64 4
  %_19 = load i32, ptr %_20, align 4, !noundef !23
  %_16 = load i32, ptr %arr, align 8, !noundef !23
  %_0.sroa.0.0.i18 = tail call noundef i32 @llvm.smax.i32(i32 %_19, i32 %_16)
  br label %"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17h82fd9b3a4d426c68E.exit17.loopexit"

bb12:                                             ; preds = %bb2.i.i.i3.i, %cleanup
  %lpad.thr_comm.split-lp57 = phi { ptr, i32 } [ %lpad.thr_comm.split-lp56, %bb2.i.i.i3.i ], [ %lpad.thr_comm.split-lp, %cleanup ]
  resume { ptr, i32 } %lpad.thr_comm.split-lp57
}

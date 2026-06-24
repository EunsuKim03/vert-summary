define noundef i32 @f_gold(i64 %0, i32 noundef %n) unnamed_addr #1 personality ptr @rust_eh_personality {
start:
  %arr.sroa.0.0.extract.trunc = trunc i64 %0 to i32
  %arr.sroa.5.0.extract.shift = lshr i64 %0, 32
  %arr.sroa.5.0.extract.trunc = trunc nuw i64 %arr.sroa.5.0.extract.shift to i32
  %_3 = icmp eq i32 %n, 1
  br i1 %_3, label %bb33, label %bb2

bb2:                                              ; preds = %start
  %iter3 = sext i32 %n to i64
  %_21.0.i.i.i = shl nsw i64 %iter3, 2
  %_21.1.i.i.i = icmp slt i32 %n, 0
  %_26.i.i.i = icmp ugt i64 %_21.0.i.i.i, 9223372036854775804
  %or.cond.i.i.i = or i1 %_21.1.i.i.i, %_26.i.i.i
  br i1 %or.cond.i.i.i, label %bb14.i, label %bb17.i.i, !prof !339

bb17.i.i:                                         ; preds = %bb2
  %_8.i.i = icmp eq i32 %n, 0
  br i1 %_8.i.i, label %panic, label %bb3.i3.i

bb3.i3.i:                                         ; preds = %bb17.i.i
; call __rustc::__rust_no_alloc_shim_is_unstable_v2
  tail call void @_RNvCsdBezzDwma51_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #20, !noalias !1031
; call __rustc::__rust_alloc_zeroed
  %1 = tail call noundef align 4 ptr @_RNvCsdBezzDwma51_7___rustc19___rust_alloc_zeroed(i64 noundef range(i64 1, 0) %_21.0.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 4) #20, !noalias !1031
  %2 = icmp eq ptr %1, null
  br i1 %2, label %bb14.i, label %bb3.i3.i37

bb14.i:                                           ; preds = %bb3.i3.i, %bb2
  %_16.sroa.4.0.ph.i = phi i64 [ 4, %bb3.i3.i ], [ 0, %bb2 ]
; call alloc::raw_vec::handle_error
  tail call void @_ZN5alloc7raw_vec12handle_error17h3a8c375904e593b2E(i64 noundef %_16.sroa.4.0.ph.i, i64 %_21.0.i.i.i) #21, !noalias !1036
  unreachable

bb3.i3.i37:                                       ; preds = %bb3.i3.i
; call __rustc::__rust_no_alloc_shim_is_unstable_v2
  tail call void @_RNvCsdBezzDwma51_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #20, !noalias !1037
; call __rustc::__rust_alloc_zeroed
  %3 = tail call noundef align 4 ptr @_RNvCsdBezzDwma51_7___rustc19___rust_alloc_zeroed(i64 noundef range(i64 1, 0) %_21.0.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 4) #20, !noalias !1037
  %4 = icmp eq ptr %3, null
  br i1 %4, label %bb14.i40, label %bb8.preheader.preheader

bb14.i40:                                         ; preds = %bb3.i3.i37
; invoke alloc::raw_vec::handle_error
  invoke void @_ZN5alloc7raw_vec12handle_error17h3a8c375904e593b2E(i64 noundef 4, i64 %_21.0.i.i.i) #21
          to label %.noexc unwind label %bb35.thread

.noexc:                                           ; preds = %bb14.i40
  unreachable

bb35:                                             ; preds = %panic10
  %lpad.thr_comm.split-lp = landingpad { ptr, i32 }
          cleanup
; call __rustc::__rust_dealloc
  tail call void @_RNvCsdBezzDwma51_7___rustc14___rust_dealloc(ptr noundef nonnull %3, i64 noundef %_21.0.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 4) #20, !noalias !1042
  br label %bb2.i.i.i3.i

bb2.i.i.i3.i:                                     ; preds = %bb35, %bb35.thread
  %.pn73 = phi { ptr, i32 } [ %5, %bb35.thread ], [ %lpad.thr_comm.split-lp, %bb35 ]
; call __rustc::__rust_dealloc
  tail call void @_RNvCsdBezzDwma51_7___rustc14___rust_dealloc(ptr noundef nonnull %1, i64 noundef %_21.0.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 4) #20, !noalias !1051
  resume { ptr, i32 } %.pn73

bb35.thread:                                      ; preds = %bb14.i40
  %5 = landingpad { ptr, i32 }
          cleanup
  br label %bb2.i.i.i3.i

panic:                                            ; preds = %bb17.i.i
; call core::panicking::panic_bounds_check
  tail call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef 0, i64 noundef 0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_f927c41fe8f8b3dab4b1762542c56bc2) #21
  unreachable

unreachable:                                      ; preds = %panic10
  unreachable

bb8.preheader.preheader:                          ; preds = %bb3.i3.i37
  store i32 %arr.sroa.0.0.extract.trunc, ptr %1, align 4
  store i32 %arr.sroa.0.0.extract.trunc, ptr %3, align 4
  %_17 = icmp sgt i32 %arr.sroa.0.0.extract.trunc, %arr.sroa.5.0.extract.trunc
  br i1 %_17, label %bb48, label %bb4.loopexit

bb4.loopexit:                                     ; preds = %bb8.preheader.preheader, %bb48
  %_60 = icmp samesign ugt i32 %n, 2
  br i1 %_60, label %panic10, label %bb56

"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17h116f96fc6cd76c33E.exit57": ; preds = %bb56
; call __rustc::__rust_dealloc
  tail call void @_RNvCsdBezzDwma51_7___rustc14___rust_dealloc(ptr noundef nonnull %3, i64 noundef %_21.0.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 4) #20, !noalias !1060
; call __rustc::__rust_dealloc
  tail call void @_RNvCsdBezzDwma51_7___rustc14___rust_dealloc(ptr noundef nonnull %1, i64 noundef %_21.0.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 4) #20, !noalias !1069
  br label %bb33

bb33:                                             ; preds = %start, %"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17h116f96fc6cd76c33E.exit57"
  %result.sroa.0.1 = phi i32 [ %_0.sroa.0.0.i58, %"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17h116f96fc6cd76c33E.exit57" ], [ %arr.sroa.0.0.extract.trunc, %start ]
  ret i32 %result.sroa.0.1

bb56:                                             ; preds = %bb4.loopexit, %bb56
  %result.sroa.0.0106 = phi i32 [ %_0.sroa.0.0.i58, %bb56 ], [ -2147483648, %bb4.loopexit ]
  %iter2.sroa.0.0105 = phi i64 [ %6, %bb56 ], [ 0, %bb4.loopexit ]
  %6 = add nuw i64 %iter2.sroa.0.0105, 1
  %_44 = getelementptr inbounds nuw i32, ptr %3, i64 %iter2.sroa.0.0105
  %_43 = load i32, ptr %_44, align 4, !noundef !23
  %_0.sroa.0.0.i = tail call noundef i32 @llvm.smax.i32(i32 %_43, i32 %result.sroa.0.0106)
  %_47 = getelementptr inbounds nuw i32, ptr %1, i64 %iter2.sroa.0.0105
  %_46 = load i32, ptr %_47, align 4, !noundef !23
  %_0.sroa.0.0.i58 = tail call noundef i32 @llvm.smax.i32(i32 %_46, i32 %_0.sroa.0.0.i)
  %exitcond.not = icmp eq i64 %6, %iter3
  br i1 %exitcond.not, label %"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17h116f96fc6cd76c33E.exit57", label %bb56, !llvm.loop !1078

panic10:                                          ; preds = %bb4.loopexit
; invoke core::panicking::panic_bounds_check
  invoke void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef 2, i64 noundef 2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_c609a9a9181cb83dbe241140f04b8756) #21
          to label %unreachable unwind label %bb35

bb48:                                             ; preds = %bb8.preheader.preheader
  %_24 = getelementptr inbounds nuw i8, ptr %1, i64 4
  %_23 = load i32, ptr %_24, align 4, !noundef !23
  %_25 = add i32 %arr.sroa.0.0.extract.trunc, %arr.sroa.5.0.extract.trunc
  %_0.sroa.0.0.i60 = tail call noundef i32 @llvm.smax.i32(i32 %_25, i32 %_23)
  store i32 %_0.sroa.0.0.i60, ptr %_24, align 4
  br label %bb4.loopexit
}

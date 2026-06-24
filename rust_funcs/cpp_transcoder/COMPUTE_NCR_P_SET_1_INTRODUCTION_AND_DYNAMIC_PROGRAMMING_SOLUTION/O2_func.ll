define noundef i32 @f_gold(i32 noundef %n, i32 noundef %r, i32 noundef %p) unnamed_addr #1 personality ptr @rust_eh_personality {
start:
  %_6 = sext i32 %r to i64
  %_5 = add nsw i64 %_6, 1
  %_21.0.i.i.i = shl nsw i64 %_5, 2
  %_21.1.i.i.i = icmp ugt i64 %_5, 4611686018427387903
  %_26.i.i.i = icmp ugt i64 %_21.0.i.i.i, 9223372036854775804
  %or.cond.i.i.i = or i1 %_21.1.i.i.i, %_26.i.i.i
  br i1 %or.cond.i.i.i, label %bb14.i, label %bb17.i.i, !prof !339

bb17.i.i:                                         ; preds = %start
  %_8.i.i = icmp eq i64 %_5, 0
  br i1 %_8.i.i, label %panic, label %bb3.i3.i

bb3.i3.i:                                         ; preds = %bb17.i.i
; call __rustc::__rust_no_alloc_shim_is_unstable_v2
  tail call void @_RNvCsdBezzDwma51_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #20, !noalias !1031
; call __rustc::__rust_alloc_zeroed
  %0 = tail call noundef align 4 ptr @_RNvCsdBezzDwma51_7___rustc19___rust_alloc_zeroed(i64 noundef range(i64 1, 0) %_21.0.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 4) #20, !noalias !1031
  %1 = icmp eq ptr %0, null
  br i1 %1, label %bb14.i, label %bb15

bb14.i:                                           ; preds = %bb3.i3.i, %start
  %_16.sroa.4.0.ph.i = phi i64 [ 4, %bb3.i3.i ], [ 0, %start ]
; call alloc::raw_vec::handle_error
  tail call void @_ZN5alloc7raw_vec12handle_error17h3a8c375904e593b2E(i64 noundef %_16.sroa.4.0.ph.i, i64 %_21.0.i.i.i) #21, !noalias !1036
  unreachable

bb15:                                             ; preds = %bb3.i3.i
  store i32 1, ptr %0, align 4
  %_0.i.not.i63 = icmp slt i32 %n, 1
  br i1 %_0.i.not.i63, label %bb4, label %bb2.i.lr.ph

bb2.i.lr.ph:                                      ; preds = %bb15
  %_29 = icmp eq i32 %p, 0
  %_30 = icmp eq i32 %p, -1
  br label %bb2.i

panic:                                            ; preds = %bb17.i.i
; call core::panicking::panic_bounds_check
  tail call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef 0, i64 noundef 0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_cbaabbe3db7d07e72a0b81e595cdb1a0) #21
  unreachable

cleanup.thread:                                   ; preds = %panic6, %panic5, %panic4
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
  br label %bb2.i.i.i3.i

cleanup:                                          ; preds = %panic3.invoke
  %lpad.thr_comm.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb2.i.i.i3.i

bb2.i.i.i3.i:                                     ; preds = %cleanup, %cleanup.thread
  %lpad.phi33 = phi { ptr, i32 } [ %lpad.thr_comm, %cleanup.thread ], [ %lpad.thr_comm.split-lp, %cleanup ]
; call __rustc::__rust_dealloc
  tail call void @_RNvCsdBezzDwma51_7___rustc14___rust_dealloc(ptr noundef nonnull %0, i64 noundef %_21.0.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 4) #20, !noalias !1037
  resume { ptr, i32 } %lpad.phi33

unreachable:                                      ; preds = %panic6, %panic5, %panic4
  unreachable

bb1.loopexit:                                     ; preds = %bb21, %bb2.i
  %_0.i.not.i = icmp sgt i32 %spec.select, %n
  %or.cond = select i1 %_0.i3.i, i1 true, i1 %_0.i.not.i
  br i1 %or.cond, label %bb4, label %bb2.i

bb2.i:                                            ; preds = %bb2.i.lr.ph, %bb1.loopexit
  %iter.sroa.0.064 = phi i32 [ 1, %bb2.i.lr.ph ], [ %spec.select, %bb1.loopexit ]
  %_0.i3.i = icmp sge i32 %iter.sroa.0.064, %n
  %not._0.i3.i = xor i1 %_0.i3.i, true
  %2 = zext i1 %not._0.i3.i to i32
  %spec.select = add nuw nsw i32 %iter.sroa.0.064, %2
  %x.y.i = tail call noundef i32 @llvm.smin.i32(i32 %iter.sroa.0.064, i32 %r)
  %_0.i.not.i2161 = icmp slt i32 %x.y.i, 1
  br i1 %_0.i.not.i2161, label %bb1.loopexit, label %bb2.i22

bb4:                                              ; preds = %bb1.loopexit, %bb15
  %_45.not = icmp eq i32 %r, -1
  br i1 %_45.not, label %panic3.invoke, label %"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17h62552dd49dff96d4E.exit15"

"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17h62552dd49dff96d4E.exit15": ; preds = %bb4
  %_34 = getelementptr inbounds nuw i32, ptr %0, i64 %_6
  %_0 = load i32, ptr %_34, align 4, !noundef !23
; call __rustc::__rust_dealloc
  tail call void @_RNvCsdBezzDwma51_7___rustc14___rust_dealloc(ptr noundef nonnull %0, i64 noundef %_21.0.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 4) #20, !noalias !1046
  ret i32 %_0

bb2.i22:                                          ; preds = %bb2.i, %bb21
  %iter1.sroa.4.062 = phi i32 [ %spec.select53, %bb21 ], [ %x.y.i, %bb2.i ]
  %_0.i3.i23 = icmp eq i32 %iter1.sroa.4.062, 1
  %3 = add nsw i32 %iter1.sroa.4.062, -1
  %spec.select53 = select i1 %_0.i3.i23, i32 1, i32 %3
  %_24 = zext nneg i32 %iter1.sroa.4.062 to i64
  %_51 = icmp ugt i64 %_5, %_24
  br i1 %_51, label %bb19, label %panic3.invoke

bb19:                                             ; preds = %bb2.i22
  %_23 = getelementptr inbounds nuw i32, ptr %0, i64 %_24
  %_27 = sext i32 %3 to i64
  %_56 = icmp ugt i64 %_5, %_27
  br i1 %_56, label %bb20, label %panic4

panic3.invoke:                                    ; preds = %bb2.i22, %bb4
  %4 = phi i64 [ %_6, %bb4 ], [ %_24, %bb2.i22 ]
  %5 = phi ptr [ @alloc_4ee38e030abe9edffc156d7d8df41a08, %bb4 ], [ @alloc_9fc43157b44e06407134cbf65a3b2177, %bb2.i22 ]
; invoke core::panicking::panic_bounds_check
  invoke void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef %4, i64 noundef %_5, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %5) #21
          to label %panic3.cont unwind label %cleanup

panic3.cont:                                      ; preds = %panic3.invoke
  unreachable

bb20:                                             ; preds = %bb19
  %_22 = load i32, ptr %_23, align 4, !noundef !23
  %_26 = getelementptr inbounds nuw i32, ptr %0, i64 %_27
  %_25 = load i32, ptr %_26, align 4, !noundef !23
  %_21 = add i32 %_25, %_22
  br i1 %_29, label %panic5, label %bb9

panic4:                                           ; preds = %bb19
; invoke core::panicking::panic_bounds_check
  invoke void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef %_27, i64 noundef %_5, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_bc34b870f08b512910d22c1465f446fa) #21
          to label %unreachable unwind label %cleanup.thread

bb9:                                              ; preds = %bb20
  %_31 = icmp eq i32 %_21, -2147483648
  %_32 = and i1 %_30, %_31
  br i1 %_32, label %panic6, label %bb21

panic5:                                           ; preds = %bb20
; invoke core::panicking::panic_const::panic_const_rem_by_zero
  invoke void @_ZN4core9panicking11panic_const23panic_const_rem_by_zero17h68b8e0645961a790E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_feea7419fd2ad17d66c3c0585ae8ad88) #21
          to label %unreachable unwind label %cleanup.thread

panic6:                                           ; preds = %bb9
; invoke core::panicking::panic_const::panic_const_rem_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_rem_overflow17h4aab8182a78c82f8E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_feea7419fd2ad17d66c3c0585ae8ad88) #21
          to label %unreachable unwind label %cleanup.thread

bb21:                                             ; preds = %bb9
  %6 = srem i32 %_21, %p
  store i32 %6, ptr %_23, align 4
  %_0.i.not.i21 = icmp slt i32 %spec.select53, 1
  %or.cond55 = select i1 %_0.i3.i23, i1 true, i1 %_0.i.not.i21
  br i1 %or.cond55, label %bb1.loopexit, label %bb2.i22
}

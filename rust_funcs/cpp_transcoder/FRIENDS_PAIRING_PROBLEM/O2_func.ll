define noundef i32 @f_gold(i32 noundef %n) unnamed_addr #1 personality ptr @rust_eh_personality {
start:
  %_4 = sext i32 %n to i64
  %_3 = add nsw i64 %_4, 1
  %_21.0.i.i.i = shl nsw i64 %_3, 2
  %_21.1.i.i.i = icmp ugt i64 %_3, 4611686018427387903
  %_26.i.i.i = icmp ugt i64 %_21.0.i.i.i, 9223372036854775804
  %or.cond.i.i.i = or i1 %_21.1.i.i.i, %_26.i.i.i
  br i1 %or.cond.i.i.i, label %bb14.i, label %bb17.i.i, !prof !339

bb17.i.i:                                         ; preds = %start
  %_8.i.i = icmp eq i64 %_3, 0
  br i1 %_8.i.i, label %"_ZN62_$LT$T$u20$as$u20$alloc..vec..spec_from_elem..SpecFromElem$GT$9from_elem17h28319d23a253d5c5E.exit", label %bb3.i3.i

bb3.i3.i:                                         ; preds = %bb17.i.i
; call __rustc::__rust_no_alloc_shim_is_unstable_v2
  tail call void @_RNvCsdBezzDwma51_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #20, !noalias !1031
; call __rustc::__rust_alloc_zeroed
  %0 = tail call noundef align 4 ptr @_RNvCsdBezzDwma51_7___rustc19___rust_alloc_zeroed(i64 noundef range(i64 1, 0) %_21.0.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 4) #20, !noalias !1031
  %1 = icmp eq ptr %0, null
  br i1 %1, label %bb14.i, label %bb10.i.i

bb10.i.i:                                         ; preds = %bb3.i3.i
  %2 = ptrtoint ptr %0 to i64
  br label %"_ZN62_$LT$T$u20$as$u20$alloc..vec..spec_from_elem..SpecFromElem$GT$9from_elem17h28319d23a253d5c5E.exit"

bb14.i:                                           ; preds = %bb3.i3.i, %start
  %_16.sroa.4.0.ph.i = phi i64 [ 4, %bb3.i3.i ], [ 0, %start ]
; call alloc::raw_vec::handle_error
  tail call void @_ZN5alloc7raw_vec12handle_error17h3a8c375904e593b2E(i64 noundef %_16.sroa.4.0.ph.i, i64 %_21.0.i.i.i) #21, !noalias !1036
  unreachable

"_ZN62_$LT$T$u20$as$u20$alloc..vec..spec_from_elem..SpecFromElem$GT$9from_elem17h28319d23a253d5c5E.exit": ; preds = %bb17.i.i, %bb10.i.i
  %_16.sroa.10.0.i = phi i64 [ %2, %bb10.i.i ], [ 4, %bb17.i.i ]
  %3 = inttoptr i64 %_16.sroa.10.0.i to ptr
  %_0.i.not.i30 = icmp slt i32 %n, 0
  br i1 %_0.i.not.i30, label %bb4, label %bb2.i

bb2.i:                                            ; preds = %"_ZN62_$LT$T$u20$as$u20$alloc..vec..spec_from_elem..SpecFromElem$GT$9from_elem17h28319d23a253d5c5E.exit", %bb7
  %iter.sroa.0.031 = phi i32 [ %spec.select, %bb7 ], [ 0, %"_ZN62_$LT$T$u20$as$u20$alloc..vec..spec_from_elem..SpecFromElem$GT$9from_elem17h28319d23a253d5c5E.exit" ]
  %_0.i3.i = icmp sge i32 %iter.sroa.0.031, %n
  %not._0.i3.i = xor i1 %_0.i3.i, true
  %4 = zext i1 %not._0.i3.i to i32
  %spec.select = add nuw nsw i32 %iter.sroa.0.031, %4
  %_11 = icmp samesign ult i32 %iter.sroa.0.031, 3
  br i1 %_11, label %bb5, label %bb6

cleanup.thread:                                   ; preds = %panic3.invoke
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
  br label %bb2.i.i.i3.i

cleanup:                                          ; preds = %panic4.invoke
  %lpad.thr_comm.split-lp = landingpad { ptr, i32 }
          cleanup
  br i1 %_8.i.i, label %bb10, label %bb2.i.i.i3.i

bb2.i.i.i3.i:                                     ; preds = %cleanup.thread, %cleanup
  %lpad.phi17 = phi { ptr, i32 } [ %lpad.thr_comm, %cleanup.thread ], [ %lpad.thr_comm.split-lp, %cleanup ]
; call __rustc::__rust_dealloc
  tail call void @_RNvCsdBezzDwma51_7___rustc14___rust_dealloc(ptr noundef nonnull %3, i64 noundef %_21.0.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 4) #20, !noalias !1037
  br label %bb10

bb4:                                              ; preds = %bb7, %"_ZN62_$LT$T$u20$as$u20$alloc..vec..spec_from_elem..SpecFromElem$GT$9from_elem17h28319d23a253d5c5E.exit"
  %_30.not = icmp eq i32 %n, -1
  br i1 %_30.not, label %panic4.invoke, label %"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17h4b2d7c9e6b02d603E.exit12"

"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17h4b2d7c9e6b02d603E.exit12": ; preds = %bb4
  %_25 = getelementptr inbounds nuw i32, ptr %3, i64 %_4
  %_0 = load i32, ptr %_25, align 4, !noundef !23
; call __rustc::__rust_dealloc
  tail call void @_RNvCsdBezzDwma51_7___rustc14___rust_dealloc(ptr noundef nonnull %3, i64 noundef %_21.0.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 4) #20, !noalias !1046
  ret i32 %_0

bb6:                                              ; preds = %bb2.i
  %_17 = add nsw i32 %iter.sroa.0.031, -1
  %_16 = zext nneg i32 %_17 to i64
  %_41 = icmp ugt i64 %_3, %_16
  br i1 %_41, label %bb15, label %panic4.invoke

bb5:                                              ; preds = %bb2.i
  %_13 = zext nneg i32 %iter.sroa.0.031 to i64
  %_36 = icmp ugt i64 %_3, %_13
  br i1 %_36, label %bb14, label %panic4.invoke

bb15:                                             ; preds = %bb6
  %_15 = getelementptr inbounds nuw i32, ptr %3, i64 %_16
  %_14 = load i32, ptr %_15, align 4, !noundef !23
  %_22 = add nsw i32 %iter.sroa.0.031, -2
  %_21 = zext nneg i32 %_22 to i64
  %_46 = icmp ugt i64 %_3, %_21
  br i1 %_46, label %bb16, label %panic3.invoke

bb16:                                             ; preds = %bb15
  %_24 = zext nneg i32 %iter.sroa.0.031 to i64
  %_52 = icmp ugt i64 %_3, %_24
  br i1 %_52, label %bb17, label %panic3.invoke

bb17:                                             ; preds = %bb16
  %_20 = getelementptr inbounds nuw i32, ptr %3, i64 %_21
  %_19 = load i32, ptr %_20, align 4, !noundef !23
  %_18 = mul i32 %_19, %_17
  %_23 = getelementptr inbounds nuw i32, ptr %3, i64 %_24
  %5 = add i32 %_18, %_14
  store i32 %5, ptr %_23, align 4
  br label %bb7

panic3.invoke:                                    ; preds = %bb16, %bb15
  %6 = phi i64 [ %_21, %bb15 ], [ %_24, %bb16 ]
  %7 = phi ptr [ @alloc_37680ec9da78c251d5079046e6724a62, %bb15 ], [ @alloc_92c8ae88e3e68c1b9e961d97be198c3a, %bb16 ]
; invoke core::panicking::panic_bounds_check
  invoke void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef %6, i64 noundef %_3, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %7) #21
          to label %panic3.cont unwind label %cleanup.thread

panic3.cont:                                      ; preds = %panic3.invoke
  unreachable

bb7:                                              ; preds = %bb14, %bb17
  %_0.i.not.i = icmp sgt i32 %spec.select, %n
  %or.cond = select i1 %_0.i3.i, i1 true, i1 %_0.i.not.i
  br i1 %or.cond, label %bb4, label %bb2.i

bb14:                                             ; preds = %bb5
  %_12 = getelementptr inbounds nuw i32, ptr %3, i64 %_13
  store i32 %iter.sroa.0.031, ptr %_12, align 4
  br label %bb7

panic4.invoke:                                    ; preds = %bb5, %bb6, %bb4
  %8 = phi i64 [ %_4, %bb4 ], [ %_16, %bb6 ], [ %_13, %bb5 ]
  %9 = phi ptr [ @alloc_fbaffc26795e62f65b5de0b500c9cbd5, %bb4 ], [ @alloc_d36b20e45d92c9d03e8252aa3bcc770e, %bb6 ], [ @alloc_1b36425c6d0e89ec7d97949e8bfa5581, %bb5 ]
; invoke core::panicking::panic_bounds_check
  invoke void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef %8, i64 noundef %_3, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %9) #21
          to label %panic4.cont unwind label %cleanup

panic4.cont:                                      ; preds = %panic4.invoke
  unreachable

bb10:                                             ; preds = %bb2.i.i.i3.i, %cleanup
  %lpad.phi18 = phi { ptr, i32 } [ %lpad.thr_comm.split-lp, %cleanup ], [ %lpad.phi17, %bb2.i.i.i3.i ]
  resume { ptr, i32 } %lpad.phi18
}

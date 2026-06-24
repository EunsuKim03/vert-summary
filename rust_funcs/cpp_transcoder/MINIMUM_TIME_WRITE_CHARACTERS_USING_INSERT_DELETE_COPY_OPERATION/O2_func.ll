define noundef i32 @f_gold(i32 noundef %n, i32 noundef %insert, i32 noundef %remove, i32 noundef %copy) unnamed_addr #1 personality ptr @rust_eh_personality {
start:
  switch i32 %n, label %bb4 [
    i32 0, label %bb13
    i32 1, label %bb3
  ]

bb4:                                              ; preds = %start
  %_9 = sext i32 %n to i64
  %_8 = add nsw i64 %_9, 1
  %_21.0.i.i.i = shl nsw i64 %_8, 2
  %_21.1.i.i.i = icmp ugt i64 %_8, 4611686018427387903
  %_26.i.i.i = icmp ugt i64 %_21.0.i.i.i, 9223372036854775804
  %or.cond.i.i.i = or i1 %_21.1.i.i.i, %_26.i.i.i
  br i1 %or.cond.i.i.i, label %bb14.i, label %bb17.i.i, !prof !339

bb17.i.i:                                         ; preds = %bb4
  %_8.i.i = icmp eq i64 %_8, 0
  br i1 %_8.i.i, label %"_ZN62_$LT$T$u20$as$u20$alloc..vec..spec_from_elem..SpecFromElem$GT$9from_elem17hca300192533efaa6E.exit", label %bb3.i3.i

bb3.i3.i:                                         ; preds = %bb17.i.i
; call __rustc::__rust_no_alloc_shim_is_unstable_v2
  tail call void @_RNvCsdBezzDwma51_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #20, !noalias !1031
; call __rustc::__rust_alloc_zeroed
  %0 = tail call noundef align 4 ptr @_RNvCsdBezzDwma51_7___rustc19___rust_alloc_zeroed(i64 noundef range(i64 1, 0) %_21.0.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 4) #20, !noalias !1031
  %1 = icmp eq ptr %0, null
  br i1 %1, label %bb14.i, label %bb10.i.i

bb10.i.i:                                         ; preds = %bb3.i3.i
  %2 = ptrtoint ptr %0 to i64
  br label %"_ZN62_$LT$T$u20$as$u20$alloc..vec..spec_from_elem..SpecFromElem$GT$9from_elem17hca300192533efaa6E.exit"

bb14.i:                                           ; preds = %bb3.i3.i, %bb4
  %_16.sroa.4.0.ph.i = phi i64 [ 4, %bb3.i3.i ], [ 0, %bb4 ]
; call alloc::raw_vec::handle_error
  tail call void @_ZN5alloc7raw_vec12handle_error17h3a8c375904e593b2E(i64 noundef %_16.sroa.4.0.ph.i, i64 %_21.0.i.i.i) #21, !noalias !1036
  unreachable

"_ZN62_$LT$T$u20$as$u20$alloc..vec..spec_from_elem..SpecFromElem$GT$9from_elem17hca300192533efaa6E.exit": ; preds = %bb17.i.i, %bb10.i.i
  %_16.sroa.10.0.i = phi i64 [ %2, %bb10.i.i ], [ 4, %bb17.i.i ]
  %3 = inttoptr i64 %_16.sroa.10.0.i to ptr
  %_0.i.not.i45 = icmp slt i32 %n, 1
  br i1 %_0.i.not.i45, label %bb8, label %bb2.i.lr.ph

bb2.i.lr.ph:                                      ; preds = %"_ZN62_$LT$T$u20$as$u20$alloc..vec..spec_from_elem..SpecFromElem$GT$9from_elem17hca300192533efaa6E.exit"
  %_43 = add i32 %copy, %remove
  br label %bb2.i

bb3:                                              ; preds = %start
  br label %bb13

bb2.i:                                            ; preds = %bb2.i.lr.ph, %bb11
  %iter.sroa.0.046 = phi i32 [ 1, %bb2.i.lr.ph ], [ %spec.select, %bb11 ]
  %_0.i3.i = icmp sge i32 %iter.sroa.0.046, %n
  %not._0.i3.i = xor i1 %_0.i3.i, true
  %4 = zext i1 %not._0.i3.i to i32
  %spec.select = add nuw nsw i32 %iter.sroa.0.046, %4
  %5 = and i32 %iter.sroa.0.046, 1
  %_16 = icmp eq i32 %5, 0
  %_21 = add nsw i32 %iter.sroa.0.046, -1
  br i1 %_16, label %bb9, label %bb10

cleanup.thread:                                   ; preds = %panic9.invoke
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
  br label %bb2.i.i.i3.i

cleanup:                                          ; preds = %panic6.invoke
  %lpad.thr_comm.split-lp = landingpad { ptr, i32 }
          cleanup
  br i1 %_8.i.i, label %bb15, label %bb2.i.i.i3.i

bb2.i.i.i3.i:                                     ; preds = %cleanup.thread, %cleanup
  %lpad.phi29 = phi { ptr, i32 } [ %lpad.thr_comm, %cleanup.thread ], [ %lpad.thr_comm.split-lp, %cleanup ]
; call __rustc::__rust_dealloc
  tail call void @_RNvCsdBezzDwma51_7___rustc14___rust_dealloc(ptr noundef nonnull %3, i64 noundef %_21.0.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 4) #20, !noalias !1037
  br label %bb15

bb8:                                              ; preds = %bb11, %"_ZN62_$LT$T$u20$as$u20$alloc..vec..spec_from_elem..SpecFromElem$GT$9from_elem17hca300192533efaa6E.exit"
  %_55.not = icmp eq i32 %n, -1
  br i1 %_55.not, label %panic6.invoke, label %"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17hc7586ae22605bb9bE.exit18"

"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17hc7586ae22605bb9bE.exit18": ; preds = %bb8
  %_50 = getelementptr inbounds nuw i32, ptr %3, i64 %_9
  %6 = load i32, ptr %_50, align 4, !noundef !23
; call __rustc::__rust_dealloc
  tail call void @_RNvCsdBezzDwma51_7___rustc14___rust_dealloc(ptr noundef nonnull %3, i64 noundef %_21.0.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 4) #20, !noalias !1046
  br label %bb13

bb13:                                             ; preds = %start, %bb3, %"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17hc7586ae22605bb9bE.exit18"
  %_0.sroa.0.0 = phi i32 [ %6, %"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17hc7586ae22605bb9bE.exit18" ], [ %insert, %bb3 ], [ %n, %start ]
  ret i32 %_0.sroa.0.0

bb10:                                             ; preds = %bb2.i
  %_35 = zext nneg i32 %_21 to i64
  %_87 = icmp ugt i64 %_8, %_35
  br i1 %_87, label %bb25, label %panic6.invoke

bb9:                                              ; preds = %bb2.i
  %_20 = sext i32 %_21 to i64
  %_60 = icmp ugt i64 %_8, %_20
  br i1 %_60, label %bb19, label %panic6.invoke

bb25:                                             ; preds = %bb10
  %_38 = zext nneg i32 %iter.sroa.0.046 to i64
  %_93 = icmp ugt i64 %_8, %_38
  br i1 %_93, label %bb27, label %panic9.invoke

bb27:                                             ; preds = %bb25
  %_34 = getelementptr inbounds nuw i32, ptr %3, i64 %_35
  %_33 = load i32, ptr %_34, align 4, !noundef !23
  %_37 = getelementptr inbounds nuw i32, ptr %3, i64 %_38
  %7 = add i32 %_33, %insert
  store i32 %7, ptr %_37, align 4
  %_48 = add nuw i32 %iter.sroa.0.046, 1
  %_47 = ashr exact i32 %_48, 1
  %_46 = sext i32 %_47 to i64
  %_103 = icmp ugt i64 %_8, %_46
  br i1 %_103, label %bb30, label %panic9.invoke

bb30:                                             ; preds = %bb27
  %_45 = getelementptr inbounds nuw i32, ptr %3, i64 %_46
  %_44 = load i32, ptr %_45, align 4, !noundef !23
  %_42 = add i32 %_43, %_44
  %_0.sroa.0.0.i19 = tail call noundef i32 @llvm.smin.i32(i32 %_42, i32 %7)
  store i32 %_0.sroa.0.0.i19, ptr %_37, align 4
  br label %bb11

bb11:                                             ; preds = %bb24, %bb30
  %_0.i.not.i = icmp sgt i32 %spec.select, %n
  %or.cond = select i1 %_0.i3.i, i1 true, i1 %_0.i.not.i
  br i1 %or.cond, label %bb8, label %bb2.i

bb19:                                             ; preds = %bb9
  %_23 = zext nneg i32 %iter.sroa.0.046 to i64
  %_66 = icmp ugt i64 %_8, %_23
  br i1 %_66, label %bb21, label %panic9.invoke

panic6.invoke:                                    ; preds = %bb9, %bb10, %bb8
  %8 = phi i64 [ %_9, %bb8 ], [ %_35, %bb10 ], [ %_20, %bb9 ]
  %9 = phi ptr [ @alloc_d7a8e2adc7ec0f56c5780171e97fb02d, %bb8 ], [ @alloc_fe4b15ced38097695000c15ed93061d6, %bb10 ], [ @alloc_ffb41230b81c253686b828f337e688af, %bb9 ]
; invoke core::panicking::panic_bounds_check
  invoke void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef %8, i64 noundef %_8, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %9) #21
          to label %panic6.cont unwind label %cleanup

panic6.cont:                                      ; preds = %panic6.invoke
  unreachable

bb21:                                             ; preds = %bb19
  %_19 = getelementptr inbounds nuw i32, ptr %3, i64 %_20
  %_18 = load i32, ptr %_19, align 4, !noundef !23
  %_22 = getelementptr inbounds nuw i32, ptr %3, i64 %_23
  %10 = add i32 %_18, %insert
  store i32 %10, ptr %_22, align 4
  %_31 = lshr exact i32 %iter.sroa.0.046, 1
  %_30 = zext nneg i32 %_31 to i64
  %_76 = icmp ugt i64 %_8, %_30
  br i1 %_76, label %bb24, label %panic9.invoke

panic9.invoke:                                    ; preds = %bb21, %bb19, %bb27, %bb25
  %11 = phi i64 [ %_38, %bb25 ], [ %_46, %bb27 ], [ %_23, %bb19 ], [ %_30, %bb21 ]
  %12 = phi ptr [ @alloc_53d7ddfc3fb0fef0792666f9b24fb355, %bb25 ], [ @alloc_eb6ecc6d1757dd01ec3512c961bd2b31, %bb27 ], [ @alloc_c3efc25e74d281167c8465fa10ee9beb, %bb19 ], [ @alloc_35352c2ff09062dcf5bbfae369e0b004, %bb21 ]
; invoke core::panicking::panic_bounds_check
  invoke void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef %11, i64 noundef %_8, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %12) #21
          to label %panic9.cont unwind label %cleanup.thread

panic9.cont:                                      ; preds = %panic9.invoke
  unreachable

bb24:                                             ; preds = %bb21
  %_29 = getelementptr inbounds nuw i32, ptr %3, i64 %_30
  %_28 = load i32, ptr %_29, align 4, !noundef !23
  %_27 = add i32 %_28, %copy
  %_0.sroa.0.0.i20 = tail call noundef i32 @llvm.smin.i32(i32 %_27, i32 %10)
  store i32 %_0.sroa.0.0.i20, ptr %_22, align 4
  br label %bb11

bb15:                                             ; preds = %bb2.i.i.i3.i, %cleanup
  %lpad.phi30 = phi { ptr, i32 } [ %lpad.thr_comm.split-lp, %cleanup ], [ %lpad.phi29, %bb2.i.i.i3.i ]
  resume { ptr, i32 } %lpad.phi30
}

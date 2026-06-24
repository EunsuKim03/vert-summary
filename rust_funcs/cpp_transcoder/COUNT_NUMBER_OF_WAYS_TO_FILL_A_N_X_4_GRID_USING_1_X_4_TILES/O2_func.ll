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
  br i1 %_8.i.i, label %"_ZN62_$LT$T$u20$as$u20$alloc..vec..spec_from_elem..SpecFromElem$GT$9from_elem17h70d3214a123b8818E.exit", label %bb3.i3.i

bb3.i3.i:                                         ; preds = %bb17.i.i
; call __rustc::__rust_no_alloc_shim_is_unstable_v2
  tail call void @_RNvCsdBezzDwma51_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #20, !noalias !1031
; call __rustc::__rust_alloc_zeroed
  %0 = tail call noundef align 4 ptr @_RNvCsdBezzDwma51_7___rustc19___rust_alloc_zeroed(i64 noundef range(i64 1, 0) %_21.0.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 4) #20, !noalias !1031
  %1 = icmp eq ptr %0, null
  br i1 %1, label %bb14.i, label %bb10.i.i

bb10.i.i:                                         ; preds = %bb3.i3.i
  %2 = ptrtoint ptr %0 to i64
  br label %"_ZN62_$LT$T$u20$as$u20$alloc..vec..spec_from_elem..SpecFromElem$GT$9from_elem17h70d3214a123b8818E.exit"

bb14.i:                                           ; preds = %bb3.i3.i, %start
  %_16.sroa.4.0.ph.i = phi i64 [ 4, %bb3.i3.i ], [ 0, %start ]
; call alloc::raw_vec::handle_error
  tail call void @_ZN5alloc7raw_vec12handle_error17h3a8c375904e593b2E(i64 noundef %_16.sroa.4.0.ph.i, i64 %_21.0.i.i.i) #21, !noalias !1036
  unreachable

"_ZN62_$LT$T$u20$as$u20$alloc..vec..spec_from_elem..SpecFromElem$GT$9from_elem17h70d3214a123b8818E.exit": ; preds = %bb17.i.i, %bb10.i.i
  %_16.sroa.10.0.i = phi i64 [ %2, %bb10.i.i ], [ 4, %bb17.i.i ]
  %3 = inttoptr i64 %_16.sroa.10.0.i to ptr
  %_0.i.not.i33 = icmp slt i32 %n, 1
  br i1 %_0.i.not.i33, label %bb4, label %bb2.i.lr.ph

bb2.i.lr.ph:                                      ; preds = %"_ZN62_$LT$T$u20$as$u20$alloc..vec..spec_from_elem..SpecFromElem$GT$9from_elem17h70d3214a123b8818E.exit"
  %_45 = icmp samesign ugt i64 %_3, 4
  %_16 = getelementptr inbounds nuw i8, ptr %3, i64 16
  br label %bb2.i

bb2.i:                                            ; preds = %bb2.i.lr.ph, %bb11
  %iter.sroa.0.034 = phi i32 [ 1, %bb2.i.lr.ph ], [ %spec.select, %bb11 ]
  %_0.i3.i = icmp sge i32 %iter.sroa.0.034, %n
  %not._0.i3.i = xor i1 %_0.i3.i, true
  %4 = zext i1 %not._0.i3.i to i32
  %spec.select = add nuw nsw i32 %iter.sroa.0.034, %4
  %5 = add nsw i32 %iter.sroa.0.034, -1
  %or.cond = icmp samesign ult i32 %iter.sroa.0.034, 4
  br i1 %or.cond, label %bb6, label %bb7

cleanup.thread:                                   ; preds = %panic3.invoke
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
  br label %bb2.i.i.i3.i

cleanup:                                          ; preds = %panic5.invoke
  %lpad.thr_comm.split-lp = landingpad { ptr, i32 }
          cleanup
  br i1 %_8.i.i, label %bb14, label %bb2.i.i.i3.i

bb2.i.i.i3.i:                                     ; preds = %cleanup.thread, %cleanup
  %lpad.phi19 = phi { ptr, i32 } [ %lpad.thr_comm, %cleanup.thread ], [ %lpad.thr_comm.split-lp, %cleanup ]
; call __rustc::__rust_dealloc
  tail call void @_RNvCsdBezzDwma51_7___rustc14___rust_dealloc(ptr noundef nonnull %3, i64 noundef %_21.0.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 4) #20, !noalias !1037
  br label %bb14

bb4:                                              ; preds = %bb11, %"_ZN62_$LT$T$u20$as$u20$alloc..vec..spec_from_elem..SpecFromElem$GT$9from_elem17h70d3214a123b8818E.exit"
  %_33.not = icmp eq i32 %n, -1
  br i1 %_33.not, label %panic5.invoke, label %"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17h61601c8547d244c7E.exit13"

"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17h61601c8547d244c7E.exit13": ; preds = %bb4
  %_28 = getelementptr inbounds nuw i32, ptr %3, i64 %_4
  %_0 = load i32, ptr %_28, align 4, !noundef !23
; call __rustc::__rust_dealloc
  tail call void @_RNvCsdBezzDwma51_7___rustc14___rust_dealloc(ptr noundef nonnull %3, i64 noundef %_21.0.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 4) #20, !noalias !1046
  ret i32 %_0

bb7:                                              ; preds = %bb2.i
  %_15 = icmp eq i32 %iter.sroa.0.034, 4
  br i1 %_15, label %bb8, label %bb9

bb6:                                              ; preds = %bb2.i
  %_14 = zext nneg i32 %iter.sroa.0.034 to i64
  %_39 = icmp ugt i64 %_3, %_14
  br i1 %_39, label %bb18, label %panic5.invoke

bb9:                                              ; preds = %bb7
  %_20 = sext i32 %5 to i64
  %_50 = icmp ugt i64 %_3, %_20
  br i1 %_50, label %bb20, label %panic5.invoke

bb8:                                              ; preds = %bb7
  br i1 %_45, label %bb19, label %panic5.invoke

bb20:                                             ; preds = %bb9
  %_19 = getelementptr inbounds nuw i32, ptr %3, i64 %_20
  %_18 = load i32, ptr %_19, align 4, !noundef !23
  %_25 = add nsw i32 %iter.sroa.0.034, -4
  %_24 = sext i32 %_25 to i64
  %_55 = icmp ugt i64 %_3, %_24
  br i1 %_55, label %bb21, label %panic3.invoke

bb21:                                             ; preds = %bb20
  %_27 = zext nneg i32 %iter.sroa.0.034 to i64
  %_61 = icmp ugt i64 %_3, %_27
  br i1 %_61, label %bb22, label %panic3.invoke

bb22:                                             ; preds = %bb21
  %_23 = getelementptr inbounds nuw i32, ptr %3, i64 %_24
  %_22 = load i32, ptr %_23, align 4, !noundef !23
  %_26 = getelementptr inbounds nuw i32, ptr %3, i64 %_27
  %6 = add i32 %_22, %_18
  store i32 %6, ptr %_26, align 4
  br label %bb11

panic3.invoke:                                    ; preds = %bb21, %bb20
  %7 = phi i64 [ %_24, %bb20 ], [ %_27, %bb21 ]
  %8 = phi ptr [ @alloc_e74c771acfd85448820d7f271a98fe9e, %bb20 ], [ @alloc_326f159265fc5336de78a9ec999f12d7, %bb21 ]
; invoke core::panicking::panic_bounds_check
  invoke void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef %7, i64 noundef %_3, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %8) #21
          to label %panic3.cont unwind label %cleanup.thread

panic3.cont:                                      ; preds = %panic3.invoke
  unreachable

bb19:                                             ; preds = %bb8
  store i32 2, ptr %_16, align 4
  br label %bb11

bb11:                                             ; preds = %bb22, %bb19, %bb18
  %_0.i.not.i = icmp sgt i32 %spec.select, %n
  %or.cond29 = select i1 %_0.i3.i, i1 true, i1 %_0.i.not.i
  br i1 %or.cond29, label %bb4, label %bb2.i

bb18:                                             ; preds = %bb6
  %_13 = getelementptr inbounds nuw i32, ptr %3, i64 %_14
  store i32 1, ptr %_13, align 4
  br label %bb11

panic5.invoke:                                    ; preds = %bb6, %bb8, %bb9, %bb4
  %9 = phi i64 [ %_4, %bb4 ], [ %_20, %bb9 ], [ 4, %bb8 ], [ %_14, %bb6 ]
  %10 = phi ptr [ @alloc_535b3c74b292a8e2ed5eb5291fef264d, %bb4 ], [ @alloc_10881ccc859e3258de391539356f325e, %bb9 ], [ @alloc_f76119ecaba7716a6f14ef84b0e2959b, %bb8 ], [ @alloc_b63afc33637afac3089a2315695067c0, %bb6 ]
; invoke core::panicking::panic_bounds_check
  invoke void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef %9, i64 noundef %_3, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %10) #21
          to label %panic5.cont unwind label %cleanup

panic5.cont:                                      ; preds = %panic5.invoke
  unreachable

bb14:                                             ; preds = %bb2.i.i.i3.i, %cleanup
  %lpad.phi20 = phi { ptr, i32 } [ %lpad.thr_comm.split-lp, %cleanup ], [ %lpad.phi19, %bb2.i.i.i3.i ]
  resume { ptr, i32 } %lpad.phi20
}

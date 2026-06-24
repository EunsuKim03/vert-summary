define noundef i32 @f_gold(i32 noundef %N, i32 noundef %insert, i32 noundef %remove, i32 noundef %copy) unnamed_addr #1 personality ptr @rust_eh_personality {
start:
  switch i32 %N, label %bb4 [
    i32 0, label %bb15
    i32 1, label %bb3
  ]

bb4:                                              ; preds = %start
  %_9 = sext i32 %N to i64
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
  %_0.i.not.i39 = icmp slt i32 %N, 1
  br i1 %_0.i.not.i39, label %bb8, label %bb2.i.lr.ph

bb2.i.lr.ph:                                      ; preds = %"_ZN62_$LT$T$u20$as$u20$alloc..vec..spec_from_elem..SpecFromElem$GT$9from_elem17hca300192533efaa6E.exit"
  %_36 = add i32 %copy, %remove
  br label %bb2.i

bb3:                                              ; preds = %start
  br label %bb15

bb2.i:                                            ; preds = %bb2.i.lr.ph, %bb13
  %iter.sroa.0.040 = phi i32 [ 1, %bb2.i.lr.ph ], [ %spec.select, %bb13 ]
  %_0.i3.i = icmp sge i32 %iter.sroa.0.040, %N
  %not._0.i3.i = xor i1 %_0.i3.i, true
  %4 = zext i1 %not._0.i3.i to i32
  %spec.select = add nuw nsw i32 %iter.sroa.0.040, %4
  %5 = and i32 %iter.sroa.0.040, 1
  %_16 = icmp eq i32 %5, 0
  %_21 = add nsw i32 %iter.sroa.0.040, -1
  br i1 %_16, label %bb9, label %bb11

cleanup.thread:                                   ; preds = %panic6.invoke
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
  br label %bb2.i.i.i3.i

cleanup:                                          ; preds = %panic4.invoke
  %lpad.thr_comm.split-lp = landingpad { ptr, i32 }
          cleanup
  br i1 %_8.i.i, label %bb17, label %bb2.i.i.i3.i

bb2.i.i.i3.i:                                     ; preds = %cleanup.thread, %cleanup
  %lpad.phi23 = phi { ptr, i32 } [ %lpad.thr_comm, %cleanup.thread ], [ %lpad.thr_comm.split-lp, %cleanup ]
; call __rustc::__rust_dealloc
  tail call void @_RNvCsdBezzDwma51_7___rustc14___rust_dealloc(ptr noundef nonnull %3, i64 noundef %_21.0.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 4) #20, !noalias !1037
  br label %bb17

bb8:                                              ; preds = %bb13, %"_ZN62_$LT$T$u20$as$u20$alloc..vec..spec_from_elem..SpecFromElem$GT$9from_elem17hca300192533efaa6E.exit"
  %_49.not = icmp eq i32 %N, -1
  br i1 %_49.not, label %panic4.invoke, label %"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17hc7586ae22605bb9bE.exit14"

"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17hc7586ae22605bb9bE.exit14": ; preds = %bb8
  %_44 = getelementptr inbounds nuw i32, ptr %3, i64 %_9
  %6 = load i32, ptr %_44, align 4, !noundef !23
; call __rustc::__rust_dealloc
  tail call void @_RNvCsdBezzDwma51_7___rustc14___rust_dealloc(ptr noundef nonnull %3, i64 noundef %_21.0.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 4) #20, !noalias !1046
  br label %bb15

bb15:                                             ; preds = %start, %bb3, %"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17hc7586ae22605bb9bE.exit14"
  %_0.sroa.0.0 = phi i32 [ %6, %"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17hc7586ae22605bb9bE.exit14" ], [ %insert, %bb3 ], [ %N, %start ]
  ret i32 %_0.sroa.0.0

bb11:                                             ; preds = %bb2.i
  %_32 = zext nneg i32 %_21 to i64
  %_70 = icmp ugt i64 %_8, %_32
  br i1 %_70, label %bb24, label %panic4.invoke

bb9:                                              ; preds = %bb2.i
  %_20 = sext i32 %_21 to i64
  %_54 = icmp ugt i64 %_8, %_20
  br i1 %_54, label %bb21, label %panic4.invoke

bb24:                                             ; preds = %bb11
  %_31 = getelementptr inbounds nuw i32, ptr %3, i64 %_32
  %_30 = load i32, ptr %_31, align 4, !noundef !23
  %_41 = add nuw i32 %iter.sroa.0.040, 1
  %_40 = ashr exact i32 %_41, 1
  %_39 = sext i32 %_40 to i64
  %_75 = icmp ugt i64 %_8, %_39
  br i1 %_75, label %bb12, label %panic6.invoke

bb12:                                             ; preds = %bb24
  %_43 = zext nneg i32 %iter.sroa.0.040 to i64
  %_81 = icmp ugt i64 %_8, %_43
  br i1 %_81, label %bb26, label %panic6.invoke

bb26:                                             ; preds = %bb12
  %_38 = getelementptr inbounds nuw i32, ptr %3, i64 %_39
  %_37 = load i32, ptr %_38, align 4, !noundef !23
  %_35 = add i32 %_36, %_37
  br label %bb13

bb13:                                             ; preds = %bb23, %bb26
  %_23.sink = phi i32 [ %_23, %bb23 ], [ %_35, %bb26 ]
  %_29.sink = phi i64 [ %_29, %bb23 ], [ %_43, %bb26 ]
  %_18.sink = phi i32 [ %_18, %bb23 ], [ %_30, %bb26 ]
  %_0.sroa.0.0.i16 = tail call noundef i32 @llvm.smin.i32(i32 %_23.sink, i32 %insert)
  %_28 = getelementptr inbounds nuw i32, ptr %3, i64 %_29.sink
  %7 = add i32 %_0.sroa.0.0.i16, %_18.sink
  store i32 %7, ptr %_28, align 4
  %_0.i.not.i = icmp sgt i32 %spec.select, %N
  %or.cond = select i1 %_0.i3.i, i1 true, i1 %_0.i.not.i
  br i1 %or.cond, label %bb8, label %bb2.i

bb21:                                             ; preds = %bb9
  %_19 = getelementptr inbounds nuw i32, ptr %3, i64 %_20
  %_18 = load i32, ptr %_19, align 4, !noundef !23
  %_27 = lshr exact i32 %iter.sroa.0.040, 1
  %_26 = zext nneg i32 %_27 to i64
  %_59 = icmp ugt i64 %_8, %_26
  br i1 %_59, label %bb10, label %panic6.invoke

panic4.invoke:                                    ; preds = %bb9, %bb11, %bb8
  %8 = phi i64 [ %_9, %bb8 ], [ %_32, %bb11 ], [ %_20, %bb9 ]
  %9 = phi ptr [ @alloc_cb864bbe9de1183d4fb3dd70ba3432a1, %bb8 ], [ @alloc_c9053690c813750e966f2d0961ba9d1d, %bb11 ], [ @alloc_5a315c1d3637a61de6b3479dd54b62c9, %bb9 ]
; invoke core::panicking::panic_bounds_check
  invoke void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef %8, i64 noundef %_8, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %9) #21
          to label %panic4.cont unwind label %cleanup

panic4.cont:                                      ; preds = %panic4.invoke
  unreachable

bb10:                                             ; preds = %bb21
  %_29 = zext nneg i32 %iter.sroa.0.040 to i64
  %_65 = icmp ugt i64 %_8, %_29
  br i1 %_65, label %bb23, label %panic6.invoke

bb23:                                             ; preds = %bb10
  %_25 = getelementptr inbounds nuw i32, ptr %3, i64 %_26
  %_24 = load i32, ptr %_25, align 4, !noundef !23
  %_23 = add i32 %_24, %copy
  br label %bb13

panic6.invoke:                                    ; preds = %bb10, %bb21, %bb12, %bb24
  %10 = phi i64 [ %_39, %bb24 ], [ %_43, %bb12 ], [ %_26, %bb21 ], [ %_29, %bb10 ]
  %11 = phi ptr [ @alloc_0c2cca98555e779888e68565a081e255, %bb24 ], [ @alloc_dfe111779e39601df6ea898a8b9008b6, %bb12 ], [ @alloc_8cedce4506ee0c620fde347025a1b377, %bb21 ], [ @alloc_b077da47b33a5807ad4fe2622c82a287, %bb10 ]
; invoke core::panicking::panic_bounds_check
  invoke void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef %10, i64 noundef %_8, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %11) #21
          to label %panic6.cont unwind label %cleanup.thread

panic6.cont:                                      ; preds = %panic6.invoke
  unreachable

bb17:                                             ; preds = %bb2.i.i.i3.i, %cleanup
  %lpad.phi24 = phi { ptr, i32 } [ %lpad.thr_comm.split-lp, %cleanup ], [ %lpad.phi23, %bb2.i.i.i3.i ]
  resume { ptr, i32 } %lpad.phi24
}

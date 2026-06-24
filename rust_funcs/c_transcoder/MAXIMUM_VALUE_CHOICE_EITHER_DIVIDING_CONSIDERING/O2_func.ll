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
  br i1 %_8.i.i, label %panic, label %bb3.i3.i

bb3.i3.i:                                         ; preds = %bb17.i.i
; call __rustc::__rust_no_alloc_shim_is_unstable_v2
  tail call void @_RNvCsdBezzDwma51_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #20, !noalias !1031
; call __rustc::__rust_alloc_zeroed
  %0 = tail call noundef align 4 ptr @_RNvCsdBezzDwma51_7___rustc19___rust_alloc_zeroed(i64 noundef range(i64 1, 0) %_21.0.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 4) #20, !noalias !1031
  %1 = icmp eq ptr %0, null
  br i1 %1, label %bb14.i, label %bb9

bb14.i:                                           ; preds = %bb3.i3.i, %start
  %_16.sroa.4.0.ph.i = phi i64 [ 4, %bb3.i3.i ], [ 0, %start ]
; call alloc::raw_vec::handle_error
  tail call void @_ZN5alloc7raw_vec12handle_error17h3a8c375904e593b2E(i64 noundef %_16.sroa.4.0.ph.i, i64 %_21.0.i.i.i) #21, !noalias !1036
  unreachable

bb9:                                              ; preds = %bb3.i3.i
  store i32 0, ptr %0, align 4
  %_47.not = icmp eq i32 %n, 0
  br i1 %_47.not, label %panic7.invoke, label %bb10

panic:                                            ; preds = %bb17.i.i
; call core::panicking::panic_bounds_check
  tail call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef 0, i64 noundef 0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_856d0050389957213856bf4110369f9b) #21
  unreachable

bb2.i.i.i3.i:                                     ; preds = %panic7.invoke
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
; call __rustc::__rust_dealloc
  tail call void @_RNvCsdBezzDwma51_7___rustc14___rust_dealloc(ptr noundef nonnull %0, i64 noundef %_21.0.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 4) #20, !noalias !1037
  resume { ptr, i32 } %lpad.thr_comm

bb10:                                             ; preds = %bb9
  %_6 = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 1, ptr %_6, align 4
  %_0.i.not.i45 = icmp slt i32 %n, 2
  br i1 %_0.i.not.i45, label %bb4, label %bb2.i

bb2.i:                                            ; preds = %bb10, %bb18
  %iter.sroa.0.046 = phi i32 [ %spec.select, %bb18 ], [ 2, %bb10 ]
  %_0.i3.i = icmp sge i32 %iter.sroa.0.046, %n
  %not._0.i3.i = xor i1 %_0.i3.i, true
  %2 = zext i1 %not._0.i3.i to i32
  %spec.select = add nuw nsw i32 %iter.sroa.0.046, %2
  %_2033 = lshr i32 %iter.sroa.0.046, 1
  %_19 = zext nneg i32 %_2033 to i64
  %_57 = icmp ugt i64 %_3, %_19
  br i1 %_57, label %bb13, label %panic7.invoke

bb4:                                              ; preds = %bb18, %bb10
  %_52.not = icmp eq i32 %n, -1
  br i1 %_52.not, label %panic7.invoke, label %"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17he397cdff1ab61c43E.exit14"

"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17he397cdff1ab61c43E.exit14": ; preds = %bb4
  %_35 = getelementptr inbounds nuw i32, ptr %0, i64 %_4
  %_0 = load i32, ptr %_35, align 4, !noundef !23
; call __rustc::__rust_dealloc
  tail call void @_RNvCsdBezzDwma51_7___rustc14___rust_dealloc(ptr noundef nonnull %0, i64 noundef %_21.0.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 4) #20, !noalias !1046
  ret i32 %_0

bb13:                                             ; preds = %bb2.i
  %_24 = udiv i32 %iter.sroa.0.046, 3
  %_23 = zext nneg i32 %_24 to i64
  %_62 = icmp ugt i64 %_3, %_23
  br i1 %_62, label %bb14, label %panic7.invoke

bb14:                                             ; preds = %bb13
  %_2834 = lshr i32 %iter.sroa.0.046, 2
  %_27 = zext nneg i32 %_2834 to i64
  %_67 = icmp ugt i64 %_3, %_27
  br i1 %_67, label %bb15, label %panic7.invoke

bb15:                                             ; preds = %bb14
  %_32 = udiv i32 %iter.sroa.0.046, 5
  %_31 = zext nneg i32 %_32 to i64
  %_72 = icmp ugt i64 %_3, %_31
  br i1 %_72, label %bb17, label %panic7.invoke

bb17:                                             ; preds = %bb15
  %_34 = zext nneg i32 %iter.sroa.0.046 to i64
  %_78 = icmp ugt i64 %_3, %_34
  br i1 %_78, label %bb18, label %panic7.invoke

bb18:                                             ; preds = %bb17
  %_18 = getelementptr inbounds nuw i32, ptr %0, i64 %_19
  %_17 = load i32, ptr %_18, align 4, !noundef !23
  %_22 = getelementptr inbounds nuw i32, ptr %0, i64 %_23
  %_21 = load i32, ptr %_22, align 4, !noundef !23
  %_16 = add i32 %_21, %_17
  %_26 = getelementptr inbounds nuw i32, ptr %0, i64 %_27
  %_25 = load i32, ptr %_26, align 4, !noundef !23
  %_15 = add i32 %_16, %_25
  %_30 = getelementptr inbounds nuw i32, ptr %0, i64 %_31
  %_29 = load i32, ptr %_30, align 4, !noundef !23
  %_14 = add i32 %_15, %_29
  %_0.sroa.0.0.i15 = tail call noundef i32 @llvm.smax.i32(i32 %_14, i32 %iter.sroa.0.046)
  %_33 = getelementptr inbounds nuw i32, ptr %0, i64 %_34
  store i32 %_0.sroa.0.0.i15, ptr %_33, align 4
  %_0.i.not.i = icmp sgt i32 %spec.select, %n
  %or.cond = select i1 %_0.i3.i, i1 true, i1 %_0.i.not.i
  br i1 %or.cond, label %bb4, label %bb2.i

panic7.invoke:                                    ; preds = %bb17, %bb15, %bb14, %bb13, %bb2.i, %bb4, %bb9
  %3 = phi i64 [ 1, %bb9 ], [ %_4, %bb4 ], [ %_19, %bb2.i ], [ %_23, %bb13 ], [ %_27, %bb14 ], [ %_31, %bb15 ], [ %_34, %bb17 ]
  %4 = phi ptr [ @alloc_a5689cd88f5fccdaf2e2d8a638544e02, %bb9 ], [ @alloc_922d3e5dd449da4004e4c265f404d79b, %bb4 ], [ @alloc_a0dd2f1b59cc390a0791f197661fee9a, %bb2.i ], [ @alloc_935d792ba2260ee0c5a716a042b48504, %bb13 ], [ @alloc_6c521137228d9fe891010eda7fa4d56c, %bb14 ], [ @alloc_cdf144296feb38428557865e2f326cf2, %bb15 ], [ @alloc_c6131cda3da35b7101277a1d2443691e, %bb17 ]
; invoke core::panicking::panic_bounds_check
  invoke void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef %3, i64 noundef %_3, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %4) #21
          to label %panic7.cont unwind label %bb2.i.i.i3.i

panic7.cont:                                      ; preds = %panic7.invoke
  unreachable
}

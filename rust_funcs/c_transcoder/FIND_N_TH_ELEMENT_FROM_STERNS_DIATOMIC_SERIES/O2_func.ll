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
  br i1 %1, label %bb14.i, label %bb12

bb14.i:                                           ; preds = %bb3.i3.i, %start
  %_16.sroa.4.0.ph.i = phi i64 [ 4, %bb3.i3.i ], [ 0, %start ]
; call alloc::raw_vec::handle_error
  tail call void @_ZN5alloc7raw_vec12handle_error17h3a8c375904e593b2E(i64 noundef %_16.sroa.4.0.ph.i, i64 %_21.0.i.i.i) #21, !noalias !1036
  unreachable

bb12:                                             ; preds = %bb3.i3.i
  store i32 0, ptr %0, align 4
  %_45.not = icmp eq i32 %n, 0
  br i1 %_45.not, label %panic7.invoke, label %bb13

panic:                                            ; preds = %bb17.i.i
; call core::panicking::panic_bounds_check
  tail call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef 0, i64 noundef 0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_38e51937ddea9b8638668272a6391c8d) #21
  unreachable

cleanup.thread:                                   ; preds = %panic7.invoke
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
  br label %bb2.i.i.i3.i

cleanup:                                          ; preds = %panic3
  %lpad.thr_comm.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb2.i.i.i3.i

bb2.i.i.i3.i:                                     ; preds = %cleanup, %cleanup.thread
  %lpad.phi22 = phi { ptr, i32 } [ %lpad.thr_comm, %cleanup.thread ], [ %lpad.thr_comm.split-lp, %cleanup ]
; call __rustc::__rust_dealloc
  tail call void @_RNvCsdBezzDwma51_7___rustc14___rust_dealloc(ptr noundef nonnull %0, i64 noundef %_21.0.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 4) #20, !noalias !1037
  resume { ptr, i32 } %lpad.phi22

unreachable:                                      ; preds = %panic3
  unreachable

bb13:                                             ; preds = %bb12
  %_6 = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 1, ptr %_6, align 4
  %_0.i.not.i39 = icmp slt i32 %n, 2
  br i1 %_0.i.not.i39, label %bb4, label %bb2.i

bb2.i:                                            ; preds = %bb13, %bb7
  %iter.sroa.0.040 = phi i32 [ %spec.select, %bb7 ], [ 2, %bb13 ]
  %_0.i3.i = icmp sge i32 %iter.sroa.0.040, %n
  %not._0.i3.i = xor i1 %_0.i3.i, true
  %2 = zext i1 %not._0.i3.i to i32
  %spec.select = add nuw nsw i32 %iter.sroa.0.040, %2
  %3 = and i32 %iter.sroa.0.040, 1
  %_13 = icmp eq i32 %3, 0
  br i1 %_13, label %bb5, label %bb6

bb4:                                              ; preds = %bb7, %bb13
  %_50.not = icmp eq i32 %n, -1
  br i1 %_50.not, label %panic7.invoke, label %"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17he4f936260bcd5e4dE.exit14"

"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17he4f936260bcd5e4dE.exit14": ; preds = %bb4
  %_33 = getelementptr inbounds nuw i32, ptr %0, i64 %_4
  %_0 = load i32, ptr %_33, align 4, !noundef !23
; call __rustc::__rust_dealloc
  tail call void @_RNvCsdBezzDwma51_7___rustc14___rust_dealloc(ptr noundef nonnull %0, i64 noundef %_21.0.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 4) #20, !noalias !1046
  ret i32 %_0

bb6:                                              ; preds = %bb2.i
  %_25 = add nsw i32 %iter.sroa.0.040, -1
  %_24 = lshr exact i32 %_25, 1
  %_23 = zext nneg i32 %_24 to i64
  %_66 = icmp ugt i64 %_3, %_23
  br i1 %_66, label %bb18, label %panic3

bb5:                                              ; preds = %bb2.i
  %_18 = lshr exact i32 %iter.sroa.0.040, 1
  %_17 = zext nneg i32 %_18 to i64
  %_55 = icmp ugt i64 %_3, %_17
  br i1 %_55, label %bb16, label %panic7.invoke

bb18:                                             ; preds = %bb6
  %_22 = getelementptr inbounds nuw i32, ptr %0, i64 %_23
  %_21 = load i32, ptr %_22, align 4, !noundef !23
  %_30 = add nuw i32 %iter.sroa.0.040, 1
  %_29 = ashr exact i32 %_30, 1
  %_28 = sext i32 %_29 to i64
  %_71 = icmp ugt i64 %_3, %_28
  br i1 %_71, label %bb19, label %panic7.invoke

panic3:                                           ; preds = %bb6
; invoke core::panicking::panic_bounds_check
  invoke void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef %_23, i64 noundef %_3, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_55893ffccdae4df5905ed366a5f9f8e0) #21
          to label %unreachable unwind label %cleanup

bb19:                                             ; preds = %bb18
  %_32 = zext nneg i32 %iter.sroa.0.040 to i64
  %_77 = icmp ugt i64 %_3, %_32
  br i1 %_77, label %bb20, label %panic7.invoke

bb20:                                             ; preds = %bb19
  %_27 = getelementptr inbounds nuw i32, ptr %0, i64 %_28
  %_26 = load i32, ptr %_27, align 4, !noundef !23
  %_31 = getelementptr inbounds nuw i32, ptr %0, i64 %_32
  %4 = add i32 %_26, %_21
  store i32 %4, ptr %_31, align 4
  br label %bb7

bb7:                                              ; preds = %bb17, %bb20
  %_0.i.not.i = icmp sgt i32 %spec.select, %n
  %or.cond = select i1 %_0.i3.i, i1 true, i1 %_0.i.not.i
  br i1 %or.cond, label %bb4, label %bb2.i

bb16:                                             ; preds = %bb5
  %_20 = zext nneg i32 %iter.sroa.0.040 to i64
  %_61 = icmp ugt i64 %_3, %_20
  br i1 %_61, label %bb17, label %panic7.invoke

bb17:                                             ; preds = %bb16
  %_16 = getelementptr inbounds nuw i32, ptr %0, i64 %_17
  %_15 = load i32, ptr %_16, align 4, !noundef !23
  %_19 = getelementptr inbounds nuw i32, ptr %0, i64 %_20
  store i32 %_15, ptr %_19, align 4
  br label %bb7

panic7.invoke:                                    ; preds = %bb16, %bb5, %bb19, %bb18, %bb4, %bb12
  %5 = phi i64 [ 1, %bb12 ], [ %_4, %bb4 ], [ %_28, %bb18 ], [ %_32, %bb19 ], [ %_17, %bb5 ], [ %_20, %bb16 ]
  %6 = phi ptr [ @alloc_e054e18a003b5c7e9e231aba15aad393, %bb12 ], [ @alloc_c493aaaf51ff574bdb526a3f15ce1373, %bb4 ], [ @alloc_8c7d3b16a81a23a6e5691771cddd9724, %bb18 ], [ @alloc_a08eaac8f8c9433607693024af499791, %bb19 ], [ @alloc_5e027637dc8f8219a82135c0784b87e0, %bb5 ], [ @alloc_5f42f44ae3d677f60686498a4d140dd5, %bb16 ]
; invoke core::panicking::panic_bounds_check
  invoke void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef %5, i64 noundef %_3, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %6) #21
          to label %panic7.cont unwind label %cleanup.thread

panic7.cont:                                      ; preds = %panic7.invoke
  unreachable
}

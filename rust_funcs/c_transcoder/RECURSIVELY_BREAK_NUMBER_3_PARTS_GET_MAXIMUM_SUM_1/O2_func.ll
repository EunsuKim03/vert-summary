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
  br i1 %1, label %bb14.i, label %bb10

bb14.i:                                           ; preds = %bb3.i3.i, %start
  %_16.sroa.4.0.ph.i = phi i64 [ 4, %bb3.i3.i ], [ 0, %start ]
; call alloc::raw_vec::handle_error
  tail call void @_ZN5alloc7raw_vec12handle_error17h3a8c375904e593b2E(i64 noundef %_16.sroa.4.0.ph.i, i64 %_21.0.i.i.i) #21, !noalias !1036
  unreachable

bb10:                                             ; preds = %bb3.i3.i
  store i32 0, ptr %0, align 4
  %_41.not = icmp eq i32 %n, 0
  br i1 %_41.not, label %panic6.invoke, label %bb11

panic:                                            ; preds = %bb17.i.i
; call core::panicking::panic_bounds_check
  tail call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef 0, i64 noundef 0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_9223545f54aadf0f6105a8a79f123363) #21
  unreachable

bb2.i.i.i3.i:                                     ; preds = %panic6.invoke
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
; call __rustc::__rust_dealloc
  tail call void @_RNvCsdBezzDwma51_7___rustc14___rust_dealloc(ptr noundef nonnull %0, i64 noundef %_21.0.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 4) #20, !noalias !1037
  resume { ptr, i32 } %lpad.thr_comm

bb11:                                             ; preds = %bb10
  %_6 = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 1, ptr %_6, align 4
  %_0.i.not.i40 = icmp slt i32 %n, 2
  br i1 %_0.i.not.i40, label %bb4, label %bb2.i

bb2.i:                                            ; preds = %bb11, %bb17
  %iter.sroa.0.041 = phi i32 [ %spec.select, %bb17 ], [ 2, %bb11 ]
  %_0.i3.i = icmp sge i32 %iter.sroa.0.041, %n
  %not._0.i3.i = xor i1 %_0.i3.i, true
  %2 = zext i1 %not._0.i3.i to i32
  %spec.select = add nuw nsw i32 %iter.sroa.0.041, %2
  %_1732 = lshr i32 %iter.sroa.0.041, 1
  %_16 = zext nneg i32 %_1732 to i64
  %_51 = icmp ugt i64 %_3, %_16
  br i1 %_51, label %bb14, label %panic6.invoke

bb4:                                              ; preds = %bb17, %bb11
  %_46.not = icmp eq i32 %n, -1
  br i1 %_46.not, label %panic6.invoke, label %"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17h5ac09ab4a3fc948fE.exit13"

"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17h5ac09ab4a3fc948fE.exit13": ; preds = %bb4
  %_29 = getelementptr inbounds nuw i32, ptr %0, i64 %_4
  %_0 = load i32, ptr %_29, align 4, !noundef !23
; call __rustc::__rust_dealloc
  tail call void @_RNvCsdBezzDwma51_7___rustc14___rust_dealloc(ptr noundef nonnull %0, i64 noundef %_21.0.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 4) #20, !noalias !1046
  ret i32 %_0

bb14:                                             ; preds = %bb2.i
  %_21 = udiv i32 %iter.sroa.0.041, 3
  %_20 = zext nneg i32 %_21 to i64
  %_56 = icmp ugt i64 %_3, %_20
  br i1 %_56, label %bb15, label %panic6.invoke

bb15:                                             ; preds = %bb14
  %_15 = getelementptr inbounds nuw i32, ptr %0, i64 %_16
  %_14 = load i32, ptr %_15, align 4, !noundef !23
  %_19 = getelementptr inbounds nuw i32, ptr %0, i64 %_20
  %_18 = load i32, ptr %_19, align 4, !noundef !23
  %_13 = add i32 %_18, %_14
  %_2633 = lshr i32 %iter.sroa.0.041, 2
  %_25 = zext nneg i32 %_2633 to i64
  %_61 = icmp ugt i64 %_3, %_25
  br i1 %_61, label %bb5, label %panic6.invoke

bb5:                                              ; preds = %bb15
  %_28 = zext nneg i32 %iter.sroa.0.041 to i64
  %_67 = icmp ugt i64 %_3, %_28
  br i1 %_67, label %bb17, label %panic6.invoke

bb17:                                             ; preds = %bb5
  %_24 = getelementptr inbounds nuw i32, ptr %0, i64 %_25
  %_23 = load i32, ptr %_24, align 4, !noundef !23
  %_0.sroa.0.0.i14 = tail call noundef i32 @llvm.smax.i32(i32 %iter.sroa.0.041, i32 %_23)
  %_27 = getelementptr inbounds nuw i32, ptr %0, i64 %_28
  %3 = add i32 %_13, %_0.sroa.0.0.i14
  store i32 %3, ptr %_27, align 4
  %_0.i.not.i = icmp sgt i32 %spec.select, %n
  %or.cond = select i1 %_0.i3.i, i1 true, i1 %_0.i.not.i
  br i1 %or.cond, label %bb4, label %bb2.i

panic6.invoke:                                    ; preds = %bb5, %bb15, %bb14, %bb2.i, %bb4, %bb10
  %4 = phi i64 [ 1, %bb10 ], [ %_4, %bb4 ], [ %_16, %bb2.i ], [ %_20, %bb14 ], [ %_25, %bb15 ], [ %_28, %bb5 ]
  %5 = phi ptr [ @alloc_fa7e27c0b0a399256f6b186f7c8f367c, %bb10 ], [ @alloc_deefcaa8e3985f2e125012c63042975b, %bb4 ], [ @alloc_357b067c4d3bd77a239201a3a7e3f979, %bb2.i ], [ @alloc_58f6ab914e688dd90307c923a8d80088, %bb14 ], [ @alloc_e24f4835243839a3c68864c798e1ea14, %bb15 ], [ @alloc_8dd35b268850f0934cf864e75e425e00, %bb5 ]
; invoke core::panicking::panic_bounds_check
  invoke void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef %4, i64 noundef %_3, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %5) #21
          to label %panic6.cont unwind label %bb2.i.i.i3.i

panic6.cont:                                      ; preds = %panic6.invoke
  unreachable
}

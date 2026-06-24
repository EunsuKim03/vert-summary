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
  br i1 %1, label %bb14.i, label %bb15

bb14.i:                                           ; preds = %bb3.i3.i, %start
  %_16.sroa.4.0.ph.i = phi i64 [ 4, %bb3.i3.i ], [ 0, %start ]
; call alloc::raw_vec::handle_error
  tail call void @_ZN5alloc7raw_vec12handle_error17h3a8c375904e593b2E(i64 noundef %_16.sroa.4.0.ph.i, i64 %_21.0.i.i.i) #21, !noalias !1036
  unreachable

bb15:                                             ; preds = %bb3.i3.i
  store i32 1, ptr %0, align 4
  %_0.i.not.i87 = icmp slt i32 %n, 3
  br i1 %_0.i.not.i87, label %bb10, label %bb2.i

panic:                                            ; preds = %bb17.i.i
; call core::panicking::panic_bounds_check
  tail call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef 0, i64 noundef 0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_2270001b817e0d6be4814a133ce858ba) #21
  unreachable

bb2.i.i.i3.i:                                     ; preds = %panic11.invoke
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
; call __rustc::__rust_dealloc
  tail call void @_RNvCsdBezzDwma51_7___rustc14___rust_dealloc(ptr noundef nonnull %0, i64 noundef %_21.0.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 4) #20, !noalias !1037
  resume { ptr, i32 } %lpad.thr_comm

bb5.preheader:                                    ; preds = %bb18
  %_0.i.not.i2089 = icmp slt i32 %n, 5
  br i1 %_0.i.not.i2089, label %bb10, label %bb2.i21

bb2.i:                                            ; preds = %bb15, %bb18
  %iter.sroa.0.088 = phi i32 [ %spec.select77, %bb18 ], [ 3, %bb15 ]
  %_0.i3.i = icmp sge i32 %iter.sroa.0.088, %n
  %not._0.i3.i = xor i1 %_0.i3.i, true
  %2 = zext i1 %not._0.i3.i to i32
  %spec.select77 = add nuw nsw i32 %iter.sroa.0.088, %2
  %_15 = add nsw i32 %iter.sroa.0.088, -3
  %_14 = sext i32 %_15 to i64
  %_53 = icmp ugt i64 %_3, %_14
  br i1 %_53, label %bb17, label %panic11.invoke

bb8.preheader:                                    ; preds = %bb21
  %_0.i.not.i3391 = icmp slt i32 %n, 10
  br i1 %_0.i.not.i3391, label %bb10, label %bb2.i34

bb2.i21:                                          ; preds = %bb5.preheader, %bb21
  %iter1.sroa.0.090 = phi i32 [ %spec.select78, %bb21 ], [ 5, %bb5.preheader ]
  %_0.i3.i22 = icmp sge i32 %iter1.sroa.0.090, %n
  %not._0.i3.i22 = xor i1 %_0.i3.i22, true
  %3 = zext i1 %not._0.i3.i22 to i32
  %spec.select78 = add nuw nsw i32 %iter1.sroa.0.090, %3
  %_27 = add nsw i32 %iter1.sroa.0.090, -5
  %_26 = sext i32 %_27 to i64
  %_64 = icmp ugt i64 %_3, %_26
  br i1 %_64, label %bb20, label %panic11.invoke

bb2.i34:                                          ; preds = %bb8.preheader, %bb25
  %iter2.sroa.0.092 = phi i32 [ %spec.select80, %bb25 ], [ 10, %bb8.preheader ]
  %_0.i3.i35 = icmp sge i32 %iter2.sroa.0.092, %n
  %not._0.i3.i35 = xor i1 %_0.i3.i35, true
  %4 = zext i1 %not._0.i3.i35 to i32
  %spec.select80 = add nuw nsw i32 %iter2.sroa.0.092, %4
  %_39 = add nsw i32 %iter2.sroa.0.092, -10
  %_38 = sext i32 %_39 to i64
  %_75 = icmp ugt i64 %_3, %_38
  br i1 %_75, label %bb23, label %panic11.invoke

bb10:                                             ; preds = %bb25, %bb15, %bb5.preheader, %bb8.preheader
  %_80.not = icmp eq i32 %n, -1
  br i1 %_80.not, label %panic11.invoke, label %"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17h606ce4c29935e209E.exit46"

"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17h606ce4c29935e209E.exit46": ; preds = %bb10
  %_42 = getelementptr inbounds nuw i32, ptr %0, i64 %_4
  %_0 = load i32, ptr %_42, align 4, !noundef !23
; call __rustc::__rust_dealloc
  tail call void @_RNvCsdBezzDwma51_7___rustc14___rust_dealloc(ptr noundef nonnull %0, i64 noundef %_21.0.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 4) #20, !noalias !1046
  ret i32 %_0

bb23:                                             ; preds = %bb2.i34
  %_41 = zext nneg i32 %iter2.sroa.0.092 to i64
  %_86 = icmp ugt i64 %_3, %_41
  br i1 %_86, label %bb25, label %panic11.invoke

bb25:                                             ; preds = %bb23
  %_37 = getelementptr inbounds nuw i32, ptr %0, i64 %_38
  %_36 = load i32, ptr %_37, align 4, !noundef !23
  %_40 = getelementptr inbounds nuw i32, ptr %0, i64 %_41
  %5 = load i32, ptr %_40, align 4, !noundef !23
  %6 = add i32 %5, %_36
  store i32 %6, ptr %_40, align 4
  %_0.i.not.i33 = icmp sgt i32 %spec.select80, %n
  %or.cond83 = select i1 %_0.i3.i35, i1 true, i1 %_0.i.not.i33
  br i1 %or.cond83, label %bb10, label %bb2.i34

bb20:                                             ; preds = %bb2.i21
  %_29 = zext nneg i32 %iter1.sroa.0.090 to i64
  %_70 = icmp ugt i64 %_3, %_29
  br i1 %_70, label %bb21, label %panic11.invoke

bb21:                                             ; preds = %bb20
  %_25 = getelementptr inbounds nuw i32, ptr %0, i64 %_26
  %_24 = load i32, ptr %_25, align 4, !noundef !23
  %_28 = getelementptr inbounds nuw i32, ptr %0, i64 %_29
  %7 = load i32, ptr %_28, align 4, !noundef !23
  %8 = add i32 %7, %_24
  store i32 %8, ptr %_28, align 4
  %_0.i.not.i20 = icmp sgt i32 %spec.select78, %n
  %or.cond82 = select i1 %_0.i3.i22, i1 true, i1 %_0.i.not.i20
  br i1 %or.cond82, label %bb8.preheader, label %bb2.i21

bb17:                                             ; preds = %bb2.i
  %_17 = zext nneg i32 %iter.sroa.0.088 to i64
  %_59 = icmp ugt i64 %_3, %_17
  br i1 %_59, label %bb18, label %panic11.invoke

bb18:                                             ; preds = %bb17
  %_13 = getelementptr inbounds nuw i32, ptr %0, i64 %_14
  %_12 = load i32, ptr %_13, align 4, !noundef !23
  %_16 = getelementptr inbounds nuw i32, ptr %0, i64 %_17
  %9 = load i32, ptr %_16, align 4, !noundef !23
  %10 = add i32 %9, %_12
  store i32 %10, ptr %_16, align 4
  %_0.i.not.i = icmp sgt i32 %spec.select77, %n
  %or.cond = select i1 %_0.i3.i, i1 true, i1 %_0.i.not.i
  br i1 %or.cond, label %bb5.preheader, label %bb2.i

panic11.invoke:                                   ; preds = %bb17, %bb2.i, %bb20, %bb2.i21, %bb23, %bb2.i34, %bb10
  %11 = phi i64 [ %_4, %bb10 ], [ %_38, %bb2.i34 ], [ %_41, %bb23 ], [ %_26, %bb2.i21 ], [ %_29, %bb20 ], [ %_14, %bb2.i ], [ %_17, %bb17 ]
  %12 = phi ptr [ @alloc_83cb8219e27f1cc35cdb6c0ef1b6d950, %bb10 ], [ @alloc_be79e627137d222683e55bcc0c4f543a, %bb2.i34 ], [ @alloc_84942b27a20cd827a83b1cc05e44d40f, %bb23 ], [ @alloc_6482eeb5ea8e78b6c56c22c8aa99dc48, %bb2.i21 ], [ @alloc_fbb6206f8bb6e0b3dbdd54392b723305, %bb20 ], [ @alloc_f78a79e03d0dac8c5ef60887de38b162, %bb2.i ], [ @alloc_2cebd51b6c62ac1bad7770006a70ceeb, %bb17 ]
; invoke core::panicking::panic_bounds_check
  invoke void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef %11, i64 noundef %_3, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %12) #21
          to label %panic11.cont unwind label %bb2.i.i.i3.i

panic11.cont:                                     ; preds = %panic11.invoke
  unreachable
}

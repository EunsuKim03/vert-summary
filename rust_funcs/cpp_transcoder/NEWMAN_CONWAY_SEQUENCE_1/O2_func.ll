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
  %_41.not = icmp eq i32 %n, 0
  br i1 %_41.not, label %panic8.invoke, label %bb10

panic:                                            ; preds = %bb17.i.i
; call core::panicking::panic_bounds_check
  tail call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef 0, i64 noundef 0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_d305fd6ae42b7cc5b36c5f69d1b26e13) #21
  unreachable

bb2.i.i.i3.i:                                     ; preds = %panic8.invoke
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
; call __rustc::__rust_dealloc
  tail call void @_RNvCsdBezzDwma51_7___rustc14___rust_dealloc(ptr noundef nonnull %0, i64 noundef %_21.0.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 4) #20, !noalias !1037
  resume { ptr, i32 } %lpad.thr_comm

bb10:                                             ; preds = %bb9
  %_6 = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 1, ptr %_6, align 4
  %_47 = icmp samesign ugt i64 %_3, 2
  br i1 %_47, label %bb11, label %panic8.invoke

bb11:                                             ; preds = %bb10
  %_7 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 1, ptr %_7, align 4
  %_0.i.not.i42 = icmp slt i32 %n, 3
  br i1 %_0.i.not.i42, label %bb4, label %bb2.i

bb2.i:                                            ; preds = %bb11, %bb18
  %iter.sroa.0.043 = phi i32 [ %spec.select, %bb18 ], [ 3, %bb11 ]
  %_0.i3.i = icmp sge i32 %iter.sroa.0.043, %n
  %not._0.i3.i = xor i1 %_0.i3.i, true
  %2 = zext i1 %not._0.i3.i to i32
  %spec.select = add nuw nsw i32 %iter.sroa.0.043, %2
  %_21 = zext nneg i32 %iter.sroa.0.043 to i64
  %_20 = add nsw i64 %_21, -1
  %_52 = icmp ult i64 %_20, %_3
  br i1 %_52, label %bb13, label %panic8.invoke

bb4:                                              ; preds = %bb18, %bb11
  %_57.not = icmp eq i32 %n, -1
  br i1 %_57.not, label %panic8.invoke, label %"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17hf63835b4d4ae8829E.exit15"

"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17hf63835b4d4ae8829E.exit15": ; preds = %bb4
  %_29 = getelementptr inbounds nuw i32, ptr %0, i64 %_4
  %_0 = load i32, ptr %_29, align 4, !noundef !23
; call __rustc::__rust_dealloc
  tail call void @_RNvCsdBezzDwma51_7___rustc14___rust_dealloc(ptr noundef nonnull %0, i64 noundef %_21.0.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 4) #20, !noalias !1046
  ret i32 %_0

bb13:                                             ; preds = %bb2.i
  %_19 = getelementptr inbounds nuw i32, ptr %0, i64 %_20
  %_18 = load i32, ptr %_19, align 4, !noundef !23
  %_17 = add i32 %_18, -1
  %_16 = sext i32 %_17 to i64
  %_62 = icmp ugt i64 %_3, %_16
  br i1 %_62, label %bb15, label %panic8.invoke

bb15:                                             ; preds = %bb13
  %_15 = getelementptr inbounds nuw i32, ptr %0, i64 %_16
  %_14 = load i32, ptr %_15, align 4, !noundef !23
  %_25 = sub i32 %iter.sroa.0.043, %_18
  %_24 = sext i32 %_25 to i64
  %_72 = icmp ugt i64 %_3, %_24
  br i1 %_72, label %bb17, label %panic8.invoke

bb17:                                             ; preds = %bb15
  %_78 = icmp ugt i64 %_3, %_21
  br i1 %_78, label %bb18, label %panic8.invoke

bb18:                                             ; preds = %bb17
  %_23 = getelementptr inbounds nuw i32, ptr %0, i64 %_24
  %_22 = load i32, ptr %_23, align 4, !noundef !23
  %_28 = getelementptr inbounds nuw i32, ptr %0, i64 %_21
  %3 = add i32 %_22, %_14
  store i32 %3, ptr %_28, align 4
  %_0.i.not.i = icmp sgt i32 %spec.select, %n
  %or.cond = select i1 %_0.i3.i, i1 true, i1 %_0.i.not.i
  br i1 %or.cond, label %bb4, label %bb2.i

panic8.invoke:                                    ; preds = %bb17, %bb15, %bb13, %bb2.i, %bb4, %bb10, %bb9
  %4 = phi i64 [ 1, %bb9 ], [ 2, %bb10 ], [ %_4, %bb4 ], [ %_20, %bb2.i ], [ %_16, %bb13 ], [ %_24, %bb15 ], [ %_21, %bb17 ]
  %5 = phi ptr [ @alloc_748d2d0292760bc0f8c42f5d08bc215f, %bb9 ], [ @alloc_9d3cedabe7e362ec3d18b8aa55766726, %bb10 ], [ @alloc_9233d2f71a5e0fdc66ab226ca72249f2, %bb4 ], [ @alloc_3c4cf701785916e97f450c453fbd749d, %bb2.i ], [ @alloc_34e2ee34688d966e4678a6cb854427bb, %bb13 ], [ @alloc_75d866a1ea296a542f2f7a56fda29a70, %bb15 ], [ @alloc_37c4ea4a3590454b57b62644b919d197, %bb17 ]
; invoke core::panicking::panic_bounds_check
  invoke void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef %4, i64 noundef %_3, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %5) #21
          to label %panic8.cont unwind label %bb2.i.i.i3.i

panic8.cont:                                      ; preds = %panic8.invoke
  unreachable
}

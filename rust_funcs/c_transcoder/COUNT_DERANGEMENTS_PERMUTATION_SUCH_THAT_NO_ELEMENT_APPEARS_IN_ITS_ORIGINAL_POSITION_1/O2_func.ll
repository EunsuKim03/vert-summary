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
  store i32 1, ptr %0, align 4
  %_37.not = icmp eq i32 %n, 0
  br i1 %_37.not, label %panic6.invoke, label %bb10

panic:                                            ; preds = %bb17.i.i
; call core::panicking::panic_bounds_check
  tail call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef 0, i64 noundef 0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_8f94c27f837441fa3f63a9d395061f67) #21
  unreachable

bb2.i.i.i3.i:                                     ; preds = %panic6.invoke
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
; call __rustc::__rust_dealloc
  tail call void @_RNvCsdBezzDwma51_7___rustc14___rust_dealloc(ptr noundef nonnull %0, i64 noundef %_21.0.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 4) #20, !noalias !1037
  resume { ptr, i32 } %lpad.thr_comm

bb10:                                             ; preds = %bb9
  %_6 = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 0, ptr %_6, align 4
  %_43 = icmp samesign ugt i64 %_3, 2
  br i1 %_43, label %bb11, label %panic6.invoke

bb11:                                             ; preds = %bb10
  %_7 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 1, ptr %_7, align 4
  %_0.i.not.i34 = icmp slt i32 %n, 3
  br i1 %_0.i.not.i34, label %bb4, label %bb2.i

bb2.i:                                            ; preds = %bb11, %bb16
  %iter.sroa.0.035 = phi i32 [ %spec.select, %bb16 ], [ 3, %bb11 ]
  %_0.i3.i = icmp sge i32 %iter.sroa.0.035, %n
  %not._0.i3.i = xor i1 %_0.i3.i, true
  %2 = zext i1 %not._0.i3.i to i32
  %spec.select = add nuw nsw i32 %iter.sroa.0.035, %2
  %_14 = add nsw i32 %iter.sroa.0.035, -1
  %_18 = sext i32 %_14 to i64
  %_48 = icmp ugt i64 %_3, %_18
  br i1 %_48, label %bb13, label %panic6.invoke

bb4:                                              ; preds = %bb16, %bb11
  %_53.not = icmp eq i32 %n, -1
  br i1 %_53.not, label %panic6.invoke, label %"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17h476cbc33bee945f1E.exit13"

"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17h476cbc33bee945f1E.exit13": ; preds = %bb4
  %_25 = getelementptr inbounds nuw i32, ptr %0, i64 %_4
  %_0 = load i32, ptr %_25, align 4, !noundef !23
; call __rustc::__rust_dealloc
  tail call void @_RNvCsdBezzDwma51_7___rustc14___rust_dealloc(ptr noundef nonnull %0, i64 noundef %_21.0.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 4) #20, !noalias !1046
  ret i32 %_0

bb13:                                             ; preds = %bb2.i
  %_22 = add nsw i32 %iter.sroa.0.035, -2
  %_21 = sext i32 %_22 to i64
  %_58 = icmp ugt i64 %_3, %_21
  br i1 %_58, label %bb15, label %panic6.invoke

bb15:                                             ; preds = %bb13
  %_24 = zext nneg i32 %iter.sroa.0.035 to i64
  %_64 = icmp ugt i64 %_3, %_24
  br i1 %_64, label %bb16, label %panic6.invoke

bb16:                                             ; preds = %bb15
  %_17 = getelementptr inbounds nuw i32, ptr %0, i64 %_18
  %_16 = load i32, ptr %_17, align 4, !noundef !23
  %_20 = getelementptr inbounds nuw i32, ptr %0, i64 %_21
  %_19 = load i32, ptr %_20, align 4, !noundef !23
  %_15 = add i32 %_19, %_16
  %_23 = getelementptr inbounds nuw i32, ptr %0, i64 %_24
  %3 = mul i32 %_15, %_14
  store i32 %3, ptr %_23, align 4
  %_0.i.not.i = icmp sgt i32 %spec.select, %n
  %or.cond = select i1 %_0.i3.i, i1 true, i1 %_0.i.not.i
  br i1 %or.cond, label %bb4, label %bb2.i

panic6.invoke:                                    ; preds = %bb15, %bb13, %bb2.i, %bb4, %bb10, %bb9
  %4 = phi i64 [ 1, %bb9 ], [ 2, %bb10 ], [ %_4, %bb4 ], [ %_18, %bb2.i ], [ %_21, %bb13 ], [ %_24, %bb15 ]
  %5 = phi ptr [ @alloc_0e569becd73c94f81f1277866df9536c, %bb9 ], [ @alloc_70d7ec2340ec83a39789ef56a9a9baa3, %bb10 ], [ @alloc_feff2813e9e56e89886e9ff0bc362d3c, %bb4 ], [ @alloc_cb84948e34d76abf68f270f0d0485026, %bb2.i ], [ @alloc_ebde3b36a21fe66e03216df603447c2f, %bb13 ], [ @alloc_658d7a56aaec0bbd5158c30b231d0fe9, %bb15 ]
; invoke core::panicking::panic_bounds_check
  invoke void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef %4, i64 noundef %_3, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %5) #21
          to label %panic6.cont unwind label %bb2.i.i.i3.i

panic6.cont:                                      ; preds = %panic6.invoke
  unreachable
}

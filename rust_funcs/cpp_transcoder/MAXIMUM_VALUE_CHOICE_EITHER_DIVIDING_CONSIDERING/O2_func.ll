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
  %_42.not = icmp eq i32 %n, 0
  br i1 %_42.not, label %panic6.invoke, label %bb10

panic:                                            ; preds = %bb17.i.i
; call core::panicking::panic_bounds_check
  tail call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef 0, i64 noundef 0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_fe237a0f60a400f7f25d2a37a1c13a1f) #21
  unreachable

bb2.i.i.i3.i:                                     ; preds = %panic6.invoke, %bb20
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
; call __rustc::__rust_dealloc
  tail call void @_RNvCsdBezzDwma51_7___rustc14___rust_dealloc(ptr noundef nonnull %0, i64 noundef %_21.0.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 4) #20, !noalias !1037
  resume { ptr, i32 } %lpad.thr_comm

unreachable:                                      ; preds = %bb20
  unreachable

bb10:                                             ; preds = %bb9
  %_6 = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 1, ptr %_6, align 4
  %_0.i.not.i46 = icmp slt i32 %n, 2
  br i1 %_0.i.not.i46, label %bb4, label %bb2.i

bb2.i:                                            ; preds = %bb10, %bb16
  %iter.sroa.0.047 = phi i32 [ %spec.select, %bb16 ], [ 2, %bb10 ]
  %_0.i3.i = icmp sge i32 %iter.sroa.0.047, %n
  %not._0.i3.i = xor i1 %_0.i3.i, true
  %2 = zext i1 %not._0.i3.i to i32
  %spec.select = add nuw nsw i32 %iter.sroa.0.047, %2
  %_18 = zext nneg i32 %iter.sroa.0.047 to i64
  %_178 = lshr i64 %_18, 1
  %_51 = icmp ult i64 %_178, %_3
  br i1 %_51, label %bb12, label %panic6.invoke

bb4:                                              ; preds = %bb16, %bb10
  %3 = getelementptr i32, ptr %0, i64 %_3
  %_74 = getelementptr i8, ptr %3, i64 -4
  %.not = icmp eq ptr %_74, null
  br i1 %.not, label %bb20, label %"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17he397cdff1ab61c43E.exit15", !prof !909

"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17he397cdff1ab61c43E.exit15": ; preds = %bb4
  %_0 = load i32, ptr %_74, align 4, !noundef !23
; call __rustc::__rust_dealloc
  tail call void @_RNvCsdBezzDwma51_7___rustc14___rust_dealloc(ptr noundef nonnull %0, i64 noundef %_21.0.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 4) #20, !noalias !1046
  ret i32 %_0

bb20:                                             ; preds = %bb4
; invoke core::option::unwrap_failed
  invoke void @_ZN4core6option13unwrap_failed17hef2534b77b89c04fE(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_74f2b1d79e2c6c280d914fae146f98c6) #21
          to label %unreachable unwind label %bb2.i.i.i3.i

bb12:                                             ; preds = %bb2.i
  %_2167 = udiv i32 %iter.sroa.0.047, 3
  %_21.zext = zext nneg i32 %_2167 to i64
  %_56 = icmp ugt i64 %_3, %_21.zext
  br i1 %_56, label %bb13, label %panic6.invoke

bb13:                                             ; preds = %bb12
  %_249 = lshr i64 %_18, 2
  %_61 = icmp ult i64 %_249, %_3
  br i1 %_61, label %bb14, label %panic6.invoke

bb14:                                             ; preds = %bb13
  %_16 = getelementptr inbounds nuw i32, ptr %0, i64 %_178
  %_15 = load i32, ptr %_16, align 4, !noundef !23
  %_20 = getelementptr inbounds nuw i32, ptr %0, i64 %_21.zext
  %_19 = load i32, ptr %_20, align 4, !noundef !23
  %_14 = add i32 %_19, %_15
  %_23 = getelementptr inbounds nuw i32, ptr %0, i64 %_249
  %_22 = load i32, ptr %_23, align 4, !noundef !23
  %_13 = add i32 %_14, %_22
  %_2768 = udiv i32 %iter.sroa.0.047, 5
  %_27.zext = zext nneg i32 %_2768 to i64
  %_66 = icmp ugt i64 %_3, %_27.zext
  br i1 %_66, label %bb15, label %panic6.invoke

bb15:                                             ; preds = %bb14
  %_72 = icmp ugt i64 %_3, %_18
  br i1 %_72, label %bb16, label %panic6.invoke

bb16:                                             ; preds = %bb15
  %_26 = getelementptr inbounds nuw i32, ptr %0, i64 %_27.zext
  %_25 = load i32, ptr %_26, align 4, !noundef !23
  %_28 = getelementptr inbounds nuw i32, ptr %0, i64 %_18
  %4 = add i32 %_13, %_25
  store i32 %4, ptr %_28, align 4
  %_0.i.not.i = icmp sgt i32 %spec.select, %n
  %or.cond = select i1 %_0.i3.i, i1 true, i1 %_0.i.not.i
  br i1 %or.cond, label %bb4, label %bb2.i

panic6.invoke:                                    ; preds = %bb15, %bb14, %bb13, %bb12, %bb2.i, %bb9
  %5 = phi i64 [ 1, %bb9 ], [ %_178, %bb2.i ], [ %_21.zext, %bb12 ], [ %_249, %bb13 ], [ %_27.zext, %bb14 ], [ %_18, %bb15 ]
  %6 = phi ptr [ @alloc_d15497a338d44fb24c3adcececc5f200, %bb9 ], [ @alloc_d5183804b6aa4afab4d20a6ee8da9aab, %bb2.i ], [ @alloc_66f675f57fd40e465affefa44c8f3462, %bb12 ], [ @alloc_46f7bcd617cb732bb51cc1066df0a5f4, %bb13 ], [ @alloc_fa6de647b65354e8e8c45b11696d2ba6, %bb14 ], [ @alloc_ff660c87842baf60f3944449e24873c4, %bb15 ]
; invoke core::panicking::panic_bounds_check
  invoke void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef %5, i64 noundef %_3, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %6) #21
          to label %panic6.cont unwind label %bb2.i.i.i3.i

panic6.cont:                                      ; preds = %panic6.invoke
  unreachable
}

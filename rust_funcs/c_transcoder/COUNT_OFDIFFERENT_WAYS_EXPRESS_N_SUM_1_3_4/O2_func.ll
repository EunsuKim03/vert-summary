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
  %_42.not = icmp eq i32 %n, 0
  br i1 %_42.not, label %panic8.invoke, label %bb10

panic:                                            ; preds = %bb17.i.i
; call core::panicking::panic_bounds_check
  tail call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef 0, i64 noundef 0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_c997f2eecd8e1a0504a1a60da4f67804) #21
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
  %_48 = icmp samesign ugt i64 %_3, 2
  br i1 %_48, label %bb11, label %panic8.invoke

bb11:                                             ; preds = %bb10
  %_7 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 1, ptr %_7, align 4
  %_54.not = icmp eq i64 %_3, 3
  br i1 %_54.not, label %panic8.invoke, label %bb12

bb12:                                             ; preds = %bb11
  %_8 = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 2, ptr %_8, align 4
  %_0.i.not.i40 = icmp slt i32 %n, 4
  br i1 %_0.i.not.i40, label %bb4, label %bb2.i

bb2.i:                                            ; preds = %bb12, %bb18
  %iter.sroa.0.041 = phi i32 [ %spec.select, %bb18 ], [ 4, %bb12 ]
  %_0.i3.i = icmp sge i32 %iter.sroa.0.041, %n
  %not._0.i3.i = xor i1 %_0.i3.i, true
  %2 = zext i1 %not._0.i3.i to i32
  %spec.select = add nuw nsw i32 %iter.sroa.0.041, %2
  %_19 = add nsw i32 %iter.sroa.0.041, -1
  %_18 = sext i32 %_19 to i64
  %_59 = icmp ugt i64 %_3, %_18
  br i1 %_59, label %bb14, label %panic8.invoke

bb4:                                              ; preds = %bb18, %bb12
  %_64.not = icmp eq i32 %n, -1
  br i1 %_64.not, label %panic8.invoke, label %"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17h5a73d4b1d587d495E.exit15"

"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17h5a73d4b1d587d495E.exit15": ; preds = %bb4
  %_30 = getelementptr inbounds nuw i32, ptr %0, i64 %_4
  %_0 = load i32, ptr %_30, align 4, !noundef !23
; call __rustc::__rust_dealloc
  tail call void @_RNvCsdBezzDwma51_7___rustc14___rust_dealloc(ptr noundef nonnull %0, i64 noundef %_21.0.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 4) #20, !noalias !1046
  ret i32 %_0

bb14:                                             ; preds = %bb2.i
  %_23 = add nsw i32 %iter.sroa.0.041, -3
  %_22 = sext i32 %_23 to i64
  %_69 = icmp ugt i64 %_3, %_22
  br i1 %_69, label %bb16, label %panic8.invoke

bb16:                                             ; preds = %bb14
  %_17 = getelementptr inbounds nuw i32, ptr %0, i64 %_18
  %_16 = load i32, ptr %_17, align 4, !noundef !23
  %_21 = getelementptr inbounds nuw i32, ptr %0, i64 %_22
  %_20 = load i32, ptr %_21, align 4, !noundef !23
  %_15 = add i32 %_20, %_16
  %_27 = add nsw i32 %iter.sroa.0.041, -4
  %_26 = sext i32 %_27 to i64
  %_74 = icmp ugt i64 %_3, %_26
  br i1 %_74, label %bb17, label %panic8.invoke

bb17:                                             ; preds = %bb16
  %_29 = zext nneg i32 %iter.sroa.0.041 to i64
  %_80 = icmp ugt i64 %_3, %_29
  br i1 %_80, label %bb18, label %panic8.invoke

bb18:                                             ; preds = %bb17
  %_25 = getelementptr inbounds nuw i32, ptr %0, i64 %_26
  %_24 = load i32, ptr %_25, align 4, !noundef !23
  %_28 = getelementptr inbounds nuw i32, ptr %0, i64 %_29
  %3 = add i32 %_15, %_24
  store i32 %3, ptr %_28, align 4
  %_0.i.not.i = icmp sgt i32 %spec.select, %n
  %or.cond = select i1 %_0.i3.i, i1 true, i1 %_0.i.not.i
  br i1 %or.cond, label %bb4, label %bb2.i

panic8.invoke:                                    ; preds = %bb17, %bb16, %bb14, %bb2.i, %bb4, %bb11, %bb10, %bb9
  %4 = phi i64 [ 1, %bb9 ], [ 2, %bb10 ], [ 3, %bb11 ], [ %_4, %bb4 ], [ %_18, %bb2.i ], [ %_22, %bb14 ], [ %_26, %bb16 ], [ %_29, %bb17 ]
  %5 = phi i64 [ %_3, %bb9 ], [ %_3, %bb10 ], [ 3, %bb11 ], [ %_3, %bb4 ], [ %_3, %bb2.i ], [ %_3, %bb14 ], [ %_3, %bb16 ], [ %_3, %bb17 ]
  %6 = phi ptr [ @alloc_77d9a1f6b5b17d7ac36c30f1176117b1, %bb9 ], [ @alloc_53bef81a68d4726650d245e84f663a3c, %bb10 ], [ @alloc_21bc07919a72c59cfcb1612af9f263c3, %bb11 ], [ @alloc_bce9bcae1cbd5a13268d56a1fedb2603, %bb4 ], [ @alloc_6f01d87f29057f062333a9f6b088f6f2, %bb2.i ], [ @alloc_e2d7efb284d25a5d0d1e4f24d887bfff, %bb14 ], [ @alloc_0f35713af3526b80b73edfedc1660bba, %bb16 ], [ @alloc_409d76cbf7a5028498ccea9ee0b49a62, %bb17 ]
; invoke core::panicking::panic_bounds_check
  invoke void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef %4, i64 noundef %5, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %6) #21
          to label %panic8.cont unwind label %bb2.i.i.i3.i

panic8.cont:                                      ; preds = %panic8.invoke
  unreachable
}

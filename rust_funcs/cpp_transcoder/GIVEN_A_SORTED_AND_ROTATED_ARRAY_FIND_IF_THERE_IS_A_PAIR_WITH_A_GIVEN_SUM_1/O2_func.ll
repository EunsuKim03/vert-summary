define noundef i32 @f_gold(ptr noalias noundef nonnull readonly align 4 captures(none) %arr.0, i64 noundef range(i64 0, 2305843009213693952) %arr.1, i32 noundef %n, i32 noundef %x) unnamed_addr #1 {
start:
  %_8 = sext i32 %n to i64
  %_7 = add nsw i64 %_8, -1
  %umax = tail call i64 @llvm.umax.i64(i64 %arr.1, i64 1)
  %0 = add nsw i64 %umax, -1
  br label %bb1

bb1:                                              ; preds = %bb4, %start
  %i.sroa.0.0 = phi i64 [ 0, %start ], [ %_15, %bb4 ]
  %exitcond.not = icmp eq i64 %i.sroa.0.0, %_7
  br i1 %exitcond.not, label %bb8, label %bb2

bb2:                                              ; preds = %bb1
  %exitcond47.not = icmp eq i64 %i.sroa.0.0, %arr.1
  br i1 %exitcond47.not, label %panic, label %bb3

bb8:                                              ; preds = %bb4, %bb1
  %i.sroa.0.0.lcssa = phi i64 [ %i.sroa.0.0, %bb4 ], [ %_7, %bb1 ]
  %_21 = icmp eq i32 %n, 0
  br i1 %_21, label %panic2, label %bb9

bb3:                                              ; preds = %bb2
  %exitcond48.not = icmp eq i64 %i.sroa.0.0, %0
  br i1 %exitcond48.not, label %panic1, label %bb4

panic:                                            ; preds = %bb2
; call core::panicking::panic_bounds_check
  tail call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef %arr.1, i64 noundef %arr.1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_8f379ad6718ebb506feaf40b6c48918d) #18
  unreachable

bb4:                                              ; preds = %bb3
  %_15 = add nuw nsw i64 %i.sroa.0.0, 1
  %1 = getelementptr inbounds nuw float, ptr %arr.0, i64 %i.sroa.0.0
  %_10 = load float, ptr %1, align 4, !noundef !23
  %2 = getelementptr inbounds nuw float, ptr %arr.0, i64 %_15
  %_14 = load float, ptr %2, align 4, !noundef !23
  %_9 = fcmp ugt float %_10, %_14
  br i1 %_9, label %bb8, label %bb1

panic1:                                           ; preds = %bb3
; call core::panicking::panic_bounds_check
  tail call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef %umax, i64 noundef %arr.1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_9a480d030b5e2c60749ef2db1e367f30) #18
  unreachable

bb9:                                              ; preds = %bb8
  %_19 = add nuw i64 %i.sroa.0.0.lcssa, 1
  %3 = urem i64 %_19, %_8
  %_22.not36 = icmp eq i64 %3, %i.sroa.0.0.lcssa
  br i1 %_22.not36, label %bb30, label %bb11.lr.ph

bb11.lr.ph:                                       ; preds = %bb9
  %_34 = sitofp i32 %x to float
  br label %bb11

panic2:                                           ; preds = %bb8
; call core::panicking::panic_const::panic_const_rem_by_zero
  tail call void @_ZN4core9panicking11panic_const23panic_const_rem_by_zero17h68b8e0645961a790E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_b0bfa36ce290a7d32718555f0a5d695e) #18
  unreachable

bb11:                                             ; preds = %bb11.lr.ph, %bb28
  %cnt.sroa.0.039 = phi i32 [ 0, %bb11.lr.ph ], [ %cnt.sroa.0.2, %bb28 ]
  %i.sroa.0.138 = phi i64 [ %i.sroa.0.0.lcssa, %bb11.lr.ph ], [ %i.sroa.0.2, %bb28 ]
  %l.sroa.0.037 = phi i64 [ %3, %bb11.lr.ph ], [ %l.sroa.0.1, %bb28 ]
  %_30 = icmp ult i64 %l.sroa.0.037, %arr.1
  br i1 %_30, label %bb12, label %panic3

bb30:                                             ; preds = %bb28, %bb14, %bb9
  %cnt.sroa.0.1 = phi i32 [ 0, %bb9 ], [ %6, %bb14 ], [ %cnt.sroa.0.2, %bb28 ]
  ret i32 %cnt.sroa.0.1

bb12:                                             ; preds = %bb11
  %_33 = icmp ult i64 %i.sroa.0.138, %arr.1
  br i1 %_33, label %bb13, label %panic4

panic3:                                           ; preds = %bb11
; call core::panicking::panic_bounds_check
  tail call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef %l.sroa.0.037, i64 noundef %arr.1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_b3dd4bf7440304b91d5fd79e2aa6edb3) #18
  unreachable

bb13:                                             ; preds = %bb12
  %4 = getelementptr inbounds nuw float, ptr %arr.0, i64 %l.sroa.0.037
  %_27 = load float, ptr %4, align 4, !noundef !23
  %5 = getelementptr inbounds nuw float, ptr %arr.0, i64 %i.sroa.0.138
  %_31 = load float, ptr %5, align 4, !noundef !23
  %_26 = fadd float %_27, %_31
  %_25 = fcmp oeq float %_26, %_34
  br i1 %_25, label %bb14, label %bb22

panic4:                                           ; preds = %bb12
; call core::panicking::panic_bounds_check
  tail call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef %i.sroa.0.138, i64 noundef %arr.1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_8c0c9f0ea98fde00752271838f4987d9) #18
  unreachable

bb14:                                             ; preds = %bb13
  %6 = add i32 %cnt.sroa.0.039, 1
  %_38 = add i64 %_7, %i.sroa.0.138
  %_37 = urem i64 %_38, %_8
  %_35 = icmp eq i64 %l.sroa.0.037, %_37
  br i1 %_35, label %bb30, label %bb18

bb22:                                             ; preds = %bb13
  %_44 = fcmp olt float %_26, %_34
  br i1 %_44, label %bb24, label %bb26

bb26:                                             ; preds = %bb22
  %_53 = add i64 %_7, %i.sroa.0.138
  %7 = urem i64 %_53, %_8
  br label %bb28

bb24:                                             ; preds = %bb22
  %_52 = add nuw nsw i64 %l.sroa.0.037, 1
  %8 = urem i64 %_52, %_8
  br label %bb28

bb28:                                             ; preds = %bb26, %bb24, %bb18
  %l.sroa.0.1 = phi i64 [ %9, %bb18 ], [ %8, %bb24 ], [ %l.sroa.0.037, %bb26 ]
  %i.sroa.0.2 = phi i64 [ %_37, %bb18 ], [ %i.sroa.0.138, %bb24 ], [ %7, %bb26 ]
  %cnt.sroa.0.2 = phi i32 [ %6, %bb18 ], [ %cnt.sroa.0.039, %bb24 ], [ %cnt.sroa.0.039, %bb26 ]
  %_22.not = icmp eq i64 %l.sroa.0.1, %i.sroa.0.2
  br i1 %_22.not, label %bb30, label %bb11

bb18:                                             ; preds = %bb14
  %_41 = add nuw nsw i64 %l.sroa.0.037, 1
  %9 = urem i64 %_41, %_8
  br label %bb28
}

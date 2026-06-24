define noundef i32 @f_gold(ptr noalias noundef nonnull align 4 captures(none) %arr.0, i64 noundef range(i64 0, 2305843009213693952) %arr.1, i32 noundef %n, i32 noundef %key, i32 noundef %capacity) unnamed_addr #1 {
start:
  %_5.not = icmp slt i32 %n, %capacity
  br i1 %_5.not, label %bb3.preheader, label %bb13

bb3.preheader:                                    ; preds = %start
  %i.sroa.0.012 = add i32 %n, -1
  %_713 = icmp sgt i32 %i.sroa.0.012, -1
  br i1 %_713, label %bb4, label %bb11

bb4:                                              ; preds = %bb3.preheader, %bb8
  %i.sroa.0.014 = phi i32 [ %i.sroa.0.0, %bb8 ], [ %i.sroa.0.012, %bb3.preheader ]
  %_11 = zext nneg i32 %i.sroa.0.014 to i64
  %_14 = icmp samesign ugt i64 %arr.1, %_11
  br i1 %_14, label %bb5, label %panic

bb11:                                             ; preds = %bb8, %bb5, %bb3.preheader
  %i.sroa.0.0.lcssa = phi i32 [ %i.sroa.0.012, %bb3.preheader ], [ %i.sroa.0.014, %bb5 ], [ -1, %bb8 ]
  %_25 = sext i32 %i.sroa.0.0.lcssa to i64
  %_24 = add nsw i64 %_25, 1
  %_27 = icmp ult i64 %_24, %arr.1
  br i1 %_27, label %bb12, label %panic1

bb5:                                              ; preds = %bb4
  %0 = getelementptr inbounds nuw i32, ptr %arr.0, i64 %_11
  %_10 = load i32, ptr %0, align 4, !noundef !23
  %_9 = icmp sgt i32 %_10, %key
  br i1 %_9, label %bb7, label %bb11

panic:                                            ; preds = %bb4
; call core::panicking::panic_bounds_check
  tail call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef %_11, i64 noundef %arr.1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_b0ece5385ce46fb9f0b9a9ea0ce757da) #18
  unreachable

bb12:                                             ; preds = %bb11
  %1 = getelementptr inbounds nuw i32, ptr %arr.0, i64 %_24
  store i32 %key, ptr %1, align 4
  %2 = add i32 %n, 1
  br label %bb13

panic1:                                           ; preds = %bb11
; call core::panicking::panic_bounds_check
  tail call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef %_24, i64 noundef %arr.1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_944e20eaa28d084ea092a29c1c654f23) #18
  unreachable

bb13:                                             ; preds = %start, %bb12
  %_0.sroa.0.0 = phi i32 [ %2, %bb12 ], [ %n, %start ]
  ret i32 %_0.sroa.0.0

bb7:                                              ; preds = %bb5
  %_19 = add nuw nsw i64 %_11, 1
  %_22 = icmp samesign ult i64 %_19, %arr.1
  br i1 %_22, label %bb8, label %panic3

bb8:                                              ; preds = %bb7
  %3 = getelementptr inbounds nuw i32, ptr %arr.0, i64 %_19
  store i32 %_10, ptr %3, align 4
  %i.sroa.0.0 = add nsw i32 %i.sroa.0.014, -1
  %_7 = icmp sgt i32 %i.sroa.0.014, 0
  br i1 %_7, label %bb4, label %bb11

panic3:                                           ; preds = %bb7
; call core::panicking::panic_bounds_check
  tail call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef %_19, i64 noundef %arr.1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_b40551d5e90a42ca21de813b31caa170) #18
  unreachable
}

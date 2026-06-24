define noundef range(i32 0, 2) i32 @f_gold(ptr noalias noundef nonnull readonly align 4 captures(none) %arr.0, i64 noundef range(i64 0, 2305843009213693952) %arr.1, i32 noundef %n) unnamed_addr #3 {
start:
  br label %tailrecurse

tailrecurse:                                      ; preds = %bb7, %start
  %n.tr = phi i32 [ %n, %start ], [ %_14, %bb7 ]
  %switch = icmp ult i32 %n.tr, 2
  br i1 %switch, label %bb10, label %bb3

bb3:                                              ; preds = %tailrecurse
  %_8 = sext i32 %n.tr to i64
  %_7 = add nsw i64 %_8, -1
  %_10 = icmp ult i64 %_7, %arr.1
  br i1 %_10, label %bb4, label %panic

bb4:                                              ; preds = %bb3
  %_12 = add nsw i64 %_8, -2
  %_13 = icmp ult i64 %_12, %arr.1
  br i1 %_13, label %bb5, label %panic1

panic:                                            ; preds = %bb3
; call core::panicking::panic_bounds_check
  tail call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef %_7, i64 noundef %arr.1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_718fa8878655353a6e53f4a9b5e03a3d) #24
  unreachable

bb5:                                              ; preds = %bb4
  %0 = getelementptr inbounds nuw i32, ptr %arr.0, i64 %_7
  %_6 = load i32, ptr %0, align 4, !noundef !37
  %1 = getelementptr inbounds nuw i32, ptr %arr.0, i64 %_12
  %_11 = load i32, ptr %1, align 4, !noundef !37
  %_5 = icmp slt i32 %_6, %_11
  br i1 %_5, label %bb10, label %bb7

panic1:                                           ; preds = %bb4
; call core::panicking::panic_bounds_check
  tail call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef %_12, i64 noundef %arr.1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_ea8152f9a4157690a70f14c0f1230358) #24
  unreachable

bb7:                                              ; preds = %bb5
  %_14 = add i32 %n.tr, -1
  br label %tailrecurse

bb10:                                             ; preds = %bb5, %tailrecurse
  %_0.sroa.0.0 = phi i32 [ 1, %tailrecurse ], [ 0, %bb5 ]
  ret i32 %_0.sroa.0.0
}

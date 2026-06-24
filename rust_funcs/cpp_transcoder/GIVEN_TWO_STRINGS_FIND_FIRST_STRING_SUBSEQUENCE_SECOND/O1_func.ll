define noundef range(i32 0, 2) i32 @f_gold(ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) %str1.0, i64 noundef range(i64 0, 2305843009213693952) %str1.1, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) %str2.0, i64 noundef range(i64 0, 2305843009213693952) %str2.1, i32 noundef %m, i32 noundef %n) unnamed_addr #3 {
start:
  br label %tailrecurse

tailrecurse:                                      ; preds = %bb6, %start
  %m.tr = phi i32 [ %m, %start ], [ %_18.sink, %bb6 ]
  %n.tr = phi i32 [ %n, %start ], [ %_19, %bb6 ]
  %_5 = icmp eq i32 %m.tr, 0
  br i1 %_5, label %bb13, label %bb2

bb2:                                              ; preds = %tailrecurse
  %_6 = icmp eq i32 %n.tr, 0
  br i1 %_6, label %bb13, label %bb4

bb4:                                              ; preds = %bb2
  %_10 = sext i32 %m.tr to i64
  %_9 = add nsw i64 %_10, -1
  %_12 = icmp ult i64 %_9, %str1.1
  br i1 %_12, label %bb5, label %panic

bb5:                                              ; preds = %bb4
  %_15 = sext i32 %n.tr to i64
  %_14 = add nsw i64 %_15, -1
  %_17 = icmp ult i64 %_14, %str2.1
  br i1 %_17, label %bb6, label %panic1

panic:                                            ; preds = %bb4
; call core::panicking::panic_bounds_check
  tail call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef %_9, i64 noundef %str1.1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_766b77be334a2d3179487f5c01d0710d) #24
  unreachable

bb6:                                              ; preds = %bb5
  %0 = getelementptr inbounds nuw i32, ptr %str1.0, i64 %_9
  %_8 = load i32, ptr %0, align 4, !range !1630, !noundef !37
  %1 = getelementptr inbounds nuw i32, ptr %str2.0, i64 %_14
  %_13 = load i32, ptr %1, align 4, !range !1630, !noundef !37
  %_7 = icmp eq i32 %_8, %_13
  %_18 = sext i1 %_7 to i32
  %_18.sink = add i32 %m.tr, %_18
  %_19 = add i32 %n.tr, -1
  br label %tailrecurse

panic1:                                           ; preds = %bb5
; call core::panicking::panic_bounds_check
  tail call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef %_14, i64 noundef %str2.1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_86343bd0f7d95a2b446d9fc428570def) #24
  unreachable

bb13:                                             ; preds = %bb2, %tailrecurse
  %_0.sroa.0.0 = phi i32 [ 1, %tailrecurse ], [ 0, %bb2 ]
  ret i32 %_0.sroa.0.0
}

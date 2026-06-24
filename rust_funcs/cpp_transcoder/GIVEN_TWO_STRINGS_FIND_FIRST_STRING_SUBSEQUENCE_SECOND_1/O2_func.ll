define noundef range(i32 0, 2) i32 @f_gold(ptr noalias noundef nonnull readonly align 4 captures(none) %str1.0, i64 noundef range(i64 0, 2305843009213693952) %str1.1, ptr noalias noundef nonnull readonly align 4 captures(none) %str2.0, i64 noundef range(i64 0, 2305843009213693952) %str2.1, i32 noundef %m, i32 noundef %n) unnamed_addr #1 {
start:
  %_197 = icmp sgt i32 %n, 0
  br i1 %_197, label %bb10.preheader, label %bb11

bb10.preheader:                                   ; preds = %start
  %wide.trip.count = zext nneg i32 %n to i64
  br label %bb10

bb11:                                             ; preds = %bb3, %start
  %j.sroa.0.0.lcssa = phi i64 [ 0, %start ], [ %spec.select, %bb3 ]
  %_18 = sext i32 %m to i64
  %_17 = icmp eq i64 %j.sroa.0.0.lcssa, %_18
  %. = zext i1 %_17 to i32
  ret i32 %.

bb10:                                             ; preds = %bb10.preheader, %bb3
  %indvars.iv = phi i64 [ 0, %bb10.preheader ], [ %indvars.iv.next, %bb3 ]
  %j.sroa.0.09 = phi i64 [ 0, %bb10.preheader ], [ %spec.select, %bb3 ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %_12 = icmp samesign ult i64 %j.sroa.0.09, %str1.1
  br i1 %_12, label %bb2, label %panic

bb2:                                              ; preds = %bb10
  %exitcond.not = icmp eq i64 %indvars.iv, %str2.1
  br i1 %exitcond.not, label %panic1, label %bb3

panic:                                            ; preds = %bb10
; call core::panicking::panic_bounds_check
  tail call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef %j.sroa.0.09, i64 noundef %str1.1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_df0d28f8e212e7c20118b4eb363d01dc) #18
  unreachable

bb3:                                              ; preds = %bb2
  %0 = getelementptr inbounds nuw i32, ptr %str1.0, i64 %j.sroa.0.09
  %_9 = load i32, ptr %0, align 4, !range !1031, !noundef !23
  %1 = getelementptr inbounds nuw i32, ptr %str2.0, i64 %indvars.iv
  %_13 = load i32, ptr %1, align 4, !range !1031, !noundef !23
  %_8 = icmp eq i32 %_9, %_13
  %2 = zext i1 %_8 to i64
  %spec.select = add nuw nsw i64 %j.sroa.0.09, %2
  %exitcond14.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond14.not, label %bb11, label %bb10

panic1:                                           ; preds = %bb2
; call core::panicking::panic_bounds_check
  tail call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef %str2.1, i64 noundef %str2.1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_3b5e12df789008d7c3513d00f6718d7c) #18
  unreachable
}

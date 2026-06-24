define noundef i32 @f_gold(ptr noalias noundef nonnull readonly align 1 captures(none) %n.0, i64 noundef %n.1) unnamed_addr #1 {
start:
  %_88.not = icmp eq i64 %n.1, 0
  br i1 %_88.not, label %panic, label %bb2

bb2:                                              ; preds = %start, %bb7
  %pos.sroa.0.010 = phi i32 [ %pos.sroa.0.1, %bb7 ], [ 0, %start ]
  %i.sroa.0.09 = phi i64 [ %1, %bb7 ], [ 0, %start ]
  %0 = getelementptr inbounds nuw i8, ptr %n.0, i64 %i.sroa.0.09
  %_4 = load i8, ptr %0, align 1, !noundef !23
  switch i8 %_4, label %bb7 [
    i8 0, label %bb8
    i8 52, label %bb6
    i8 55, label %bb5
  ]

panic:                                            ; preds = %bb7, %start
; call core::panicking::panic_bounds_check
  tail call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef %n.1, i64 noundef %n.1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_ed40595e4252f6d5b30da857b7601d0e) #18
  unreachable

bb8:                                              ; preds = %bb2
  ret i32 %pos.sroa.0.010

bb7:                                              ; preds = %bb2, %bb5, %bb6
  %pos.sroa.0.1 = phi i32 [ %2, %bb6 ], [ %3, %bb5 ], [ %pos.sroa.0.010, %bb2 ]
  %1 = add nuw i64 %i.sroa.0.09, 1
  %exitcond.not = icmp eq i64 %1, %n.1
  br i1 %exitcond.not, label %panic, label %bb2

bb6:                                              ; preds = %bb2
  %_11 = shl i32 %pos.sroa.0.010, 1
  %2 = or disjoint i32 %_11, 1
  br label %bb7

bb5:                                              ; preds = %bb2
  %_12 = shl i32 %pos.sroa.0.010, 1
  %3 = add i32 %_12, 2
  br label %bb7
}

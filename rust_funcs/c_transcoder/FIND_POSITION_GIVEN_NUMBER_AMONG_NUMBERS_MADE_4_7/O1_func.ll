define noundef i32 @f_gold(ptr noalias noundef nonnull readonly align 1 captures(none) %n.0, i64 noundef %n.1) unnamed_addr #3 {
start:
  %_88.not = icmp eq i64 %n.1, 0
  br i1 %_88.not, label %panic, label %bb3

bb3:                                              ; preds = %start, %bb9
  %pos.sroa.0.010 = phi i32 [ %pos.sroa.0.1, %bb9 ], [ 0, %start ]
  %i.sroa.0.09 = phi i64 [ %1, %bb9 ], [ 0, %start ]
  %0 = getelementptr inbounds nuw i8, ptr %n.0, i64 %i.sroa.0.09
  %_4 = load i8, ptr %0, align 1, !noundef !37
  switch i8 %_4, label %bb9 [
    i8 0, label %bb10
    i8 52, label %bb8
    i8 55, label %bb7
  ]

panic:                                            ; preds = %bb9, %start
  %i.sroa.0.0.lcssa = phi i64 [ 0, %start ], [ %n.1, %bb9 ]
; call core::panicking::panic_bounds_check
  tail call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef %i.sroa.0.0.lcssa, i64 noundef %n.1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_ed40595e4252f6d5b30da857b7601d0e) #24
  unreachable

bb10:                                             ; preds = %bb3
  ret i32 %pos.sroa.0.010

bb9:                                              ; preds = %bb3, %bb7, %bb8
  %pos.sroa.0.1 = phi i32 [ %2, %bb8 ], [ %3, %bb7 ], [ %pos.sroa.0.010, %bb3 ]
  %1 = add nuw i64 %i.sroa.0.09, 1
  %exitcond.not = icmp eq i64 %1, %n.1
  br i1 %exitcond.not, label %panic, label %bb3

bb8:                                              ; preds = %bb3
  %_13 = shl i32 %pos.sroa.0.010, 1
  %2 = or disjoint i32 %_13, 1
  br label %bb9

bb7:                                              ; preds = %bb3
  %_14 = shl i32 %pos.sroa.0.010, 1
  %3 = add i32 %_14, 2
  br label %bb9
}

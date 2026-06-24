define noundef range(i32 0, 2) i32 @f_gold(ptr noalias noundef readonly align 8 captures(none) dereferenceable(16) %s) unnamed_addr #3 {
start:
  %_10.0.i = load ptr, ptr %s, align 8, !alias.scope !1630, !nonnull !37, !noundef !37
  %0 = getelementptr inbounds nuw i8, ptr %s, i64 8
  %_10.1.i = load i64, ptr %0, align 8, !alias.scope !1630, !noundef !37
  %index.i = add i64 %_10.1.i, -1
  br label %bb2

bb2:                                              ; preds = %bb9, %start
  %i.sroa.0.0 = phi i64 [ 0, %start ], [ %3, %bb9 ]
  %exitcond.not = icmp eq i64 %i.sroa.0.0, %index.i
  br i1 %exitcond.not, label %panic, label %bb3

bb3:                                              ; preds = %bb2
  %1 = getelementptr inbounds nuw i8, ptr %_10.0.i, i64 %i.sroa.0.0
  %_5 = load i8, ptr %1, align 1, !noundef !37
  %2 = add i8 %_5, -58
  %or.cond = icmp ult i8 %2, -10
  br i1 %or.cond, label %bb12, label %bb9

panic:                                            ; preds = %bb2
; call core::panicking::panic_bounds_check
  tail call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef %index.i, i64 noundef %index.i, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_6179ab792d51628a3d091c01004af43b) #24
  unreachable

bb9:                                              ; preds = %bb3
  %3 = add i64 %i.sroa.0.0, 1
  %_13 = icmp eq i64 %3, %index.i
  br i1 %_13, label %bb12, label %bb2

bb12:                                             ; preds = %bb3, %bb9
  %_0.sroa.0.0 = phi i32 [ 1, %bb9 ], [ 0, %bb3 ]
  ret i32 %_0.sroa.0.0
}

define noundef range(i32 0, 2) i32 @f_gold(ptr noalias noundef readonly align 8 captures(none) dereferenceable(16) %s) unnamed_addr #1 {
start:
  %_18.0 = load ptr, ptr %s, align 8, !nonnull !23, !noundef !23
  %0 = getelementptr inbounds nuw i8, ptr %s, i64 8
  %_18.1 = load i64, ptr %0, align 8, !noundef !23
  %_13 = add i64 %_18.1, -1
  br label %bb1

bb1:                                              ; preds = %bb8, %start
  %i.sroa.0.0 = phi i64 [ 0, %start ], [ %3, %bb8 ]
  %exitcond.not = icmp eq i64 %i.sroa.0.0, %_13
  br i1 %exitcond.not, label %panic, label %bb2

bb2:                                              ; preds = %bb1
  %1 = getelementptr inbounds nuw i8, ptr %_18.0, i64 %i.sroa.0.0
  %_4 = load i8, ptr %1, align 1, !noundef !23
  %2 = add i8 %_4, -58
  %or.cond = icmp ult i8 %2, -10
  br i1 %or.cond, label %bb11, label %bb8

panic:                                            ; preds = %bb1
; call core::panicking::panic_bounds_check
  tail call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef %_13, i64 noundef %_13, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_6179ab792d51628a3d091c01004af43b) #18
  unreachable

bb8:                                              ; preds = %bb2
  %3 = add i64 %i.sroa.0.0, 1
  %_11 = icmp eq i64 %3, %_13
  br i1 %_11, label %bb11, label %bb1

bb11:                                             ; preds = %bb2, %bb8
  %_0.sroa.0.0 = phi i32 [ 1, %bb8 ], [ 0, %bb2 ]
  ret i32 %_0.sroa.0.0
}

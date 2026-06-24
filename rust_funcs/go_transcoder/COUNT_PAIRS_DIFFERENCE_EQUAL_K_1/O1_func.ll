define noundef range(i32 0, 4) i32 @f_gold(i64 %0, i32 noundef %n, i32 noundef %k) unnamed_addr #3 personality ptr @rust_eh_personality {
start:
  %_11 = sext i32 %n to i64
  %_99.not = icmp eq i32 %n, 0
  br i1 %_99.not, label %bb6, label %bb3.preheader

bb3.preheader:                                    ; preds = %start
  %1 = add nsw i64 %_11, -1
  %umin = tail call i64 @llvm.umin.i64(i64 %1, i64 2)
  %2 = trunc nuw nsw i64 %umin to i32
  %3 = add nuw nsw i32 %2, 1
  %.not = icmp ugt i64 %1, 1
  br label %bb3

bb6:                                              ; preds = %bb5, %start
  %count.sroa.0.0.lcssa = phi i32 [ 0, %start ], [ %3, %bb5 ]
  ret i32 %count.sroa.0.0.lcssa

bb3:                                              ; preds = %bb3.preheader, %bb5
  %r.sroa.0.012 = phi i64 [ %4, %bb5 ], [ 0, %bb3.preheader ]
  br i1 %.not, label %panic, label %bb5

panic:                                            ; preds = %bb3
; call core::panicking::panic_bounds_check
  tail call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef 2, i64 noundef 2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_190f9b25faca06df3893f684407c1a87) #24
  unreachable

bb5:                                              ; preds = %bb3
  %4 = add nuw nsw i64 %r.sroa.0.012, 1
  %exitcond.not = icmp eq i64 %4, %_11
  br i1 %exitcond.not, label %bb6, label %bb3
}

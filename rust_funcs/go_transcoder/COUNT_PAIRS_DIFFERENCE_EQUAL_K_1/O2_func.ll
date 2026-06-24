define noundef range(i32 0, 4) i32 @f_gold(i64 %0, i32 noundef %n, i32 noundef %k) unnamed_addr #1 personality ptr @rust_eh_personality {
start:
  %_89.not = icmp eq i32 %n, 0
  br i1 %_89.not, label %bb5, label %bb2.preheader

bb2.preheader:                                    ; preds = %start
  %_10 = sext i32 %n to i64
  %1 = add nsw i64 %_10, -1
  %umin = tail call i64 @llvm.umin.i64(i64 %1, i64 2)
  %2 = trunc nuw nsw i64 %umin to i32
  %3 = add nuw nsw i32 %2, 1
  %.not = icmp ugt i64 %1, 1
  br i1 %.not, label %panic, label %bb5

bb5:                                              ; preds = %bb2.preheader, %start
  %count.sroa.0.0.lcssa = phi i32 [ 0, %start ], [ %3, %bb2.preheader ]
  ret i32 %count.sroa.0.0.lcssa

panic:                                            ; preds = %bb2.preheader
; call core::panicking::panic_bounds_check
  tail call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef 2, i64 noundef 2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_190f9b25faca06df3893f684407c1a87) #18
  unreachable
}

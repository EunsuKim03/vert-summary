define noundef i32 @f_gold(i64 %0, i32 noundef %ar_size) unnamed_addr #1 {
start:
  %ar.sroa.2.0.extract.shift = lshr i64 %0, 32
  %_94 = icmp sgt i32 %ar_size, 0
  br i1 %_94, label %bb3.preheader, label %bb4

bb3.preheader:                                    ; preds = %start
  %1 = add nsw i32 %ar_size, -3
  %.not = icmp ult i32 %1, -2
  br i1 %.not, label %panic, label %bb3

bb4:                                              ; preds = %bb3, %start
  %res.sroa.0.0.lcssa = phi i32 [ 0, %start ], [ %.lcssa, %bb3 ]
  ret i32 %res.sroa.0.0.lcssa

bb3:                                              ; preds = %bb3.preheader
  %exitcond.not = icmp eq i32 %ar_size, 1
  %2 = xor i64 %ar.sroa.2.0.extract.shift, %0
  %.lcssa.in = select i1 %exitcond.not, i64 %0, i64 %2
  %.lcssa = trunc i64 %.lcssa.in to i32
  br label %bb4

panic:                                            ; preds = %bb3.preheader
; call core::panicking::panic_bounds_check
  tail call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef 2, i64 noundef 2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_da609693c7a99082dfc82f67190775b3) #18
  unreachable
}

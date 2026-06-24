define noundef i32 @f_gold(i64 %0, i32 noundef %n) unnamed_addr #1 {
start:
  %arr.sroa.2.0.extract.shift = lshr i64 %0, 32
  %_1710 = icmp sgt i32 %n, 0
  br i1 %_1710, label %bb4.preheader, label %bb5

bb4.preheader:                                    ; preds = %start
  %1 = add nsw i32 %n, -3
  %.not = icmp ult i32 %1, -2
  br i1 %.not, label %panic, label %bb4

bb5:                                              ; preds = %bb4, %start
  %ones.sroa.0.0.lcssa = phi i32 [ 0, %start ], [ %.lcssa, %bb4 ]
  ret i32 %ones.sroa.0.0.lcssa

bb4:                                              ; preds = %bb4.preheader
  %exitcond.not = icmp eq i32 %n, 1
  %2 = xor i64 %arr.sroa.2.0.extract.shift, %0
  %.lcssa.in = select i1 %exitcond.not, i64 %0, i64 %2
  %.lcssa = trunc i64 %.lcssa.in to i32
  br label %bb5

panic:                                            ; preds = %bb4.preheader
; call core::panicking::panic_bounds_check
  tail call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef 2, i64 noundef 2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_a91245f0ef9c77535e227d66556d7e6a) #18
  unreachable
}

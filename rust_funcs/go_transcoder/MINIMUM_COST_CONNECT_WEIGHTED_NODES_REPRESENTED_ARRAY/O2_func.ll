define noundef i32 @f_gold(i64 %0, i32 noundef %n) unnamed_addr #1 personality ptr @rust_eh_personality {
start:
  %a.sroa.0.0.extract.trunc = trunc i64 %0 to i32
  %a.sroa.2.0.extract.shift = lshr i64 %0, 32
  %a.sroa.2.0.extract.trunc = trunc nuw i64 %a.sroa.2.0.extract.shift to i32
  %_138 = icmp sgt i32 %n, 0
  br i1 %_138, label %bb5.preheader, label %bb6

bb5.preheader:                                    ; preds = %start
  %1 = add nsw i32 %n, -3
  %.not = icmp ult i32 %1, -2
  br i1 %.not, label %panic, label %bb5

bb6:                                              ; preds = %bb5, %start
  %sum.sroa.0.0.lcssa = phi i32 [ 0, %start ], [ %.lcssa, %bb5 ]
  %mn.sroa.0.0.lcssa = phi i32 [ 2147483647, %start ], [ %_0.sroa.0.0.i.lcssa, %bb5 ]
  %_12 = sub i32 %sum.sroa.0.0.lcssa, %mn.sroa.0.0.lcssa
  %_0 = mul i32 %_12, %mn.sroa.0.0.lcssa
  ret i32 %_0

bb5:                                              ; preds = %bb5.preheader
  %exitcond.not = icmp eq i32 %n, 1
  %_0.sroa.0.0.i.1 = tail call i32 @llvm.smin.i32(i32 %a.sroa.0.0.extract.trunc, i32 %a.sroa.2.0.extract.trunc)
  %2 = add i32 %a.sroa.2.0.extract.trunc, %a.sroa.0.0.extract.trunc
  %_0.sroa.0.0.i.lcssa = select i1 %exitcond.not, i32 %a.sroa.0.0.extract.trunc, i32 %_0.sroa.0.0.i.1
  %.lcssa = select i1 %exitcond.not, i32 %a.sroa.0.0.extract.trunc, i32 %2
  br label %bb6

panic:                                            ; preds = %bb5.preheader
; call core::panicking::panic_bounds_check
  tail call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef 2, i64 noundef 2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_0bf60e88cd4823338c7c8313769d0b32) #18
  unreachable
}

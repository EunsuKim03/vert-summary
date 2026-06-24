define noundef i32 @f_gold(i64 %0, i32 noundef %n) unnamed_addr #1 {
start:
  %arr.sroa.0.0.extract.trunc = trunc i64 %0 to i32
  %arr.sroa.2.0.extract.shift = lshr i64 %0, 32
  %arr.sroa.2.0.extract.trunc = trunc nuw i64 %arr.sroa.2.0.extract.shift to i32
  %_116 = icmp sgt i32 %n, 0
  br i1 %_116, label %bb7.preheader, label %bb8

bb7.preheader:                                    ; preds = %start
  %1 = add nsw i32 %n, -3
  %.not = icmp ult i32 %1, -2
  br i1 %.not, label %panic, label %bb7

bb8:                                              ; preds = %bb7, %start
  %res.sroa.0.0.lcssa = phi i32 [ 1, %start ], [ %res.sroa.0.1.lcssa, %bb7 ]
  ret i32 %res.sroa.0.0.lcssa

bb7:                                              ; preds = %bb7.preheader
  %_5.not = icmp sgt i32 %arr.sroa.0.0.extract.trunc, 1
  %2 = add i32 %arr.sroa.0.0.extract.trunc, 1
  %res.sroa.0.1 = select i1 %_5.not, i32 1, i32 %2
  %exitcond.not = icmp eq i32 %n, 1
  %_5.not.1 = icmp slt i32 %res.sroa.0.1, %arr.sroa.2.0.extract.trunc
  %3 = select i1 %_5.not.1, i32 0, i32 %arr.sroa.2.0.extract.trunc
  %res.sroa.0.1.1 = add i32 %3, %res.sroa.0.1
  %res.sroa.0.1.lcssa = select i1 %exitcond.not, i32 %res.sroa.0.1, i32 %res.sroa.0.1.1
  br label %bb8

panic:                                            ; preds = %bb7.preheader
; call core::panicking::panic_bounds_check
  tail call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef 2, i64 noundef 2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_ca7a5b4eb4eaaaf0818c865fb40e268c) #18
  unreachable
}

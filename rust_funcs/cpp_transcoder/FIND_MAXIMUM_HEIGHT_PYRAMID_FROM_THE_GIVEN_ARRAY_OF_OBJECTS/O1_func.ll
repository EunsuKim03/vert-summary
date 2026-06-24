define noundef i32 @f_gold(i64 %0, i32 noundef %n) unnamed_addr #3 personality ptr @rust_eh_personality {
start:
  %boxes.sroa.0.0.extract.trunc = trunc i64 %0 to i32
  %boxes.sroa.4.0.extract.shift = lshr i64 %0, 32
  %boxes.sroa.4.0.extract.trunc = trunc nuw i64 %boxes.sroa.4.0.extract.shift to i32
  %_0.i.i.i.i.i.i = icmp slt i32 %boxes.sroa.4.0.extract.trunc, %boxes.sroa.0.0.extract.trunc
  %_0.i.i.i11 = icmp sle i32 %n, 1
  %_0.i.i.i.not = icmp eq i32 %n, 2
  %or.cond = or i1 %_0.i.i.i11, %_0.i.i.i.not
  br i1 %or.cond, label %bb7, label %bb6.1

bb7:                                              ; preds = %start
  ret i32 1

bb6.1:                                            ; preds = %start
; call core::panicking::panic_bounds_check
  tail call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef 2, i64 noundef 2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_9714be769f0c5a2c9b41c7db778fec35) #24
  unreachable
}

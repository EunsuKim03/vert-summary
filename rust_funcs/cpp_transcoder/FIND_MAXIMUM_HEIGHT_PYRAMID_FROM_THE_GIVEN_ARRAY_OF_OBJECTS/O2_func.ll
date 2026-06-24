define noundef i32 @f_gold(i64 %0, i32 noundef %n) unnamed_addr #1 personality ptr @rust_eh_personality {
start:
  %or.cond = icmp slt i32 %n, 3
  br i1 %or.cond, label %bb10, label %panic

bb10:                                             ; preds = %start
  ret i32 1

panic:                                            ; preds = %start
; call core::panicking::panic_bounds_check
  tail call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef 2, i64 noundef 2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_9714be769f0c5a2c9b41c7db778fec35) #18
  unreachable
}

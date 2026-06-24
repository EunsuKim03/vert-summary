define noundef i32 @f_gold(i64 %0, i32 noundef %n) unnamed_addr #1 {
start:
  %1 = add i32 %n, -3
  %_2537 = icmp ult i32 %1, -2
  br i1 %_2537, label %bb14.lr.ph, label %bb15

bb14.lr.ph:                                       ; preds = %start
  %_2932 = icmp ugt i32 %n, 2
  br i1 %_2932, label %panic8, label %panic

bb15:                                             ; preds = %start
  ret i32 0

panic:                                            ; preds = %bb14.lr.ph
; call core::panicking::panic_bounds_check
  tail call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef 2, i64 noundef 2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_44b9b1a05fa808e858aebfe18aa3b854) #18
  unreachable

panic8:                                           ; preds = %bb14.lr.ph
; call core::panicking::panic_bounds_check
  tail call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef 2, i64 noundef 2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_d3c72d71668fe3510765096812342e6a) #18
  unreachable
}

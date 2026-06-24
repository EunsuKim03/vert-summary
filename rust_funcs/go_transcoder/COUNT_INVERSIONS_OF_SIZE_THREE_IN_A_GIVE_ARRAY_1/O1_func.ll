define noundef i32 @f_gold(i64 %0, i32 noundef %n) unnamed_addr #3 {
start:
  %_6 = add i32 %n, -1
  %_0.i.i.i59 = icmp ugt i32 %_6, 1
  br i1 %_0.i.i.i59, label %bb5, label %bb6

bb5:                                              ; preds = %start
  %_0.i.i.i2147 = icmp ugt i32 %n, 2
  br i1 %_0.i.i.i2147, label %panic6, label %bb24

bb6:                                              ; preds = %bb24, %start
  ret i32 0

panic:                                            ; preds = %bb24
; call core::panicking::panic_bounds_check
  tail call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef 2, i64 noundef 2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_44b9b1a05fa808e858aebfe18aa3b854) #24
  unreachable

bb24:                                             ; preds = %bb5
  %_0.i.i.i.not = icmp eq i32 %_6, 2
  br i1 %_0.i.i.i.not, label %bb6, label %panic

panic6:                                           ; preds = %bb5
; call core::panicking::panic_bounds_check
  tail call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef 2, i64 noundef 2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_d3c72d71668fe3510765096812342e6a) #24
  unreachable
}

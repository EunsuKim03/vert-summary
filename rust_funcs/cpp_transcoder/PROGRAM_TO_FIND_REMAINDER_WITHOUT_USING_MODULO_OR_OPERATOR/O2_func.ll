define noundef range(i32 -2147483647, -2147483648) i32 @f_gold(i32 noundef %num, i32 noundef %divisor) unnamed_addr #1 {
start:
  %_5 = icmp eq i32 %divisor, 0
  br i1 %_5, label %panic, label %bb1

bb1:                                              ; preds = %start
  %_6 = icmp eq i32 %divisor, -1
  %_7 = icmp eq i32 %num, -2147483648
  %_8 = and i1 %_7, %_6
  br i1 %_8, label %panic1, label %bb2

panic:                                            ; preds = %start
; call core::panicking::panic_const::panic_const_div_by_zero
  tail call void @_ZN4core9panicking11panic_const23panic_const_div_by_zero17h9a45e37423e1c559E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_2dbcb7ae818f020cf6b666f96f243ef8) #17
  unreachable

bb2:                                              ; preds = %bb1
  %0 = srem i32 %num, %divisor
  ret i32 %0

panic1:                                           ; preds = %bb1
; call core::panicking::panic_const::panic_const_div_overflow
  tail call void @_ZN4core9panicking11panic_const24panic_const_div_overflow17hde5ac990ac871ee2E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_2dbcb7ae818f020cf6b666f96f243ef8) #17
  unreachable
}

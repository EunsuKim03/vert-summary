define noundef i32 @f_gold(i32 noundef %N, i32 noundef %K) unnamed_addr #3 {
start:
  %_4 = icmp eq i32 %K, 0
  br i1 %_4, label %panic, label %bb1

bb1:                                              ; preds = %start
  %_5 = icmp eq i32 %K, -1
  %_6 = icmp eq i32 %N, -2147483648
  %_7 = and i1 %_6, %_5
  br i1 %_7, label %panic1, label %bb4

panic:                                            ; preds = %start
; call core::panicking::panic_const::panic_const_div_by_zero
  tail call void @_ZN4core9panicking11panic_const23panic_const_div_by_zero17h9a45e37423e1c559E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_f000e70548292003d3eb1b3819b3206c) #23
  unreachable

panic1:                                           ; preds = %bb1
; call core::panicking::panic_const::panic_const_div_overflow
  tail call void @_ZN4core9panicking11panic_const24panic_const_div_overflow17hde5ac990ac871ee2E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_f000e70548292003d3eb1b3819b3206c) #23
  unreachable

bb4:                                              ; preds = %bb1
  %y = sdiv i32 %N, %K
  %x = srem i32 %N, %K
  %_12 = add i32 %K, -1
  %_11 = mul i32 %_12, %K
  %_10 = sdiv i32 %_11, 2
  %_9 = mul i32 %y, %_10
  %_15 = add i32 %x, 1
  %_14 = mul i32 %_15, %x
  %_13 = sdiv i32 %_14, 2
  %0 = add i32 %_13, %_9
  ret i32 %0
}

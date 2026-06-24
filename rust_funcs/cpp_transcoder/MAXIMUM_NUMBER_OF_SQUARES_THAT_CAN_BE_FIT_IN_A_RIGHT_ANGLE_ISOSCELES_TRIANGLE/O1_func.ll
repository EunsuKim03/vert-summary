define noundef range(i32 -1073741824, 1073741824) i32 @f_gold(i32 noundef %b, i32 noundef %m) unnamed_addr #3 {
start:
  %_6 = icmp eq i32 %m, 0
  br i1 %_6, label %panic, label %bb1

bb1:                                              ; preds = %start
  %_7 = icmp eq i32 %m, -1
  %_8 = icmp eq i32 %b, -2147483648
  %_9 = and i1 %_8, %_7
  br i1 %_9, label %panic1, label %bb4

panic:                                            ; preds = %start
; call core::panicking::panic_const::panic_const_div_by_zero
  tail call void @_ZN4core9panicking11panic_const23panic_const_div_by_zero17h9a45e37423e1c559E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_213cef1eef0fd726aacac1b67c3d0e73) #23
  unreachable

panic1:                                           ; preds = %bb1
; call core::panicking::panic_const::panic_const_div_overflow
  tail call void @_ZN4core9panicking11panic_const24panic_const_div_overflow17hde5ac990ac871ee2E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_213cef1eef0fd726aacac1b67c3d0e73) #23
  unreachable

bb4:                                              ; preds = %bb1
  %_5 = sdiv i32 %b, %m
  %_4 = add i32 %_5, -1
  %_3 = mul i32 %_4, %_5
  %_0 = sdiv i32 %_3, 2
  ret i32 %_0
}

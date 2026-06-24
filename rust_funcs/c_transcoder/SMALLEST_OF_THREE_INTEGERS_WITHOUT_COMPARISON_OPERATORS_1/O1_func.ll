define noundef i32 @f_gold(i32 noundef %x, i32 noundef %y, i32 noundef %z) unnamed_addr #3 {
start:
  %_6 = icmp eq i32 %x, 0
  br i1 %_6, label %panic, label %bb1

bb1:                                              ; preds = %start
  %_7 = icmp eq i32 %x, -1
  %_8 = icmp eq i32 %y, -2147483648
  %_9 = and i1 %_7, %_8
  br i1 %_9, label %panic1, label %bb2

panic:                                            ; preds = %start
; call core::panicking::panic_const::panic_const_div_by_zero
  tail call void @_ZN4core9panicking11panic_const23panic_const_div_by_zero17h9a45e37423e1c559E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_91d40678e2cb191bc05ce3a5450d1aca) #23
  unreachable

bb2:                                              ; preds = %bb1
  %_5 = sdiv i32 %y, %x
  %_4 = icmp eq i32 %_5, 0
  %_12 = icmp eq i32 %z, 0
  br i1 %_4, label %bb3, label %bb9

panic1:                                           ; preds = %bb1
; call core::panicking::panic_const::panic_const_div_overflow
  tail call void @_ZN4core9panicking11panic_const24panic_const_div_overflow17hde5ac990ac871ee2E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_91d40678e2cb191bc05ce3a5450d1aca) #23
  unreachable

bb9:                                              ; preds = %bb2
  br i1 %_12, label %panic2, label %bb10

bb3:                                              ; preds = %bb2
  br i1 %_12, label %panic4, label %bb4

bb10:                                             ; preds = %bb9
  %_18 = icmp eq i32 %z, -1
  %_19 = icmp eq i32 %x, -2147483648
  %_20 = and i1 %_19, %_18
  br i1 %_20, label %panic3, label %bb15

panic2:                                           ; preds = %bb9
; call core::panicking::panic_const::panic_const_div_by_zero
  tail call void @_ZN4core9panicking11panic_const23panic_const_div_by_zero17h9a45e37423e1c559E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_d0691d533041e4592b52aa35d9990c84) #23
  unreachable

panic3:                                           ; preds = %bb10
; call core::panicking::panic_const::panic_const_div_overflow
  tail call void @_ZN4core9panicking11panic_const24panic_const_div_overflow17hde5ac990ac871ee2E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_d0691d533041e4592b52aa35d9990c84) #23
  unreachable

bb15:                                             ; preds = %bb10, %bb4
  %y.sink6 = phi i32 [ %y, %bb4 ], [ %x, %bb10 ]
  %_11 = sdiv i32 %y.sink6, %z
  %_10 = icmp eq i32 %_11, 0
  %y.z = select i1 %_10, i32 %y.sink6, i32 %z
  ret i32 %y.z

bb4:                                              ; preds = %bb3
  %_13 = icmp eq i32 %z, -1
  %_14 = and i1 %_8, %_13
  br i1 %_14, label %panic5, label %bb15

panic4:                                           ; preds = %bb3
; call core::panicking::panic_const::panic_const_div_by_zero
  tail call void @_ZN4core9panicking11panic_const23panic_const_div_by_zero17h9a45e37423e1c559E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_5e4f0c3d819e321b0de36ead9a88c88e) #23
  unreachable

panic5:                                           ; preds = %bb4
; call core::panicking::panic_const::panic_const_div_overflow
  tail call void @_ZN4core9panicking11panic_const24panic_const_div_overflow17hde5ac990ac871ee2E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_5e4f0c3d819e321b0de36ead9a88c88e) #23
  unreachable
}

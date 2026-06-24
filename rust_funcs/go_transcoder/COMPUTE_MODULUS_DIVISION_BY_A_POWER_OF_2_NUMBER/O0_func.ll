define i32 @f_gold(i32 %n, i32 %d) unnamed_addr #3 {
start:
  %_4.0 = sub i32 %d, 1
  %_4.1 = icmp ult i32 %d, 1
  br i1 %_4.1, label %panic, label %bb1

bb1:                                              ; preds = %start
  %_0 = and i32 %n, %_4.0
  ret i32 %_0

panic:                                            ; preds = %start
; call core::panicking::panic_const::panic_const_sub_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_sub_overflow17h134cc1a7f93654deE(ptr align 8 @alloc_f93ac5b152f13f22604191286d4a1fc4) #22
  unreachable
}

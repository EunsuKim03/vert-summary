define i32 @f_gold(i32 %num, i32 %divisor) unnamed_addr #3 {
start:
  %_5 = icmp eq i32 %divisor, 0
  br i1 %_5, label %panic, label %bb1

bb1:                                              ; preds = %start
  %_6 = icmp eq i32 %divisor, -1
  %_7 = icmp eq i32 %num, -2147483648
  %_8 = and i1 %_6, %_7
  br i1 %_8, label %panic1, label %bb2

panic:                                            ; preds = %start
; call core::panicking::panic_const::panic_const_div_by_zero
  call void @_ZN4core9panicking11panic_const23panic_const_div_by_zero17h9a45e37423e1c559E(ptr align 8 @alloc_2dbcb7ae818f020cf6b666f96f243ef8) #22
  unreachable

bb2:                                              ; preds = %bb1
  %_4 = sdiv i32 %num, %divisor
  %0 = call { i32, i1 } @llvm.smul.with.overflow.i32(i32 %divisor, i32 %_4)
  %_9.0 = extractvalue { i32, i1 } %0, 0
  %_9.1 = extractvalue { i32, i1 } %0, 1
  br i1 %_9.1, label %panic2, label %bb3

panic1:                                           ; preds = %bb1
; call core::panicking::panic_const::panic_const_div_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_div_overflow17hde5ac990ac871ee2E(ptr align 8 @alloc_2dbcb7ae818f020cf6b666f96f243ef8) #22
  unreachable

bb3:                                              ; preds = %bb2
  %1 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %num, i32 %_9.0)
  %_10.0 = extractvalue { i32, i1 } %1, 0
  %_10.1 = extractvalue { i32, i1 } %1, 1
  br i1 %_10.1, label %panic3, label %bb4

panic2:                                           ; preds = %bb2
; call core::panicking::panic_const::panic_const_mul_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_mul_overflow17h554ac164c12099f8E(ptr align 8 @alloc_be814565feb09ccae82f92640f861bd0) #22
  unreachable

bb4:                                              ; preds = %bb3
  ret i32 %_10.0

panic3:                                           ; preds = %bb3
; call core::panicking::panic_const::panic_const_sub_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_sub_overflow17h134cc1a7f93654deE(ptr align 8 @alloc_7c71ff6d17bee7bbf855df469198ef42) #22
  unreachable
}

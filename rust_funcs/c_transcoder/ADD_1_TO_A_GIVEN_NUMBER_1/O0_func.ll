define i32 @f_gold(i32 %x) unnamed_addr #3 {
start:
  %_2 = xor i32 %x, -1
  %_3 = icmp eq i32 %_2, -2147483648
  br i1 %_3, label %panic, label %bb1

bb1:                                              ; preds = %start
  %_0 = sub i32 0, %_2
  ret i32 %_0

panic:                                            ; preds = %start
; call core::panicking::panic_const::panic_const_neg_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_neg_overflow17hf7841d7385a517f1E(ptr align 8 @alloc_b0805f377475c946c45c7a7d6893a5f4) #22
  unreachable
}

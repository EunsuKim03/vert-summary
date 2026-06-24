define i32 @f_gold(i32 %x) unnamed_addr #3 {
start:
  %_2 = icmp eq i32 %x, -2147483648
  br i1 %_2, label %panic, label %bb1

bb1:                                              ; preds = %start
  %_0 = sub i32 0, %x
  ret i32 %_0

panic:                                            ; preds = %start
; call core::panicking::panic_const::panic_const_neg_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_neg_overflow17hf7841d7385a517f1E(ptr align 8 @alloc_4e02bba344cb3e38bfda89fdebf92484) #22
  unreachable
}

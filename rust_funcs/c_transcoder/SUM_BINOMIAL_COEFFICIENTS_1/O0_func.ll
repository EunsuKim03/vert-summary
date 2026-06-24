define i32 @f_gold(i32 %n) unnamed_addr #3 {
start:
  %_3 = icmp ult i32 %n, 32
  br i1 %_3, label %bb1, label %panic

bb1:                                              ; preds = %start
  %0 = and i32 %n, 31
  %_0 = shl i32 1, %0
  ret i32 %_0

panic:                                            ; preds = %start
; call core::panicking::panic_const::panic_const_shl_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_shl_overflow17hd71d3b3e3d52ab41E(ptr align 8 @alloc_6baa57a4b45f9b524d4ac68d65a0648b) #22
  unreachable
}

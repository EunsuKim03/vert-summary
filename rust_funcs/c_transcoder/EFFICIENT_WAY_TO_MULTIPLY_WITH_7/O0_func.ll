define i32 @f_gold(i32 %n) unnamed_addr #3 {
start:
  %_2 = shl i32 %n, 3
  %0 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %_2, i32 %n)
  %_5.0 = extractvalue { i32, i1 } %0, 0
  %_5.1 = extractvalue { i32, i1 } %0, 1
  br i1 %_5.1, label %panic, label %bb2

bb2:                                              ; preds = %start
  ret i32 %_5.0

panic:                                            ; preds = %start
; call core::panicking::panic_const::panic_const_sub_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_sub_overflow17h134cc1a7f93654deE(ptr align 8 @alloc_25b2a5a3425562c36df6305eb7d232c5) #22
  unreachable
}

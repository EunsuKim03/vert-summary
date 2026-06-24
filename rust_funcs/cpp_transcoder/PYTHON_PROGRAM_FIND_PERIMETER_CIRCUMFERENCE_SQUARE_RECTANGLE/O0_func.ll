define i32 @f_gold(i32 %a) unnamed_addr #3 {
start:
  %0 = call { i32, i1 } @llvm.smul.with.overflow.i32(i32 4, i32 %a)
  %_2.0 = extractvalue { i32, i1 } %0, 0
  %_2.1 = extractvalue { i32, i1 } %0, 1
  br i1 %_2.1, label %panic, label %bb1

bb1:                                              ; preds = %start
  ret i32 %_2.0

panic:                                            ; preds = %start
; call core::panicking::panic_const::panic_const_mul_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_mul_overflow17h554ac164c12099f8E(ptr align 8 @alloc_354bcf38976297ac42eaeff115cd05df) #22
  unreachable
}

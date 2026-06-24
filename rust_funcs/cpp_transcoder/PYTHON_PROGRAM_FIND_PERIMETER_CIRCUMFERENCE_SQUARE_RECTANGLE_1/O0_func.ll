define i32 @f_gold(i32 %l, i32 %w) unnamed_addr #3 {
start:
  %0 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %l, i32 %w)
  %_4.0 = extractvalue { i32, i1 } %0, 0
  %_4.1 = extractvalue { i32, i1 } %0, 1
  br i1 %_4.1, label %panic, label %bb1

bb1:                                              ; preds = %start
  %1 = call { i32, i1 } @llvm.smul.with.overflow.i32(i32 2, i32 %_4.0)
  %_5.0 = extractvalue { i32, i1 } %1, 0
  %_5.1 = extractvalue { i32, i1 } %1, 1
  br i1 %_5.1, label %panic1, label %bb2

panic:                                            ; preds = %start
; call core::panicking::panic_const::panic_const_add_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_b202d48083160358ae464f7c5c6fb1b4) #22
  unreachable

bb2:                                              ; preds = %bb1
  ret i32 %_5.0

panic1:                                           ; preds = %bb1
; call core::panicking::panic_const::panic_const_mul_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_mul_overflow17h554ac164c12099f8E(ptr align 8 @alloc_51578746c4239bc3111f9fcd82bea60b) #22
  unreachable
}

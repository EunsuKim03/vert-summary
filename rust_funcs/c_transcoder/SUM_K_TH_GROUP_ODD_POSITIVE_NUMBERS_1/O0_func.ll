define i32 @f_gold(i32 %k) unnamed_addr #3 {
start:
  %0 = call { i32, i1 } @llvm.smul.with.overflow.i32(i32 %k, i32 %k)
  %_3.0 = extractvalue { i32, i1 } %0, 0
  %_3.1 = extractvalue { i32, i1 } %0, 1
  br i1 %_3.1, label %panic, label %bb1

bb1:                                              ; preds = %start
  %1 = call { i32, i1 } @llvm.smul.with.overflow.i32(i32 %_3.0, i32 %k)
  %_4.0 = extractvalue { i32, i1 } %1, 0
  %_4.1 = extractvalue { i32, i1 } %1, 1
  br i1 %_4.1, label %panic1, label %bb2

panic:                                            ; preds = %start
; call core::panicking::panic_const::panic_const_mul_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_mul_overflow17h554ac164c12099f8E(ptr align 8 @alloc_2dde23e5e4299142302b93edbd018be6) #22
  unreachable

bb2:                                              ; preds = %bb1
  ret i32 %_4.0

panic1:                                           ; preds = %bb1
; call core::panicking::panic_const::panic_const_mul_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_mul_overflow17h554ac164c12099f8E(ptr align 8 @alloc_2dde23e5e4299142302b93edbd018be6) #22
  unreachable
}

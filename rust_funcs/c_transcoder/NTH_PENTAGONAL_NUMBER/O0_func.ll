define i32 @f_gold(i32 %n) unnamed_addr #3 {
start:
  %0 = call { i32, i1 } @llvm.smul.with.overflow.i32(i32 3, i32 %n)
  %_4.0 = extractvalue { i32, i1 } %0, 0
  %_4.1 = extractvalue { i32, i1 } %0, 1
  br i1 %_4.1, label %panic, label %bb1

bb1:                                              ; preds = %start
  %1 = call { i32, i1 } @llvm.smul.with.overflow.i32(i32 %_4.0, i32 %n)
  %_5.0 = extractvalue { i32, i1 } %1, 0
  %_5.1 = extractvalue { i32, i1 } %1, 1
  br i1 %_5.1, label %panic1, label %bb2

panic:                                            ; preds = %start
; call core::panicking::panic_const::panic_const_mul_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_mul_overflow17h554ac164c12099f8E(ptr align 8 @alloc_20f1f5836042f440a89f7cfb24d30f69) #22
  unreachable

bb2:                                              ; preds = %bb1
  %_9 = icmp eq i32 %n, -2147483648
  %_10 = and i1 false, %_9
  br i1 %_10, label %panic2, label %bb4

panic1:                                           ; preds = %bb1
; call core::panicking::panic_const::panic_const_mul_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_mul_overflow17h554ac164c12099f8E(ptr align 8 @alloc_20f1f5836042f440a89f7cfb24d30f69) #22
  unreachable

bb4:                                              ; preds = %bb2
  %_6 = sdiv i32 %n, 2
  %2 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %_5.0, i32 %_6)
  %_11.0 = extractvalue { i32, i1 } %2, 0
  %_11.1 = extractvalue { i32, i1 } %2, 1
  br i1 %_11.1, label %panic3, label %bb5

panic2:                                           ; preds = %bb2
; call core::panicking::panic_const::panic_const_div_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_div_overflow17hde5ac990ac871ee2E(ptr align 8 @alloc_830585183c3e64ae8a467c7fb5e892d5) #22
  unreachable

bb5:                                              ; preds = %bb4
  ret i32 %_11.0

panic3:                                           ; preds = %bb4
; call core::panicking::panic_const::panic_const_sub_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_sub_overflow17h134cc1a7f93654deE(ptr align 8 @alloc_20f1f5836042f440a89f7cfb24d30f69) #22
  unreachable
}

define i32 @f_gold(i32 %n) unnamed_addr #3 {
start:
  %0 = call { i32, i1 } @llvm.smul.with.overflow.i32(i32 2, i32 %n)
  %_4.0 = extractvalue { i32, i1 } %0, 0
  %_4.1 = extractvalue { i32, i1 } %0, 1
  br i1 %_4.1, label %panic, label %bb1

bb1:                                              ; preds = %start
  %1 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %_4.0, i32 1)
  %_5.0 = extractvalue { i32, i1 } %1, 0
  %_5.1 = extractvalue { i32, i1 } %1, 1
  br i1 %_5.1, label %panic1, label %bb2

panic:                                            ; preds = %start
; call core::panicking::panic_const::panic_const_mul_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_mul_overflow17h554ac164c12099f8E(ptr align 8 @alloc_0468c1329839237964a3a9871f15097e) #22
  unreachable

bb2:                                              ; preds = %bb1
  %2 = call { i32, i1 } @llvm.smul.with.overflow.i32(i32 %n, i32 %_5.0)
  %_6.0 = extractvalue { i32, i1 } %2, 0
  %_6.1 = extractvalue { i32, i1 } %2, 1
  br i1 %_6.1, label %panic2, label %bb3

panic1:                                           ; preds = %bb1
; call core::panicking::panic_const::panic_const_sub_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_sub_overflow17h134cc1a7f93654deE(ptr align 8 @alloc_e8704de5fe94480f1a9ade93ed90e3ca) #22
  unreachable

bb3:                                              ; preds = %bb2
  ret i32 %_6.0

panic2:                                           ; preds = %bb2
; call core::panicking::panic_const::panic_const_mul_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_mul_overflow17h554ac164c12099f8E(ptr align 8 @alloc_fe97f9306a24e6980c7671cd25f85794) #22
  unreachable
}

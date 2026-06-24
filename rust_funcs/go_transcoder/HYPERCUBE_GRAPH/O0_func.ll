define i32 @f_gold(i32 %n) unnamed_addr #3 {
start:
  %_0 = alloca [4 x i8], align 4
  %_2 = icmp eq i32 %n, 1
  br i1 %_2, label %bb1, label %bb2

bb2:                                              ; preds = %start
  %0 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %n, i32 1)
  %_5.0 = extractvalue { i32, i1 } %0, 0
  %_5.1 = extractvalue { i32, i1 } %0, 1
  br i1 %_5.1, label %panic, label %bb3

bb1:                                              ; preds = %start
  store i32 2, ptr %_0, align 4
  br label %bb6

bb3:                                              ; preds = %bb2
  %_3 = call i32 @f_gold(i32 %_5.0)
  %1 = call { i32, i1 } @llvm.smul.with.overflow.i32(i32 2, i32 %_3)
  %_6.0 = extractvalue { i32, i1 } %1, 0
  %_6.1 = extractvalue { i32, i1 } %1, 1
  br i1 %_6.1, label %panic1, label %bb5

panic:                                            ; preds = %bb2
; call core::panicking::panic_const::panic_const_sub_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_sub_overflow17h134cc1a7f93654deE(ptr align 8 @alloc_55492b0f9baa245c292a809e8fc67137) #22
  unreachable

bb5:                                              ; preds = %bb3
  store i32 %_6.0, ptr %_0, align 4
  br label %bb6

panic1:                                           ; preds = %bb3
; call core::panicking::panic_const::panic_const_mul_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_mul_overflow17h554ac164c12099f8E(ptr align 8 @alloc_9032058c156963d37144e6eb6031af54) #22
  unreachable

bb6:                                              ; preds = %bb1, %bb5
  %2 = load i32, ptr %_0, align 4
  ret i32 %2
}

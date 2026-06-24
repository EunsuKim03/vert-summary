define i32 @f_gold(i32 %n) unnamed_addr #3 {
start:
  %_0 = alloca [4 x i8], align 4
  switch i32 %n, label %bb1 [
    i32 1, label %bb2
    i32 0, label %bb2
  ]

bb1:                                              ; preds = %start
  %0 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %n, i32 1)
  %_4.0 = extractvalue { i32, i1 } %0, 0
  %_4.1 = extractvalue { i32, i1 } %0, 1
  br i1 %_4.1, label %panic, label %bb3

bb2:                                              ; preds = %start, %start
  store i32 1, ptr %_0, align 4
  br label %bb6

bb6:                                              ; preds = %bb5, %bb2
  %1 = load i32, ptr %_0, align 4
  ret i32 %1

bb3:                                              ; preds = %bb1
  %_2 = call i32 @f_gold(i32 %_4.0)
  %2 = call { i32, i1 } @llvm.smul.with.overflow.i32(i32 %n, i32 %_2)
  %_5.0 = extractvalue { i32, i1 } %2, 0
  %_5.1 = extractvalue { i32, i1 } %2, 1
  br i1 %_5.1, label %panic1, label %bb5

panic:                                            ; preds = %bb1
; call core::panicking::panic_const::panic_const_sub_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_sub_overflow17h134cc1a7f93654deE(ptr align 8 @alloc_313e18852b4d15eaeb8e866d0c5bd1cb) #22
  unreachable

bb5:                                              ; preds = %bb3
  store i32 %_5.0, ptr %_0, align 4
  br label %bb6

panic1:                                           ; preds = %bb3
; call core::panicking::panic_const::panic_const_mul_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_mul_overflow17h554ac164c12099f8E(ptr align 8 @alloc_eb9d86d2fe25e8587fb80326e53e28c7) #22
  unreachable
}

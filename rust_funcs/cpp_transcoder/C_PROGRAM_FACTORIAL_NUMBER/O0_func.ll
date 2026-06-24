define i32 @f_gold(i32 %n) unnamed_addr #3 {
start:
  %_0 = alloca [4 x i8], align 4
  %_2 = icmp eq i32 %n, 0
  br i1 %_2, label %bb1, label %bb2

bb2:                                              ; preds = %start
  %_5.0 = sub i32 %n, 1
  %_5.1 = icmp ult i32 %n, 1
  br i1 %_5.1, label %panic, label %bb3

bb1:                                              ; preds = %start
  store i32 1, ptr %_0, align 4
  br label %bb6

bb3:                                              ; preds = %bb2
  %_3 = call i32 @f_gold(i32 %_5.0)
  %0 = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %n, i32 %_3)
  %_6.0 = extractvalue { i32, i1 } %0, 0
  %_6.1 = extractvalue { i32, i1 } %0, 1
  br i1 %_6.1, label %panic1, label %bb5

panic:                                            ; preds = %bb2
; call core::panicking::panic_const::panic_const_sub_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_sub_overflow17h134cc1a7f93654deE(ptr align 8 @alloc_5f55d410fddda9a4c5301acea0b3bbda) #22
  unreachable

bb5:                                              ; preds = %bb3
  store i32 %_6.0, ptr %_0, align 4
  br label %bb6

panic1:                                           ; preds = %bb3
; call core::panicking::panic_const::panic_const_mul_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_mul_overflow17h554ac164c12099f8E(ptr align 8 @alloc_fb5b412e0964736cc8a71d00903756f2) #22
  unreachable

bb6:                                              ; preds = %bb1, %bb5
  %1 = load i32, ptr %_0, align 4
  ret i32 %1
}

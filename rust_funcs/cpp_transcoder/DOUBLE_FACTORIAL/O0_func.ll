define i32 @f_gold(i32 %n) unnamed_addr #3 {
start:
  %_0 = alloca [4 x i8], align 4
  %_2 = icmp eq i32 %n, 0
  br i1 %_2, label %bb2, label %bb1

bb1:                                              ; preds = %start
  %_3 = icmp eq i32 %n, 1
  br i1 %_3, label %bb2, label %bb3

bb2:                                              ; preds = %bb1, %start
  store i32 1, ptr %_0, align 4
  br label %bb7

bb3:                                              ; preds = %bb1
  %_6.0 = sub i32 %n, 2
  %_6.1 = icmp ult i32 %n, 2
  br i1 %_6.1, label %panic, label %bb4

bb4:                                              ; preds = %bb3
  %_4 = call i32 @f_gold(i32 %_6.0)
  %0 = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %n, i32 %_4)
  %_7.0 = extractvalue { i32, i1 } %0, 0
  %_7.1 = extractvalue { i32, i1 } %0, 1
  br i1 %_7.1, label %panic1, label %bb6

panic:                                            ; preds = %bb3
; call core::panicking::panic_const::panic_const_sub_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_sub_overflow17h134cc1a7f93654deE(ptr align 8 @alloc_f6dcbdc82a4570533576d0598966b363) #22
  unreachable

bb6:                                              ; preds = %bb4
  store i32 %_7.0, ptr %_0, align 4
  br label %bb7

panic1:                                           ; preds = %bb4
; call core::panicking::panic_const::panic_const_mul_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_mul_overflow17h554ac164c12099f8E(ptr align 8 @alloc_eef36e9082d733272c8f72efce59aac8) #22
  unreachable

bb7:                                              ; preds = %bb2, %bb6
  %1 = load i32, ptr %_0, align 4
  ret i32 %1
}

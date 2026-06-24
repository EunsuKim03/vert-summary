define i32 @f_gold(i32 %a, i32 %b) unnamed_addr #3 {
start:
  %_0 = alloca [4 x i8], align 4
  %_3 = icmp eq i32 %a, 0
  br i1 %_3, label %bb2, label %bb1

bb1:                                              ; preds = %start
  %_4 = icmp eq i32 %b, 0
  br i1 %_4, label %bb2, label %bb3

bb2:                                              ; preds = %bb1, %start
  store i32 0, ptr %_0, align 4
  br label %bb9

bb3:                                              ; preds = %bb1
  %0 = call { i32, i1 } @llvm.smul.with.overflow.i32(i32 %a, i32 %b)
  %_6.0 = extractvalue { i32, i1 } %0, 0
  %_6.1 = extractvalue { i32, i1 } %0, 1
  br i1 %_6.1, label %panic, label %bb4

bb4:                                              ; preds = %bb3
  %_9 = icmp eq i32 %b, 0
  br i1 %_9, label %panic1, label %bb5

panic:                                            ; preds = %bb3
; call core::panicking::panic_const::panic_const_mul_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_mul_overflow17h554ac164c12099f8E(ptr align 8 @alloc_10f5fc5378a8e8c501fbe7d4319b77e8) #22
  unreachable

bb5:                                              ; preds = %bb4
  %_10 = icmp eq i32 %b, -1
  %_11 = icmp eq i32 %_6.0, -2147483648
  %_12 = and i1 %_10, %_11
  br i1 %_12, label %panic2, label %bb6

panic1:                                           ; preds = %bb4
; call core::panicking::panic_const::panic_const_div_by_zero
  call void @_ZN4core9panicking11panic_const23panic_const_div_by_zero17h9a45e37423e1c559E(ptr align 8 @alloc_1766d997855ce0605ac1fd25105b5a8f) #22
  unreachable

bb6:                                              ; preds = %bb5
  %_8 = sdiv i32 %_6.0, %b
  %_7 = icmp eq i32 %a, %_8
  br i1 %_7, label %bb7, label %bb8

panic2:                                           ; preds = %bb5
; call core::panicking::panic_const::panic_const_div_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_div_overflow17hde5ac990ac871ee2E(ptr align 8 @alloc_1766d997855ce0605ac1fd25105b5a8f) #22
  unreachable

bb8:                                              ; preds = %bb6
  store i32 1, ptr %_0, align 4
  br label %bb9

bb7:                                              ; preds = %bb6
  store i32 0, ptr %_0, align 4
  br label %bb9

bb9:                                              ; preds = %bb2, %bb7, %bb8
  %1 = load i32, ptr %_0, align 4
  ret i32 %1
}

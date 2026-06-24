define i32 @f_gold(i32 %b, i32 %m) unnamed_addr #3 {
start:
  %_6 = icmp eq i32 %m, 0
  br i1 %_6, label %panic, label %bb1

bb1:                                              ; preds = %start
  %_7 = icmp eq i32 %m, -1
  %_8 = icmp eq i32 %b, -2147483648
  %_9 = and i1 %_7, %_8
  br i1 %_9, label %panic1, label %bb2

panic:                                            ; preds = %start
; call core::panicking::panic_const::panic_const_div_by_zero
  call void @_ZN4core9panicking11panic_const23panic_const_div_by_zero17h9a45e37423e1c559E(ptr align 8 @alloc_213cef1eef0fd726aacac1b67c3d0e73) #22
  unreachable

bb2:                                              ; preds = %bb1
  %_5 = sdiv i32 %b, %m
  %0 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %_5, i32 1)
  %_10.0 = extractvalue { i32, i1 } %0, 0
  %_10.1 = extractvalue { i32, i1 } %0, 1
  br i1 %_10.1, label %panic2, label %bb3

panic1:                                           ; preds = %bb1
; call core::panicking::panic_const::panic_const_div_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_div_overflow17hde5ac990ac871ee2E(ptr align 8 @alloc_213cef1eef0fd726aacac1b67c3d0e73) #22
  unreachable

bb3:                                              ; preds = %bb2
  %_12 = icmp eq i32 %m, 0
  br i1 %_12, label %panic3, label %bb4

panic2:                                           ; preds = %bb2
; call core::panicking::panic_const::panic_const_sub_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_sub_overflow17h134cc1a7f93654deE(ptr align 8 @alloc_9ab2889670b45ffd0083f8aa364657d7) #22
  unreachable

bb4:                                              ; preds = %bb3
  %_13 = icmp eq i32 %m, -1
  %_14 = icmp eq i32 %b, -2147483648
  %_15 = and i1 %_13, %_14
  br i1 %_15, label %panic4, label %bb5

panic3:                                           ; preds = %bb3
; call core::panicking::panic_const::panic_const_div_by_zero
  call void @_ZN4core9panicking11panic_const23panic_const_div_by_zero17h9a45e37423e1c559E(ptr align 8 @alloc_2f732164c104a23d8258079bd1c2295d) #22
  unreachable

bb5:                                              ; preds = %bb4
  %_11 = sdiv i32 %b, %m
  %1 = call { i32, i1 } @llvm.smul.with.overflow.i32(i32 %_10.0, i32 %_11)
  %_16.0 = extractvalue { i32, i1 } %1, 0
  %_16.1 = extractvalue { i32, i1 } %1, 1
  br i1 %_16.1, label %panic5, label %bb6

panic4:                                           ; preds = %bb4
; call core::panicking::panic_const::panic_const_div_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_div_overflow17hde5ac990ac871ee2E(ptr align 8 @alloc_2f732164c104a23d8258079bd1c2295d) #22
  unreachable

bb6:                                              ; preds = %bb5
  %_19 = icmp eq i32 %_16.0, -2147483648
  %_20 = and i1 false, %_19
  br i1 %_20, label %panic6, label %bb8

panic5:                                           ; preds = %bb5
; call core::panicking::panic_const::panic_const_mul_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_mul_overflow17h554ac164c12099f8E(ptr align 8 @alloc_9ab2889670b45ffd0083f8aa364657d7) #22
  unreachable

bb8:                                              ; preds = %bb6
  %_0 = sdiv i32 %_16.0, 2
  ret i32 %_0

panic6:                                           ; preds = %bb6
; call core::panicking::panic_const::panic_const_div_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_div_overflow17hde5ac990ac871ee2E(ptr align 8 @alloc_9ab2889670b45ffd0083f8aa364657d7) #22
  unreachable
}

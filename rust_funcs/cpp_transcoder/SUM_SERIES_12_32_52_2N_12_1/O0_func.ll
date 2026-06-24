define i32 @f_gold(i32 %n) unnamed_addr #3 {
start:
  %0 = call { i32, i1 } @llvm.smul.with.overflow.i32(i32 2, i32 %n)
  %_6.0 = extractvalue { i32, i1 } %0, 0
  %_6.1 = extractvalue { i32, i1 } %0, 1
  br i1 %_6.1, label %panic, label %bb1

bb1:                                              ; preds = %start
  %1 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %_6.0, i32 1)
  %_7.0 = extractvalue { i32, i1 } %1, 0
  %_7.1 = extractvalue { i32, i1 } %1, 1
  br i1 %_7.1, label %panic1, label %bb2

panic:                                            ; preds = %start
; call core::panicking::panic_const::panic_const_mul_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_mul_overflow17h554ac164c12099f8E(ptr align 8 @alloc_1b17188293509546f42d6bf51723892c) #22
  unreachable

bb2:                                              ; preds = %bb1
  %2 = call { i32, i1 } @llvm.smul.with.overflow.i32(i32 %n, i32 %_7.0)
  %_8.0 = extractvalue { i32, i1 } %2, 0
  %_8.1 = extractvalue { i32, i1 } %2, 1
  br i1 %_8.1, label %panic2, label %bb3

panic1:                                           ; preds = %bb1
; call core::panicking::panic_const::panic_const_sub_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_sub_overflow17h134cc1a7f93654deE(ptr align 8 @alloc_0beb59b508d32b9041d7dc5589128c76) #22
  unreachable

bb3:                                              ; preds = %bb2
  %3 = call { i32, i1 } @llvm.smul.with.overflow.i32(i32 2, i32 %n)
  %_11.0 = extractvalue { i32, i1 } %3, 0
  %_11.1 = extractvalue { i32, i1 } %3, 1
  br i1 %_11.1, label %panic3, label %bb4

panic2:                                           ; preds = %bb2
; call core::panicking::panic_const::panic_const_mul_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_mul_overflow17h554ac164c12099f8E(ptr align 8 @alloc_14cb587770c5524886b80c7515b8a64f) #22
  unreachable

bb4:                                              ; preds = %bb3
  %4 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %_11.0, i32 1)
  %_12.0 = extractvalue { i32, i1 } %4, 0
  %_12.1 = extractvalue { i32, i1 } %4, 1
  br i1 %_12.1, label %panic4, label %bb5

panic3:                                           ; preds = %bb3
; call core::panicking::panic_const::panic_const_mul_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_mul_overflow17h554ac164c12099f8E(ptr align 8 @alloc_4256f9c0454b6ce23da8e474d8c3339d) #22
  unreachable

bb5:                                              ; preds = %bb4
  %5 = call { i32, i1 } @llvm.smul.with.overflow.i32(i32 %_8.0, i32 %_12.0)
  %_13.0 = extractvalue { i32, i1 } %5, 0
  %_13.1 = extractvalue { i32, i1 } %5, 1
  br i1 %_13.1, label %panic5, label %bb6

panic4:                                           ; preds = %bb4
; call core::panicking::panic_const::panic_const_add_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_5cc00520edcbe0f71be135e046971f05) #22
  unreachable

bb6:                                              ; preds = %bb5
  %_16 = icmp eq i32 %_13.0, -2147483648
  %_17 = and i1 false, %_16
  br i1 %_17, label %panic6, label %bb8

panic5:                                           ; preds = %bb5
; call core::panicking::panic_const::panic_const_mul_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_mul_overflow17h554ac164c12099f8E(ptr align 8 @alloc_02f9b7b7d580a660a1da98240d86eb45) #22
  unreachable

bb8:                                              ; preds = %bb6
  %result = sdiv i32 %_13.0, 3
  ret i32 %result

panic6:                                           ; preds = %bb6
; call core::panicking::panic_const::panic_const_div_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_div_overflow17hde5ac990ac871ee2E(ptr align 8 @alloc_02f9b7b7d580a660a1da98240d86eb45) #22
  unreachable
}

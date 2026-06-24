define i32 @f_gold(i32 %n) unnamed_addr #3 {
start:
  %sum = alloca [4 x i8], align 4
  %0 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %n, i32 1)
  %_3.0 = extractvalue { i32, i1 } %0, 0
  %_3.1 = extractvalue { i32, i1 } %0, 1
  br i1 %_3.1, label %panic, label %bb1

bb1:                                              ; preds = %start
  store i32 0, ptr %sum, align 4
  %1 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %_3.0, i32 1)
  %_8.0 = extractvalue { i32, i1 } %1, 0
  %_8.1 = extractvalue { i32, i1 } %1, 1
  br i1 %_8.1, label %panic1, label %bb2

panic:                                            ; preds = %start
; call core::panicking::panic_const::panic_const_sub_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_sub_overflow17h134cc1a7f93654deE(ptr align 8 @alloc_873c0992b1ddf50d96b43a836acfc2bd) #22
  unreachable

bb2:                                              ; preds = %bb1
  %2 = call { i32, i1 } @llvm.smul.with.overflow.i32(i32 %_3.0, i32 %_8.0)
  %_9.0 = extractvalue { i32, i1 } %2, 0
  %_9.1 = extractvalue { i32, i1 } %2, 1
  br i1 %_9.1, label %panic2, label %bb3

panic1:                                           ; preds = %bb1
; call core::panicking::panic_const::panic_const_add_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_6b3d6ba9084f80d15fdd6c9eaffd96b0) #22
  unreachable

bb3:                                              ; preds = %bb2
  %_12 = icmp eq i32 %_9.0, -2147483648
  %_13 = and i1 false, %_12
  br i1 %_13, label %panic3, label %bb5

panic2:                                           ; preds = %bb2
; call core::panicking::panic_const::panic_const_mul_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_mul_overflow17h554ac164c12099f8E(ptr align 8 @alloc_84356b8976b56bfc905c5fc9fcae6a01) #22
  unreachable

bb5:                                              ; preds = %bb3
  %_5 = sdiv i32 %_9.0, 2
  %3 = load i32, ptr %sum, align 4
  %4 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %3, i32 %_5)
  %_14.0 = extractvalue { i32, i1 } %4, 0
  %_14.1 = extractvalue { i32, i1 } %4, 1
  br i1 %_14.1, label %panic4, label %bb6

panic3:                                           ; preds = %bb3
; call core::panicking::panic_const::panic_const_div_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_div_overflow17hde5ac990ac871ee2E(ptr align 8 @alloc_84356b8976b56bfc905c5fc9fcae6a01) #22
  unreachable

bb6:                                              ; preds = %bb5
  store i32 %_14.0, ptr %sum, align 4
  %5 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %_3.0, i32 1)
  %_19.0 = extractvalue { i32, i1 } %5, 0
  %_19.1 = extractvalue { i32, i1 } %5, 1
  br i1 %_19.1, label %panic5, label %bb7

panic4:                                           ; preds = %bb5
; call core::panicking::panic_const::panic_const_add_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_24d346550ecf64ee724d013eafc21437) #22
  unreachable

bb7:                                              ; preds = %bb6
  %6 = call { i32, i1 } @llvm.smul.with.overflow.i32(i32 %_3.0, i32 %_19.0)
  %_20.0 = extractvalue { i32, i1 } %6, 0
  %_20.1 = extractvalue { i32, i1 } %6, 1
  br i1 %_20.1, label %panic6, label %bb8

panic5:                                           ; preds = %bb6
; call core::panicking::panic_const::panic_const_add_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_c63508079fe7ad6ada0c8ecc78a73154) #22
  unreachable

bb8:                                              ; preds = %bb7
  %7 = call { i32, i1 } @llvm.smul.with.overflow.i32(i32 2, i32 %_3.0)
  %_23.0 = extractvalue { i32, i1 } %7, 0
  %_23.1 = extractvalue { i32, i1 } %7, 1
  br i1 %_23.1, label %panic7, label %bb9

panic6:                                           ; preds = %bb7
; call core::panicking::panic_const::panic_const_mul_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_mul_overflow17h554ac164c12099f8E(ptr align 8 @alloc_b3b53d2ae473f3d9b7225e60d401111b) #22
  unreachable

bb9:                                              ; preds = %bb8
  %8 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %_23.0, i32 1)
  %_24.0 = extractvalue { i32, i1 } %8, 0
  %_24.1 = extractvalue { i32, i1 } %8, 1
  br i1 %_24.1, label %panic8, label %bb10

panic7:                                           ; preds = %bb8
; call core::panicking::panic_const::panic_const_mul_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_mul_overflow17h554ac164c12099f8E(ptr align 8 @alloc_fbdeddca8e3894ae1c8955e9d11cdd32) #22
  unreachable

bb10:                                             ; preds = %bb9
  %9 = call { i32, i1 } @llvm.smul.with.overflow.i32(i32 %_20.0, i32 %_24.0)
  %_25.0 = extractvalue { i32, i1 } %9, 0
  %_25.1 = extractvalue { i32, i1 } %9, 1
  br i1 %_25.1, label %panic9, label %bb11

panic8:                                           ; preds = %bb9
; call core::panicking::panic_const::panic_const_add_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_6ae33acb9404d99b3195223c5d607015) #22
  unreachable

bb11:                                             ; preds = %bb10
  %_28 = icmp eq i32 %_25.0, -2147483648
  %_29 = and i1 false, %_28
  br i1 %_29, label %panic10, label %bb13

panic9:                                           ; preds = %bb10
; call core::panicking::panic_const::panic_const_mul_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_mul_overflow17h554ac164c12099f8E(ptr align 8 @alloc_2c87e63cf03410b0dc035382dc397ea7) #22
  unreachable

bb13:                                             ; preds = %bb11
  %_15 = sdiv i32 %_25.0, 6
  %10 = load i32, ptr %sum, align 4
  %11 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %10, i32 %_15)
  %_30.0 = extractvalue { i32, i1 } %11, 0
  %_30.1 = extractvalue { i32, i1 } %11, 1
  br i1 %_30.1, label %panic11, label %bb14

panic10:                                          ; preds = %bb11
; call core::panicking::panic_const::panic_const_div_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_div_overflow17hde5ac990ac871ee2E(ptr align 8 @alloc_2c87e63cf03410b0dc035382dc397ea7) #22
  unreachable

bb14:                                             ; preds = %bb13
  store i32 %_30.0, ptr %sum, align 4
  %_0 = load i32, ptr %sum, align 4
  ret i32 %_0

panic11:                                          ; preds = %bb13
; call core::panicking::panic_const::panic_const_add_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_319349856cb0573d9268ed50c2f90573) #22
  unreachable
}

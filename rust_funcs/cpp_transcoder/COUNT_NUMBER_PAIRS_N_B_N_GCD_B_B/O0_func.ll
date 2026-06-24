define i32 @f_gold(i32 %n) unnamed_addr #3 {
start:
  %ans = alloca [4 x i8], align 4
  %imin = alloca [4 x i8], align 4
  %k = alloca [4 x i8], align 4
  store i32 %n, ptr %k, align 4
  store i32 1, ptr %imin, align 4
  store i32 0, ptr %ans, align 4
  br label %bb1

bb1:                                              ; preds = %bb11, %start
  %_6 = load i32, ptr %imin, align 4
  %_5 = icmp sle i32 %_6, %n
  br i1 %_5, label %bb2, label %bb12

bb12:                                             ; preds = %bb1
  %_0 = load i32, ptr %ans, align 4
  ret i32 %_0

bb2:                                              ; preds = %bb1
  %_8 = load i32, ptr %k, align 4
  %_9 = icmp eq i32 %_8, 0
  br i1 %_9, label %panic, label %bb3

bb3:                                              ; preds = %bb2
  %_10 = icmp eq i32 %_8, -1
  %_11 = icmp eq i32 %n, -2147483648
  %_12 = and i1 %_10, %_11
  br i1 %_12, label %panic1, label %bb4

panic:                                            ; preds = %bb2
; call core::panicking::panic_const::panic_const_div_by_zero
  call void @_ZN4core9panicking11panic_const23panic_const_div_by_zero17h9a45e37423e1c559E(ptr align 8 @alloc_3dc435cd06529d912597b350ba41a903) #22
  unreachable

bb4:                                              ; preds = %bb3
  %imax = sdiv i32 %n, %_8
  %_14 = load i32, ptr %k, align 4
  %_17 = load i32, ptr %imin, align 4
  %0 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %imax, i32 %_17)
  %_18.0 = extractvalue { i32, i1 } %0, 0
  %_18.1 = extractvalue { i32, i1 } %0, 1
  br i1 %_18.1, label %panic2, label %bb5

panic1:                                           ; preds = %bb3
; call core::panicking::panic_const::panic_const_div_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_div_overflow17hde5ac990ac871ee2E(ptr align 8 @alloc_3dc435cd06529d912597b350ba41a903) #22
  unreachable

bb5:                                              ; preds = %bb4
  %1 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %_18.0, i32 1)
  %_19.0 = extractvalue { i32, i1 } %1, 0
  %_19.1 = extractvalue { i32, i1 } %1, 1
  br i1 %_19.1, label %panic3, label %bb6

panic2:                                           ; preds = %bb4
; call core::panicking::panic_const::panic_const_sub_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_sub_overflow17h134cc1a7f93654deE(ptr align 8 @alloc_627876fa232a5958dd2da63852b118e4) #22
  unreachable

bb6:                                              ; preds = %bb5
  %2 = call { i32, i1 } @llvm.smul.with.overflow.i32(i32 %_14, i32 %_19.0)
  %_20.0 = extractvalue { i32, i1 } %2, 0
  %_20.1 = extractvalue { i32, i1 } %2, 1
  br i1 %_20.1, label %panic4, label %bb7

panic3:                                           ; preds = %bb5
; call core::panicking::panic_const::panic_const_add_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_35a7b84be866a1536483ba99bcc2656b) #22
  unreachable

bb7:                                              ; preds = %bb6
  %3 = load i32, ptr %ans, align 4
  %4 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %3, i32 %_20.0)
  %_21.0 = extractvalue { i32, i1 } %4, 0
  %_21.1 = extractvalue { i32, i1 } %4, 1
  br i1 %_21.1, label %panic5, label %bb8

panic4:                                           ; preds = %bb6
; call core::panicking::panic_const::panic_const_mul_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_mul_overflow17h554ac164c12099f8E(ptr align 8 @alloc_62f56208191870f0193a6f85c464d802) #22
  unreachable

bb8:                                              ; preds = %bb7
  store i32 %_21.0, ptr %ans, align 4
  %5 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %imax, i32 1)
  %_22.0 = extractvalue { i32, i1 } %5, 0
  %_22.1 = extractvalue { i32, i1 } %5, 1
  br i1 %_22.1, label %panic6, label %bb9

panic5:                                           ; preds = %bb7
; call core::panicking::panic_const::panic_const_add_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_8ce8c251fc3ab8e4f11e2920c5354782) #22
  unreachable

bb9:                                              ; preds = %bb8
  store i32 %_22.0, ptr %imin, align 4
  %_23 = load i32, ptr %imin, align 4
  %_24 = icmp eq i32 %_23, 0
  br i1 %_24, label %panic7, label %bb10

panic6:                                           ; preds = %bb8
; call core::panicking::panic_const::panic_const_add_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_06fe07d4a14007be39e01a764d309eae) #22
  unreachable

bb10:                                             ; preds = %bb9
  %_25 = icmp eq i32 %_23, -1
  %_26 = icmp eq i32 %n, -2147483648
  %_27 = and i1 %_25, %_26
  br i1 %_27, label %panic8, label %bb11

panic7:                                           ; preds = %bb9
; call core::panicking::panic_const::panic_const_div_by_zero
  call void @_ZN4core9panicking11panic_const23panic_const_div_by_zero17h9a45e37423e1c559E(ptr align 8 @alloc_f15a175882a809f3fac2ce74f9dc53a1) #22
  unreachable

bb11:                                             ; preds = %bb10
  %6 = sdiv i32 %n, %_23
  store i32 %6, ptr %k, align 4
  br label %bb1

panic8:                                           ; preds = %bb10
; call core::panicking::panic_const::panic_const_div_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_div_overflow17hde5ac990ac871ee2E(ptr align 8 @alloc_f15a175882a809f3fac2ce74f9dc53a1) #22
  unreachable
}

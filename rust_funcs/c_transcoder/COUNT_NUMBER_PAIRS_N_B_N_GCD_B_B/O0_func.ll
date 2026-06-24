define i32 @f_gold(i32 %n) unnamed_addr #3 {
start:
  %ans = alloca [4 x i8], align 4
  %imin = alloca [4 x i8], align 4
  %k = alloca [4 x i8], align 4
  store i32 %n, ptr %k, align 4
  store i32 1, ptr %imin, align 4
  store i32 0, ptr %ans, align 4
  br label %bb1

bb1:                                              ; preds = %bb8, %start
  %_6 = load i32, ptr %imin, align 4
  %_5 = icmp sle i32 %_6, %n
  br i1 %_5, label %bb2, label %bb9

bb9:                                              ; preds = %bb1
  %_0 = load i32, ptr %ans, align 4
  ret i32 %_0

bb2:                                              ; preds = %bb1
  %_8 = sitofp i32 %n to float
  %_10 = load i32, ptr %k, align 4
  %_9 = sitofp i32 %_10 to float
  %imax = fdiv float %_8, %_9
  %_12 = load i32, ptr %k, align 4
  %_15 = call i32 @llvm.fptosi.sat.i32.f32(float %imax)
  %_16 = load i32, ptr %imin, align 4
  %0 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %_15, i32 %_16)
  %_17.0 = extractvalue { i32, i1 } %0, 0
  %_17.1 = extractvalue { i32, i1 } %0, 1
  br i1 %_17.1, label %panic, label %bb3

bb3:                                              ; preds = %bb2
  %1 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %_17.0, i32 1)
  %_18.0 = extractvalue { i32, i1 } %1, 0
  %_18.1 = extractvalue { i32, i1 } %1, 1
  br i1 %_18.1, label %panic1, label %bb4

panic:                                            ; preds = %bb2
; call core::panicking::panic_const::panic_const_sub_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_sub_overflow17h134cc1a7f93654deE(ptr align 8 @alloc_c19e4f3f7c7cc0061817198c5fa0218d) #22
  unreachable

bb4:                                              ; preds = %bb3
  %2 = call { i32, i1 } @llvm.smul.with.overflow.i32(i32 %_12, i32 %_18.0)
  %_19.0 = extractvalue { i32, i1 } %2, 0
  %_19.1 = extractvalue { i32, i1 } %2, 1
  br i1 %_19.1, label %panic2, label %bb5

panic1:                                           ; preds = %bb3
; call core::panicking::panic_const::panic_const_add_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_d5d6741f47497202738ca1a0bdc11bf4) #22
  unreachable

bb5:                                              ; preds = %bb4
  %3 = load i32, ptr %ans, align 4
  %4 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %3, i32 %_19.0)
  %_20.0 = extractvalue { i32, i1 } %4, 0
  %_20.1 = extractvalue { i32, i1 } %4, 1
  br i1 %_20.1, label %panic3, label %bb6

panic2:                                           ; preds = %bb4
; call core::panicking::panic_const::panic_const_mul_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_mul_overflow17h554ac164c12099f8E(ptr align 8 @alloc_e3d382771f44a7f96cfbc668d17b694a) #22
  unreachable

bb6:                                              ; preds = %bb5
  store i32 %_20.0, ptr %ans, align 4
  %_21 = fadd float %imax, 1.000000e+00
  %5 = call i32 @llvm.fptosi.sat.i32.f32(float %_21)
  store i32 %5, ptr %imin, align 4
  %_22 = load i32, ptr %imin, align 4
  %_23 = icmp eq i32 %_22, 0
  br i1 %_23, label %panic4, label %bb7

panic3:                                           ; preds = %bb5
; call core::panicking::panic_const::panic_const_add_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_d5c74943f6cd5bfcdb76b4e8d3121180) #22
  unreachable

bb7:                                              ; preds = %bb6
  %_24 = icmp eq i32 %_22, -1
  %_25 = icmp eq i32 %n, -2147483648
  %_26 = and i1 %_24, %_25
  br i1 %_26, label %panic5, label %bb8

panic4:                                           ; preds = %bb6
; call core::panicking::panic_const::panic_const_div_by_zero
  call void @_ZN4core9panicking11panic_const23panic_const_div_by_zero17h9a45e37423e1c559E(ptr align 8 @alloc_a9398067ad04dcc52a63777c86e7faf7) #22
  unreachable

bb8:                                              ; preds = %bb7
  %6 = sdiv i32 %n, %_22
  store i32 %6, ptr %k, align 4
  br label %bb1

panic5:                                           ; preds = %bb7
; call core::panicking::panic_const::panic_const_div_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_div_overflow17hde5ac990ac871ee2E(ptr align 8 @alloc_a9398067ad04dcc52a63777c86e7faf7) #22
  unreachable
}

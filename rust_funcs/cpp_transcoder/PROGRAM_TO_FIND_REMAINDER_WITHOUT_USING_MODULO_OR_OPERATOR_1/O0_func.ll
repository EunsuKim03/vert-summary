define i32 @f_gold(i32 %num, i32 %divisor) unnamed_addr #3 {
start:
  %product = alloca [4 x i8], align 4
  %i = alloca [4 x i8], align 4
  %num2 = alloca [4 x i8], align 4
  %divisor1 = alloca [4 x i8], align 4
  %_0 = alloca [4 x i8], align 4
  store i32 %divisor, ptr %divisor1, align 4
  store i32 %num, ptr %num2, align 4
  %_6 = load i32, ptr %divisor1, align 4
  %_5 = icmp eq i32 %_6, 0
  br i1 %_5, label %bb1, label %bb2

bb2:                                              ; preds = %start
  %_8 = load i32, ptr %divisor1, align 4
  %_7 = icmp slt i32 %_8, 0
  br i1 %_7, label %bb3, label %bb5

bb1:                                              ; preds = %start
  store i32 -1, ptr %_0, align 4
  br label %bb16

bb5:                                              ; preds = %bb4, %bb2
  %_12 = load i32, ptr %num2, align 4
  %_11 = icmp slt i32 %_12, 0
  br i1 %_11, label %bb6, label %bb8

bb3:                                              ; preds = %bb2
  %_9 = load i32, ptr %divisor1, align 4
  %_10 = icmp eq i32 %_9, -2147483648
  br i1 %_10, label %panic, label %bb4

bb4:                                              ; preds = %bb3
  %0 = sub i32 0, %_9
  store i32 %0, ptr %divisor1, align 4
  br label %bb5

panic:                                            ; preds = %bb3
; call core::panicking::panic_const::panic_const_neg_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_neg_overflow17hf7841d7385a517f1E(ptr align 8 @alloc_3e2a925dc65515a6937d97f5814321e6) #22
  unreachable

bb8:                                              ; preds = %bb7, %bb5
  store i32 1, ptr %i, align 4
  store i32 0, ptr %product, align 4
  br label %bb9

bb6:                                              ; preds = %bb5
  %_13 = load i32, ptr %num2, align 4
  %_14 = icmp eq i32 %_13, -2147483648
  br i1 %_14, label %panic3, label %bb7

bb7:                                              ; preds = %bb6
  %1 = sub i32 0, %_13
  store i32 %1, ptr %num2, align 4
  br label %bb8

panic3:                                           ; preds = %bb6
; call core::panicking::panic_const::panic_const_neg_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_neg_overflow17hf7841d7385a517f1E(ptr align 8 @alloc_c7d1cab28a1d9b597047578c7469fbce) #22
  unreachable

bb9:                                              ; preds = %bb12, %bb8
  %_18 = load i32, ptr %product, align 4
  %_19 = load i32, ptr %num2, align 4
  %_17 = icmp sle i32 %_18, %_19
  br i1 %_17, label %bb10, label %bb13

bb13:                                             ; preds = %bb9
  %_24 = load i32, ptr %num2, align 4
  %_26 = load i32, ptr %product, align 4
  %_27 = load i32, ptr %divisor1, align 4
  %2 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %_26, i32 %_27)
  %_28.0 = extractvalue { i32, i1 } %2, 0
  %_28.1 = extractvalue { i32, i1 } %2, 1
  br i1 %_28.1, label %panic4, label %bb14

bb10:                                             ; preds = %bb9
  %_20 = load i32, ptr %divisor1, align 4
  %_21 = load i32, ptr %i, align 4
  %3 = call { i32, i1 } @llvm.smul.with.overflow.i32(i32 %_20, i32 %_21)
  %_22.0 = extractvalue { i32, i1 } %3, 0
  %_22.1 = extractvalue { i32, i1 } %3, 1
  br i1 %_22.1, label %panic6, label %bb11

bb14:                                             ; preds = %bb13
  %4 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %_24, i32 %_28.0)
  %_29.0 = extractvalue { i32, i1 } %4, 0
  %_29.1 = extractvalue { i32, i1 } %4, 1
  br i1 %_29.1, label %panic5, label %bb15

panic4:                                           ; preds = %bb13
; call core::panicking::panic_const::panic_const_sub_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_sub_overflow17h134cc1a7f93654deE(ptr align 8 @alloc_e9f93a98bb789efba06e608827361f87) #22
  unreachable

bb15:                                             ; preds = %bb14
  store i32 %_29.0, ptr %_0, align 4
  br label %bb16

panic5:                                           ; preds = %bb14
; call core::panicking::panic_const::panic_const_sub_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_sub_overflow17h134cc1a7f93654deE(ptr align 8 @alloc_df85ecc15c81c4e7c8d76411f7299026) #22
  unreachable

bb16:                                             ; preds = %bb1, %bb15
  %5 = load i32, ptr %_0, align 4
  ret i32 %5

bb11:                                             ; preds = %bb10
  store i32 %_22.0, ptr %product, align 4
  %6 = load i32, ptr %i, align 4
  %7 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %6, i32 1)
  %_23.0 = extractvalue { i32, i1 } %7, 0
  %_23.1 = extractvalue { i32, i1 } %7, 1
  br i1 %_23.1, label %panic7, label %bb12

panic6:                                           ; preds = %bb10
; call core::panicking::panic_const::panic_const_mul_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_mul_overflow17h554ac164c12099f8E(ptr align 8 @alloc_535dd4d060c041d1e37cb726cf5667de) #22
  unreachable

bb12:                                             ; preds = %bb11
  store i32 %_23.0, ptr %i, align 4
  br label %bb9

panic7:                                           ; preds = %bb11
; call core::panicking::panic_const::panic_const_add_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_c3571211dad6296ff30b20ee4c9e26b6) #22
  unreachable
}

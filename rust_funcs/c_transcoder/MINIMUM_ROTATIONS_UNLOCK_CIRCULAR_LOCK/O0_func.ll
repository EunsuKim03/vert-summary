define i32 @f_gold(i32 %0, i32 %1) unnamed_addr #3 {
start:
  %rotation = alloca [4 x i8], align 4
  %unlock_code = alloca [4 x i8], align 4
  %input = alloca [4 x i8], align 4
  store i32 %0, ptr %input, align 4
  store i32 %1, ptr %unlock_code, align 4
  store i32 0, ptr %rotation, align 4
  br label %bb1

bb1:                                              ; preds = %bb18, %start
  %_7 = load i32, ptr %input, align 4
  %_6 = icmp ne i32 %_7, 0
  br i1 %_6, label %bb3, label %bb2

bb2:                                              ; preds = %bb1
  %_9 = load i32, ptr %unlock_code, align 4
  %_8 = icmp ne i32 %_9, 0
  br i1 %_8, label %bb3, label %bb19

bb3:                                              ; preds = %bb2, %bb1
  %_10 = load i32, ptr %input, align 4
  %_13 = icmp eq i32 %_10, -2147483648
  %_14 = and i1 false, %_13
  br i1 %_14, label %panic, label %bb5

bb19:                                             ; preds = %bb2
  %_0 = load i32, ptr %rotation, align 4
  ret i32 %_0

bb5:                                              ; preds = %bb3
  %input_digit = srem i32 %_10, 10
  %_15 = load i32, ptr %unlock_code, align 4
  %_18 = icmp eq i32 %_15, -2147483648
  %_19 = and i1 false, %_18
  br i1 %_19, label %panic1, label %bb7

panic:                                            ; preds = %bb3
; call core::panicking::panic_const::panic_const_rem_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_rem_overflow17h4aab8182a78c82f8E(ptr align 8 @alloc_10e02922e5be28fd10eda4d613f873e2) #19
  unreachable

bb7:                                              ; preds = %bb5
  %code_digit = srem i32 %_15, 10
  %2 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %input_digit, i32 %code_digit)
  %_23.0 = extractvalue { i32, i1 } %2, 0
  %_23.1 = extractvalue { i32, i1 } %2, 1
  br i1 %_23.1, label %panic2, label %bb8

panic1:                                           ; preds = %bb5
; call core::panicking::panic_const::panic_const_rem_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_rem_overflow17h4aab8182a78c82f8E(ptr align 8 @alloc_5bd43a6287f9902ab6278a0fb17233f5) #19
  unreachable

bb8:                                              ; preds = %bb7
; call core::num::<impl i32>::abs
  %_21 = call i32 @"_ZN4core3num21_$LT$impl$u20$i32$GT$3abs17h186f46e8fbafdabbE"(i32 %_23.0) #21
  %3 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %input_digit, i32 %code_digit)
  %_27.0 = extractvalue { i32, i1 } %3, 0
  %_27.1 = extractvalue { i32, i1 } %3, 1
  br i1 %_27.1, label %panic3, label %bb10

panic2:                                           ; preds = %bb7
; call core::panicking::panic_const::panic_const_sub_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_sub_overflow17h134cc1a7f93654deE(ptr align 8 @alloc_89716911539a15e69c06099a86da1d2c) #19
  unreachable

bb10:                                             ; preds = %bb8
; call core::num::<impl i32>::abs
  %_25 = call i32 @"_ZN4core3num21_$LT$impl$u20$i32$GT$3abs17h186f46e8fbafdabbE"(i32 %_27.0) #21
  %4 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 10, i32 %_25)
  %_28.0 = extractvalue { i32, i1 } %4, 0
  %_28.1 = extractvalue { i32, i1 } %4, 1
  br i1 %_28.1, label %panic4, label %bb12

panic3:                                           ; preds = %bb8
; call core::panicking::panic_const::panic_const_sub_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_sub_overflow17h134cc1a7f93654deE(ptr align 8 @alloc_f4eee19db321e4dd7a67881ec326c32a) #19
  unreachable

bb12:                                             ; preds = %bb10
; call core::cmp::Ord::min
  %_20 = call i32 @_ZN4core3cmp3Ord3min17hae75d140b3a600c0E(i32 %_21, i32 %_28.0) #21
  %5 = load i32, ptr %rotation, align 4
  %6 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %5, i32 %_20)
  %_29.0 = extractvalue { i32, i1 } %6, 0
  %_29.1 = extractvalue { i32, i1 } %6, 1
  br i1 %_29.1, label %panic5, label %bb14

panic4:                                           ; preds = %bb10
; call core::panicking::panic_const::panic_const_sub_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_sub_overflow17h134cc1a7f93654deE(ptr align 8 @alloc_af10587894cfbab5f5727db8e119de7e) #19
  unreachable

bb14:                                             ; preds = %bb12
  store i32 %_29.0, ptr %rotation, align 4
  %7 = load i32, ptr %input, align 4
  %_32 = icmp eq i32 %7, -2147483648
  %_33 = and i1 false, %_32
  br i1 %_33, label %panic6, label %bb16

panic5:                                           ; preds = %bb12
; call core::panicking::panic_const::panic_const_add_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_006fc42deea3fbb280574fc4d68626f9) #19
  unreachable

bb16:                                             ; preds = %bb14
  %8 = load i32, ptr %input, align 4
  %9 = sdiv i32 %8, 10
  store i32 %9, ptr %input, align 4
  %10 = load i32, ptr %unlock_code, align 4
  %_36 = icmp eq i32 %10, -2147483648
  %_37 = and i1 false, %_36
  br i1 %_37, label %panic7, label %bb18

panic6:                                           ; preds = %bb14
; call core::panicking::panic_const::panic_const_div_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_div_overflow17hde5ac990ac871ee2E(ptr align 8 @alloc_fe0a369a2941b0c5cd25b81b5fa451ca) #19
  unreachable

bb18:                                             ; preds = %bb16
  %11 = load i32, ptr %unlock_code, align 4
  %12 = sdiv i32 %11, 10
  store i32 %12, ptr %unlock_code, align 4
  br label %bb1

panic7:                                           ; preds = %bb16
; call core::panicking::panic_const::panic_const_div_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_div_overflow17hde5ac990ac871ee2E(ptr align 8 @alloc_3ca3067c3c216b1f65b50f2389c45f68) #19
  unreachable
}

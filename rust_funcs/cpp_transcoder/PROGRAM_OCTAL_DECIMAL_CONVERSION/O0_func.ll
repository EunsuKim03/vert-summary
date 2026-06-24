define i32 @f_gold(i32 %n) unnamed_addr #3 {
start:
  %temp = alloca [4 x i8], align 4
  %base = alloca [4 x i8], align 4
  %dec_value = alloca [4 x i8], align 4
  store i32 0, ptr %dec_value, align 4
  store i32 1, ptr %base, align 4
  store i32 %n, ptr %temp, align 4
  br label %bb1

bb1:                                              ; preds = %bb9, %start
  %_6 = load i32, ptr %temp, align 4
  %_5 = icmp ne i32 %_6, 0
  br i1 %_5, label %bb2, label %bb10

bb10:                                             ; preds = %bb1
  %_0 = load i32, ptr %dec_value, align 4
  ret i32 %_0

bb2:                                              ; preds = %bb1
  %_8 = load i32, ptr %temp, align 4
  %_11 = icmp eq i32 %_8, -2147483648
  %_12 = and i1 false, %_11
  br i1 %_12, label %panic, label %bb4

bb4:                                              ; preds = %bb2
  %last_digit = srem i32 %_8, 10
  %0 = load i32, ptr %temp, align 4
  %_15 = icmp eq i32 %0, -2147483648
  %_16 = and i1 false, %_15
  br i1 %_16, label %panic1, label %bb6

panic:                                            ; preds = %bb2
; call core::panicking::panic_const::panic_const_rem_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_rem_overflow17h4aab8182a78c82f8E(ptr align 8 @alloc_b06dbb07869a8746a27789f5a84feab7) #22
  unreachable

bb6:                                              ; preds = %bb4
  %1 = load i32, ptr %temp, align 4
  %2 = sdiv i32 %1, 10
  store i32 %2, ptr %temp, align 4
  %_18 = load i32, ptr %base, align 4
  %3 = call { i32, i1 } @llvm.smul.with.overflow.i32(i32 %last_digit, i32 %_18)
  %_19.0 = extractvalue { i32, i1 } %3, 0
  %_19.1 = extractvalue { i32, i1 } %3, 1
  br i1 %_19.1, label %panic2, label %bb7

panic1:                                           ; preds = %bb4
; call core::panicking::panic_const::panic_const_div_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_div_overflow17hde5ac990ac871ee2E(ptr align 8 @alloc_beb4923272ac0fae6e919f684201ba69) #22
  unreachable

bb7:                                              ; preds = %bb6
  %4 = load i32, ptr %dec_value, align 4
  %5 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %4, i32 %_19.0)
  %_20.0 = extractvalue { i32, i1 } %5, 0
  %_20.1 = extractvalue { i32, i1 } %5, 1
  br i1 %_20.1, label %panic3, label %bb8

panic2:                                           ; preds = %bb6
; call core::panicking::panic_const::panic_const_mul_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_mul_overflow17h554ac164c12099f8E(ptr align 8 @alloc_23540351cb5073e2a42963b35533a5eb) #22
  unreachable

bb8:                                              ; preds = %bb7
  store i32 %_20.0, ptr %dec_value, align 4
  %6 = load i32, ptr %base, align 4
  %7 = call { i32, i1 } @llvm.smul.with.overflow.i32(i32 %6, i32 8)
  %_21.0 = extractvalue { i32, i1 } %7, 0
  %_21.1 = extractvalue { i32, i1 } %7, 1
  br i1 %_21.1, label %panic4, label %bb9

panic3:                                           ; preds = %bb7
; call core::panicking::panic_const::panic_const_add_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_b2cde7e643744d81bf13be09050247f7) #22
  unreachable

bb9:                                              ; preds = %bb8
  store i32 %_21.0, ptr %base, align 4
  br label %bb1

panic4:                                           ; preds = %bb8
; call core::panicking::panic_const::panic_const_mul_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_mul_overflow17h554ac164c12099f8E(ptr align 8 @alloc_fbaee2031c50cc1634af2910703327db) #22
  unreachable
}

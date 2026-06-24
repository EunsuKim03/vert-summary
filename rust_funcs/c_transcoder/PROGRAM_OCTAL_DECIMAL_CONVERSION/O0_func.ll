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
  %_5 = icmp sgt i32 %_6, 0
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
  %_13 = load i32, ptr %temp, align 4
  %_16 = icmp eq i32 %_13, -2147483648
  %_17 = and i1 false, %_16
  br i1 %_17, label %panic1, label %bb6

panic:                                            ; preds = %bb2
; call core::panicking::panic_const::panic_const_rem_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_rem_overflow17h4aab8182a78c82f8E(ptr align 8 @alloc_4173f7e6436e51c0053fc48f70bb87dd) #22
  unreachable

bb6:                                              ; preds = %bb4
  %0 = sdiv i32 %_13, 10
  store i32 %0, ptr %temp, align 4
  %_19 = load i32, ptr %base, align 4
  %1 = call { i32, i1 } @llvm.smul.with.overflow.i32(i32 %last_digit, i32 %_19)
  %_20.0 = extractvalue { i32, i1 } %1, 0
  %_20.1 = extractvalue { i32, i1 } %1, 1
  br i1 %_20.1, label %panic2, label %bb7

panic1:                                           ; preds = %bb4
; call core::panicking::panic_const::panic_const_div_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_div_overflow17hde5ac990ac871ee2E(ptr align 8 @alloc_84cafe1f748b80e74789023c5d53b77c) #22
  unreachable

bb7:                                              ; preds = %bb6
  %2 = load i32, ptr %dec_value, align 4
  %3 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %2, i32 %_20.0)
  %_21.0 = extractvalue { i32, i1 } %3, 0
  %_21.1 = extractvalue { i32, i1 } %3, 1
  br i1 %_21.1, label %panic3, label %bb8

panic2:                                           ; preds = %bb6
; call core::panicking::panic_const::panic_const_mul_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_mul_overflow17h554ac164c12099f8E(ptr align 8 @alloc_d4c3eb2e823cc4adc8508e3bccd9c0df) #22
  unreachable

bb8:                                              ; preds = %bb7
  store i32 %_21.0, ptr %dec_value, align 4
  %_22 = load i32, ptr %base, align 4
  %4 = call { i32, i1 } @llvm.smul.with.overflow.i32(i32 %_22, i32 8)
  %_23.0 = extractvalue { i32, i1 } %4, 0
  %_23.1 = extractvalue { i32, i1 } %4, 1
  br i1 %_23.1, label %panic4, label %bb9

panic3:                                           ; preds = %bb7
; call core::panicking::panic_const::panic_const_add_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_118c02329659d10eec5478444951f4cd) #22
  unreachable

bb9:                                              ; preds = %bb8
  store i32 %_23.0, ptr %base, align 4
  br label %bb1

panic4:                                           ; preds = %bb8
; call core::panicking::panic_const::panic_const_mul_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_mul_overflow17h554ac164c12099f8E(ptr align 8 @alloc_6929346589cf5db9ea6a479179657fb3) #22
  unreachable
}

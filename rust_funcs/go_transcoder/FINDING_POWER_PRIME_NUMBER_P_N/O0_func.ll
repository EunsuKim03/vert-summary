define i32 @f_gold(i32 %n, i32 %p) unnamed_addr #3 {
start:
  %temp = alloca [4 x i8], align 4
  %ans = alloca [4 x i8], align 4
  store i32 0, ptr %ans, align 4
  store i32 %p, ptr %temp, align 4
  br label %bb1

bb1:                                              ; preds = %bb6, %start
  %_6 = load i32, ptr %temp, align 4
  %_5 = icmp sle i32 %_6, %n
  br i1 %_5, label %bb2, label %bb7

bb7:                                              ; preds = %bb1
  %_0 = load i32, ptr %ans, align 4
  ret i32 %_0

bb2:                                              ; preds = %bb1
  %_8 = load i32, ptr %temp, align 4
  %_9 = icmp eq i32 %_8, 0
  br i1 %_9, label %panic, label %bb3

bb3:                                              ; preds = %bb2
  %_10 = icmp eq i32 %_8, -1
  %_11 = icmp eq i32 %n, -2147483648
  %_12 = and i1 %_10, %_11
  br i1 %_12, label %panic1, label %bb4

panic:                                            ; preds = %bb2
; call core::panicking::panic_const::panic_const_div_by_zero
  call void @_ZN4core9panicking11panic_const23panic_const_div_by_zero17h9a45e37423e1c559E(ptr align 8 @alloc_3edc6a6c2a66225d508aff611d8f15aa) #22
  unreachable

bb4:                                              ; preds = %bb3
  %_7 = sdiv i32 %n, %_8
  %0 = load i32, ptr %ans, align 4
  %1 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %0, i32 %_7)
  %_13.0 = extractvalue { i32, i1 } %1, 0
  %_13.1 = extractvalue { i32, i1 } %1, 1
  br i1 %_13.1, label %panic2, label %bb5

panic1:                                           ; preds = %bb3
; call core::panicking::panic_const::panic_const_div_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_div_overflow17hde5ac990ac871ee2E(ptr align 8 @alloc_3edc6a6c2a66225d508aff611d8f15aa) #22
  unreachable

bb5:                                              ; preds = %bb4
  store i32 %_13.0, ptr %ans, align 4
  %_14 = load i32, ptr %temp, align 4
  %2 = call { i32, i1 } @llvm.smul.with.overflow.i32(i32 %_14, i32 %p)
  %_15.0 = extractvalue { i32, i1 } %2, 0
  %_15.1 = extractvalue { i32, i1 } %2, 1
  br i1 %_15.1, label %panic3, label %bb6

panic2:                                           ; preds = %bb4
; call core::panicking::panic_const::panic_const_add_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_35337bda094f774ea965df0e5ff2b4f3) #22
  unreachable

bb6:                                              ; preds = %bb5
  store i32 %_15.0, ptr %temp, align 4
  br label %bb1

panic3:                                           ; preds = %bb5
; call core::panicking::panic_const::panic_const_mul_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_mul_overflow17h554ac164c12099f8E(ptr align 8 @alloc_e5dc3c8ca1179b52c50c538b13d69a09) #22
  unreachable
}

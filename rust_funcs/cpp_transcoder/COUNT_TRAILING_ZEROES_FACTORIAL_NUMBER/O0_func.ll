define i32 @f_gold(i32 %n) unnamed_addr #3 {
start:
  %i = alloca [4 x i8], align 4
  %count = alloca [4 x i8], align 4
  store i32 0, ptr %count, align 4
  store i32 5, ptr %i, align 4
  br label %bb1

bb1:                                              ; preds = %bb8, %start
  %_6 = load i32, ptr %i, align 4
  %_7 = icmp eq i32 %_6, 0
  br i1 %_7, label %panic, label %bb2

bb2:                                              ; preds = %bb1
  %_8 = icmp eq i32 %_6, -1
  %_9 = icmp eq i32 %n, -2147483648
  %_10 = and i1 %_8, %_9
  br i1 %_10, label %panic1, label %bb3

panic:                                            ; preds = %bb1
; call core::panicking::panic_const::panic_const_div_by_zero
  call void @_ZN4core9panicking11panic_const23panic_const_div_by_zero17h9a45e37423e1c559E(ptr align 8 @alloc_502c3ab8c693e4b7ab9d21689631a1c1) #22
  unreachable

bb3:                                              ; preds = %bb2
  %_5 = sdiv i32 %n, %_6
  %_4 = icmp sge i32 %_5, 1
  br i1 %_4, label %bb4, label %bb9

panic1:                                           ; preds = %bb2
; call core::panicking::panic_const::panic_const_div_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_div_overflow17hde5ac990ac871ee2E(ptr align 8 @alloc_502c3ab8c693e4b7ab9d21689631a1c1) #22
  unreachable

bb9:                                              ; preds = %bb3
  %_0 = load i32, ptr %count, align 4
  ret i32 %_0

bb4:                                              ; preds = %bb3
  %_12 = load i32, ptr %i, align 4
  %_13 = icmp eq i32 %_12, 0
  br i1 %_13, label %panic2, label %bb5

bb5:                                              ; preds = %bb4
  %_14 = icmp eq i32 %_12, -1
  %_15 = icmp eq i32 %n, -2147483648
  %_16 = and i1 %_14, %_15
  br i1 %_16, label %panic3, label %bb6

panic2:                                           ; preds = %bb4
; call core::panicking::panic_const::panic_const_div_by_zero
  call void @_ZN4core9panicking11panic_const23panic_const_div_by_zero17h9a45e37423e1c559E(ptr align 8 @alloc_6e199056737b5db578d27f0fca9137fd) #22
  unreachable

bb6:                                              ; preds = %bb5
  %_11 = sdiv i32 %n, %_12
  %0 = load i32, ptr %count, align 4
  %1 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %0, i32 %_11)
  %_17.0 = extractvalue { i32, i1 } %1, 0
  %_17.1 = extractvalue { i32, i1 } %1, 1
  br i1 %_17.1, label %panic4, label %bb7

panic3:                                           ; preds = %bb5
; call core::panicking::panic_const::panic_const_div_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_div_overflow17hde5ac990ac871ee2E(ptr align 8 @alloc_6e199056737b5db578d27f0fca9137fd) #22
  unreachable

bb7:                                              ; preds = %bb6
  store i32 %_17.0, ptr %count, align 4
  %2 = load i32, ptr %i, align 4
  %3 = call { i32, i1 } @llvm.smul.with.overflow.i32(i32 %2, i32 5)
  %_18.0 = extractvalue { i32, i1 } %3, 0
  %_18.1 = extractvalue { i32, i1 } %3, 1
  br i1 %_18.1, label %panic5, label %bb8

panic4:                                           ; preds = %bb6
; call core::panicking::panic_const::panic_const_add_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_daf857e5a842a0f4f31b3c5e8cdb9e8d) #22
  unreachable

bb8:                                              ; preds = %bb7
  store i32 %_18.0, ptr %i, align 4
  br label %bb1

panic5:                                           ; preds = %bb7
; call core::panicking::panic_const::panic_const_mul_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_mul_overflow17h554ac164c12099f8E(ptr align 8 @alloc_d9dd5c8b6c1cdd435f9c65082f21d038) #22
  unreachable
}

define i32 @f_gold(i32 %0) unnamed_addr #3 {
start:
  %count = alloca [4 x i8], align 4
  %_0 = alloca [4 x i8], align 4
  %n = alloca [4 x i8], align 4
  store i32 %0, ptr %n, align 4
  store i32 0, ptr %count, align 4
  %_4 = load i32, ptr %n, align 4
  %_3 = icmp ugt i32 %_4, 0
  br i1 %_3, label %bb1, label %bb12

bb12:                                             ; preds = %bb2, %start
  store i32 0, ptr %_0, align 4
  br label %bb13

bb1:                                              ; preds = %start
  %_7 = load i32, ptr %n, align 4
  %_9 = load i32, ptr %n, align 4
  %_10.0 = sub i32 %_9, 1
  %_10.1 = icmp ult i32 %_9, 1
  br i1 %_10.1, label %panic, label %bb2

bb2:                                              ; preds = %bb1
  %_6 = and i32 %_7, %_10.0
  %_5 = icmp eq i32 %_6, 0
  br i1 %_5, label %bb3, label %bb12

panic:                                            ; preds = %bb1
; call core::panicking::panic_const::panic_const_sub_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_sub_overflow17h134cc1a7f93654deE(ptr align 8 @alloc_0d8634e00f18ab17ee92c66e1ca080e3) #22
  unreachable

bb3:                                              ; preds = %bb6, %bb2
  %_12 = load i32, ptr %n, align 4
  %_11 = icmp ugt i32 %_12, 1
  br i1 %_11, label %bb4, label %bb7

bb13:                                             ; preds = %bb10, %bb11, %bb12
  %1 = load i32, ptr %_0, align 4
  ret i32 %1

bb7:                                              ; preds = %bb3
  %_18 = load i32, ptr %count, align 4
  %_21 = icmp eq i32 %_18, -2147483648
  %_22 = and i1 false, %_21
  br i1 %_22, label %panic1, label %bb9

bb4:                                              ; preds = %bb3
  %2 = load i32, ptr %n, align 4
  %3 = lshr i32 %2, 1
  store i32 %3, ptr %n, align 4
  %4 = load i32, ptr %count, align 4
  %5 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %4, i32 1)
  %_15.0 = extractvalue { i32, i1 } %5, 0
  %_15.1 = extractvalue { i32, i1 } %5, 1
  br i1 %_15.1, label %panic2, label %bb6

bb9:                                              ; preds = %bb7
  %_17 = srem i32 %_18, 2
  %_16 = icmp eq i32 %_17, 0
  br i1 %_16, label %bb10, label %bb11

panic1:                                           ; preds = %bb7
; call core::panicking::panic_const::panic_const_rem_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_rem_overflow17h4aab8182a78c82f8E(ptr align 8 @alloc_06b1d9a805ac6a6872c66fef5f0d34d5) #22
  unreachable

bb11:                                             ; preds = %bb9
  store i32 0, ptr %_0, align 4
  br label %bb13

bb10:                                             ; preds = %bb9
  store i32 1, ptr %_0, align 4
  br label %bb13

bb6:                                              ; preds = %bb4
  store i32 %_15.0, ptr %count, align 4
  br label %bb3

panic2:                                           ; preds = %bb4
; call core::panicking::panic_const::panic_const_add_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_80b9822b94c8e40e39fa11bdf16481fc) #22
  unreachable
}

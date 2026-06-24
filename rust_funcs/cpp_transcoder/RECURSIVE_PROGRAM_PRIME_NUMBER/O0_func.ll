define i32 @f_gold(i32 %n, i32 %i) unnamed_addr #3 {
start:
  %_0 = alloca [4 x i8], align 4
  %_3 = icmp sle i32 %n, 2
  br i1 %_3, label %bb1, label %bb4

bb4:                                              ; preds = %start
  %_7 = icmp eq i32 %i, 0
  br i1 %_7, label %panic, label %bb5

bb1:                                              ; preds = %start
  %_4 = icmp eq i32 %n, 2
  br i1 %_4, label %bb2, label %bb3

bb5:                                              ; preds = %bb4
  %_8 = icmp eq i32 %i, -1
  %_9 = icmp eq i32 %n, -2147483648
  %_10 = and i1 %_8, %_9
  br i1 %_10, label %panic1, label %bb6

panic:                                            ; preds = %bb4
; call core::panicking::panic_const::panic_const_rem_by_zero
  call void @_ZN4core9panicking11panic_const23panic_const_rem_by_zero17h68b8e0645961a790E(ptr align 8 @alloc_c49abafdd92a391b2e58d85772acf06d) #22
  unreachable

bb6:                                              ; preds = %bb5
  %_6 = srem i32 %n, %i
  %_5 = icmp eq i32 %_6, 0
  br i1 %_5, label %bb7, label %bb8

panic1:                                           ; preds = %bb5
; call core::panicking::panic_const::panic_const_rem_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_rem_overflow17h4aab8182a78c82f8E(ptr align 8 @alloc_c49abafdd92a391b2e58d85772acf06d) #22
  unreachable

bb8:                                              ; preds = %bb6
  %0 = call { i32, i1 } @llvm.smul.with.overflow.i32(i32 %i, i32 %i)
  %_13.0 = extractvalue { i32, i1 } %0, 0
  %_13.1 = extractvalue { i32, i1 } %0, 1
  br i1 %_13.1, label %panic2, label %bb9

bb7:                                              ; preds = %bb6
  store i32 0, ptr %_0, align 4
  br label %bb13

bb9:                                              ; preds = %bb8
  %_11 = icmp sgt i32 %_13.0, %n
  br i1 %_11, label %bb10, label %bb11

panic2:                                           ; preds = %bb8
; call core::panicking::panic_const::panic_const_mul_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_mul_overflow17h554ac164c12099f8E(ptr align 8 @alloc_91f508dcee1f5ef89fe550c7b4319f67) #22
  unreachable

bb11:                                             ; preds = %bb9
  %1 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %i, i32 1)
  %_15.0 = extractvalue { i32, i1 } %1, 0
  %_15.1 = extractvalue { i32, i1 } %1, 1
  br i1 %_15.1, label %panic3, label %bb12

bb10:                                             ; preds = %bb9
  store i32 1, ptr %_0, align 4
  br label %bb13

bb12:                                             ; preds = %bb11
  %2 = call i32 @f_gold(i32 %n, i32 %_15.0)
  store i32 %2, ptr %_0, align 4
  br label %bb13

panic3:                                           ; preds = %bb11
; call core::panicking::panic_const::panic_const_add_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_a54eb0d3322edd40fc1482e471f2e1bd) #22
  unreachable

bb13:                                             ; preds = %bb2, %bb3, %bb7, %bb10, %bb12
  %3 = load i32, ptr %_0, align 4
  ret i32 %3

bb3:                                              ; preds = %bb1
  store i32 0, ptr %_0, align 4
  br label %bb13

bb2:                                              ; preds = %bb1
  store i32 1, ptr %_0, align 4
  br label %bb13
}

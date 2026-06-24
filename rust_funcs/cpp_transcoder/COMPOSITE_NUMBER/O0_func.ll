define i32 @f_gold(i32 %n) unnamed_addr #3 {
start:
  %i = alloca [4 x i8], align 4
  %_0 = alloca [4 x i8], align 4
  %_2 = icmp sle i32 %n, 1
  br i1 %_2, label %bb1, label %bb2

bb2:                                              ; preds = %start
  %_3 = icmp sle i32 %n, 3
  br i1 %_3, label %bb3, label %bb4

bb1:                                              ; preds = %start
  store i32 0, ptr %_0, align 4
  br label %bb25

bb4:                                              ; preds = %bb2
  %_8 = icmp eq i32 %n, -2147483648
  %_9 = and i1 false, %_8
  br i1 %_9, label %panic, label %bb6

bb3:                                              ; preds = %bb2
  store i32 0, ptr %_0, align 4
  br label %bb25

bb6:                                              ; preds = %bb4
  %_5 = srem i32 %n, 2
  %_4 = icmp eq i32 %_5, 0
  br i1 %_4, label %bb10, label %bb7

panic:                                            ; preds = %bb4
; call core::panicking::panic_const::panic_const_rem_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_rem_overflow17h4aab8182a78c82f8E(ptr align 8 @alloc_ce97fb409c528c2ed1bd135f37423859) #22
  unreachable

bb7:                                              ; preds = %bb6
  %_14 = icmp eq i32 %n, -2147483648
  %_15 = and i1 false, %_14
  br i1 %_15, label %panic1, label %bb9

bb10:                                             ; preds = %bb9, %bb6
  store i32 1, ptr %_0, align 4
  br label %bb25

bb9:                                              ; preds = %bb7
  %_11 = srem i32 %n, 3
  %_10 = icmp eq i32 %_11, 0
  br i1 %_10, label %bb10, label %bb11

panic1:                                           ; preds = %bb7
; call core::panicking::panic_const::panic_const_rem_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_rem_overflow17h4aab8182a78c82f8E(ptr align 8 @alloc_471837a80afd324b312576133c4a5212) #22
  unreachable

bb11:                                             ; preds = %bb9
  store i32 5, ptr %i, align 4
  br label %bb12

bb12:                                             ; preds = %bb23, %bb11
  %_19 = load i32, ptr %i, align 4
  %_20 = load i32, ptr %i, align 4
  %0 = call { i32, i1 } @llvm.smul.with.overflow.i32(i32 %_19, i32 %_20)
  %_21.0 = extractvalue { i32, i1 } %0, 0
  %_21.1 = extractvalue { i32, i1 } %0, 1
  br i1 %_21.1, label %panic2, label %bb13

bb13:                                             ; preds = %bb12
  %_17 = icmp sle i32 %_21.0, %n
  br i1 %_17, label %bb14, label %bb24

panic2:                                           ; preds = %bb12
; call core::panicking::panic_const::panic_const_mul_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_mul_overflow17h554ac164c12099f8E(ptr align 8 @alloc_666451df5f15280e62edef8dec898a1e) #22
  unreachable

bb24:                                             ; preds = %bb13
  store i32 0, ptr %_0, align 4
  br label %bb25

bb14:                                             ; preds = %bb13
  %_24 = load i32, ptr %i, align 4
  %_25 = icmp eq i32 %_24, 0
  br i1 %_25, label %panic3, label %bb15

bb25:                                             ; preds = %bb1, %bb3, %bb10, %bb21, %bb24
  %1 = load i32, ptr %_0, align 4
  ret i32 %1

bb15:                                             ; preds = %bb14
  %_26 = icmp eq i32 %_24, -1
  %_27 = icmp eq i32 %n, -2147483648
  %_28 = and i1 %_26, %_27
  br i1 %_28, label %panic4, label %bb16

panic3:                                           ; preds = %bb14
; call core::panicking::panic_const::panic_const_rem_by_zero
  call void @_ZN4core9panicking11panic_const23panic_const_rem_by_zero17h68b8e0645961a790E(ptr align 8 @alloc_29aa1f8934facc9f0f3a6894236b10f3) #22
  unreachable

bb16:                                             ; preds = %bb15
  %_23 = srem i32 %n, %_24
  %_22 = icmp eq i32 %_23, 0
  br i1 %_22, label %bb21, label %bb17

panic4:                                           ; preds = %bb15
; call core::panicking::panic_const::panic_const_rem_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_rem_overflow17h4aab8182a78c82f8E(ptr align 8 @alloc_29aa1f8934facc9f0f3a6894236b10f3) #22
  unreachable

bb17:                                             ; preds = %bb16
  %_32 = load i32, ptr %i, align 4
  %2 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %_32, i32 2)
  %_33.0 = extractvalue { i32, i1 } %2, 0
  %_33.1 = extractvalue { i32, i1 } %2, 1
  br i1 %_33.1, label %panic5, label %bb18

bb21:                                             ; preds = %bb20, %bb16
  store i32 1, ptr %_0, align 4
  br label %bb25

bb18:                                             ; preds = %bb17
  %_34 = icmp eq i32 %_33.0, 0
  br i1 %_34, label %panic6, label %bb19

panic5:                                           ; preds = %bb17
; call core::panicking::panic_const::panic_const_add_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_9ab97750cdd4f3accc86c79f3809d0ac) #22
  unreachable

bb19:                                             ; preds = %bb18
  %_35 = icmp eq i32 %_33.0, -1
  %_36 = icmp eq i32 %n, -2147483648
  %_37 = and i1 %_35, %_36
  br i1 %_37, label %panic7, label %bb20

panic6:                                           ; preds = %bb18
; call core::panicking::panic_const::panic_const_rem_by_zero
  call void @_ZN4core9panicking11panic_const23panic_const_rem_by_zero17h68b8e0645961a790E(ptr align 8 @alloc_b0acc73d58f1bf67b719d6ee3b59644a) #22
  unreachable

bb20:                                             ; preds = %bb19
  %_30 = srem i32 %n, %_33.0
  %_29 = icmp eq i32 %_30, 0
  br i1 %_29, label %bb21, label %bb22

panic7:                                           ; preds = %bb19
; call core::panicking::panic_const::panic_const_rem_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_rem_overflow17h4aab8182a78c82f8E(ptr align 8 @alloc_b0acc73d58f1bf67b719d6ee3b59644a) #22
  unreachable

bb22:                                             ; preds = %bb20
  %3 = load i32, ptr %i, align 4
  %4 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %3, i32 6)
  %_38.0 = extractvalue { i32, i1 } %4, 0
  %_38.1 = extractvalue { i32, i1 } %4, 1
  br i1 %_38.1, label %panic8, label %bb23

bb23:                                             ; preds = %bb22
  store i32 %_38.0, ptr %i, align 4
  br label %bb12

panic8:                                           ; preds = %bb22
; call core::panicking::panic_const::panic_const_add_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_3ebad19dcb95834d4aee174f8dbd82d7) #22
  unreachable
}

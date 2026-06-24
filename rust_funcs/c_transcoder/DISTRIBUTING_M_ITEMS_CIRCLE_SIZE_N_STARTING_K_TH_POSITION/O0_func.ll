define i32 @f_gold(i32 %n, i32 %m, i32 %k) unnamed_addr #3 {
start:
  %_0 = alloca [4 x i8], align 4
  %0 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %n, i32 %k)
  %_7.0 = extractvalue { i32, i1 } %0, 0
  %_7.1 = extractvalue { i32, i1 } %0, 1
  br i1 %_7.1, label %panic, label %bb1

bb1:                                              ; preds = %start
  %1 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %_7.0, i32 1)
  %_8.0 = extractvalue { i32, i1 } %1, 0
  %_8.1 = extractvalue { i32, i1 } %1, 1
  br i1 %_8.1, label %panic1, label %bb2

panic:                                            ; preds = %start
; call core::panicking::panic_const::panic_const_sub_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_sub_overflow17h134cc1a7f93654deE(ptr align 8 @alloc_d191588c6c4f9a808b6cd39b50688fe4) #22
  unreachable

bb2:                                              ; preds = %bb1
  %_4 = icmp sle i32 %m, %_8.0
  br i1 %_4, label %bb3, label %bb6

panic1:                                           ; preds = %bb1
; call core::panicking::panic_const::panic_const_add_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_d191588c6c4f9a808b6cd39b50688fe4) #22
  unreachable

bb6:                                              ; preds = %bb2
  %2 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %n, i32 %k)
  %_15.0 = extractvalue { i32, i1 } %2, 0
  %_15.1 = extractvalue { i32, i1 } %2, 1
  br i1 %_15.1, label %panic2, label %bb7

bb3:                                              ; preds = %bb2
  %3 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %m, i32 %k)
  %_10.0 = extractvalue { i32, i1 } %3, 0
  %_10.1 = extractvalue { i32, i1 } %3, 1
  br i1 %_10.1, label %panic9, label %bb4

bb7:                                              ; preds = %bb6
  %4 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %_15.0, i32 1)
  %_16.0 = extractvalue { i32, i1 } %4, 0
  %_16.1 = extractvalue { i32, i1 } %4, 1
  br i1 %_16.1, label %panic3, label %bb8

panic2:                                           ; preds = %bb6
; call core::panicking::panic_const::panic_const_sub_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_sub_overflow17h134cc1a7f93654deE(ptr align 8 @alloc_1c7411faa621d27eb0998827eccf5330) #22
  unreachable

bb8:                                              ; preds = %bb7
  %5 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %m, i32 %_16.0)
  %_17.0 = extractvalue { i32, i1 } %5, 0
  %_17.1 = extractvalue { i32, i1 } %5, 1
  br i1 %_17.1, label %panic4, label %bb9

panic3:                                           ; preds = %bb7
; call core::panicking::panic_const::panic_const_add_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_179bf64553ba9224cd09adf63502bfc7) #22
  unreachable

bb9:                                              ; preds = %bb8
  %_20 = icmp eq i32 %n, 0
  br i1 %_20, label %panic5, label %bb10

panic4:                                           ; preds = %bb8
; call core::panicking::panic_const::panic_const_sub_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_sub_overflow17h134cc1a7f93654deE(ptr align 8 @alloc_d71d1aee64038ad1535b6e3e25ed5a5c) #22
  unreachable

bb10:                                             ; preds = %bb9
  %_21 = icmp eq i32 %n, -1
  %_22 = icmp eq i32 %_17.0, -2147483648
  %_23 = and i1 %_21, %_22
  br i1 %_23, label %panic6, label %bb11

panic5:                                           ; preds = %bb9
; call core::panicking::panic_const::panic_const_rem_by_zero
  call void @_ZN4core9panicking11panic_const23panic_const_rem_by_zero17h68b8e0645961a790E(ptr align 8 @alloc_baea9dfa93f05725d569fd8ab86517b3) #22
  unreachable

bb11:                                             ; preds = %bb10
  %_19 = srem i32 %_17.0, %n
  %_18 = icmp eq i32 %_19, 0
  br i1 %_18, label %bb12, label %bb13

panic6:                                           ; preds = %bb10
; call core::panicking::panic_const::panic_const_rem_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_rem_overflow17h4aab8182a78c82f8E(ptr align 8 @alloc_baea9dfa93f05725d569fd8ab86517b3) #22
  unreachable

bb13:                                             ; preds = %bb11
  %_24 = icmp eq i32 %n, 0
  br i1 %_24, label %panic7, label %bb14

bb12:                                             ; preds = %bb11
  store i32 %n, ptr %_0, align 4
  br label %bb16

bb14:                                             ; preds = %bb13
  %_25 = icmp eq i32 %n, -1
  %_26 = icmp eq i32 %_17.0, -2147483648
  %_27 = and i1 %_25, %_26
  br i1 %_27, label %panic8, label %bb15

panic7:                                           ; preds = %bb13
; call core::panicking::panic_const::panic_const_rem_by_zero
  call void @_ZN4core9panicking11panic_const23panic_const_rem_by_zero17h68b8e0645961a790E(ptr align 8 @alloc_e2fd33a6f5928dad5b869023cdce3c6e) #22
  unreachable

bb15:                                             ; preds = %bb14
  %6 = srem i32 %_17.0, %n
  store i32 %6, ptr %_0, align 4
  br label %bb16

panic8:                                           ; preds = %bb14
; call core::panicking::panic_const::panic_const_rem_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_rem_overflow17h4aab8182a78c82f8E(ptr align 8 @alloc_e2fd33a6f5928dad5b869023cdce3c6e) #22
  unreachable

bb16:                                             ; preds = %bb5, %bb12, %bb15
  %7 = load i32, ptr %_0, align 4
  ret i32 %7

bb4:                                              ; preds = %bb3
  %8 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %_10.0, i32 1)
  %_11.0 = extractvalue { i32, i1 } %8, 0
  %_11.1 = extractvalue { i32, i1 } %8, 1
  br i1 %_11.1, label %panic10, label %bb5

panic9:                                           ; preds = %bb3
; call core::panicking::panic_const::panic_const_add_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_5f09c2d9aafbd0c57afe266d2ec40669) #22
  unreachable

bb5:                                              ; preds = %bb4
  store i32 %_11.0, ptr %_0, align 4
  br label %bb16

panic10:                                          ; preds = %bb4
; call core::panicking::panic_const::panic_const_sub_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_sub_overflow17h134cc1a7f93654deE(ptr align 8 @alloc_5f09c2d9aafbd0c57afe266d2ec40669) #22
  unreachable
}

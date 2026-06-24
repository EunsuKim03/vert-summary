define i32 @f_gold(i32 %n) unnamed_addr #3 {
start:
  %po = alloca [4 x i8], align 4
  %_0 = alloca [4 x i8], align 4
  %_2 = icmp slt i32 %n, 3
  br i1 %_2, label %bb1, label %bb2

bb2:                                              ; preds = %start
  %_3 = icmp sge i32 %n, 3
  br i1 %_3, label %bb3, label %bb6

bb1:                                              ; preds = %start
  store i32 %n, ptr %_0, align 4
  br label %bb29

bb6:                                              ; preds = %bb3, %bb2
  store i32 1, ptr %po, align 4
  br label %bb7

bb3:                                              ; preds = %bb2
  %_4 = icmp slt i32 %n, 10
  br i1 %_4, label %bb4, label %bb6

bb4:                                              ; preds = %bb3
  %0 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %n, i32 1)
  %_5.0 = extractvalue { i32, i1 } %0, 0
  %_5.1 = extractvalue { i32, i1 } %0, 1
  br i1 %_5.1, label %panic13, label %bb5

bb7:                                              ; preds = %bb11, %bb6
  %_9 = load i32, ptr %po, align 4
  %_10 = icmp eq i32 %_9, 0
  br i1 %_10, label %panic, label %bb8

bb8:                                              ; preds = %bb7
  %_11 = icmp eq i32 %_9, -1
  %_12 = icmp eq i32 %n, -2147483648
  %_13 = and i1 %_11, %_12
  br i1 %_13, label %panic1, label %bb9

panic:                                            ; preds = %bb7
; call core::panicking::panic_const::panic_const_div_by_zero
  call void @_ZN4core9panicking11panic_const23panic_const_div_by_zero17h9a45e37423e1c559E(ptr align 8 @alloc_35663117fcaffa818b304a24a6c449c9) #22
  unreachable

bb9:                                              ; preds = %bb8
  %_8 = sdiv i32 %n, %_9
  %_7 = icmp sgt i32 %_8, 9
  br i1 %_7, label %bb10, label %bb12

panic1:                                           ; preds = %bb8
; call core::panicking::panic_const::panic_const_div_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_div_overflow17hde5ac990ac871ee2E(ptr align 8 @alloc_35663117fcaffa818b304a24a6c449c9) #22
  unreachable

bb12:                                             ; preds = %bb9
  %_16 = load i32, ptr %po, align 4
  %_17 = icmp eq i32 %_16, 0
  br i1 %_17, label %panic2, label %bb13

bb10:                                             ; preds = %bb9
  %1 = load i32, ptr %po, align 4
  %2 = call { i32, i1 } @llvm.smul.with.overflow.i32(i32 %1, i32 10)
  %_14.0 = extractvalue { i32, i1 } %2, 0
  %_14.1 = extractvalue { i32, i1 } %2, 1
  br i1 %_14.1, label %panic12, label %bb11

bb13:                                             ; preds = %bb12
  %_18 = icmp eq i32 %_16, -1
  %_19 = icmp eq i32 %n, -2147483648
  %_20 = and i1 %_18, %_19
  br i1 %_20, label %panic3, label %bb14

panic2:                                           ; preds = %bb12
; call core::panicking::panic_const::panic_const_div_by_zero
  call void @_ZN4core9panicking11panic_const23panic_const_div_by_zero17h9a45e37423e1c559E(ptr align 8 @alloc_8b4c182fc30087104ace3a16d82e6b0a) #22
  unreachable

bb14:                                             ; preds = %bb13
  %msd = sdiv i32 %n, %_16
  %_21 = icmp ne i32 %msd, 3
  br i1 %_21, label %bb15, label %bb26

panic3:                                           ; preds = %bb13
; call core::panicking::panic_const::panic_const_div_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_div_overflow17hde5ac990ac871ee2E(ptr align 8 @alloc_8b4c182fc30087104ace3a16d82e6b0a) #22
  unreachable

bb26:                                             ; preds = %bb14
  %_42 = load i32, ptr %po, align 4
  %3 = call { i32, i1 } @llvm.smul.with.overflow.i32(i32 %msd, i32 %_42)
  %_43.0 = extractvalue { i32, i1 } %3, 0
  %_43.1 = extractvalue { i32, i1 } %3, 1
  br i1 %_43.1, label %panic4, label %bb27

bb15:                                             ; preds = %bb14
  %_24 = call i32 @f_gold(i32 %msd)
  %_27 = load i32, ptr %po, align 4
  %4 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %_27, i32 1)
  %_28.0 = extractvalue { i32, i1 } %4, 0
  %_28.1 = extractvalue { i32, i1 } %4, 1
  br i1 %_28.1, label %panic6, label %bb17

bb27:                                             ; preds = %bb26
  %5 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %_43.0, i32 1)
  %_44.0 = extractvalue { i32, i1 } %5, 0
  %_44.1 = extractvalue { i32, i1 } %5, 1
  br i1 %_44.1, label %panic5, label %bb28

panic4:                                           ; preds = %bb26
; call core::panicking::panic_const::panic_const_mul_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_mul_overflow17h554ac164c12099f8E(ptr align 8 @alloc_c34509f810ef4bc4fcf76c69e6bfee8f) #22
  unreachable

bb28:                                             ; preds = %bb27
  %6 = call i32 @f_gold(i32 %_44.0)
  store i32 %6, ptr %_0, align 4
  br label %bb29

panic5:                                           ; preds = %bb27
; call core::panicking::panic_const::panic_const_sub_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_sub_overflow17h134cc1a7f93654deE(ptr align 8 @alloc_c34509f810ef4bc4fcf76c69e6bfee8f) #22
  unreachable

bb29:                                             ; preds = %bb1, %bb5, %bb25, %bb28
  %7 = load i32, ptr %_0, align 4
  ret i32 %7

bb17:                                             ; preds = %bb15
  %_25 = call i32 @f_gold(i32 %_28.0)
  %8 = call { i32, i1 } @llvm.smul.with.overflow.i32(i32 %_24, i32 %_25)
  %_29.0 = extractvalue { i32, i1 } %8, 0
  %_29.1 = extractvalue { i32, i1 } %8, 1
  br i1 %_29.1, label %panic7, label %bb19

panic6:                                           ; preds = %bb15
; call core::panicking::panic_const::panic_const_sub_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_sub_overflow17h134cc1a7f93654deE(ptr align 8 @alloc_6fb82e88da8cea50cd8dadbb753744bb) #22
  unreachable

bb19:                                             ; preds = %bb17
  %_30 = call i32 @f_gold(i32 %msd)
  %9 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %_29.0, i32 %_30)
  %_31.0 = extractvalue { i32, i1 } %9, 0
  %_31.1 = extractvalue { i32, i1 } %9, 1
  br i1 %_31.1, label %panic8, label %bb21

panic7:                                           ; preds = %bb17
; call core::panicking::panic_const::panic_const_mul_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_mul_overflow17h554ac164c12099f8E(ptr align 8 @alloc_6bc398f1f65f1cfbaa34bc4e9b1c04b3) #22
  unreachable

bb21:                                             ; preds = %bb19
  %_34 = load i32, ptr %po, align 4
  %_35 = icmp eq i32 %_34, 0
  br i1 %_35, label %panic9, label %bb22

panic8:                                           ; preds = %bb19
; call core::panicking::panic_const::panic_const_add_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_6bc398f1f65f1cfbaa34bc4e9b1c04b3) #22
  unreachable

bb22:                                             ; preds = %bb21
  %_36 = icmp eq i32 %_34, -1
  %_37 = icmp eq i32 %n, -2147483648
  %_38 = and i1 %_36, %_37
  br i1 %_38, label %panic10, label %bb23

panic9:                                           ; preds = %bb21
; call core::panicking::panic_const::panic_const_rem_by_zero
  call void @_ZN4core9panicking11panic_const23panic_const_rem_by_zero17h68b8e0645961a790E(ptr align 8 @alloc_1713501c1feb4a1bca85e836c9093b1e) #22
  unreachable

bb23:                                             ; preds = %bb22
  %_33 = srem i32 %n, %_34
  %_32 = call i32 @f_gold(i32 %_33)
  %10 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %_31.0, i32 %_32)
  %_39.0 = extractvalue { i32, i1 } %10, 0
  %_39.1 = extractvalue { i32, i1 } %10, 1
  br i1 %_39.1, label %panic11, label %bb25

panic10:                                          ; preds = %bb22
; call core::panicking::panic_const::panic_const_rem_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_rem_overflow17h4aab8182a78c82f8E(ptr align 8 @alloc_1713501c1feb4a1bca85e836c9093b1e) #22
  unreachable

bb25:                                             ; preds = %bb23
  store i32 %_39.0, ptr %_0, align 4
  br label %bb29

panic11:                                          ; preds = %bb23
; call core::panicking::panic_const::panic_const_add_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_6bc398f1f65f1cfbaa34bc4e9b1c04b3) #22
  unreachable

bb11:                                             ; preds = %bb10
  store i32 %_14.0, ptr %po, align 4
  br label %bb7

panic12:                                          ; preds = %bb10
; call core::panicking::panic_const::panic_const_mul_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_mul_overflow17h554ac164c12099f8E(ptr align 8 @alloc_8a5f17d0dbd1b4f26cb7ad45803abc34) #22
  unreachable

bb5:                                              ; preds = %bb4
  store i32 %_5.0, ptr %_0, align 4
  br label %bb29

panic13:                                          ; preds = %bb4
; call core::panicking::panic_const::panic_const_sub_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_sub_overflow17h134cc1a7f93654deE(ptr align 8 @alloc_1200bd2963af6ead1cd601b478d29a4c) #22
  unreachable
}

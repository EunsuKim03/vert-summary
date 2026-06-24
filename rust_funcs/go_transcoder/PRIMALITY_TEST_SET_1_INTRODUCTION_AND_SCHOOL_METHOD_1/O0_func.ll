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
  br label %bb22

bb4:                                              ; preds = %bb2
  %_8 = icmp eq i32 %n, -2147483648
  %_9 = and i1 false, %_8
  br i1 %_9, label %panic, label %bb6

bb3:                                              ; preds = %bb2
  store i32 1, ptr %_0, align 4
  br label %bb22

bb6:                                              ; preds = %bb4
  %_5 = srem i32 %n, 2
  %_4 = icmp eq i32 %_5, 0
  br i1 %_4, label %bb10, label %bb7

panic:                                            ; preds = %bb4
; call core::panicking::panic_const::panic_const_rem_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_rem_overflow17h4aab8182a78c82f8E(ptr align 8 @alloc_b9695140fc1db415cb1dd0c6391f81ea) #22
  unreachable

bb7:                                              ; preds = %bb6
  %_14 = icmp eq i32 %n, -2147483648
  %_15 = and i1 false, %_14
  br i1 %_15, label %panic1, label %bb9

bb10:                                             ; preds = %bb9, %bb6
  store i32 0, ptr %_0, align 4
  br label %bb22

bb9:                                              ; preds = %bb7
  %_11 = srem i32 %n, 3
  %_10 = icmp eq i32 %_11, 0
  br i1 %_10, label %bb10, label %bb11

panic1:                                           ; preds = %bb7
; call core::panicking::panic_const::panic_const_rem_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_rem_overflow17h4aab8182a78c82f8E(ptr align 8 @alloc_beedd283c37ad4fd9a751dda40a46895) #22
  unreachable

bb11:                                             ; preds = %bb9
  store float 5.000000e+00, ptr %i, align 4
  br label %bb12

bb12:                                             ; preds = %bb20, %bb11
  %_19 = load float, ptr %i, align 4
  %_20 = load float, ptr %i, align 4
  %_18 = fmul float %_19, %_20
  %_21 = sitofp i32 %n to float
  %_17 = fcmp ole float %_18, %_21
  br i1 %_17, label %bb13, label %bb21

bb21:                                             ; preds = %bb12
  store i32 1, ptr %_0, align 4
  br label %bb22

bb13:                                             ; preds = %bb12
  %_25 = load float, ptr %i, align 4
  %_24 = call i32 @llvm.fptosi.sat.i32.f32(float %_25)
  %_26 = icmp eq i32 %_24, 0
  br i1 %_26, label %panic2, label %bb14

bb22:                                             ; preds = %bb1, %bb3, %bb10, %bb19, %bb21
  %0 = load i32, ptr %_0, align 4
  ret i32 %0

bb14:                                             ; preds = %bb13
  %_27 = icmp eq i32 %_24, -1
  %_28 = icmp eq i32 %n, -2147483648
  %_29 = and i1 %_27, %_28
  br i1 %_29, label %panic3, label %bb15

panic2:                                           ; preds = %bb13
; call core::panicking::panic_const::panic_const_rem_by_zero
  call void @_ZN4core9panicking11panic_const23panic_const_rem_by_zero17h68b8e0645961a790E(ptr align 8 @alloc_4bd3bcd70d9e237e3566d5acf5882ffc) #22
  unreachable

bb15:                                             ; preds = %bb14
  %_23 = srem i32 %n, %_24
  %_22 = icmp eq i32 %_23, 0
  br i1 %_22, label %bb19, label %bb16

panic3:                                           ; preds = %bb14
; call core::panicking::panic_const::panic_const_rem_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_rem_overflow17h4aab8182a78c82f8E(ptr align 8 @alloc_4bd3bcd70d9e237e3566d5acf5882ffc) #22
  unreachable

bb16:                                             ; preds = %bb15
  %_34 = load float, ptr %i, align 4
  %_33 = fadd float %_34, 2.000000e+00
  %_32 = call i32 @llvm.fptosi.sat.i32.f32(float %_33)
  %_35 = icmp eq i32 %_32, 0
  br i1 %_35, label %panic4, label %bb17

bb19:                                             ; preds = %bb18, %bb15
  store i32 0, ptr %_0, align 4
  br label %bb22

bb17:                                             ; preds = %bb16
  %_36 = icmp eq i32 %_32, -1
  %_37 = icmp eq i32 %n, -2147483648
  %_38 = and i1 %_36, %_37
  br i1 %_38, label %panic5, label %bb18

panic4:                                           ; preds = %bb16
; call core::panicking::panic_const::panic_const_rem_by_zero
  call void @_ZN4core9panicking11panic_const23panic_const_rem_by_zero17h68b8e0645961a790E(ptr align 8 @alloc_50b247bdcde7b6489f0cbf583ccaf959) #22
  unreachable

bb18:                                             ; preds = %bb17
  %_31 = srem i32 %n, %_32
  %_30 = icmp eq i32 %_31, 0
  br i1 %_30, label %bb19, label %bb20

panic5:                                           ; preds = %bb17
; call core::panicking::panic_const::panic_const_rem_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_rem_overflow17h4aab8182a78c82f8E(ptr align 8 @alloc_50b247bdcde7b6489f0cbf583ccaf959) #22
  unreachable

bb20:                                             ; preds = %bb18
  %1 = load float, ptr %i, align 4
  %2 = fadd float %1, 6.000000e+00
  store float %2, ptr %i, align 4
  br label %bb12
}

define i32 @f_gold(i32 %n) unnamed_addr #3 {
start:
  %_0 = alloca [4 x i8], align 4
  %_2 = icmp slt i32 %n, 4
  br i1 %_2, label %bb1, label %bb2

bb2:                                              ; preds = %start
  %_6 = icmp eq i32 %n, -2147483648
  %_7 = and i1 false, %_6
  br i1 %_7, label %panic, label %bb4

bb1:                                              ; preds = %start
  store i32 -1, ptr %_0, align 4
  br label %bb31

bb4:                                              ; preds = %bb2
  %rem = srem i32 %n, 4
  %_8 = icmp eq i32 %rem, 0
  br i1 %_8, label %bb5, label %bb8

panic:                                            ; preds = %bb2
; call core::panicking::panic_const::panic_const_rem_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_rem_overflow17h4aab8182a78c82f8E(ptr align 8 @alloc_100d79d5ce3e6e2e37a242709e4f8c7e) #22
  unreachable

bb8:                                              ; preds = %bb4
  %_13 = icmp eq i32 %rem, 1
  br i1 %_13, label %bb9, label %bb10

bb5:                                              ; preds = %bb4
  %_11 = icmp eq i32 %n, -2147483648
  %_12 = and i1 false, %_11
  br i1 %_12, label %panic10, label %bb7

bb10:                                             ; preds = %bb8
  %_23 = icmp eq i32 %rem, 2
  br i1 %_23, label %bb17, label %bb18

bb9:                                              ; preds = %bb8
  %_14 = icmp slt i32 %n, 9
  br i1 %_14, label %bb11, label %bb12

bb18:                                             ; preds = %bb10
  %_32 = icmp eq i32 %rem, 3
  br i1 %_32, label %bb23, label %bb24

bb17:                                             ; preds = %bb10
  %0 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %n, i32 6)
  %_26.0 = extractvalue { i32, i1 } %0, 0
  %_26.1 = extractvalue { i32, i1 } %0, 1
  br i1 %_26.1, label %panic4, label %bb19

bb24:                                             ; preds = %bb18
  store i32 -1, ptr %_0, align 4
  br label %bb31

bb23:                                             ; preds = %bb18
  %_33 = icmp slt i32 %n, 15
  br i1 %_33, label %bb25, label %bb26

bb31:                                             ; preds = %bb1, %bb7, %bb11, %bb16, %bb22, %bb25, %bb30, %bb24
  %1 = load i32, ptr %_0, align 4
  ret i32 %1

bb26:                                             ; preds = %bb23
  %2 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %n, i32 15)
  %_36.0 = extractvalue { i32, i1 } %2, 0
  %_36.1 = extractvalue { i32, i1 } %2, 1
  br i1 %_36.1, label %panic1, label %bb27

bb25:                                             ; preds = %bb23
  store i32 -1, ptr %_0, align 4
  br label %bb31

bb27:                                             ; preds = %bb26
  %_39 = icmp eq i32 %_36.0, -2147483648
  %_40 = and i1 false, %_39
  br i1 %_40, label %panic2, label %bb29

panic1:                                           ; preds = %bb26
; call core::panicking::panic_const::panic_const_sub_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_sub_overflow17h134cc1a7f93654deE(ptr align 8 @alloc_23487493217b2d9c6193845898fff97c) #22
  unreachable

bb29:                                             ; preds = %bb27
  %_34 = sdiv i32 %_36.0, 4
  %3 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %_34, i32 2)
  %_41.0 = extractvalue { i32, i1 } %3, 0
  %_41.1 = extractvalue { i32, i1 } %3, 1
  br i1 %_41.1, label %panic3, label %bb30

panic2:                                           ; preds = %bb27
; call core::panicking::panic_const::panic_const_div_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_div_overflow17hde5ac990ac871ee2E(ptr align 8 @alloc_23487493217b2d9c6193845898fff97c) #22
  unreachable

bb30:                                             ; preds = %bb29
  store i32 %_41.0, ptr %_0, align 4
  br label %bb31

panic3:                                           ; preds = %bb29
; call core::panicking::panic_const::panic_const_add_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_23487493217b2d9c6193845898fff97c) #22
  unreachable

bb19:                                             ; preds = %bb17
  %_29 = icmp eq i32 %_26.0, -2147483648
  %_30 = and i1 false, %_29
  br i1 %_30, label %panic5, label %bb21

panic4:                                           ; preds = %bb17
; call core::panicking::panic_const::panic_const_sub_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_sub_overflow17h134cc1a7f93654deE(ptr align 8 @alloc_34f6ce0138830b5111acc9570dd3e8a2) #22
  unreachable

bb21:                                             ; preds = %bb19
  %_24 = sdiv i32 %_26.0, 4
  %4 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %_24, i32 1)
  %_31.0 = extractvalue { i32, i1 } %4, 0
  %_31.1 = extractvalue { i32, i1 } %4, 1
  br i1 %_31.1, label %panic6, label %bb22

panic5:                                           ; preds = %bb19
; call core::panicking::panic_const::panic_const_div_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_div_overflow17hde5ac990ac871ee2E(ptr align 8 @alloc_34f6ce0138830b5111acc9570dd3e8a2) #22
  unreachable

bb22:                                             ; preds = %bb21
  store i32 %_31.0, ptr %_0, align 4
  br label %bb31

panic6:                                           ; preds = %bb21
; call core::panicking::panic_const::panic_const_add_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_34f6ce0138830b5111acc9570dd3e8a2) #22
  unreachable

bb12:                                             ; preds = %bb9
  %5 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %n, i32 9)
  %_17.0 = extractvalue { i32, i1 } %5, 0
  %_17.1 = extractvalue { i32, i1 } %5, 1
  br i1 %_17.1, label %panic7, label %bb13

bb11:                                             ; preds = %bb9
  store i32 -1, ptr %_0, align 4
  br label %bb31

bb13:                                             ; preds = %bb12
  %_20 = icmp eq i32 %_17.0, -2147483648
  %_21 = and i1 false, %_20
  br i1 %_21, label %panic8, label %bb15

panic7:                                           ; preds = %bb12
; call core::panicking::panic_const::panic_const_sub_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_sub_overflow17h134cc1a7f93654deE(ptr align 8 @alloc_c70ccdc1119630e88414f42fb64cc2fc) #22
  unreachable

bb15:                                             ; preds = %bb13
  %_15 = sdiv i32 %_17.0, 4
  %6 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %_15, i32 1)
  %_22.0 = extractvalue { i32, i1 } %6, 0
  %_22.1 = extractvalue { i32, i1 } %6, 1
  br i1 %_22.1, label %panic9, label %bb16

panic8:                                           ; preds = %bb13
; call core::panicking::panic_const::panic_const_div_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_div_overflow17hde5ac990ac871ee2E(ptr align 8 @alloc_c70ccdc1119630e88414f42fb64cc2fc) #22
  unreachable

bb16:                                             ; preds = %bb15
  store i32 %_22.0, ptr %_0, align 4
  br label %bb31

panic9:                                           ; preds = %bb15
; call core::panicking::panic_const::panic_const_add_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_c70ccdc1119630e88414f42fb64cc2fc) #22
  unreachable

bb7:                                              ; preds = %bb5
  %7 = sdiv i32 %n, 4
  store i32 %7, ptr %_0, align 4
  br label %bb31

panic10:                                          ; preds = %bb5
; call core::panicking::panic_const::panic_const_div_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_div_overflow17hde5ac990ac871ee2E(ptr align 8 @alloc_4cf0f612cba33177b2f851373cb29b1d) #22
  unreachable
}

define i32 @f_gold(i32 %num) unnamed_addr #3 {
start:
  %num1 = alloca [4 x i8], align 4
  %_0 = alloca [4 x i8], align 4
  store i32 %num, ptr %num1, align 4
  %_5 = load i32, ptr %num1, align 4
  %_8 = icmp eq i32 %_5, -2147483648
  %_9 = and i1 false, %_8
  br i1 %_9, label %panic, label %bb2

bb2:                                              ; preds = %start
  %_4 = sdiv i32 %_5, 10
  %_3 = icmp eq i32 %_4, 0
  br i1 %_3, label %bb3, label %bb4

panic:                                            ; preds = %start
; call core::panicking::panic_const::panic_const_div_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_div_overflow17hde5ac990ac871ee2E(ptr align 8 @alloc_e6c98c6d2e3ab66b557318ff96979d3b) #19
  unreachable

bb4:                                              ; preds = %bb17, %bb2
  %_11 = load i32, ptr %num1, align 4
  %_10 = icmp ne i32 %_11, 0
  br i1 %_10, label %bb5, label %bb18

bb3:                                              ; preds = %bb2
  store i32 1, ptr %_0, align 4
  br label %bb19

bb18:                                             ; preds = %bb4
  store i32 1, ptr %_0, align 4
  br label %bb19

bb5:                                              ; preds = %bb4
  %_13 = load i32, ptr %num1, align 4
  %_16 = icmp eq i32 %_13, -2147483648
  %_17 = and i1 false, %_16
  br i1 %_17, label %panic2, label %bb7

bb19:                                             ; preds = %bb3, %bb14, %bb18
  %0 = load i32, ptr %_0, align 4
  ret i32 %0

bb7:                                              ; preds = %bb5
  %digit1 = srem i32 %_13, 10
  %_20 = load i32, ptr %num1, align 4
  %_23 = icmp eq i32 %_20, -2147483648
  %_24 = and i1 false, %_23
  br i1 %_24, label %panic3, label %bb9

panic2:                                           ; preds = %bb5
; call core::panicking::panic_const::panic_const_rem_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_rem_overflow17h4aab8182a78c82f8E(ptr align 8 @alloc_96dbc57c041fe441f7a1844f8a6849d1) #19
  unreachable

bb9:                                              ; preds = %bb7
  %_19 = sdiv i32 %_20, 10
  %_27 = icmp eq i32 %_19, -2147483648
  %_28 = and i1 false, %_27
  br i1 %_28, label %panic4, label %bb11

panic3:                                           ; preds = %bb7
; call core::panicking::panic_const::panic_const_div_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_div_overflow17hde5ac990ac871ee2E(ptr align 8 @alloc_54655ce6b0f87ad5d898663c3046f8f9) #19
  unreachable

bb11:                                             ; preds = %bb9
  %digit2 = srem i32 %_19, 10
  %1 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %digit2, i32 %digit1)
  %_32.0 = extractvalue { i32, i1 } %1, 0
  %_32.1 = extractvalue { i32, i1 } %1, 1
  br i1 %_32.1, label %panic5, label %bb12

panic4:                                           ; preds = %bb9
; call core::panicking::panic_const::panic_const_rem_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_rem_overflow17h4aab8182a78c82f8E(ptr align 8 @alloc_54655ce6b0f87ad5d898663c3046f8f9) #19
  unreachable

bb12:                                             ; preds = %bb11
; call core::num::<impl i32>::abs
  %_30 = call i32 @"_ZN4core3num21_$LT$impl$u20$i32$GT$3abs17he36814bb73af7335E"(i32 %_32.0) #21
  %_29 = icmp sgt i32 %_30, 1
  br i1 %_29, label %bb14, label %bb15

panic5:                                           ; preds = %bb11
; call core::panicking::panic_const::panic_const_sub_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_sub_overflow17h134cc1a7f93654deE(ptr align 8 @alloc_b3ed873e4fe06ef58048166674ec3ea9) #19
  unreachable

bb15:                                             ; preds = %bb12
  %_33 = load i32, ptr %num1, align 4
  %_36 = icmp eq i32 %_33, -2147483648
  %_37 = and i1 false, %_36
  br i1 %_37, label %panic6, label %bb17

bb14:                                             ; preds = %bb12
  store i32 0, ptr %_0, align 4
  br label %bb19

bb17:                                             ; preds = %bb15
  %2 = sdiv i32 %_33, 10
  store i32 %2, ptr %num1, align 4
  br label %bb4

panic6:                                           ; preds = %bb15
; call core::panicking::panic_const::panic_const_div_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_div_overflow17hde5ac990ac871ee2E(ptr align 8 @alloc_e477fe00d2737aca1a5f7201f55079be) #19
  unreachable
}

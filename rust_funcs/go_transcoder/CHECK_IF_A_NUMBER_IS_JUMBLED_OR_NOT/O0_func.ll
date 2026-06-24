define i32 @f_gold(i32 %0) unnamed_addr #3 {
start:
  %_0 = alloca [4 x i8], align 4
  %num = alloca [4 x i8], align 4
  store i32 %0, ptr %num, align 4
  %_4 = load i32, ptr %num, align 4
  %_7 = icmp eq i32 %_4, -2147483648
  %_8 = and i1 false, %_7
  br i1 %_8, label %panic, label %bb2

bb2:                                              ; preds = %start
  %_3 = sdiv i32 %_4, 10
  %_2 = icmp eq i32 %_3, 0
  br i1 %_2, label %bb3, label %bb4

panic:                                            ; preds = %start
; call core::panicking::panic_const::panic_const_div_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_div_overflow17hde5ac990ac871ee2E(ptr align 8 @alloc_97ae4d9a42f457182db93ed24cc105d3) #22
  unreachable

bb4:                                              ; preds = %bb16, %bb2
  %_10 = load i32, ptr %num, align 4
  %_9 = icmp ne i32 %_10, 0
  br i1 %_9, label %bb5, label %bb17

bb3:                                              ; preds = %bb2
  store i32 1, ptr %_0, align 4
  br label %bb18

bb17:                                             ; preds = %bb4
  store i32 1, ptr %_0, align 4
  br label %bb18

bb5:                                              ; preds = %bb4
  %_12 = load i32, ptr %num, align 4
  %_15 = icmp eq i32 %_12, -2147483648
  %_16 = and i1 false, %_15
  br i1 %_16, label %panic1, label %bb7

bb18:                                             ; preds = %bb3, %bb13, %bb17
  %1 = load i32, ptr %_0, align 4
  ret i32 %1

bb7:                                              ; preds = %bb5
  %digit1 = srem i32 %_12, 10
  %_19 = load i32, ptr %num, align 4
  %_22 = icmp eq i32 %_19, -2147483648
  %_23 = and i1 false, %_22
  br i1 %_23, label %panic2, label %bb9

panic1:                                           ; preds = %bb5
; call core::panicking::panic_const::panic_const_rem_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_rem_overflow17h4aab8182a78c82f8E(ptr align 8 @alloc_44db54817c5e3447649163791b57c05d) #22
  unreachable

bb9:                                              ; preds = %bb7
  %_18 = sdiv i32 %_19, 10
  %_26 = icmp eq i32 %_18, -2147483648
  %_27 = and i1 false, %_26
  br i1 %_27, label %panic3, label %bb11

panic2:                                           ; preds = %bb7
; call core::panicking::panic_const::panic_const_div_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_div_overflow17hde5ac990ac871ee2E(ptr align 8 @alloc_b6380fd6a6a3a7526a5501ce3b247aa1) #22
  unreachable

bb11:                                             ; preds = %bb9
  %digit2 = srem i32 %_18, 10
  %_31 = sitofp i32 %digit2 to float
  %_32 = sitofp i32 %digit1 to float
  %_30 = fsub float %_31, %_32
; call core::f32::<impl f32>::abs
  %_29 = call float @"_ZN4core3f3221_$LT$impl$u20$f32$GT$3abs17h1e9e631f04af8e89E"(float %_30) #20
  %_28 = fcmp ogt float %_29, 1.000000e+00
  br i1 %_28, label %bb13, label %bb14

panic3:                                           ; preds = %bb9
; call core::panicking::panic_const::panic_const_rem_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_rem_overflow17h4aab8182a78c82f8E(ptr align 8 @alloc_b6380fd6a6a3a7526a5501ce3b247aa1) #22
  unreachable

bb14:                                             ; preds = %bb11
  %_33 = load i32, ptr %num, align 4
  %_36 = icmp eq i32 %_33, -2147483648
  %_37 = and i1 false, %_36
  br i1 %_37, label %panic4, label %bb16

bb13:                                             ; preds = %bb11
  store i32 0, ptr %_0, align 4
  br label %bb18

bb16:                                             ; preds = %bb14
  %2 = sdiv i32 %_33, 10
  store i32 %2, ptr %num, align 4
  br label %bb4

panic4:                                           ; preds = %bb14
; call core::panicking::panic_const::panic_const_div_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_div_overflow17hde5ac990ac871ee2E(ptr align 8 @alloc_f421186f49eff3627e6593cb378efcd7) #22
  unreachable
}

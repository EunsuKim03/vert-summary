define i32 @f_gold(i32 %0) unnamed_addr #3 {
start:
  %_22 = alloca [8 x i8], align 4
  %iter = alloca [24 x i8], align 8
  %_15 = alloca [24 x i8], align 8
  %_14 = alloca [24 x i8], align 8
  %max_prime = alloca [4 x i8], align 4
  %n = alloca [4 x i8], align 4
  store i32 %0, ptr %n, align 4
  store i32 -1, ptr %max_prime, align 4
  br label %bb1

bb1:                                              ; preds = %bb6, %start
  %_5 = load i32, ptr %n, align 4
  %_8 = icmp eq i32 %_5, -2147483648
  %_9 = and i1 false, %_8
  br i1 %_9, label %panic, label %bb3

bb3:                                              ; preds = %bb1
  %_4 = srem i32 %_5, 2
  %_3 = icmp eq i32 %_4, 0
  br i1 %_3, label %bb4, label %bb7

panic:                                            ; preds = %bb1
; call core::panicking::panic_const::panic_const_rem_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_rem_overflow17h4aab8182a78c82f8E(ptr align 8 @alloc_0244e7ab957b6259e41d9861fb120700) #22
  unreachable

bb7:                                              ; preds = %bb3
  %_20 = load i32, ptr %n, align 4
  %_19 = sitofp i32 %_20 to float
; call std::f32::<impl f32>::sqrt
  %_18 = call float @"_ZN3std3f3221_$LT$impl$u20$f32$GT$4sqrt17hc16b8f68a3b6c912E"(float %_19) #16
  %_17 = call i32 @llvm.fptosi.sat.i32.f32(float %_18)
; call core::iter::traits::iterator::Iterator::step_by
  call void @_ZN4core4iter6traits8iterator8Iterator7step_by17h8a8a9cb0a3455087E(ptr sret([24 x i8]) align 8 %_15, i32 3, i32 %_17, i64 2) #16
; call <I as core::iter::traits::collect::IntoIterator>::into_iter
  call void @"_ZN63_$LT$I$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17h2ad782b4888147c2E"(ptr sret([24 x i8]) align 8 %_14, ptr align 8 %_15) #16
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %iter, ptr align 8 %_14, i64 24, i1 false)
  br label %bb11

bb4:                                              ; preds = %bb3
  store i32 2, ptr %max_prime, align 4
  %1 = load i32, ptr %n, align 4
  %_12 = icmp eq i32 %1, -2147483648
  %_13 = and i1 false, %_12
  br i1 %_13, label %panic5, label %bb6

bb11:                                             ; preds = %bb18, %bb7
; call <core::iter::adapters::step_by::StepBy<I> as core::iter::traits::iterator::Iterator>::next
  %2 = call { i32, i32 } @"_ZN105_$LT$core..iter..adapters..step_by..StepBy$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17ha17b39d3657c768aE"(ptr align 8 %iter) #16
  %3 = extractvalue { i32, i32 } %2, 0
  %4 = extractvalue { i32, i32 } %2, 1
  store i32 %3, ptr %_22, align 4
  %5 = getelementptr inbounds i8, ptr %_22, i64 4
  store i32 %4, ptr %5, align 4
  %6 = load i32, ptr %_22, align 4
  %7 = getelementptr inbounds i8, ptr %_22, i64 4
  %8 = load i32, ptr %7, align 4
  %_24 = zext i32 %6 to i64
  %9 = trunc nuw i64 %_24 to i1
  br i1 %9, label %bb14, label %bb15

bb14:                                             ; preds = %bb11
  %10 = getelementptr inbounds i8, ptr %_22, i64 4
  %i = load i32, ptr %10, align 4
  br label %bb16

bb15:                                             ; preds = %bb11
  %_38 = load i32, ptr %n, align 4
  %_37 = icmp sgt i32 %_38, 2
  br i1 %_37, label %bb22, label %bb23

bb23:                                             ; preds = %bb22, %bb15
  %_0 = load i32, ptr %max_prime, align 4
  ret i32 %_0

bb22:                                             ; preds = %bb15
  %_39 = load i32, ptr %n, align 4
  store i32 %_39, ptr %max_prime, align 4
  br label %bb23

bb16:                                             ; preds = %bb21, %bb14
  %_28 = load i32, ptr %n, align 4
  %_29 = icmp eq i32 %i, 0
  br i1 %_29, label %panic1, label %bb17

bb17:                                             ; preds = %bb16
  %_30 = icmp eq i32 %i, -1
  %_31 = icmp eq i32 %_28, -2147483648
  %_32 = and i1 %_30, %_31
  br i1 %_32, label %panic2, label %bb18

panic1:                                           ; preds = %bb16
; call core::panicking::panic_const::panic_const_rem_by_zero
  call void @_ZN4core9panicking11panic_const23panic_const_rem_by_zero17h68b8e0645961a790E(ptr align 8 @alloc_f85c3cb56e4f198eaeb8eda8ae1b45d7) #22
  unreachable

bb18:                                             ; preds = %bb17
  %_27 = srem i32 %_28, %i
  %_26 = icmp eq i32 %_27, 0
  br i1 %_26, label %bb19, label %bb11

panic2:                                           ; preds = %bb17
; call core::panicking::panic_const::panic_const_rem_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_rem_overflow17h4aab8182a78c82f8E(ptr align 8 @alloc_f85c3cb56e4f198eaeb8eda8ae1b45d7) #22
  unreachable

bb19:                                             ; preds = %bb18
  store i32 %i, ptr %max_prime, align 4
  %_33 = icmp eq i32 %i, 0
  br i1 %_33, label %panic3, label %bb20

bb20:                                             ; preds = %bb19
  %_34 = icmp eq i32 %i, -1
  %11 = load i32, ptr %n, align 4
  %_35 = icmp eq i32 %11, -2147483648
  %_36 = and i1 %_34, %_35
  br i1 %_36, label %panic4, label %bb21

panic3:                                           ; preds = %bb19
; call core::panicking::panic_const::panic_const_div_by_zero
  call void @_ZN4core9panicking11panic_const23panic_const_div_by_zero17h9a45e37423e1c559E(ptr align 8 @alloc_660caa25fcff3437685dd7be9fb1f003) #22
  unreachable

bb21:                                             ; preds = %bb20
  %12 = load i32, ptr %n, align 4
  %13 = sdiv i32 %12, %i
  store i32 %13, ptr %n, align 4
  br label %bb16

panic4:                                           ; preds = %bb20
; call core::panicking::panic_const::panic_const_div_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_div_overflow17hde5ac990ac871ee2E(ptr align 8 @alloc_660caa25fcff3437685dd7be9fb1f003) #22
  unreachable

bb13:                                             ; No predecessors!
  unreachable

bb6:                                              ; preds = %bb4
  %14 = load i32, ptr %n, align 4
  %15 = sdiv i32 %14, 2
  store i32 %15, ptr %n, align 4
  br label %bb1

panic5:                                           ; preds = %bb4
; call core::panicking::panic_const::panic_const_div_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_div_overflow17hde5ac990ac871ee2E(ptr align 8 @alloc_7b99f8962a479f910ef76ee0e386c084) #22
  unreachable
}

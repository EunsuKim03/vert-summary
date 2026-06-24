define i32 @f_gold(i32 %p) unnamed_addr #3 {
start:
  %_15 = alloca [8 x i8], align 4
  %iter = alloca [8 x i8], align 4
  %nextval = alloca [4 x i8], align 4
  %_0 = alloca [4 x i8], align 4
; call std::f32::<impl f32>::powi
  %_3 = call float @"_ZN3std3f3221_$LT$impl$u20$f32$GT$4powi17hfcf597f31c2ae0e5E"(float 2.000000e+00, i32 %p) #20
  %check_number = fsub float %_3, 1.000000e+00
  %_5 = call i32 @llvm.fptosi.sat.i32.f32(float %check_number)
  %_6 = icmp eq i32 %_5, 0
  br i1 %_6, label %panic, label %bb2

bb2:                                              ; preds = %start
  %_7 = icmp eq i32 %_5, -1
  %_9 = and i1 %_7, false
  br i1 %_9, label %panic1, label %bb3

panic:                                            ; preds = %start
; call core::panicking::panic_const::panic_const_rem_by_zero
  call void @_ZN4core9panicking11panic_const23panic_const_rem_by_zero17h68b8e0645961a790E(ptr align 8 @alloc_805e388b1ec866112dd0e6922e29cf78) #22
  unreachable

bb3:                                              ; preds = %bb2
  %0 = srem i32 4, %_5
  store i32 %0, ptr %nextval, align 4
  %1 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %p, i32 1)
  %_13.0 = extractvalue { i32, i1 } %1, 0
  %_13.1 = extractvalue { i32, i1 } %1, 1
  br i1 %_13.1, label %panic2, label %bb4

panic1:                                           ; preds = %bb2
; call core::panicking::panic_const::panic_const_rem_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_rem_overflow17h4aab8182a78c82f8E(ptr align 8 @alloc_805e388b1ec866112dd0e6922e29cf78) #22
  unreachable

bb4:                                              ; preds = %bb3
; call <I as core::iter::traits::collect::IntoIterator>::into_iter
  %2 = call { i32, i32 } @"_ZN63_$LT$I$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17h52313180d05f68f9E"(i32 1, i32 %_13.0) #20
  %_10.0 = extractvalue { i32, i32 } %2, 0
  %_10.1 = extractvalue { i32, i32 } %2, 1
  store i32 %_10.0, ptr %iter, align 4
  %3 = getelementptr inbounds i8, ptr %iter, i64 4
  store i32 %_10.1, ptr %3, align 4
  br label %bb6

panic2:                                           ; preds = %bb3
; call core::panicking::panic_const::panic_const_sub_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_sub_overflow17h134cc1a7f93654deE(ptr align 8 @alloc_5004b8ca03723858fc325d346197015a) #22
  unreachable

bb6:                                              ; preds = %bb14, %bb4
; call core::iter::range::<impl core::iter::traits::iterator::Iterator for core::ops::range::Range<A>>::next
  %4 = call { i32, i32 } @"_ZN4core4iter5range101_$LT$impl$u20$core..iter..traits..iterator..Iterator$u20$for$u20$core..ops..range..Range$LT$A$GT$$GT$4next17h745923c4b90e246aE"(ptr align 4 %iter) #20
  %5 = extractvalue { i32, i32 } %4, 0
  %6 = extractvalue { i32, i32 } %4, 1
  store i32 %5, ptr %_15, align 4
  %7 = getelementptr inbounds i8, ptr %_15, i64 4
  store i32 %6, ptr %7, align 4
  %8 = load i32, ptr %_15, align 4
  %9 = getelementptr inbounds i8, ptr %_15, i64 4
  %10 = load i32, ptr %9, align 4
  %_17 = zext i32 %8 to i64
  %11 = trunc nuw i64 %_17 to i1
  br i1 %11, label %bb9, label %bb10

bb9:                                              ; preds = %bb6
  %12 = getelementptr inbounds i8, ptr %_15, i64 4
  %i = load i32, ptr %12, align 4
  %_21 = load i32, ptr %nextval, align 4
  %_22 = load i32, ptr %nextval, align 4
  %13 = call { i32, i1 } @llvm.smul.with.overflow.i32(i32 %_21, i32 %_22)
  %_23.0 = extractvalue { i32, i1 } %13, 0
  %_23.1 = extractvalue { i32, i1 } %13, 1
  br i1 %_23.1, label %panic3, label %bb11

bb10:                                             ; preds = %bb6
  %_31 = load i32, ptr %nextval, align 4
  %_30 = icmp eq i32 %_31, 0
  br i1 %_30, label %bb15, label %bb16

bb16:                                             ; preds = %bb10
  store i32 0, ptr %_0, align 4
  br label %bb17

bb15:                                             ; preds = %bb10
  store i32 1, ptr %_0, align 4
  br label %bb17

bb17:                                             ; preds = %bb15, %bb16
  %14 = load i32, ptr %_0, align 4
  ret i32 %14

bb11:                                             ; preds = %bb9
  %15 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %_23.0, i32 2)
  %_24.0 = extractvalue { i32, i1 } %15, 0
  %_24.1 = extractvalue { i32, i1 } %15, 1
  br i1 %_24.1, label %panic4, label %bb12

panic3:                                           ; preds = %bb9
; call core::panicking::panic_const::panic_const_mul_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_mul_overflow17h554ac164c12099f8E(ptr align 8 @alloc_7a8734d704cf28fd3f4f924a705ecb28) #22
  unreachable

bb12:                                             ; preds = %bb11
  %_25 = call i32 @llvm.fptosi.sat.i32.f32(float %check_number)
  %_26 = icmp eq i32 %_25, 0
  br i1 %_26, label %panic5, label %bb13

panic4:                                           ; preds = %bb11
; call core::panicking::panic_const::panic_const_sub_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_sub_overflow17h134cc1a7f93654deE(ptr align 8 @alloc_9ccad2525e1c218f7cb65df8da96b031) #22
  unreachable

bb13:                                             ; preds = %bb12
  %_27 = icmp eq i32 %_25, -1
  %_28 = icmp eq i32 %_24.0, -2147483648
  %_29 = and i1 %_27, %_28
  br i1 %_29, label %panic6, label %bb14

panic5:                                           ; preds = %bb12
; call core::panicking::panic_const::panic_const_rem_by_zero
  call void @_ZN4core9panicking11panic_const23panic_const_rem_by_zero17h68b8e0645961a790E(ptr align 8 @alloc_9ccad2525e1c218f7cb65df8da96b031) #22
  unreachable

bb14:                                             ; preds = %bb13
  %16 = srem i32 %_24.0, %_25
  store i32 %16, ptr %nextval, align 4
  br label %bb6

panic6:                                           ; preds = %bb13
; call core::panicking::panic_const::panic_const_rem_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_rem_overflow17h4aab8182a78c82f8E(ptr align 8 @alloc_9ccad2525e1c218f7cb65df8da96b031) #22
  unreachable

bb8:                                              ; No predecessors!
  unreachable
}

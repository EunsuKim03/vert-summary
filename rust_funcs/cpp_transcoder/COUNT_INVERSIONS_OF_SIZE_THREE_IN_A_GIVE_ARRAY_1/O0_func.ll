define i32 @f_gold(ptr align 4 %arr.0, i64 %arr.1, i32 %n) unnamed_addr #3 {
start:
  %_40 = alloca [8 x i8], align 4
  %iter2 = alloca [8 x i8], align 4
  %great = alloca [4 x i8], align 4
  %_19 = alloca [8 x i8], align 4
  %iter1 = alloca [8 x i8], align 4
  %small = alloca [4 x i8], align 4
  %_9 = alloca [8 x i8], align 4
  %iter = alloca [8 x i8], align 4
  %invcount = alloca [4 x i8], align 4
  store i32 0, ptr %invcount, align 4
  %0 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %n, i32 1)
  %_7.0 = extractvalue { i32, i1 } %0, 0
  %_7.1 = extractvalue { i32, i1 } %0, 1
  br i1 %_7.1, label %panic, label %bb1

bb1:                                              ; preds = %start
; call <I as core::iter::traits::collect::IntoIterator>::into_iter
  %1 = call { i32, i32 } @"_ZN63_$LT$I$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17hcde8d14c5e13c745E"(i32 1, i32 %_7.0) #20
  %_4.0 = extractvalue { i32, i32 } %1, 0
  %_4.1 = extractvalue { i32, i32 } %1, 1
  store i32 %_4.0, ptr %iter, align 4
  %2 = getelementptr inbounds i8, ptr %iter, i64 4
  store i32 %_4.1, ptr %2, align 4
  br label %bb3

panic:                                            ; preds = %start
; call core::panicking::panic_const::panic_const_sub_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_sub_overflow17h134cc1a7f93654deE(ptr align 8 @alloc_78934f0e9a4a08f321e534f6a14d1108) #22
  unreachable

bb3:                                              ; preds = %bb29, %bb1
; call core::iter::range::<impl core::iter::traits::iterator::Iterator for core::ops::range::Range<A>>::next
  %3 = call { i32, i32 } @"_ZN4core4iter5range101_$LT$impl$u20$core..iter..traits..iterator..Iterator$u20$for$u20$core..ops..range..Range$LT$A$GT$$GT$4next17he50b8a1e0e9a8c94E"(ptr align 4 %iter) #20
  %4 = extractvalue { i32, i32 } %3, 0
  %5 = extractvalue { i32, i32 } %3, 1
  store i32 %4, ptr %_9, align 4
  %6 = getelementptr inbounds i8, ptr %_9, i64 4
  store i32 %5, ptr %6, align 4
  %7 = load i32, ptr %_9, align 4
  %8 = getelementptr inbounds i8, ptr %_9, i64 4
  %9 = load i32, ptr %8, align 4
  %_11 = zext i32 %7 to i64
  %10 = trunc nuw i64 %_11 to i1
  br i1 %10, label %bb6, label %bb7

bb6:                                              ; preds = %bb3
  %11 = getelementptr inbounds i8, ptr %_9, i64 4
  %i = load i32, ptr %11, align 4
  store i32 0, ptr %small, align 4
  %12 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %i, i32 1)
  %_17.0 = extractvalue { i32, i1 } %12, 0
  %_17.1 = extractvalue { i32, i1 } %12, 1
  br i1 %_17.1, label %panic3, label %bb8

bb7:                                              ; preds = %bb3
  %_0 = load i32, ptr %invcount, align 4
  ret i32 %_0

bb8:                                              ; preds = %bb6
; call <I as core::iter::traits::collect::IntoIterator>::into_iter
  %13 = call { i32, i32 } @"_ZN63_$LT$I$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17hcde8d14c5e13c745E"(i32 %_17.0, i32 %n) #20
  %_14.0 = extractvalue { i32, i32 } %13, 0
  %_14.1 = extractvalue { i32, i32 } %13, 1
  store i32 %_14.0, ptr %iter1, align 4
  %14 = getelementptr inbounds i8, ptr %iter1, i64 4
  store i32 %_14.1, ptr %14, align 4
  br label %bb10

panic3:                                           ; preds = %bb6
; call core::panicking::panic_const::panic_const_add_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_a80d923603ebc00f063f8a26723af72c) #22
  unreachable

bb10:                                             ; preds = %bb17, %bb15, %bb8
; call core::iter::range::<impl core::iter::traits::iterator::Iterator for core::ops::range::Range<A>>::next
  %15 = call { i32, i32 } @"_ZN4core4iter5range101_$LT$impl$u20$core..iter..traits..iterator..Iterator$u20$for$u20$core..ops..range..Range$LT$A$GT$$GT$4next17he50b8a1e0e9a8c94E"(ptr align 4 %iter1) #20
  %16 = extractvalue { i32, i32 } %15, 0
  %17 = extractvalue { i32, i32 } %15, 1
  store i32 %16, ptr %_19, align 4
  %18 = getelementptr inbounds i8, ptr %_19, i64 4
  store i32 %17, ptr %18, align 4
  %19 = load i32, ptr %_19, align 4
  %20 = getelementptr inbounds i8, ptr %_19, i64 4
  %21 = load i32, ptr %20, align 4
  %_21 = zext i32 %19 to i64
  %22 = trunc nuw i64 %_21 to i1
  br i1 %22, label %bb12, label %bb13

bb12:                                             ; preds = %bb10
  %23 = getelementptr inbounds i8, ptr %_19, i64 4
  %j9 = load i32, ptr %23, align 4
  %_25 = sext i32 %i to i64
  %_28 = icmp ult i64 %_25, %arr.1
  br i1 %_28, label %bb14, label %panic10

bb13:                                             ; preds = %bb10
  store i32 0, ptr %great, align 4
; call core::iter::traits::iterator::Iterator::rev
  %24 = call { i32, i32 } @_ZN4core4iter6traits8iterator8Iterator3rev17hfd9d56dc25227479E(i32 0, i32 %i) #20
  %_37.0 = extractvalue { i32, i32 } %24, 0
  %_37.1 = extractvalue { i32, i32 } %24, 1
; call <I as core::iter::traits::collect::IntoIterator>::into_iter
  %25 = call { i32, i32 } @"_ZN63_$LT$I$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17h082e16eb2bbadcc0E"(i32 %_37.0, i32 %_37.1) #20
  %_36.0 = extractvalue { i32, i32 } %25, 0
  %_36.1 = extractvalue { i32, i32 } %25, 1
  store i32 %_36.0, ptr %iter2, align 4
  %26 = getelementptr inbounds i8, ptr %iter2, i64 4
  store i32 %_36.1, ptr %26, align 4
  br label %bb20

bb20:                                             ; preds = %bb27, %bb25, %bb13
; call <core::iter::adapters::rev::Rev<I> as core::iter::traits::iterator::Iterator>::next
  %27 = call { i32, i32 } @"_ZN98_$LT$core..iter..adapters..rev..Rev$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hdecde4dc25a75bbaE"(ptr align 4 %iter2) #20
  %28 = extractvalue { i32, i32 } %27, 0
  %29 = extractvalue { i32, i32 } %27, 1
  store i32 %28, ptr %_40, align 4
  %30 = getelementptr inbounds i8, ptr %_40, i64 4
  store i32 %29, ptr %30, align 4
  %31 = load i32, ptr %_40, align 4
  %32 = getelementptr inbounds i8, ptr %_40, i64 4
  %33 = load i32, ptr %32, align 4
  %_42 = zext i32 %31 to i64
  %34 = trunc nuw i64 %_42 to i1
  br i1 %34, label %bb22, label %bb23

bb22:                                             ; preds = %bb20
  %35 = getelementptr inbounds i8, ptr %_40, i64 4
  %j = load i32, ptr %35, align 4
  %_46 = sext i32 %i to i64
  %_49 = icmp ult i64 %_46, %arr.1
  br i1 %_49, label %bb24, label %panic6

bb23:                                             ; preds = %bb20
  %_57 = load i32, ptr %great, align 4
  %_58 = load i32, ptr %small, align 4
  %36 = call { i32, i1 } @llvm.smul.with.overflow.i32(i32 %_57, i32 %_58)
  %_59.0 = extractvalue { i32, i1 } %36, 0
  %_59.1 = extractvalue { i32, i1 } %36, 1
  br i1 %_59.1, label %panic4, label %bb28

bb28:                                             ; preds = %bb23
  %37 = load i32, ptr %invcount, align 4
  %38 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %37, i32 %_59.0)
  %_60.0 = extractvalue { i32, i1 } %38, 0
  %_60.1 = extractvalue { i32, i1 } %38, 1
  br i1 %_60.1, label %panic5, label %bb29

panic4:                                           ; preds = %bb23
; call core::panicking::panic_const::panic_const_mul_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_mul_overflow17h554ac164c12099f8E(ptr align 8 @alloc_8f7b9c3e3bd659876d64ed2a7010075b) #22
  unreachable

bb29:                                             ; preds = %bb28
  store i32 %_60.0, ptr %invcount, align 4
  br label %bb3

panic5:                                           ; preds = %bb28
; call core::panicking::panic_const::panic_const_add_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_8a334474b0f5b9084a0d1cf703e0167f) #22
  unreachable

bb24:                                             ; preds = %bb22
  %39 = getelementptr inbounds nuw float, ptr %arr.0, i64 %_46
  %_45 = load float, ptr %39, align 4
  %_51 = sext i32 %j to i64
  %_54 = icmp ult i64 %_51, %arr.1
  br i1 %_54, label %bb25, label %panic7

panic6:                                           ; preds = %bb22
; call core::panicking::panic_bounds_check
  call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 %_46, i64 %arr.1, ptr align 8 @alloc_952d3252ba3fe51053788899126b19eb) #22
  unreachable

bb25:                                             ; preds = %bb24
  %40 = getelementptr inbounds nuw float, ptr %arr.0, i64 %_51
  %_50 = load float, ptr %40, align 4
  %_44 = fcmp olt float %_45, %_50
  br i1 %_44, label %bb26, label %bb20

panic7:                                           ; preds = %bb24
; call core::panicking::panic_bounds_check
  call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 %_51, i64 %arr.1, ptr align 8 @alloc_18d819d35e84672d5aefd520e0c7a4a0) #22
  unreachable

bb26:                                             ; preds = %bb25
  %41 = load i32, ptr %great, align 4
  %42 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %41, i32 1)
  %_55.0 = extractvalue { i32, i1 } %42, 0
  %_55.1 = extractvalue { i32, i1 } %42, 1
  br i1 %_55.1, label %panic8, label %bb27

bb27:                                             ; preds = %bb26
  store i32 %_55.0, ptr %great, align 4
  br label %bb20

panic8:                                           ; preds = %bb26
; call core::panicking::panic_const::panic_const_add_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_ecceafdb05e971d2f039c22a1f15cb52) #22
  unreachable

bb14:                                             ; preds = %bb12
  %43 = getelementptr inbounds nuw float, ptr %arr.0, i64 %_25
  %_24 = load float, ptr %43, align 4
  %_30 = sext i32 %j9 to i64
  %_33 = icmp ult i64 %_30, %arr.1
  br i1 %_33, label %bb15, label %panic11

panic10:                                          ; preds = %bb12
; call core::panicking::panic_bounds_check
  call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 %_25, i64 %arr.1, ptr align 8 @alloc_5e516f23107a45426ae529d460b0767e) #22
  unreachable

bb15:                                             ; preds = %bb14
  %44 = getelementptr inbounds nuw float, ptr %arr.0, i64 %_30
  %_29 = load float, ptr %44, align 4
  %_23 = fcmp ogt float %_24, %_29
  br i1 %_23, label %bb16, label %bb10

panic11:                                          ; preds = %bb14
; call core::panicking::panic_bounds_check
  call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 %_30, i64 %arr.1, ptr align 8 @alloc_6e4c18a25bc3c435221967b9b710bffc) #22
  unreachable

bb16:                                             ; preds = %bb15
  %45 = load i32, ptr %small, align 4
  %46 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %45, i32 1)
  %_34.0 = extractvalue { i32, i1 } %46, 0
  %_34.1 = extractvalue { i32, i1 } %46, 1
  br i1 %_34.1, label %panic12, label %bb17

bb17:                                             ; preds = %bb16
  store i32 %_34.0, ptr %small, align 4
  br label %bb10

panic12:                                          ; preds = %bb16
; call core::panicking::panic_const::panic_const_add_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_92dd0fc7a1f5ca1b1809d02bdb1b8bdc) #22
  unreachable

bb5:                                              ; No predecessors!
  unreachable
}

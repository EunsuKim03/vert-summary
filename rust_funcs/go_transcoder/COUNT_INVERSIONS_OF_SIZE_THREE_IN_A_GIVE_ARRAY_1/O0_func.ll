define i32 @f_gold(i64 %0, i32 %n) unnamed_addr #3 {
start:
  %_36 = alloca [16 x i8], align 8
  %iter2 = alloca [16 x i8], align 8
  %great = alloca [4 x i8], align 4
  %_21 = alloca [16 x i8], align 8
  %iter1 = alloca [16 x i8], align 8
  %small = alloca [4 x i8], align 4
  %_10 = alloca [16 x i8], align 8
  %iter = alloca [16 x i8], align 8
  %invcount = alloca [4 x i8], align 4
  %1 = alloca [8 x i8], align 8
  %arr = alloca [8 x i8], align 4
  store i64 %0, ptr %1, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %arr, ptr align 8 %1, i64 8, i1 false)
  store i32 0, ptr %invcount, align 4
  %2 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %n, i32 1)
  %_8.0 = extractvalue { i32, i1 } %2, 0
  %_8.1 = extractvalue { i32, i1 } %2, 1
  br i1 %_8.1, label %panic, label %bb1

bb1:                                              ; preds = %start
  %_6 = sext i32 %_8.0 to i64
; call <I as core::iter::traits::collect::IntoIterator>::into_iter
  %3 = call { i64, i64 } @"_ZN63_$LT$I$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17h273fc4e475fffa19E"(i64 1, i64 %_6) #20
  %_4.0 = extractvalue { i64, i64 } %3, 0
  %_4.1 = extractvalue { i64, i64 } %3, 1
  store i64 %_4.0, ptr %iter, align 8
  %4 = getelementptr inbounds i8, ptr %iter, i64 8
  store i64 %_4.1, ptr %4, align 8
  br label %bb3

panic:                                            ; preds = %start
; call core::panicking::panic_const::panic_const_sub_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_sub_overflow17h134cc1a7f93654deE(ptr align 8 @alloc_fa45e42f6db2c0c5b246393138516454) #22
  unreachable

bb3:                                              ; preds = %bb29, %bb1
; call core::iter::range::<impl core::iter::traits::iterator::Iterator for core::ops::range::Range<A>>::next
  %5 = call { i64, i64 } @"_ZN4core4iter5range101_$LT$impl$u20$core..iter..traits..iterator..Iterator$u20$for$u20$core..ops..range..Range$LT$A$GT$$GT$4next17h3e0337046cf8ca2cE"(ptr align 8 %iter) #20
  %6 = extractvalue { i64, i64 } %5, 0
  %7 = extractvalue { i64, i64 } %5, 1
  store i64 %6, ptr %_10, align 8
  %8 = getelementptr inbounds i8, ptr %_10, i64 8
  store i64 %7, ptr %8, align 8
  %_12 = load i64, ptr %_10, align 8
  %9 = getelementptr inbounds i8, ptr %_10, i64 8
  %10 = load i64, ptr %9, align 8
  %11 = trunc nuw i64 %_12 to i1
  br i1 %11, label %bb6, label %bb7

bb6:                                              ; preds = %bb3
  %12 = getelementptr inbounds i8, ptr %_10, i64 8
  %i = load i64, ptr %12, align 8
  store i32 0, ptr %small, align 4
  %_18.0 = add i64 %i, 1
  %_18.1 = icmp ult i64 %_18.0, %i
  br i1 %_18.1, label %panic3, label %bb8

bb7:                                              ; preds = %bb3
  %_0 = load i32, ptr %invcount, align 4
  ret i32 %_0

bb8:                                              ; preds = %bb6
  %_19 = sext i32 %n to i64
; call <I as core::iter::traits::collect::IntoIterator>::into_iter
  %13 = call { i64, i64 } @"_ZN63_$LT$I$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17h273fc4e475fffa19E"(i64 %_18.0, i64 %_19) #20
  %_15.0 = extractvalue { i64, i64 } %13, 0
  %_15.1 = extractvalue { i64, i64 } %13, 1
  store i64 %_15.0, ptr %iter1, align 8
  %14 = getelementptr inbounds i8, ptr %iter1, i64 8
  store i64 %_15.1, ptr %14, align 8
  br label %bb10

panic3:                                           ; preds = %bb6
; call core::panicking::panic_const::panic_const_add_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_0654ce2e28c32d6fb62caf12776ccdfc) #22
  unreachable

bb10:                                             ; preds = %bb17, %bb15, %bb8
; call core::iter::range::<impl core::iter::traits::iterator::Iterator for core::ops::range::Range<A>>::next
  %15 = call { i64, i64 } @"_ZN4core4iter5range101_$LT$impl$u20$core..iter..traits..iterator..Iterator$u20$for$u20$core..ops..range..Range$LT$A$GT$$GT$4next17h3e0337046cf8ca2cE"(ptr align 8 %iter1) #20
  %16 = extractvalue { i64, i64 } %15, 0
  %17 = extractvalue { i64, i64 } %15, 1
  store i64 %16, ptr %_21, align 8
  %18 = getelementptr inbounds i8, ptr %_21, i64 8
  store i64 %17, ptr %18, align 8
  %_23 = load i64, ptr %_21, align 8
  %19 = getelementptr inbounds i8, ptr %_21, i64 8
  %20 = load i64, ptr %19, align 8
  %21 = trunc nuw i64 %_23 to i1
  br i1 %21, label %bb12, label %bb13

bb12:                                             ; preds = %bb10
  %22 = getelementptr inbounds i8, ptr %_21, i64 8
  %j9 = load i64, ptr %22, align 8
  %_27 = icmp ult i64 %i, 2
  br i1 %_27, label %bb14, label %panic10

bb13:                                             ; preds = %bb10
  store i32 0, ptr %great, align 4
; call core::iter::traits::iterator::Iterator::rev
  %23 = call { i64, i64 } @_ZN4core4iter6traits8iterator8Iterator3rev17h80afa96f662bfa73E(i64 0, i64 %i) #20
  %_33.0 = extractvalue { i64, i64 } %23, 0
  %_33.1 = extractvalue { i64, i64 } %23, 1
; call <I as core::iter::traits::collect::IntoIterator>::into_iter
  %24 = call { i64, i64 } @"_ZN63_$LT$I$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17h494c050249fff617E"(i64 %_33.0, i64 %_33.1) #20
  %_32.0 = extractvalue { i64, i64 } %24, 0
  %_32.1 = extractvalue { i64, i64 } %24, 1
  store i64 %_32.0, ptr %iter2, align 8
  %25 = getelementptr inbounds i8, ptr %iter2, i64 8
  store i64 %_32.1, ptr %25, align 8
  br label %bb20

bb20:                                             ; preds = %bb27, %bb25, %bb13
; call <core::iter::adapters::rev::Rev<I> as core::iter::traits::iterator::Iterator>::next
  %26 = call { i64, i64 } @"_ZN98_$LT$core..iter..adapters..rev..Rev$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h30f9e73129c70454E"(ptr align 8 %iter2) #20
  %27 = extractvalue { i64, i64 } %26, 0
  %28 = extractvalue { i64, i64 } %26, 1
  store i64 %27, ptr %_36, align 8
  %29 = getelementptr inbounds i8, ptr %_36, i64 8
  store i64 %28, ptr %29, align 8
  %_38 = load i64, ptr %_36, align 8
  %30 = getelementptr inbounds i8, ptr %_36, i64 8
  %31 = load i64, ptr %30, align 8
  %32 = trunc nuw i64 %_38 to i1
  br i1 %32, label %bb22, label %bb23

bb22:                                             ; preds = %bb20
  %33 = getelementptr inbounds i8, ptr %_36, i64 8
  %j = load i64, ptr %33, align 8
  %_42 = icmp ult i64 %i, 2
  br i1 %_42, label %bb24, label %panic6

bb23:                                             ; preds = %bb20
  %_47 = load i32, ptr %great, align 4
  %_48 = load i32, ptr %small, align 4
  %34 = call { i32, i1 } @llvm.smul.with.overflow.i32(i32 %_47, i32 %_48)
  %_49.0 = extractvalue { i32, i1 } %34, 0
  %_49.1 = extractvalue { i32, i1 } %34, 1
  br i1 %_49.1, label %panic4, label %bb28

bb28:                                             ; preds = %bb23
  %35 = load i32, ptr %invcount, align 4
  %36 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %35, i32 %_49.0)
  %_50.0 = extractvalue { i32, i1 } %36, 0
  %_50.1 = extractvalue { i32, i1 } %36, 1
  br i1 %_50.1, label %panic5, label %bb29

panic4:                                           ; preds = %bb23
; call core::panicking::panic_const::panic_const_mul_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_mul_overflow17h554ac164c12099f8E(ptr align 8 @alloc_95e38cf502784b22bdf1e03974e8b5f4) #22
  unreachable

bb29:                                             ; preds = %bb28
  store i32 %_50.0, ptr %invcount, align 4
  br label %bb3

panic5:                                           ; preds = %bb28
; call core::panicking::panic_const::panic_const_add_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_81a050a35bfc2d30928f28f5dfb49bb2) #22
  unreachable

bb24:                                             ; preds = %bb22
  %37 = getelementptr inbounds nuw i32, ptr %arr, i64 %i
  %_41 = load i32, ptr %37, align 4
  %_44 = icmp ult i64 %j, 2
  br i1 %_44, label %bb25, label %panic7

panic6:                                           ; preds = %bb22
; call core::panicking::panic_bounds_check
  call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 %i, i64 2, ptr align 8 @alloc_44b9b1a05fa808e858aebfe18aa3b854) #22
  unreachable

bb25:                                             ; preds = %bb24
  %38 = getelementptr inbounds nuw i32, ptr %arr, i64 %j
  %_43 = load i32, ptr %38, align 4
  %_40 = icmp slt i32 %_41, %_43
  br i1 %_40, label %bb26, label %bb20

panic7:                                           ; preds = %bb24
; call core::panicking::panic_bounds_check
  call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 %j, i64 2, ptr align 8 @alloc_4a80802beae51f61a2b4be2d5b5d4f07) #22
  unreachable

bb26:                                             ; preds = %bb25
  %39 = load i32, ptr %great, align 4
  %40 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %39, i32 1)
  %_45.0 = extractvalue { i32, i1 } %40, 0
  %_45.1 = extractvalue { i32, i1 } %40, 1
  br i1 %_45.1, label %panic8, label %bb27

bb27:                                             ; preds = %bb26
  store i32 %_45.0, ptr %great, align 4
  br label %bb20

panic8:                                           ; preds = %bb26
; call core::panicking::panic_const::panic_const_add_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_040a3aece03510c10d781ffe993aad7c) #22
  unreachable

bb14:                                             ; preds = %bb12
  %41 = getelementptr inbounds nuw i32, ptr %arr, i64 %i
  %_26 = load i32, ptr %41, align 4
  %_29 = icmp ult i64 %j9, 2
  br i1 %_29, label %bb15, label %panic11

panic10:                                          ; preds = %bb12
; call core::panicking::panic_bounds_check
  call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 %i, i64 2, ptr align 8 @alloc_991fd2c6d8b68a8fb036bab45a16179c) #22
  unreachable

bb15:                                             ; preds = %bb14
  %42 = getelementptr inbounds nuw i32, ptr %arr, i64 %j9
  %_28 = load i32, ptr %42, align 4
  %_25 = icmp sgt i32 %_26, %_28
  br i1 %_25, label %bb16, label %bb10

panic11:                                          ; preds = %bb14
; call core::panicking::panic_bounds_check
  call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 %j9, i64 2, ptr align 8 @alloc_d3c72d71668fe3510765096812342e6a) #22
  unreachable

bb16:                                             ; preds = %bb15
  %43 = load i32, ptr %small, align 4
  %44 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %43, i32 1)
  %_30.0 = extractvalue { i32, i1 } %44, 0
  %_30.1 = extractvalue { i32, i1 } %44, 1
  br i1 %_30.1, label %panic12, label %bb17

bb17:                                             ; preds = %bb16
  store i32 %_30.0, ptr %small, align 4
  br label %bb10

panic12:                                          ; preds = %bb16
; call core::panicking::panic_const::panic_const_add_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_1bd362d703a9f46ed95ac4e824590261) #22
  unreachable

bb5:                                              ; No predecessors!
  unreachable
}

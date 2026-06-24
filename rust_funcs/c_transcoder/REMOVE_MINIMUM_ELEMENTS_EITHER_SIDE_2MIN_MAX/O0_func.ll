define i32 @f_gold(i64 %0, i32 %n) unnamed_addr #3 {
start:
  %_17 = alloca [8 x i8], align 4
  %iter1 = alloca [8 x i8], align 4
  %max = alloca [4 x i8], align 4
  %min = alloca [4 x i8], align 4
  %_8 = alloca [8 x i8], align 4
  %iter = alloca [8 x i8], align 4
  %longest_end = alloca [4 x i8], align 4
  %longest_start = alloca [4 x i8], align 4
  %_0 = alloca [4 x i8], align 4
  %1 = alloca [8 x i8], align 8
  %arr = alloca [8 x i8], align 4
  store i64 %0, ptr %1, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %arr, ptr align 8 %1, i64 8, i1 false)
  store i32 -1, ptr %longest_start, align 4
  store i32 0, ptr %longest_end, align 4
; call <I as core::iter::traits::collect::IntoIterator>::into_iter
  %2 = call { i32, i32 } @"_ZN63_$LT$I$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17hcd3ef86ed14600b8E"(i32 0, i32 %n) #20
  %_5.0 = extractvalue { i32, i32 } %2, 0
  %_5.1 = extractvalue { i32, i32 } %2, 1
  store i32 %_5.0, ptr %iter, align 4
  %3 = getelementptr inbounds i8, ptr %iter, i64 4
  store i32 %_5.1, ptr %3, align 4
  br label %bb2

bb2:                                              ; preds = %bb14, %bb8, %start
; call core::iter::range::<impl core::iter::traits::iterator::Iterator for core::ops::range::Range<A>>::next
  %4 = call { i32, i32 } @"_ZN4core4iter5range101_$LT$impl$u20$core..iter..traits..iterator..Iterator$u20$for$u20$core..ops..range..Range$LT$A$GT$$GT$4next17hdfe8f6a9d5208d84E"(ptr align 4 %iter) #20
  %5 = extractvalue { i32, i32 } %4, 0
  %6 = extractvalue { i32, i32 } %4, 1
  store i32 %5, ptr %_8, align 4
  %7 = getelementptr inbounds i8, ptr %_8, i64 4
  store i32 %6, ptr %7, align 4
  %8 = load i32, ptr %_8, align 4
  %9 = getelementptr inbounds i8, ptr %_8, i64 4
  %10 = load i32, ptr %9, align 4
  %_10 = zext i32 %8 to i64
  %11 = trunc nuw i64 %_10 to i1
  br i1 %11, label %bb5, label %bb6

bb5:                                              ; preds = %bb2
  %12 = getelementptr inbounds i8, ptr %_8, i64 4
  %start4 = load i32, ptr %12, align 4
  store i32 2147483647, ptr %min, align 4
  store i32 -2147483648, ptr %max, align 4
; call <I as core::iter::traits::collect::IntoIterator>::into_iter
  %13 = call { i32, i32 } @"_ZN63_$LT$I$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17hcd3ef86ed14600b8E"(i32 %start4, i32 %n) #20
  %_14.0 = extractvalue { i32, i32 } %13, 0
  %_14.1 = extractvalue { i32, i32 } %13, 1
  store i32 %_14.0, ptr %iter1, align 4
  %14 = getelementptr inbounds i8, ptr %iter1, i64 4
  store i32 %_14.1, ptr %14, align 4
  br label %bb8

bb6:                                              ; preds = %bb2
  %_43 = load i32, ptr %longest_start, align 4
  %_42 = icmp eq i32 %_43, -1
  br i1 %_42, label %bb20, label %bb21

bb21:                                             ; preds = %bb6
  %_46 = load i32, ptr %longest_end, align 4
  %_47 = load i32, ptr %longest_start, align 4
  %15 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %_46, i32 %_47)
  %_48.0 = extractvalue { i32, i1 } %15, 0
  %_48.1 = extractvalue { i32, i1 } %15, 1
  br i1 %_48.1, label %panic, label %bb22

bb20:                                             ; preds = %bb6
  store i32 %n, ptr %_0, align 4
  br label %bb25

bb22:                                             ; preds = %bb21
  %16 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %_48.0, i32 1)
  %_49.0 = extractvalue { i32, i1 } %16, 0
  %_49.1 = extractvalue { i32, i1 } %16, 1
  br i1 %_49.1, label %panic2, label %bb23

panic:                                            ; preds = %bb21
; call core::panicking::panic_const::panic_const_sub_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_sub_overflow17h134cc1a7f93654deE(ptr align 8 @alloc_ffbc08e8f43d33517c5af6ee39e91f14) #22
  unreachable

bb23:                                             ; preds = %bb22
  %17 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %n, i32 %_49.0)
  %_50.0 = extractvalue { i32, i1 } %17, 0
  %_50.1 = extractvalue { i32, i1 } %17, 1
  br i1 %_50.1, label %panic3, label %bb24

panic2:                                           ; preds = %bb22
; call core::panicking::panic_const::panic_const_add_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_e88274362870d92352e1123d0c1bdb80) #22
  unreachable

bb24:                                             ; preds = %bb23
  store i32 %_50.0, ptr %_0, align 4
  br label %bb25

panic3:                                           ; preds = %bb23
; call core::panicking::panic_const::panic_const_sub_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_sub_overflow17h134cc1a7f93654deE(ptr align 8 @alloc_29d8ece08c24f150a8525b02bba43ef9) #22
  unreachable

bb25:                                             ; preds = %bb20, %bb24
  %18 = load i32, ptr %_0, align 4
  ret i32 %18

bb8:                                              ; preds = %bb19, %bb18, %bb5
; call core::iter::range::<impl core::iter::traits::iterator::Iterator for core::ops::range::Range<A>>::next
  %19 = call { i32, i32 } @"_ZN4core4iter5range101_$LT$impl$u20$core..iter..traits..iterator..Iterator$u20$for$u20$core..ops..range..Range$LT$A$GT$$GT$4next17hdfe8f6a9d5208d84E"(ptr align 4 %iter1) #20
  %20 = extractvalue { i32, i32 } %19, 0
  %21 = extractvalue { i32, i32 } %19, 1
  store i32 %20, ptr %_17, align 4
  %22 = getelementptr inbounds i8, ptr %_17, i64 4
  store i32 %21, ptr %22, align 4
  %23 = load i32, ptr %_17, align 4
  %24 = getelementptr inbounds i8, ptr %_17, i64 4
  %25 = load i32, ptr %24, align 4
  %_19 = zext i32 %23 to i64
  %26 = trunc nuw i64 %_19 to i1
  br i1 %26, label %bb10, label %bb2

bb10:                                             ; preds = %bb8
  %27 = getelementptr inbounds i8, ptr %_17, i64 4
  %end = load i32, ptr %27, align 4
  %_22 = sext i32 %end to i64
  %_23 = icmp ult i64 %_22, 2
  br i1 %_23, label %bb11, label %panic5

bb11:                                             ; preds = %bb10
  %28 = getelementptr inbounds nuw i32, ptr %arr, i64 %_22
  %val = load i32, ptr %28, align 4
  %_25 = load i32, ptr %min, align 4
; call core::cmp::Ord::min
  %_24 = call i32 @_ZN4core3cmp3Ord3min17h141b2e67af53f742E(i32 %_25, i32 %val) #20
  store i32 %_24, ptr %min, align 4
  %_27 = load i32, ptr %max, align 4
; call core::cmp::Ord::max
  %_26 = call i32 @_ZN4core3cmp3Ord3max17h51e60093364255f0E(i32 %_27, i32 %val) #20
  store i32 %_26, ptr %max, align 4
  %_30 = load i32, ptr %min, align 4
  %29 = call { i32, i1 } @llvm.smul.with.overflow.i32(i32 2, i32 %_30)
  %_31.0 = extractvalue { i32, i1 } %29, 0
  %_31.1 = extractvalue { i32, i1 } %29, 1
  br i1 %_31.1, label %panic6, label %bb14

panic5:                                           ; preds = %bb10
; call core::panicking::panic_bounds_check
  call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 %_22, i64 2, ptr align 8 @alloc_db93824dbd2cc9b394212b0e043cacf8) #22
  unreachable

bb14:                                             ; preds = %bb11
  %_32 = load i32, ptr %max, align 4
  %_28 = icmp sle i32 %_31.0, %_32
  br i1 %_28, label %bb2, label %bb15

panic6:                                           ; preds = %bb11
; call core::panicking::panic_const::panic_const_mul_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_mul_overflow17h554ac164c12099f8E(ptr align 8 @alloc_6a42887818f8d722bc4659a524f59288) #22
  unreachable

bb15:                                             ; preds = %bb14
  %30 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %end, i32 %start4)
  %_35.0 = extractvalue { i32, i1 } %30, 0
  %_35.1 = extractvalue { i32, i1 } %30, 1
  br i1 %_35.1, label %panic7, label %bb16

bb16:                                             ; preds = %bb15
  %_37 = load i32, ptr %longest_end, align 4
  %_38 = load i32, ptr %longest_start, align 4
  %31 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %_37, i32 %_38)
  %_39.0 = extractvalue { i32, i1 } %31, 0
  %_39.1 = extractvalue { i32, i1 } %31, 1
  br i1 %_39.1, label %panic8, label %bb17

panic7:                                           ; preds = %bb15
; call core::panicking::panic_const::panic_const_sub_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_sub_overflow17h134cc1a7f93654deE(ptr align 8 @alloc_dd0a09d2b5c31b4b230084cdee9e545d) #22
  unreachable

bb17:                                             ; preds = %bb16
  %_33 = icmp sgt i32 %_35.0, %_39.0
  br i1 %_33, label %bb19, label %bb18

panic8:                                           ; preds = %bb16
; call core::panicking::panic_const::panic_const_sub_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_sub_overflow17h134cc1a7f93654deE(ptr align 8 @alloc_1694929b2077407c01b167ffddf473cf) #22
  unreachable

bb18:                                             ; preds = %bb17
  %_41 = load i32, ptr %longest_start, align 4
  %_40 = icmp eq i32 %_41, -1
  br i1 %_40, label %bb19, label %bb8

bb19:                                             ; preds = %bb18, %bb17
  store i32 %start4, ptr %longest_start, align 4
  store i32 %end, ptr %longest_end, align 4
  br label %bb8

bb4:                                              ; No predecessors!
  unreachable
}

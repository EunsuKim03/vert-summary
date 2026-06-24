define i32 @f_gold(i64 %0, i32 %n, i32 %k) unnamed_addr #3 {
start:
  %_17 = alloca [8 x i8], align 4
  %iter1 = alloca [8 x i8], align 4
  %_8 = alloca [8 x i8], align 4
  %iter = alloca [8 x i8], align 4
  %count = alloca [4 x i8], align 4
  %1 = alloca [8 x i8], align 8
  %arr = alloca [8 x i8], align 4
  store i64 %0, ptr %1, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %arr, ptr align 8 %1, i64 8, i1 false)
  store i32 0, ptr %count, align 4
; call <I as core::iter::traits::collect::IntoIterator>::into_iter
  %2 = call { i32, i32 } @"_ZN63_$LT$I$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17h7f757ebadeab1c60E"(i32 0, i32 %n) #20
  %_5.0 = extractvalue { i32, i32 } %2, 0
  %_5.1 = extractvalue { i32, i32 } %2, 1
  store i32 %_5.0, ptr %iter, align 4
  %3 = getelementptr inbounds i8, ptr %iter, i64 4
  store i32 %_5.1, ptr %3, align 4
  br label %bb2

bb2:                                              ; preds = %bb9, %start
; call core::iter::range::<impl core::iter::traits::iterator::Iterator for core::ops::range::Range<A>>::next
  %4 = call { i32, i32 } @"_ZN4core4iter5range101_$LT$impl$u20$core..iter..traits..iterator..Iterator$u20$for$u20$core..ops..range..Range$LT$A$GT$$GT$4next17h77f5efee74d0d300E"(ptr align 4 %iter) #20
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
  %i = load i32, ptr %12, align 4
  %13 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %i, i32 1)
  %_15.0 = extractvalue { i32, i1 } %13, 0
  %_15.1 = extractvalue { i32, i1 } %13, 1
  br i1 %_15.1, label %panic, label %bb7

bb6:                                              ; preds = %bb2
  %_0 = load i32, ptr %count, align 4
  ret i32 %_0

bb7:                                              ; preds = %bb5
; call <I as core::iter::traits::collect::IntoIterator>::into_iter
  %14 = call { i32, i32 } @"_ZN63_$LT$I$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17h7f757ebadeab1c60E"(i32 %_15.0, i32 %n) #20
  %_12.0 = extractvalue { i32, i32 } %14, 0
  %_12.1 = extractvalue { i32, i32 } %14, 1
  store i32 %_12.0, ptr %iter1, align 4
  %15 = getelementptr inbounds i8, ptr %iter1, i64 4
  store i32 %_12.1, ptr %15, align 4
  br label %bb9

panic:                                            ; preds = %bb5
; call core::panicking::panic_const::panic_const_add_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_2f8d36f785e14a94fbd60e1f36fe066d) #22
  unreachable

bb9:                                              ; preds = %bb20, %bb18, %bb7
; call core::iter::range::<impl core::iter::traits::iterator::Iterator for core::ops::range::Range<A>>::next
  %16 = call { i32, i32 } @"_ZN4core4iter5range101_$LT$impl$u20$core..iter..traits..iterator..Iterator$u20$for$u20$core..ops..range..Range$LT$A$GT$$GT$4next17h77f5efee74d0d300E"(ptr align 4 %iter1) #20
  %17 = extractvalue { i32, i32 } %16, 0
  %18 = extractvalue { i32, i32 } %16, 1
  store i32 %17, ptr %_17, align 4
  %19 = getelementptr inbounds i8, ptr %_17, i64 4
  store i32 %18, ptr %19, align 4
  %20 = load i32, ptr %_17, align 4
  %21 = getelementptr inbounds i8, ptr %_17, i64 4
  %22 = load i32, ptr %21, align 4
  %_19 = zext i32 %20 to i64
  %23 = trunc nuw i64 %_19 to i1
  br i1 %23, label %bb11, label %bb2

bb11:                                             ; preds = %bb9
  %24 = getelementptr inbounds i8, ptr %_17, i64 4
  %j = load i32, ptr %24, align 4
  %_24 = sext i32 %i to i64
  %_25 = icmp ult i64 %_24, 2
  br i1 %_25, label %bb12, label %panic2

bb12:                                             ; preds = %bb11
  %25 = getelementptr inbounds nuw i32, ptr %arr, i64 %_24
  %_23 = load i32, ptr %25, align 4
  %_27 = sext i32 %j to i64
  %_28 = icmp ult i64 %_27, 2
  br i1 %_28, label %bb13, label %panic3

panic2:                                           ; preds = %bb11
; call core::panicking::panic_bounds_check
  call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 %_24, i64 2, ptr align 8 @alloc_62c358a4823a4c56f2a763eb2947a1f8) #22
  unreachable

bb13:                                             ; preds = %bb12
  %26 = getelementptr inbounds nuw i32, ptr %arr, i64 %_27
  %_26 = load i32, ptr %26, align 4
  %27 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %_23, i32 %_26)
  %_29.0 = extractvalue { i32, i1 } %27, 0
  %_29.1 = extractvalue { i32, i1 } %27, 1
  br i1 %_29.1, label %panic4, label %bb14

panic3:                                           ; preds = %bb12
; call core::panicking::panic_bounds_check
  call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 %_27, i64 2, ptr align 8 @alloc_bca1139f73abfd86fa2e7c54aec67f3d) #22
  unreachable

bb14:                                             ; preds = %bb13
  %_21 = icmp eq i32 %_29.0, %k
  br i1 %_21, label %bb19, label %bb15

panic4:                                           ; preds = %bb13
; call core::panicking::panic_const::panic_const_sub_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_sub_overflow17h134cc1a7f93654deE(ptr align 8 @alloc_62c358a4823a4c56f2a763eb2947a1f8) #22
  unreachable

bb15:                                             ; preds = %bb14
  %_33 = sext i32 %j to i64
  %_34 = icmp ult i64 %_33, 2
  br i1 %_34, label %bb16, label %panic5

bb19:                                             ; preds = %bb18, %bb14
  %28 = load i32, ptr %count, align 4
  %29 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %28, i32 1)
  %_39.0 = extractvalue { i32, i1 } %29, 0
  %_39.1 = extractvalue { i32, i1 } %29, 1
  br i1 %_39.1, label %panic8, label %bb20

bb16:                                             ; preds = %bb15
  %30 = getelementptr inbounds nuw i32, ptr %arr, i64 %_33
  %_32 = load i32, ptr %30, align 4
  %_36 = sext i32 %i to i64
  %_37 = icmp ult i64 %_36, 2
  br i1 %_37, label %bb17, label %panic6

panic5:                                           ; preds = %bb15
; call core::panicking::panic_bounds_check
  call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 %_33, i64 2, ptr align 8 @alloc_d2d671e962ddc32ff2cdb5ec0618b25d) #22
  unreachable

bb17:                                             ; preds = %bb16
  %31 = getelementptr inbounds nuw i32, ptr %arr, i64 %_36
  %_35 = load i32, ptr %31, align 4
  %32 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %_32, i32 %_35)
  %_38.0 = extractvalue { i32, i1 } %32, 0
  %_38.1 = extractvalue { i32, i1 } %32, 1
  br i1 %_38.1, label %panic7, label %bb18

panic6:                                           ; preds = %bb16
; call core::panicking::panic_bounds_check
  call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 %_36, i64 2, ptr align 8 @alloc_c26ea02f584fec5e0087f4011ea243f1) #22
  unreachable

bb18:                                             ; preds = %bb17
  %_30 = icmp eq i32 %_38.0, %k
  br i1 %_30, label %bb19, label %bb9

panic7:                                           ; preds = %bb17
; call core::panicking::panic_const::panic_const_sub_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_sub_overflow17h134cc1a7f93654deE(ptr align 8 @alloc_d2d671e962ddc32ff2cdb5ec0618b25d) #22
  unreachable

bb20:                                             ; preds = %bb19
  store i32 %_39.0, ptr %count, align 4
  br label %bb9

panic8:                                           ; preds = %bb19
; call core::panicking::panic_const::panic_const_add_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_2dff6bf0f98e7217e259a805fe412102) #22
  unreachable

bb4:                                              ; No predecessors!
  unreachable
}

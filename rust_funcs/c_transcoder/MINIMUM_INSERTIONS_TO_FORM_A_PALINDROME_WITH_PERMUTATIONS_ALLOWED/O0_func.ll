define i32 @f_gold(ptr align 1 %str.0, i64 %str.1) unnamed_addr #3 {
start:
  %_25 = alloca [16 x i8], align 8
  %iter1 = alloca [16 x i8], align 8
  %_8 = alloca [16 x i8], align 8
  %iter = alloca [16 x i8], align 8
  %count = alloca [104 x i8], align 4
  %res = alloca [4 x i8], align 4
  %_0 = alloca [4 x i8], align 4
; call core::str::<impl str>::len
  %n = call i64 @"_ZN4core3str21_$LT$impl$u20$str$GT$3len17hd131967eec11187cE"(ptr align 1 %str.0, i64 %str.1) #20
  store i32 0, ptr %res, align 4
  call void @llvm.memset.p0.i64(ptr align 4 %count, i8 0, i64 104, i1 false)
; call <I as core::iter::traits::collect::IntoIterator>::into_iter
  %0 = call { i64, i64 } @"_ZN63_$LT$I$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17hc2e8cc41b7370384E"(i64 0, i64 %n) #20
  %_5.0 = extractvalue { i64, i64 } %0, 0
  %_5.1 = extractvalue { i64, i64 } %0, 1
  store i64 %_5.0, ptr %iter, align 8
  %1 = getelementptr inbounds i8, ptr %iter, i64 8
  store i64 %_5.1, ptr %1, align 8
  br label %bb3

bb3:                                              ; preds = %bb12, %start
; call core::iter::range::<impl core::iter::traits::iterator::Iterator for core::ops::range::Range<A>>::next
  %2 = call { i64, i64 } @"_ZN4core4iter5range101_$LT$impl$u20$core..iter..traits..iterator..Iterator$u20$for$u20$core..ops..range..Range$LT$A$GT$$GT$4next17heb4d93508ffb6027E"(ptr align 8 %iter) #20
  %3 = extractvalue { i64, i64 } %2, 0
  %4 = extractvalue { i64, i64 } %2, 1
  store i64 %3, ptr %_8, align 8
  %5 = getelementptr inbounds i8, ptr %_8, i64 8
  store i64 %4, ptr %5, align 8
  %_10 = load i64, ptr %_8, align 8
  %6 = getelementptr inbounds i8, ptr %_8, i64 8
  %7 = load i64, ptr %6, align 8
  %8 = trunc nuw i64 %_10 to i1
  br i1 %8, label %bb6, label %bb7

bb6:                                              ; preds = %bb3
  %9 = getelementptr inbounds i8, ptr %_8, i64 8
  %i5 = load i64, ptr %9, align 8
  %10 = insertvalue { ptr, i64 } poison, ptr %str.0, 0
  %11 = insertvalue { ptr, i64 } %10, i64 %str.1, 1
  %_15.0 = extractvalue { ptr, i64 } %11, 0
  %_15.1 = extractvalue { ptr, i64 } %11, 1
  %_17 = icmp ult i64 %i5, %_15.1
  br i1 %_17, label %bb9, label %panic6

bb7:                                              ; preds = %bb3
; call <I as core::iter::traits::collect::IntoIterator>::into_iter
  %12 = call { i64, i64 } @"_ZN63_$LT$I$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17hc2e8cc41b7370384E"(i64 0, i64 26) #20
  %_22.0 = extractvalue { i64, i64 } %12, 0
  %_22.1 = extractvalue { i64, i64 } %12, 1
  store i64 %_22.0, ptr %iter1, align 8
  %13 = getelementptr inbounds i8, ptr %iter1, i64 8
  store i64 %_22.1, ptr %13, align 8
  br label %bb14

bb14:                                             ; preds = %bb22, %bb20, %bb7
; call core::iter::range::<impl core::iter::traits::iterator::Iterator for core::ops::range::Range<A>>::next
  %14 = call { i64, i64 } @"_ZN4core4iter5range101_$LT$impl$u20$core..iter..traits..iterator..Iterator$u20$for$u20$core..ops..range..Range$LT$A$GT$$GT$4next17heb4d93508ffb6027E"(ptr align 8 %iter1) #20
  %15 = extractvalue { i64, i64 } %14, 0
  %16 = extractvalue { i64, i64 } %14, 1
  store i64 %15, ptr %_25, align 8
  %17 = getelementptr inbounds i8, ptr %_25, i64 8
  store i64 %16, ptr %17, align 8
  %_27 = load i64, ptr %_25, align 8
  %18 = getelementptr inbounds i8, ptr %_25, i64 8
  %19 = load i64, ptr %18, align 8
  %20 = trunc nuw i64 %_27 to i1
  br i1 %20, label %bb16, label %bb17

bb16:                                             ; preds = %bb14
  %21 = getelementptr inbounds i8, ptr %_25, i64 8
  %i = load i64, ptr %21, align 8
  %_32 = icmp ult i64 %i, 26
  br i1 %_32, label %bb18, label %panic2

bb17:                                             ; preds = %bb14
  %_39 = load i32, ptr %res, align 4
  %_38 = icmp eq i32 %_39, 0
  br i1 %_38, label %bb23, label %bb24

bb24:                                             ; preds = %bb17
  %_40 = load i32, ptr %res, align 4
  %22 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %_40, i32 1)
  %_41.0 = extractvalue { i32, i1 } %22, 0
  %_41.1 = extractvalue { i32, i1 } %22, 1
  br i1 %_41.1, label %panic, label %bb25

bb23:                                             ; preds = %bb17
  store i32 0, ptr %_0, align 4
  br label %bb26

bb25:                                             ; preds = %bb24
  store i32 %_41.0, ptr %_0, align 4
  br label %bb26

panic:                                            ; preds = %bb24
; call core::panicking::panic_const::panic_const_sub_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_sub_overflow17h134cc1a7f93654deE(ptr align 8 @alloc_360d2412b3313f48f8a6f3b42ad28887) #22
  unreachable

bb26:                                             ; preds = %bb23, %bb25
  %23 = load i32, ptr %_0, align 4
  ret i32 %23

bb18:                                             ; preds = %bb16
  %24 = getelementptr inbounds nuw i32, ptr %count, i64 %i
  %_31 = load i32, ptr %24, align 4
  %_35 = icmp eq i32 %_31, -2147483648
  %_36 = and i1 false, %_35
  br i1 %_36, label %panic3, label %bb20

panic2:                                           ; preds = %bb16
; call core::panicking::panic_bounds_check
  call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 %i, i64 26, ptr align 8 @alloc_338f0217763b22c9fad5a3de758341a6) #22
  unreachable

bb20:                                             ; preds = %bb18
  %_30 = srem i32 %_31, 2
  %_29 = icmp eq i32 %_30, 1
  br i1 %_29, label %bb21, label %bb14

panic3:                                           ; preds = %bb18
; call core::panicking::panic_const::panic_const_rem_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_rem_overflow17h4aab8182a78c82f8E(ptr align 8 @alloc_338f0217763b22c9fad5a3de758341a6) #22
  unreachable

bb21:                                             ; preds = %bb20
  %25 = load i32, ptr %res, align 4
  %26 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %25, i32 1)
  %_37.0 = extractvalue { i32, i1 } %26, 0
  %_37.1 = extractvalue { i32, i1 } %26, 1
  br i1 %_37.1, label %panic4, label %bb22

bb22:                                             ; preds = %bb21
  store i32 %_37.0, ptr %res, align 4
  br label %bb14

panic4:                                           ; preds = %bb21
; call core::panicking::panic_const::panic_const_add_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_8824e6879b7733753b6096afaef068f8) #22
  unreachable

bb9:                                              ; preds = %bb6
  %27 = getelementptr inbounds nuw i8, ptr %_15.0, i64 %i5
  %_14 = load i8, ptr %27, align 1
  %_13 = zext i8 %_14 to i64
  %_19.0 = sub i64 %_13, 97
  %_19.1 = icmp ult i64 %_13, 97
  br i1 %_19.1, label %panic7, label %bb10

panic6:                                           ; preds = %bb6
; call core::panicking::panic_bounds_check
  call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 %i5, i64 %_15.1, ptr align 8 @alloc_9c904604700334b349f89a9b988ca66b) #22
  unreachable

bb10:                                             ; preds = %bb9
  %_20 = icmp ult i64 %_19.0, 26
  br i1 %_20, label %bb11, label %panic8

panic7:                                           ; preds = %bb9
; call core::panicking::panic_const::panic_const_sub_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_sub_overflow17h134cc1a7f93654deE(ptr align 8 @alloc_9c904604700334b349f89a9b988ca66b) #22
  unreachable

bb11:                                             ; preds = %bb10
  %28 = getelementptr inbounds nuw i32, ptr %count, i64 %_19.0
  %29 = load i32, ptr %28, align 4
  %30 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %29, i32 1)
  %_21.0 = extractvalue { i32, i1 } %30, 0
  %_21.1 = extractvalue { i32, i1 } %30, 1
  br i1 %_21.1, label %panic9, label %bb12

panic8:                                           ; preds = %bb10
; call core::panicking::panic_bounds_check
  call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 %_19.0, i64 26, ptr align 8 @alloc_f41a4e3dee8ef76ed955279c06f41bda) #22
  unreachable

bb12:                                             ; preds = %bb11
  %31 = getelementptr inbounds nuw i32, ptr %count, i64 %_19.0
  store i32 %_21.0, ptr %31, align 4
  br label %bb3

panic9:                                           ; preds = %bb11
; call core::panicking::panic_const::panic_const_add_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_f41a4e3dee8ef76ed955279c06f41bda) #22
  unreachable

bb5:                                              ; No predecessors!
  unreachable
}

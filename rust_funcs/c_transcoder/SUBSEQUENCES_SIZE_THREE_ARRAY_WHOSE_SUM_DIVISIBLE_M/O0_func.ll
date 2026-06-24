define i32 @f_gold(i64 %0, i32 %N, i32 %M) unnamed_addr #3 {
start:
  %_27 = alloca [8 x i8], align 4
  %iter2 = alloca [8 x i8], align 4
  %_18 = alloca [8 x i8], align 4
  %iter1 = alloca [8 x i8], align 4
  %_9 = alloca [8 x i8], align 4
  %iter = alloca [8 x i8], align 4
  %ans = alloca [4 x i8], align 4
  %1 = alloca [8 x i8], align 8
  %A = alloca [8 x i8], align 4
  store i64 %0, ptr %1, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %A, ptr align 8 %1, i64 8, i1 false)
  store i32 0, ptr %ans, align 4
; call <I as core::iter::traits::collect::IntoIterator>::into_iter
  %2 = call { i32, i32 } @"_ZN63_$LT$I$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17h9f3c748f4d12309fE"(i32 0, i32 %N) #20
  %_6.0 = extractvalue { i32, i32 } %2, 0
  %_6.1 = extractvalue { i32, i32 } %2, 1
  store i32 %_6.0, ptr %iter, align 4
  %3 = getelementptr inbounds i8, ptr %iter, i64 4
  store i32 %_6.1, ptr %3, align 4
  br label %bb2

bb2:                                              ; preds = %bb9, %start
; call core::iter::range::<impl core::iter::traits::iterator::Iterator for core::ops::range::Range<A>>::next
  %4 = call { i32, i32 } @"_ZN4core4iter5range101_$LT$impl$u20$core..iter..traits..iterator..Iterator$u20$for$u20$core..ops..range..Range$LT$A$GT$$GT$4next17h19f0e240bb702225E"(ptr align 4 %iter) #20
  %5 = extractvalue { i32, i32 } %4, 0
  %6 = extractvalue { i32, i32 } %4, 1
  store i32 %5, ptr %_9, align 4
  %7 = getelementptr inbounds i8, ptr %_9, i64 4
  store i32 %6, ptr %7, align 4
  %8 = load i32, ptr %_9, align 4
  %9 = getelementptr inbounds i8, ptr %_9, i64 4
  %10 = load i32, ptr %9, align 4
  %_11 = zext i32 %8 to i64
  %11 = trunc nuw i64 %_11 to i1
  br i1 %11, label %bb5, label %bb6

bb5:                                              ; preds = %bb2
  %12 = getelementptr inbounds i8, ptr %_9, i64 4
  %i = load i32, ptr %12, align 4
  %13 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %i, i32 1)
  %_16.0 = extractvalue { i32, i1 } %13, 0
  %_16.1 = extractvalue { i32, i1 } %13, 1
  br i1 %_16.1, label %panic, label %bb7

bb6:                                              ; preds = %bb2
  %_0 = load i32, ptr %ans, align 4
  ret i32 %_0

bb7:                                              ; preds = %bb5
; call <I as core::iter::traits::collect::IntoIterator>::into_iter
  %14 = call { i32, i32 } @"_ZN63_$LT$I$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17h9f3c748f4d12309fE"(i32 %_16.0, i32 %N) #20
  %_13.0 = extractvalue { i32, i32 } %14, 0
  %_13.1 = extractvalue { i32, i32 } %14, 1
  store i32 %_13.0, ptr %iter1, align 4
  %15 = getelementptr inbounds i8, ptr %iter1, i64 4
  store i32 %_13.1, ptr %15, align 4
  br label %bb9

panic:                                            ; preds = %bb5
; call core::panicking::panic_const::panic_const_add_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_3fbd66f36b1551416e5b4041f5feb0dc) #22
  unreachable

bb9:                                              ; preds = %bb14, %bb7
; call core::iter::range::<impl core::iter::traits::iterator::Iterator for core::ops::range::Range<A>>::next
  %16 = call { i32, i32 } @"_ZN4core4iter5range101_$LT$impl$u20$core..iter..traits..iterator..Iterator$u20$for$u20$core..ops..range..Range$LT$A$GT$$GT$4next17h19f0e240bb702225E"(ptr align 4 %iter1) #20
  %17 = extractvalue { i32, i32 } %16, 0
  %18 = extractvalue { i32, i32 } %16, 1
  store i32 %17, ptr %_18, align 4
  %19 = getelementptr inbounds i8, ptr %_18, i64 4
  store i32 %18, ptr %19, align 4
  %20 = load i32, ptr %_18, align 4
  %21 = getelementptr inbounds i8, ptr %_18, i64 4
  %22 = load i32, ptr %21, align 4
  %_20 = zext i32 %20 to i64
  %23 = trunc nuw i64 %_20 to i1
  br i1 %23, label %bb11, label %bb2

bb11:                                             ; preds = %bb9
  %24 = getelementptr inbounds i8, ptr %_18, i64 4
  %j = load i32, ptr %24, align 4
  %25 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %j, i32 1)
  %_25.0 = extractvalue { i32, i1 } %25, 0
  %_25.1 = extractvalue { i32, i1 } %25, 1
  br i1 %_25.1, label %panic3, label %bb12

bb12:                                             ; preds = %bb11
; call <I as core::iter::traits::collect::IntoIterator>::into_iter
  %26 = call { i32, i32 } @"_ZN63_$LT$I$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17h9f3c748f4d12309fE"(i32 %_25.0, i32 %N) #20
  %_22.0 = extractvalue { i32, i32 } %26, 0
  %_22.1 = extractvalue { i32, i32 } %26, 1
  store i32 %_22.0, ptr %iter2, align 4
  %27 = getelementptr inbounds i8, ptr %iter2, i64 4
  store i32 %_22.1, ptr %27, align 4
  br label %bb14

panic3:                                           ; preds = %bb11
; call core::panicking::panic_const::panic_const_add_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_9a27b8e874ddd278e6b29fbe3f53946d) #22
  unreachable

bb14:                                             ; preds = %bb25, %bb23, %bb12
; call core::iter::range::<impl core::iter::traits::iterator::Iterator for core::ops::range::Range<A>>::next
  %28 = call { i32, i32 } @"_ZN4core4iter5range101_$LT$impl$u20$core..iter..traits..iterator..Iterator$u20$for$u20$core..ops..range..Range$LT$A$GT$$GT$4next17h19f0e240bb702225E"(ptr align 4 %iter2) #20
  %29 = extractvalue { i32, i32 } %28, 0
  %30 = extractvalue { i32, i32 } %28, 1
  store i32 %29, ptr %_27, align 4
  %31 = getelementptr inbounds i8, ptr %_27, i64 4
  store i32 %30, ptr %31, align 4
  %32 = load i32, ptr %_27, align 4
  %33 = getelementptr inbounds i8, ptr %_27, i64 4
  %34 = load i32, ptr %33, align 4
  %_29 = zext i32 %32 to i64
  %35 = trunc nuw i64 %_29 to i1
  br i1 %35, label %bb16, label %bb9

bb16:                                             ; preds = %bb14
  %36 = getelementptr inbounds i8, ptr %_27, i64 4
  %k = load i32, ptr %36, align 4
  %_33 = sext i32 %i to i64
  %_34 = icmp ult i64 %_33, 2
  br i1 %_34, label %bb17, label %panic4

bb17:                                             ; preds = %bb16
  %37 = getelementptr inbounds nuw i32, ptr %A, i64 %_33
  %_32 = load i32, ptr %37, align 4
  %_36 = sext i32 %j to i64
  %_37 = icmp ult i64 %_36, 2
  br i1 %_37, label %bb18, label %panic5

panic4:                                           ; preds = %bb16
; call core::panicking::panic_bounds_check
  call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 %_33, i64 2, ptr align 8 @alloc_d0be0c4662d1477b70bba504a4b9f968) #22
  unreachable

bb18:                                             ; preds = %bb17
  %38 = getelementptr inbounds nuw i32, ptr %A, i64 %_36
  %_35 = load i32, ptr %38, align 4
  %39 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %_32, i32 %_35)
  %_38.0 = extractvalue { i32, i1 } %39, 0
  %_38.1 = extractvalue { i32, i1 } %39, 1
  br i1 %_38.1, label %panic6, label %bb19

panic5:                                           ; preds = %bb17
; call core::panicking::panic_bounds_check
  call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 %_36, i64 2, ptr align 8 @alloc_c5f81dcc0a2284b4fc589f7b1a873d3f) #22
  unreachable

bb19:                                             ; preds = %bb18
  %_40 = sext i32 %k to i64
  %_41 = icmp ult i64 %_40, 2
  br i1 %_41, label %bb20, label %panic7

panic6:                                           ; preds = %bb18
; call core::panicking::panic_const::panic_const_add_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_d0be0c4662d1477b70bba504a4b9f968) #22
  unreachable

bb20:                                             ; preds = %bb19
  %40 = getelementptr inbounds nuw i32, ptr %A, i64 %_40
  %_39 = load i32, ptr %40, align 4
  %41 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %_38.0, i32 %_39)
  %_42.0 = extractvalue { i32, i1 } %41, 0
  %_42.1 = extractvalue { i32, i1 } %41, 1
  br i1 %_42.1, label %panic8, label %bb21

panic7:                                           ; preds = %bb19
; call core::panicking::panic_bounds_check
  call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 %_40, i64 2, ptr align 8 @alloc_40fd4592e1bb1c6ffd1e32d9cd8ad348) #22
  unreachable

bb21:                                             ; preds = %bb20
  %_45 = icmp eq i32 %M, 0
  br i1 %_45, label %panic9, label %bb22

panic8:                                           ; preds = %bb20
; call core::panicking::panic_const::panic_const_add_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_d0be0c4662d1477b70bba504a4b9f968) #22
  unreachable

bb22:                                             ; preds = %bb21
  %_46 = icmp eq i32 %M, -1
  %_47 = icmp eq i32 %_42.0, -2147483648
  %_48 = and i1 %_46, %_47
  br i1 %_48, label %panic10, label %bb23

panic9:                                           ; preds = %bb21
; call core::panicking::panic_const::panic_const_rem_by_zero
  call void @_ZN4core9panicking11panic_const23panic_const_rem_by_zero17h68b8e0645961a790E(ptr align 8 @alloc_1a03b276c99491c1b99c03711d5abb55) #22
  unreachable

bb23:                                             ; preds = %bb22
  %_44 = srem i32 %_42.0, %M
  %_43 = icmp eq i32 %_44, 0
  br i1 %_43, label %bb24, label %bb14

panic10:                                          ; preds = %bb22
; call core::panicking::panic_const::panic_const_rem_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_rem_overflow17h4aab8182a78c82f8E(ptr align 8 @alloc_1a03b276c99491c1b99c03711d5abb55) #22
  unreachable

bb24:                                             ; preds = %bb23
  %42 = load i32, ptr %ans, align 4
  %43 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %42, i32 1)
  %_49.0 = extractvalue { i32, i1 } %43, 0
  %_49.1 = extractvalue { i32, i1 } %43, 1
  br i1 %_49.1, label %panic11, label %bb25

bb25:                                             ; preds = %bb24
  store i32 %_49.0, ptr %ans, align 4
  br label %bb14

panic11:                                          ; preds = %bb24
; call core::panicking::panic_const::panic_const_add_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_e05fa4d72794679377edd59fcbb6758b) #22
  unreachable

bb4:                                              ; No predecessors!
  unreachable
}

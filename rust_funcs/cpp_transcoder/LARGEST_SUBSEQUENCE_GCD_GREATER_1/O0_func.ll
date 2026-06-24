define i32 @f_gold(i64 %0, i32 %n) unnamed_addr #3 {
start:
  %self.i = alloca [8 x i8], align 8
  %_21 = alloca [8 x i8], align 4
  %iter1 = alloca [8 x i8], align 4
  %count = alloca [4 x i8], align 4
  %_13 = alloca [8 x i8], align 4
  %iter = alloca [12 x i8], align 4
  %_11 = alloca [12 x i8], align 4
  %_10 = alloca [12 x i8], align 4
  %ans = alloca [4 x i8], align 4
  %1 = alloca [8 x i8], align 8
  %arr = alloca [8 x i8], align 4
  store i64 %0, ptr %1, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %arr, ptr align 8 %1, i64 8, i1 false)
  store i32 0, ptr %ans, align 4
; call core::slice::<impl [T]>::iter
  %2 = call { ptr, ptr } @"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$4iter17h80e058dd452c458fE"(ptr align 4 %arr, i64 2) #17
  %_7.0 = extractvalue { ptr, ptr } %2, 0
  %_7.1 = extractvalue { ptr, ptr } %2, 1
; call core::iter::traits::iterator::Iterator::max
  %_6 = call align 4 ptr @_ZN4core4iter6traits8iterator8Iterator3max17h3f4e747e89f7da62E(ptr %_7.0, ptr %_7.1) #17
  store ptr %_6, ptr %self.i, align 8
  %3 = load ptr, ptr %self.i, align 8
  %4 = ptrtoint ptr %3 to i64
  %5 = icmp eq i64 %4, 0
  %_2.i = select i1 %5, i64 0, i64 1
  %6 = trunc nuw i64 %_2.i to i1
  br i1 %6, label %"_ZN4core6option15Option$LT$T$GT$6unwrap17hd10b2a81ab8d9940E.exit", label %bb2.i

bb2.i:                                            ; preds = %start
; call core::option::unwrap_failed
  call void @_ZN4core6option13unwrap_failed17hef2534b77b89c04fE(ptr align 8 @alloc_9e858562f51ffe3cf5fe0e81ac1eaf4f) #22
  unreachable

"_ZN4core6option15Option$LT$T$GT$6unwrap17hd10b2a81ab8d9940E.exit": ; preds = %start
  %val.i = load ptr, ptr %self.i, align 8
  %maxele = load i32, ptr %val.i, align 4
; call core::ops::range::RangeInclusive<Idx>::new
  call void @"_ZN4core3ops5range25RangeInclusive$LT$Idx$GT$3new17h12787d4373f3ecbaE"(ptr sret([12 x i8]) align 4 %_11, i32 2, i32 %maxele) #17
; call <I as core::iter::traits::collect::IntoIterator>::into_iter
  call void @"_ZN63_$LT$I$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17h07be0bbf07f1ff01E"(ptr sret([12 x i8]) align 4 %_10, ptr align 4 %_11) #17
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %iter, ptr align 4 %_10, i64 12, i1 false)
  br label %bb6

bb6:                                              ; preds = %bb15, %"_ZN4core6option15Option$LT$T$GT$6unwrap17hd10b2a81ab8d9940E.exit"
; call core::iter::range::<impl core::iter::traits::iterator::Iterator for core::ops::range::RangeInclusive<A>>::next
  %7 = call { i32, i32 } @"_ZN4core4iter5range110_$LT$impl$u20$core..iter..traits..iterator..Iterator$u20$for$u20$core..ops..range..RangeInclusive$LT$A$GT$$GT$4next17ha5f68740ca2ce2efE"(ptr align 4 %iter) #17
  %8 = extractvalue { i32, i32 } %7, 0
  %9 = extractvalue { i32, i32 } %7, 1
  store i32 %8, ptr %_13, align 4
  %10 = getelementptr inbounds i8, ptr %_13, i64 4
  store i32 %9, ptr %10, align 4
  %11 = load i32, ptr %_13, align 4
  %12 = getelementptr inbounds i8, ptr %_13, i64 4
  %13 = load i32, ptr %12, align 4
  %_15 = zext i32 %11 to i64
  %14 = trunc nuw i64 %_15 to i1
  br i1 %14, label %bb9, label %bb10

bb9:                                              ; preds = %bb6
  %15 = getelementptr inbounds i8, ptr %_13, i64 4
  %i = load i32, ptr %15, align 4
  store i32 0, ptr %count, align 4
; call <I as core::iter::traits::collect::IntoIterator>::into_iter
  %16 = call { i32, i32 } @"_ZN63_$LT$I$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17h81df3ea185aa4ef3E"(i32 0, i32 %n) #17
  %_18.0 = extractvalue { i32, i32 } %16, 0
  %_18.1 = extractvalue { i32, i32 } %16, 1
  store i32 %_18.0, ptr %iter1, align 4
  %17 = getelementptr inbounds i8, ptr %iter1, i64 4
  store i32 %_18.1, ptr %17, align 4
  br label %bb12

bb10:                                             ; preds = %bb6
  %_0 = load i32, ptr %ans, align 4
  ret i32 %_0

bb12:                                             ; preds = %bb20, %bb18, %bb9
; call core::iter::range::<impl core::iter::traits::iterator::Iterator for core::ops::range::Range<A>>::next
  %18 = call { i32, i32 } @"_ZN4core4iter5range101_$LT$impl$u20$core..iter..traits..iterator..Iterator$u20$for$u20$core..ops..range..Range$LT$A$GT$$GT$4next17h352480eefc50477eE"(ptr align 4 %iter1) #17
  %19 = extractvalue { i32, i32 } %18, 0
  %20 = extractvalue { i32, i32 } %18, 1
  store i32 %19, ptr %_21, align 4
  %21 = getelementptr inbounds i8, ptr %_21, i64 4
  store i32 %20, ptr %21, align 4
  %22 = load i32, ptr %_21, align 4
  %23 = getelementptr inbounds i8, ptr %_21, i64 4
  %24 = load i32, ptr %23, align 4
  %_23 = zext i32 %22 to i64
  %25 = trunc nuw i64 %_23 to i1
  br i1 %25, label %bb14, label %bb15

bb14:                                             ; preds = %bb12
  %26 = getelementptr inbounds i8, ptr %_21, i64 4
  %j = load i32, ptr %26, align 4
  %_28 = sext i32 %j to i64
  %_29 = icmp ult i64 %_28, 2
  br i1 %_29, label %bb16, label %panic

bb15:                                             ; preds = %bb12
  %_36 = load i32, ptr %ans, align 4
  %_37 = load i32, ptr %count, align 4
  %_35 = call i32 @max(i32 %_36, i32 %_37)
  store i32 %_35, ptr %ans, align 4
  br label %bb6

bb16:                                             ; preds = %bb14
  %27 = getelementptr inbounds nuw i32, ptr %arr, i64 %_28
  %_27 = load i32, ptr %27, align 4
  %_30 = icmp eq i32 %i, 0
  br i1 %_30, label %panic2, label %bb17

panic:                                            ; preds = %bb14
; call core::panicking::panic_bounds_check
  call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 %_28, i64 2, ptr align 8 @alloc_734579732689645a3c43814221cdc57c) #22
  unreachable

bb17:                                             ; preds = %bb16
  %_31 = icmp eq i32 %i, -1
  %_32 = icmp eq i32 %_27, -2147483648
  %_33 = and i1 %_31, %_32
  br i1 %_33, label %panic3, label %bb18

panic2:                                           ; preds = %bb16
; call core::panicking::panic_const::panic_const_rem_by_zero
  call void @_ZN4core9panicking11panic_const23panic_const_rem_by_zero17h68b8e0645961a790E(ptr align 8 @alloc_734579732689645a3c43814221cdc57c) #22
  unreachable

bb18:                                             ; preds = %bb17
  %_26 = srem i32 %_27, %i
  %_25 = icmp eq i32 %_26, 0
  br i1 %_25, label %bb19, label %bb12

panic3:                                           ; preds = %bb17
; call core::panicking::panic_const::panic_const_rem_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_rem_overflow17h4aab8182a78c82f8E(ptr align 8 @alloc_734579732689645a3c43814221cdc57c) #22
  unreachable

bb19:                                             ; preds = %bb18
  %28 = load i32, ptr %count, align 4
  %29 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %28, i32 1)
  %_34.0 = extractvalue { i32, i1 } %29, 0
  %_34.1 = extractvalue { i32, i1 } %29, 1
  br i1 %_34.1, label %panic4, label %bb20

bb20:                                             ; preds = %bb19
  store i32 %_34.0, ptr %count, align 4
  br label %bb12

panic4:                                           ; preds = %bb19
; call core::panicking::panic_const::panic_const_add_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_2493fa63472f3c95acae0ab42975aa90) #22
  unreachable

bb8:                                              ; No predecessors!
  unreachable
}

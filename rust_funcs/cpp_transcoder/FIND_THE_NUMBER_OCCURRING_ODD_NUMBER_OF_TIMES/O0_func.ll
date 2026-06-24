define i32 @f_gold(ptr align 8 %arr, i32 %arr_size) unnamed_addr #3 {
start:
  %_14 = alloca [8 x i8], align 4
  %iter1 = alloca [8 x i8], align 4
  %count = alloca [4 x i8], align 4
  %_6 = alloca [8 x i8], align 4
  %iter = alloca [8 x i8], align 4
  %_0 = alloca [4 x i8], align 4
; call <I as core::iter::traits::collect::IntoIterator>::into_iter
  %0 = call { i32, i32 } @"_ZN63_$LT$I$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17hb5056cba7170097aE"(i32 0, i32 %arr_size) #20
  %_3.0 = extractvalue { i32, i32 } %0, 0
  %_3.1 = extractvalue { i32, i32 } %0, 1
  store i32 %_3.0, ptr %iter, align 4
  %1 = getelementptr inbounds i8, ptr %iter, i64 4
  store i32 %_3.1, ptr %1, align 4
  br label %bb2

bb2:                                              ; preds = %bb17, %start
; call core::iter::range::<impl core::iter::traits::iterator::Iterator for core::ops::range::Range<A>>::next
  %2 = call { i32, i32 } @"_ZN4core4iter5range101_$LT$impl$u20$core..iter..traits..iterator..Iterator$u20$for$u20$core..ops..range..Range$LT$A$GT$$GT$4next17he5493258c3bf0f01E"(ptr align 4 %iter) #20
  %3 = extractvalue { i32, i32 } %2, 0
  %4 = extractvalue { i32, i32 } %2, 1
  store i32 %3, ptr %_6, align 4
  %5 = getelementptr inbounds i8, ptr %_6, i64 4
  store i32 %4, ptr %5, align 4
  %6 = load i32, ptr %_6, align 4
  %7 = getelementptr inbounds i8, ptr %_6, i64 4
  %8 = load i32, ptr %7, align 4
  %_8 = zext i32 %6 to i64
  %9 = trunc nuw i64 %_8 to i1
  br i1 %9, label %bb5, label %bb6

bb5:                                              ; preds = %bb2
  %10 = getelementptr inbounds i8, ptr %_6, i64 4
  %i = load i32, ptr %10, align 4
  store i32 0, ptr %count, align 4
; call <I as core::iter::traits::collect::IntoIterator>::into_iter
  %11 = call { i32, i32 } @"_ZN63_$LT$I$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17hb5056cba7170097aE"(i32 0, i32 %arr_size) #20
  %_11.0 = extractvalue { i32, i32 } %11, 0
  %_11.1 = extractvalue { i32, i32 } %11, 1
  store i32 %_11.0, ptr %iter1, align 4
  %12 = getelementptr inbounds i8, ptr %iter1, i64 4
  store i32 %_11.1, ptr %12, align 4
  br label %bb8

bb6:                                              ; preds = %bb2
  store i32 -1, ptr %_0, align 4
  br label %bb20

bb20:                                             ; preds = %bb18, %bb6
  %13 = load i32, ptr %_0, align 4
  ret i32 %13

bb8:                                              ; preds = %bb15, %bb10, %bb5
; call core::iter::range::<impl core::iter::traits::iterator::Iterator for core::ops::range::Range<A>>::next
  %14 = call { i32, i32 } @"_ZN4core4iter5range101_$LT$impl$u20$core..iter..traits..iterator..Iterator$u20$for$u20$core..ops..range..Range$LT$A$GT$$GT$4next17he5493258c3bf0f01E"(ptr align 4 %iter1) #20
  %15 = extractvalue { i32, i32 } %14, 0
  %16 = extractvalue { i32, i32 } %14, 1
  store i32 %15, ptr %_14, align 4
  %17 = getelementptr inbounds i8, ptr %_14, i64 4
  store i32 %16, ptr %17, align 4
  %18 = load i32, ptr %_14, align 4
  %19 = getelementptr inbounds i8, ptr %_14, i64 4
  %20 = load i32, ptr %19, align 4
  %_16 = zext i32 %18 to i64
  %21 = trunc nuw i64 %_16 to i1
  br i1 %21, label %bb10, label %bb11

bb10:                                             ; preds = %bb8
  %22 = getelementptr inbounds i8, ptr %_14, i64 4
  %j = load i32, ptr %22, align 4
  %_22 = sext i32 %i to i64
; call <alloc::vec::Vec<T,A> as core::ops::index::Index<I>>::index
  %_20 = call align 4 ptr @"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h120a8f5a6a9d1490E"(ptr align 8 %arr, i64 %_22, ptr align 8 @alloc_518d6d969c4fd08a83059de5c672e33e) #20
  %_19 = load i32, ptr %_20, align 4
  %_26 = sext i32 %j to i64
; call <alloc::vec::Vec<T,A> as core::ops::index::Index<I>>::index
  %_24 = call align 4 ptr @"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h120a8f5a6a9d1490E"(ptr align 8 %arr, i64 %_26, ptr align 8 @alloc_ef444f7e4ac00cef7fd2becfc020a6ef) #20
  %_23 = load i32, ptr %_24, align 4
  %_18 = icmp eq i32 %_19, %_23
  br i1 %_18, label %bb14, label %bb8

bb11:                                             ; preds = %bb8
  %_30 = load i32, ptr %count, align 4
  %_33 = icmp eq i32 %_30, -2147483648
  %_34 = and i1 false, %_33
  br i1 %_34, label %panic, label %bb17

bb17:                                             ; preds = %bb11
  %_29 = srem i32 %_30, 2
  %_28 = icmp ne i32 %_29, 0
  br i1 %_28, label %bb18, label %bb2

panic:                                            ; preds = %bb11
; call core::panicking::panic_const::panic_const_rem_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_rem_overflow17h4aab8182a78c82f8E(ptr align 8 @alloc_60cc141bd1760983cb297584b5bfafe2) #22
  unreachable

bb18:                                             ; preds = %bb17
  %_37 = sext i32 %i to i64
; call <alloc::vec::Vec<T,A> as core::ops::index::Index<I>>::index
  %_35 = call align 4 ptr @"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h120a8f5a6a9d1490E"(ptr align 8 %arr, i64 %_37, ptr align 8 @alloc_6c9868ef4c5b02a03fd29763e7621d24) #20
  %23 = load i32, ptr %_35, align 4
  store i32 %23, ptr %_0, align 4
  br label %bb20

bb14:                                             ; preds = %bb10
  %24 = load i32, ptr %count, align 4
  %25 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %24, i32 1)
  %_27.0 = extractvalue { i32, i1 } %25, 0
  %_27.1 = extractvalue { i32, i1 } %25, 1
  br i1 %_27.1, label %panic2, label %bb15

bb15:                                             ; preds = %bb14
  store i32 %_27.0, ptr %count, align 4
  br label %bb8

panic2:                                           ; preds = %bb14
; call core::panicking::panic_const::panic_const_add_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_f69eb3335748e0297a8b52483eaae2e1) #22
  unreachable

bb4:                                              ; No predecessors!
  unreachable
}

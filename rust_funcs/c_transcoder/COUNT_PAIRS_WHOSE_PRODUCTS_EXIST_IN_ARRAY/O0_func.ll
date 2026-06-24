define i32 @f_gold(i64 %0, i32 %n) unnamed_addr #3 {
start:
  %_31 = alloca [8 x i8], align 4
  %iter2 = alloca [8 x i8], align 4
  %_16 = alloca [8 x i8], align 4
  %iter1 = alloca [8 x i8], align 4
  %_7 = alloca [8 x i8], align 4
  %iter = alloca [8 x i8], align 4
  %result = alloca [4 x i8], align 4
  %1 = alloca [8 x i8], align 8
  %arr = alloca [8 x i8], align 4
  store i64 %0, ptr %1, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %arr, ptr align 8 %1, i64 8, i1 false)
  store i32 0, ptr %result, align 4
; call <I as core::iter::traits::collect::IntoIterator>::into_iter
  %2 = call { i32, i32 } @"_ZN63_$LT$I$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17hc746bd676d271bb7E"(i32 0, i32 %n) #20
  %_4.0 = extractvalue { i32, i32 } %2, 0
  %_4.1 = extractvalue { i32, i32 } %2, 1
  store i32 %_4.0, ptr %iter, align 4
  %3 = getelementptr inbounds i8, ptr %iter, i64 4
  store i32 %_4.1, ptr %3, align 4
  br label %bb2

bb2:                                              ; preds = %bb9, %start
; call core::iter::range::<impl core::iter::traits::iterator::Iterator for core::ops::range::Range<A>>::next
  %4 = call { i32, i32 } @"_ZN4core4iter5range101_$LT$impl$u20$core..iter..traits..iterator..Iterator$u20$for$u20$core..ops..range..Range$LT$A$GT$$GT$4next17he84cd82994a29e26E"(ptr align 4 %iter) #20
  %5 = extractvalue { i32, i32 } %4, 0
  %6 = extractvalue { i32, i32 } %4, 1
  store i32 %5, ptr %_7, align 4
  %7 = getelementptr inbounds i8, ptr %_7, i64 4
  store i32 %6, ptr %7, align 4
  %8 = load i32, ptr %_7, align 4
  %9 = getelementptr inbounds i8, ptr %_7, i64 4
  %10 = load i32, ptr %9, align 4
  %_9 = zext i32 %8 to i64
  %11 = trunc nuw i64 %_9 to i1
  br i1 %11, label %bb5, label %bb6

bb5:                                              ; preds = %bb2
  %12 = getelementptr inbounds i8, ptr %_7, i64 4
  %i = load i32, ptr %12, align 4
  %13 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %i, i32 1)
  %_14.0 = extractvalue { i32, i1 } %13, 0
  %_14.1 = extractvalue { i32, i1 } %13, 1
  br i1 %_14.1, label %panic, label %bb7

bb6:                                              ; preds = %bb2
  %_0 = load i32, ptr %result, align 4
  ret i32 %_0

bb7:                                              ; preds = %bb5
; call <I as core::iter::traits::collect::IntoIterator>::into_iter
  %14 = call { i32, i32 } @"_ZN63_$LT$I$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17hc746bd676d271bb7E"(i32 %_14.0, i32 %n) #20
  %_11.0 = extractvalue { i32, i32 } %14, 0
  %_11.1 = extractvalue { i32, i32 } %14, 1
  store i32 %_11.0, ptr %iter1, align 4
  %15 = getelementptr inbounds i8, ptr %iter1, i64 4
  store i32 %_11.1, ptr %15, align 4
  br label %bb9

panic:                                            ; preds = %bb5
; call core::panicking::panic_const::panic_const_add_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_56b67ba20b56fec113f8e50c1f647cac) #22
  unreachable

bb9:                                              ; preds = %bb21, %bb16, %bb7
; call core::iter::range::<impl core::iter::traits::iterator::Iterator for core::ops::range::Range<A>>::next
  %16 = call { i32, i32 } @"_ZN4core4iter5range101_$LT$impl$u20$core..iter..traits..iterator..Iterator$u20$for$u20$core..ops..range..Range$LT$A$GT$$GT$4next17he84cd82994a29e26E"(ptr align 4 %iter1) #20
  %17 = extractvalue { i32, i32 } %16, 0
  %18 = extractvalue { i32, i32 } %16, 1
  store i32 %17, ptr %_16, align 4
  %19 = getelementptr inbounds i8, ptr %_16, i64 4
  store i32 %18, ptr %19, align 4
  %20 = load i32, ptr %_16, align 4
  %21 = getelementptr inbounds i8, ptr %_16, i64 4
  %22 = load i32, ptr %21, align 4
  %_18 = zext i32 %20 to i64
  %23 = trunc nuw i64 %_18 to i1
  br i1 %23, label %bb11, label %bb2

bb11:                                             ; preds = %bb9
  %24 = getelementptr inbounds i8, ptr %_16, i64 4
  %j = load i32, ptr %24, align 4
  %_22 = sext i32 %i to i64
  %_23 = icmp ult i64 %_22, 2
  br i1 %_23, label %bb12, label %panic3

bb12:                                             ; preds = %bb11
  %25 = getelementptr inbounds nuw i32, ptr %arr, i64 %_22
  %_21 = load i32, ptr %25, align 4
  %_25 = sext i32 %j to i64
  %_26 = icmp ult i64 %_25, 2
  br i1 %_26, label %bb13, label %panic4

panic3:                                           ; preds = %bb11
; call core::panicking::panic_bounds_check
  call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 %_22, i64 2, ptr align 8 @alloc_13c27fcf3d678ae4e6a0d1dfb26c3a10) #22
  unreachable

bb13:                                             ; preds = %bb12
  %26 = getelementptr inbounds nuw i32, ptr %arr, i64 %_25
  %_24 = load i32, ptr %26, align 4
  %27 = call { i32, i1 } @llvm.smul.with.overflow.i32(i32 %_21, i32 %_24)
  %_27.0 = extractvalue { i32, i1 } %27, 0
  %_27.1 = extractvalue { i32, i1 } %27, 1
  br i1 %_27.1, label %panic5, label %bb14

panic4:                                           ; preds = %bb12
; call core::panicking::panic_bounds_check
  call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 %_25, i64 2, ptr align 8 @alloc_76472c4da2527081835d3f2886221130) #22
  unreachable

bb14:                                             ; preds = %bb13
; call <I as core::iter::traits::collect::IntoIterator>::into_iter
  %28 = call { i32, i32 } @"_ZN63_$LT$I$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17hc746bd676d271bb7E"(i32 0, i32 %n) #20
  %_28.0 = extractvalue { i32, i32 } %28, 0
  %_28.1 = extractvalue { i32, i32 } %28, 1
  store i32 %_28.0, ptr %iter2, align 4
  %29 = getelementptr inbounds i8, ptr %iter2, i64 4
  store i32 %_28.1, ptr %29, align 4
  br label %bb16

panic5:                                           ; preds = %bb13
; call core::panicking::panic_const::panic_const_mul_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_mul_overflow17h554ac164c12099f8E(ptr align 8 @alloc_13c27fcf3d678ae4e6a0d1dfb26c3a10) #22
  unreachable

bb16:                                             ; preds = %bb19, %bb14
; call core::iter::range::<impl core::iter::traits::iterator::Iterator for core::ops::range::Range<A>>::next
  %30 = call { i32, i32 } @"_ZN4core4iter5range101_$LT$impl$u20$core..iter..traits..iterator..Iterator$u20$for$u20$core..ops..range..Range$LT$A$GT$$GT$4next17he84cd82994a29e26E"(ptr align 4 %iter2) #20
  %31 = extractvalue { i32, i32 } %30, 0
  %32 = extractvalue { i32, i32 } %30, 1
  store i32 %31, ptr %_31, align 4
  %33 = getelementptr inbounds i8, ptr %_31, i64 4
  store i32 %32, ptr %33, align 4
  %34 = load i32, ptr %_31, align 4
  %35 = getelementptr inbounds i8, ptr %_31, i64 4
  %36 = load i32, ptr %35, align 4
  %_33 = zext i32 %34 to i64
  %37 = trunc nuw i64 %_33 to i1
  br i1 %37, label %bb18, label %bb9

bb18:                                             ; preds = %bb16
  %38 = getelementptr inbounds i8, ptr %_31, i64 4
  %k = load i32, ptr %38, align 4
  %_37 = sext i32 %k to i64
  %_38 = icmp ult i64 %_37, 2
  br i1 %_38, label %bb19, label %panic6

bb19:                                             ; preds = %bb18
  %39 = getelementptr inbounds nuw i32, ptr %arr, i64 %_37
  %_36 = load i32, ptr %39, align 4
  %_35 = icmp eq i32 %_36, %_27.0
  br i1 %_35, label %bb20, label %bb16

panic6:                                           ; preds = %bb18
; call core::panicking::panic_bounds_check
  call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 %_37, i64 2, ptr align 8 @alloc_d4d4b375d8811b0a200bacba19c361e3) #22
  unreachable

bb20:                                             ; preds = %bb19
  %40 = load i32, ptr %result, align 4
  %41 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %40, i32 1)
  %_39.0 = extractvalue { i32, i1 } %41, 0
  %_39.1 = extractvalue { i32, i1 } %41, 1
  br i1 %_39.1, label %panic7, label %bb21

bb21:                                             ; preds = %bb20
  store i32 %_39.0, ptr %result, align 4
  br label %bb9

panic7:                                           ; preds = %bb20
; call core::panicking::panic_const::panic_const_add_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_f89dd5e3c9e374069c5dd4cac52b7e9b) #22
  unreachable

bb4:                                              ; No predecessors!
  unreachable
}

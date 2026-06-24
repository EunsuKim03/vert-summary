define i32 @f_gold(i64 %0, i32 %n, i32 %k) unnamed_addr #3 {
start:
  %_15 = alloca [8 x i8], align 4
  %iter1 = alloca [8 x i8], align 4
  %_8 = alloca [8 x i8], align 4
  %iter = alloca [8 x i8], align 4
  %count = alloca [4 x i8], align 4
  %_0 = alloca [4 x i8], align 4
  %1 = alloca [8 x i8], align 8
  %arr = alloca [8 x i8], align 4
  store i64 %0, ptr %1, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %arr, ptr align 8 %1, i64 8, i1 false)
; call <I as core::iter::traits::collect::IntoIterator>::into_iter
  %2 = call { i32, i32 } @"_ZN63_$LT$I$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17hed4c4928c9847b37E"(i32 0, i32 %n) #20
  %_5.0 = extractvalue { i32, i32 } %2, 0
  %_5.1 = extractvalue { i32, i32 } %2, 1
  store i32 %_5.0, ptr %iter, align 4
  %3 = getelementptr inbounds i8, ptr %iter, i64 4
  store i32 %_5.1, ptr %3, align 4
  br label %bb2

bb2:                                              ; preds = %bb8, %start
; call core::iter::range::<impl core::iter::traits::iterator::Iterator for core::ops::range::Range<A>>::next
  %4 = call { i32, i32 } @"_ZN4core4iter5range101_$LT$impl$u20$core..iter..traits..iterator..Iterator$u20$for$u20$core..ops..range..Range$LT$A$GT$$GT$4next17h1b100bea2fa02ffeE"(ptr align 4 %iter) #20
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
  store i32 0, ptr %count, align 4
; call <I as core::iter::traits::collect::IntoIterator>::into_iter
  %13 = call { i32, i32 } @"_ZN63_$LT$I$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17hed4c4928c9847b37E"(i32 0, i32 %n) #20
  %_12.0 = extractvalue { i32, i32 } %13, 0
  %_12.1 = extractvalue { i32, i32 } %13, 1
  store i32 %_12.0, ptr %iter1, align 4
  %14 = getelementptr inbounds i8, ptr %iter1, i64 4
  store i32 %_12.1, ptr %14, align 4
  br label %bb8

bb6:                                              ; preds = %bb2
  store i32 1, ptr %_0, align 4
  br label %bb18

bb18:                                             ; preds = %bb17, %bb6
  %15 = load i32, ptr %_0, align 4
  ret i32 %15

bb8:                                              ; preds = %bb16, %bb5
; call core::iter::range::<impl core::iter::traits::iterator::Iterator for core::ops::range::Range<A>>::next
  %16 = call { i32, i32 } @"_ZN4core4iter5range101_$LT$impl$u20$core..iter..traits..iterator..Iterator$u20$for$u20$core..ops..range..Range$LT$A$GT$$GT$4next17h1b100bea2fa02ffeE"(ptr align 4 %iter1) #20
  %17 = extractvalue { i32, i32 } %16, 0
  %18 = extractvalue { i32, i32 } %16, 1
  store i32 %17, ptr %_15, align 4
  %19 = getelementptr inbounds i8, ptr %_15, i64 4
  store i32 %18, ptr %19, align 4
  %20 = load i32, ptr %_15, align 4
  %21 = getelementptr inbounds i8, ptr %_15, i64 4
  %22 = load i32, ptr %21, align 4
  %_17 = zext i32 %20 to i64
  %23 = trunc nuw i64 %_17 to i1
  br i1 %23, label %bb10, label %bb2

bb10:                                             ; preds = %bb8
  %24 = getelementptr inbounds i8, ptr %_15, i64 4
  %j = load i32, ptr %24, align 4
  %_21 = sext i32 %j to i64
  %_22 = icmp ult i64 %_21, 2
  br i1 %_22, label %bb11, label %panic

bb11:                                             ; preds = %bb10
  %25 = getelementptr inbounds nuw float, ptr %arr, i64 %_21
  %_20 = load float, ptr %25, align 4
  %_24 = sext i32 %i to i64
  %_25 = icmp ult i64 %_24, 2
  br i1 %_25, label %bb12, label %panic2

panic:                                            ; preds = %bb10
; call core::panicking::panic_bounds_check
  call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 %_21, i64 2, ptr align 8 @alloc_991e52ac0d41814b4243c3cee2324018) #22
  unreachable

bb12:                                             ; preds = %bb11
  %26 = getelementptr inbounds nuw float, ptr %arr, i64 %_24
  %_23 = load float, ptr %26, align 4
  %_19 = fcmp oeq float %_20, %_23
  br i1 %_19, label %bb13, label %bb15

panic2:                                           ; preds = %bb11
; call core::panicking::panic_bounds_check
  call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 %_24, i64 2, ptr align 8 @alloc_86ebe8c1727183700114b580e447d872) #22
  unreachable

bb15:                                             ; preds = %bb14, %bb12
  %_28 = load i32, ptr %count, align 4
  %27 = call { i32, i1 } @llvm.smul.with.overflow.i32(i32 2, i32 %k)
  %_30.0 = extractvalue { i32, i1 } %27, 0
  %_30.1 = extractvalue { i32, i1 } %27, 1
  br i1 %_30.1, label %panic4, label %bb16

bb13:                                             ; preds = %bb12
  %28 = load i32, ptr %count, align 4
  %29 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %28, i32 1)
  %_26.0 = extractvalue { i32, i1 } %29, 0
  %_26.1 = extractvalue { i32, i1 } %29, 1
  br i1 %_26.1, label %panic3, label %bb14

bb14:                                             ; preds = %bb13
  store i32 %_26.0, ptr %count, align 4
  br label %bb15

panic3:                                           ; preds = %bb13
; call core::panicking::panic_const::panic_const_add_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_f96de0096193bd0d8f888a2ab5e87ad6) #22
  unreachable

bb16:                                             ; preds = %bb15
  %_27 = icmp sgt i32 %_28, %_30.0
  br i1 %_27, label %bb17, label %bb8

panic4:                                           ; preds = %bb15
; call core::panicking::panic_const::panic_const_mul_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_mul_overflow17h554ac164c12099f8E(ptr align 8 @alloc_00446f61e2525c73437e0b8ca6445ab7) #22
  unreachable

bb17:                                             ; preds = %bb16
  store i32 0, ptr %_0, align 4
  br label %bb18

bb4:                                              ; No predecessors!
  unreachable
}

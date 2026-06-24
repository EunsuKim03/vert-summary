define i32 @f_gold(i64 %0, i32 %n, i32 %x, i32 %y) unnamed_addr #3 {
start:
  %_18 = alloca [8 x i8], align 4
  %iter1 = alloca [8 x i8], align 4
  %_9 = alloca [8 x i8], align 4
  %iter = alloca [8 x i8], align 4
  %min_dist = alloca [4 x i8], align 4
  %1 = alloca [8 x i8], align 8
  %arr = alloca [8 x i8], align 4
  store i64 %0, ptr %1, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %arr, ptr align 8 %1, i64 8, i1 false)
  store i32 2147483647, ptr %min_dist, align 4
; call <I as core::iter::traits::collect::IntoIterator>::into_iter
  %2 = call { i32, i32 } @"_ZN63_$LT$I$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17h7d11339c58dbec22E"(i32 0, i32 %n) #21
  %_6.0 = extractvalue { i32, i32 } %2, 0
  %_6.1 = extractvalue { i32, i32 } %2, 1
  store i32 %_6.0, ptr %iter, align 4
  %3 = getelementptr inbounds i8, ptr %iter, i64 4
  store i32 %_6.1, ptr %3, align 4
  br label %bb2

bb2:                                              ; preds = %bb9, %start
; call core::iter::range::<impl core::iter::traits::iterator::Iterator for core::ops::range::Range<A>>::next
  %4 = call { i32, i32 } @"_ZN4core4iter5range101_$LT$impl$u20$core..iter..traits..iterator..Iterator$u20$for$u20$core..ops..range..Range$LT$A$GT$$GT$4next17h9f0eb10349fa4cddE"(ptr align 4 %iter) #21
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
  %_0 = load i32, ptr %min_dist, align 4
  ret i32 %_0

bb7:                                              ; preds = %bb5
; call <I as core::iter::traits::collect::IntoIterator>::into_iter
  %14 = call { i32, i32 } @"_ZN63_$LT$I$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17h7d11339c58dbec22E"(i32 %_16.0, i32 %n) #21
  %_13.0 = extractvalue { i32, i32 } %14, 0
  %_13.1 = extractvalue { i32, i32 } %14, 1
  store i32 %_13.0, ptr %iter1, align 4
  %15 = getelementptr inbounds i8, ptr %iter1, i64 4
  store i32 %_13.1, ptr %15, align 4
  br label %bb9

panic:                                            ; preds = %bb5
; call core::panicking::panic_const::panic_const_add_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_30f61425ce607ba275b96870330d08b0) #20
  unreachable

bb9:                                              ; preds = %bb23, %bb20, %bb18, %bb16, %bb7
; call core::iter::range::<impl core::iter::traits::iterator::Iterator for core::ops::range::Range<A>>::next
  %16 = call { i32, i32 } @"_ZN4core4iter5range101_$LT$impl$u20$core..iter..traits..iterator..Iterator$u20$for$u20$core..ops..range..Range$LT$A$GT$$GT$4next17h9f0eb10349fa4cddE"(ptr align 4 %iter1) #21
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
  %_24 = sext i32 %i to i64
  %_25 = icmp ult i64 %_24, 2
  br i1 %_25, label %bb12, label %panic2

bb12:                                             ; preds = %bb11
  %25 = getelementptr inbounds nuw i32, ptr %arr, i64 %_24
  %_23 = load i32, ptr %25, align 4
  %_22 = icmp eq i32 %x, %_23
  br i1 %_22, label %bb13, label %bb15

panic2:                                           ; preds = %bb11
; call core::panicking::panic_bounds_check
  call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 %_24, i64 2, ptr align 8 @alloc_c2071aa1ff9f1b838d988e4a0052691f) #20
  unreachable

bb15:                                             ; preds = %bb14, %bb12
  %_32 = sext i32 %i to i64
  %_33 = icmp ult i64 %_32, 2
  br i1 %_33, label %bb16, label %panic4

bb13:                                             ; preds = %bb12
  %_28 = sext i32 %j to i64
  %_29 = icmp ult i64 %_28, 2
  br i1 %_29, label %bb14, label %panic3

bb14:                                             ; preds = %bb13
  %26 = getelementptr inbounds nuw i32, ptr %arr, i64 %_28
  %_27 = load i32, ptr %26, align 4
  %_26 = icmp eq i32 %y, %_27
  br i1 %_26, label %bb19, label %bb15

panic3:                                           ; preds = %bb13
; call core::panicking::panic_bounds_check
  call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 %_28, i64 2, ptr align 8 @alloc_8798bd57826b2339a64ed5e5ec322066) #20
  unreachable

bb19:                                             ; preds = %bb18, %bb14
  %_39 = load i32, ptr %min_dist, align 4
  %27 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %i, i32 %j)
  %_42.0 = extractvalue { i32, i1 } %27, 0
  %_42.1 = extractvalue { i32, i1 } %27, 1
  br i1 %_42.1, label %panic6, label %bb20

bb16:                                             ; preds = %bb15
  %28 = getelementptr inbounds nuw i32, ptr %arr, i64 %_32
  %_31 = load i32, ptr %28, align 4
  %_30 = icmp eq i32 %y, %_31
  br i1 %_30, label %bb17, label %bb9

panic4:                                           ; preds = %bb15
; call core::panicking::panic_bounds_check
  call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 %_32, i64 2, ptr align 8 @alloc_c8d256f4f4752817f5aabbe5fcf3e697) #20
  unreachable

bb17:                                             ; preds = %bb16
  %_36 = sext i32 %j to i64
  %_37 = icmp ult i64 %_36, 2
  br i1 %_37, label %bb18, label %panic5

bb18:                                             ; preds = %bb17
  %29 = getelementptr inbounds nuw i32, ptr %arr, i64 %_36
  %_35 = load i32, ptr %29, align 4
  %_34 = icmp eq i32 %x, %_35
  br i1 %_34, label %bb19, label %bb9

panic5:                                           ; preds = %bb17
; call core::panicking::panic_bounds_check
  call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 %_36, i64 2, ptr align 8 @alloc_9d5f5848fc9fa2fa67f68fd8e589b28f) #20
  unreachable

bb20:                                             ; preds = %bb19
; call core::num::<impl i32>::abs
  %_40 = call i32 @"_ZN4core3num21_$LT$impl$u20$i32$GT$3abs17hfe3a027d6343b5e5E"(i32 %_42.0) #21
  %_38 = icmp sgt i32 %_39, %_40
  br i1 %_38, label %bb22, label %bb9

panic6:                                           ; preds = %bb19
; call core::panicking::panic_const::panic_const_sub_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_sub_overflow17h134cc1a7f93654deE(ptr align 8 @alloc_43e18ac6f4b702e24355fb0879fe0dcc) #20
  unreachable

bb22:                                             ; preds = %bb20
  %30 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %i, i32 %j)
  %_45.0 = extractvalue { i32, i1 } %30, 0
  %_45.1 = extractvalue { i32, i1 } %30, 1
  br i1 %_45.1, label %panic7, label %bb23

bb23:                                             ; preds = %bb22
; call core::num::<impl i32>::abs
  %_43 = call i32 @"_ZN4core3num21_$LT$impl$u20$i32$GT$3abs17hfe3a027d6343b5e5E"(i32 %_45.0) #21
  store i32 %_43, ptr %min_dist, align 4
  br label %bb9

panic7:                                           ; preds = %bb22
; call core::panicking::panic_const::panic_const_sub_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_sub_overflow17h134cc1a7f93654deE(ptr align 8 @alloc_733ff038a48a5617108f784a9898ab5d) #20
  unreachable

bb4:                                              ; No predecessors!
  unreachable
}

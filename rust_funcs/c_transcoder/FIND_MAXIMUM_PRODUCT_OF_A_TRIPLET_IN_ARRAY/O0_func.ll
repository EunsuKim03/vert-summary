define i32 @f_gold(i64 %0, i32 %n) unnamed_addr #3 {
start:
  %_30 = alloca [8 x i8], align 4
  %iter2 = alloca [8 x i8], align 4
  %_21 = alloca [8 x i8], align 4
  %iter1 = alloca [8 x i8], align 4
  %_10 = alloca [8 x i8], align 4
  %iter = alloca [8 x i8], align 4
  %max_product = alloca [4 x i8], align 4
  %_0 = alloca [4 x i8], align 4
  %1 = alloca [8 x i8], align 8
  %arr = alloca [8 x i8], align 4
  store i64 %0, ptr %1, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %arr, ptr align 8 %1, i64 8, i1 false)
  %_3 = icmp slt i32 %n, 3
  br i1 %_3, label %bb1, label %bb2

bb2:                                              ; preds = %start
  store i32 -2147483648, ptr %max_product, align 4
  %2 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %n, i32 2)
  %_8.0 = extractvalue { i32, i1 } %2, 0
  %_8.1 = extractvalue { i32, i1 } %2, 1
  br i1 %_8.1, label %panic, label %bb3

bb1:                                              ; preds = %start
  store i32 -1, ptr %_0, align 4
  br label %bb27

bb3:                                              ; preds = %bb2
; call <I as core::iter::traits::collect::IntoIterator>::into_iter
  %3 = call { i32, i32 } @"_ZN63_$LT$I$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17h9adbb4e0fb224c8eE"(i32 0, i32 %_8.0) #20
  %_5.0 = extractvalue { i32, i32 } %3, 0
  %_5.1 = extractvalue { i32, i32 } %3, 1
  store i32 %_5.0, ptr %iter, align 4
  %4 = getelementptr inbounds i8, ptr %iter, i64 4
  store i32 %_5.1, ptr %4, align 4
  br label %bb5

panic:                                            ; preds = %bb2
; call core::panicking::panic_const::panic_const_sub_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_sub_overflow17h134cc1a7f93654deE(ptr align 8 @alloc_e3b2997ab1b4ca4b23e2a96d2a913efa) #22
  unreachable

bb5:                                              ; preds = %bb13, %bb3
; call core::iter::range::<impl core::iter::traits::iterator::Iterator for core::ops::range::Range<A>>::next
  %5 = call { i32, i32 } @"_ZN4core4iter5range101_$LT$impl$u20$core..iter..traits..iterator..Iterator$u20$for$u20$core..ops..range..Range$LT$A$GT$$GT$4next17h6ecb860fdfb1dbe2E"(ptr align 4 %iter) #20
  %6 = extractvalue { i32, i32 } %5, 0
  %7 = extractvalue { i32, i32 } %5, 1
  store i32 %6, ptr %_10, align 4
  %8 = getelementptr inbounds i8, ptr %_10, i64 4
  store i32 %7, ptr %8, align 4
  %9 = load i32, ptr %_10, align 4
  %10 = getelementptr inbounds i8, ptr %_10, i64 4
  %11 = load i32, ptr %10, align 4
  %_12 = zext i32 %9 to i64
  %12 = trunc nuw i64 %_12 to i1
  br i1 %12, label %bb8, label %bb9

bb8:                                              ; preds = %bb5
  %13 = getelementptr inbounds i8, ptr %_10, i64 4
  %i = load i32, ptr %13, align 4
  %14 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %i, i32 1)
  %_17.0 = extractvalue { i32, i1 } %14, 0
  %_17.1 = extractvalue { i32, i1 } %14, 1
  br i1 %_17.1, label %panic3, label %bb10

bb9:                                              ; preds = %bb5
  %15 = load i32, ptr %max_product, align 4
  store i32 %15, ptr %_0, align 4
  br label %bb27

bb27:                                             ; preds = %bb1, %bb9
  %16 = load i32, ptr %_0, align 4
  ret i32 %16

bb10:                                             ; preds = %bb8
  %17 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %n, i32 1)
  %_19.0 = extractvalue { i32, i1 } %17, 0
  %_19.1 = extractvalue { i32, i1 } %17, 1
  br i1 %_19.1, label %panic4, label %bb11

panic3:                                           ; preds = %bb8
; call core::panicking::panic_const::panic_const_add_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_54ce073559a74c0937cfb3fc95726b47) #22
  unreachable

bb11:                                             ; preds = %bb10
; call <I as core::iter::traits::collect::IntoIterator>::into_iter
  %18 = call { i32, i32 } @"_ZN63_$LT$I$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17h9adbb4e0fb224c8eE"(i32 %_17.0, i32 %_19.0) #20
  %_14.0 = extractvalue { i32, i32 } %18, 0
  %_14.1 = extractvalue { i32, i32 } %18, 1
  store i32 %_14.0, ptr %iter1, align 4
  %19 = getelementptr inbounds i8, ptr %iter1, i64 4
  store i32 %_14.1, ptr %19, align 4
  br label %bb13

panic4:                                           ; preds = %bb10
; call core::panicking::panic_const::panic_const_sub_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_sub_overflow17h134cc1a7f93654deE(ptr align 8 @alloc_df6064678ebf5055d052a1b7f108b520) #22
  unreachable

bb13:                                             ; preds = %bb18, %bb11
; call core::iter::range::<impl core::iter::traits::iterator::Iterator for core::ops::range::Range<A>>::next
  %20 = call { i32, i32 } @"_ZN4core4iter5range101_$LT$impl$u20$core..iter..traits..iterator..Iterator$u20$for$u20$core..ops..range..Range$LT$A$GT$$GT$4next17h6ecb860fdfb1dbe2E"(ptr align 4 %iter1) #20
  %21 = extractvalue { i32, i32 } %20, 0
  %22 = extractvalue { i32, i32 } %20, 1
  store i32 %21, ptr %_21, align 4
  %23 = getelementptr inbounds i8, ptr %_21, i64 4
  store i32 %22, ptr %23, align 4
  %24 = load i32, ptr %_21, align 4
  %25 = getelementptr inbounds i8, ptr %_21, i64 4
  %26 = load i32, ptr %25, align 4
  %_23 = zext i32 %24 to i64
  %27 = trunc nuw i64 %_23 to i1
  br i1 %27, label %bb15, label %bb5

bb15:                                             ; preds = %bb13
  %28 = getelementptr inbounds i8, ptr %_21, i64 4
  %j = load i32, ptr %28, align 4
  %29 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %j, i32 1)
  %_28.0 = extractvalue { i32, i1 } %29, 0
  %_28.1 = extractvalue { i32, i1 } %29, 1
  br i1 %_28.1, label %panic5, label %bb16

bb16:                                             ; preds = %bb15
; call <I as core::iter::traits::collect::IntoIterator>::into_iter
  %30 = call { i32, i32 } @"_ZN63_$LT$I$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17h9adbb4e0fb224c8eE"(i32 %_28.0, i32 %n) #20
  %_25.0 = extractvalue { i32, i32 } %30, 0
  %_25.1 = extractvalue { i32, i32 } %30, 1
  store i32 %_25.0, ptr %iter2, align 4
  %31 = getelementptr inbounds i8, ptr %iter2, i64 4
  store i32 %_25.1, ptr %31, align 4
  br label %bb18

panic5:                                           ; preds = %bb15
; call core::panicking::panic_const::panic_const_add_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_172e0db89727ca16161a33668bd230cf) #22
  unreachable

bb18:                                             ; preds = %bb25, %bb16
; call core::iter::range::<impl core::iter::traits::iterator::Iterator for core::ops::range::Range<A>>::next
  %32 = call { i32, i32 } @"_ZN4core4iter5range101_$LT$impl$u20$core..iter..traits..iterator..Iterator$u20$for$u20$core..ops..range..Range$LT$A$GT$$GT$4next17h6ecb860fdfb1dbe2E"(ptr align 4 %iter2) #20
  %33 = extractvalue { i32, i32 } %32, 0
  %34 = extractvalue { i32, i32 } %32, 1
  store i32 %33, ptr %_30, align 4
  %35 = getelementptr inbounds i8, ptr %_30, i64 4
  store i32 %34, ptr %35, align 4
  %36 = load i32, ptr %_30, align 4
  %37 = getelementptr inbounds i8, ptr %_30, i64 4
  %38 = load i32, ptr %37, align 4
  %_32 = zext i32 %36 to i64
  %39 = trunc nuw i64 %_32 to i1
  br i1 %39, label %bb20, label %bb13

bb20:                                             ; preds = %bb18
  %40 = getelementptr inbounds i8, ptr %_30, i64 4
  %k = load i32, ptr %40, align 4
  %_35 = load i32, ptr %max_product, align 4
  %_39 = sext i32 %i to i64
  %_40 = icmp ult i64 %_39, 2
  br i1 %_40, label %bb21, label %panic6

bb21:                                             ; preds = %bb20
  %41 = getelementptr inbounds nuw i32, ptr %arr, i64 %_39
  %_38 = load i32, ptr %41, align 4
  %_42 = sext i32 %j to i64
  %_43 = icmp ult i64 %_42, 2
  br i1 %_43, label %bb22, label %panic7

panic6:                                           ; preds = %bb20
; call core::panicking::panic_bounds_check
  call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 %_39, i64 2, ptr align 8 @alloc_c03faeb9378539517bf01db1a975642e) #22
  unreachable

bb22:                                             ; preds = %bb21
  %42 = getelementptr inbounds nuw i32, ptr %arr, i64 %_42
  %_41 = load i32, ptr %42, align 4
  %43 = call { i32, i1 } @llvm.smul.with.overflow.i32(i32 %_38, i32 %_41)
  %_44.0 = extractvalue { i32, i1 } %43, 0
  %_44.1 = extractvalue { i32, i1 } %43, 1
  br i1 %_44.1, label %panic8, label %bb23

panic7:                                           ; preds = %bb21
; call core::panicking::panic_bounds_check
  call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 %_42, i64 2, ptr align 8 @alloc_75c459c0c66f59d53af7ce4e84863326) #22
  unreachable

bb23:                                             ; preds = %bb22
  %_46 = sext i32 %k to i64
  %_47 = icmp ult i64 %_46, 2
  br i1 %_47, label %bb24, label %panic9

panic8:                                           ; preds = %bb22
; call core::panicking::panic_const::panic_const_mul_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_mul_overflow17h554ac164c12099f8E(ptr align 8 @alloc_c03faeb9378539517bf01db1a975642e) #22
  unreachable

bb24:                                             ; preds = %bb23
  %44 = getelementptr inbounds nuw i32, ptr %arr, i64 %_46
  %_45 = load i32, ptr %44, align 4
  %45 = call { i32, i1 } @llvm.smul.with.overflow.i32(i32 %_44.0, i32 %_45)
  %_48.0 = extractvalue { i32, i1 } %45, 0
  %_48.1 = extractvalue { i32, i1 } %45, 1
  br i1 %_48.1, label %panic10, label %bb25

panic9:                                           ; preds = %bb23
; call core::panicking::panic_bounds_check
  call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 %_46, i64 2, ptr align 8 @alloc_a5f998b1d06b081252b5eafcd6708738) #22
  unreachable

bb25:                                             ; preds = %bb24
  %_34 = call i32 @max(i32 %_35, i32 %_48.0)
  store i32 %_34, ptr %max_product, align 4
  br label %bb18

panic10:                                          ; preds = %bb24
; call core::panicking::panic_const::panic_const_mul_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_mul_overflow17h554ac164c12099f8E(ptr align 8 @alloc_c03faeb9378539517bf01db1a975642e) #22
  unreachable

bb7:                                              ; No predecessors!
  unreachable
}

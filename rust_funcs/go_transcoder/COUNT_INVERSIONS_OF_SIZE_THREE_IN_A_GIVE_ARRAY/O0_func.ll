define i32 @f_gold(i64 %0, i32 %n) unnamed_addr #3 {
start:
  %_36 = alloca [8 x i8], align 4
  %iter2 = alloca [8 x i8], align 4
  %_20 = alloca [8 x i8], align 4
  %iter1 = alloca [8 x i8], align 4
  %_9 = alloca [8 x i8], align 4
  %iter = alloca [8 x i8], align 4
  %invcount = alloca [4 x i8], align 4
  %1 = alloca [8 x i8], align 8
  %arr = alloca [8 x i8], align 4
  store i64 %0, ptr %1, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %arr, ptr align 8 %1, i64 8, i1 false)
  store i32 0, ptr %invcount, align 4
  %2 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %n, i32 2)
  %_7.0 = extractvalue { i32, i1 } %2, 0
  %_7.1 = extractvalue { i32, i1 } %2, 1
  br i1 %_7.1, label %panic, label %bb1

bb1:                                              ; preds = %start
; call <I as core::iter::traits::collect::IntoIterator>::into_iter
  %3 = call { i32, i32 } @"_ZN63_$LT$I$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17hd24370386b657febE"(i32 0, i32 %_7.0) #20
  %_4.0 = extractvalue { i32, i32 } %3, 0
  %_4.1 = extractvalue { i32, i32 } %3, 1
  store i32 %_4.0, ptr %iter, align 4
  %4 = getelementptr inbounds i8, ptr %iter, i64 4
  store i32 %_4.1, ptr %4, align 4
  br label %bb3

panic:                                            ; preds = %start
; call core::panicking::panic_const::panic_const_sub_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_sub_overflow17h134cc1a7f93654deE(ptr align 8 @alloc_c52710ccd45dfeecef6f2923f56812a0) #22
  unreachable

bb3:                                              ; preds = %bb11, %bb1
; call core::iter::range::<impl core::iter::traits::iterator::Iterator for core::ops::range::Range<A>>::next
  %5 = call { i32, i32 } @"_ZN4core4iter5range101_$LT$impl$u20$core..iter..traits..iterator..Iterator$u20$for$u20$core..ops..range..Range$LT$A$GT$$GT$4next17hd27b476f9b586705E"(ptr align 4 %iter) #20
  %6 = extractvalue { i32, i32 } %5, 0
  %7 = extractvalue { i32, i32 } %5, 1
  store i32 %6, ptr %_9, align 4
  %8 = getelementptr inbounds i8, ptr %_9, i64 4
  store i32 %7, ptr %8, align 4
  %9 = load i32, ptr %_9, align 4
  %10 = getelementptr inbounds i8, ptr %_9, i64 4
  %11 = load i32, ptr %10, align 4
  %_11 = zext i32 %9 to i64
  %12 = trunc nuw i64 %_11 to i1
  br i1 %12, label %bb6, label %bb7

bb6:                                              ; preds = %bb3
  %13 = getelementptr inbounds i8, ptr %_9, i64 4
  %i = load i32, ptr %13, align 4
  %14 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %i, i32 1)
  %_16.0 = extractvalue { i32, i1 } %14, 0
  %_16.1 = extractvalue { i32, i1 } %14, 1
  br i1 %_16.1, label %panic3, label %bb8

bb7:                                              ; preds = %bb3
  %_0 = load i32, ptr %invcount, align 4
  ret i32 %_0

bb8:                                              ; preds = %bb6
  %15 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %n, i32 1)
  %_18.0 = extractvalue { i32, i1 } %15, 0
  %_18.1 = extractvalue { i32, i1 } %15, 1
  br i1 %_18.1, label %panic4, label %bb9

panic3:                                           ; preds = %bb6
; call core::panicking::panic_const::panic_const_add_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_ca0c7df01ee07622365854ed5cd925a1) #22
  unreachable

bb9:                                              ; preds = %bb8
; call <I as core::iter::traits::collect::IntoIterator>::into_iter
  %16 = call { i32, i32 } @"_ZN63_$LT$I$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17hd24370386b657febE"(i32 %_16.0, i32 %_18.0) #20
  %_13.0 = extractvalue { i32, i32 } %16, 0
  %_13.1 = extractvalue { i32, i32 } %16, 1
  store i32 %_13.0, ptr %iter1, align 4
  %17 = getelementptr inbounds i8, ptr %iter1, i64 4
  store i32 %_13.1, ptr %17, align 4
  br label %bb11

panic4:                                           ; preds = %bb8
; call core::panicking::panic_const::panic_const_sub_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_sub_overflow17h134cc1a7f93654deE(ptr align 8 @alloc_b9b777791d222bcbd223c2570987b627) #22
  unreachable

bb11:                                             ; preds = %bb19, %bb15, %bb9
; call core::iter::range::<impl core::iter::traits::iterator::Iterator for core::ops::range::Range<A>>::next
  %18 = call { i32, i32 } @"_ZN4core4iter5range101_$LT$impl$u20$core..iter..traits..iterator..Iterator$u20$for$u20$core..ops..range..Range$LT$A$GT$$GT$4next17hd27b476f9b586705E"(ptr align 4 %iter1) #20
  %19 = extractvalue { i32, i32 } %18, 0
  %20 = extractvalue { i32, i32 } %18, 1
  store i32 %19, ptr %_20, align 4
  %21 = getelementptr inbounds i8, ptr %_20, i64 4
  store i32 %20, ptr %21, align 4
  %22 = load i32, ptr %_20, align 4
  %23 = getelementptr inbounds i8, ptr %_20, i64 4
  %24 = load i32, ptr %23, align 4
  %_22 = zext i32 %22 to i64
  %25 = trunc nuw i64 %_22 to i1
  br i1 %25, label %bb13, label %bb3

bb13:                                             ; preds = %bb11
  %26 = getelementptr inbounds i8, ptr %_20, i64 4
  %j = load i32, ptr %26, align 4
  %_26 = sext i32 %i to i64
  %_27 = icmp ult i64 %_26, 2
  br i1 %_27, label %bb14, label %panic5

bb14:                                             ; preds = %bb13
  %27 = getelementptr inbounds nuw float, ptr %arr, i64 %_26
  %_25 = load float, ptr %27, align 4
  %_29 = sext i32 %j to i64
  %_30 = icmp ult i64 %_29, 2
  br i1 %_30, label %bb15, label %panic6

panic5:                                           ; preds = %bb13
; call core::panicking::panic_bounds_check
  call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 %_26, i64 2, ptr align 8 @alloc_96ba764cd5d28bf0e79a8bea8f77f700) #22
  unreachable

bb15:                                             ; preds = %bb14
  %28 = getelementptr inbounds nuw float, ptr %arr, i64 %_29
  %_28 = load float, ptr %28, align 4
  %_24 = fcmp ogt float %_25, %_28
  br i1 %_24, label %bb16, label %bb11

panic6:                                           ; preds = %bb14
; call core::panicking::panic_bounds_check
  call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 %_29, i64 2, ptr align 8 @alloc_e9c245163841a269a683b2c5ccf9e242) #22
  unreachable

bb16:                                             ; preds = %bb15
  %29 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %j, i32 1)
  %_34.0 = extractvalue { i32, i1 } %29, 0
  %_34.1 = extractvalue { i32, i1 } %29, 1
  br i1 %_34.1, label %panic7, label %bb17

bb17:                                             ; preds = %bb16
; call <I as core::iter::traits::collect::IntoIterator>::into_iter
  %30 = call { i32, i32 } @"_ZN63_$LT$I$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17hd24370386b657febE"(i32 %_34.0, i32 %n) #20
  %_31.0 = extractvalue { i32, i32 } %30, 0
  %_31.1 = extractvalue { i32, i32 } %30, 1
  store i32 %_31.0, ptr %iter2, align 4
  %31 = getelementptr inbounds i8, ptr %iter2, i64 4
  store i32 %_31.1, ptr %31, align 4
  br label %bb19

panic7:                                           ; preds = %bb16
; call core::panicking::panic_const::panic_const_add_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_457286e763da0198b4d4a16b323a3205) #22
  unreachable

bb19:                                             ; preds = %bb25, %bb23, %bb17
; call core::iter::range::<impl core::iter::traits::iterator::Iterator for core::ops::range::Range<A>>::next
  %32 = call { i32, i32 } @"_ZN4core4iter5range101_$LT$impl$u20$core..iter..traits..iterator..Iterator$u20$for$u20$core..ops..range..Range$LT$A$GT$$GT$4next17hd27b476f9b586705E"(ptr align 4 %iter2) #20
  %33 = extractvalue { i32, i32 } %32, 0
  %34 = extractvalue { i32, i32 } %32, 1
  store i32 %33, ptr %_36, align 4
  %35 = getelementptr inbounds i8, ptr %_36, i64 4
  store i32 %34, ptr %35, align 4
  %36 = load i32, ptr %_36, align 4
  %37 = getelementptr inbounds i8, ptr %_36, i64 4
  %38 = load i32, ptr %37, align 4
  %_38 = zext i32 %36 to i64
  %39 = trunc nuw i64 %_38 to i1
  br i1 %39, label %bb21, label %bb11

bb21:                                             ; preds = %bb19
  %40 = getelementptr inbounds i8, ptr %_36, i64 4
  %k = load i32, ptr %40, align 4
  %_42 = sext i32 %j to i64
  %_43 = icmp ult i64 %_42, 2
  br i1 %_43, label %bb22, label %panic8

bb22:                                             ; preds = %bb21
  %41 = getelementptr inbounds nuw float, ptr %arr, i64 %_42
  %_41 = load float, ptr %41, align 4
  %_45 = sext i32 %k to i64
  %_46 = icmp ult i64 %_45, 2
  br i1 %_46, label %bb23, label %panic9

panic8:                                           ; preds = %bb21
; call core::panicking::panic_bounds_check
  call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 %_42, i64 2, ptr align 8 @alloc_bb4009a4bd8d746d295adc98fa8593aa) #22
  unreachable

bb23:                                             ; preds = %bb22
  %42 = getelementptr inbounds nuw float, ptr %arr, i64 %_45
  %_44 = load float, ptr %42, align 4
  %_40 = fcmp ogt float %_41, %_44
  br i1 %_40, label %bb24, label %bb19

panic9:                                           ; preds = %bb22
; call core::panicking::panic_bounds_check
  call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 %_45, i64 2, ptr align 8 @alloc_45a463a0be75034b5e1eb77ae000a273) #22
  unreachable

bb24:                                             ; preds = %bb23
  %43 = load i32, ptr %invcount, align 4
  %44 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %43, i32 1)
  %_47.0 = extractvalue { i32, i1 } %44, 0
  %_47.1 = extractvalue { i32, i1 } %44, 1
  br i1 %_47.1, label %panic10, label %bb25

bb25:                                             ; preds = %bb24
  store i32 %_47.0, ptr %invcount, align 4
  br label %bb19

panic10:                                          ; preds = %bb24
; call core::panicking::panic_const::panic_const_add_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_4bd4a02c15456ad020941a55396206f7) #22
  unreachable

bb5:                                              ; No predecessors!
  unreachable
}

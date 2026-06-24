define i32 @f_gold(ptr align 4 %arr.0, i64 %arr.1, i32 %n) unnamed_addr #3 {
start:
  %_17 = alloca [8 x i8], align 4
  %iter1 = alloca [8 x i8], align 4
  %max = alloca [4 x i8], align 4
  %min = alloca [4 x i8], align 4
  %_8 = alloca [8 x i8], align 4
  %iter = alloca [8 x i8], align 4
  %longest_end = alloca [4 x i8], align 4
  %longest_start = alloca [4 x i8], align 4
  %_0 = alloca [4 x i8], align 4
  store i32 -1, ptr %longest_start, align 4
  store i32 0, ptr %longest_end, align 4
; call <I as core::iter::traits::collect::IntoIterator>::into_iter
  %0 = call { i32, i32 } @"_ZN63_$LT$I$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17hcd3ef86ed14600b8E"(i32 0, i32 %n) #20
  %_5.0 = extractvalue { i32, i32 } %0, 0
  %_5.1 = extractvalue { i32, i32 } %0, 1
  store i32 %_5.0, ptr %iter, align 4
  %1 = getelementptr inbounds i8, ptr %iter, i64 4
  store i32 %_5.1, ptr %1, align 4
  br label %bb2

bb2:                                              ; preds = %bb15, %bb8, %start
; call core::iter::range::<impl core::iter::traits::iterator::Iterator for core::ops::range::Range<A>>::next
  %2 = call { i32, i32 } @"_ZN4core4iter5range101_$LT$impl$u20$core..iter..traits..iterator..Iterator$u20$for$u20$core..ops..range..Range$LT$A$GT$$GT$4next17hdfe8f6a9d5208d84E"(ptr align 4 %iter) #20
  %3 = extractvalue { i32, i32 } %2, 0
  %4 = extractvalue { i32, i32 } %2, 1
  store i32 %3, ptr %_8, align 4
  %5 = getelementptr inbounds i8, ptr %_8, i64 4
  store i32 %4, ptr %5, align 4
  %6 = load i32, ptr %_8, align 4
  %7 = getelementptr inbounds i8, ptr %_8, i64 4
  %8 = load i32, ptr %7, align 4
  %_10 = zext i32 %6 to i64
  %9 = trunc nuw i64 %_10 to i1
  br i1 %9, label %bb5, label %bb6

bb5:                                              ; preds = %bb2
  %10 = getelementptr inbounds i8, ptr %_8, i64 4
  %start4 = load i32, ptr %10, align 4
  store float 0x47EFFFFFE0000000, ptr %min, align 4
  store float 0xC7EFFFFFE0000000, ptr %max, align 4
; call <I as core::iter::traits::collect::IntoIterator>::into_iter
  %11 = call { i32, i32 } @"_ZN63_$LT$I$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17hcd3ef86ed14600b8E"(i32 %start4, i32 %n) #20
  %_14.0 = extractvalue { i32, i32 } %11, 0
  %_14.1 = extractvalue { i32, i32 } %11, 1
  store i32 %_14.0, ptr %iter1, align 4
  %12 = getelementptr inbounds i8, ptr %iter1, i64 4
  store i32 %_14.1, ptr %12, align 4
  br label %bb8

bb6:                                              ; preds = %bb2
  %_44 = load i32, ptr %longest_start, align 4
  %_43 = icmp eq i32 %_44, -1
  br i1 %_43, label %bb21, label %bb22

bb22:                                             ; preds = %bb6
  %_47 = load i32, ptr %longest_end, align 4
  %_48 = load i32, ptr %longest_start, align 4
  %13 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %_47, i32 %_48)
  %_49.0 = extractvalue { i32, i1 } %13, 0
  %_49.1 = extractvalue { i32, i1 } %13, 1
  br i1 %_49.1, label %panic, label %bb23

bb21:                                             ; preds = %bb6
  store i32 %n, ptr %_0, align 4
  br label %bb26

bb23:                                             ; preds = %bb22
  %14 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %_49.0, i32 1)
  %_50.0 = extractvalue { i32, i1 } %14, 0
  %_50.1 = extractvalue { i32, i1 } %14, 1
  br i1 %_50.1, label %panic2, label %bb24

panic:                                            ; preds = %bb22
; call core::panicking::panic_const::panic_const_sub_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_sub_overflow17h134cc1a7f93654deE(ptr align 8 @alloc_33a25218a08904b4fa16ed0d118197b1) #22
  unreachable

bb24:                                             ; preds = %bb23
  %15 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %n, i32 %_50.0)
  %_51.0 = extractvalue { i32, i1 } %15, 0
  %_51.1 = extractvalue { i32, i1 } %15, 1
  br i1 %_51.1, label %panic3, label %bb25

panic2:                                           ; preds = %bb23
; call core::panicking::panic_const::panic_const_add_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_3d9ff0fd1507f7bb049c265918e375ff) #22
  unreachable

bb25:                                             ; preds = %bb24
  store i32 %_51.0, ptr %_0, align 4
  br label %bb26

panic3:                                           ; preds = %bb24
; call core::panicking::panic_const::panic_const_sub_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_sub_overflow17h134cc1a7f93654deE(ptr align 8 @alloc_2b2a39656c1f300bab044441877063b0) #22
  unreachable

bb26:                                             ; preds = %bb21, %bb25
  %16 = load i32, ptr %_0, align 4
  ret i32 %16

bb8:                                              ; preds = %bb20, %bb19, %bb5
; call core::iter::range::<impl core::iter::traits::iterator::Iterator for core::ops::range::Range<A>>::next
  %17 = call { i32, i32 } @"_ZN4core4iter5range101_$LT$impl$u20$core..iter..traits..iterator..Iterator$u20$for$u20$core..ops..range..Range$LT$A$GT$$GT$4next17hdfe8f6a9d5208d84E"(ptr align 4 %iter1) #20
  %18 = extractvalue { i32, i32 } %17, 0
  %19 = extractvalue { i32, i32 } %17, 1
  store i32 %18, ptr %_17, align 4
  %20 = getelementptr inbounds i8, ptr %_17, i64 4
  store i32 %19, ptr %20, align 4
  %21 = load i32, ptr %_17, align 4
  %22 = getelementptr inbounds i8, ptr %_17, i64 4
  %23 = load i32, ptr %22, align 4
  %_19 = zext i32 %21 to i64
  %24 = trunc nuw i64 %_19 to i1
  br i1 %24, label %bb10, label %bb2

bb10:                                             ; preds = %bb8
  %25 = getelementptr inbounds i8, ptr %_17, i64 4
  %end = load i32, ptr %25, align 4
  %_22 = sext i32 %end to i64
  %_25 = icmp ult i64 %_22, %arr.1
  br i1 %_25, label %bb11, label %panic5

bb11:                                             ; preds = %bb10
  %26 = getelementptr inbounds nuw float, ptr %arr.0, i64 %_22
  %val = load float, ptr %26, align 4
  %_27 = load float, ptr %min, align 4
  %_26 = fcmp olt float %val, %_27
  br i1 %_26, label %bb12, label %bb13

panic5:                                           ; preds = %bb10
; call core::panicking::panic_bounds_check
  call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 %_22, i64 %arr.1, ptr align 8 @alloc_3e21be8764aaf124f0c06e6ff19bcc49) #22
  unreachable

bb13:                                             ; preds = %bb12, %bb11
  %_29 = load float, ptr %max, align 4
  %_28 = fcmp ogt float %val, %_29
  br i1 %_28, label %bb14, label %bb15

bb12:                                             ; preds = %bb11
  store float %val, ptr %min, align 4
  br label %bb13

bb15:                                             ; preds = %bb14, %bb13
  %_32 = load float, ptr %min, align 4
  %_31 = fmul float 2.000000e+00, %_32
  %_33 = load float, ptr %max, align 4
  %_30 = fcmp ole float %_31, %_33
  br i1 %_30, label %bb2, label %bb16

bb14:                                             ; preds = %bb13
  store float %val, ptr %max, align 4
  br label %bb15

bb16:                                             ; preds = %bb15
  %27 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %end, i32 %start4)
  %_36.0 = extractvalue { i32, i1 } %27, 0
  %_36.1 = extractvalue { i32, i1 } %27, 1
  br i1 %_36.1, label %panic6, label %bb17

bb17:                                             ; preds = %bb16
  %_38 = load i32, ptr %longest_end, align 4
  %_39 = load i32, ptr %longest_start, align 4
  %28 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %_38, i32 %_39)
  %_40.0 = extractvalue { i32, i1 } %28, 0
  %_40.1 = extractvalue { i32, i1 } %28, 1
  br i1 %_40.1, label %panic7, label %bb18

panic6:                                           ; preds = %bb16
; call core::panicking::panic_const::panic_const_sub_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_sub_overflow17h134cc1a7f93654deE(ptr align 8 @alloc_a2b2dcb01585dfd2c21aecb122fb14c6) #22
  unreachable

bb18:                                             ; preds = %bb17
  %_34 = icmp sgt i32 %_36.0, %_40.0
  br i1 %_34, label %bb20, label %bb19

panic7:                                           ; preds = %bb17
; call core::panicking::panic_const::panic_const_sub_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_sub_overflow17h134cc1a7f93654deE(ptr align 8 @alloc_dcf4bdd176a55927cae55fe573f713b8) #22
  unreachable

bb19:                                             ; preds = %bb18
  %_42 = load i32, ptr %longest_start, align 4
  %_41 = icmp eq i32 %_42, -1
  br i1 %_41, label %bb20, label %bb8

bb20:                                             ; preds = %bb19, %bb18
  store i32 %start4, ptr %longest_start, align 4
  store i32 %end, ptr %longest_end, align 4
  br label %bb8

bb4:                                              ; No predecessors!
  unreachable
}

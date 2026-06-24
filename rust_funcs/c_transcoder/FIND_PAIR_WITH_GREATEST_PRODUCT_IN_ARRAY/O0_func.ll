define i32 @f_gold(i64 %0, i32 %n) unnamed_addr #3 {
start:
  %_28 = alloca [16 x i8], align 8
  %iter2 = alloca [16 x i8], align 8
  %_18 = alloca [16 x i8], align 8
  %iter1 = alloca [16 x i8], align 8
  %_8 = alloca [16 x i8], align 8
  %iter = alloca [16 x i8], align 8
  %result = alloca [4 x i8], align 4
  %1 = alloca [8 x i8], align 8
  %arr = alloca [8 x i8], align 4
  store i64 %0, ptr %1, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %arr, ptr align 8 %1, i64 8, i1 false)
  store i32 -1, ptr %result, align 4
  %_6 = sext i32 %n to i64
; call <I as core::iter::traits::collect::IntoIterator>::into_iter
  %2 = call { i64, i64 } @"_ZN63_$LT$I$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17he42dceade770bd8cE"(i64 0, i64 %_6) #20
  %_4.0 = extractvalue { i64, i64 } %2, 0
  %_4.1 = extractvalue { i64, i64 } %2, 1
  store i64 %_4.0, ptr %iter, align 8
  %3 = getelementptr inbounds i8, ptr %iter, i64 8
  store i64 %_4.1, ptr %3, align 8
  br label %bb2

bb2:                                              ; preds = %bb9, %start
; call core::iter::range::<impl core::iter::traits::iterator::Iterator for core::ops::range::Range<A>>::next
  %4 = call { i64, i64 } @"_ZN4core4iter5range101_$LT$impl$u20$core..iter..traits..iterator..Iterator$u20$for$u20$core..ops..range..Range$LT$A$GT$$GT$4next17hc9ca9920fcfb7081E"(ptr align 8 %iter) #20
  %5 = extractvalue { i64, i64 } %4, 0
  %6 = extractvalue { i64, i64 } %4, 1
  store i64 %5, ptr %_8, align 8
  %7 = getelementptr inbounds i8, ptr %_8, i64 8
  store i64 %6, ptr %7, align 8
  %_10 = load i64, ptr %_8, align 8
  %8 = getelementptr inbounds i8, ptr %_8, i64 8
  %9 = load i64, ptr %8, align 8
  %10 = trunc nuw i64 %_10 to i1
  br i1 %10, label %bb5, label %bb6

bb5:                                              ; preds = %bb2
  %11 = getelementptr inbounds i8, ptr %_8, i64 8
  %i = load i64, ptr %11, align 8
  %_15 = sext i32 %n to i64
  %_16.0 = sub i64 %_15, 1
  %_16.1 = icmp ult i64 %_15, 1
  br i1 %_16.1, label %panic, label %bb7

bb6:                                              ; preds = %bb2
  %_0 = load i32, ptr %result, align 4
  ret i32 %_0

bb7:                                              ; preds = %bb5
; call <I as core::iter::traits::collect::IntoIterator>::into_iter
  %12 = call { i64, i64 } @"_ZN63_$LT$I$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17he42dceade770bd8cE"(i64 0, i64 %_16.0) #20
  %_12.0 = extractvalue { i64, i64 } %12, 0
  %_12.1 = extractvalue { i64, i64 } %12, 1
  store i64 %_12.0, ptr %iter1, align 8
  %13 = getelementptr inbounds i8, ptr %iter1, i64 8
  store i64 %_12.1, ptr %13, align 8
  br label %bb9

panic:                                            ; preds = %bb5
; call core::panicking::panic_const::panic_const_sub_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_sub_overflow17h134cc1a7f93654deE(ptr align 8 @alloc_c2ac3aaa064224baa37b4ba8e732fedb) #22
  unreachable

bb9:                                              ; preds = %bb14, %bb7
; call core::iter::range::<impl core::iter::traits::iterator::Iterator for core::ops::range::Range<A>>::next
  %14 = call { i64, i64 } @"_ZN4core4iter5range101_$LT$impl$u20$core..iter..traits..iterator..Iterator$u20$for$u20$core..ops..range..Range$LT$A$GT$$GT$4next17hc9ca9920fcfb7081E"(ptr align 8 %iter1) #20
  %15 = extractvalue { i64, i64 } %14, 0
  %16 = extractvalue { i64, i64 } %14, 1
  store i64 %15, ptr %_18, align 8
  %17 = getelementptr inbounds i8, ptr %_18, i64 8
  store i64 %16, ptr %17, align 8
  %_20 = load i64, ptr %_18, align 8
  %18 = getelementptr inbounds i8, ptr %_18, i64 8
  %19 = load i64, ptr %18, align 8
  %20 = trunc nuw i64 %_20 to i1
  br i1 %20, label %bb11, label %bb2

bb11:                                             ; preds = %bb9
  %21 = getelementptr inbounds i8, ptr %_18, i64 8
  %j = load i64, ptr %21, align 8
  %_25.0 = add i64 %j, 1
  %_25.1 = icmp ult i64 %_25.0, %j
  br i1 %_25.1, label %panic3, label %bb12

bb12:                                             ; preds = %bb11
  %_26 = sext i32 %n to i64
; call <I as core::iter::traits::collect::IntoIterator>::into_iter
  %22 = call { i64, i64 } @"_ZN63_$LT$I$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17he42dceade770bd8cE"(i64 %_25.0, i64 %_26) #20
  %_22.0 = extractvalue { i64, i64 } %22, 0
  %_22.1 = extractvalue { i64, i64 } %22, 1
  store i64 %_22.0, ptr %iter2, align 8
  %23 = getelementptr inbounds i8, ptr %iter2, i64 8
  store i64 %_22.1, ptr %23, align 8
  br label %bb14

panic3:                                           ; preds = %bb11
; call core::panicking::panic_const::panic_const_add_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_80ef6de4981cdb52388ab3e40f1ab0d4) #22
  unreachable

bb14:                                             ; preds = %bb21, %bb19, %bb12
; call core::iter::range::<impl core::iter::traits::iterator::Iterator for core::ops::range::Range<A>>::next
  %24 = call { i64, i64 } @"_ZN4core4iter5range101_$LT$impl$u20$core..iter..traits..iterator..Iterator$u20$for$u20$core..ops..range..Range$LT$A$GT$$GT$4next17hc9ca9920fcfb7081E"(ptr align 8 %iter2) #20
  %25 = extractvalue { i64, i64 } %24, 0
  %26 = extractvalue { i64, i64 } %24, 1
  store i64 %25, ptr %_28, align 8
  %27 = getelementptr inbounds i8, ptr %_28, i64 8
  store i64 %26, ptr %27, align 8
  %_30 = load i64, ptr %_28, align 8
  %28 = getelementptr inbounds i8, ptr %_28, i64 8
  %29 = load i64, ptr %28, align 8
  %30 = trunc nuw i64 %_30 to i1
  br i1 %30, label %bb16, label %bb9

bb16:                                             ; preds = %bb14
  %31 = getelementptr inbounds i8, ptr %_28, i64 8
  %k = load i64, ptr %31, align 8
  %_36 = icmp ult i64 %j, 2
  br i1 %_36, label %bb17, label %panic4

bb17:                                             ; preds = %bb16
  %32 = getelementptr inbounds nuw i32, ptr %arr, i64 %j
  %_35 = load i32, ptr %32, align 4
  %_34 = sitofp i32 %_35 to float
  %_39 = icmp ult i64 %k, 2
  br i1 %_39, label %bb18, label %panic5

panic4:                                           ; preds = %bb16
; call core::panicking::panic_bounds_check
  call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 %j, i64 2, ptr align 8 @alloc_56ab95d094517ed169eca5a58aff51a6) #22
  unreachable

bb18:                                             ; preds = %bb17
  %33 = getelementptr inbounds nuw i32, ptr %arr, i64 %k
  %_38 = load i32, ptr %33, align 4
  %_37 = sitofp i32 %_38 to float
  %_33 = fmul float %_34, %_37
  %_42 = icmp ult i64 %i, 2
  br i1 %_42, label %bb19, label %panic6

panic5:                                           ; preds = %bb17
; call core::panicking::panic_bounds_check
  call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 %k, i64 2, ptr align 8 @alloc_807f1422a766a986fbd4cfdbee0da579) #22
  unreachable

bb19:                                             ; preds = %bb18
  %34 = getelementptr inbounds nuw i32, ptr %arr, i64 %i
  %_41 = load i32, ptr %34, align 4
  %_40 = sitofp i32 %_41 to float
  %_32 = fcmp oeq float %_33, %_40
  br i1 %_32, label %bb20, label %bb14

panic6:                                           ; preds = %bb18
; call core::panicking::panic_bounds_check
  call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 %i, i64 2, ptr align 8 @alloc_3847d7f470fbf7506b20dd52b15e2108) #22
  unreachable

bb20:                                             ; preds = %bb19
  %_44 = load i32, ptr %result, align 4
  %_46 = icmp ult i64 %i, 2
  br i1 %_46, label %bb21, label %panic7

bb21:                                             ; preds = %bb20
  %35 = getelementptr inbounds nuw i32, ptr %arr, i64 %i
  %_45 = load i32, ptr %35, align 4
; call core::cmp::Ord::max
  %_43 = call i32 @_ZN4core3cmp3Ord3max17h26402b20279c0c97E(i32 %_44, i32 %_45) #20
  store i32 %_43, ptr %result, align 4
  br label %bb14

panic7:                                           ; preds = %bb20
; call core::panicking::panic_bounds_check
  call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 %i, i64 2, ptr align 8 @alloc_c0cb41605491067f926e8f57c44647ba) #22
  unreachable

bb4:                                              ; No predecessors!
  unreachable
}

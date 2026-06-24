define i32 @f_gold(ptr align 4 %arr.0, i64 %arr.1, i32 %n, i32 %sum) unnamed_addr #3 {
start:
  %_43 = alloca [16 x i8], align 8
  %_42 = alloca [16 x i8], align 8
  %args = alloca [32 x i8], align 8
  %_39 = alloca [8 x i8], align 8
  %_27 = alloca [16 x i8], align 8
  %iter1 = alloca [16 x i8], align 8
  %i = alloca [8 x i8], align 8
  %_13 = alloca [16 x i8], align 8
  %iter = alloca [16 x i8], align 8
  %curr_sum = alloca [4 x i8], align 4
  %_0 = alloca [4 x i8], align 4
  %_8 = icmp ult i64 0, %arr.1
  br i1 %_8, label %bb1, label %panic

bb1:                                              ; preds = %start
  %0 = getelementptr inbounds nuw float, ptr %arr.0, i64 0
  %1 = load float, ptr %0, align 4
  store float %1, ptr %curr_sum, align 4
  %_11 = sext i32 %n to i64
; call <I as core::iter::traits::collect::IntoIterator>::into_iter
  %2 = call { i64, i64 } @"_ZN63_$LT$I$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17h7349adc67e47cb3aE"(i64 0, i64 %_11) #20
  %_9.0 = extractvalue { i64, i64 } %2, 0
  %_9.1 = extractvalue { i64, i64 } %2, 1
  store i64 %_9.0, ptr %iter, align 8
  %3 = getelementptr inbounds i8, ptr %iter, i64 8
  store i64 %_9.1, ptr %3, align 8
  br label %bb3

panic:                                            ; preds = %start
; call core::panicking::panic_bounds_check
  call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 0, i64 %arr.1, ptr align 8 @alloc_8a8bbb9576ecfecef796859b57d81045) #22
  unreachable

bb3:                                              ; preds = %bb21, %bb20, %bb11, %bb1
; call core::iter::range::<impl core::iter::traits::iterator::Iterator for core::ops::range::Range<A>>::next
  %4 = call { i64, i64 } @"_ZN4core4iter5range101_$LT$impl$u20$core..iter..traits..iterator..Iterator$u20$for$u20$core..ops..range..Range$LT$A$GT$$GT$4next17h89420a026f5224edE"(ptr align 8 %iter) #20
  %5 = extractvalue { i64, i64 } %4, 0
  %6 = extractvalue { i64, i64 } %4, 1
  store i64 %5, ptr %_13, align 8
  %7 = getelementptr inbounds i8, ptr %_13, i64 8
  store i64 %6, ptr %7, align 8
  %_15 = load i64, ptr %_13, align 8
  %8 = getelementptr inbounds i8, ptr %_13, i64 8
  %9 = load i64, ptr %8, align 8
  %10 = trunc nuw i64 %_15 to i1
  br i1 %10, label %bb6, label %bb7

bb6:                                              ; preds = %bb3
  %11 = getelementptr inbounds i8, ptr %_13, i64 8
  %12 = load i64, ptr %11, align 8
  store i64 %12, ptr %i, align 8
  %13 = load i64, ptr %i, align 8
  %_20 = icmp ult i64 %13, %arr.1
  br i1 %_20, label %bb8, label %panic2

bb7:                                              ; preds = %bb3
; call core::fmt::Arguments::from_str
  %14 = call { ptr, ptr } @_ZN4core3fmt9Arguments8from_str17h96cf3373d4ea6382E(ptr align 1 @alloc_011ebe6ea4ac69685dc67ff9ea43bbda, i64 18) #20
  %_56.0 = extractvalue { ptr, ptr } %14, 0
  %_56.1 = extractvalue { ptr, ptr } %14, 1
; call std::io::stdio::_print
  call void @_ZN3std2io5stdio6_print17hba8f5eda1e4e495eE(ptr %_56.0, ptr %_56.1)
  store i32 0, ptr %_0, align 4
  br label %bb26

bb26:                                             ; preds = %bb15, %bb7
  %15 = load i32, ptr %_0, align 4
  ret i32 %15

bb8:                                              ; preds = %bb6
  %16 = load i64, ptr %i, align 8
  %17 = getelementptr inbounds nuw float, ptr %arr.0, i64 %16
  %_17 = load float, ptr %17, align 4
  store float %_17, ptr %curr_sum, align 4
  %18 = load i64, ptr %i, align 8
  %_24.0 = add i64 %18, 1
  %_24.1 = icmp ult i64 %_24.0, %18
  br i1 %_24.1, label %panic3, label %bb9

panic2:                                           ; preds = %bb6
  %19 = load i64, ptr %i, align 8
; call core::panicking::panic_bounds_check
  call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 %19, i64 %arr.1, ptr align 8 @alloc_d5852e20ec62dabde9a76c603faee724) #22
  unreachable

bb9:                                              ; preds = %bb8
  %_25 = sext i32 %n to i64
; call <I as core::iter::traits::collect::IntoIterator>::into_iter
  %20 = call { i64, i64 } @"_ZN63_$LT$I$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17h7349adc67e47cb3aE"(i64 %_24.0, i64 %_25) #20
  %_21.0 = extractvalue { i64, i64 } %20, 0
  %_21.1 = extractvalue { i64, i64 } %20, 1
  store i64 %_21.0, ptr %iter1, align 8
  %21 = getelementptr inbounds i8, ptr %iter1, i64 8
  store i64 %_21.1, ptr %21, align 8
  br label %bb11

panic3:                                           ; preds = %bb8
; call core::panicking::panic_const::panic_const_add_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_322d875e91d960f730b98ee02f24fa35) #22
  unreachable

bb11:                                             ; preds = %bb23, %bb9
; call core::iter::range::<impl core::iter::traits::iterator::Iterator for core::ops::range::Range<A>>::next
  %22 = call { i64, i64 } @"_ZN4core4iter5range101_$LT$impl$u20$core..iter..traits..iterator..Iterator$u20$for$u20$core..ops..range..Range$LT$A$GT$$GT$4next17h89420a026f5224edE"(ptr align 8 %iter1) #20
  %23 = extractvalue { i64, i64 } %22, 0
  %24 = extractvalue { i64, i64 } %22, 1
  store i64 %23, ptr %_27, align 8
  %25 = getelementptr inbounds i8, ptr %_27, i64 8
  store i64 %24, ptr %25, align 8
  %_29 = load i64, ptr %_27, align 8
  %26 = getelementptr inbounds i8, ptr %_27, i64 8
  %27 = load i64, ptr %26, align 8
  %28 = trunc nuw i64 %_29 to i1
  br i1 %28, label %bb13, label %bb3

bb13:                                             ; preds = %bb11
  %29 = getelementptr inbounds i8, ptr %_27, i64 8
  %j = load i64, ptr %29, align 8
  %_32 = load float, ptr %curr_sum, align 4
  %_33 = sitofp i32 %sum to float
  %_31 = fcmp oeq float %_32, %_33
  br i1 %_31, label %bb14, label %bb20

bb20:                                             ; preds = %bb13
  %_47 = load float, ptr %curr_sum, align 4
  %_48 = sitofp i32 %sum to float
  %_46 = fcmp ogt float %_47, %_48
  br i1 %_46, label %bb3, label %bb21

bb14:                                             ; preds = %bb13
  %_40.0 = sub i64 %j, 1
  %_40.1 = icmp ult i64 %j, 1
  br i1 %_40.1, label %panic5, label %bb15

bb21:                                             ; preds = %bb20
  %_50 = sext i32 %n to i64
  %_49 = icmp eq i64 %j, %_50
  br i1 %_49, label %bb3, label %bb22

bb22:                                             ; preds = %bb21
  %_54 = icmp ult i64 %j, %arr.1
  br i1 %_54, label %bb23, label %panic4

bb23:                                             ; preds = %bb22
  %30 = getelementptr inbounds nuw float, ptr %arr.0, i64 %j
  %_51 = load float, ptr %30, align 4
  %31 = load float, ptr %curr_sum, align 4
  %32 = fadd float %31, %_51
  store float %32, ptr %curr_sum, align 4
  br label %bb11

panic4:                                           ; preds = %bb22
; call core::panicking::panic_bounds_check
  call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 %j, i64 %arr.1, ptr align 8 @alloc_4645dfa05f1b831313f1d14730f4fb0b) #22
  unreachable

bb15:                                             ; preds = %bb14
  store i64 %_40.0, ptr %_39, align 8
; call core::fmt::rt::Argument::new_display
  call void @_ZN4core3fmt2rt8Argument11new_display17h82faa2393c43948eE(ptr sret([16 x i8]) align 8 %_42, ptr align 8 %i) #20
; call core::fmt::rt::Argument::new_display
  call void @_ZN4core3fmt2rt8Argument11new_display17h82faa2393c43948eE(ptr sret([16 x i8]) align 8 %_43, ptr align 8 %_39) #20
  %33 = getelementptr inbounds nuw %"core::fmt::rt::Argument<'_>", ptr %args, i64 0
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %33, ptr align 8 %_42, i64 16, i1 false)
  %34 = getelementptr inbounds nuw %"core::fmt::rt::Argument<'_>", ptr %args, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %34, ptr align 8 %_43, i64 16, i1 false)
; call core::fmt::Arguments::new
  %35 = call { ptr, ptr } @_ZN4core3fmt9Arguments3new17h82e53f3200b77aecE(ptr align 1 @alloc_ae29e8a9fec6eedf9365c958241f329d, ptr align 8 %args) #20
  %_35.0 = extractvalue { ptr, ptr } %35, 0
  %_35.1 = extractvalue { ptr, ptr } %35, 1
; call std::io::stdio::_print
  call void @_ZN3std2io5stdio6_print17hba8f5eda1e4e495eE(ptr %_35.0, ptr %_35.1)
  store i32 1, ptr %_0, align 4
  br label %bb26

panic5:                                           ; preds = %bb14
; call core::panicking::panic_const::panic_const_sub_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_sub_overflow17h134cc1a7f93654deE(ptr align 8 @alloc_b8598c616f96d21d7fa4c5ec902bb361) #22
  unreachable

bb5:                                              ; No predecessors!
  unreachable
}

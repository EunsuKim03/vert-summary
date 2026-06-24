define i32 @f_gold(ptr align 4 %bin.0, i64 %bin.1) unnamed_addr #3 {
start:
  %_16 = alloca [16 x i8], align 8
  %iter = alloca [16 x i8], align 8
  %sum = alloca [4 x i8], align 4
  %_0 = alloca [4 x i8], align 4
  %_6.0 = sub i64 %bin.1, 1
  %_6.1 = icmp ult i64 %bin.1, 1
  br i1 %_6.1, label %panic, label %bb1

bb1:                                              ; preds = %start
  %_8 = icmp ult i64 %_6.0, %bin.1
  br i1 %_8, label %bb2, label %panic1

panic:                                            ; preds = %start
; call core::panicking::panic_const::panic_const_sub_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_sub_overflow17h134cc1a7f93654deE(ptr align 8 @alloc_746d5c2827f39e09c786835d60e73ac4) #22
  unreachable

bb2:                                              ; preds = %bb1
  %0 = getelementptr inbounds nuw i32, ptr %bin.0, i64 %_6.0
  %_4 = load i32, ptr %0, align 4
  %_3 = icmp eq i32 %_4, 49
  br i1 %_3, label %bb3, label %bb4

panic1:                                           ; preds = %bb1
; call core::panicking::panic_bounds_check
  call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 %_6.0, i64 %bin.1, ptr align 8 @alloc_5e038110c12b6c668792afd25c9d028f) #22
  unreachable

bb4:                                              ; preds = %bb2
  store float 0.000000e+00, ptr %sum, align 4
  %_14.0 = sub i64 %bin.1, 2
  %_14.1 = icmp ult i64 %bin.1, 2
  br i1 %_14.1, label %panic2, label %bb5

bb3:                                              ; preds = %bb2
  store i32 0, ptr %_0, align 4
  br label %bb30

bb5:                                              ; preds = %bb4
; call core::iter::traits::iterator::Iterator::rev
  %1 = call { i64, i64 } @_ZN4core4iter6traits8iterator8Iterator3rev17hdd990c57bb1fae06E(i64 0, i64 %_14.0) #20
  %_11.0 = extractvalue { i64, i64 } %1, 0
  %_11.1 = extractvalue { i64, i64 } %1, 1
; call <I as core::iter::traits::collect::IntoIterator>::into_iter
  %2 = call { i64, i64 } @"_ZN63_$LT$I$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17h4665ba3d933fd573E"(i64 %_11.0, i64 %_11.1) #20
  %_10.0 = extractvalue { i64, i64 } %2, 0
  %_10.1 = extractvalue { i64, i64 } %2, 1
  store i64 %_10.0, ptr %iter, align 8
  %3 = getelementptr inbounds i8, ptr %iter, i64 8
  store i64 %_10.1, ptr %3, align 8
  br label %bb8

panic2:                                           ; preds = %bb4
; call core::panicking::panic_const::panic_const_sub_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_sub_overflow17h134cc1a7f93654deE(ptr align 8 @alloc_626f45abf33a38d30e304a126b97a53e) #22
  unreachable

bb8:                                              ; preds = %bb18, %bb21, %bb24, %bb27, %bb25, %bb13, %bb5
; call <core::iter::adapters::rev::Rev<I> as core::iter::traits::iterator::Iterator>::next
  %4 = call { i64, i64 } @"_ZN98_$LT$core..iter..adapters..rev..Rev$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hd93826230d498a25E"(ptr align 8 %iter) #20
  %5 = extractvalue { i64, i64 } %4, 0
  %6 = extractvalue { i64, i64 } %4, 1
  store i64 %5, ptr %_16, align 8
  %7 = getelementptr inbounds i8, ptr %_16, i64 8
  store i64 %6, ptr %7, align 8
  %_18 = load i64, ptr %_16, align 8
  %8 = getelementptr inbounds i8, ptr %_16, i64 8
  %9 = load i64, ptr %8, align 8
  %10 = trunc nuw i64 %_18 to i1
  br i1 %10, label %bb11, label %bb12

bb11:                                             ; preds = %bb8
  %11 = getelementptr inbounds i8, ptr %_16, i64 8
  %i = load i64, ptr %11, align 8
  %_23 = icmp ult i64 %i, %bin.1
  br i1 %_23, label %bb13, label %panic3

bb12:                                             ; preds = %bb8
  %_42 = load float, ptr %sum, align 4
  %_41 = frem float %_42, 1.000000e+01
  %_40 = fcmp oeq float %_41, 0.000000e+00
  br i1 %_40, label %bb28, label %bb29

bb29:                                             ; preds = %bb12
  store i32 0, ptr %_0, align 4
  br label %bb30

bb28:                                             ; preds = %bb12
  store i32 1, ptr %_0, align 4
  br label %bb30

bb30:                                             ; preds = %bb3, %bb28, %bb29
  %12 = load i32, ptr %_0, align 4
  ret i32 %12

bb13:                                             ; preds = %bb11
  %13 = getelementptr inbounds nuw i32, ptr %bin.0, i64 %i
  %_21 = load i32, ptr %13, align 4
  %_20 = icmp eq i32 %_21, 49
  br i1 %_20, label %bb14, label %bb8

panic3:                                           ; preds = %bb11
; call core::panicking::panic_bounds_check
  call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 %i, i64 %bin.1, ptr align 8 @alloc_494bdbd4910fb993a74023edd9d3d418) #22
  unreachable

bb14:                                             ; preds = %bb13
  %_26.0 = sub i64 %bin.1, %i
  %_26.1 = icmp ult i64 %bin.1, %i
  br i1 %_26.1, label %panic4, label %bb15

bb15:                                             ; preds = %bb14
  %_27.0 = sub i64 %_26.0, 1
  %_27.1 = icmp ult i64 %_26.0, 1
  br i1 %_27.1, label %panic5, label %bb16

panic4:                                           ; preds = %bb14
; call core::panicking::panic_const::panic_const_sub_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_sub_overflow17h134cc1a7f93654deE(ptr align 8 @alloc_42cc78af10eb048979e1f2c6dcef007c) #22
  unreachable

bb16:                                             ; preds = %bb15
  %_29 = urem i64 %_27.0, 4
  %_28 = icmp eq i64 %_29, 1
  br i1 %_28, label %bb18, label %bb19

panic5:                                           ; preds = %bb15
; call core::panicking::panic_const::panic_const_sub_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_sub_overflow17h134cc1a7f93654deE(ptr align 8 @alloc_42cc78af10eb048979e1f2c6dcef007c) #22
  unreachable

bb19:                                             ; preds = %bb16
  %_32 = urem i64 %_27.0, 4
  %_31 = icmp eq i64 %_32, 2
  br i1 %_31, label %bb21, label %bb22

bb18:                                             ; preds = %bb16
  %14 = load float, ptr %sum, align 4
  %15 = fadd float %14, 2.000000e+00
  store float %15, ptr %sum, align 4
  br label %bb8

bb22:                                             ; preds = %bb19
  %_35 = urem i64 %_27.0, 4
  %_34 = icmp eq i64 %_35, 3
  br i1 %_34, label %bb24, label %bb25

bb21:                                             ; preds = %bb19
  %16 = load float, ptr %sum, align 4
  %17 = fadd float %16, 4.000000e+00
  store float %17, ptr %sum, align 4
  br label %bb8

bb25:                                             ; preds = %bb22
  %_38 = urem i64 %_27.0, 4
  %_37 = icmp eq i64 %_38, 0
  br i1 %_37, label %bb27, label %bb8

bb24:                                             ; preds = %bb22
  %18 = load float, ptr %sum, align 4
  %19 = fadd float %18, 8.000000e+00
  store float %19, ptr %sum, align 4
  br label %bb8

bb27:                                             ; preds = %bb25
  %20 = load float, ptr %sum, align 4
  %21 = fadd float %20, 6.000000e+00
  store float %21, ptr %sum, align 4
  br label %bb8

bb10:                                             ; No predecessors!
  unreachable
}

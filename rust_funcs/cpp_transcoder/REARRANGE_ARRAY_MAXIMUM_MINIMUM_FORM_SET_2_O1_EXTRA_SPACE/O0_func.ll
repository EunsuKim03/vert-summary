define void @f_gold(ptr align 4 %arr.0, i64 %arr.1, i32 %n) unnamed_addr #3 {
start:
  %_56 = alloca [8 x i8], align 4
  %iter1 = alloca [8 x i8], align 4
  %_17 = alloca [8 x i8], align 4
  %iter = alloca [8 x i8], align 4
  %min_idx = alloca [4 x i8], align 4
  %max_idx = alloca [4 x i8], align 4
  %0 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %n, i32 1)
  %_4.0 = extractvalue { i32, i1 } %0, 0
  %_4.1 = extractvalue { i32, i1 } %0, 1
  br i1 %_4.1, label %panic, label %bb1

bb1:                                              ; preds = %start
  store i32 %_4.0, ptr %max_idx, align 4
  store i32 0, ptr %min_idx, align 4
  %_9 = sext i32 %n to i64
  %_10.0 = sub i64 %_9, 1
  %_10.1 = icmp ult i64 %_9, 1
  br i1 %_10.1, label %panic2, label %bb2

panic:                                            ; preds = %start
; call core::panicking::panic_const::panic_const_sub_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_sub_overflow17h134cc1a7f93654deE(ptr align 8 @alloc_2dfc79d88b87003d3983d93baad8daff) #22
  unreachable

bb2:                                              ; preds = %bb1
  %_13 = icmp ult i64 %_10.0, %arr.1
  br i1 %_13, label %bb3, label %panic3

panic2:                                           ; preds = %bb1
; call core::panicking::panic_const::panic_const_sub_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_sub_overflow17h134cc1a7f93654deE(ptr align 8 @alloc_d6136dca7d7978e99b0327d84001cb19) #22
  unreachable

bb3:                                              ; preds = %bb2
  %1 = getelementptr inbounds nuw float, ptr %arr.0, i64 %_10.0
  %_7 = load float, ptr %1, align 4
  %max_elem = fadd float %_7, 1.000000e+00
; call <I as core::iter::traits::collect::IntoIterator>::into_iter
  %2 = call { i32, i32 } @"_ZN63_$LT$I$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17h6801c2ba6b69f648E"(i32 0, i32 %n) #20
  %_14.0 = extractvalue { i32, i32 } %2, 0
  %_14.1 = extractvalue { i32, i32 } %2, 1
  store i32 %_14.0, ptr %iter, align 4
  %3 = getelementptr inbounds i8, ptr %iter, i64 4
  store i32 %_14.1, ptr %3, align 4
  br label %bb5

panic3:                                           ; preds = %bb2
; call core::panicking::panic_bounds_check
  call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 %_10.0, i64 %arr.1, ptr align 8 @alloc_c878219e4b64d59e8f074c32dbdd15ec) #22
  unreachable

bb5:                                              ; preds = %bb15, %bb19, %bb3
; call core::iter::range::<impl core::iter::traits::iterator::Iterator for core::ops::range::Range<A>>::next
  %4 = call { i32, i32 } @"_ZN4core4iter5range101_$LT$impl$u20$core..iter..traits..iterator..Iterator$u20$for$u20$core..ops..range..Range$LT$A$GT$$GT$4next17h966d2a39d971cd1cE"(ptr align 4 %iter) #20
  %5 = extractvalue { i32, i32 } %4, 0
  %6 = extractvalue { i32, i32 } %4, 1
  store i32 %5, ptr %_17, align 4
  %7 = getelementptr inbounds i8, ptr %_17, i64 4
  store i32 %6, ptr %7, align 4
  %8 = load i32, ptr %_17, align 4
  %9 = getelementptr inbounds i8, ptr %_17, i64 4
  %10 = load i32, ptr %9, align 4
  %_19 = zext i32 %8 to i64
  %11 = trunc nuw i64 %_19 to i1
  br i1 %11, label %bb8, label %bb9

bb8:                                              ; preds = %bb5
  %12 = getelementptr inbounds i8, ptr %_17, i64 4
  %i5 = load i32, ptr %12, align 4
  %_25 = icmp eq i32 %i5, -2147483648
  %_26 = and i1 false, %_25
  br i1 %_26, label %panic6, label %bb11

bb9:                                              ; preds = %bb5
; call <I as core::iter::traits::collect::IntoIterator>::into_iter
  %13 = call { i32, i32 } @"_ZN63_$LT$I$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17h6801c2ba6b69f648E"(i32 0, i32 %n) #20
  %_53.0 = extractvalue { i32, i32 } %13, 0
  %_53.1 = extractvalue { i32, i32 } %13, 1
  store i32 %_53.0, ptr %iter1, align 4
  %14 = getelementptr inbounds i8, ptr %iter1, i64 4
  store i32 %_53.1, ptr %14, align 4
  br label %bb21

bb21:                                             ; preds = %bb25, %bb9
; call core::iter::range::<impl core::iter::traits::iterator::Iterator for core::ops::range::Range<A>>::next
  %15 = call { i32, i32 } @"_ZN4core4iter5range101_$LT$impl$u20$core..iter..traits..iterator..Iterator$u20$for$u20$core..ops..range..Range$LT$A$GT$$GT$4next17h966d2a39d971cd1cE"(ptr align 4 %iter1) #20
  %16 = extractvalue { i32, i32 } %15, 0
  %17 = extractvalue { i32, i32 } %15, 1
  store i32 %16, ptr %_56, align 4
  %18 = getelementptr inbounds i8, ptr %_56, i64 4
  store i32 %17, ptr %18, align 4
  %19 = load i32, ptr %_56, align 4
  %20 = getelementptr inbounds i8, ptr %_56, i64 4
  %21 = load i32, ptr %20, align 4
  %_58 = zext i32 %19 to i64
  %22 = trunc nuw i64 %_58 to i1
  br i1 %22, label %bb23, label %bb24

bb23:                                             ; preds = %bb21
  %23 = getelementptr inbounds i8, ptr %_56, i64 4
  %i = load i32, ptr %23, align 4
  %_60 = sext i32 %i to i64
  %_63 = icmp ult i64 %_60, %arr.1
  br i1 %_63, label %bb25, label %panic4

bb24:                                             ; preds = %bb21
  ret void

bb25:                                             ; preds = %bb23
  %24 = getelementptr inbounds nuw float, ptr %arr.0, i64 %_60
  %25 = getelementptr inbounds nuw float, ptr %arr.0, i64 %_60
  %26 = load float, ptr %25, align 4
  %27 = fdiv float %26, %max_elem
  store float %27, ptr %24, align 4
  br label %bb21

panic4:                                           ; preds = %bb23
; call core::panicking::panic_bounds_check
  call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 %_60, i64 %arr.1, ptr align 8 @alloc_78971c8299811e8497a31d7c1e3814c9) #22
  unreachable

bb11:                                             ; preds = %bb8
  %_22 = srem i32 %i5, 2
  %_21 = icmp eq i32 %_22, 0
  br i1 %_21, label %bb12, label %bb16

panic6:                                           ; preds = %bb8
; call core::panicking::panic_const::panic_const_rem_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_rem_overflow17h4aab8182a78c82f8E(ptr align 8 @alloc_1e964b9eb88ffd4b101375d9c8a93975) #22
  unreachable

bb16:                                             ; preds = %bb11
  %_44 = load i32, ptr %min_idx, align 4
  %_43 = sext i32 %_44 to i64
  %_47 = icmp ult i64 %_43, %arr.1
  br i1 %_47, label %bb17, label %panic7

bb12:                                             ; preds = %bb11
  %_31 = load i32, ptr %max_idx, align 4
  %_30 = sext i32 %_31 to i64
  %_34 = icmp ult i64 %_30, %arr.1
  br i1 %_34, label %bb13, label %panic10

bb17:                                             ; preds = %bb16
  %28 = getelementptr inbounds nuw float, ptr %arr.0, i64 %_43
  %_42 = load float, ptr %28, align 4
  %_41 = frem float %_42, %max_elem
  %_40 = fmul float %_41, %max_elem
  %_48 = sext i32 %i5 to i64
  %_51 = icmp ult i64 %_48, %arr.1
  br i1 %_51, label %bb18, label %panic8

panic7:                                           ; preds = %bb16
; call core::panicking::panic_bounds_check
  call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 %_43, i64 %arr.1, ptr align 8 @alloc_cbdb2b5b85f68cfebc521c1440ce45c2) #22
  unreachable

bb18:                                             ; preds = %bb17
  %29 = getelementptr inbounds nuw float, ptr %arr.0, i64 %_48
  %30 = getelementptr inbounds nuw float, ptr %arr.0, i64 %_48
  %31 = load float, ptr %30, align 4
  %32 = fadd float %31, %_40
  store float %32, ptr %29, align 4
  %33 = load i32, ptr %min_idx, align 4
  %34 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %33, i32 1)
  %_52.0 = extractvalue { i32, i1 } %34, 0
  %_52.1 = extractvalue { i32, i1 } %34, 1
  br i1 %_52.1, label %panic9, label %bb19

panic8:                                           ; preds = %bb17
; call core::panicking::panic_bounds_check
  call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 %_48, i64 %arr.1, ptr align 8 @alloc_d43934b65f51a409ea39ebae56e95f93) #22
  unreachable

bb19:                                             ; preds = %bb18
  store i32 %_52.0, ptr %min_idx, align 4
  br label %bb5

panic9:                                           ; preds = %bb18
; call core::panicking::panic_const::panic_const_add_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_4a520e61ac2d25771dcaeef604823773) #22
  unreachable

bb13:                                             ; preds = %bb12
  %35 = getelementptr inbounds nuw float, ptr %arr.0, i64 %_30
  %_29 = load float, ptr %35, align 4
  %_28 = frem float %_29, %max_elem
  %_27 = fmul float %_28, %max_elem
  %_35 = sext i32 %i5 to i64
  %_38 = icmp ult i64 %_35, %arr.1
  br i1 %_38, label %bb14, label %panic11

panic10:                                          ; preds = %bb12
; call core::panicking::panic_bounds_check
  call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 %_30, i64 %arr.1, ptr align 8 @alloc_5fc96a4e8f14193ef456abe8cb94283a) #22
  unreachable

bb14:                                             ; preds = %bb13
  %36 = getelementptr inbounds nuw float, ptr %arr.0, i64 %_35
  %37 = getelementptr inbounds nuw float, ptr %arr.0, i64 %_35
  %38 = load float, ptr %37, align 4
  %39 = fadd float %38, %_27
  store float %39, ptr %36, align 4
  %40 = load i32, ptr %max_idx, align 4
  %41 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %40, i32 1)
  %_39.0 = extractvalue { i32, i1 } %41, 0
  %_39.1 = extractvalue { i32, i1 } %41, 1
  br i1 %_39.1, label %panic12, label %bb15

panic11:                                          ; preds = %bb13
; call core::panicking::panic_bounds_check
  call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 %_35, i64 %arr.1, ptr align 8 @alloc_61a0728b366fb1116b23e4b3f2fbdcd0) #22
  unreachable

bb15:                                             ; preds = %bb14
  store i32 %_39.0, ptr %max_idx, align 4
  br label %bb5

panic12:                                          ; preds = %bb14
; call core::panicking::panic_const::panic_const_sub_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_sub_overflow17h134cc1a7f93654deE(ptr align 8 @alloc_056d1f4ea5b6347ad76958e3391d26cb) #22
  unreachable

bb7:                                              ; No predecessors!
  unreachable
}

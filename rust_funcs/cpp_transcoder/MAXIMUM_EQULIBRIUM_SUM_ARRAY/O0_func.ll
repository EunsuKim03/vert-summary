define i32 @f_gold(i64 %0, i32 %n) unnamed_addr #3 {
start:
  %_32 = alloca [8 x i8], align 4
  %iter2 = alloca [8 x i8], align 4
  %suffix_sum = alloca [4 x i8], align 4
  %_17 = alloca [8 x i8], align 4
  %iter1 = alloca [8 x i8], align 4
  %prefix_sum = alloca [4 x i8], align 4
  %_7 = alloca [8 x i8], align 4
  %iter = alloca [8 x i8], align 4
  %res = alloca [4 x i8], align 4
  %1 = alloca [8 x i8], align 8
  %arr = alloca [8 x i8], align 4
  store i64 %0, ptr %1, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %arr, ptr align 8 %1, i64 8, i1 false)
  store float 0xFFF0000000000000, ptr %res, align 4
; call <I as core::iter::traits::collect::IntoIterator>::into_iter
  %2 = call { i32, i32 } @"_ZN63_$LT$I$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17h11effd717f53494eE"(i32 0, i32 %n) #20
  %_4.0 = extractvalue { i32, i32 } %2, 0
  %_4.1 = extractvalue { i32, i32 } %2, 1
  store i32 %_4.0, ptr %iter, align 4
  %3 = getelementptr inbounds i8, ptr %iter, i64 4
  store i32 %_4.1, ptr %3, align 4
  br label %bb2

bb2:                                              ; preds = %bb22, %bb20, %start
; call core::iter::range::<impl core::iter::traits::iterator::Iterator for core::ops::range::Range<A>>::next
  %4 = call { i32, i32 } @"_ZN4core4iter5range101_$LT$impl$u20$core..iter..traits..iterator..Iterator$u20$for$u20$core..ops..range..Range$LT$A$GT$$GT$4next17haa8e7a4c2a1562ceE"(ptr align 4 %iter) #20
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
  %_12 = sext i32 %i to i64
  %_13 = icmp ult i64 %_12, 2
  br i1 %_13, label %bb7, label %panic

bb6:                                              ; preds = %bb2
  %_45 = load float, ptr %res, align 4
  %_0 = call i32 @llvm.fptosi.sat.i32.f32(float %_45)
  ret i32 %_0

bb7:                                              ; preds = %bb5
  %13 = getelementptr inbounds nuw float, ptr %arr, i64 %_12
  %14 = load float, ptr %13, align 4
  store float %14, ptr %prefix_sum, align 4
; call <I as core::iter::traits::collect::IntoIterator>::into_iter
  %15 = call { i32, i32 } @"_ZN63_$LT$I$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17h11effd717f53494eE"(i32 0, i32 %i) #20
  %_14.0 = extractvalue { i32, i32 } %15, 0
  %_14.1 = extractvalue { i32, i32 } %15, 1
  store i32 %_14.0, ptr %iter1, align 4
  %16 = getelementptr inbounds i8, ptr %iter1, i64 4
  store i32 %_14.1, ptr %16, align 4
  br label %bb9

panic:                                            ; preds = %bb5
; call core::panicking::panic_bounds_check
  call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 %_12, i64 2, ptr align 8 @alloc_9719c09cff388b717c2fe55a18896cd3) #22
  unreachable

bb9:                                              ; preds = %bb13, %bb7
; call core::iter::range::<impl core::iter::traits::iterator::Iterator for core::ops::range::Range<A>>::next
  %17 = call { i32, i32 } @"_ZN4core4iter5range101_$LT$impl$u20$core..iter..traits..iterator..Iterator$u20$for$u20$core..ops..range..Range$LT$A$GT$$GT$4next17haa8e7a4c2a1562ceE"(ptr align 4 %iter1) #20
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
  br i1 %24, label %bb11, label %bb12

bb11:                                             ; preds = %bb9
  %25 = getelementptr inbounds i8, ptr %_17, i64 4
  %j6 = load i32, ptr %25, align 4
  %_22 = sext i32 %j6 to i64
  %_23 = icmp ult i64 %_22, 2
  br i1 %_23, label %bb13, label %panic7

bb12:                                             ; preds = %bb9
  %_25 = sext i32 %i to i64
  %_26 = icmp ult i64 %_25, 2
  br i1 %_26, label %bb14, label %panic3

bb14:                                             ; preds = %bb12
  %26 = getelementptr inbounds nuw float, ptr %arr, i64 %_25
  %27 = load float, ptr %26, align 4
  store float %27, ptr %suffix_sum, align 4
  %28 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %n, i32 1)
  %_30.0 = extractvalue { i32, i1 } %28, 0
  %_30.1 = extractvalue { i32, i1 } %28, 1
  br i1 %_30.1, label %panic4, label %bb15

panic3:                                           ; preds = %bb12
; call core::panicking::panic_bounds_check
  call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 %_25, i64 2, ptr align 8 @alloc_0a9dca9de256b519cda00453235f7459) #22
  unreachable

bb15:                                             ; preds = %bb14
; call <I as core::iter::traits::collect::IntoIterator>::into_iter
  %29 = call { i32, i32 } @"_ZN63_$LT$I$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17h11effd717f53494eE"(i32 %_30.0, i32 %i) #20
  %_27.0 = extractvalue { i32, i32 } %29, 0
  %_27.1 = extractvalue { i32, i32 } %29, 1
  store i32 %_27.0, ptr %iter2, align 4
  %30 = getelementptr inbounds i8, ptr %iter2, i64 4
  store i32 %_27.1, ptr %30, align 4
  br label %bb17

panic4:                                           ; preds = %bb14
; call core::panicking::panic_const::panic_const_sub_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_sub_overflow17h134cc1a7f93654deE(ptr align 8 @alloc_2efb7591b3af9cb61a33a5e959e11283) #22
  unreachable

bb17:                                             ; preds = %bb21, %bb15
; call core::iter::range::<impl core::iter::traits::iterator::Iterator for core::ops::range::Range<A>>::next
  %31 = call { i32, i32 } @"_ZN4core4iter5range101_$LT$impl$u20$core..iter..traits..iterator..Iterator$u20$for$u20$core..ops..range..Range$LT$A$GT$$GT$4next17haa8e7a4c2a1562ceE"(ptr align 4 %iter2) #20
  %32 = extractvalue { i32, i32 } %31, 0
  %33 = extractvalue { i32, i32 } %31, 1
  store i32 %32, ptr %_32, align 4
  %34 = getelementptr inbounds i8, ptr %_32, i64 4
  store i32 %33, ptr %34, align 4
  %35 = load i32, ptr %_32, align 4
  %36 = getelementptr inbounds i8, ptr %_32, i64 4
  %37 = load i32, ptr %36, align 4
  %_34 = zext i32 %35 to i64
  %38 = trunc nuw i64 %_34 to i1
  br i1 %38, label %bb19, label %bb20

bb19:                                             ; preds = %bb17
  %39 = getelementptr inbounds i8, ptr %_32, i64 4
  %j = load i32, ptr %39, align 4
  %_37 = sext i32 %j to i64
  %_38 = icmp ult i64 %_37, 2
  br i1 %_38, label %bb21, label %panic5

bb20:                                             ; preds = %bb17
  %_40 = load float, ptr %prefix_sum, align 4
  %_41 = load float, ptr %suffix_sum, align 4
  %_39 = fcmp oeq float %_40, %_41
  br i1 %_39, label %bb22, label %bb2

bb22:                                             ; preds = %bb20
  %_43 = load float, ptr %res, align 4
  %_44 = load float, ptr %prefix_sum, align 4
; call core::f32::<impl f32>::max
  %_42 = call float @"_ZN4core3f3221_$LT$impl$u20$f32$GT$3max17h5a6e9c05af067479E"(float %_43, float %_44) #20
  store float %_42, ptr %res, align 4
  br label %bb2

bb21:                                             ; preds = %bb19
  %40 = getelementptr inbounds nuw float, ptr %arr, i64 %_37
  %_36 = load float, ptr %40, align 4
  %41 = load float, ptr %suffix_sum, align 4
  %42 = fadd float %41, %_36
  store float %42, ptr %suffix_sum, align 4
  br label %bb17

panic5:                                           ; preds = %bb19
; call core::panicking::panic_bounds_check
  call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 %_37, i64 2, ptr align 8 @alloc_4a76accb884de27f1eaafaa0905610fa) #22
  unreachable

bb13:                                             ; preds = %bb11
  %43 = getelementptr inbounds nuw float, ptr %arr, i64 %_22
  %_21 = load float, ptr %43, align 4
  %44 = load float, ptr %prefix_sum, align 4
  %45 = fadd float %44, %_21
  store float %45, ptr %prefix_sum, align 4
  br label %bb9

panic7:                                           ; preds = %bb11
; call core::panicking::panic_bounds_check
  call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 %_22, i64 2, ptr align 8 @alloc_d42d2c97740c310adb4d6100177c1a47) #22
  unreachable

bb4:                                              ; No predecessors!
  unreachable
}

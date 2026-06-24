define i32 @f_gold(i64 %0, i32 %n) unnamed_addr #3 {
start:
  %_20 = alloca [16 x i8], align 8
  %iter1 = alloca [16 x i8], align 8
  %_9 = alloca [16 x i8], align 8
  %iter = alloca [16 x i8], align 8
  %leftsum = alloca [4 x i8], align 4
  %sum = alloca [4 x i8], align 4
  %_0 = alloca [4 x i8], align 4
  %1 = alloca [8 x i8], align 8
  %arr = alloca [8 x i8], align 4
  store i64 %0, ptr %1, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %arr, ptr align 8 %1, i64 8, i1 false)
  store float 0.000000e+00, ptr %sum, align 4
  store float 0.000000e+00, ptr %leftsum, align 4
  %_7 = sext i32 %n to i64
; call <I as core::iter::traits::collect::IntoIterator>::into_iter
  %2 = call { i64, i64 } @"_ZN63_$LT$I$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17h78af72837a6f8fbaE"(i64 0, i64 %_7) #20
  %_5.0 = extractvalue { i64, i64 } %2, 0
  %_5.1 = extractvalue { i64, i64 } %2, 1
  store i64 %_5.0, ptr %iter, align 8
  %3 = getelementptr inbounds i8, ptr %iter, i64 8
  store i64 %_5.1, ptr %3, align 8
  br label %bb2

bb2:                                              ; preds = %bb7, %start
; call core::iter::range::<impl core::iter::traits::iterator::Iterator for core::ops::range::Range<A>>::next
  %4 = call { i64, i64 } @"_ZN4core4iter5range101_$LT$impl$u20$core..iter..traits..iterator..Iterator$u20$for$u20$core..ops..range..Range$LT$A$GT$$GT$4next17h1a208cfd5591f7c7E"(ptr align 8 %iter) #20
  %5 = extractvalue { i64, i64 } %4, 0
  %6 = extractvalue { i64, i64 } %4, 1
  store i64 %5, ptr %_9, align 8
  %7 = getelementptr inbounds i8, ptr %_9, i64 8
  store i64 %6, ptr %7, align 8
  %_11 = load i64, ptr %_9, align 8
  %8 = getelementptr inbounds i8, ptr %_9, i64 8
  %9 = load i64, ptr %8, align 8
  %10 = trunc nuw i64 %_11 to i1
  br i1 %10, label %bb5, label %bb6

bb5:                                              ; preds = %bb2
  %11 = getelementptr inbounds i8, ptr %_9, i64 8
  %i3 = load i64, ptr %11, align 8
  %_15 = icmp ult i64 %i3, 2
  br i1 %_15, label %bb7, label %panic4

bb6:                                              ; preds = %bb2
  %_18 = sext i32 %n to i64
; call <I as core::iter::traits::collect::IntoIterator>::into_iter
  %12 = call { i64, i64 } @"_ZN63_$LT$I$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17h78af72837a6f8fbaE"(i64 0, i64 %_18) #20
  %_16.0 = extractvalue { i64, i64 } %12, 0
  %_16.1 = extractvalue { i64, i64 } %12, 1
  store i64 %_16.0, ptr %iter1, align 8
  %13 = getelementptr inbounds i8, ptr %iter1, i64 8
  store i64 %_16.1, ptr %13, align 8
  br label %bb9

bb9:                                              ; preds = %bb16, %bb6
; call core::iter::range::<impl core::iter::traits::iterator::Iterator for core::ops::range::Range<A>>::next
  %14 = call { i64, i64 } @"_ZN4core4iter5range101_$LT$impl$u20$core..iter..traits..iterator..Iterator$u20$for$u20$core..ops..range..Range$LT$A$GT$$GT$4next17h1a208cfd5591f7c7E"(ptr align 8 %iter1) #20
  %15 = extractvalue { i64, i64 } %14, 0
  %16 = extractvalue { i64, i64 } %14, 1
  store i64 %15, ptr %_20, align 8
  %17 = getelementptr inbounds i8, ptr %_20, i64 8
  store i64 %16, ptr %17, align 8
  %_22 = load i64, ptr %_20, align 8
  %18 = getelementptr inbounds i8, ptr %_20, i64 8
  %19 = load i64, ptr %18, align 8
  %20 = trunc nuw i64 %_22 to i1
  br i1 %20, label %bb11, label %bb12

bb11:                                             ; preds = %bb9
  %21 = getelementptr inbounds i8, ptr %_20, i64 8
  %i = load i64, ptr %21, align 8
  %_26 = icmp ult i64 %i, 2
  br i1 %_26, label %bb13, label %panic

bb12:                                             ; preds = %bb9
  store i32 -1, ptr %_0, align 4
  br label %bb17

bb17:                                             ; preds = %bb14, %bb12
  %22 = load i32, ptr %_0, align 4
  ret i32 %22

bb13:                                             ; preds = %bb11
  %23 = getelementptr inbounds nuw i32, ptr %arr, i64 %i
  %_25 = load i32, ptr %23, align 4
  %_24 = sitofp i32 %_25 to float
  %24 = load float, ptr %sum, align 4
  %25 = fsub float %24, %_24
  store float %25, ptr %sum, align 4
  %_28 = load float, ptr %leftsum, align 4
  %_29 = load float, ptr %sum, align 4
  %_27 = fcmp oeq float %_28, %_29
  br i1 %_27, label %bb14, label %bb15

panic:                                            ; preds = %bb11
; call core::panicking::panic_bounds_check
  call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 %i, i64 2, ptr align 8 @alloc_a3081579919d76f560070a59221e1394) #22
  unreachable

bb15:                                             ; preds = %bb13
  %_32 = icmp ult i64 %i, 2
  br i1 %_32, label %bb16, label %panic2

bb14:                                             ; preds = %bb13
  %26 = trunc i64 %i to i32
  store i32 %26, ptr %_0, align 4
  br label %bb17

bb16:                                             ; preds = %bb15
  %27 = getelementptr inbounds nuw i32, ptr %arr, i64 %i
  %_31 = load i32, ptr %27, align 4
  %_30 = sitofp i32 %_31 to float
  %28 = load float, ptr %leftsum, align 4
  %29 = fadd float %28, %_30
  store float %29, ptr %leftsum, align 4
  br label %bb9

panic2:                                           ; preds = %bb15
; call core::panicking::panic_bounds_check
  call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 %i, i64 2, ptr align 8 @alloc_736ca9ade0b726b02f4066169177f667) #22
  unreachable

bb7:                                              ; preds = %bb5
  %30 = getelementptr inbounds nuw i32, ptr %arr, i64 %i3
  %_14 = load i32, ptr %30, align 4
  %_13 = sitofp i32 %_14 to float
  %31 = load float, ptr %sum, align 4
  %32 = fadd float %31, %_13
  store float %32, ptr %sum, align 4
  br label %bb2

panic4:                                           ; preds = %bb5
; call core::panicking::panic_bounds_check
  call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 %i3, i64 2, ptr align 8 @alloc_1e3b85dd6844d56d7145fddfb328822b) #22
  unreachable

bb4:                                              ; No predecessors!
  unreachable
}

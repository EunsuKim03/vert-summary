define i32 @f_gold(ptr align 4 %arr.0, i64 %arr.1, i32 %n) unnamed_addr #3 {
start:
  %_19 = alloca [8 x i8], align 4
  %iter1 = alloca [8 x i8], align 4
  %_8 = alloca [8 x i8], align 4
  %iter = alloca [8 x i8], align 4
  %leftsum = alloca [4 x i8], align 4
  %sum = alloca [4 x i8], align 4
  %_0 = alloca [4 x i8], align 4
  store float 0.000000e+00, ptr %sum, align 4
  store float 0.000000e+00, ptr %leftsum, align 4
; call <I as core::iter::traits::collect::IntoIterator>::into_iter
  %0 = call { i32, i32 } @"_ZN63_$LT$I$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17hdfaebaa635e6d7fdE"(i32 0, i32 %n) #20
  %_5.0 = extractvalue { i32, i32 } %0, 0
  %_5.1 = extractvalue { i32, i32 } %0, 1
  store i32 %_5.0, ptr %iter, align 4
  %1 = getelementptr inbounds i8, ptr %iter, i64 4
  store i32 %_5.1, ptr %1, align 4
  br label %bb2

bb2:                                              ; preds = %bb7, %start
; call core::iter::range::<impl core::iter::traits::iterator::Iterator for core::ops::range::Range<A>>::next
  %2 = call { i32, i32 } @"_ZN4core4iter5range101_$LT$impl$u20$core..iter..traits..iterator..Iterator$u20$for$u20$core..ops..range..Range$LT$A$GT$$GT$4next17h998f4ece7e18d147E"(ptr align 4 %iter) #20
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
  %i3 = load i32, ptr %10, align 4
  %_13 = sext i32 %i3 to i64
  %_15 = icmp ult i64 %_13, %arr.1
  br i1 %_15, label %bb7, label %panic4

bb6:                                              ; preds = %bb2
; call <I as core::iter::traits::collect::IntoIterator>::into_iter
  %11 = call { i32, i32 } @"_ZN63_$LT$I$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17hdfaebaa635e6d7fdE"(i32 0, i32 %n) #20
  %_16.0 = extractvalue { i32, i32 } %11, 0
  %_16.1 = extractvalue { i32, i32 } %11, 1
  store i32 %_16.0, ptr %iter1, align 4
  %12 = getelementptr inbounds i8, ptr %iter1, i64 4
  store i32 %_16.1, ptr %12, align 4
  br label %bb9

bb9:                                              ; preds = %bb16, %bb6
; call core::iter::range::<impl core::iter::traits::iterator::Iterator for core::ops::range::Range<A>>::next
  %13 = call { i32, i32 } @"_ZN4core4iter5range101_$LT$impl$u20$core..iter..traits..iterator..Iterator$u20$for$u20$core..ops..range..Range$LT$A$GT$$GT$4next17h998f4ece7e18d147E"(ptr align 4 %iter1) #20
  %14 = extractvalue { i32, i32 } %13, 0
  %15 = extractvalue { i32, i32 } %13, 1
  store i32 %14, ptr %_19, align 4
  %16 = getelementptr inbounds i8, ptr %_19, i64 4
  store i32 %15, ptr %16, align 4
  %17 = load i32, ptr %_19, align 4
  %18 = getelementptr inbounds i8, ptr %_19, i64 4
  %19 = load i32, ptr %18, align 4
  %_21 = zext i32 %17 to i64
  %20 = trunc nuw i64 %_21 to i1
  br i1 %20, label %bb11, label %bb12

bb11:                                             ; preds = %bb9
  %21 = getelementptr inbounds i8, ptr %_19, i64 4
  %i = load i32, ptr %21, align 4
  %_24 = sext i32 %i to i64
  %_26 = icmp ult i64 %_24, %arr.1
  br i1 %_26, label %bb13, label %panic

bb12:                                             ; preds = %bb9
  store i32 -1, ptr %_0, align 4
  br label %bb17

bb17:                                             ; preds = %bb14, %bb12
  %22 = load i32, ptr %_0, align 4
  ret i32 %22

bb13:                                             ; preds = %bb11
  %23 = getelementptr inbounds nuw float, ptr %arr.0, i64 %_24
  %_23 = load float, ptr %23, align 4
  %24 = load float, ptr %sum, align 4
  %25 = fsub float %24, %_23
  store float %25, ptr %sum, align 4
  %_28 = load float, ptr %leftsum, align 4
  %_29 = load float, ptr %sum, align 4
  %_27 = fcmp oeq float %_28, %_29
  br i1 %_27, label %bb14, label %bb15

panic:                                            ; preds = %bb11
; call core::panicking::panic_bounds_check
  call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 %_24, i64 %arr.1, ptr align 8 @alloc_3c734b5d95c93ae0defc1b06948b1e70) #22
  unreachable

bb15:                                             ; preds = %bb13
  %_31 = sext i32 %i to i64
  %_33 = icmp ult i64 %_31, %arr.1
  br i1 %_33, label %bb16, label %panic2

bb14:                                             ; preds = %bb13
  store i32 %i, ptr %_0, align 4
  br label %bb17

bb16:                                             ; preds = %bb15
  %26 = getelementptr inbounds nuw float, ptr %arr.0, i64 %_31
  %_30 = load float, ptr %26, align 4
  %27 = load float, ptr %leftsum, align 4
  %28 = fadd float %27, %_30
  store float %28, ptr %leftsum, align 4
  br label %bb9

panic2:                                           ; preds = %bb15
; call core::panicking::panic_bounds_check
  call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 %_31, i64 %arr.1, ptr align 8 @alloc_680cdd6faf29132e96f7f77b48964b74) #22
  unreachable

bb7:                                              ; preds = %bb5
  %29 = getelementptr inbounds nuw float, ptr %arr.0, i64 %_13
  %_12 = load float, ptr %29, align 4
  %30 = load float, ptr %sum, align 4
  %31 = fadd float %30, %_12
  store float %31, ptr %sum, align 4
  br label %bb2

panic4:                                           ; preds = %bb5
; call core::panicking::panic_bounds_check
  call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 %_13, i64 %arr.1, ptr align 8 @alloc_fd4d4e0bc8dd673b80483533c39502d8) #22
  unreachable

bb4:                                              ; No predecessors!
  unreachable
}

define i32 @f_gold(i64 %0, i32 %n) unnamed_addr #3 {
start:
  %_29 = alloca [8 x i8], align 4
  %iter2 = alloca [8 x i8], align 4
  %_17 = alloca [8 x i8], align 4
  %iter1 = alloca [8 x i8], align 4
  %_10 = alloca [8 x i8], align 4
  %iter = alloca [8 x i8], align 4
  %rightsum = alloca [4 x i8], align 4
  %leftsum = alloca [4 x i8], align 4
  %_0 = alloca [4 x i8], align 4
  %1 = alloca [8 x i8], align 8
  %arr = alloca [8 x i8], align 4
  store i64 %0, ptr %1, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %arr, ptr align 8 %1, i64 8, i1 false)
; call <I as core::iter::traits::collect::IntoIterator>::into_iter
  %2 = call { i32, i32 } @"_ZN63_$LT$I$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17hb1375d6b1193054eE"(i32 0, i32 %n) #20
  %_7.0 = extractvalue { i32, i32 } %2, 0
  %_7.1 = extractvalue { i32, i32 } %2, 1
  store i32 %_7.0, ptr %iter, align 4
  %3 = getelementptr inbounds i8, ptr %iter, i64 4
  store i32 %_7.1, ptr %3, align 4
  br label %bb2

bb2:                                              ; preds = %bb18, %start
; call core::iter::range::<impl core::iter::traits::iterator::Iterator for core::ops::range::Range<A>>::next
  %4 = call { i32, i32 } @"_ZN4core4iter5range101_$LT$impl$u20$core..iter..traits..iterator..Iterator$u20$for$u20$core..ops..range..Range$LT$A$GT$$GT$4next17h54175b8830bdd828E"(ptr align 4 %iter) #20
  %5 = extractvalue { i32, i32 } %4, 0
  %6 = extractvalue { i32, i32 } %4, 1
  store i32 %5, ptr %_10, align 4
  %7 = getelementptr inbounds i8, ptr %_10, i64 4
  store i32 %6, ptr %7, align 4
  %8 = load i32, ptr %_10, align 4
  %9 = getelementptr inbounds i8, ptr %_10, i64 4
  %10 = load i32, ptr %9, align 4
  %_12 = zext i32 %8 to i64
  %11 = trunc nuw i64 %_12 to i1
  br i1 %11, label %bb5, label %bb6

bb5:                                              ; preds = %bb2
  %12 = getelementptr inbounds i8, ptr %_10, i64 4
  %i = load i32, ptr %12, align 4
  store float 0.000000e+00, ptr %leftsum, align 4
; call <I as core::iter::traits::collect::IntoIterator>::into_iter
  %13 = call { i32, i32 } @"_ZN63_$LT$I$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17hb1375d6b1193054eE"(i32 0, i32 %i) #20
  %_14.0 = extractvalue { i32, i32 } %13, 0
  %_14.1 = extractvalue { i32, i32 } %13, 1
  store i32 %_14.0, ptr %iter1, align 4
  %14 = getelementptr inbounds i8, ptr %iter1, i64 4
  store i32 %_14.1, ptr %14, align 4
  br label %bb8

bb6:                                              ; preds = %bb2
  store i32 -1, ptr %_0, align 4
  br label %bb21

bb21:                                             ; preds = %bb20, %bb6
  %15 = load i32, ptr %_0, align 4
  ret i32 %15

bb8:                                              ; preds = %bb12, %bb5
; call core::iter::range::<impl core::iter::traits::iterator::Iterator for core::ops::range::Range<A>>::next
  %16 = call { i32, i32 } @"_ZN4core4iter5range101_$LT$impl$u20$core..iter..traits..iterator..Iterator$u20$for$u20$core..ops..range..Range$LT$A$GT$$GT$4next17h54175b8830bdd828E"(ptr align 4 %iter1) #20
  %17 = extractvalue { i32, i32 } %16, 0
  %18 = extractvalue { i32, i32 } %16, 1
  store i32 %17, ptr %_17, align 4
  %19 = getelementptr inbounds i8, ptr %_17, i64 4
  store i32 %18, ptr %19, align 4
  %20 = load i32, ptr %_17, align 4
  %21 = getelementptr inbounds i8, ptr %_17, i64 4
  %22 = load i32, ptr %21, align 4
  %_19 = zext i32 %20 to i64
  %23 = trunc nuw i64 %_19 to i1
  br i1 %23, label %bb10, label %bb11

bb10:                                             ; preds = %bb8
  %24 = getelementptr inbounds i8, ptr %_17, i64 4
  %j4 = load i32, ptr %24, align 4
  %_22 = sext i32 %j4 to i64
  %_23 = icmp ult i64 %_22, 2
  br i1 %_23, label %bb12, label %panic5

bb11:                                             ; preds = %bb8
  store float 0.000000e+00, ptr %rightsum, align 4
  %25 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %i, i32 1)
  %_27.0 = extractvalue { i32, i1 } %25, 0
  %_27.1 = extractvalue { i32, i1 } %25, 1
  br i1 %_27.1, label %panic, label %bb13

bb13:                                             ; preds = %bb11
; call <I as core::iter::traits::collect::IntoIterator>::into_iter
  %26 = call { i32, i32 } @"_ZN63_$LT$I$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17hb1375d6b1193054eE"(i32 %_27.0, i32 %n) #20
  %_24.0 = extractvalue { i32, i32 } %26, 0
  %_24.1 = extractvalue { i32, i32 } %26, 1
  store i32 %_24.0, ptr %iter2, align 4
  %27 = getelementptr inbounds i8, ptr %iter2, i64 4
  store i32 %_24.1, ptr %27, align 4
  br label %bb15

panic:                                            ; preds = %bb11
; call core::panicking::panic_const::panic_const_add_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_f69a574b005cdaf88f14c8120f97b728) #22
  unreachable

bb15:                                             ; preds = %bb19, %bb13
; call core::iter::range::<impl core::iter::traits::iterator::Iterator for core::ops::range::Range<A>>::next
  %28 = call { i32, i32 } @"_ZN4core4iter5range101_$LT$impl$u20$core..iter..traits..iterator..Iterator$u20$for$u20$core..ops..range..Range$LT$A$GT$$GT$4next17h54175b8830bdd828E"(ptr align 4 %iter2) #20
  %29 = extractvalue { i32, i32 } %28, 0
  %30 = extractvalue { i32, i32 } %28, 1
  store i32 %29, ptr %_29, align 4
  %31 = getelementptr inbounds i8, ptr %_29, i64 4
  store i32 %30, ptr %31, align 4
  %32 = load i32, ptr %_29, align 4
  %33 = getelementptr inbounds i8, ptr %_29, i64 4
  %34 = load i32, ptr %33, align 4
  %_31 = zext i32 %32 to i64
  %35 = trunc nuw i64 %_31 to i1
  br i1 %35, label %bb17, label %bb18

bb17:                                             ; preds = %bb15
  %36 = getelementptr inbounds i8, ptr %_29, i64 4
  %j = load i32, ptr %36, align 4
  %_34 = sext i32 %j to i64
  %_35 = icmp ult i64 %_34, 2
  br i1 %_35, label %bb19, label %panic3

bb18:                                             ; preds = %bb15
  %_37 = load float, ptr %leftsum, align 4
  %_38 = load float, ptr %rightsum, align 4
  %_36 = fcmp oeq float %_37, %_38
  br i1 %_36, label %bb20, label %bb2

bb20:                                             ; preds = %bb18
  store i32 %i, ptr %_0, align 4
  br label %bb21

bb19:                                             ; preds = %bb17
  %37 = getelementptr inbounds nuw float, ptr %arr, i64 %_34
  %_33 = load float, ptr %37, align 4
  %38 = load float, ptr %rightsum, align 4
  %39 = fadd float %38, %_33
  store float %39, ptr %rightsum, align 4
  br label %bb15

panic3:                                           ; preds = %bb17
; call core::panicking::panic_bounds_check
  call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 %_34, i64 2, ptr align 8 @alloc_7b055641b924341a839b39e21cb87bbd) #22
  unreachable

bb12:                                             ; preds = %bb10
  %40 = getelementptr inbounds nuw float, ptr %arr, i64 %_22
  %_21 = load float, ptr %40, align 4
  %41 = load float, ptr %leftsum, align 4
  %42 = fadd float %41, %_21
  store float %42, ptr %leftsum, align 4
  br label %bb8

panic5:                                           ; preds = %bb10
; call core::panicking::panic_bounds_check
  call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 %_22, i64 2, ptr align 8 @alloc_1d5b31dabd66f215c5b8cb93063fd335) #22
  unreachable

bb4:                                              ; No predecessors!
  unreachable
}

define i32 @f_gold(i64 %0, i32 %n, i32 %c) unnamed_addr #3 {
start:
  %_9 = alloca [8 x i8], align 4
  %iter = alloca [8 x i8], align 4
  %bin_rem = alloca [4 x i8], align 4
  %res = alloca [4 x i8], align 4
  %1 = alloca [8 x i8], align 8
  %weight = alloca [8 x i8], align 4
  store i64 %0, ptr %1, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %weight, ptr align 8 %1, i64 8, i1 false)
  store i32 0, ptr %res, align 4
  %2 = sitofp i32 %c to float
  store float %2, ptr %bin_rem, align 4
; call <I as core::iter::traits::collect::IntoIterator>::into_iter
  %3 = call { i32, i32 } @"_ZN63_$LT$I$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17hc89f4fb183aeb879E"(i32 0, i32 %n) #20
  %_6.0 = extractvalue { i32, i32 } %3, 0
  %_6.1 = extractvalue { i32, i32 } %3, 1
  store i32 %_6.0, ptr %iter, align 4
  %4 = getelementptr inbounds i8, ptr %iter, i64 4
  store i32 %_6.1, ptr %4, align 4
  br label %bb2

bb2:                                              ; preds = %bb10, %bb12, %start
; call core::iter::range::<impl core::iter::traits::iterator::Iterator for core::ops::range::Range<A>>::next
  %5 = call { i32, i32 } @"_ZN4core4iter5range101_$LT$impl$u20$core..iter..traits..iterator..Iterator$u20$for$u20$core..ops..range..Range$LT$A$GT$$GT$4next17h2260bc38075f2272E"(ptr align 4 %iter) #20
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
  br i1 %12, label %bb5, label %bb6

bb5:                                              ; preds = %bb2
  %13 = getelementptr inbounds i8, ptr %_9, i64 4
  %i = load i32, ptr %13, align 4
  %_15 = sext i32 %i to i64
  %_16 = icmp ult i64 %_15, 2
  br i1 %_16, label %bb7, label %panic

bb6:                                              ; preds = %bb2
  %_0 = load i32, ptr %res, align 4
  ret i32 %_0

bb7:                                              ; preds = %bb5
  %14 = getelementptr inbounds nuw float, ptr %weight, i64 %_15
  %_14 = load float, ptr %14, align 4
  %_17 = load float, ptr %bin_rem, align 4
  %_13 = fcmp ogt float %_14, %_17
  br i1 %_13, label %bb8, label %bb11

panic:                                            ; preds = %bb5
; call core::panicking::panic_bounds_check
  call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 %_15, i64 2, ptr align 8 @alloc_97224dbd534be392badc5cb6e49a382e) #22
  unreachable

bb11:                                             ; preds = %bb7
  %_24 = sext i32 %i to i64
  %_25 = icmp ult i64 %_24, 2
  br i1 %_25, label %bb12, label %panic1

bb8:                                              ; preds = %bb7
  %15 = load i32, ptr %res, align 4
  %16 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %15, i32 1)
  %_18.0 = extractvalue { i32, i1 } %16, 0
  %_18.1 = extractvalue { i32, i1 } %16, 1
  br i1 %_18.1, label %panic2, label %bb9

bb12:                                             ; preds = %bb11
  %17 = getelementptr inbounds nuw float, ptr %weight, i64 %_24
  %_23 = load float, ptr %17, align 4
  %18 = load float, ptr %bin_rem, align 4
  %19 = fsub float %18, %_23
  store float %19, ptr %bin_rem, align 4
  br label %bb2

panic1:                                           ; preds = %bb11
; call core::panicking::panic_bounds_check
  call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 %_24, i64 2, ptr align 8 @alloc_66bed782a7045d42b2266d53cb7d0155) #22
  unreachable

bb9:                                              ; preds = %bb8
  store i32 %_18.0, ptr %res, align 4
  %_19 = sitofp i32 %c to float
  %_21 = sext i32 %i to i64
  %_22 = icmp ult i64 %_21, 2
  br i1 %_22, label %bb10, label %panic3

panic2:                                           ; preds = %bb8
; call core::panicking::panic_const::panic_const_add_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_d98363250d8ae0dc52eacd197291db18) #22
  unreachable

bb10:                                             ; preds = %bb9
  %20 = getelementptr inbounds nuw float, ptr %weight, i64 %_21
  %_20 = load float, ptr %20, align 4
  %21 = fsub float %_19, %_20
  store float %21, ptr %bin_rem, align 4
  br label %bb2

panic3:                                           ; preds = %bb9
; call core::panicking::panic_bounds_check
  call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 %_21, i64 2, ptr align 8 @alloc_550316c548bd0787b646ae77bde81278) #22
  unreachable

bb4:                                              ; No predecessors!
  unreachable
}

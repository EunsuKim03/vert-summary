define i32 @f_gold(ptr align 4 %arr.0, i64 %arr.1, i32 %N, i32 %k) unnamed_addr #3 {
start:
  %_26 = alloca [8 x i8], align 4
  %iter1 = alloca [8 x i8], align 4
  %_13 = alloca [8 x i8], align 4
  %iter = alloca [8 x i8], align 4
  %max_difference = alloca [4 x i8], align 4
  %S1 = alloca [4 x i8], align 4
  %S = alloca [4 x i8], align 4
  %0 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %N, i32 %k)
  %_6.0 = extractvalue { i32, i1 } %0, 0
  %_6.1 = extractvalue { i32, i1 } %0, 1
  br i1 %_6.1, label %panic, label %bb1

bb1:                                              ; preds = %start
; call core::cmp::max
  %M = call i32 @_ZN4core3cmp3max17he0693232744313c6E(i32 %k, i32 %_6.0) #20
  store float 0.000000e+00, ptr %S, align 4
  store float 0.000000e+00, ptr %S1, align 4
  store i32 0, ptr %max_difference, align 4
; call <I as core::iter::traits::collect::IntoIterator>::into_iter
  %1 = call { i32, i32 } @"_ZN63_$LT$I$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17h9df441f8277e0dedE"(i32 0, i32 %N) #20
  %_10.0 = extractvalue { i32, i32 } %1, 0
  %_10.1 = extractvalue { i32, i32 } %1, 1
  store i32 %_10.0, ptr %iter, align 4
  %2 = getelementptr inbounds i8, ptr %iter, i64 4
  store i32 %_10.1, ptr %2, align 4
  br label %bb4

panic:                                            ; preds = %start
; call core::panicking::panic_const::panic_const_sub_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_sub_overflow17h134cc1a7f93654deE(ptr align 8 @alloc_3a2d69b2fdafdfa892a76c1e889c0518) #22
  unreachable

bb4:                                              ; preds = %bb9, %bb1
; call core::iter::range::<impl core::iter::traits::iterator::Iterator for core::ops::range::Range<A>>::next
  %3 = call { i32, i32 } @"_ZN4core4iter5range101_$LT$impl$u20$core..iter..traits..iterator..Iterator$u20$for$u20$core..ops..range..Range$LT$A$GT$$GT$4next17h56fa04d2957437d6E"(ptr align 4 %iter) #20
  %4 = extractvalue { i32, i32 } %3, 0
  %5 = extractvalue { i32, i32 } %3, 1
  store i32 %4, ptr %_13, align 4
  %6 = getelementptr inbounds i8, ptr %_13, i64 4
  store i32 %5, ptr %6, align 4
  %7 = load i32, ptr %_13, align 4
  %8 = getelementptr inbounds i8, ptr %_13, i64 4
  %9 = load i32, ptr %8, align 4
  %_15 = zext i32 %7 to i64
  %10 = trunc nuw i64 %_15 to i1
  br i1 %10, label %bb7, label %bb8

bb7:                                              ; preds = %bb4
  %11 = getelementptr inbounds i8, ptr %_13, i64 4
  %i3 = load i32, ptr %11, align 4
  %_18 = sext i32 %i3 to i64
  %_21 = icmp ult i64 %_18, %arr.1
  br i1 %_21, label %bb9, label %panic4

bb8:                                              ; preds = %bb4
; call alloc::slice::<impl [T]>::sort_by
  call void @"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by17he39955fc0a7662c8E"(ptr align 4 %arr.0, i64 %arr.1) #20
; call <I as core::iter::traits::collect::IntoIterator>::into_iter
  %12 = call { i32, i32 } @"_ZN63_$LT$I$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17h9df441f8277e0dedE"(i32 0, i32 %M) #20
  %_23.0 = extractvalue { i32, i32 } %12, 0
  %_23.1 = extractvalue { i32, i32 } %12, 1
  store i32 %_23.0, ptr %iter1, align 4
  %13 = getelementptr inbounds i8, ptr %iter1, i64 4
  store i32 %_23.1, ptr %13, align 4
  br label %bb12

bb12:                                             ; preds = %bb16, %bb8
; call core::iter::range::<impl core::iter::traits::iterator::Iterator for core::ops::range::Range<A>>::next
  %14 = call { i32, i32 } @"_ZN4core4iter5range101_$LT$impl$u20$core..iter..traits..iterator..Iterator$u20$for$u20$core..ops..range..Range$LT$A$GT$$GT$4next17h56fa04d2957437d6E"(ptr align 4 %iter1) #20
  %15 = extractvalue { i32, i32 } %14, 0
  %16 = extractvalue { i32, i32 } %14, 1
  store i32 %15, ptr %_26, align 4
  %17 = getelementptr inbounds i8, ptr %_26, i64 4
  store i32 %16, ptr %17, align 4
  %18 = load i32, ptr %_26, align 4
  %19 = getelementptr inbounds i8, ptr %_26, i64 4
  %20 = load i32, ptr %19, align 4
  %_28 = zext i32 %18 to i64
  %21 = trunc nuw i64 %_28 to i1
  br i1 %21, label %bb14, label %bb15

bb14:                                             ; preds = %bb12
  %22 = getelementptr inbounds i8, ptr %_26, i64 4
  %i = load i32, ptr %22, align 4
  %_31 = sext i32 %i to i64
  %_34 = icmp ult i64 %_31, %arr.1
  br i1 %_34, label %bb16, label %panic2

bb15:                                             ; preds = %bb12
  %_36 = load float, ptr %S1, align 4
  %_38 = load float, ptr %S, align 4
  %_39 = load float, ptr %S1, align 4
  %_37 = fsub float %_38, %_39
  %_35 = fsub float %_36, %_37
  %23 = call i32 @llvm.fptosi.sat.i32.f32(float %_35)
  store i32 %23, ptr %max_difference, align 4
  %_0 = load i32, ptr %max_difference, align 4
  ret i32 %_0

bb16:                                             ; preds = %bb14
  %24 = getelementptr inbounds nuw float, ptr %arr.0, i64 %_31
  %_30 = load float, ptr %24, align 4
  %25 = load float, ptr %S1, align 4
  %26 = fadd float %25, %_30
  store float %26, ptr %S1, align 4
  br label %bb12

panic2:                                           ; preds = %bb14
; call core::panicking::panic_bounds_check
  call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 %_31, i64 %arr.1, ptr align 8 @alloc_117f6413013c78a66771675fa13b2731) #22
  unreachable

bb9:                                              ; preds = %bb7
  %27 = getelementptr inbounds nuw float, ptr %arr.0, i64 %_18
  %_17 = load float, ptr %27, align 4
  %28 = load float, ptr %S, align 4
  %29 = fadd float %28, %_17
  store float %29, ptr %S, align 4
  br label %bb4

panic4:                                           ; preds = %bb7
; call core::panicking::panic_bounds_check
  call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 %_18, i64 %arr.1, ptr align 8 @alloc_2cb5dadc0b04dc9bcc03e7e4580cdc48) #22
  unreachable

bb6:                                              ; No predecessors!
  unreachable
}

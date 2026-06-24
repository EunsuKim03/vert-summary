define i32 @f_gold(i64 %0, i32 %n) unnamed_addr #3 {
start:
  %_35 = alloca [16 x i8], align 8
  %iter2 = alloca [16 x i8], align 8
  %res = alloca [4 x i8], align 4
  %_20 = alloca [16 x i8], align 8
  %iter1 = alloca [16 x i8], align 8
  %curr_val = alloca [4 x i8], align 4
  %_8 = alloca [16 x i8], align 8
  %iter = alloca [16 x i8], align 8
  %cum_sum = alloca [4 x i8], align 4
  %1 = alloca [8 x i8], align 8
  %arr = alloca [8 x i8], align 4
  store i64 %0, ptr %1, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %arr, ptr align 8 %1, i64 8, i1 false)
  store float 0.000000e+00, ptr %cum_sum, align 4
  %_6 = sext i32 %n to i64
; call <I as core::iter::traits::collect::IntoIterator>::into_iter
  %2 = call { i64, i64 } @"_ZN63_$LT$I$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17h10c1e2e15e3e270eE"(i64 0, i64 %_6) #20
  %_4.0 = extractvalue { i64, i64 } %2, 0
  %_4.1 = extractvalue { i64, i64 } %2, 1
  store i64 %_4.0, ptr %iter, align 8
  %3 = getelementptr inbounds i8, ptr %iter, i64 8
  store i64 %_4.1, ptr %3, align 8
  br label %bb2

bb2:                                              ; preds = %bb7, %start
; call core::iter::range::<impl core::iter::traits::iterator::Iterator for core::ops::range::Range<A>>::next
  %4 = call { i64, i64 } @"_ZN4core4iter5range101_$LT$impl$u20$core..iter..traits..iterator..Iterator$u20$for$u20$core..ops..range..Range$LT$A$GT$$GT$4next17h9659f2713efac7d7E"(ptr align 8 %iter) #20
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
  %i9 = load i64, ptr %11, align 8
  %_14 = icmp ult i64 %i9, 2
  br i1 %_14, label %bb7, label %panic10

bb6:                                              ; preds = %bb2
  store float 0.000000e+00, ptr %curr_val, align 4
  %_18 = sext i32 %n to i64
; call <I as core::iter::traits::collect::IntoIterator>::into_iter
  %12 = call { i64, i64 } @"_ZN63_$LT$I$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17h10c1e2e15e3e270eE"(i64 0, i64 %_18) #20
  %_16.0 = extractvalue { i64, i64 } %12, 0
  %_16.1 = extractvalue { i64, i64 } %12, 1
  store i64 %_16.0, ptr %iter1, align 8
  %13 = getelementptr inbounds i8, ptr %iter1, i64 8
  store i64 %_16.1, ptr %13, align 8
  br label %bb9

bb9:                                              ; preds = %bb13, %bb6
; call core::iter::range::<impl core::iter::traits::iterator::Iterator for core::ops::range::Range<A>>::next
  %14 = call { i64, i64 } @"_ZN4core4iter5range101_$LT$impl$u20$core..iter..traits..iterator..Iterator$u20$for$u20$core..ops..range..Range$LT$A$GT$$GT$4next17h9659f2713efac7d7E"(ptr align 8 %iter1) #20
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
  %i7 = load i64, ptr %21, align 8
  %_25 = uitofp i64 %i7 to float
  %_28 = icmp ult i64 %i7, 2
  br i1 %_28, label %bb13, label %panic8

bb12:                                             ; preds = %bb9
  %_30 = load float, ptr %curr_val, align 4
  %22 = call i32 @llvm.fptosi.sat.i32.f32(float %_30)
  store i32 %22, ptr %res, align 4
  %_33 = sext i32 %n to i64
; call <I as core::iter::traits::collect::IntoIterator>::into_iter
  %23 = call { i64, i64 } @"_ZN63_$LT$I$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17h10c1e2e15e3e270eE"(i64 1, i64 %_33) #20
  %_31.0 = extractvalue { i64, i64 } %23, 0
  %_31.1 = extractvalue { i64, i64 } %23, 1
  store i64 %_31.0, ptr %iter2, align 8
  %24 = getelementptr inbounds i8, ptr %iter2, i64 8
  store i64 %_31.1, ptr %24, align 8
  br label %bb15

bb15:                                             ; preds = %bb23, %bb12
; call core::iter::range::<impl core::iter::traits::iterator::Iterator for core::ops::range::Range<A>>::next
  %25 = call { i64, i64 } @"_ZN4core4iter5range101_$LT$impl$u20$core..iter..traits..iterator..Iterator$u20$for$u20$core..ops..range..Range$LT$A$GT$$GT$4next17h9659f2713efac7d7E"(ptr align 8 %iter2) #20
  %26 = extractvalue { i64, i64 } %25, 0
  %27 = extractvalue { i64, i64 } %25, 1
  store i64 %26, ptr %_35, align 8
  %28 = getelementptr inbounds i8, ptr %_35, i64 8
  store i64 %27, ptr %28, align 8
  %_37 = load i64, ptr %_35, align 8
  %29 = getelementptr inbounds i8, ptr %_35, i64 8
  %30 = load i64, ptr %29, align 8
  %31 = trunc nuw i64 %_37 to i1
  br i1 %31, label %bb17, label %bb18

bb17:                                             ; preds = %bb15
  %32 = getelementptr inbounds i8, ptr %_35, i64 8
  %i = load i64, ptr %32, align 8
  %_41 = load float, ptr %curr_val, align 4
  %_43 = load float, ptr %cum_sum, align 4
  %_47.0 = sub i64 %i, 1
  %_47.1 = icmp ult i64 %i, 1
  br i1 %_47.1, label %panic, label %bb19

bb18:                                             ; preds = %bb15
  %_0 = load i32, ptr %res, align 4
  ret i32 %_0

bb19:                                             ; preds = %bb17
  %_48 = icmp ult i64 %_47.0, 2
  br i1 %_48, label %bb20, label %panic3

panic:                                            ; preds = %bb17
; call core::panicking::panic_const::panic_const_sub_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_sub_overflow17h134cc1a7f93654deE(ptr align 8 @alloc_efe24e2e7591848123200fdae3908dde) #22
  unreachable

bb20:                                             ; preds = %bb19
  %33 = getelementptr inbounds nuw i32, ptr %arr, i64 %_47.0
  %_45 = load i32, ptr %33, align 4
  %_44 = sitofp i32 %_45 to float
  %_42 = fsub float %_43, %_44
  %_40 = fsub float %_41, %_42
  %_53.0 = sub i64 %i, 1
  %_53.1 = icmp ult i64 %i, 1
  br i1 %_53.1, label %panic4, label %bb21

panic3:                                           ; preds = %bb19
; call core::panicking::panic_bounds_check
  call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 %_47.0, i64 2, ptr align 8 @alloc_ac209229c66f1d4bfa4fddbc0efc049c) #22
  unreachable

bb21:                                             ; preds = %bb20
  %_54 = icmp ult i64 %_53.0, 2
  br i1 %_54, label %bb22, label %panic5

panic4:                                           ; preds = %bb20
; call core::panicking::panic_const::panic_const_sub_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_sub_overflow17h134cc1a7f93654deE(ptr align 8 @alloc_8a718fa6898b2deb609c390da4c0b42d) #22
  unreachable

bb22:                                             ; preds = %bb21
  %34 = getelementptr inbounds nuw i32, ptr %arr, i64 %_53.0
  %_51 = load i32, ptr %34, align 4
  %_50 = sitofp i32 %_51 to float
  %35 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %n, i32 1)
  %_57.0 = extractvalue { i32, i1 } %35, 0
  %_57.1 = extractvalue { i32, i1 } %35, 1
  br i1 %_57.1, label %panic6, label %bb23

panic5:                                           ; preds = %bb21
; call core::panicking::panic_bounds_check
  call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 %_53.0, i64 2, ptr align 8 @alloc_e3c2b2e3acc70573aa07e689affa1048) #22
  unreachable

bb23:                                             ; preds = %bb22
  %_55 = sitofp i32 %_57.0 to float
  %_49 = fmul float %_50, %_55
  %next_val = fadd float %_40, %_49
  store float %next_val, ptr %curr_val, align 4
  %_59 = load i32, ptr %res, align 4
  %_60 = call i32 @llvm.fptosi.sat.i32.f32(float %next_val)
; call core::cmp::Ord::max
  %_58 = call i32 @_ZN4core3cmp3Ord3max17he9a34da1bbfbe07bE(i32 %_59, i32 %_60) #20
  store i32 %_58, ptr %res, align 4
  br label %bb15

panic6:                                           ; preds = %bb22
; call core::panicking::panic_const::panic_const_sub_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_sub_overflow17h134cc1a7f93654deE(ptr align 8 @alloc_e5f5d3e9d12d5e715e3a1a8f21969e7d) #22
  unreachable

bb13:                                             ; preds = %bb11
  %36 = getelementptr inbounds nuw i32, ptr %arr, i64 %i7
  %_27 = load i32, ptr %36, align 4
  %_26 = sitofp i32 %_27 to float
  %_24 = fmul float %_25, %_26
  %37 = load float, ptr %curr_val, align 4
  %38 = fadd float %37, %_24
  store float %38, ptr %curr_val, align 4
  br label %bb9

panic8:                                           ; preds = %bb11
; call core::panicking::panic_bounds_check
  call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 %i7, i64 2, ptr align 8 @alloc_ebec3a18beefcc612c5d4862f64e0756) #22
  unreachable

bb7:                                              ; preds = %bb5
  %39 = getelementptr inbounds nuw i32, ptr %arr, i64 %i9
  %_13 = load i32, ptr %39, align 4
  %_12 = sitofp i32 %_13 to float
  %40 = load float, ptr %cum_sum, align 4
  %41 = fadd float %40, %_12
  store float %41, ptr %cum_sum, align 4
  br label %bb2

panic10:                                          ; preds = %bb5
; call core::panicking::panic_bounds_check
  call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 %i9, i64 2, ptr align 8 @alloc_a8bd7a4db8d8d7ab6837f5987b8faee3) #22
  unreachable

bb4:                                              ; No predecessors!
  unreachable
}

define i32 @f_gold(i64 %0, float %n, float %k) unnamed_addr #3 {
start:
  %_25 = alloca [16 x i8], align 8
  %iter1 = alloca [16 x i8], align 8
  %max_end = alloca [4 x i8], align 4
  %max_sum = alloca [4 x i8], align 4
  %_12 = alloca [16 x i8], align 8
  %iter = alloca [16 x i8], align 8
  %sum = alloca [4 x i8], align 4
  %_0 = alloca [4 x i8], align 4
  %1 = alloca [8 x i8], align 8
  %arr = alloca [8 x i8], align 4
  store i64 %0, ptr %1, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %arr, ptr align 8 %1, i64 8, i1 false)
  %_4 = fcmp ogt float %k, %n
  br i1 %_4, label %bb1, label %bb2

bb2:                                              ; preds = %start
  %2 = getelementptr inbounds nuw float, ptr %arr, i64 0
  %3 = load float, ptr %2, align 4
  store float %3, ptr %sum, align 4
  %_10 = call i64 @llvm.fptoui.sat.i64.f32(float %k)
; call <I as core::iter::traits::collect::IntoIterator>::into_iter
  %4 = call { i64, i64 } @"_ZN63_$LT$I$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17h219a6ccfc270bac3E"(i64 1, i64 %_10) #20
  %_8.0 = extractvalue { i64, i64 } %4, 0
  %_8.1 = extractvalue { i64, i64 } %4, 1
  store i64 %_8.0, ptr %iter, align 8
  %5 = getelementptr inbounds i8, ptr %iter, i64 8
  store i64 %_8.1, ptr %5, align 8
  br label %bb5

bb1:                                              ; preds = %start
  store i32 -1, ptr %_0, align 4
  br label %bb20

bb5:                                              ; preds = %bb10, %bb2
; call core::iter::range::<impl core::iter::traits::iterator::Iterator for core::ops::range::Range<A>>::next
  %6 = call { i64, i64 } @"_ZN4core4iter5range101_$LT$impl$u20$core..iter..traits..iterator..Iterator$u20$for$u20$core..ops..range..Range$LT$A$GT$$GT$4next17h6c3d2851db56b845E"(ptr align 8 %iter) #20
  %7 = extractvalue { i64, i64 } %6, 0
  %8 = extractvalue { i64, i64 } %6, 1
  store i64 %7, ptr %_12, align 8
  %9 = getelementptr inbounds i8, ptr %_12, i64 8
  store i64 %8, ptr %9, align 8
  %_14 = load i64, ptr %_12, align 8
  %10 = getelementptr inbounds i8, ptr %_12, i64 8
  %11 = load i64, ptr %10, align 8
  %12 = trunc nuw i64 %_14 to i1
  br i1 %12, label %bb8, label %bb9

bb8:                                              ; preds = %bb5
  %13 = getelementptr inbounds i8, ptr %_12, i64 8
  %i4 = load i64, ptr %13, align 8
  %_17 = icmp ult i64 %i4, 2
  br i1 %_17, label %bb10, label %panic5

bb9:                                              ; preds = %bb5
  %14 = load float, ptr %sum, align 4
  store float %14, ptr %max_sum, align 4
  %15 = fsub float %k, 1.000000e+00
  store float %15, ptr %max_end, align 4
  %_22 = call i64 @llvm.fptoui.sat.i64.f32(float %k)
  %_23 = call i64 @llvm.fptoui.sat.i64.f32(float %n)
; call <I as core::iter::traits::collect::IntoIterator>::into_iter
  %16 = call { i64, i64 } @"_ZN63_$LT$I$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17h219a6ccfc270bac3E"(i64 %_22, i64 %_23) #20
  %_20.0 = extractvalue { i64, i64 } %16, 0
  %_20.1 = extractvalue { i64, i64 } %16, 1
  store i64 %_20.0, ptr %iter1, align 8
  %17 = getelementptr inbounds i8, ptr %iter1, i64 8
  store i64 %_20.1, ptr %17, align 8
  br label %bb12

bb12:                                             ; preds = %bb19, %bb18, %bb9
; call core::iter::range::<impl core::iter::traits::iterator::Iterator for core::ops::range::Range<A>>::next
  %18 = call { i64, i64 } @"_ZN4core4iter5range101_$LT$impl$u20$core..iter..traits..iterator..Iterator$u20$for$u20$core..ops..range..Range$LT$A$GT$$GT$4next17h6c3d2851db56b845E"(ptr align 8 %iter1) #20
  %19 = extractvalue { i64, i64 } %18, 0
  %20 = extractvalue { i64, i64 } %18, 1
  store i64 %19, ptr %_25, align 8
  %21 = getelementptr inbounds i8, ptr %_25, i64 8
  store i64 %20, ptr %21, align 8
  %_27 = load i64, ptr %_25, align 8
  %22 = getelementptr inbounds i8, ptr %_25, i64 8
  %23 = load i64, ptr %22, align 8
  %24 = trunc nuw i64 %_27 to i1
  br i1 %24, label %bb14, label %bb15

bb14:                                             ; preds = %bb12
  %25 = getelementptr inbounds i8, ptr %_25, i64 8
  %i = load i64, ptr %25, align 8
  %_30 = load float, ptr %sum, align 4
  %_32 = icmp ult i64 %i, 2
  br i1 %_32, label %bb16, label %panic

bb15:                                             ; preds = %bb12
  %_44 = load float, ptr %max_end, align 4
  %_43 = fsub float %_44, %k
  %_42 = fadd float %_43, 1.000000e+00
  %26 = call i32 @llvm.fptosi.sat.i32.f32(float %_42)
  store i32 %26, ptr %_0, align 4
  br label %bb20

bb20:                                             ; preds = %bb1, %bb15
  %27 = load i32, ptr %_0, align 4
  ret i32 %27

bb16:                                             ; preds = %bb14
  %28 = getelementptr inbounds nuw float, ptr %arr, i64 %i
  %_31 = load float, ptr %28, align 4
  %_29 = fadd float %_30, %_31
  %_35 = call i64 @llvm.fptoui.sat.i64.f32(float %k)
  %_36.0 = sub i64 %i, %_35
  %_36.1 = icmp ult i64 %i, %_35
  br i1 %_36.1, label %panic2, label %bb17

panic:                                            ; preds = %bb14
; call core::panicking::panic_bounds_check
  call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 %i, i64 2, ptr align 8 @alloc_bc65ba668fd32d4f15fd875045799a2b) #22
  unreachable

bb17:                                             ; preds = %bb16
  %_37 = icmp ult i64 %_36.0, 2
  br i1 %_37, label %bb18, label %panic3

panic2:                                           ; preds = %bb16
; call core::panicking::panic_const::panic_const_sub_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_sub_overflow17h134cc1a7f93654deE(ptr align 8 @alloc_eccb668978c90412f8a5565d09b2b45b) #22
  unreachable

bb18:                                             ; preds = %bb17
  %29 = getelementptr inbounds nuw float, ptr %arr, i64 %_36.0
  %_33 = load float, ptr %29, align 4
  %30 = fsub float %_29, %_33
  store float %30, ptr %sum, align 4
  %_39 = load float, ptr %sum, align 4
  %_40 = load float, ptr %max_sum, align 4
  %_38 = fcmp ogt float %_39, %_40
  br i1 %_38, label %bb19, label %bb12

panic3:                                           ; preds = %bb17
; call core::panicking::panic_bounds_check
  call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 %_36.0, i64 2, ptr align 8 @alloc_f437c56f4cd97df68b372f933baadfde) #22
  unreachable

bb19:                                             ; preds = %bb18
  %_41 = load float, ptr %sum, align 4
  store float %_41, ptr %max_sum, align 4
  %31 = uitofp i64 %i to float
  store float %31, ptr %max_end, align 4
  br label %bb12

bb10:                                             ; preds = %bb8
  %32 = getelementptr inbounds nuw float, ptr %arr, i64 %i4
  %_16 = load float, ptr %32, align 4
  %33 = load float, ptr %sum, align 4
  %34 = fadd float %33, %_16
  store float %34, ptr %sum, align 4
  br label %bb5

panic5:                                           ; preds = %bb8
; call core::panicking::panic_bounds_check
  call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 %i4, i64 2, ptr align 8 @alloc_abe69480fd7519f318a641c4aa7acf10) #22
  unreachable

bb7:                                              ; No predecessors!
  unreachable
}

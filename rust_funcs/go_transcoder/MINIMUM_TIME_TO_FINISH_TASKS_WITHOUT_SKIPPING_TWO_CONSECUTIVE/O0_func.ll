define i32 @f_gold(i64 %0, i32 %n) unnamed_addr #3 {
start:
  %_13 = alloca [16 x i8], align 8
  %iter = alloca [16 x i8], align 8
  %excl = alloca [4 x i8], align 4
  %incl = alloca [4 x i8], align 4
  %_0 = alloca [4 x i8], align 4
  %1 = alloca [8 x i8], align 8
  %arr = alloca [8 x i8], align 4
  store i64 %0, ptr %1, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %arr, ptr align 8 %1, i64 8, i1 false)
  %_3 = icmp sle i32 %n, 0
  br i1 %_3, label %bb1, label %bb2

bb2:                                              ; preds = %start
  %2 = getelementptr inbounds nuw i32, ptr %arr, i64 0
  %_5 = load i32, ptr %2, align 4
  %3 = sitofp i32 %_5 to float
  store float %3, ptr %incl, align 4
  store float 0.000000e+00, ptr %excl, align 4
  %_11 = sext i32 %n to i64
; call <I as core::iter::traits::collect::IntoIterator>::into_iter
  %4 = call { i64, i64 } @"_ZN63_$LT$I$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17h4ee154a85fbb2112E"(i64 1, i64 %_11) #20
  %_9.0 = extractvalue { i64, i64 } %4, 0
  %_9.1 = extractvalue { i64, i64 } %4, 1
  store i64 %_9.0, ptr %iter, align 8
  %5 = getelementptr inbounds i8, ptr %iter, i64 8
  store i64 %_9.1, ptr %5, align 8
  br label %bb5

bb1:                                              ; preds = %start
  store i32 0, ptr %_0, align 4
  br label %bb13

bb5:                                              ; preds = %bb10, %bb2
; call core::iter::range::<impl core::iter::traits::iterator::Iterator for core::ops::range::Range<A>>::next
  %6 = call { i64, i64 } @"_ZN4core4iter5range101_$LT$impl$u20$core..iter..traits..iterator..Iterator$u20$for$u20$core..ops..range..Range$LT$A$GT$$GT$4next17h7002fd935d932bd8E"(ptr align 8 %iter) #20
  %7 = extractvalue { i64, i64 } %6, 0
  %8 = extractvalue { i64, i64 } %6, 1
  store i64 %7, ptr %_13, align 8
  %9 = getelementptr inbounds i8, ptr %_13, i64 8
  store i64 %8, ptr %9, align 8
  %_15 = load i64, ptr %_13, align 8
  %10 = getelementptr inbounds i8, ptr %_13, i64 8
  %11 = load i64, ptr %10, align 8
  %12 = trunc nuw i64 %_15 to i1
  br i1 %12, label %bb8, label %bb9

bb8:                                              ; preds = %bb5
  %13 = getelementptr inbounds i8, ptr %_13, i64 8
  %i = load i64, ptr %13, align 8
  %_20 = icmp ult i64 %i, 2
  br i1 %_20, label %bb10, label %panic

bb9:                                              ; preds = %bb5
  %_26 = load float, ptr %incl, align 4
  %_27 = load float, ptr %excl, align 4
; call core::f32::<impl f32>::min
  %_25 = call float @"_ZN4core3f3221_$LT$impl$u20$f32$GT$3min17h178a3012449a7051E"(float %_26, float %_27) #20
  %14 = call i32 @llvm.fptosi.sat.i32.f32(float %_25)
  store i32 %14, ptr %_0, align 4
  br label %bb13

bb13:                                             ; preds = %bb1, %bb9
  %15 = load i32, ptr %_0, align 4
  ret i32 %15

bb10:                                             ; preds = %bb8
  %16 = getelementptr inbounds nuw i32, ptr %arr, i64 %i
  %_19 = load i32, ptr %16, align 4
  %_18 = sitofp i32 %_19 to float
  %_22 = load float, ptr %incl, align 4
  %_23 = load float, ptr %excl, align 4
; call core::f32::<impl f32>::min
  %_21 = call float @"_ZN4core3f3221_$LT$impl$u20$f32$GT$3min17h178a3012449a7051E"(float %_22, float %_23) #20
  %incl_new = fadd float %_18, %_21
  %_24 = load float, ptr %incl, align 4
  store float %_24, ptr %excl, align 4
  store float %incl_new, ptr %incl, align 4
  br label %bb5

panic:                                            ; preds = %bb8
; call core::panicking::panic_bounds_check
  call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 %i, i64 2, ptr align 8 @alloc_50450e69135e7a4cc8a616310971e7e7) #22
  unreachable

bb7:                                              ; No predecessors!
  unreachable
}

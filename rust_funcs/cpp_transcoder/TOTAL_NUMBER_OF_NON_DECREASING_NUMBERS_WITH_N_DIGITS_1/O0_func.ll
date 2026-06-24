define i32 @f_gold(i32 %n) unnamed_addr #3 {
start:
  %_6 = alloca [8 x i8], align 4
  %iter = alloca [12 x i8], align 4
  %_4 = alloca [12 x i8], align 4
  %_3 = alloca [12 x i8], align 4
  %count = alloca [4 x i8], align 4
  store float 1.000000e+00, ptr %count, align 4
; call core::ops::range::RangeInclusive<Idx>::new
  call void @"_ZN4core3ops5range25RangeInclusive$LT$Idx$GT$3new17h1637b24554826077E"(ptr sret([12 x i8]) align 4 %_4, i32 1, i32 %n) #17
; call <I as core::iter::traits::collect::IntoIterator>::into_iter
  call void @"_ZN63_$LT$I$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17h6dd7e424b7f234b7E"(ptr sret([12 x i8]) align 4 %_3, ptr align 4 %_4) #17
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %iter, ptr align 4 %_3, i64 12, i1 false)
  br label %bb3

bb3:                                              ; preds = %bb8, %start
; call core::iter::range::<impl core::iter::traits::iterator::Iterator for core::ops::range::RangeInclusive<A>>::next
  %0 = call { i32, i32 } @"_ZN4core4iter5range110_$LT$impl$u20$core..iter..traits..iterator..Iterator$u20$for$u20$core..ops..range..RangeInclusive$LT$A$GT$$GT$4next17h767c02acc9df1df2E"(ptr align 4 %iter) #17
  %1 = extractvalue { i32, i32 } %0, 0
  %2 = extractvalue { i32, i32 } %0, 1
  store i32 %1, ptr %_6, align 4
  %3 = getelementptr inbounds i8, ptr %_6, i64 4
  store i32 %2, ptr %3, align 4
  %4 = load i32, ptr %_6, align 4
  %5 = getelementptr inbounds i8, ptr %_6, i64 4
  %6 = load i32, ptr %5, align 4
  %_8 = zext i32 %4 to i64
  %7 = trunc nuw i64 %_8 to i1
  br i1 %7, label %bb6, label %bb7

bb6:                                              ; preds = %bb3
  %8 = getelementptr inbounds i8, ptr %_6, i64 4
  %i = load i32, ptr %8, align 4
  %9 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %i, i32 1)
  %_14.0 = extractvalue { i32, i1 } %9, 0
  %_14.1 = extractvalue { i32, i1 } %9, 1
  br i1 %_14.1, label %panic, label %bb8

bb7:                                              ; preds = %bb3
  %_16 = load float, ptr %count, align 4
  %_0 = call i32 @llvm.fptosi.sat.i32.f32(float %_16)
  ret i32 %_0

bb8:                                              ; preds = %bb6
  %_12 = sitofp i32 %_14.0 to float
  %_10 = fadd float 1.000000e+01, %_12
  %10 = load float, ptr %count, align 4
  %11 = fmul float %10, %_10
  store float %11, ptr %count, align 4
  %_15 = sitofp i32 %i to float
  %12 = load float, ptr %count, align 4
  %13 = fdiv float %12, %_15
  store float %13, ptr %count, align 4
  br label %bb3

panic:                                            ; preds = %bb6
; call core::panicking::panic_const::panic_const_sub_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_sub_overflow17h134cc1a7f93654deE(ptr align 8 @alloc_63f5ffda607b1e908a5f0b0aafe14f48) #22
  unreachable

bb5:                                              ; No predecessors!
  unreachable
}

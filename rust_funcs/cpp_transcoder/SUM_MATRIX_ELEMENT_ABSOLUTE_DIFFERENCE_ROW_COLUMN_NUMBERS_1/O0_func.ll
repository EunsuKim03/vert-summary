define i32 @f_gold(i32 %n) unnamed_addr #3 {
start:
  %_6 = alloca [8 x i8], align 4
  %iter = alloca [8 x i8], align 4
  %sum = alloca [4 x i8], align 4
  store float 0.000000e+00, ptr %sum, align 4
; call <I as core::iter::traits::collect::IntoIterator>::into_iter
  %0 = call { i32, i32 } @"_ZN63_$LT$I$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17hba6dbd42a5f32559E"(i32 0, i32 %n) #20
  %_3.0 = extractvalue { i32, i32 } %0, 0
  %_3.1 = extractvalue { i32, i32 } %0, 1
  store i32 %_3.0, ptr %iter, align 4
  %1 = getelementptr inbounds i8, ptr %iter, i64 4
  store i32 %_3.1, ptr %1, align 4
  br label %bb2

bb2:                                              ; preds = %bb7, %start
; call core::iter::range::<impl core::iter::traits::iterator::Iterator for core::ops::range::Range<A>>::next
  %2 = call { i32, i32 } @"_ZN4core4iter5range101_$LT$impl$u20$core..iter..traits..iterator..Iterator$u20$for$u20$core..ops..range..Range$LT$A$GT$$GT$4next17h081e7d6bd9fadb1bE"(ptr align 4 %iter) #20
  %3 = extractvalue { i32, i32 } %2, 0
  %4 = extractvalue { i32, i32 } %2, 1
  store i32 %3, ptr %_6, align 4
  %5 = getelementptr inbounds i8, ptr %_6, i64 4
  store i32 %4, ptr %5, align 4
  %6 = load i32, ptr %_6, align 4
  %7 = getelementptr inbounds i8, ptr %_6, i64 4
  %8 = load i32, ptr %7, align 4
  %_8 = zext i32 %6 to i64
  %9 = trunc nuw i64 %_8 to i1
  br i1 %9, label %bb5, label %bb6

bb5:                                              ; preds = %bb2
  %10 = getelementptr inbounds i8, ptr %_6, i64 4
  %i = load i32, ptr %10, align 4
  %11 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %n, i32 %i)
  %_13.0 = extractvalue { i32, i1 } %11, 0
  %_13.1 = extractvalue { i32, i1 } %11, 1
  br i1 %_13.1, label %panic, label %bb7

bb6:                                              ; preds = %bb2
  %_16 = load float, ptr %sum, align 4
  %_15 = fmul float 2.000000e+00, %_16
  %_0 = call i32 @llvm.fptosi.sat.i32.f32(float %_15)
  ret i32 %_0

bb7:                                              ; preds = %bb5
  %_11 = sitofp i32 %_13.0 to float
  %_14 = sitofp i32 %i to float
  %_10 = fmul float %_11, %_14
  %12 = load float, ptr %sum, align 4
  %13 = fadd float %12, %_10
  store float %13, ptr %sum, align 4
  br label %bb2

panic:                                            ; preds = %bb5
; call core::panicking::panic_const::panic_const_sub_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_sub_overflow17h134cc1a7f93654deE(ptr align 8 @alloc_e3674b83d4c8875bae545ceced22c3e1) #22
  unreachable

bb4:                                              ; No predecessors!
  unreachable
}

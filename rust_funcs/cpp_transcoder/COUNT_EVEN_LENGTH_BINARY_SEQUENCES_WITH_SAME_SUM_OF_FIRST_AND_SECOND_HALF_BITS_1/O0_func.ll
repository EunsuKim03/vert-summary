define i32 @f_gold(i32 %n) unnamed_addr #3 {
start:
  %_9 = alloca [8 x i8], align 4
  %iter = alloca [8 x i8], align 4
  %res = alloca [4 x i8], align 4
  %n_cr = alloca [4 x i8], align 4
  store float 1.000000e+00, ptr %n_cr, align 4
  store float 1.000000e+00, ptr %res, align 4
  %0 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %n, i32 1)
  %_7.0 = extractvalue { i32, i1 } %0, 0
  %_7.1 = extractvalue { i32, i1 } %0, 1
  br i1 %_7.1, label %panic, label %bb1

bb1:                                              ; preds = %start
; call <I as core::iter::traits::collect::IntoIterator>::into_iter
  %1 = call { i32, i32 } @"_ZN63_$LT$I$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17hbb2d01117f2e24c1E"(i32 1, i32 %_7.0) #20
  %_4.0 = extractvalue { i32, i32 } %1, 0
  %_4.1 = extractvalue { i32, i32 } %1, 1
  store i32 %_4.0, ptr %iter, align 4
  %2 = getelementptr inbounds i8, ptr %iter, i64 4
  store i32 %_4.1, ptr %2, align 4
  br label %bb3

panic:                                            ; preds = %start
; call core::panicking::panic_const::panic_const_add_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_41cdf55da383af01e24ecd450583e32d) #22
  unreachable

bb3:                                              ; preds = %bb9, %bb1
; call core::iter::range::<impl core::iter::traits::iterator::Iterator for core::ops::range::Range<A>>::next
  %3 = call { i32, i32 } @"_ZN4core4iter5range101_$LT$impl$u20$core..iter..traits..iterator..Iterator$u20$for$u20$core..ops..range..Range$LT$A$GT$$GT$4next17h3458a0eae77b6cefE"(ptr align 4 %iter) #20
  %4 = extractvalue { i32, i32 } %3, 0
  %5 = extractvalue { i32, i32 } %3, 1
  store i32 %4, ptr %_9, align 4
  %6 = getelementptr inbounds i8, ptr %_9, i64 4
  store i32 %5, ptr %6, align 4
  %7 = load i32, ptr %_9, align 4
  %8 = getelementptr inbounds i8, ptr %_9, i64 4
  %9 = load i32, ptr %8, align 4
  %_11 = zext i32 %7 to i64
  %10 = trunc nuw i64 %_11 to i1
  br i1 %10, label %bb6, label %bb7

bb6:                                              ; preds = %bb3
  %11 = getelementptr inbounds i8, ptr %_9, i64 4
  %r = load i32, ptr %11, align 4
  %_14 = load float, ptr %n_cr, align 4
  %12 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %n, i32 1)
  %_18.0 = extractvalue { i32, i1 } %12, 0
  %_18.1 = extractvalue { i32, i1 } %12, 1
  br i1 %_18.1, label %panic1, label %bb8

bb7:                                              ; preds = %bb3
  %_23 = load float, ptr %res, align 4
  %_0 = call i32 @llvm.fptosi.sat.i32.f32(float %_23)
  ret i32 %_0

bb8:                                              ; preds = %bb6
  %13 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %_18.0, i32 %r)
  %_19.0 = extractvalue { i32, i1 } %13, 0
  %_19.1 = extractvalue { i32, i1 } %13, 1
  br i1 %_19.1, label %panic2, label %bb9

panic1:                                           ; preds = %bb6
; call core::panicking::panic_const::panic_const_add_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_87349832b0b6e1bdcbd6f8a36b575825) #22
  unreachable

bb9:                                              ; preds = %bb8
  %_15 = sitofp i32 %_19.0 to float
  %_13 = fmul float %_14, %_15
  %_20 = sitofp i32 %r to float
  %14 = fdiv float %_13, %_20
  store float %14, ptr %n_cr, align 4
  %_22 = load float, ptr %n_cr, align 4
; call std::f32::<impl f32>::powi
  %_21 = call float @"_ZN3std3f3221_$LT$impl$u20$f32$GT$4powi17hfe09cadeb54a8c44E"(float %_22, i32 2) #20
  %15 = load float, ptr %res, align 4
  %16 = fadd float %15, %_21
  store float %16, ptr %res, align 4
  br label %bb3

panic2:                                           ; preds = %bb8
; call core::panicking::panic_const::panic_const_sub_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_sub_overflow17h134cc1a7f93654deE(ptr align 8 @alloc_41f7f51216f7ed7ebee74e6195df9bf8) #22
  unreachable

bb5:                                              ; No predecessors!
  unreachable
}

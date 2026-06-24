define i32 @f_gold(i32 %n) unnamed_addr #3 {
start:
  %_13 = alloca [8 x i8], align 4
  %iter = alloca [12 x i8], align 4
  %_11 = alloca [12 x i8], align 4
  %_10 = alloca [12 x i8], align 4
  %sum = alloca [4 x i8], align 4
  %multi_terms = alloca [4 x i8], align 4
  %_4 = sitofp i32 %n to float
  %0 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %n, i32 1)
  %_7.0 = extractvalue { i32, i1 } %0, 0
  %_7.1 = extractvalue { i32, i1 } %0, 1
  br i1 %_7.1, label %panic, label %bb1

bb1:                                              ; preds = %start
  %_5 = sitofp i32 %_7.0 to float
  %_3 = fmul float %_4, %_5
  %1 = fdiv float %_3, 2.000000e+00
  store float %1, ptr %multi_terms, align 4
  %2 = load float, ptr %multi_terms, align 4
  store float %2, ptr %sum, align 4
; call core::ops::range::RangeInclusive<Idx>::new
  call void @"_ZN4core3ops5range25RangeInclusive$LT$Idx$GT$3new17hf1ab2b103e1e351dE"(ptr sret([12 x i8]) align 4 %_11, i32 2, i32 %n) #17
; call <I as core::iter::traits::collect::IntoIterator>::into_iter
  call void @"_ZN63_$LT$I$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17h3452e4e02c185d0dE"(ptr sret([12 x i8]) align 4 %_10, ptr align 4 %_11) #17
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %iter, ptr align 4 %_10, i64 12, i1 false)
  br label %bb4

panic:                                            ; preds = %start
; call core::panicking::panic_const::panic_const_add_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_d533739edd0462bb6d8202124d06ea94) #22
  unreachable

bb4:                                              ; preds = %bb9, %bb1
; call core::iter::range::<impl core::iter::traits::iterator::Iterator for core::ops::range::RangeInclusive<A>>::next
  %3 = call { i32, i32 } @"_ZN4core4iter5range110_$LT$impl$u20$core..iter..traits..iterator..Iterator$u20$for$u20$core..ops..range..RangeInclusive$LT$A$GT$$GT$4next17h0bc22c0be1577c6cE"(ptr align 4 %iter) #17
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
  %i = load i32, ptr %11, align 4
  %_17 = load float, ptr %multi_terms, align 4
  %12 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %i, i32 1)
  %_20.0 = extractvalue { i32, i1 } %12, 0
  %_20.1 = extractvalue { i32, i1 } %12, 1
  br i1 %_20.1, label %panic1, label %bb9

bb8:                                              ; preds = %bb4
  %_25 = load float, ptr %sum, align 4
  %_0 = call i32 @llvm.fptosi.sat.i32.f32(float %_25)
  ret i32 %_0

bb9:                                              ; preds = %bb7
  %_18 = sitofp i32 %_20.0 to float
  %13 = fsub float %_17, %_18
  store float %13, ptr %multi_terms, align 4
  %_21 = load float, ptr %sum, align 4
  %_23 = load float, ptr %multi_terms, align 4
  %_24 = sitofp i32 %i to float
  %_22 = fmul float %_23, %_24
  %14 = fadd float %_21, %_22
  store float %14, ptr %sum, align 4
  br label %bb4

panic1:                                           ; preds = %bb7
; call core::panicking::panic_const::panic_const_sub_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_sub_overflow17h134cc1a7f93654deE(ptr align 8 @alloc_6e58612921462a69da53d66c38dacb7c) #22
  unreachable

bb6:                                              ; No predecessors!
  unreachable
}

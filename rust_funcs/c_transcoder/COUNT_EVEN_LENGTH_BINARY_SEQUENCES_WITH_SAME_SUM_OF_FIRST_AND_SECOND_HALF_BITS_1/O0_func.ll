define i32 @f_gold(i32 %n) unnamed_addr #3 {
start:
  %_7 = alloca [8 x i8], align 4
  %iter = alloca [12 x i8], align 4
  %_5 = alloca [12 x i8], align 4
  %_4 = alloca [12 x i8], align 4
  %res = alloca [4 x i8], align 4
  %n_cr = alloca [4 x i8], align 4
  store float 1.000000e+00, ptr %n_cr, align 4
  store i32 1, ptr %res, align 4
; call core::ops::range::RangeInclusive<Idx>::new
  call void @"_ZN4core3ops5range25RangeInclusive$LT$Idx$GT$3new17h8b6a659b51e4d27dE"(ptr sret([12 x i8]) align 4 %_5, i32 1, i32 %n) #17
; call <I as core::iter::traits::collect::IntoIterator>::into_iter
  call void @"_ZN63_$LT$I$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17h26a3eb5c32d54171E"(ptr sret([12 x i8]) align 4 %_4, ptr align 4 %_5) #17
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %iter, ptr align 4 %_4, i64 12, i1 false)
  br label %bb3

bb3:                                              ; preds = %bb11, %start
; call core::iter::range::<impl core::iter::traits::iterator::Iterator for core::ops::range::RangeInclusive<A>>::next
  %0 = call { i32, i32 } @"_ZN4core4iter5range110_$LT$impl$u20$core..iter..traits..iterator..Iterator$u20$for$u20$core..ops..range..RangeInclusive$LT$A$GT$$GT$4next17h03536c43f5727bc4E"(ptr align 4 %iter) #17
  %1 = extractvalue { i32, i32 } %0, 0
  %2 = extractvalue { i32, i32 } %0, 1
  store i32 %1, ptr %_7, align 4
  %3 = getelementptr inbounds i8, ptr %_7, i64 4
  store i32 %2, ptr %3, align 4
  %4 = load i32, ptr %_7, align 4
  %5 = getelementptr inbounds i8, ptr %_7, i64 4
  %6 = load i32, ptr %5, align 4
  %_9 = zext i32 %4 to i64
  %7 = trunc nuw i64 %_9 to i1
  br i1 %7, label %bb6, label %bb7

bb6:                                              ; preds = %bb3
  %8 = getelementptr inbounds i8, ptr %_7, i64 4
  %r = load i32, ptr %8, align 4
  %_12 = load float, ptr %n_cr, align 4
  %9 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %n, i32 1)
  %_16.0 = extractvalue { i32, i1 } %9, 0
  %_16.1 = extractvalue { i32, i1 } %9, 1
  br i1 %_16.1, label %panic, label %bb8

bb7:                                              ; preds = %bb3
  %_0 = load i32, ptr %res, align 4
  ret i32 %_0

bb8:                                              ; preds = %bb6
  %10 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %_16.0, i32 %r)
  %_17.0 = extractvalue { i32, i1 } %10, 0
  %_17.1 = extractvalue { i32, i1 } %10, 1
  br i1 %_17.1, label %panic1, label %bb9

panic:                                            ; preds = %bb6
; call core::panicking::panic_const::panic_const_add_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_00eec20b5a9850fbb07cf6ab35fc7f2c) #22
  unreachable

bb9:                                              ; preds = %bb8
  %_13 = sitofp i32 %_17.0 to float
  %_11 = fmul float %_12, %_13
  %_18 = sitofp i32 %r to float
  %11 = fdiv float %_11, %_18
  store float %11, ptr %n_cr, align 4
  %_21 = load float, ptr %n_cr, align 4
  %_20 = call i32 @llvm.fptosi.sat.i32.f32(float %_21)
  %_23 = load float, ptr %n_cr, align 4
  %_22 = call i32 @llvm.fptosi.sat.i32.f32(float %_23)
  %12 = call { i32, i1 } @llvm.smul.with.overflow.i32(i32 %_20, i32 %_22)
  %_24.0 = extractvalue { i32, i1 } %12, 0
  %_24.1 = extractvalue { i32, i1 } %12, 1
  br i1 %_24.1, label %panic2, label %bb10

panic1:                                           ; preds = %bb8
; call core::panicking::panic_const::panic_const_sub_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_sub_overflow17h134cc1a7f93654deE(ptr align 8 @alloc_2b67cc02001dae56e80f2f8aba875d0b) #22
  unreachable

bb10:                                             ; preds = %bb9
  %13 = load i32, ptr %res, align 4
  %14 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %13, i32 %_24.0)
  %_25.0 = extractvalue { i32, i1 } %14, 0
  %_25.1 = extractvalue { i32, i1 } %14, 1
  br i1 %_25.1, label %panic3, label %bb11

panic2:                                           ; preds = %bb9
; call core::panicking::panic_const::panic_const_mul_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_mul_overflow17h554ac164c12099f8E(ptr align 8 @alloc_0df58b3c0475bf7292d56c064f53f475) #22
  unreachable

bb11:                                             ; preds = %bb10
  store i32 %_25.0, ptr %res, align 4
  br label %bb3

panic3:                                           ; preds = %bb10
; call core::panicking::panic_const::panic_const_add_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_e6d68e0d3d88e4048b383769559181f4) #22
  unreachable

bb5:                                              ; No predecessors!
  unreachable
}

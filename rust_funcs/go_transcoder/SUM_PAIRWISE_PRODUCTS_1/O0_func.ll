define i32 @f_gold(i32 %n) unnamed_addr #3 {
start:
  %_15 = alloca [8 x i8], align 4
  %iter = alloca [8 x i8], align 4
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
  %_9 = load float, ptr %multi_terms, align 4
  %2 = call i32 @llvm.fptosi.sat.i32.f32(float %_9)
  store i32 %2, ptr %sum, align 4
  %3 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %n, i32 1)
  %_13.0 = extractvalue { i32, i1 } %3, 0
  %_13.1 = extractvalue { i32, i1 } %3, 1
  br i1 %_13.1, label %panic1, label %bb2

panic:                                            ; preds = %start
; call core::panicking::panic_const::panic_const_add_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_167a1b19e63ca6680919fc95e0023534) #22
  unreachable

bb2:                                              ; preds = %bb1
; call <I as core::iter::traits::collect::IntoIterator>::into_iter
  %4 = call { i32, i32 } @"_ZN63_$LT$I$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17hb1f7f244faa79e19E"(i32 2, i32 %_13.0) #20
  %_10.0 = extractvalue { i32, i32 } %4, 0
  %_10.1 = extractvalue { i32, i32 } %4, 1
  store i32 %_10.0, ptr %iter, align 4
  %5 = getelementptr inbounds i8, ptr %iter, i64 4
  store i32 %_10.1, ptr %5, align 4
  br label %bb4

panic1:                                           ; preds = %bb1
; call core::panicking::panic_const::panic_const_add_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_cd0f9dead2b2f1ae30f1cdddc9c9a0d3) #22
  unreachable

bb4:                                              ; preds = %bb10, %bb2
; call core::iter::range::<impl core::iter::traits::iterator::Iterator for core::ops::range::Range<A>>::next
  %6 = call { i32, i32 } @"_ZN4core4iter5range101_$LT$impl$u20$core..iter..traits..iterator..Iterator$u20$for$u20$core..ops..range..Range$LT$A$GT$$GT$4next17h734d083dc15ed0e0E"(ptr align 4 %iter) #20
  %7 = extractvalue { i32, i32 } %6, 0
  %8 = extractvalue { i32, i32 } %6, 1
  store i32 %7, ptr %_15, align 4
  %9 = getelementptr inbounds i8, ptr %_15, i64 4
  store i32 %8, ptr %9, align 4
  %10 = load i32, ptr %_15, align 4
  %11 = getelementptr inbounds i8, ptr %_15, i64 4
  %12 = load i32, ptr %11, align 4
  %_17 = zext i32 %10 to i64
  %13 = trunc nuw i64 %_17 to i1
  br i1 %13, label %bb7, label %bb8

bb7:                                              ; preds = %bb4
  %14 = getelementptr inbounds i8, ptr %_15, i64 4
  %i = load i32, ptr %14, align 4
  %_19 = load float, ptr %multi_terms, align 4
  %15 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %i, i32 1)
  %_22.0 = extractvalue { i32, i1 } %15, 0
  %_22.1 = extractvalue { i32, i1 } %15, 1
  br i1 %_22.1, label %panic2, label %bb9

bb8:                                              ; preds = %bb4
  %_0 = load i32, ptr %sum, align 4
  ret i32 %_0

bb9:                                              ; preds = %bb7
  %_20 = sitofp i32 %_22.0 to float
  %16 = fsub float %_19, %_20
  store float %16, ptr %multi_terms, align 4
  %_23 = load i32, ptr %sum, align 4
  %_26 = load float, ptr %multi_terms, align 4
  %_27 = sitofp i32 %i to float
  %_25 = fmul float %_26, %_27
  %_24 = call i32 @llvm.fptosi.sat.i32.f32(float %_25)
  %17 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %_23, i32 %_24)
  %_28.0 = extractvalue { i32, i1 } %17, 0
  %_28.1 = extractvalue { i32, i1 } %17, 1
  br i1 %_28.1, label %panic3, label %bb10

panic2:                                           ; preds = %bb7
; call core::panicking::panic_const::panic_const_sub_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_sub_overflow17h134cc1a7f93654deE(ptr align 8 @alloc_49585d2623126d0ff7b59c4398fa1911) #22
  unreachable

bb10:                                             ; preds = %bb9
  store i32 %_28.0, ptr %sum, align 4
  br label %bb4

panic3:                                           ; preds = %bb9
; call core::panicking::panic_const::panic_const_add_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_17fcc740330a84269dc9b5383cef9c14) #22
  unreachable

bb6:                                              ; No predecessors!
  unreachable
}

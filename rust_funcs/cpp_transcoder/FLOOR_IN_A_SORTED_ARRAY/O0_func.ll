define i32 @f_gold(i64 %0, float %n, float %x) unnamed_addr #3 {
start:
  %_19 = alloca [16 x i8], align 8
  %iter = alloca [16 x i8], align 8
  %_0 = alloca [4 x i8], align 4
  %1 = alloca [8 x i8], align 8
  %arr = alloca [8 x i8], align 4
  store i64 %0, ptr %1, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %arr, ptr align 8 %1, i64 8, i1 false)
  %_7 = call i64 @llvm.fptoui.sat.i64.f32(float %n)
  %_8.0 = sub i64 %_7, 1
  %_8.1 = icmp ult i64 %_7, 1
  br i1 %_8.1, label %panic, label %bb1

bb1:                                              ; preds = %start
  %_9 = icmp ult i64 %_8.0, 2
  br i1 %_9, label %bb2, label %panic1

panic:                                            ; preds = %start
; call core::panicking::panic_const::panic_const_sub_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_sub_overflow17h134cc1a7f93654deE(ptr align 8 @alloc_45beecce42b5e7eacfa55cd29dd3e81f) #22
  unreachable

bb2:                                              ; preds = %bb1
  %2 = getelementptr inbounds nuw float, ptr %arr, i64 %_8.0
  %_5 = load float, ptr %2, align 4
  %_4 = fcmp oge float %x, %_5
  br i1 %_4, label %bb3, label %bb4

panic1:                                           ; preds = %bb1
; call core::panicking::panic_bounds_check
  call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 %_8.0, i64 2, ptr align 8 @alloc_ddddc5236d579213af3d11c3e4609488) #22
  unreachable

bb4:                                              ; preds = %bb2
  %3 = getelementptr inbounds nuw float, ptr %arr, i64 0
  %_12 = load float, ptr %3, align 4
  %_11 = fcmp olt float %x, %_12
  br i1 %_11, label %bb6, label %bb7

bb3:                                              ; preds = %bb2
  %_10 = fsub float %n, 1.000000e+00
  %4 = call i32 @llvm.fptosi.sat.i32.f32(float %_10)
  store i32 %4, ptr %_0, align 4
  br label %bb17

bb7:                                              ; preds = %bb4
  %_17 = call i64 @llvm.fptoui.sat.i64.f32(float %n)
; call <I as core::iter::traits::collect::IntoIterator>::into_iter
  %5 = call { i64, i64 } @"_ZN63_$LT$I$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17hb15417f901e3a31eE"(i64 1, i64 %_17) #20
  %_15.0 = extractvalue { i64, i64 } %5, 0
  %_15.1 = extractvalue { i64, i64 } %5, 1
  store i64 %_15.0, ptr %iter, align 8
  %6 = getelementptr inbounds i8, ptr %iter, i64 8
  store i64 %_15.1, ptr %6, align 8
  br label %bb9

bb6:                                              ; preds = %bb4
  store i32 -1, ptr %_0, align 4
  br label %bb17

bb9:                                              ; preds = %bb14, %bb7
; call core::iter::range::<impl core::iter::traits::iterator::Iterator for core::ops::range::Range<A>>::next
  %7 = call { i64, i64 } @"_ZN4core4iter5range101_$LT$impl$u20$core..iter..traits..iterator..Iterator$u20$for$u20$core..ops..range..Range$LT$A$GT$$GT$4next17h52dafcddfaefa3caE"(ptr align 8 %iter) #20
  %8 = extractvalue { i64, i64 } %7, 0
  %9 = extractvalue { i64, i64 } %7, 1
  store i64 %8, ptr %_19, align 8
  %10 = getelementptr inbounds i8, ptr %_19, i64 8
  store i64 %9, ptr %10, align 8
  %_21 = load i64, ptr %_19, align 8
  %11 = getelementptr inbounds i8, ptr %_19, i64 8
  %12 = load i64, ptr %11, align 8
  %13 = trunc nuw i64 %_21 to i1
  br i1 %13, label %bb12, label %bb13

bb12:                                             ; preds = %bb9
  %14 = getelementptr inbounds i8, ptr %_19, i64 8
  %i = load i64, ptr %14, align 8
  %_25 = icmp ult i64 %i, 2
  br i1 %_25, label %bb14, label %panic2

bb13:                                             ; preds = %bb9
  store i32 -1, ptr %_0, align 4
  br label %bb17

bb17:                                             ; preds = %bb3, %bb6, %bb16, %bb13
  %15 = load i32, ptr %_0, align 4
  ret i32 %15

bb14:                                             ; preds = %bb12
  %16 = getelementptr inbounds nuw float, ptr %arr, i64 %i
  %_24 = load float, ptr %16, align 4
  %_23 = fcmp ogt float %_24, %x
  br i1 %_23, label %bb15, label %bb9

panic2:                                           ; preds = %bb12
; call core::panicking::panic_bounds_check
  call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 %i, i64 2, ptr align 8 @alloc_29d946bca06e18c6f1736af1a776722b) #22
  unreachable

bb15:                                             ; preds = %bb14
  %_27.0 = sub i64 %i, 1
  %_27.1 = icmp ult i64 %i, 1
  br i1 %_27.1, label %panic3, label %bb16

bb16:                                             ; preds = %bb15
  %17 = trunc i64 %_27.0 to i32
  store i32 %17, ptr %_0, align 4
  br label %bb17

panic3:                                           ; preds = %bb15
; call core::panicking::panic_const::panic_const_sub_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_sub_overflow17h134cc1a7f93654deE(ptr align 8 @alloc_956e585e4190da7ec10dacc56f636501) #22
  unreachable

bb11:                                             ; No predecessors!
  unreachable
}

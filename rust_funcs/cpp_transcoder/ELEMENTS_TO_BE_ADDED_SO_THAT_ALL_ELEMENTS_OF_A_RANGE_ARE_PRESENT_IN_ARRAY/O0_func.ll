define i32 @f_gold(ptr align 4 %arr.0, i64 %arr.1, i32 %n) unnamed_addr #3 {
start:
  %_11 = alloca [16 x i8], align 8
  %iter = alloca [16 x i8], align 8
  %count = alloca [4 x i8], align 4
  store i32 0, ptr %count, align 4
; call alloc::slice::<impl [T]>::sort_by
  call void @"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by17h49c61478579fe639E"(ptr align 4 %arr.0, i64 %arr.1) #20
  %0 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %n, i32 1)
  %_9.0 = extractvalue { i32, i1 } %0, 0
  %_9.1 = extractvalue { i32, i1 } %0, 1
  br i1 %_9.1, label %panic, label %bb2

bb2:                                              ; preds = %start
  %_7 = sext i32 %_9.0 to i64
; call <I as core::iter::traits::collect::IntoIterator>::into_iter
  %1 = call { i64, i64 } @"_ZN63_$LT$I$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17h18d47d73e1f6e48cE"(i64 0, i64 %_7) #20
  %_5.0 = extractvalue { i64, i64 } %1, 0
  %_5.1 = extractvalue { i64, i64 } %1, 1
  store i64 %_5.0, ptr %iter, align 8
  %2 = getelementptr inbounds i8, ptr %iter, i64 8
  store i64 %_5.1, ptr %2, align 8
  br label %bb4

panic:                                            ; preds = %start
; call core::panicking::panic_const::panic_const_sub_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_sub_overflow17h134cc1a7f93654deE(ptr align 8 @alloc_d0c1445dece93dbe5aea52f9fa60a10a) #22
  unreachable

bb4:                                              ; preds = %bb20, %bb15, %bb11, %bb2
; call core::iter::range::<impl core::iter::traits::iterator::Iterator for core::ops::range::Range<A>>::next
  %3 = call { i64, i64 } @"_ZN4core4iter5range101_$LT$impl$u20$core..iter..traits..iterator..Iterator$u20$for$u20$core..ops..range..Range$LT$A$GT$$GT$4next17he88bda1dfa38bd78E"(ptr align 8 %iter) #20
  %4 = extractvalue { i64, i64 } %3, 0
  %5 = extractvalue { i64, i64 } %3, 1
  store i64 %4, ptr %_11, align 8
  %6 = getelementptr inbounds i8, ptr %_11, i64 8
  store i64 %5, ptr %6, align 8
  %_13 = load i64, ptr %_11, align 8
  %7 = getelementptr inbounds i8, ptr %_11, i64 8
  %8 = load i64, ptr %7, align 8
  %9 = trunc nuw i64 %_13 to i1
  br i1 %9, label %bb7, label %bb8

bb7:                                              ; preds = %bb4
  %10 = getelementptr inbounds i8, ptr %_11, i64 8
  %i = load i64, ptr %10, align 8
  %_19 = icmp ult i64 %i, %arr.1
  br i1 %_19, label %bb9, label %panic1

bb8:                                              ; preds = %bb4
  %_0 = load i32, ptr %count, align 4
  ret i32 %_0

bb9:                                              ; preds = %bb7
  %11 = getelementptr inbounds nuw float, ptr %arr.0, i64 %i
  %_16 = load float, ptr %11, align 4
  %_22.0 = add i64 %i, 1
  %_22.1 = icmp ult i64 %_22.0, %i
  br i1 %_22.1, label %panic2, label %bb10

panic1:                                           ; preds = %bb7
; call core::panicking::panic_bounds_check
  call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 %i, i64 %arr.1, ptr align 8 @alloc_c57df5a5e420aa3a935b0836c52d5722) #22
  unreachable

bb10:                                             ; preds = %bb9
  %_25 = icmp ult i64 %_22.0, %arr.1
  br i1 %_25, label %bb11, label %panic3

panic2:                                           ; preds = %bb9
; call core::panicking::panic_const::panic_const_add_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_91de916b83273b5842c5e90b66a50e66) #22
  unreachable

bb11:                                             ; preds = %bb10
  %12 = getelementptr inbounds nuw float, ptr %arr.0, i64 %_22.0
  %_20 = load float, ptr %12, align 4
  %_15 = fcmp une float %_16, %_20
  br i1 %_15, label %bb12, label %bb4

panic3:                                           ; preds = %bb10
; call core::panicking::panic_bounds_check
  call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 %_22.0, i64 %arr.1, ptr align 8 @alloc_fdf0cf6cbeffe0b665e615036846c3c5) #22
  unreachable

bb12:                                             ; preds = %bb11
  %_29.0 = add i64 %i, 1
  %_29.1 = icmp ult i64 %_29.0, %i
  br i1 %_29.1, label %panic4, label %bb13

bb13:                                             ; preds = %bb12
  %_32 = icmp ult i64 %_29.0, %arr.1
  br i1 %_32, label %bb14, label %panic5

panic4:                                           ; preds = %bb12
; call core::panicking::panic_const::panic_const_add_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_a1a5fec76d2994cf45958d79c82305d0) #22
  unreachable

bb14:                                             ; preds = %bb13
  %13 = getelementptr inbounds nuw float, ptr %arr.0, i64 %_29.0
  %_27 = load float, ptr %13, align 4
  %_37 = icmp ult i64 %i, %arr.1
  br i1 %_37, label %bb15, label %panic6

panic5:                                           ; preds = %bb13
; call core::panicking::panic_bounds_check
  call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 %_29.0, i64 %arr.1, ptr align 8 @alloc_aa6b5c264a55d8aa401bb8f19b55bb85) #22
  unreachable

bb15:                                             ; preds = %bb14
  %14 = getelementptr inbounds nuw float, ptr %arr.0, i64 %i
  %_34 = load float, ptr %14, align 4
  %_33 = fadd float %_34, 1.000000e+00
  %_26 = fcmp une float %_27, %_33
  br i1 %_26, label %bb16, label %bb4

panic6:                                           ; preds = %bb14
; call core::panicking::panic_bounds_check
  call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 %i, i64 %arr.1, ptr align 8 @alloc_bedaac983d75500f785dbb274ffe7d6c) #22
  unreachable

bb16:                                             ; preds = %bb15
  %_43.0 = add i64 %i, 1
  %_43.1 = icmp ult i64 %_43.0, %i
  br i1 %_43.1, label %panic7, label %bb17

bb17:                                             ; preds = %bb16
  %_46 = icmp ult i64 %_43.0, %arr.1
  br i1 %_46, label %bb18, label %panic8

panic7:                                           ; preds = %bb16
; call core::panicking::panic_const::panic_const_add_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_cbb2f2920c7811b8173a93fb5f056c21) #22
  unreachable

bb18:                                             ; preds = %bb17
  %15 = getelementptr inbounds nuw float, ptr %arr.0, i64 %_43.0
  %_41 = load float, ptr %15, align 4
  %_50 = icmp ult i64 %i, %arr.1
  br i1 %_50, label %bb19, label %panic9

panic8:                                           ; preds = %bb17
; call core::panicking::panic_bounds_check
  call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 %_43.0, i64 %arr.1, ptr align 8 @alloc_93259f1b78118a611af6ae0d25e9c28a) #22
  unreachable

bb19:                                             ; preds = %bb18
  %16 = getelementptr inbounds nuw float, ptr %arr.0, i64 %i
  %_47 = load float, ptr %16, align 4
  %_40 = fsub float %_41, %_47
  %_39 = fsub float %_40, 1.000000e+00
  %_38 = call i32 @llvm.fptosi.sat.i32.f32(float %_39)
  %17 = load i32, ptr %count, align 4
  %18 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %17, i32 %_38)
  %_51.0 = extractvalue { i32, i1 } %18, 0
  %_51.1 = extractvalue { i32, i1 } %18, 1
  br i1 %_51.1, label %panic10, label %bb20

panic9:                                           ; preds = %bb18
; call core::panicking::panic_bounds_check
  call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 %i, i64 %arr.1, ptr align 8 @alloc_b22021f039c596ede2630c518c550f9a) #22
  unreachable

bb20:                                             ; preds = %bb19
  store i32 %_51.0, ptr %count, align 4
  br label %bb4

panic10:                                          ; preds = %bb19
; call core::panicking::panic_const::panic_const_add_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_24eecac8cb507a52b9a9c971e4ffa75e) #22
  unreachable

bb6:                                              ; No predecessors!
  unreachable
}

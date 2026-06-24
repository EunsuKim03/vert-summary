define i32 @f_gold(i64 %0, i32 %size) unnamed_addr #3 {
start:
  %_11 = alloca [8 x i8], align 4
  %iter = alloca [8 x i8], align 4
  %s = alloca [4 x i8], align 4
  %end = alloca [4 x i8], align 4
  %start1 = alloca [4 x i8], align 4
  %max_ending_here = alloca [4 x i8], align 4
  %max_so_far = alloca [4 x i8], align 4
  %1 = alloca [8 x i8], align 8
  %a = alloca [8 x i8], align 4
  store i64 %0, ptr %1, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %a, ptr align 8 %1, i64 8, i1 false)
  store float 0xFFF0000000000000, ptr %max_so_far, align 4
  store float 0.000000e+00, ptr %max_ending_here, align 4
  store i32 0, ptr %start1, align 4
  store i32 0, ptr %end, align 4
  store i32 0, ptr %s, align 4
; call <I as core::iter::traits::collect::IntoIterator>::into_iter
  %2 = call { i32, i32 } @"_ZN63_$LT$I$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17h2fff8b878a6057deE"(i32 0, i32 %size) #20
  %_8.0 = extractvalue { i32, i32 } %2, 0
  %_8.1 = extractvalue { i32, i32 } %2, 1
  store i32 %_8.0, ptr %iter, align 4
  %3 = getelementptr inbounds i8, ptr %iter, i64 4
  store i32 %_8.1, ptr %3, align 4
  br label %bb2

bb2:                                              ; preds = %bb11, %bb9, %start
; call core::iter::range::<impl core::iter::traits::iterator::Iterator for core::ops::range::Range<A>>::next
  %4 = call { i32, i32 } @"_ZN4core4iter5range101_$LT$impl$u20$core..iter..traits..iterator..Iterator$u20$for$u20$core..ops..range..Range$LT$A$GT$$GT$4next17hd209d51f4726d5ceE"(ptr align 4 %iter) #20
  %5 = extractvalue { i32, i32 } %4, 0
  %6 = extractvalue { i32, i32 } %4, 1
  store i32 %5, ptr %_11, align 4
  %7 = getelementptr inbounds i8, ptr %_11, i64 4
  store i32 %6, ptr %7, align 4
  %8 = load i32, ptr %_11, align 4
  %9 = getelementptr inbounds i8, ptr %_11, i64 4
  %10 = load i32, ptr %9, align 4
  %_13 = zext i32 %8 to i64
  %11 = trunc nuw i64 %_13 to i1
  br i1 %11, label %bb5, label %bb6

bb5:                                              ; preds = %bb2
  %12 = getelementptr inbounds i8, ptr %_11, i64 4
  %i = load i32, ptr %12, align 4
  %_16 = sext i32 %i to i64
  %_17 = icmp ult i64 %_16, 2
  br i1 %_17, label %bb7, label %panic3

bb6:                                              ; preds = %bb2
  %_27 = load i32, ptr %end, align 4
  %_28 = load i32, ptr %start1, align 4
  %13 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %_27, i32 %_28)
  %_29.0 = extractvalue { i32, i1 } %13, 0
  %_29.1 = extractvalue { i32, i1 } %13, 1
  br i1 %_29.1, label %panic, label %bb12

bb12:                                             ; preds = %bb6
  %14 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %_29.0, i32 1)
  %_30.0 = extractvalue { i32, i1 } %14, 0
  %_30.1 = extractvalue { i32, i1 } %14, 1
  br i1 %_30.1, label %panic2, label %bb13

panic:                                            ; preds = %bb6
; call core::panicking::panic_const::panic_const_sub_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_sub_overflow17h134cc1a7f93654deE(ptr align 8 @alloc_bc895ab755ed4df3ad11a86d39562331) #22
  unreachable

bb13:                                             ; preds = %bb12
  ret i32 %_30.0

panic2:                                           ; preds = %bb12
; call core::panicking::panic_const::panic_const_add_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_bc895ab755ed4df3ad11a86d39562331) #22
  unreachable

bb7:                                              ; preds = %bb5
  %15 = getelementptr inbounds nuw float, ptr %a, i64 %_16
  %_15 = load float, ptr %15, align 4
  %16 = load float, ptr %max_ending_here, align 4
  %17 = fadd float %16, %_15
  store float %17, ptr %max_ending_here, align 4
  %_19 = load float, ptr %max_so_far, align 4
  %_20 = load float, ptr %max_ending_here, align 4
  %_18 = fcmp olt float %_19, %_20
  br i1 %_18, label %bb8, label %bb9

panic3:                                           ; preds = %bb5
; call core::panicking::panic_bounds_check
  call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 %_16, i64 2, ptr align 8 @alloc_e7281b3c6a3fe3dc4ced0f5af2ae6db2) #22
  unreachable

bb9:                                              ; preds = %bb8, %bb7
  %_24 = load float, ptr %max_ending_here, align 4
  %_23 = fcmp olt float %_24, 0.000000e+00
  br i1 %_23, label %bb10, label %bb2

bb8:                                              ; preds = %bb7
  %_21 = load float, ptr %max_ending_here, align 4
  store float %_21, ptr %max_so_far, align 4
  %_22 = load i32, ptr %s, align 4
  store i32 %_22, ptr %start1, align 4
  store i32 %i, ptr %end, align 4
  br label %bb9

bb10:                                             ; preds = %bb9
  store float 0.000000e+00, ptr %max_ending_here, align 4
  %18 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %i, i32 1)
  %_25.0 = extractvalue { i32, i1 } %18, 0
  %_25.1 = extractvalue { i32, i1 } %18, 1
  br i1 %_25.1, label %panic4, label %bb11

bb11:                                             ; preds = %bb10
  store i32 %_25.0, ptr %s, align 4
  br label %bb2

panic4:                                           ; preds = %bb10
; call core::panicking::panic_const::panic_const_add_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_f0ca94e1ec6fe56199a67098cedfb8fa) #22
  unreachable

bb4:                                              ; No predecessors!
  unreachable
}

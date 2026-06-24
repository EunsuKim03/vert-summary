define i32 @f_gold(ptr align 4 %arr.0, i64 %arr.1, float %n) unnamed_addr #3 {
start:
  %_10 = alloca [16 x i8], align 8
  %iter = alloca [16 x i8], align 8
  %cummulative_sum = alloca [4 x i8], align 4
  %count = alloca [4 x i8], align 4
  store i32 0, ptr %count, align 4
  store float 0.000000e+00, ptr %cummulative_sum, align 4
; call alloc::slice::<impl [T]>::sort_by
  call void @"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by17h18103ed960077f6dE"(ptr align 4 %arr.0, i64 %arr.1) #20
  %_8 = call i64 @llvm.fptoui.sat.i64.f32(float %n)
; call <I as core::iter::traits::collect::IntoIterator>::into_iter
  %0 = call { i64, i64 } @"_ZN63_$LT$I$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17hd7ce6328bbb22840E"(i64 0, i64 %_8) #20
  %_6.0 = extractvalue { i64, i64 } %0, 0
  %_6.1 = extractvalue { i64, i64 } %0, 1
  store i64 %_6.0, ptr %iter, align 8
  %1 = getelementptr inbounds i8, ptr %iter, i64 8
  store i64 %_6.1, ptr %1, align 8
  br label %bb3

bb3:                                              ; preds = %bb11, %bb8, %start
; call core::iter::range::<impl core::iter::traits::iterator::Iterator for core::ops::range::Range<A>>::next
  %2 = call { i64, i64 } @"_ZN4core4iter5range101_$LT$impl$u20$core..iter..traits..iterator..Iterator$u20$for$u20$core..ops..range..Range$LT$A$GT$$GT$4next17hf3b9f3ee0be434e0E"(ptr align 8 %iter) #20
  %3 = extractvalue { i64, i64 } %2, 0
  %4 = extractvalue { i64, i64 } %2, 1
  store i64 %3, ptr %_10, align 8
  %5 = getelementptr inbounds i8, ptr %_10, i64 8
  store i64 %4, ptr %5, align 8
  %_12 = load i64, ptr %_10, align 8
  %6 = getelementptr inbounds i8, ptr %_10, i64 8
  %7 = load i64, ptr %6, align 8
  %8 = trunc nuw i64 %_12 to i1
  br i1 %8, label %bb6, label %bb7

bb6:                                              ; preds = %bb3
  %9 = getelementptr inbounds i8, ptr %_10, i64 8
  %i = load i64, ptr %9, align 8
  %_18 = icmp ult i64 %i, %arr.1
  br i1 %_18, label %bb8, label %panic

bb7:                                              ; preds = %bb3
  %_0 = load i32, ptr %count, align 4
  ret i32 %_0

bb8:                                              ; preds = %bb6
  %10 = getelementptr inbounds nuw float, ptr %arr.0, i64 %i
  %_15 = load float, ptr %10, align 4
  %_19 = load float, ptr %cummulative_sum, align 4
  %_14 = fcmp oge float %_15, %_19
  br i1 %_14, label %bb9, label %bb3

panic:                                            ; preds = %bb6
; call core::panicking::panic_bounds_check
  call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 %i, i64 %arr.1, ptr align 8 @alloc_d1f3eb12d81bce7c64289104bf5c2fc3) #22
  unreachable

bb9:                                              ; preds = %bb8
  %11 = load i32, ptr %count, align 4
  %12 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %11, i32 1)
  %_20.0 = extractvalue { i32, i1 } %12, 0
  %_20.1 = extractvalue { i32, i1 } %12, 1
  br i1 %_20.1, label %panic1, label %bb10

bb10:                                             ; preds = %bb9
  store i32 %_20.0, ptr %count, align 4
  %_24 = icmp ult i64 %i, %arr.1
  br i1 %_24, label %bb11, label %panic2

panic1:                                           ; preds = %bb9
; call core::panicking::panic_const::panic_const_add_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_6107be7fb5b7bbfdb8ae99366774346a) #22
  unreachable

bb11:                                             ; preds = %bb10
  %13 = getelementptr inbounds nuw float, ptr %arr.0, i64 %i
  %_21 = load float, ptr %13, align 4
  %14 = load float, ptr %cummulative_sum, align 4
  %15 = fadd float %14, %_21
  store float %15, ptr %cummulative_sum, align 4
  br label %bb3

panic2:                                           ; preds = %bb10
; call core::panicking::panic_bounds_check
  call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 %i, i64 %arr.1, ptr align 8 @alloc_fb4cbe3636da838145d438d58357f812) #22
  unreachable

bb5:                                              ; No predecessors!
  unreachable
}

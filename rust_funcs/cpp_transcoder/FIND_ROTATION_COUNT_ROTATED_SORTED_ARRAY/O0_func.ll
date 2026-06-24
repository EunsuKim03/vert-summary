define i32 @f_gold(ptr align 4 %arr.0, i64 %arr.1, i32 %n) unnamed_addr #3 {
start:
  %_12 = alloca [8 x i8], align 4
  %iter = alloca [8 x i8], align 4
  %min_index = alloca [4 x i8], align 4
  %min = alloca [4 x i8], align 4
  %_7 = icmp ult i64 0, %arr.1
  br i1 %_7, label %bb1, label %panic

bb1:                                              ; preds = %start
  %0 = getelementptr inbounds nuw float, ptr %arr.0, i64 0
  %1 = load float, ptr %0, align 4
  store float %1, ptr %min, align 4
  store i32 0, ptr %min_index, align 4
; call <I as core::iter::traits::collect::IntoIterator>::into_iter
  %2 = call { i32, i32 } @"_ZN63_$LT$I$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17hd97a70093593fefdE"(i32 0, i32 %n) #20
  %_9.0 = extractvalue { i32, i32 } %2, 0
  %_9.1 = extractvalue { i32, i32 } %2, 1
  store i32 %_9.0, ptr %iter, align 4
  %3 = getelementptr inbounds i8, ptr %iter, i64 4
  store i32 %_9.1, ptr %3, align 4
  br label %bb3

panic:                                            ; preds = %start
; call core::panicking::panic_bounds_check
  call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 0, i64 %arr.1, ptr align 8 @alloc_b7c28014acd9faf9fd5683fe5e083162) #22
  unreachable

bb3:                                              ; preds = %bb10, %bb8, %bb1
; call core::iter::range::<impl core::iter::traits::iterator::Iterator for core::ops::range::Range<A>>::next
  %4 = call { i32, i32 } @"_ZN4core4iter5range101_$LT$impl$u20$core..iter..traits..iterator..Iterator$u20$for$u20$core..ops..range..Range$LT$A$GT$$GT$4next17hb2bff74c6e2f6b28E"(ptr align 4 %iter) #20
  %5 = extractvalue { i32, i32 } %4, 0
  %6 = extractvalue { i32, i32 } %4, 1
  store i32 %5, ptr %_12, align 4
  %7 = getelementptr inbounds i8, ptr %_12, i64 4
  store i32 %6, ptr %7, align 4
  %8 = load i32, ptr %_12, align 4
  %9 = getelementptr inbounds i8, ptr %_12, i64 4
  %10 = load i32, ptr %9, align 4
  %_14 = zext i32 %8 to i64
  %11 = trunc nuw i64 %_14 to i1
  br i1 %11, label %bb6, label %bb7

bb6:                                              ; preds = %bb3
  %12 = getelementptr inbounds i8, ptr %_12, i64 4
  %i = load i32, ptr %12, align 4
  %_17 = load float, ptr %min, align 4
  %_19 = sext i32 %i to i64
  %_22 = icmp ult i64 %_19, %arr.1
  br i1 %_22, label %bb8, label %panic1

bb7:                                              ; preds = %bb3
  %_0 = load i32, ptr %min_index, align 4
  ret i32 %_0

bb8:                                              ; preds = %bb6
  %13 = getelementptr inbounds nuw float, ptr %arr.0, i64 %_19
  %_18 = load float, ptr %13, align 4
  %_16 = fcmp ogt float %_17, %_18
  br i1 %_16, label %bb9, label %bb3

panic1:                                           ; preds = %bb6
; call core::panicking::panic_bounds_check
  call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 %_19, i64 %arr.1, ptr align 8 @alloc_f77dfb3f2a8be0aee7623674f246f789) #22
  unreachable

bb9:                                              ; preds = %bb8
  %_24 = sext i32 %i to i64
  %_27 = icmp ult i64 %_24, %arr.1
  br i1 %_27, label %bb10, label %panic2

bb10:                                             ; preds = %bb9
  %14 = getelementptr inbounds nuw float, ptr %arr.0, i64 %_24
  %_23 = load float, ptr %14, align 4
  store float %_23, ptr %min, align 4
  store i32 %i, ptr %min_index, align 4
  br label %bb3

panic2:                                           ; preds = %bb9
; call core::panicking::panic_bounds_check
  call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 %_24, i64 %arr.1, ptr align 8 @alloc_4fe822ab837c2c5a19c119a2f0b8ba87) #22
  unreachable

bb5:                                              ; No predecessors!
  unreachable
}

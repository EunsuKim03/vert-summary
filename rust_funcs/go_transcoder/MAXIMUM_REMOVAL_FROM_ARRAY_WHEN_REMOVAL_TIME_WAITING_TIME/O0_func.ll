define i32 @f_gold(i64 %0, i32 %n) unnamed_addr #3 {
start:
  %_11 = alloca [8 x i8], align 4
  %iter = alloca [8 x i8], align 4
  %cummulative_sum = alloca [4 x i8], align 4
  %count = alloca [4 x i8], align 4
  %1 = alloca [8 x i8], align 8
  %arr = alloca [8 x i8], align 4
  store i64 %0, ptr %1, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %arr, ptr align 8 %1, i64 8, i1 false)
  store i32 0, ptr %count, align 4
  store i32 0, ptr %cummulative_sum, align 4
; call alloc::slice::<impl [T]>::sort_by
  call void @"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by17h7ec0736a628cc870E"(ptr align 4 %arr, i64 2) #20
; call <I as core::iter::traits::collect::IntoIterator>::into_iter
  %2 = call { i32, i32 } @"_ZN63_$LT$I$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17h0e34d4793e9d4f2eE"(i32 0, i32 %n) #20
  %_8.0 = extractvalue { i32, i32 } %2, 0
  %_8.1 = extractvalue { i32, i32 } %2, 1
  store i32 %_8.0, ptr %iter, align 4
  %3 = getelementptr inbounds i8, ptr %iter, i64 4
  store i32 %_8.1, ptr %3, align 4
  br label %bb3

bb3:                                              ; preds = %bb12, %bb8, %start
; call core::iter::range::<impl core::iter::traits::iterator::Iterator for core::ops::range::Range<A>>::next
  %4 = call { i32, i32 } @"_ZN4core4iter5range101_$LT$impl$u20$core..iter..traits..iterator..Iterator$u20$for$u20$core..ops..range..Range$LT$A$GT$$GT$4next17h5cb1173a278e890aE"(ptr align 4 %iter) #20
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
  br i1 %11, label %bb6, label %bb7

bb6:                                              ; preds = %bb3
  %12 = getelementptr inbounds i8, ptr %_11, i64 4
  %i = load i32, ptr %12, align 4
  %_17 = sext i32 %i to i64
  %_18 = icmp ult i64 %_17, 2
  br i1 %_18, label %bb8, label %panic

bb7:                                              ; preds = %bb3
  %_0 = load i32, ptr %count, align 4
  ret i32 %_0

bb8:                                              ; preds = %bb6
  %13 = getelementptr inbounds nuw i32, ptr %arr, i64 %_17
  %_16 = load i32, ptr %13, align 4
  %_19 = load i32, ptr %cummulative_sum, align 4
  %_15 = icmp sge i32 %_16, %_19
  br i1 %_15, label %bb9, label %bb3

panic:                                            ; preds = %bb6
; call core::panicking::panic_bounds_check
  call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 %_17, i64 2, ptr align 8 @alloc_dc15745a3f3806907ee1692fa8aa4bf5) #22
  unreachable

bb9:                                              ; preds = %bb8
  %14 = load i32, ptr %count, align 4
  %15 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %14, i32 1)
  %_20.0 = extractvalue { i32, i1 } %15, 0
  %_20.1 = extractvalue { i32, i1 } %15, 1
  br i1 %_20.1, label %panic1, label %bb10

bb10:                                             ; preds = %bb9
  store i32 %_20.0, ptr %count, align 4
  %_22 = sext i32 %i to i64
  %_23 = icmp ult i64 %_22, 2
  br i1 %_23, label %bb11, label %panic2

panic1:                                           ; preds = %bb9
; call core::panicking::panic_const::panic_const_add_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_25d19e9adc49f35f00d0ec3ee44d4009) #22
  unreachable

bb11:                                             ; preds = %bb10
  %16 = getelementptr inbounds nuw i32, ptr %arr, i64 %_22
  %_21 = load i32, ptr %16, align 4
  %17 = load i32, ptr %cummulative_sum, align 4
  %18 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %17, i32 %_21)
  %_24.0 = extractvalue { i32, i1 } %18, 0
  %_24.1 = extractvalue { i32, i1 } %18, 1
  br i1 %_24.1, label %panic3, label %bb12

panic2:                                           ; preds = %bb10
; call core::panicking::panic_bounds_check
  call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 %_22, i64 2, ptr align 8 @alloc_7ccc1d74280dc5f384d6b5a5dea8eef8) #22
  unreachable

bb12:                                             ; preds = %bb11
  store i32 %_24.0, ptr %cummulative_sum, align 4
  br label %bb3

panic3:                                           ; preds = %bb11
; call core::panicking::panic_const::panic_const_add_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_164b2ce263bbbeb035b268012af62d94) #22
  unreachable

bb5:                                              ; No predecessors!
  unreachable
}

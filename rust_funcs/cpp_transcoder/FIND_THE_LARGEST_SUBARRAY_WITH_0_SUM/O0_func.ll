define i32 @f_gold(i64 %0, i32 %n) unnamed_addr #3 {
start:
  %_15 = alloca [8 x i8], align 4
  %iter1 = alloca [8 x i8], align 4
  %curr_sum = alloca [4 x i8], align 4
  %_7 = alloca [8 x i8], align 4
  %iter = alloca [8 x i8], align 4
  %max_len = alloca [4 x i8], align 4
  %1 = alloca [8 x i8], align 8
  %arr = alloca [8 x i8], align 4
  store i64 %0, ptr %1, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %arr, ptr align 8 %1, i64 8, i1 false)
  store i32 0, ptr %max_len, align 4
; call <I as core::iter::traits::collect::IntoIterator>::into_iter
  %2 = call { i32, i32 } @"_ZN63_$LT$I$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17ha3f8604f21a8b47fE"(i32 0, i32 %n) #20
  %_4.0 = extractvalue { i32, i32 } %2, 0
  %_4.1 = extractvalue { i32, i32 } %2, 1
  store i32 %_4.0, ptr %iter, align 4
  %3 = getelementptr inbounds i8, ptr %iter, i64 4
  store i32 %_4.1, ptr %3, align 4
  br label %bb2

bb2:                                              ; preds = %bb8, %start
; call core::iter::range::<impl core::iter::traits::iterator::Iterator for core::ops::range::Range<A>>::next
  %4 = call { i32, i32 } @"_ZN4core4iter5range101_$LT$impl$u20$core..iter..traits..iterator..Iterator$u20$for$u20$core..ops..range..Range$LT$A$GT$$GT$4next17habaaed208192fde9E"(ptr align 4 %iter) #20
  %5 = extractvalue { i32, i32 } %4, 0
  %6 = extractvalue { i32, i32 } %4, 1
  store i32 %5, ptr %_7, align 4
  %7 = getelementptr inbounds i8, ptr %_7, i64 4
  store i32 %6, ptr %7, align 4
  %8 = load i32, ptr %_7, align 4
  %9 = getelementptr inbounds i8, ptr %_7, i64 4
  %10 = load i32, ptr %9, align 4
  %_9 = zext i32 %8 to i64
  %11 = trunc nuw i64 %_9 to i1
  br i1 %11, label %bb5, label %bb6

bb5:                                              ; preds = %bb2
  %12 = getelementptr inbounds i8, ptr %_7, i64 4
  %i = load i32, ptr %12, align 4
  store float 0.000000e+00, ptr %curr_sum, align 4
; call <I as core::iter::traits::collect::IntoIterator>::into_iter
  %13 = call { i32, i32 } @"_ZN63_$LT$I$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17ha3f8604f21a8b47fE"(i32 %i, i32 %n) #20
  %_12.0 = extractvalue { i32, i32 } %13, 0
  %_12.1 = extractvalue { i32, i32 } %13, 1
  store i32 %_12.0, ptr %iter1, align 4
  %14 = getelementptr inbounds i8, ptr %iter1, i64 4
  store i32 %_12.1, ptr %14, align 4
  br label %bb8

bb6:                                              ; preds = %bb2
  %_0 = load i32, ptr %max_len, align 4
  ret i32 %_0

bb8:                                              ; preds = %bb14, %bb11, %bb5
; call core::iter::range::<impl core::iter::traits::iterator::Iterator for core::ops::range::Range<A>>::next
  %15 = call { i32, i32 } @"_ZN4core4iter5range101_$LT$impl$u20$core..iter..traits..iterator..Iterator$u20$for$u20$core..ops..range..Range$LT$A$GT$$GT$4next17habaaed208192fde9E"(ptr align 4 %iter1) #20
  %16 = extractvalue { i32, i32 } %15, 0
  %17 = extractvalue { i32, i32 } %15, 1
  store i32 %16, ptr %_15, align 4
  %18 = getelementptr inbounds i8, ptr %_15, i64 4
  store i32 %17, ptr %18, align 4
  %19 = load i32, ptr %_15, align 4
  %20 = getelementptr inbounds i8, ptr %_15, i64 4
  %21 = load i32, ptr %20, align 4
  %_17 = zext i32 %19 to i64
  %22 = trunc nuw i64 %_17 to i1
  br i1 %22, label %bb10, label %bb2

bb10:                                             ; preds = %bb8
  %23 = getelementptr inbounds i8, ptr %_15, i64 4
  %j = load i32, ptr %23, align 4
  %_20 = sext i32 %j to i64
  %_21 = icmp ult i64 %_20, 2
  br i1 %_21, label %bb11, label %panic

bb11:                                             ; preds = %bb10
  %24 = getelementptr inbounds nuw float, ptr %arr, i64 %_20
  %_19 = load float, ptr %24, align 4
  %25 = load float, ptr %curr_sum, align 4
  %26 = fadd float %25, %_19
  store float %26, ptr %curr_sum, align 4
  %_23 = load float, ptr %curr_sum, align 4
  %_22 = fcmp oeq float %_23, 0.000000e+00
  br i1 %_22, label %bb12, label %bb8

panic:                                            ; preds = %bb10
; call core::panicking::panic_bounds_check
  call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 %_20, i64 2, ptr align 8 @alloc_5f86f6e9dcadb26fa650756119ae211b) #22
  unreachable

bb12:                                             ; preds = %bb11
  %_25 = load i32, ptr %max_len, align 4
  %27 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %j, i32 %i)
  %_28.0 = extractvalue { i32, i1 } %27, 0
  %_28.1 = extractvalue { i32, i1 } %27, 1
  br i1 %_28.1, label %panic2, label %bb13

bb13:                                             ; preds = %bb12
  %28 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %_28.0, i32 1)
  %_29.0 = extractvalue { i32, i1 } %28, 0
  %_29.1 = extractvalue { i32, i1 } %28, 1
  br i1 %_29.1, label %panic3, label %bb14

panic2:                                           ; preds = %bb12
; call core::panicking::panic_const::panic_const_sub_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_sub_overflow17h134cc1a7f93654deE(ptr align 8 @alloc_2e1d1e92c8c7d3fd4689457db066f58d) #22
  unreachable

bb14:                                             ; preds = %bb13
; call core::cmp::Ord::max
  %_24 = call i32 @_ZN4core3cmp3Ord3max17haad6b260c6c526ddE(i32 %_25, i32 %_29.0) #20
  store i32 %_24, ptr %max_len, align 4
  br label %bb8

panic3:                                           ; preds = %bb13
; call core::panicking::panic_const::panic_const_add_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_2e1d1e92c8c7d3fd4689457db066f58d) #22
  unreachable

bb4:                                              ; No predecessors!
  unreachable
}

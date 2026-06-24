define i32 @f_gold(i64 %0, i32 %n) unnamed_addr #3 {
start:
  %_22 = alloca [8 x i8], align 4
  %iter1 = alloca [8 x i8], align 4
  %_10 = alloca [8 x i8], align 4
  %iter = alloca [8 x i8], align 4
  %x2 = alloca [4 x i8], align 4
  %x1 = alloca [4 x i8], align 4
  %1 = alloca [8 x i8], align 8
  %a = alloca [8 x i8], align 4
  store i64 %0, ptr %1, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %a, ptr align 8 %1, i64 8, i1 false)
  %2 = getelementptr inbounds nuw i32, ptr %a, i64 0
  %3 = load i32, ptr %2, align 4
  store i32 %3, ptr %x1, align 4
  store i32 1, ptr %x2, align 4
; call <I as core::iter::traits::collect::IntoIterator>::into_iter
  %4 = call { i32, i32 } @"_ZN63_$LT$I$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17h710549172ff30134E"(i32 1, i32 %n) #20
  %_7.0 = extractvalue { i32, i32 } %4, 0
  %_7.1 = extractvalue { i32, i32 } %4, 1
  store i32 %_7.0, ptr %iter, align 4
  %5 = getelementptr inbounds i8, ptr %iter, i64 4
  store i32 %_7.1, ptr %5, align 4
  br label %bb3

bb3:                                              ; preds = %bb8, %start
; call core::iter::range::<impl core::iter::traits::iterator::Iterator for core::ops::range::Range<A>>::next
  %6 = call { i32, i32 } @"_ZN4core4iter5range101_$LT$impl$u20$core..iter..traits..iterator..Iterator$u20$for$u20$core..ops..range..Range$LT$A$GT$$GT$4next17ha1f2103d3872b1c4E"(ptr align 4 %iter) #20
  %7 = extractvalue { i32, i32 } %6, 0
  %8 = extractvalue { i32, i32 } %6, 1
  store i32 %7, ptr %_10, align 4
  %9 = getelementptr inbounds i8, ptr %_10, i64 4
  store i32 %8, ptr %9, align 4
  %10 = load i32, ptr %_10, align 4
  %11 = getelementptr inbounds i8, ptr %_10, i64 4
  %12 = load i32, ptr %11, align 4
  %_12 = zext i32 %10 to i64
  %13 = trunc nuw i64 %_12 to i1
  br i1 %13, label %bb6, label %bb7

bb6:                                              ; preds = %bb3
  %14 = getelementptr inbounds i8, ptr %_10, i64 4
  %i2 = load i32, ptr %14, align 4
  %_15 = sext i32 %i2 to i64
  %_16 = icmp ult i64 %_15, 2
  br i1 %_16, label %bb8, label %panic3

bb7:                                              ; preds = %bb3
  %15 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %n, i32 2)
  %_20.0 = extractvalue { i32, i1 } %15, 0
  %_20.1 = extractvalue { i32, i1 } %15, 1
  br i1 %_20.1, label %panic, label %bb9

bb9:                                              ; preds = %bb7
; call <I as core::iter::traits::collect::IntoIterator>::into_iter
  %16 = call { i32, i32 } @"_ZN63_$LT$I$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17h710549172ff30134E"(i32 2, i32 %_20.0) #20
  %_17.0 = extractvalue { i32, i32 } %16, 0
  %_17.1 = extractvalue { i32, i32 } %16, 1
  store i32 %_17.0, ptr %iter1, align 4
  %17 = getelementptr inbounds i8, ptr %iter1, i64 4
  store i32 %_17.1, ptr %17, align 4
  br label %bb11

panic:                                            ; preds = %bb7
; call core::panicking::panic_const::panic_const_add_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_ae82c9faa0f753060a3fc0d2abcf845f) #22
  unreachable

bb11:                                             ; preds = %bb13, %bb9
; call core::iter::range::<impl core::iter::traits::iterator::Iterator for core::ops::range::Range<A>>::next
  %18 = call { i32, i32 } @"_ZN4core4iter5range101_$LT$impl$u20$core..iter..traits..iterator..Iterator$u20$for$u20$core..ops..range..Range$LT$A$GT$$GT$4next17ha1f2103d3872b1c4E"(ptr align 4 %iter1) #20
  %19 = extractvalue { i32, i32 } %18, 0
  %20 = extractvalue { i32, i32 } %18, 1
  store i32 %19, ptr %_22, align 4
  %21 = getelementptr inbounds i8, ptr %_22, i64 4
  store i32 %20, ptr %21, align 4
  %22 = load i32, ptr %_22, align 4
  %23 = getelementptr inbounds i8, ptr %_22, i64 4
  %24 = load i32, ptr %23, align 4
  %_24 = zext i32 %22 to i64
  %25 = trunc nuw i64 %_24 to i1
  br i1 %25, label %bb13, label %bb14

bb13:                                             ; preds = %bb11
  %26 = getelementptr inbounds i8, ptr %_22, i64 4
  %i = load i32, ptr %26, align 4
  %27 = load i32, ptr %x2, align 4
  %28 = xor i32 %27, %i
  store i32 %28, ptr %x2, align 4
  br label %bb11

bb14:                                             ; preds = %bb11
  %_26 = load i32, ptr %x1, align 4
  %_27 = load i32, ptr %x2, align 4
  %_0 = xor i32 %_26, %_27
  ret i32 %_0

bb8:                                              ; preds = %bb6
  %29 = getelementptr inbounds nuw i32, ptr %a, i64 %_15
  %_14 = load i32, ptr %29, align 4
  %30 = load i32, ptr %x1, align 4
  %31 = xor i32 %30, %_14
  store i32 %31, ptr %x1, align 4
  br label %bb3

panic3:                                           ; preds = %bb6
; call core::panicking::panic_bounds_check
  call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 %_15, i64 2, ptr align 8 @alloc_f41ef219a0795eef5f32ee9179de7056) #22
  unreachable

bb5:                                              ; No predecessors!
  unreachable
}

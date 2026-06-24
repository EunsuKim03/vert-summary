define i32 @f_gold(i64 %0, i32 %n) unnamed_addr #3 {
start:
  %_9 = alloca [8 x i8], align 4
  %iter = alloca [8 x i8], align 4
  %twos = alloca [4 x i8], align 4
  %ones = alloca [4 x i8], align 4
  %1 = alloca [8 x i8], align 8
  %arr = alloca [8 x i8], align 4
  store i64 %0, ptr %1, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %arr, ptr align 8 %1, i64 8, i1 false)
  store i32 0, ptr %ones, align 4
  store i32 0, ptr %twos, align 4
; call <I as core::iter::traits::collect::IntoIterator>::into_iter
  %2 = call { i32, i32 } @"_ZN63_$LT$I$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17h2dabe1d0aaf71990E"(i32 0, i32 %n) #20
  %_6.0 = extractvalue { i32, i32 } %2, 0
  %_6.1 = extractvalue { i32, i32 } %2, 1
  store i32 %_6.0, ptr %iter, align 4
  %3 = getelementptr inbounds i8, ptr %iter, i64 4
  store i32 %_6.1, ptr %3, align 4
  br label %bb2

bb2:                                              ; preds = %bb8, %start
; call core::iter::range::<impl core::iter::traits::iterator::Iterator for core::ops::range::Range<A>>::next
  %4 = call { i32, i32 } @"_ZN4core4iter5range101_$LT$impl$u20$core..iter..traits..iterator..Iterator$u20$for$u20$core..ops..range..Range$LT$A$GT$$GT$4next17h878c8b4634fddb91E"(ptr align 4 %iter) #20
  %5 = extractvalue { i32, i32 } %4, 0
  %6 = extractvalue { i32, i32 } %4, 1
  store i32 %5, ptr %_9, align 4
  %7 = getelementptr inbounds i8, ptr %_9, i64 4
  store i32 %6, ptr %7, align 4
  %8 = load i32, ptr %_9, align 4
  %9 = getelementptr inbounds i8, ptr %_9, i64 4
  %10 = load i32, ptr %9, align 4
  %_11 = zext i32 %8 to i64
  %11 = trunc nuw i64 %_11 to i1
  br i1 %11, label %bb5, label %bb6

bb5:                                              ; preds = %bb2
  %12 = getelementptr inbounds i8, ptr %_9, i64 4
  %i = load i32, ptr %12, align 4
  %_13 = load i32, ptr %twos, align 4
  %_15 = load i32, ptr %ones, align 4
  %_17 = sext i32 %i to i64
  %_18 = icmp ult i64 %_17, 2
  br i1 %_18, label %bb7, label %panic

bb6:                                              ; preds = %bb2
  %_0 = load i32, ptr %ones, align 4
  ret i32 %_0

bb7:                                              ; preds = %bb5
  %13 = getelementptr inbounds nuw i32, ptr %arr, i64 %_17
  %_16 = load i32, ptr %13, align 4
  %_14 = and i32 %_15, %_16
  %14 = or i32 %_13, %_14
  store i32 %14, ptr %twos, align 4
  %_19 = load i32, ptr %ones, align 4
  %_21 = sext i32 %i to i64
  %_22 = icmp ult i64 %_21, 2
  br i1 %_22, label %bb8, label %panic1

panic:                                            ; preds = %bb5
; call core::panicking::panic_bounds_check
  call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 %_17, i64 2, ptr align 8 @alloc_a0dd9d73dff2b639580cebb588e83844) #22
  unreachable

bb8:                                              ; preds = %bb7
  %15 = getelementptr inbounds nuw i32, ptr %arr, i64 %_21
  %_20 = load i32, ptr %15, align 4
  %16 = xor i32 %_19, %_20
  store i32 %16, ptr %ones, align 4
  %_24 = load i32, ptr %ones, align 4
  %_25 = load i32, ptr %twos, align 4
  %_23 = and i32 %_24, %_25
  %common_bit_mask = xor i32 %_23, -1
  %17 = load i32, ptr %ones, align 4
  %18 = and i32 %17, %common_bit_mask
  store i32 %18, ptr %ones, align 4
  %19 = load i32, ptr %twos, align 4
  %20 = and i32 %19, %common_bit_mask
  store i32 %20, ptr %twos, align 4
  br label %bb2

panic1:                                           ; preds = %bb7
; call core::panicking::panic_bounds_check
  call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 %_21, i64 2, ptr align 8 @alloc_1d8e6f4484e36a5f7e87d4c8781e3355) #22
  unreachable

bb4:                                              ; No predecessors!
  unreachable
}

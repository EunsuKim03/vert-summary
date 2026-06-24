define i32 @f_gold(i64 %0, i64 %1, i32 %n) unnamed_addr #3 {
start:
  %_7 = alloca [8 x i8], align 4
  %iter = alloca [8 x i8], align 4
  %_0 = alloca [4 x i8], align 4
  %2 = alloca [8 x i8], align 8
  %arr2 = alloca [8 x i8], align 4
  %3 = alloca [8 x i8], align 8
  %arr1 = alloca [8 x i8], align 4
  store i64 %0, ptr %3, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %arr1, ptr align 8 %3, i64 8, i1 false)
  store i64 %1, ptr %2, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %arr2, ptr align 8 %2, i64 8, i1 false)
; call <I as core::iter::traits::collect::IntoIterator>::into_iter
  %4 = call { i32, i32 } @"_ZN63_$LT$I$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17he1b9c097b600ffb7E"(i32 0, i32 %n) #20
  %_4.0 = extractvalue { i32, i32 } %4, 0
  %_4.1 = extractvalue { i32, i32 } %4, 1
  store i32 %_4.0, ptr %iter, align 4
  %5 = getelementptr inbounds i8, ptr %iter, i64 4
  store i32 %_4.1, ptr %5, align 4
  br label %bb2

bb2:                                              ; preds = %bb8, %start
; call core::iter::range::<impl core::iter::traits::iterator::Iterator for core::ops::range::Range<A>>::next
  %6 = call { i32, i32 } @"_ZN4core4iter5range101_$LT$impl$u20$core..iter..traits..iterator..Iterator$u20$for$u20$core..ops..range..Range$LT$A$GT$$GT$4next17h23ce77c4e34255a3E"(ptr align 4 %iter) #20
  %7 = extractvalue { i32, i32 } %6, 0
  %8 = extractvalue { i32, i32 } %6, 1
  store i32 %7, ptr %_7, align 4
  %9 = getelementptr inbounds i8, ptr %_7, i64 4
  store i32 %8, ptr %9, align 4
  %10 = load i32, ptr %_7, align 4
  %11 = getelementptr inbounds i8, ptr %_7, i64 4
  %12 = load i32, ptr %11, align 4
  %_9 = zext i32 %10 to i64
  %13 = trunc nuw i64 %_9 to i1
  br i1 %13, label %bb5, label %bb6

bb5:                                              ; preds = %bb2
  %14 = getelementptr inbounds i8, ptr %_7, i64 4
  %i = load i32, ptr %14, align 4
  %_13 = sext i32 %i to i64
  %_14 = icmp ult i64 %_13, 2
  br i1 %_14, label %bb7, label %panic

bb6:                                              ; preds = %bb2
  store i32 %n, ptr %_0, align 4
  br label %bb10

bb10:                                             ; preds = %bb9, %bb6
  %15 = load i32, ptr %_0, align 4
  ret i32 %15

bb7:                                              ; preds = %bb5
  %16 = getelementptr inbounds nuw float, ptr %arr1, i64 %_13
  %_12 = load float, ptr %16, align 4
  %_16 = sext i32 %i to i64
  %_17 = icmp ult i64 %_16, 2
  br i1 %_17, label %bb8, label %panic1

panic:                                            ; preds = %bb5
; call core::panicking::panic_bounds_check
  call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 %_13, i64 2, ptr align 8 @alloc_bd94272881185126da3e3498a19d69ed) #22
  unreachable

bb8:                                              ; preds = %bb7
  %17 = getelementptr inbounds nuw float, ptr %arr2, i64 %_16
  %_15 = load float, ptr %17, align 4
  %_11 = fcmp une float %_12, %_15
  br i1 %_11, label %bb9, label %bb2

panic1:                                           ; preds = %bb7
; call core::panicking::panic_bounds_check
  call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 %_16, i64 2, ptr align 8 @alloc_6548bf3d6cc18fa4338b3565ff335b48) #22
  unreachable

bb9:                                              ; preds = %bb8
  store i32 %i, ptr %_0, align 4
  br label %bb10

bb4:                                              ; No predecessors!
  unreachable
}

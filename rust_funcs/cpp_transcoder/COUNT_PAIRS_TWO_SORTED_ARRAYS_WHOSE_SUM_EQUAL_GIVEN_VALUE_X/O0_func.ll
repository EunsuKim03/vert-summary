define i32 @f_gold(i64 %0, i64 %1, i32 %m, i32 %n, i32 %x) unnamed_addr #3 {
start:
  %_17 = alloca [8 x i8], align 4
  %iter1 = alloca [8 x i8], align 4
  %_10 = alloca [8 x i8], align 4
  %iter = alloca [8 x i8], align 4
  %count = alloca [4 x i8], align 4
  %2 = alloca [8 x i8], align 8
  %arr2 = alloca [8 x i8], align 4
  %3 = alloca [8 x i8], align 8
  %arr1 = alloca [8 x i8], align 4
  store i64 %0, ptr %3, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %arr1, ptr align 8 %3, i64 8, i1 false)
  store i64 %1, ptr %2, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %arr2, ptr align 8 %2, i64 8, i1 false)
  store i32 0, ptr %count, align 4
; call <I as core::iter::traits::collect::IntoIterator>::into_iter
  %4 = call { i32, i32 } @"_ZN63_$LT$I$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17ha14801ed87e15946E"(i32 0, i32 %m) #20
  %_7.0 = extractvalue { i32, i32 } %4, 0
  %_7.1 = extractvalue { i32, i32 } %4, 1
  store i32 %_7.0, ptr %iter, align 4
  %5 = getelementptr inbounds i8, ptr %iter, i64 4
  store i32 %_7.1, ptr %5, align 4
  br label %bb2

bb2:                                              ; preds = %bb8, %start
; call core::iter::range::<impl core::iter::traits::iterator::Iterator for core::ops::range::Range<A>>::next
  %6 = call { i32, i32 } @"_ZN4core4iter5range101_$LT$impl$u20$core..iter..traits..iterator..Iterator$u20$for$u20$core..ops..range..Range$LT$A$GT$$GT$4next17hd10b44386a822ee0E"(ptr align 4 %iter) #20
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
  br i1 %13, label %bb5, label %bb6

bb5:                                              ; preds = %bb2
  %14 = getelementptr inbounds i8, ptr %_10, i64 4
  %i = load i32, ptr %14, align 4
; call <I as core::iter::traits::collect::IntoIterator>::into_iter
  %15 = call { i32, i32 } @"_ZN63_$LT$I$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17ha14801ed87e15946E"(i32 0, i32 %n) #20
  %_14.0 = extractvalue { i32, i32 } %15, 0
  %_14.1 = extractvalue { i32, i32 } %15, 1
  store i32 %_14.0, ptr %iter1, align 4
  %16 = getelementptr inbounds i8, ptr %iter1, i64 4
  store i32 %_14.1, ptr %16, align 4
  br label %bb8

bb6:                                              ; preds = %bb2
  %_0 = load i32, ptr %count, align 4
  ret i32 %_0

bb8:                                              ; preds = %bb15, %bb13, %bb5
; call core::iter::range::<impl core::iter::traits::iterator::Iterator for core::ops::range::Range<A>>::next
  %17 = call { i32, i32 } @"_ZN4core4iter5range101_$LT$impl$u20$core..iter..traits..iterator..Iterator$u20$for$u20$core..ops..range..Range$LT$A$GT$$GT$4next17hd10b44386a822ee0E"(ptr align 4 %iter1) #20
  %18 = extractvalue { i32, i32 } %17, 0
  %19 = extractvalue { i32, i32 } %17, 1
  store i32 %18, ptr %_17, align 4
  %20 = getelementptr inbounds i8, ptr %_17, i64 4
  store i32 %19, ptr %20, align 4
  %21 = load i32, ptr %_17, align 4
  %22 = getelementptr inbounds i8, ptr %_17, i64 4
  %23 = load i32, ptr %22, align 4
  %_19 = zext i32 %21 to i64
  %24 = trunc nuw i64 %_19 to i1
  br i1 %24, label %bb10, label %bb2

bb10:                                             ; preds = %bb8
  %25 = getelementptr inbounds i8, ptr %_17, i64 4
  %j = load i32, ptr %25, align 4
  %_24 = sext i32 %i to i64
  %_25 = icmp ult i64 %_24, 2
  br i1 %_25, label %bb11, label %panic

bb11:                                             ; preds = %bb10
  %26 = getelementptr inbounds nuw i32, ptr %arr1, i64 %_24
  %_23 = load i32, ptr %26, align 4
  %_27 = sext i32 %j to i64
  %_28 = icmp ult i64 %_27, 2
  br i1 %_28, label %bb12, label %panic2

panic:                                            ; preds = %bb10
; call core::panicking::panic_bounds_check
  call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 %_24, i64 2, ptr align 8 @alloc_056eabce1a0918256455f9fa61bf9ba8) #22
  unreachable

bb12:                                             ; preds = %bb11
  %27 = getelementptr inbounds nuw i32, ptr %arr2, i64 %_27
  %_26 = load i32, ptr %27, align 4
  %28 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %_23, i32 %_26)
  %_29.0 = extractvalue { i32, i1 } %28, 0
  %_29.1 = extractvalue { i32, i1 } %28, 1
  br i1 %_29.1, label %panic3, label %bb13

panic2:                                           ; preds = %bb11
; call core::panicking::panic_bounds_check
  call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 %_27, i64 2, ptr align 8 @alloc_9743d7c4b95b60ece2bab1ea6366e0d4) #22
  unreachable

bb13:                                             ; preds = %bb12
  %_21 = icmp eq i32 %_29.0, %x
  br i1 %_21, label %bb14, label %bb8

panic3:                                           ; preds = %bb12
; call core::panicking::panic_const::panic_const_add_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_056eabce1a0918256455f9fa61bf9ba8) #22
  unreachable

bb14:                                             ; preds = %bb13
  %29 = load i32, ptr %count, align 4
  %30 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %29, i32 1)
  %_30.0 = extractvalue { i32, i1 } %30, 0
  %_30.1 = extractvalue { i32, i1 } %30, 1
  br i1 %_30.1, label %panic4, label %bb15

bb15:                                             ; preds = %bb14
  store i32 %_30.0, ptr %count, align 4
  br label %bb8

panic4:                                           ; preds = %bb14
; call core::panicking::panic_const::panic_const_add_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_dcf8717bdb8508c916a773b0c2ff487a) #22
  unreachable

bb4:                                              ; No predecessors!
  unreachable
}

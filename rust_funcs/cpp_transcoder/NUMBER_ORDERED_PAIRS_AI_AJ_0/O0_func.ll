define i32 @f_gold(ptr align 4 %a.0, i64 %a.1, i32 %n) unnamed_addr #3 {
start:
  %_16 = alloca [8 x i8], align 4
  %iter1 = alloca [8 x i8], align 4
  %_7 = alloca [8 x i8], align 4
  %iter = alloca [8 x i8], align 4
  %count = alloca [4 x i8], align 4
  store i32 0, ptr %count, align 4
; call <I as core::iter::traits::collect::IntoIterator>::into_iter
  %0 = call { i32, i32 } @"_ZN63_$LT$I$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17ha6dabb3f919f6cf8E"(i32 0, i32 %n) #20
  %_4.0 = extractvalue { i32, i32 } %0, 0
  %_4.1 = extractvalue { i32, i32 } %0, 1
  store i32 %_4.0, ptr %iter, align 4
  %1 = getelementptr inbounds i8, ptr %iter, i64 4
  store i32 %_4.1, ptr %1, align 4
  br label %bb2

bb2:                                              ; preds = %bb9, %start
; call core::iter::range::<impl core::iter::traits::iterator::Iterator for core::ops::range::Range<A>>::next
  %2 = call { i32, i32 } @"_ZN4core4iter5range101_$LT$impl$u20$core..iter..traits..iterator..Iterator$u20$for$u20$core..ops..range..Range$LT$A$GT$$GT$4next17h9e63adb5bca9dc33E"(ptr align 4 %iter) #20
  %3 = extractvalue { i32, i32 } %2, 0
  %4 = extractvalue { i32, i32 } %2, 1
  store i32 %3, ptr %_7, align 4
  %5 = getelementptr inbounds i8, ptr %_7, i64 4
  store i32 %4, ptr %5, align 4
  %6 = load i32, ptr %_7, align 4
  %7 = getelementptr inbounds i8, ptr %_7, i64 4
  %8 = load i32, ptr %7, align 4
  %_9 = zext i32 %6 to i64
  %9 = trunc nuw i64 %_9 to i1
  br i1 %9, label %bb5, label %bb6

bb5:                                              ; preds = %bb2
  %10 = getelementptr inbounds i8, ptr %_7, i64 4
  %i = load i32, ptr %10, align 4
  %11 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %i, i32 1)
  %_14.0 = extractvalue { i32, i1 } %11, 0
  %_14.1 = extractvalue { i32, i1 } %11, 1
  br i1 %_14.1, label %panic, label %bb7

bb6:                                              ; preds = %bb2
  %_0 = load i32, ptr %count, align 4
  ret i32 %_0

bb7:                                              ; preds = %bb5
; call <I as core::iter::traits::collect::IntoIterator>::into_iter
  %12 = call { i32, i32 } @"_ZN63_$LT$I$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17ha6dabb3f919f6cf8E"(i32 %_14.0, i32 %n) #20
  %_11.0 = extractvalue { i32, i32 } %12, 0
  %_11.1 = extractvalue { i32, i32 } %12, 1
  store i32 %_11.0, ptr %iter1, align 4
  %13 = getelementptr inbounds i8, ptr %iter1, i64 4
  store i32 %_11.1, ptr %13, align 4
  br label %bb9

panic:                                            ; preds = %bb5
; call core::panicking::panic_const::panic_const_add_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_22ec9f3c731ebeab4c9b15dbe20a076b) #22
  unreachable

bb9:                                              ; preds = %bb15, %bb13, %bb7
; call core::iter::range::<impl core::iter::traits::iterator::Iterator for core::ops::range::Range<A>>::next
  %14 = call { i32, i32 } @"_ZN4core4iter5range101_$LT$impl$u20$core..iter..traits..iterator..Iterator$u20$for$u20$core..ops..range..Range$LT$A$GT$$GT$4next17h9e63adb5bca9dc33E"(ptr align 4 %iter1) #20
  %15 = extractvalue { i32, i32 } %14, 0
  %16 = extractvalue { i32, i32 } %14, 1
  store i32 %15, ptr %_16, align 4
  %17 = getelementptr inbounds i8, ptr %_16, i64 4
  store i32 %16, ptr %17, align 4
  %18 = load i32, ptr %_16, align 4
  %19 = getelementptr inbounds i8, ptr %_16, i64 4
  %20 = load i32, ptr %19, align 4
  %_18 = zext i32 %18 to i64
  %21 = trunc nuw i64 %_18 to i1
  br i1 %21, label %bb11, label %bb2

bb11:                                             ; preds = %bb9
  %22 = getelementptr inbounds i8, ptr %_16, i64 4
  %j = load i32, ptr %22, align 4
  %_23 = sext i32 %i to i64
  %_26 = icmp ult i64 %_23, %a.1
  br i1 %_26, label %bb12, label %panic2

bb12:                                             ; preds = %bb11
  %23 = getelementptr inbounds nuw i32, ptr %a.0, i64 %_23
  %_22 = load i32, ptr %23, align 4
  %_28 = sext i32 %j to i64
  %_31 = icmp ult i64 %_28, %a.1
  br i1 %_31, label %bb13, label %panic3

panic2:                                           ; preds = %bb11
; call core::panicking::panic_bounds_check
  call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 %_23, i64 %a.1, ptr align 8 @alloc_b5785814471b0c59979c2b856a030584) #22
  unreachable

bb13:                                             ; preds = %bb12
  %24 = getelementptr inbounds nuw i32, ptr %a.0, i64 %_28
  %_27 = load i32, ptr %24, align 4
  %_21 = and i32 %_22, %_27
  %_20 = icmp eq i32 %_21, 0
  br i1 %_20, label %bb14, label %bb9

panic3:                                           ; preds = %bb12
; call core::panicking::panic_bounds_check
  call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 %_28, i64 %a.1, ptr align 8 @alloc_9df6b170974ba90a6e4810f52fe142c5) #22
  unreachable

bb14:                                             ; preds = %bb13
  %25 = load i32, ptr %count, align 4
  %26 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %25, i32 2)
  %_32.0 = extractvalue { i32, i1 } %26, 0
  %_32.1 = extractvalue { i32, i1 } %26, 1
  br i1 %_32.1, label %panic4, label %bb15

bb15:                                             ; preds = %bb14
  store i32 %_32.0, ptr %count, align 4
  br label %bb9

panic4:                                           ; preds = %bb14
; call core::panicking::panic_const::panic_const_add_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_875b1b1a84b528dec09d38fab4becae5) #22
  unreachable

bb4:                                              ; No predecessors!
  unreachable
}

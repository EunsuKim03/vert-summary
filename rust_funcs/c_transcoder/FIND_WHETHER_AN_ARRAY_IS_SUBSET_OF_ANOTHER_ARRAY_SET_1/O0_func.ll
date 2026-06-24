define i32 @f_gold(ptr align 4 %arr1, ptr align 4 %arr2, i32 %m, i32 %n) unnamed_addr #3 {
start:
  %_15 = alloca [8 x i8], align 4
  %iter1 = alloca [8 x i8], align 4
  %_8 = alloca [8 x i8], align 4
  %iter = alloca [8 x i8], align 4
  %_0 = alloca [4 x i8], align 4
; call <I as core::iter::traits::collect::IntoIterator>::into_iter
  %0 = call { i32, i32 } @"_ZN63_$LT$I$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17heb1e860b7b00abf4E"(i32 0, i32 %n) #20
  %_5.0 = extractvalue { i32, i32 } %0, 0
  %_5.1 = extractvalue { i32, i32 } %0, 1
  store i32 %_5.0, ptr %iter, align 4
  %1 = getelementptr inbounds i8, ptr %iter, i64 4
  store i32 %_5.1, ptr %1, align 4
  br label %bb2

bb2:                                              ; preds = %bb13, %start
; call core::iter::range::<impl core::iter::traits::iterator::Iterator for core::ops::range::Range<A>>::next
  %2 = call { i32, i32 } @"_ZN4core4iter5range101_$LT$impl$u20$core..iter..traits..iterator..Iterator$u20$for$u20$core..ops..range..Range$LT$A$GT$$GT$4next17h5ac9f7ea12d1a1fbE"(ptr align 4 %iter) #20
  %3 = extractvalue { i32, i32 } %2, 0
  %4 = extractvalue { i32, i32 } %2, 1
  store i32 %3, ptr %_8, align 4
  %5 = getelementptr inbounds i8, ptr %_8, i64 4
  store i32 %4, ptr %5, align 4
  %6 = load i32, ptr %_8, align 4
  %7 = getelementptr inbounds i8, ptr %_8, i64 4
  %8 = load i32, ptr %7, align 4
  %_10 = zext i32 %6 to i64
  %9 = trunc nuw i64 %_10 to i1
  br i1 %9, label %bb5, label %bb6

bb5:                                              ; preds = %bb2
  %10 = getelementptr inbounds i8, ptr %_8, i64 4
  %i = load i32, ptr %10, align 4
; call <I as core::iter::traits::collect::IntoIterator>::into_iter
  %11 = call { i32, i32 } @"_ZN63_$LT$I$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17heb1e860b7b00abf4E"(i32 0, i32 %m) #20
  %_12.0 = extractvalue { i32, i32 } %11, 0
  %_12.1 = extractvalue { i32, i32 } %11, 1
  store i32 %_12.0, ptr %iter1, align 4
  %12 = getelementptr inbounds i8, ptr %iter1, i64 4
  store i32 %_12.1, ptr %12, align 4
  br label %bb8

bb6:                                              ; preds = %bb2
  store i32 1, ptr %_0, align 4
  br label %bb15

bb15:                                             ; preds = %bb14, %bb6
  %13 = load i32, ptr %_0, align 4
  ret i32 %13

bb8:                                              ; preds = %bb12, %bb5
; call core::iter::range::<impl core::iter::traits::iterator::Iterator for core::ops::range::Range<A>>::next
  %14 = call { i32, i32 } @"_ZN4core4iter5range101_$LT$impl$u20$core..iter..traits..iterator..Iterator$u20$for$u20$core..ops..range..Range$LT$A$GT$$GT$4next17h5ac9f7ea12d1a1fbE"(ptr align 4 %iter1) #20
  %15 = extractvalue { i32, i32 } %14, 0
  %16 = extractvalue { i32, i32 } %14, 1
  store i32 %15, ptr %_15, align 4
  %17 = getelementptr inbounds i8, ptr %_15, i64 4
  store i32 %16, ptr %17, align 4
  %18 = load i32, ptr %_15, align 4
  %19 = getelementptr inbounds i8, ptr %_15, i64 4
  %20 = load i32, ptr %19, align 4
  %_17 = zext i32 %18 to i64
  %21 = trunc nuw i64 %_17 to i1
  br i1 %21, label %bb10, label %bb13

bb10:                                             ; preds = %bb8
  %22 = getelementptr inbounds i8, ptr %_15, i64 4
  %j = load i32, ptr %22, align 4
  %_21 = sext i32 %i to i64
  %_22 = icmp ult i64 %_21, 10
  br i1 %_22, label %bb11, label %panic

bb13:                                             ; preds = %bb12, %bb8
  %_26 = icmp eq i32 0, %m
  br i1 %_26, label %bb14, label %bb2

bb11:                                             ; preds = %bb10
  %23 = getelementptr inbounds nuw i32, ptr %arr2, i64 %_21
  %_20 = load i32, ptr %23, align 4
  %_24 = sext i32 %j to i64
  %_25 = icmp ult i64 %_24, 10
  br i1 %_25, label %bb12, label %panic2

panic:                                            ; preds = %bb10
; call core::panicking::panic_bounds_check
  call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 %_21, i64 10, ptr align 8 @alloc_ae631daa32209465b03b6afebc3eda83) #22
  unreachable

bb12:                                             ; preds = %bb11
  %24 = getelementptr inbounds nuw i32, ptr %arr1, i64 %_24
  %_23 = load i32, ptr %24, align 4
  %_19 = icmp eq i32 %_20, %_23
  br i1 %_19, label %bb13, label %bb8

panic2:                                           ; preds = %bb11
; call core::panicking::panic_bounds_check
  call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 %_24, i64 10, ptr align 8 @alloc_9ef82c06ba71a5075fc6cce21df16b33) #22
  unreachable

bb14:                                             ; preds = %bb13
  store i32 0, ptr %_0, align 4
  br label %bb15

bb4:                                              ; No predecessors!
  unreachable
}

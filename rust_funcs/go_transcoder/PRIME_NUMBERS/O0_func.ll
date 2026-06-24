define i32 @f_gold(i32 %n) unnamed_addr #3 {
start:
  %_6 = alloca [8 x i8], align 4
  %iter = alloca [8 x i8], align 4
  %_0 = alloca [4 x i8], align 4
  %_2 = icmp sle i32 %n, 1
  br i1 %_2, label %bb1, label %bb2

bb2:                                              ; preds = %start
; call <I as core::iter::traits::collect::IntoIterator>::into_iter
  %0 = call { i32, i32 } @"_ZN63_$LT$I$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17hdc44b7367afb5382E"(i32 2, i32 %n) #20
  %_3.0 = extractvalue { i32, i32 } %0, 0
  %_3.1 = extractvalue { i32, i32 } %0, 1
  store i32 %_3.0, ptr %iter, align 4
  %1 = getelementptr inbounds i8, ptr %iter, i64 4
  store i32 %_3.1, ptr %1, align 4
  br label %bb4

bb1:                                              ; preds = %start
  store i32 0, ptr %_0, align 4
  br label %bb12

bb4:                                              ; preds = %bb10, %bb2
; call core::iter::range::<impl core::iter::traits::iterator::Iterator for core::ops::range::Range<A>>::next
  %2 = call { i32, i32 } @"_ZN4core4iter5range101_$LT$impl$u20$core..iter..traits..iterator..Iterator$u20$for$u20$core..ops..range..Range$LT$A$GT$$GT$4next17h6b6cf1a5c37cc47fE"(ptr align 4 %iter) #20
  %3 = extractvalue { i32, i32 } %2, 0
  %4 = extractvalue { i32, i32 } %2, 1
  store i32 %3, ptr %_6, align 4
  %5 = getelementptr inbounds i8, ptr %_6, i64 4
  store i32 %4, ptr %5, align 4
  %6 = load i32, ptr %_6, align 4
  %7 = getelementptr inbounds i8, ptr %_6, i64 4
  %8 = load i32, ptr %7, align 4
  %_8 = zext i32 %6 to i64
  %9 = trunc nuw i64 %_8 to i1
  br i1 %9, label %bb7, label %bb8

bb7:                                              ; preds = %bb4
  %10 = getelementptr inbounds i8, ptr %_6, i64 4
  %i = load i32, ptr %10, align 4
  %_12 = icmp eq i32 %i, 0
  br i1 %_12, label %panic, label %bb9

bb8:                                              ; preds = %bb4
  store i32 1, ptr %_0, align 4
  br label %bb12

bb12:                                             ; preds = %bb1, %bb11, %bb8
  %11 = load i32, ptr %_0, align 4
  ret i32 %11

bb9:                                              ; preds = %bb7
  %_13 = icmp eq i32 %i, -1
  %_14 = icmp eq i32 %n, -2147483648
  %_15 = and i1 %_13, %_14
  br i1 %_15, label %panic1, label %bb10

panic:                                            ; preds = %bb7
; call core::panicking::panic_const::panic_const_rem_by_zero
  call void @_ZN4core9panicking11panic_const23panic_const_rem_by_zero17h68b8e0645961a790E(ptr align 8 @alloc_00876f42ce3e72437ea95994434786df) #22
  unreachable

bb10:                                             ; preds = %bb9
  %_11 = srem i32 %n, %i
  %_10 = icmp eq i32 %_11, 0
  br i1 %_10, label %bb11, label %bb4

panic1:                                           ; preds = %bb9
; call core::panicking::panic_const::panic_const_rem_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_rem_overflow17h4aab8182a78c82f8E(ptr align 8 @alloc_00876f42ce3e72437ea95994434786df) #22
  unreachable

bb11:                                             ; preds = %bb10
  store i32 0, ptr %_0, align 4
  br label %bb12

bb6:                                              ; No predecessors!
  unreachable
}

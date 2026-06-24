define i32 @f_gold(ptr align 4 %str1.0, i64 %str1.1, ptr align 4 %str2.0, i64 %str2.1, i32 %m, i32 %n) unnamed_addr #3 {
start:
  %_9 = alloca [8 x i8], align 4
  %iter = alloca [8 x i8], align 4
  %j = alloca [8 x i8], align 8
  %_0 = alloca [4 x i8], align 4
  store i64 0, ptr %j, align 8
; call <I as core::iter::traits::collect::IntoIterator>::into_iter
  %0 = call { i32, i32 } @"_ZN63_$LT$I$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17h74963f3a219770c3E"(i32 0, i32 %n) #20
  %_6.0 = extractvalue { i32, i32 } %0, 0
  %_6.1 = extractvalue { i32, i32 } %0, 1
  store i32 %_6.0, ptr %iter, align 4
  %1 = getelementptr inbounds i8, ptr %iter, i64 4
  store i32 %_6.1, ptr %1, align 4
  br label %bb2

bb2:                                              ; preds = %bb10, %bb8, %start
; call core::iter::range::<impl core::iter::traits::iterator::Iterator for core::ops::range::Range<A>>::next
  %2 = call { i32, i32 } @"_ZN4core4iter5range101_$LT$impl$u20$core..iter..traits..iterator..Iterator$u20$for$u20$core..ops..range..Range$LT$A$GT$$GT$4next17hd42f7080d25315d1E"(ptr align 4 %iter) #20
  %3 = extractvalue { i32, i32 } %2, 0
  %4 = extractvalue { i32, i32 } %2, 1
  store i32 %3, ptr %_9, align 4
  %5 = getelementptr inbounds i8, ptr %_9, i64 4
  store i32 %4, ptr %5, align 4
  %6 = load i32, ptr %_9, align 4
  %7 = getelementptr inbounds i8, ptr %_9, i64 4
  %8 = load i32, ptr %7, align 4
  %_11 = zext i32 %6 to i64
  %9 = trunc nuw i64 %_11 to i1
  br i1 %9, label %bb5, label %bb6

bb5:                                              ; preds = %bb2
  %10 = getelementptr inbounds i8, ptr %_9, i64 4
  %i = load i32, ptr %10, align 4
  %_15 = load i64, ptr %j, align 8
  %_17 = icmp ult i64 %_15, %str1.1
  br i1 %_17, label %bb7, label %panic

bb6:                                              ; preds = %bb2
  %_24 = load i64, ptr %j, align 8
  %_25 = sext i32 %m to i64
  %_23 = icmp eq i64 %_24, %_25
  br i1 %_23, label %bb11, label %bb12

bb12:                                             ; preds = %bb6
  store i32 0, ptr %_0, align 4
  br label %bb13

bb11:                                             ; preds = %bb6
  store i32 1, ptr %_0, align 4
  br label %bb13

bb13:                                             ; preds = %bb11, %bb12
  %11 = load i32, ptr %_0, align 4
  ret i32 %11

bb7:                                              ; preds = %bb5
  %12 = getelementptr inbounds nuw i32, ptr %str1.0, i64 %_15
  %_14 = load i32, ptr %12, align 4
  %_19 = sext i32 %i to i64
  %_21 = icmp ult i64 %_19, %str2.1
  br i1 %_21, label %bb8, label %panic1

panic:                                            ; preds = %bb5
; call core::panicking::panic_bounds_check
  call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 %_15, i64 %str1.1, ptr align 8 @alloc_df0d28f8e212e7c20118b4eb363d01dc) #22
  unreachable

bb8:                                              ; preds = %bb7
  %13 = getelementptr inbounds nuw i32, ptr %str2.0, i64 %_19
  %_18 = load i32, ptr %13, align 4
  %_13 = icmp eq i32 %_14, %_18
  br i1 %_13, label %bb9, label %bb2

panic1:                                           ; preds = %bb7
; call core::panicking::panic_bounds_check
  call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 %_19, i64 %str2.1, ptr align 8 @alloc_3b5e12df789008d7c3513d00f6718d7c) #22
  unreachable

bb9:                                              ; preds = %bb8
  %14 = load i64, ptr %j, align 8
  %_22.0 = add i64 %14, 1
  %_22.1 = icmp ult i64 %_22.0, %14
  br i1 %_22.1, label %panic2, label %bb10

bb10:                                             ; preds = %bb9
  store i64 %_22.0, ptr %j, align 8
  br label %bb2

panic2:                                           ; preds = %bb9
; call core::panicking::panic_const::panic_const_add_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_cc624c984ea7e26e4cdf8bc1b113914f) #22
  unreachable

bb4:                                              ; No predecessors!
  unreachable
}

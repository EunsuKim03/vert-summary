define i32 @f_gold(ptr align 4 %str.0, i64 %str.1) unnamed_addr #3 {
start:
  %_6 = alloca [16 x i8], align 8
  %iter = alloca [16 x i8], align 8
  %_0 = alloca [4 x i8], align 4
; call <I as core::iter::traits::collect::IntoIterator>::into_iter
  %0 = call { i64, i64 } @"_ZN63_$LT$I$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17hcc45c3ece2b4aafbE"(i64 0, i64 %str.1) #20
  %_2.0 = extractvalue { i64, i64 } %0, 0
  %_2.1 = extractvalue { i64, i64 } %0, 1
  store i64 %_2.0, ptr %iter, align 8
  %1 = getelementptr inbounds i8, ptr %iter, i64 8
  store i64 %_2.1, ptr %1, align 8
  br label %bb2

bb2:                                              ; preds = %bb7, %start
; call core::iter::range::<impl core::iter::traits::iterator::Iterator for core::ops::range::Range<A>>::next
  %2 = call { i64, i64 } @"_ZN4core4iter5range101_$LT$impl$u20$core..iter..traits..iterator..Iterator$u20$for$u20$core..ops..range..Range$LT$A$GT$$GT$4next17h870e9b1087bd04feE"(ptr align 8 %iter) #20
  %3 = extractvalue { i64, i64 } %2, 0
  %4 = extractvalue { i64, i64 } %2, 1
  store i64 %3, ptr %_6, align 8
  %5 = getelementptr inbounds i8, ptr %_6, i64 8
  store i64 %4, ptr %5, align 8
  %_8 = load i64, ptr %_6, align 8
  %6 = getelementptr inbounds i8, ptr %_6, i64 8
  %7 = load i64, ptr %6, align 8
  %8 = trunc nuw i64 %_8 to i1
  br i1 %8, label %bb5, label %bb6

bb5:                                              ; preds = %bb2
  %9 = getelementptr inbounds i8, ptr %_6, i64 8
  %i = load i64, ptr %9, align 8
  %_13 = icmp ult i64 %i, %str.1
  br i1 %_13, label %bb7, label %panic

bb6:                                              ; preds = %bb2
  store i32 0, ptr %_0, align 4
  br label %bb11

bb11:                                             ; preds = %bb10, %bb6
  %10 = load i32, ptr %_0, align 4
  ret i32 %10

bb7:                                              ; preds = %bb5
  %11 = getelementptr inbounds nuw i32, ptr %str.0, i64 %i
  %_11 = load i32, ptr %11, align 4
; call core::char::methods::<impl char>::is_uppercase
  %_10 = call zeroext i1 @"_ZN4core4char7methods22_$LT$impl$u20$char$GT$12is_uppercase17h98a2c6b94e969cd8E"(i32 %_11) #20
  br i1 %_10, label %bb9, label %bb2

panic:                                            ; preds = %bb5
; call core::panicking::panic_bounds_check
  call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 %i, i64 %str.1, ptr align 8 @alloc_f5c2a49fed9d57172e99d24ae8fec829) #22
  unreachable

bb9:                                              ; preds = %bb7
  %_15 = icmp ult i64 %i, %str.1
  br i1 %_15, label %bb10, label %panic1

bb10:                                             ; preds = %bb9
  %12 = getelementptr inbounds nuw i32, ptr %str.0, i64 %i
  %13 = load i32, ptr %12, align 4
  store i32 %13, ptr %_0, align 4
  br label %bb11

panic1:                                           ; preds = %bb9
; call core::panicking::panic_bounds_check
  call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 %i, i64 %str.1, ptr align 8 @alloc_2d16f821568907800f6fbda672471d75) #22
  unreachable

bb4:                                              ; No predecessors!
  unreachable
}

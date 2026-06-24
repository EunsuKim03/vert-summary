define i32 @f_gold(ptr align 4 %arr.0, i64 %arr.1, i32 %n, i32 %key) unnamed_addr #3 {
start:
  %_7 = alloca [8 x i8], align 4
  %iter = alloca [8 x i8], align 4
  %_0 = alloca [4 x i8], align 4
; call <I as core::iter::traits::collect::IntoIterator>::into_iter
  %0 = call { i32, i32 } @"_ZN63_$LT$I$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17h7c9d12175a153d2dE"(i32 0, i32 %n) #20
  %_4.0 = extractvalue { i32, i32 } %0, 0
  %_4.1 = extractvalue { i32, i32 } %0, 1
  store i32 %_4.0, ptr %iter, align 4
  %1 = getelementptr inbounds i8, ptr %iter, i64 4
  store i32 %_4.1, ptr %1, align 4
  br label %bb2

bb2:                                              ; preds = %bb7, %start
; call core::iter::range::<impl core::iter::traits::iterator::Iterator for core::ops::range::Range<A>>::next
  %2 = call { i32, i32 } @"_ZN4core4iter5range101_$LT$impl$u20$core..iter..traits..iterator..Iterator$u20$for$u20$core..ops..range..Range$LT$A$GT$$GT$4next17hbcd15505d525d4aaE"(ptr align 4 %iter) #20
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
  %_13 = sext i32 %i to i64
  %_16 = icmp ult i64 %_13, %arr.1
  br i1 %_16, label %bb7, label %panic

bb6:                                              ; preds = %bb2
  store i32 -1, ptr %_0, align 4
  br label %bb9

bb9:                                              ; preds = %bb8, %bb6
  %11 = load i32, ptr %_0, align 4
  ret i32 %11

bb7:                                              ; preds = %bb5
  %12 = getelementptr inbounds nuw i32, ptr %arr.0, i64 %_13
  %_12 = load i32, ptr %12, align 4
  %_11 = icmp eq i32 %_12, %key
  br i1 %_11, label %bb8, label %bb2

panic:                                            ; preds = %bb5
; call core::panicking::panic_bounds_check
  call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 %_13, i64 %arr.1, ptr align 8 @alloc_f7807a1499e31e54d7e8e808d03e0c4c) #22
  unreachable

bb8:                                              ; preds = %bb7
  store i32 %i, ptr %_0, align 4
  br label %bb9

bb4:                                              ; No predecessors!
  unreachable
}

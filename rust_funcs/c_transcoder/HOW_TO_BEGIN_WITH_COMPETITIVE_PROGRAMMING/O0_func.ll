define i32 @f_gold(i64 %0, i32 %n, i32 %x) unnamed_addr #3 {
start:
  %_7 = alloca [8 x i8], align 4
  %iter = alloca [8 x i8], align 4
  %_0 = alloca [4 x i8], align 4
  %1 = alloca [8 x i8], align 8
  %arr = alloca [8 x i8], align 4
  store i64 %0, ptr %1, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %arr, ptr align 8 %1, i64 8, i1 false)
; call <I as core::iter::traits::collect::IntoIterator>::into_iter
  %2 = call { i32, i32 } @"_ZN63_$LT$I$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17hf67248278cf5cb72E"(i32 0, i32 %n) #20
  %_4.0 = extractvalue { i32, i32 } %2, 0
  %_4.1 = extractvalue { i32, i32 } %2, 1
  store i32 %_4.0, ptr %iter, align 4
  %3 = getelementptr inbounds i8, ptr %iter, i64 4
  store i32 %_4.1, ptr %3, align 4
  br label %bb2

bb2:                                              ; preds = %bb7, %start
; call core::iter::range::<impl core::iter::traits::iterator::Iterator for core::ops::range::Range<A>>::next
  %4 = call { i32, i32 } @"_ZN4core4iter5range101_$LT$impl$u20$core..iter..traits..iterator..Iterator$u20$for$u20$core..ops..range..Range$LT$A$GT$$GT$4next17h6da0cdd19afefcf8E"(ptr align 4 %iter) #20
  %5 = extractvalue { i32, i32 } %4, 0
  %6 = extractvalue { i32, i32 } %4, 1
  store i32 %5, ptr %_7, align 4
  %7 = getelementptr inbounds i8, ptr %_7, i64 4
  store i32 %6, ptr %7, align 4
  %8 = load i32, ptr %_7, align 4
  %9 = getelementptr inbounds i8, ptr %_7, i64 4
  %10 = load i32, ptr %9, align 4
  %_9 = zext i32 %8 to i64
  %11 = trunc nuw i64 %_9 to i1
  br i1 %11, label %bb5, label %bb6

bb5:                                              ; preds = %bb2
  %12 = getelementptr inbounds i8, ptr %_7, i64 4
  %i = load i32, ptr %12, align 4
  %_13 = sext i32 %i to i64
  %_14 = icmp ult i64 %_13, 2
  br i1 %_14, label %bb7, label %panic

bb6:                                              ; preds = %bb2
  store i32 -1, ptr %_0, align 4
  br label %bb9

bb9:                                              ; preds = %bb8, %bb6
  %13 = load i32, ptr %_0, align 4
  ret i32 %13

bb7:                                              ; preds = %bb5
  %14 = getelementptr inbounds nuw i32, ptr %arr, i64 %_13
  %_12 = load i32, ptr %14, align 4
  %_11 = icmp eq i32 %_12, %x
  br i1 %_11, label %bb8, label %bb2

panic:                                            ; preds = %bb5
; call core::panicking::panic_bounds_check
  call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 %_13, i64 2, ptr align 8 @alloc_6c4dd311708888c54fb1cc8e069cbae6) #22
  unreachable

bb8:                                              ; preds = %bb7
  store i32 %i, ptr %_0, align 4
  br label %bb9

bb4:                                              ; No predecessors!
  unreachable
}

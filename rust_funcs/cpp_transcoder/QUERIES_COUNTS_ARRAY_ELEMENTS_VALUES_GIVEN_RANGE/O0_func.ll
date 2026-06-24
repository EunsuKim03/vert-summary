define i32 @f_gold(i64 %0, i32 %n, i32 %x, i32 %y) unnamed_addr #3 {
start:
  %_9 = alloca [8 x i8], align 4
  %iter = alloca [8 x i8], align 4
  %count = alloca [4 x i8], align 4
  %1 = alloca [8 x i8], align 8
  %arr = alloca [8 x i8], align 4
  store i64 %0, ptr %1, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %arr, ptr align 8 %1, i64 8, i1 false)
  store i32 0, ptr %count, align 4
; call <I as core::iter::traits::collect::IntoIterator>::into_iter
  %2 = call { i32, i32 } @"_ZN63_$LT$I$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17h535f51047dde34b0E"(i32 0, i32 %n) #20
  %_6.0 = extractvalue { i32, i32 } %2, 0
  %_6.1 = extractvalue { i32, i32 } %2, 1
  store i32 %_6.0, ptr %iter, align 4
  %3 = getelementptr inbounds i8, ptr %iter, i64 4
  store i32 %_6.1, ptr %3, align 4
  br label %bb2

bb2:                                              ; preds = %bb11, %bb9, %bb7, %start
; call core::iter::range::<impl core::iter::traits::iterator::Iterator for core::ops::range::Range<A>>::next
  %4 = call { i32, i32 } @"_ZN4core4iter5range101_$LT$impl$u20$core..iter..traits..iterator..Iterator$u20$for$u20$core..ops..range..Range$LT$A$GT$$GT$4next17hc52f54878803a4fbE"(ptr align 4 %iter) #20
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
  %_15 = sext i32 %i to i64
  %_16 = icmp ult i64 %_15, 2
  br i1 %_16, label %bb7, label %panic

bb6:                                              ; preds = %bb2
  %_0 = load i32, ptr %count, align 4
  ret i32 %_0

bb7:                                              ; preds = %bb5
  %13 = getelementptr inbounds nuw i32, ptr %arr, i64 %_15
  %_14 = load i32, ptr %13, align 4
  %_13 = icmp sge i32 %_14, %x
  br i1 %_13, label %bb8, label %bb2

panic:                                            ; preds = %bb5
; call core::panicking::panic_bounds_check
  call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 %_15, i64 2, ptr align 8 @alloc_f680369731030c1161ba990112b9b67d) #22
  unreachable

bb8:                                              ; preds = %bb7
  %_19 = sext i32 %i to i64
  %_20 = icmp ult i64 %_19, 2
  br i1 %_20, label %bb9, label %panic1

bb9:                                              ; preds = %bb8
  %14 = getelementptr inbounds nuw i32, ptr %arr, i64 %_19
  %_18 = load i32, ptr %14, align 4
  %_17 = icmp sle i32 %_18, %y
  br i1 %_17, label %bb10, label %bb2

panic1:                                           ; preds = %bb8
; call core::panicking::panic_bounds_check
  call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 %_19, i64 2, ptr align 8 @alloc_b83f5a90fc374c0ce429cfee75a19010) #22
  unreachable

bb10:                                             ; preds = %bb9
  %15 = load i32, ptr %count, align 4
  %16 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %15, i32 1)
  %_21.0 = extractvalue { i32, i1 } %16, 0
  %_21.1 = extractvalue { i32, i1 } %16, 1
  br i1 %_21.1, label %panic2, label %bb11

bb11:                                             ; preds = %bb10
  store i32 %_21.0, ptr %count, align 4
  br label %bb2

panic2:                                           ; preds = %bb10
; call core::panicking::panic_const::panic_const_add_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_491fb002bd8489b8cc9f1fc91e1ec331) #22
  unreachable

bb4:                                              ; No predecessors!
  unreachable
}

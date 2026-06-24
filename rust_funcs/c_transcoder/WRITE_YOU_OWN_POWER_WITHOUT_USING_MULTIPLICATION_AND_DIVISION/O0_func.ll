define i32 @f_gold(i32 %a, i32 %b) unnamed_addr #3 {
start:
  %_16 = alloca [8 x i8], align 4
  %iter1 = alloca [8 x i8], align 4
  %_9 = alloca [8 x i8], align 4
  %iter = alloca [8 x i8], align 4
  %increment = alloca [4 x i8], align 4
  %answer = alloca [4 x i8], align 4
  %_0 = alloca [4 x i8], align 4
  %_3 = icmp eq i32 %b, 0
  br i1 %_3, label %bb1, label %bb2

bb2:                                              ; preds = %start
  store i32 %a, ptr %answer, align 4
  store i32 %a, ptr %increment, align 4
; call <I as core::iter::traits::collect::IntoIterator>::into_iter
  %0 = call { i32, i32 } @"_ZN63_$LT$I$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17h9f7fcc933cdfa51eE"(i32 1, i32 %b) #20
  %_6.0 = extractvalue { i32, i32 } %0, 0
  %_6.1 = extractvalue { i32, i32 } %0, 1
  store i32 %_6.0, ptr %iter, align 4
  %1 = getelementptr inbounds i8, ptr %iter, i64 4
  store i32 %_6.1, ptr %1, align 4
  br label %bb4

bb1:                                              ; preds = %start
  store i32 1, ptr %_0, align 4
  br label %bb15

bb4:                                              ; preds = %bb13, %bb2
; call core::iter::range::<impl core::iter::traits::iterator::Iterator for core::ops::range::Range<A>>::next
  %2 = call { i32, i32 } @"_ZN4core4iter5range101_$LT$impl$u20$core..iter..traits..iterator..Iterator$u20$for$u20$core..ops..range..Range$LT$A$GT$$GT$4next17h5e08d8890c68ebeaE"(ptr align 4 %iter) #20
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
  br i1 %9, label %bb7, label %bb8

bb7:                                              ; preds = %bb4
  %10 = getelementptr inbounds i8, ptr %_9, i64 4
  %i = load i32, ptr %10, align 4
; call <I as core::iter::traits::collect::IntoIterator>::into_iter
  %11 = call { i32, i32 } @"_ZN63_$LT$I$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17h9f7fcc933cdfa51eE"(i32 1, i32 %a) #20
  %_13.0 = extractvalue { i32, i32 } %11, 0
  %_13.1 = extractvalue { i32, i32 } %11, 1
  store i32 %_13.0, ptr %iter1, align 4
  %12 = getelementptr inbounds i8, ptr %iter1, i64 4
  store i32 %_13.1, ptr %12, align 4
  br label %bb10

bb8:                                              ; preds = %bb4
  %13 = load i32, ptr %answer, align 4
  store i32 %13, ptr %_0, align 4
  br label %bb15

bb15:                                             ; preds = %bb1, %bb8
  %14 = load i32, ptr %_0, align 4
  ret i32 %14

bb10:                                             ; preds = %bb14, %bb7
; call core::iter::range::<impl core::iter::traits::iterator::Iterator for core::ops::range::Range<A>>::next
  %15 = call { i32, i32 } @"_ZN4core4iter5range101_$LT$impl$u20$core..iter..traits..iterator..Iterator$u20$for$u20$core..ops..range..Range$LT$A$GT$$GT$4next17h5e08d8890c68ebeaE"(ptr align 4 %iter1) #20
  %16 = extractvalue { i32, i32 } %15, 0
  %17 = extractvalue { i32, i32 } %15, 1
  store i32 %16, ptr %_16, align 4
  %18 = getelementptr inbounds i8, ptr %_16, i64 4
  store i32 %17, ptr %18, align 4
  %19 = load i32, ptr %_16, align 4
  %20 = getelementptr inbounds i8, ptr %_16, i64 4
  %21 = load i32, ptr %20, align 4
  %_18 = zext i32 %19 to i64
  %22 = trunc nuw i64 %_18 to i1
  br i1 %22, label %bb12, label %bb13

bb12:                                             ; preds = %bb10
  %23 = getelementptr inbounds i8, ptr %_16, i64 4
  %j = load i32, ptr %23, align 4
  %_20 = load i32, ptr %increment, align 4
  %24 = load i32, ptr %answer, align 4
  %25 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %24, i32 %_20)
  %_21.0 = extractvalue { i32, i1 } %25, 0
  %_21.1 = extractvalue { i32, i1 } %25, 1
  br i1 %_21.1, label %panic, label %bb14

bb13:                                             ; preds = %bb10
  %_22 = load i32, ptr %answer, align 4
  store i32 %_22, ptr %increment, align 4
  br label %bb4

bb14:                                             ; preds = %bb12
  store i32 %_21.0, ptr %answer, align 4
  br label %bb10

panic:                                            ; preds = %bb12
; call core::panicking::panic_const::panic_const_add_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_0a880c1d9f1fea88615947c009d440ac) #22
  unreachable

bb6:                                              ; No predecessors!
  unreachable
}

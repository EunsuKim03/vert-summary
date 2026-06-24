define i32 @f_gold(ptr align 8 %arr, i32 %n) unnamed_addr #3 personality ptr @rust_eh_personality {
start:
  %0 = alloca [16 x i8], align 8
  %_15 = alloca [8 x i8], align 4
  %iter1 = alloca [8 x i8], align 4
  %curr_xor = alloca [4 x i8], align 4
  %_7 = alloca [8 x i8], align 4
  %iter = alloca [8 x i8], align 4
  %ans = alloca [4 x i8], align 4
  store i32 -2147483648, ptr %ans, align 4
; invoke <I as core::iter::traits::collect::IntoIterator>::into_iter
  %1 = invoke { i32, i32 } @"_ZN63_$LT$I$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17h29948fdc334b9368E"(i32 0, i32 %n)
          to label %bb1 unwind label %cleanup

bb14:                                             ; preds = %cleanup
; invoke core::ptr::drop_in_place<alloc::vec::Vec<i32>>
  invoke void @"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17hadf3bda983ce0be9E"(ptr align 8 %arr) #21
          to label %bb15 unwind label %terminate

cleanup:                                          ; preds = %bb11, %bb10, %bb8, %bb5, %bb2, %start
  %2 = landingpad { ptr, i32 }
          cleanup
  %3 = extractvalue { ptr, i32 } %2, 0
  %4 = extractvalue { ptr, i32 } %2, 1
  store ptr %3, ptr %0, align 8
  %5 = getelementptr inbounds i8, ptr %0, i64 8
  store i32 %4, ptr %5, align 8
  br label %bb14

bb1:                                              ; preds = %start
  %_4.0 = extractvalue { i32, i32 } %1, 0
  %_4.1 = extractvalue { i32, i32 } %1, 1
  store i32 %_4.0, ptr %iter, align 4
  %6 = getelementptr inbounds i8, ptr %iter, i64 4
  store i32 %_4.1, ptr %6, align 4
  br label %bb2

bb2:                                              ; preds = %bb9, %bb1
; invoke core::iter::range::<impl core::iter::traits::iterator::Iterator for core::ops::range::Range<A>>::next
  %7 = invoke { i32, i32 } @"_ZN4core4iter5range101_$LT$impl$u20$core..iter..traits..iterator..Iterator$u20$for$u20$core..ops..range..Range$LT$A$GT$$GT$4next17hb9d55ca5bde34d36E"(ptr align 4 %iter)
          to label %bb3 unwind label %cleanup

bb3:                                              ; preds = %bb2
  %8 = extractvalue { i32, i32 } %7, 0
  %9 = extractvalue { i32, i32 } %7, 1
  store i32 %8, ptr %_7, align 4
  %10 = getelementptr inbounds i8, ptr %_7, i64 4
  store i32 %9, ptr %10, align 4
  %11 = load i32, ptr %_7, align 4
  %12 = getelementptr inbounds i8, ptr %_7, i64 4
  %13 = load i32, ptr %12, align 4
  %_9 = zext i32 %11 to i64
  %14 = trunc nuw i64 %_9 to i1
  br i1 %14, label %bb5, label %bb6

bb5:                                              ; preds = %bb3
  %15 = getelementptr inbounds i8, ptr %_7, i64 4
  %i = load i32, ptr %15, align 4
  store i32 0, ptr %curr_xor, align 4
; invoke <I as core::iter::traits::collect::IntoIterator>::into_iter
  %16 = invoke { i32, i32 } @"_ZN63_$LT$I$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17h29948fdc334b9368E"(i32 %i, i32 %n)
          to label %bb7 unwind label %cleanup

bb6:                                              ; preds = %bb3
  %_0 = load i32, ptr %ans, align 4
; call core::ptr::drop_in_place<alloc::vec::Vec<i32>>
  call void @"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17hadf3bda983ce0be9E"(ptr align 8 %arr)
  ret i32 %_0

bb7:                                              ; preds = %bb5
  %_12.0 = extractvalue { i32, i32 } %16, 0
  %_12.1 = extractvalue { i32, i32 } %16, 1
  store i32 %_12.0, ptr %iter1, align 4
  %17 = getelementptr inbounds i8, ptr %iter1, i64 4
  store i32 %_12.1, ptr %17, align 4
  br label %bb8

bb8:                                              ; preds = %bb12, %bb7
; invoke core::iter::range::<impl core::iter::traits::iterator::Iterator for core::ops::range::Range<A>>::next
  %18 = invoke { i32, i32 } @"_ZN4core4iter5range101_$LT$impl$u20$core..iter..traits..iterator..Iterator$u20$for$u20$core..ops..range..Range$LT$A$GT$$GT$4next17hb9d55ca5bde34d36E"(ptr align 4 %iter1)
          to label %bb9 unwind label %cleanup

bb9:                                              ; preds = %bb8
  %19 = extractvalue { i32, i32 } %18, 0
  %20 = extractvalue { i32, i32 } %18, 1
  store i32 %19, ptr %_15, align 4
  %21 = getelementptr inbounds i8, ptr %_15, i64 4
  store i32 %20, ptr %21, align 4
  %22 = load i32, ptr %_15, align 4
  %23 = getelementptr inbounds i8, ptr %_15, i64 4
  %24 = load i32, ptr %23, align 4
  %_17 = zext i32 %22 to i64
  %25 = trunc nuw i64 %_17 to i1
  br i1 %25, label %bb10, label %bb2

bb10:                                             ; preds = %bb9
  %26 = getelementptr inbounds i8, ptr %_15, i64 4
  %j = load i32, ptr %26, align 4
  %_19 = load i32, ptr %curr_xor, align 4
  %_23 = sext i32 %j to i64
; invoke <alloc::vec::Vec<T,A> as core::ops::index::Index<I>>::index
  %_21 = invoke align 4 ptr @"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h2f899ed4f08464f9E"(ptr align 8 %arr, i64 %_23, ptr align 8 @alloc_47fee60c467417a7fec941affa8cc501)
          to label %bb11 unwind label %cleanup

bb11:                                             ; preds = %bb10
  %_20 = load i32, ptr %_21, align 4
  %27 = xor i32 %_19, %_20
  store i32 %27, ptr %curr_xor, align 4
  %_25 = load i32, ptr %ans, align 4
  %_26 = load i32, ptr %curr_xor, align 4
; invoke core::cmp::Ord::max
  %_24 = invoke i32 @_ZN4core3cmp3Ord3max17ha0ea18946b805689E(i32 %_25, i32 %_26)
          to label %bb12 unwind label %cleanup

bb12:                                             ; preds = %bb11
  store i32 %_24, ptr %ans, align 4
  br label %bb8

bb4:                                              ; No predecessors!
  unreachable

terminate:                                        ; preds = %bb14
  %28 = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer
; call core::panicking::panic_in_cleanup
  call void @_ZN4core9panicking16panic_in_cleanup17h5f6bde45d17ae243E() #19
  unreachable

bb15:                                             ; preds = %bb14
  %29 = load ptr, ptr %0, align 8
  %30 = getelementptr inbounds i8, ptr %0, i64 8
  %31 = load i32, ptr %30, align 8
  %32 = insertvalue { ptr, i32 } poison, ptr %29, 0
  %33 = insertvalue { ptr, i32 } %32, i32 %31, 1
  resume { ptr, i32 } %33
}

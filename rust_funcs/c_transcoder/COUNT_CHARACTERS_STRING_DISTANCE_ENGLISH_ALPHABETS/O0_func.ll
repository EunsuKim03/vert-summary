define i32 @f_gold(ptr align 8 %str) unnamed_addr #3 personality ptr @rust_eh_personality {
start:
  %0 = alloca [16 x i8], align 8
  %_18 = alloca [8 x i8], align 4
  %iter1 = alloca [8 x i8], align 4
  %_9 = alloca [8 x i8], align 4
  %iter = alloca [8 x i8], align 4
  %result = alloca [4 x i8], align 4
  store i32 0, ptr %result, align 4
; invoke alloc::vec::Vec<T,A>::len
  %_4 = invoke i64 @"_ZN5alloc3vec16Vec$LT$T$C$A$GT$3len17h99a3c5b3927774ceE"(ptr align 8 %str)
          to label %bb1 unwind label %cleanup

bb22:                                             ; preds = %cleanup
; invoke core::ptr::drop_in_place<alloc::vec::Vec<char>>
  invoke void @"_ZN4core3ptr48drop_in_place$LT$alloc..vec..Vec$LT$char$GT$$GT$17h0a398807809bac8eE"(ptr align 8 %str) #22
          to label %bb23 unwind label %terminate

cleanup:                                          ; preds = %panic4, %bb17, %panic3, %bb15, %panic2, %bb13, %bb12, %bb10, %bb8, %panic, %bb3, %bb1, %start
  %1 = landingpad { ptr, i32 }
          cleanup
  %2 = extractvalue { ptr, i32 } %1, 0
  %3 = extractvalue { ptr, i32 } %1, 1
  store ptr %2, ptr %0, align 8
  %4 = getelementptr inbounds i8, ptr %0, i64 8
  store i32 %3, ptr %4, align 8
  br label %bb22

bb1:                                              ; preds = %start
  %n = trunc i64 %_4 to i32
; invoke <I as core::iter::traits::collect::IntoIterator>::into_iter
  %5 = invoke { i32, i32 } @"_ZN63_$LT$I$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17h75daac4cc4adeddeE"(i32 0, i32 %n)
          to label %bb2 unwind label %cleanup

bb2:                                              ; preds = %bb1
  %_6.0 = extractvalue { i32, i32 } %5, 0
  %_6.1 = extractvalue { i32, i32 } %5, 1
  store i32 %_6.0, ptr %iter, align 4
  %6 = getelementptr inbounds i8, ptr %iter, i64 4
  store i32 %_6.1, ptr %6, align 4
  br label %bb3

bb3:                                              ; preds = %bb11, %bb2
; invoke core::iter::range::<impl core::iter::traits::iterator::Iterator for core::ops::range::Range<A>>::next
  %7 = invoke { i32, i32 } @"_ZN4core4iter5range101_$LT$impl$u20$core..iter..traits..iterator..Iterator$u20$for$u20$core..ops..range..Range$LT$A$GT$$GT$4next17haf3899790819d665E"(ptr align 4 %iter)
          to label %bb4 unwind label %cleanup

bb4:                                              ; preds = %bb3
  %8 = extractvalue { i32, i32 } %7, 0
  %9 = extractvalue { i32, i32 } %7, 1
  store i32 %8, ptr %_9, align 4
  %10 = getelementptr inbounds i8, ptr %_9, i64 4
  store i32 %9, ptr %10, align 4
  %11 = load i32, ptr %_9, align 4
  %12 = getelementptr inbounds i8, ptr %_9, i64 4
  %13 = load i32, ptr %12, align 4
  %_11 = zext i32 %11 to i64
  %14 = trunc nuw i64 %_11 to i1
  br i1 %14, label %bb6, label %bb7

bb6:                                              ; preds = %bb4
  %15 = getelementptr inbounds i8, ptr %_9, i64 4
  %i = load i32, ptr %15, align 4
  %16 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %i, i32 1)
  %_16.0 = extractvalue { i32, i1 } %16, 0
  %_16.1 = extractvalue { i32, i1 } %16, 1
  br i1 %_16.1, label %panic, label %bb8

bb7:                                              ; preds = %bb4
  %_0 = load i32, ptr %result, align 4
; call core::ptr::drop_in_place<alloc::vec::Vec<char>>
  call void @"_ZN4core3ptr48drop_in_place$LT$alloc..vec..Vec$LT$char$GT$$GT$17h0a398807809bac8eE"(ptr align 8 %str)
  ret i32 %_0

bb8:                                              ; preds = %bb6
; invoke <I as core::iter::traits::collect::IntoIterator>::into_iter
  %17 = invoke { i32, i32 } @"_ZN63_$LT$I$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17h75daac4cc4adeddeE"(i32 %_16.0, i32 %n)
          to label %bb9 unwind label %cleanup

panic:                                            ; preds = %bb6
; invoke core::panicking::panic_const::panic_const_add_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_3c7405b1058a248133c6caceac4dd665) #23
          to label %unreachable unwind label %cleanup

unreachable:                                      ; preds = %panic4, %panic3, %panic2, %panic
  unreachable

bb9:                                              ; preds = %bb8
  %_13.0 = extractvalue { i32, i32 } %17, 0
  %_13.1 = extractvalue { i32, i32 } %17, 1
  store i32 %_13.0, ptr %iter1, align 4
  %18 = getelementptr inbounds i8, ptr %iter1, i64 4
  store i32 %_13.1, ptr %18, align 4
  br label %bb10

bb10:                                             ; preds = %bb20, %bb18, %bb9
; invoke core::iter::range::<impl core::iter::traits::iterator::Iterator for core::ops::range::Range<A>>::next
  %19 = invoke { i32, i32 } @"_ZN4core4iter5range101_$LT$impl$u20$core..iter..traits..iterator..Iterator$u20$for$u20$core..ops..range..Range$LT$A$GT$$GT$4next17haf3899790819d665E"(ptr align 4 %iter1)
          to label %bb11 unwind label %cleanup

bb11:                                             ; preds = %bb10
  %20 = extractvalue { i32, i32 } %19, 0
  %21 = extractvalue { i32, i32 } %19, 1
  store i32 %20, ptr %_18, align 4
  %22 = getelementptr inbounds i8, ptr %_18, i64 4
  store i32 %21, ptr %22, align 4
  %23 = load i32, ptr %_18, align 4
  %24 = getelementptr inbounds i8, ptr %_18, i64 4
  %25 = load i32, ptr %24, align 4
  %_20 = zext i32 %23 to i64
  %26 = trunc nuw i64 %_20 to i1
  br i1 %26, label %bb12, label %bb3

bb12:                                             ; preds = %bb11
  %27 = getelementptr inbounds i8, ptr %_18, i64 4
  %j = load i32, ptr %27, align 4
  %_29 = sext i32 %i to i64
; invoke <alloc::vec::Vec<T,A> as core::ops::index::Index<I>>::index
  %_27 = invoke align 4 ptr @"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h5f74d2e98cd4eb38E"(ptr align 8 %str, i64 %_29, ptr align 8 @alloc_c298baeed1e676452a2631d6d254e59e)
          to label %bb13 unwind label %cleanup

bb13:                                             ; preds = %bb12
  %_26 = load i32, ptr %_27, align 4
  %_34 = sext i32 %j to i64
; invoke <alloc::vec::Vec<T,A> as core::ops::index::Index<I>>::index
  %_32 = invoke align 4 ptr @"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h5f74d2e98cd4eb38E"(ptr align 8 %str, i64 %_34, ptr align 8 @alloc_4fb60b8685540aeab7b0cf5408593823)
          to label %bb14 unwind label %cleanup

bb14:                                             ; preds = %bb13
  %_31 = load i32, ptr %_32, align 4
  %28 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %_26, i32 %_31)
  %_35.0 = extractvalue { i32, i1 } %28, 0
  %_35.1 = extractvalue { i32, i1 } %28, 1
  br i1 %_35.1, label %panic2, label %bb15

bb15:                                             ; preds = %bb14
; invoke core::num::<impl i32>::abs
  %_23 = invoke i32 @"_ZN4core3num21_$LT$impl$u20$i32$GT$3abs17h305f51945182d53aE"(i32 %_35.0)
          to label %bb16 unwind label %cleanup

panic2:                                           ; preds = %bb14
; invoke core::panicking::panic_const::panic_const_sub_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_sub_overflow17h134cc1a7f93654deE(ptr align 8 @alloc_c0f798380ca1b758d7f2f74c34333bf4) #23
          to label %unreachable unwind label %cleanup

bb16:                                             ; preds = %bb15
  %29 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %i, i32 %j)
  %_38.0 = extractvalue { i32, i1 } %29, 0
  %_38.1 = extractvalue { i32, i1 } %29, 1
  br i1 %_38.1, label %panic3, label %bb17

bb17:                                             ; preds = %bb16
; invoke core::num::<impl i32>::abs
  %_36 = invoke i32 @"_ZN4core3num21_$LT$impl$u20$i32$GT$3abs17h305f51945182d53aE"(i32 %_38.0)
          to label %bb18 unwind label %cleanup

panic3:                                           ; preds = %bb16
; invoke core::panicking::panic_const::panic_const_sub_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_sub_overflow17h134cc1a7f93654deE(ptr align 8 @alloc_048b9a7e955ef29e052274eee1bd4d18) #23
          to label %unreachable unwind label %cleanup

bb18:                                             ; preds = %bb17
  %_22 = icmp eq i32 %_23, %_36
  br i1 %_22, label %bb19, label %bb10

bb19:                                             ; preds = %bb18
  %30 = load i32, ptr %result, align 4
  %31 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %30, i32 1)
  %_39.0 = extractvalue { i32, i1 } %31, 0
  %_39.1 = extractvalue { i32, i1 } %31, 1
  br i1 %_39.1, label %panic4, label %bb20

bb20:                                             ; preds = %bb19
  store i32 %_39.0, ptr %result, align 4
  br label %bb10

panic4:                                           ; preds = %bb19
; invoke core::panicking::panic_const::panic_const_add_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_11ea9108a09116f4f4c6b1c9c33dbf15) #23
          to label %unreachable unwind label %cleanup

bb5:                                              ; No predecessors!
  unreachable

terminate:                                        ; preds = %bb22
  %32 = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer
; call core::panicking::panic_in_cleanup
  call void @_ZN4core9panicking16panic_in_cleanup17h5f6bde45d17ae243E() #19
  unreachable

bb23:                                             ; preds = %bb22
  %33 = load ptr, ptr %0, align 8
  %34 = getelementptr inbounds i8, ptr %0, i64 8
  %35 = load i32, ptr %34, align 8
  %36 = insertvalue { ptr, i32 } poison, ptr %33, 0
  %37 = insertvalue { ptr, i32 } %36, i32 %35, 1
  resume { ptr, i32 } %37
}

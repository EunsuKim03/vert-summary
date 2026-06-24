define i32 @f_gold(i32 %m, i32 %n) unnamed_addr #3 personality ptr @rust_eh_personality {
start:
  %0 = alloca [16 x i8], align 8
  %_17 = alloca [8 x i8], align 4
  %iter1 = alloca [8 x i8], align 4
  %_10 = alloca [8 x i8], align 4
  %iter = alloca [8 x i8], align 4
  %_4 = alloca [24 x i8], align 8
  %count = alloca [24 x i8], align 8
  %_5 = sext i32 %n to i64
; call alloc::vec::from_elem
  call void @_ZN5alloc3vec9from_elem17h9fdb3c4f0bd28596E(ptr sret([24 x i8]) align 8 %_4, i32 1, i64 %_5)
  %_6 = sext i32 %m to i64
; call alloc::vec::from_elem
  call void @_ZN5alloc3vec9from_elem17h42d280bfb327f445E(ptr sret([24 x i8]) align 8 %count, ptr align 8 %_4, i64 %_6)
; invoke <I as core::iter::traits::collect::IntoIterator>::into_iter
  %1 = invoke { i32, i32 } @"_ZN63_$LT$I$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17h0b4044a7ab81817dE"(i32 1, i32 %m)
          to label %bb3 unwind label %cleanup

bb27:                                             ; preds = %cleanup
; invoke core::ptr::drop_in_place<alloc::vec::Vec<alloc::vec::Vec<i32>>>
  invoke void @"_ZN4core3ptr70drop_in_place$LT$alloc..vec..Vec$LT$alloc..vec..Vec$LT$i32$GT$$GT$$GT$17h775fb4c842b20801E"(ptr align 8 %count) #22
          to label %bb28 unwind label %terminate

cleanup:                                          ; preds = %bb20, %bb19, %panic5, %bb17, %panic4, %bb15, %bb14, %bb13, %panic3, %bb10, %bb7, %bb24, %panic2, %bb22, %panic, %bb4, %start
  %2 = landingpad { ptr, i32 }
          cleanup
  %3 = extractvalue { ptr, i32 } %2, 0
  %4 = extractvalue { ptr, i32 } %2, 1
  store ptr %3, ptr %0, align 8
  %5 = getelementptr inbounds i8, ptr %0, i64 8
  store i32 %4, ptr %5, align 8
  br label %bb27

bb3:                                              ; preds = %start
  %_7.0 = extractvalue { i32, i32 } %1, 0
  %_7.1 = extractvalue { i32, i32 } %1, 1
  store i32 %_7.0, ptr %iter, align 4
  %6 = getelementptr inbounds i8, ptr %iter, i64 4
  store i32 %_7.1, ptr %6, align 4
  br label %bb4

bb4:                                              ; preds = %bb11, %bb3
; invoke core::iter::range::<impl core::iter::traits::iterator::Iterator for core::ops::range::Range<A>>::next
  %7 = invoke { i32, i32 } @"_ZN4core4iter5range101_$LT$impl$u20$core..iter..traits..iterator..Iterator$u20$for$u20$core..ops..range..Range$LT$A$GT$$GT$4next17h976d0874e02eb94aE"(ptr align 4 %iter)
          to label %bb5 unwind label %cleanup

bb5:                                              ; preds = %bb4
  %8 = extractvalue { i32, i32 } %7, 0
  %9 = extractvalue { i32, i32 } %7, 1
  store i32 %8, ptr %_10, align 4
  %10 = getelementptr inbounds i8, ptr %_10, i64 4
  store i32 %9, ptr %10, align 4
  %11 = load i32, ptr %_10, align 4
  %12 = getelementptr inbounds i8, ptr %_10, i64 4
  %13 = load i32, ptr %12, align 4
  %_12 = zext i32 %11 to i64
  %14 = trunc nuw i64 %_12 to i1
  br i1 %14, label %bb7, label %bb8

bb7:                                              ; preds = %bb5
  %15 = getelementptr inbounds i8, ptr %_10, i64 4
  %i = load i32, ptr %15, align 4
; invoke <I as core::iter::traits::collect::IntoIterator>::into_iter
  %16 = invoke { i32, i32 } @"_ZN63_$LT$I$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17h0b4044a7ab81817dE"(i32 1, i32 %n)
          to label %bb9 unwind label %cleanup

bb8:                                              ; preds = %bb5
  %17 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %m, i32 1)
  %_48.0 = extractvalue { i32, i1 } %17, 0
  %_48.1 = extractvalue { i32, i1 } %17, 1
  br i1 %_48.1, label %panic, label %bb22

bb22:                                             ; preds = %bb8
  %_46 = sext i32 %_48.0 to i64
; invoke <alloc::vec::Vec<T,A> as core::ops::index::Index<I>>::index
  %_44 = invoke align 8 ptr @"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h2e25f5f4c0d29ad4E"(ptr align 8 %count, i64 %_46, ptr align 8 @alloc_add54dea945342527bc80369af396a12)
          to label %bb23 unwind label %cleanup

panic:                                            ; preds = %bb8
; invoke core::panicking::panic_const::panic_const_sub_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_sub_overflow17h134cc1a7f93654deE(ptr align 8 @alloc_7295b34d4f2b934e8175199dc8b458f7) #24
          to label %unreachable unwind label %cleanup

unreachable:                                      ; preds = %panic5, %panic4, %panic3, %panic2, %panic
  unreachable

bb23:                                             ; preds = %bb22
  %18 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %n, i32 1)
  %_51.0 = extractvalue { i32, i1 } %18, 0
  %_51.1 = extractvalue { i32, i1 } %18, 1
  br i1 %_51.1, label %panic2, label %bb24

bb24:                                             ; preds = %bb23
  %_49 = sext i32 %_51.0 to i64
; invoke <alloc::vec::Vec<T,A> as core::ops::index::Index<I>>::index
  %_43 = invoke align 4 ptr @"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17had61aba24e53f547E"(ptr align 8 %_44, i64 %_49, ptr align 8 @alloc_aedb19f93eeb283b4fb08880906cd229)
          to label %bb25 unwind label %cleanup

panic2:                                           ; preds = %bb23
; invoke core::panicking::panic_const::panic_const_sub_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_sub_overflow17h134cc1a7f93654deE(ptr align 8 @alloc_90da6a2738b05f4d2c5863da84a92ae4) #24
          to label %unreachable unwind label %cleanup

bb25:                                             ; preds = %bb24
  %_0 = load i32, ptr %_43, align 4
; call core::ptr::drop_in_place<alloc::vec::Vec<alloc::vec::Vec<i32>>>
  call void @"_ZN4core3ptr70drop_in_place$LT$alloc..vec..Vec$LT$alloc..vec..Vec$LT$i32$GT$$GT$$GT$17h775fb4c842b20801E"(ptr align 8 %count)
  ret i32 %_0

bb9:                                              ; preds = %bb7
  %_14.0 = extractvalue { i32, i32 } %16, 0
  %_14.1 = extractvalue { i32, i32 } %16, 1
  store i32 %_14.0, ptr %iter1, align 4
  %19 = getelementptr inbounds i8, ptr %iter1, i64 4
  store i32 %_14.1, ptr %19, align 4
  br label %bb10

bb10:                                             ; preds = %bb21, %bb9
; invoke core::iter::range::<impl core::iter::traits::iterator::Iterator for core::ops::range::Range<A>>::next
  %20 = invoke { i32, i32 } @"_ZN4core4iter5range101_$LT$impl$u20$core..iter..traits..iterator..Iterator$u20$for$u20$core..ops..range..Range$LT$A$GT$$GT$4next17h976d0874e02eb94aE"(ptr align 4 %iter1)
          to label %bb11 unwind label %cleanup

bb11:                                             ; preds = %bb10
  %21 = extractvalue { i32, i32 } %20, 0
  %22 = extractvalue { i32, i32 } %20, 1
  store i32 %21, ptr %_17, align 4
  %23 = getelementptr inbounds i8, ptr %_17, i64 4
  store i32 %22, ptr %23, align 4
  %24 = load i32, ptr %_17, align 4
  %25 = getelementptr inbounds i8, ptr %_17, i64 4
  %26 = load i32, ptr %25, align 4
  %_19 = zext i32 %24 to i64
  %27 = trunc nuw i64 %_19 to i1
  br i1 %27, label %bb12, label %bb4

bb12:                                             ; preds = %bb11
  %28 = getelementptr inbounds i8, ptr %_17, i64 4
  %j = load i32, ptr %28, align 4
  %29 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %i, i32 1)
  %_27.0 = extractvalue { i32, i1 } %29, 0
  %_27.1 = extractvalue { i32, i1 } %29, 1
  br i1 %_27.1, label %panic3, label %bb13

bb13:                                             ; preds = %bb12
  %_25 = sext i32 %_27.0 to i64
; invoke <alloc::vec::Vec<T,A> as core::ops::index::Index<I>>::index
  %_23 = invoke align 8 ptr @"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h2e25f5f4c0d29ad4E"(ptr align 8 %count, i64 %_25, ptr align 8 @alloc_b1c5fb87344d527737e7502755d2cdb6)
          to label %bb14 unwind label %cleanup

panic3:                                           ; preds = %bb12
; invoke core::panicking::panic_const::panic_const_sub_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_sub_overflow17h134cc1a7f93654deE(ptr align 8 @alloc_e5d7eb3218e3d2479aa5eec4df136cce) #24
          to label %unreachable unwind label %cleanup

bb14:                                             ; preds = %bb13
  %_28 = sext i32 %j to i64
; invoke <alloc::vec::Vec<T,A> as core::ops::index::Index<I>>::index
  %_22 = invoke align 4 ptr @"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17had61aba24e53f547E"(ptr align 8 %_23, i64 %_28, ptr align 8 @alloc_12d417564cad6aac1a021013ffd3a8da)
          to label %bb15 unwind label %cleanup

bb15:                                             ; preds = %bb14
  %_21 = load i32, ptr %_22, align 4
  %_33 = sext i32 %i to i64
; invoke <alloc::vec::Vec<T,A> as core::ops::index::Index<I>>::index
  %_31 = invoke align 8 ptr @"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h2e25f5f4c0d29ad4E"(ptr align 8 %count, i64 %_33, ptr align 8 @alloc_54704b5798d23eb0eec56d9d623f3625)
          to label %bb16 unwind label %cleanup

bb16:                                             ; preds = %bb15
  %30 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %j, i32 1)
  %_36.0 = extractvalue { i32, i1 } %30, 0
  %_36.1 = extractvalue { i32, i1 } %30, 1
  br i1 %_36.1, label %panic4, label %bb17

bb17:                                             ; preds = %bb16
  %_34 = sext i32 %_36.0 to i64
; invoke <alloc::vec::Vec<T,A> as core::ops::index::Index<I>>::index
  %_30 = invoke align 4 ptr @"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17had61aba24e53f547E"(ptr align 8 %_31, i64 %_34, ptr align 8 @alloc_3e854e26426e5ea82ea80d0e237f8475)
          to label %bb18 unwind label %cleanup

panic4:                                           ; preds = %bb16
; invoke core::panicking::panic_const::panic_const_sub_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_sub_overflow17h134cc1a7f93654deE(ptr align 8 @alloc_76bd820f5854f1149642402208170ac4) #24
          to label %unreachable unwind label %cleanup

bb18:                                             ; preds = %bb17
  %_29 = load i32, ptr %_30, align 4
  %31 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %_21, i32 %_29)
  %_37.0 = extractvalue { i32, i1 } %31, 0
  %_37.1 = extractvalue { i32, i1 } %31, 1
  br i1 %_37.1, label %panic5, label %bb19

bb19:                                             ; preds = %bb18
  %_41 = sext i32 %i to i64
; invoke <alloc::vec::Vec<T,A> as core::ops::index::IndexMut<I>>::index_mut
  %_39 = invoke align 8 ptr @"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h48b0feb35abfea98E"(ptr align 8 %count, i64 %_41, ptr align 8 @alloc_a8d5724fb7ae1b2a0dbd3fe1a1cda881)
          to label %bb20 unwind label %cleanup

panic5:                                           ; preds = %bb18
; invoke core::panicking::panic_const::panic_const_add_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_28cebf8d13592c6b4ae738d3e9cf1eb2) #24
          to label %unreachable unwind label %cleanup

bb20:                                             ; preds = %bb19
  %_42 = sext i32 %j to i64
; invoke <alloc::vec::Vec<T,A> as core::ops::index::IndexMut<I>>::index_mut
  %_38 = invoke align 4 ptr @"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h85537bde1336e2f9E"(ptr align 8 %_39, i64 %_42, ptr align 8 @alloc_572c6fcd34bbdc3470df4441d363f0a1)
          to label %bb21 unwind label %cleanup

bb21:                                             ; preds = %bb20
  store i32 %_37.0, ptr %_38, align 4
  br label %bb10

bb6:                                              ; No predecessors!
  unreachable

terminate:                                        ; preds = %bb27
  %32 = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer
; call core::panicking::panic_in_cleanup
  call void @_ZN4core9panicking16panic_in_cleanup17h5f6bde45d17ae243E() #20
  unreachable

bb28:                                             ; preds = %bb27
  %33 = load ptr, ptr %0, align 8
  %34 = getelementptr inbounds i8, ptr %0, i64 8
  %35 = load i32, ptr %34, align 8
  %36 = insertvalue { ptr, i32 } poison, ptr %33, 0
  %37 = insertvalue { ptr, i32 } %36, i32 %35, 1
  resume { ptr, i32 } %37
}

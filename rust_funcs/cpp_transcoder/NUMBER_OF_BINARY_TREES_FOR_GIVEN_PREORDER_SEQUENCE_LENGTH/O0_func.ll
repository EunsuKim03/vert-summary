define i32 @f_gold(i32 %n) unnamed_addr #3 personality ptr @rust_eh_personality {
start:
  %0 = alloca [16 x i8], align 8
  %_20 = alloca [8 x i8], align 4
  %iter1 = alloca [8 x i8], align 4
  %_13 = alloca [8 x i8], align 4
  %iter = alloca [12 x i8], align 4
  %_11 = alloca [12 x i8], align 4
  %_10 = alloca [12 x i8], align 4
  %BT = alloca [24 x i8], align 8
  %_4 = sext i32 %n to i64
  %_5.0 = add i64 %_4, 1
  %_5.1 = icmp ult i64 %_5.0, %_4
  br i1 %_5.1, label %panic, label %bb1

bb1:                                              ; preds = %start
; call alloc::vec::from_elem
  call void @_ZN5alloc3vec9from_elem17h8f9eba1a2d38bc40E(ptr sret([24 x i8]) align 8 %BT, i32 0, i64 %_5.0)
; invoke <alloc::vec::Vec<T,A> as core::ops::index::IndexMut<I>>::index_mut
  %_6 = invoke align 4 ptr @"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h3062522edc0853aaE"(ptr align 8 %BT, i64 0, ptr align 8 @alloc_4b18375d5ace3c8d932d674a74210703)
          to label %bb3 unwind label %cleanup

panic:                                            ; preds = %start
; call core::panicking::panic_const::panic_const_add_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_04db4ae4713d58d443894c3aedabe5bb) #23
  unreachable

bb25:                                             ; preds = %cleanup
; invoke core::ptr::drop_in_place<alloc::vec::Vec<i32>>
  invoke void @"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17haceb57b832332a0dE"(ptr align 8 %BT) #22
          to label %bb26 unwind label %terminate

cleanup:                                          ; preds = %panic5, %bb20, %panic4, %bb18, %panic3, %panic2, %bb15, %bb13, %bb10, %bb11, %bb7, %bb5, %bb4, %bb3, %bb1
  %1 = landingpad { ptr, i32 }
          cleanup
  %2 = extractvalue { ptr, i32 } %1, 0
  %3 = extractvalue { ptr, i32 } %1, 1
  store ptr %2, ptr %0, align 8
  %4 = getelementptr inbounds i8, ptr %0, i64 8
  store i32 %3, ptr %4, align 8
  br label %bb25

bb3:                                              ; preds = %bb1
  store i32 1, ptr %_6, align 4
; invoke <alloc::vec::Vec<T,A> as core::ops::index::IndexMut<I>>::index_mut
  %_8 = invoke align 4 ptr @"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h3062522edc0853aaE"(ptr align 8 %BT, i64 1, ptr align 8 @alloc_deffb33e00b87e8c9a9d2a89c55e01b5)
          to label %bb4 unwind label %cleanup

bb4:                                              ; preds = %bb3
  store i32 1, ptr %_8, align 4
; invoke core::ops::range::RangeInclusive<Idx>::new
  invoke void @"_ZN4core3ops5range25RangeInclusive$LT$Idx$GT$3new17h63ec98bed076a733E"(ptr sret([12 x i8]) align 4 %_11, i32 2, i32 %n)
          to label %bb5 unwind label %cleanup

bb5:                                              ; preds = %bb4
; invoke <I as core::iter::traits::collect::IntoIterator>::into_iter
  invoke void @"_ZN63_$LT$I$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17h1b1671408b424693E"(ptr sret([12 x i8]) align 4 %_10, ptr align 4 %_11)
          to label %bb6 unwind label %cleanup

bb6:                                              ; preds = %bb5
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %iter, ptr align 4 %_10, i64 12, i1 false)
  br label %bb7

bb7:                                              ; preds = %bb14, %bb6
; invoke core::iter::range::<impl core::iter::traits::iterator::Iterator for core::ops::range::RangeInclusive<A>>::next
  %5 = invoke { i32, i32 } @"_ZN4core4iter5range110_$LT$impl$u20$core..iter..traits..iterator..Iterator$u20$for$u20$core..ops..range..RangeInclusive$LT$A$GT$$GT$4next17h55e1ab365765f4d3E"(ptr align 4 %iter)
          to label %bb8 unwind label %cleanup

bb8:                                              ; preds = %bb7
  %6 = extractvalue { i32, i32 } %5, 0
  %7 = extractvalue { i32, i32 } %5, 1
  store i32 %6, ptr %_13, align 4
  %8 = getelementptr inbounds i8, ptr %_13, i64 4
  store i32 %7, ptr %8, align 4
  %9 = load i32, ptr %_13, align 4
  %10 = getelementptr inbounds i8, ptr %_13, i64 4
  %11 = load i32, ptr %10, align 4
  %_15 = zext i32 %9 to i64
  %12 = trunc nuw i64 %_15 to i1
  br i1 %12, label %bb10, label %bb11

bb10:                                             ; preds = %bb8
  %13 = getelementptr inbounds i8, ptr %_13, i64 4
  %i = load i32, ptr %13, align 4
; invoke <I as core::iter::traits::collect::IntoIterator>::into_iter
  %14 = invoke { i32, i32 } @"_ZN63_$LT$I$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17h1602ac6dadfff430E"(i32 0, i32 %i)
          to label %bb12 unwind label %cleanup

bb11:                                             ; preds = %bb8
  %_45 = sext i32 %n to i64
; invoke <alloc::vec::Vec<T,A> as core::ops::index::Index<I>>::index
  %_43 = invoke align 4 ptr @"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17he40baf76e3cb9f29E"(ptr align 8 %BT, i64 %_45, ptr align 8 @alloc_b6f92e3e43da0384fd587c273fd4e93a)
          to label %bb23 unwind label %cleanup

bb23:                                             ; preds = %bb11
  %_0 = load i32, ptr %_43, align 4
; call core::ptr::drop_in_place<alloc::vec::Vec<i32>>
  call void @"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17haceb57b832332a0dE"(ptr align 8 %BT)
  ret i32 %_0

bb12:                                             ; preds = %bb10
  %_17.0 = extractvalue { i32, i32 } %14, 0
  %_17.1 = extractvalue { i32, i32 } %14, 1
  store i32 %_17.0, ptr %iter1, align 4
  %15 = getelementptr inbounds i8, ptr %iter1, i64 4
  store i32 %_17.1, ptr %15, align 4
  br label %bb13

bb13:                                             ; preds = %bb22, %bb12
; invoke core::iter::range::<impl core::iter::traits::iterator::Iterator for core::ops::range::Range<A>>::next
  %16 = invoke { i32, i32 } @"_ZN4core4iter5range101_$LT$impl$u20$core..iter..traits..iterator..Iterator$u20$for$u20$core..ops..range..Range$LT$A$GT$$GT$4next17hb7a12070eb6b6bb5E"(ptr align 4 %iter1)
          to label %bb14 unwind label %cleanup

bb14:                                             ; preds = %bb13
  %17 = extractvalue { i32, i32 } %16, 0
  %18 = extractvalue { i32, i32 } %16, 1
  store i32 %17, ptr %_20, align 4
  %19 = getelementptr inbounds i8, ptr %_20, i64 4
  store i32 %18, ptr %19, align 4
  %20 = load i32, ptr %_20, align 4
  %21 = getelementptr inbounds i8, ptr %_20, i64 4
  %22 = load i32, ptr %21, align 4
  %_22 = zext i32 %20 to i64
  %23 = trunc nuw i64 %_22 to i1
  br i1 %23, label %bb15, label %bb7

bb15:                                             ; preds = %bb14
  %24 = getelementptr inbounds i8, ptr %_20, i64 4
  %j = load i32, ptr %24, align 4
  %_28 = sext i32 %j to i64
; invoke <alloc::vec::Vec<T,A> as core::ops::index::Index<I>>::index
  %_26 = invoke align 4 ptr @"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17he40baf76e3cb9f29E"(ptr align 8 %BT, i64 %_28, ptr align 8 @alloc_c16ceaf2aba213a69df6c31a75b394f1)
          to label %bb16 unwind label %cleanup

bb16:                                             ; preds = %bb15
  %_25 = load i32, ptr %_26, align 4
  %_34 = sext i32 %i to i64
  %_35 = sext i32 %j to i64
  %_36.0 = sub i64 %_34, %_35
  %_36.1 = icmp ult i64 %_34, %_35
  br i1 %_36.1, label %panic2, label %bb17

bb17:                                             ; preds = %bb16
  %_37.0 = sub i64 %_36.0, 1
  %_37.1 = icmp ult i64 %_36.0, 1
  br i1 %_37.1, label %panic3, label %bb18

panic2:                                           ; preds = %bb16
; invoke core::panicking::panic_const::panic_const_sub_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_sub_overflow17h134cc1a7f93654deE(ptr align 8 @alloc_13a17f2a4fbe4dec3fa7a45b2bf943a4) #24
          to label %unreachable unwind label %cleanup

unreachable:                                      ; preds = %panic5, %panic4, %panic3, %panic2
  unreachable

bb18:                                             ; preds = %bb17
; invoke <alloc::vec::Vec<T,A> as core::ops::index::Index<I>>::index
  %_30 = invoke align 4 ptr @"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17he40baf76e3cb9f29E"(ptr align 8 %BT, i64 %_37.0, ptr align 8 @alloc_effbd9c5313ba2b316a5391c47e61ea7)
          to label %bb19 unwind label %cleanup

panic3:                                           ; preds = %bb17
; invoke core::panicking::panic_const::panic_const_sub_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_sub_overflow17h134cc1a7f93654deE(ptr align 8 @alloc_13a17f2a4fbe4dec3fa7a45b2bf943a4) #24
          to label %unreachable unwind label %cleanup

bb19:                                             ; preds = %bb18
  %_29 = load i32, ptr %_30, align 4
  %25 = call { i32, i1 } @llvm.smul.with.overflow.i32(i32 %_25, i32 %_29)
  %_38.0 = extractvalue { i32, i1 } %25, 0
  %_38.1 = extractvalue { i32, i1 } %25, 1
  br i1 %_38.1, label %panic4, label %bb20

bb20:                                             ; preds = %bb19
  %_41 = sext i32 %i to i64
; invoke <alloc::vec::Vec<T,A> as core::ops::index::IndexMut<I>>::index_mut
  %_39 = invoke align 4 ptr @"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h3062522edc0853aaE"(ptr align 8 %BT, i64 %_41, ptr align 8 @alloc_f7f9488adfa6d6d8641d1c4f6d79fe35)
          to label %bb21 unwind label %cleanup

panic4:                                           ; preds = %bb19
; invoke core::panicking::panic_const::panic_const_mul_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_mul_overflow17h554ac164c12099f8E(ptr align 8 @alloc_e67acd7a82d82d14af7f5633929cf51d) #24
          to label %unreachable unwind label %cleanup

bb21:                                             ; preds = %bb20
  %26 = load i32, ptr %_39, align 4
  %27 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %26, i32 %_38.0)
  %_42.0 = extractvalue { i32, i1 } %27, 0
  %_42.1 = extractvalue { i32, i1 } %27, 1
  br i1 %_42.1, label %panic5, label %bb22

bb22:                                             ; preds = %bb21
  store i32 %_42.0, ptr %_39, align 4
  br label %bb13

panic5:                                           ; preds = %bb21
; invoke core::panicking::panic_const::panic_const_add_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_eae342130478b8914894c7428928ee7e) #24
          to label %unreachable unwind label %cleanup

bb9:                                              ; No predecessors!
  unreachable

terminate:                                        ; preds = %bb25
  %28 = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer
; call core::panicking::panic_in_cleanup
  call void @_ZN4core9panicking16panic_in_cleanup17h5f6bde45d17ae243E() #21
  unreachable

bb26:                                             ; preds = %bb25
  %29 = load ptr, ptr %0, align 8
  %30 = getelementptr inbounds i8, ptr %0, i64 8
  %31 = load i32, ptr %30, align 8
  %32 = insertvalue { ptr, i32 } poison, ptr %29, 0
  %33 = insertvalue { ptr, i32 } %32, i32 %31, 1
  resume { ptr, i32 } %33
}

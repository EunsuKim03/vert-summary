define i32 @f_gold(i32 %n, i32 %r, i32 %p) unnamed_addr #3 personality ptr @rust_eh_personality {
start:
  %0 = alloca [16 x i8], align 8
  %_22 = alloca [8 x i8], align 4
  %iter1 = alloca [12 x i8], align 4
  %_19 = alloca [12 x i8], align 4
  %_18 = alloca [12 x i8], align 4
  %_17 = alloca [12 x i8], align 4
  %_13 = alloca [8 x i8], align 4
  %iter = alloca [12 x i8], align 4
  %_11 = alloca [12 x i8], align 4
  %_10 = alloca [12 x i8], align 4
  %C = alloca [24 x i8], align 8
  %_6 = sext i32 %r to i64
  %_7.0 = add i64 %_6, 1
  %_7.1 = icmp ult i64 %_7.0, %_6
  br i1 %_7.1, label %panic, label %bb1

bb1:                                              ; preds = %start
; call alloc::vec::from_elem
  call void @_ZN5alloc3vec9from_elem17ha3f552d8c890fe3bE(ptr sret([24 x i8]) align 8 %C, i32 0, i64 %_7.0)
; invoke <alloc::vec::Vec<T,A> as core::ops::index::IndexMut<I>>::index_mut
  %_8 = invoke align 4 ptr @"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17hb52349453e764f87E"(ptr align 8 %C, i64 0, ptr align 8 @alloc_cbaabbe3db7d07e72a0b81e595cdb1a0)
          to label %bb3 unwind label %cleanup

panic:                                            ; preds = %start
; call core::panicking::panic_const::panic_const_add_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_cc67d2d55df26ced84f102e07d080410) #23
  unreachable

bb27:                                             ; preds = %cleanup
; invoke core::ptr::drop_in_place<alloc::vec::Vec<i32>>
  invoke void @"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17h62552dd49dff96d4E"(ptr align 8 %C) #22
          to label %bb28 unwind label %terminate

cleanup:                                          ; preds = %bb23, %panic5, %panic4, %panic3, %bb19, %panic2, %bb17, %bb15, %bb13, %bb12, %bb11, %bb9, %bb10, %bb6, %bb4, %bb3, %bb1
  %1 = landingpad { ptr, i32 }
          cleanup
  %2 = extractvalue { ptr, i32 } %1, 0
  %3 = extractvalue { ptr, i32 } %1, 1
  store ptr %2, ptr %0, align 8
  %4 = getelementptr inbounds i8, ptr %0, i64 8
  store i32 %3, ptr %4, align 8
  br label %bb27

bb3:                                              ; preds = %bb1
  store i32 1, ptr %_8, align 4
; invoke core::ops::range::RangeInclusive<Idx>::new
  invoke void @"_ZN4core3ops5range25RangeInclusive$LT$Idx$GT$3new17ha7209de5b1040533E"(ptr sret([12 x i8]) align 4 %_11, i32 1, i32 %n)
          to label %bb4 unwind label %cleanup

bb4:                                              ; preds = %bb3
; invoke <I as core::iter::traits::collect::IntoIterator>::into_iter
  invoke void @"_ZN63_$LT$I$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17h986785ca06002ce9E"(ptr sret([12 x i8]) align 4 %_10, ptr align 4 %_11)
          to label %bb5 unwind label %cleanup

bb5:                                              ; preds = %bb4
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %iter, ptr align 4 %_10, i64 12, i1 false)
  br label %bb6

bb6:                                              ; preds = %bb16, %bb5
; invoke core::iter::range::<impl core::iter::traits::iterator::Iterator for core::ops::range::RangeInclusive<A>>::next
  %5 = invoke { i32, i32 } @"_ZN4core4iter5range110_$LT$impl$u20$core..iter..traits..iterator..Iterator$u20$for$u20$core..ops..range..RangeInclusive$LT$A$GT$$GT$4next17h85b944ad4ea271f1E"(ptr align 4 %iter)
          to label %bb7 unwind label %cleanup

bb7:                                              ; preds = %bb6
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
  br i1 %12, label %bb9, label %bb10

bb9:                                              ; preds = %bb7
  %13 = getelementptr inbounds i8, ptr %_13, i64 4
  %i = load i32, ptr %13, align 4
  %_20 = invoke i32 @min(i32 %i, i32 %r)
          to label %bb11 unwind label %cleanup

bb10:                                             ; preds = %bb7
  %_47 = sext i32 %r to i64
; invoke <alloc::vec::Vec<T,A> as core::ops::index::Index<I>>::index
  %_45 = invoke align 4 ptr @"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hfbe54f60cfb1554cE"(ptr align 8 %C, i64 %_47, ptr align 8 @alloc_4ee38e030abe9edffc156d7d8df41a08)
          to label %bb25 unwind label %cleanup

bb25:                                             ; preds = %bb10
  %_0 = load i32, ptr %_45, align 4
; call core::ptr::drop_in_place<alloc::vec::Vec<i32>>
  call void @"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17h62552dd49dff96d4E"(ptr align 8 %C)
  ret i32 %_0

bb11:                                             ; preds = %bb9
; invoke core::ops::range::RangeInclusive<Idx>::new
  invoke void @"_ZN4core3ops5range25RangeInclusive$LT$Idx$GT$3new17ha7209de5b1040533E"(ptr sret([12 x i8]) align 4 %_19, i32 1, i32 %_20)
          to label %bb12 unwind label %cleanup

bb12:                                             ; preds = %bb11
; invoke core::iter::traits::iterator::Iterator::rev
  invoke void @_ZN4core4iter6traits8iterator8Iterator3rev17h13bb698fca54b5d2E(ptr sret([12 x i8]) align 4 %_18, ptr align 4 %_19)
          to label %bb13 unwind label %cleanup

bb13:                                             ; preds = %bb12
; invoke <I as core::iter::traits::collect::IntoIterator>::into_iter
  invoke void @"_ZN63_$LT$I$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17hb42067d071226de8E"(ptr sret([12 x i8]) align 4 %_17, ptr align 4 %_18)
          to label %bb14 unwind label %cleanup

bb14:                                             ; preds = %bb13
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %iter1, ptr align 4 %_17, i64 12, i1 false)
  br label %bb15

bb15:                                             ; preds = %bb24, %bb14
; invoke <core::iter::adapters::rev::Rev<I> as core::iter::traits::iterator::Iterator>::next
  %14 = invoke { i32, i32 } @"_ZN98_$LT$core..iter..adapters..rev..Rev$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h754e6cba7d2d0ec6E"(ptr align 4 %iter1)
          to label %bb16 unwind label %cleanup

bb16:                                             ; preds = %bb15
  %15 = extractvalue { i32, i32 } %14, 0
  %16 = extractvalue { i32, i32 } %14, 1
  store i32 %15, ptr %_22, align 4
  %17 = getelementptr inbounds i8, ptr %_22, i64 4
  store i32 %16, ptr %17, align 4
  %18 = load i32, ptr %_22, align 4
  %19 = getelementptr inbounds i8, ptr %_22, i64 4
  %20 = load i32, ptr %19, align 4
  %_24 = zext i32 %18 to i64
  %21 = trunc nuw i64 %_24 to i1
  br i1 %21, label %bb17, label %bb6

bb17:                                             ; preds = %bb16
  %22 = getelementptr inbounds i8, ptr %_22, i64 4
  %j = load i32, ptr %22, align 4
  %_30 = sext i32 %j to i64
; invoke <alloc::vec::Vec<T,A> as core::ops::index::Index<I>>::index
  %_28 = invoke align 4 ptr @"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hfbe54f60cfb1554cE"(ptr align 8 %C, i64 %_30, ptr align 8 @alloc_9fc43157b44e06407134cbf65a3b2177)
          to label %bb18 unwind label %cleanup

bb18:                                             ; preds = %bb17
  %_27 = load i32, ptr %_28, align 4
  %23 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %j, i32 1)
  %_36.0 = extractvalue { i32, i1 } %23, 0
  %_36.1 = extractvalue { i32, i1 } %23, 1
  br i1 %_36.1, label %panic2, label %bb19

bb19:                                             ; preds = %bb18
  %_34 = sext i32 %_36.0 to i64
; invoke <alloc::vec::Vec<T,A> as core::ops::index::Index<I>>::index
  %_32 = invoke align 4 ptr @"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hfbe54f60cfb1554cE"(ptr align 8 %C, i64 %_34, ptr align 8 @alloc_bc34b870f08b512910d22c1465f446fa)
          to label %bb20 unwind label %cleanup

panic2:                                           ; preds = %bb18
; invoke core::panicking::panic_const::panic_const_sub_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_sub_overflow17h134cc1a7f93654deE(ptr align 8 @alloc_36b5cfea038eb4669465b6b30fd44f64) #24
          to label %unreachable unwind label %cleanup

unreachable:                                      ; preds = %panic5, %panic4, %panic3, %panic2
  unreachable

bb20:                                             ; preds = %bb19
  %_31 = load i32, ptr %_32, align 4
  %24 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %_27, i32 %_31)
  %_37.0 = extractvalue { i32, i1 } %24, 0
  %_37.1 = extractvalue { i32, i1 } %24, 1
  br i1 %_37.1, label %panic3, label %bb21

bb21:                                             ; preds = %bb20
  %_38 = icmp eq i32 %p, 0
  br i1 %_38, label %panic4, label %bb22

panic3:                                           ; preds = %bb20
; invoke core::panicking::panic_const::panic_const_add_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_feea7419fd2ad17d66c3c0585ae8ad88) #24
          to label %unreachable unwind label %cleanup

bb22:                                             ; preds = %bb21
  %_39 = icmp eq i32 %p, -1
  %_40 = icmp eq i32 %_37.0, -2147483648
  %_41 = and i1 %_39, %_40
  br i1 %_41, label %panic5, label %bb23

panic4:                                           ; preds = %bb21
; invoke core::panicking::panic_const::panic_const_rem_by_zero
  invoke void @_ZN4core9panicking11panic_const23panic_const_rem_by_zero17h68b8e0645961a790E(ptr align 8 @alloc_feea7419fd2ad17d66c3c0585ae8ad88) #24
          to label %unreachable unwind label %cleanup

bb23:                                             ; preds = %bb22
  %_44 = sext i32 %j to i64
; invoke <alloc::vec::Vec<T,A> as core::ops::index::IndexMut<I>>::index_mut
  %_42 = invoke align 4 ptr @"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17hb52349453e764f87E"(ptr align 8 %C, i64 %_44, ptr align 8 @alloc_d5bb81bd73fea825eff1dbcab2602be6)
          to label %bb24 unwind label %cleanup

panic5:                                           ; preds = %bb22
; invoke core::panicking::panic_const::panic_const_rem_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_rem_overflow17h4aab8182a78c82f8E(ptr align 8 @alloc_feea7419fd2ad17d66c3c0585ae8ad88) #24
          to label %unreachable unwind label %cleanup

bb24:                                             ; preds = %bb23
  %25 = srem i32 %_37.0, %p
  store i32 %25, ptr %_42, align 4
  br label %bb15

bb8:                                              ; No predecessors!
  unreachable

terminate:                                        ; preds = %bb27
  %26 = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer
; call core::panicking::panic_in_cleanup
  call void @_ZN4core9panicking16panic_in_cleanup17h5f6bde45d17ae243E() #21
  unreachable

bb28:                                             ; preds = %bb27
  %27 = load ptr, ptr %0, align 8
  %28 = getelementptr inbounds i8, ptr %0, i64 8
  %29 = load i32, ptr %28, align 8
  %30 = insertvalue { ptr, i32 } poison, ptr %27, 0
  %31 = insertvalue { ptr, i32 } %30, i32 %29, 1
  resume { ptr, i32 } %31
}

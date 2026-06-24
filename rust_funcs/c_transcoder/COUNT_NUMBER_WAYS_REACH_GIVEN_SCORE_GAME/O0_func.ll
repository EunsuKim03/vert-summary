define i32 @f_gold(i32 %n) unnamed_addr #3 personality ptr @rust_eh_personality {
start:
  %0 = alloca [16 x i8], align 8
  %_45 = alloca [8 x i8], align 4
  %iter2 = alloca [12 x i8], align 4
  %_43 = alloca [12 x i8], align 4
  %_42 = alloca [12 x i8], align 4
  %_28 = alloca [8 x i8], align 4
  %iter1 = alloca [12 x i8], align 4
  %_26 = alloca [12 x i8], align 4
  %_25 = alloca [12 x i8], align 4
  %_11 = alloca [8 x i8], align 4
  %iter = alloca [12 x i8], align 4
  %_9 = alloca [12 x i8], align 4
  %_8 = alloca [12 x i8], align 4
  %table = alloca [24 x i8], align 8
  %_4 = sext i32 %n to i64
  %_5.0 = add i64 %_4, 1
  %_5.1 = icmp ult i64 %_5.0, %_4
  br i1 %_5.1, label %panic, label %bb1

bb1:                                              ; preds = %start
; call alloc::vec::from_elem
  call void @_ZN5alloc3vec9from_elem17he5770a421193be59E(ptr sret([24 x i8]) align 8 %table, i32 0, i64 %_5.0)
; invoke <alloc::vec::Vec<T,A> as core::ops::index::IndexMut<I>>::index_mut
  %_6 = invoke align 4 ptr @"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17hf851295e07cf22b7E"(ptr align 8 %table, i64 0, ptr align 8 @alloc_2270001b817e0d6be4814a133ce858ba)
          to label %bb3 unwind label %cleanup

panic:                                            ; preds = %start
; call core::panicking::panic_const::panic_const_add_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_0e7b8191df3dd49d7d29bdf0918dd513) #23
  unreachable

bb37:                                             ; preds = %cleanup
; invoke core::ptr::drop_in_place<alloc::vec::Vec<i32>>
  invoke void @"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17h606ce4c29935e209E"(ptr align 8 %table) #22
          to label %bb38 unwind label %terminate

cleanup:                                          ; preds = %panic10, %bb12, %bb11, %panic9, %panic7, %bb22, %bb21, %panic6, %panic4, %bb32, %bb31, %panic3, %bb30, %bb27, %bb25, %bb20, %bb17, %bb15, %bb10, %bb6, %bb4, %bb3, %bb1
  %1 = landingpad { ptr, i32 }
          cleanup
  %2 = extractvalue { ptr, i32 } %1, 0
  %3 = extractvalue { ptr, i32 } %1, 1
  store ptr %2, ptr %0, align 8
  %4 = getelementptr inbounds i8, ptr %0, i64 8
  store i32 %3, ptr %4, align 8
  br label %bb37

bb3:                                              ; preds = %bb1
  store i32 1, ptr %_6, align 4
; invoke core::ops::range::RangeInclusive<Idx>::new
  invoke void @"_ZN4core3ops5range25RangeInclusive$LT$Idx$GT$3new17h7ba8bfd5f4cc7fe9E"(ptr sret([12 x i8]) align 4 %_9, i32 3, i32 %n)
          to label %bb4 unwind label %cleanup

bb4:                                              ; preds = %bb3
; invoke <I as core::iter::traits::collect::IntoIterator>::into_iter
  invoke void @"_ZN63_$LT$I$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17h3874c81baea3b000E"(ptr sret([12 x i8]) align 4 %_8, ptr align 4 %_9)
          to label %bb5 unwind label %cleanup

bb5:                                              ; preds = %bb4
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %iter, ptr align 4 %_8, i64 12, i1 false)
  br label %bb6

bb6:                                              ; preds = %bb14, %bb5
; invoke core::iter::range::<impl core::iter::traits::iterator::Iterator for core::ops::range::RangeInclusive<A>>::next
  %5 = invoke { i32, i32 } @"_ZN4core4iter5range110_$LT$impl$u20$core..iter..traits..iterator..Iterator$u20$for$u20$core..ops..range..RangeInclusive$LT$A$GT$$GT$4next17hfbd17d6b915971e8E"(ptr align 4 %iter)
          to label %bb7 unwind label %cleanup

bb7:                                              ; preds = %bb6
  %6 = extractvalue { i32, i32 } %5, 0
  %7 = extractvalue { i32, i32 } %5, 1
  store i32 %6, ptr %_11, align 4
  %8 = getelementptr inbounds i8, ptr %_11, i64 4
  store i32 %7, ptr %8, align 4
  %9 = load i32, ptr %_11, align 4
  %10 = getelementptr inbounds i8, ptr %_11, i64 4
  %11 = load i32, ptr %10, align 4
  %_13 = zext i32 %9 to i64
  %12 = trunc nuw i64 %_13 to i1
  br i1 %12, label %bb9, label %bb10

bb9:                                              ; preds = %bb7
  %13 = getelementptr inbounds i8, ptr %_11, i64 4
  %i8 = load i32, ptr %13, align 4
  %14 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %i8, i32 3)
  %_20.0 = extractvalue { i32, i1 } %14, 0
  %_20.1 = extractvalue { i32, i1 } %14, 1
  br i1 %_20.1, label %panic9, label %bb11

bb10:                                             ; preds = %bb7
; invoke core::ops::range::RangeInclusive<Idx>::new
  invoke void @"_ZN4core3ops5range25RangeInclusive$LT$Idx$GT$3new17h7ba8bfd5f4cc7fe9E"(ptr sret([12 x i8]) align 4 %_26, i32 5, i32 %n)
          to label %bb15 unwind label %cleanup

bb15:                                             ; preds = %bb10
; invoke <I as core::iter::traits::collect::IntoIterator>::into_iter
  invoke void @"_ZN63_$LT$I$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17h3874c81baea3b000E"(ptr sret([12 x i8]) align 4 %_25, ptr align 4 %_26)
          to label %bb16 unwind label %cleanup

bb16:                                             ; preds = %bb15
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %iter1, ptr align 4 %_25, i64 12, i1 false)
  br label %bb17

bb17:                                             ; preds = %bb24, %bb16
; invoke core::iter::range::<impl core::iter::traits::iterator::Iterator for core::ops::range::RangeInclusive<A>>::next
  %15 = invoke { i32, i32 } @"_ZN4core4iter5range110_$LT$impl$u20$core..iter..traits..iterator..Iterator$u20$for$u20$core..ops..range..RangeInclusive$LT$A$GT$$GT$4next17hfbd17d6b915971e8E"(ptr align 4 %iter1)
          to label %bb18 unwind label %cleanup

bb18:                                             ; preds = %bb17
  %16 = extractvalue { i32, i32 } %15, 0
  %17 = extractvalue { i32, i32 } %15, 1
  store i32 %16, ptr %_28, align 4
  %18 = getelementptr inbounds i8, ptr %_28, i64 4
  store i32 %17, ptr %18, align 4
  %19 = load i32, ptr %_28, align 4
  %20 = getelementptr inbounds i8, ptr %_28, i64 4
  %21 = load i32, ptr %20, align 4
  %_30 = zext i32 %19 to i64
  %22 = trunc nuw i64 %_30 to i1
  br i1 %22, label %bb19, label %bb20

bb19:                                             ; preds = %bb18
  %23 = getelementptr inbounds i8, ptr %_28, i64 4
  %i5 = load i32, ptr %23, align 4
  %24 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %i5, i32 5)
  %_37.0 = extractvalue { i32, i1 } %24, 0
  %_37.1 = extractvalue { i32, i1 } %24, 1
  br i1 %_37.1, label %panic6, label %bb21

bb20:                                             ; preds = %bb18
; invoke core::ops::range::RangeInclusive<Idx>::new
  invoke void @"_ZN4core3ops5range25RangeInclusive$LT$Idx$GT$3new17h7ba8bfd5f4cc7fe9E"(ptr sret([12 x i8]) align 4 %_43, i32 10, i32 %n)
          to label %bb25 unwind label %cleanup

bb25:                                             ; preds = %bb20
; invoke <I as core::iter::traits::collect::IntoIterator>::into_iter
  invoke void @"_ZN63_$LT$I$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17h3874c81baea3b000E"(ptr sret([12 x i8]) align 4 %_42, ptr align 4 %_43)
          to label %bb26 unwind label %cleanup

bb26:                                             ; preds = %bb25
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %iter2, ptr align 4 %_42, i64 12, i1 false)
  br label %bb27

bb27:                                             ; preds = %bb34, %bb26
; invoke core::iter::range::<impl core::iter::traits::iterator::Iterator for core::ops::range::RangeInclusive<A>>::next
  %25 = invoke { i32, i32 } @"_ZN4core4iter5range110_$LT$impl$u20$core..iter..traits..iterator..Iterator$u20$for$u20$core..ops..range..RangeInclusive$LT$A$GT$$GT$4next17hfbd17d6b915971e8E"(ptr align 4 %iter2)
          to label %bb28 unwind label %cleanup

bb28:                                             ; preds = %bb27
  %26 = extractvalue { i32, i32 } %25, 0
  %27 = extractvalue { i32, i32 } %25, 1
  store i32 %26, ptr %_45, align 4
  %28 = getelementptr inbounds i8, ptr %_45, i64 4
  store i32 %27, ptr %28, align 4
  %29 = load i32, ptr %_45, align 4
  %30 = getelementptr inbounds i8, ptr %_45, i64 4
  %31 = load i32, ptr %30, align 4
  %_47 = zext i32 %29 to i64
  %32 = trunc nuw i64 %_47 to i1
  br i1 %32, label %bb29, label %bb30

bb29:                                             ; preds = %bb28
  %33 = getelementptr inbounds i8, ptr %_45, i64 4
  %i = load i32, ptr %33, align 4
  %34 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %i, i32 10)
  %_54.0 = extractvalue { i32, i1 } %34, 0
  %_54.1 = extractvalue { i32, i1 } %34, 1
  br i1 %_54.1, label %panic3, label %bb31

bb30:                                             ; preds = %bb28
  %_61 = sext i32 %n to i64
; invoke <alloc::vec::Vec<T,A> as core::ops::index::Index<I>>::index
  %_59 = invoke align 4 ptr @"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h94bfcc676d3f77b0E"(ptr align 8 %table, i64 %_61, ptr align 8 @alloc_83cb8219e27f1cc35cdb6c0ef1b6d950)
          to label %bb35 unwind label %cleanup

bb35:                                             ; preds = %bb30
  %_0 = load i32, ptr %_59, align 4
; call core::ptr::drop_in_place<alloc::vec::Vec<i32>>
  call void @"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17h606ce4c29935e209E"(ptr align 8 %table)
  ret i32 %_0

bb31:                                             ; preds = %bb29
  %_52 = sext i32 %_54.0 to i64
; invoke <alloc::vec::Vec<T,A> as core::ops::index::Index<I>>::index
  %_50 = invoke align 4 ptr @"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h94bfcc676d3f77b0E"(ptr align 8 %table, i64 %_52, ptr align 8 @alloc_be79e627137d222683e55bcc0c4f543a)
          to label %bb32 unwind label %cleanup

panic3:                                           ; preds = %bb29
; invoke core::panicking::panic_const::panic_const_sub_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_sub_overflow17h134cc1a7f93654deE(ptr align 8 @alloc_6860f777d0f968892728d64043a68e94) #24
          to label %unreachable unwind label %cleanup

unreachable:                                      ; preds = %panic10, %panic9, %panic7, %panic6, %panic4, %panic3
  unreachable

bb32:                                             ; preds = %bb31
  %_49 = load i32, ptr %_50, align 4
  %_57 = sext i32 %i to i64
; invoke <alloc::vec::Vec<T,A> as core::ops::index::IndexMut<I>>::index_mut
  %_55 = invoke align 4 ptr @"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17hf851295e07cf22b7E"(ptr align 8 %table, i64 %_57, ptr align 8 @alloc_84942b27a20cd827a83b1cc05e44d40f)
          to label %bb33 unwind label %cleanup

bb33:                                             ; preds = %bb32
  %35 = load i32, ptr %_55, align 4
  %36 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %35, i32 %_49)
  %_58.0 = extractvalue { i32, i1 } %36, 0
  %_58.1 = extractvalue { i32, i1 } %36, 1
  br i1 %_58.1, label %panic4, label %bb34

bb34:                                             ; preds = %bb33
  store i32 %_58.0, ptr %_55, align 4
  br label %bb27

panic4:                                           ; preds = %bb33
; invoke core::panicking::panic_const::panic_const_add_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_ec1dcaab266e2a65ba4b0f8b66cc5f06) #24
          to label %unreachable unwind label %cleanup

bb21:                                             ; preds = %bb19
  %_35 = sext i32 %_37.0 to i64
; invoke <alloc::vec::Vec<T,A> as core::ops::index::Index<I>>::index
  %_33 = invoke align 4 ptr @"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h94bfcc676d3f77b0E"(ptr align 8 %table, i64 %_35, ptr align 8 @alloc_6482eeb5ea8e78b6c56c22c8aa99dc48)
          to label %bb22 unwind label %cleanup

panic6:                                           ; preds = %bb19
; invoke core::panicking::panic_const::panic_const_sub_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_sub_overflow17h134cc1a7f93654deE(ptr align 8 @alloc_6b88f080677b3816319b73d5fd9e94a2) #24
          to label %unreachable unwind label %cleanup

bb22:                                             ; preds = %bb21
  %_32 = load i32, ptr %_33, align 4
  %_40 = sext i32 %i5 to i64
; invoke <alloc::vec::Vec<T,A> as core::ops::index::IndexMut<I>>::index_mut
  %_38 = invoke align 4 ptr @"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17hf851295e07cf22b7E"(ptr align 8 %table, i64 %_40, ptr align 8 @alloc_fbb6206f8bb6e0b3dbdd54392b723305)
          to label %bb23 unwind label %cleanup

bb23:                                             ; preds = %bb22
  %37 = load i32, ptr %_38, align 4
  %38 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %37, i32 %_32)
  %_41.0 = extractvalue { i32, i1 } %38, 0
  %_41.1 = extractvalue { i32, i1 } %38, 1
  br i1 %_41.1, label %panic7, label %bb24

bb24:                                             ; preds = %bb23
  store i32 %_41.0, ptr %_38, align 4
  br label %bb17

panic7:                                           ; preds = %bb23
; invoke core::panicking::panic_const::panic_const_add_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_707547a0b4de5ecddfa523c153958fcc) #24
          to label %unreachable unwind label %cleanup

bb11:                                             ; preds = %bb9
  %_18 = sext i32 %_20.0 to i64
; invoke <alloc::vec::Vec<T,A> as core::ops::index::Index<I>>::index
  %_16 = invoke align 4 ptr @"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h94bfcc676d3f77b0E"(ptr align 8 %table, i64 %_18, ptr align 8 @alloc_f78a79e03d0dac8c5ef60887de38b162)
          to label %bb12 unwind label %cleanup

panic9:                                           ; preds = %bb9
; invoke core::panicking::panic_const::panic_const_sub_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_sub_overflow17h134cc1a7f93654deE(ptr align 8 @alloc_cb28111d408a2508fd419b62adb012c6) #24
          to label %unreachable unwind label %cleanup

bb12:                                             ; preds = %bb11
  %_15 = load i32, ptr %_16, align 4
  %_23 = sext i32 %i8 to i64
; invoke <alloc::vec::Vec<T,A> as core::ops::index::IndexMut<I>>::index_mut
  %_21 = invoke align 4 ptr @"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17hf851295e07cf22b7E"(ptr align 8 %table, i64 %_23, ptr align 8 @alloc_2cebd51b6c62ac1bad7770006a70ceeb)
          to label %bb13 unwind label %cleanup

bb13:                                             ; preds = %bb12
  %39 = load i32, ptr %_21, align 4
  %40 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %39, i32 %_15)
  %_24.0 = extractvalue { i32, i1 } %40, 0
  %_24.1 = extractvalue { i32, i1 } %40, 1
  br i1 %_24.1, label %panic10, label %bb14

bb14:                                             ; preds = %bb13
  store i32 %_24.0, ptr %_21, align 4
  br label %bb6

panic10:                                          ; preds = %bb13
; invoke core::panicking::panic_const::panic_const_add_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_d23ba1ff9790a7157844e9d0d7479215) #24
          to label %unreachable unwind label %cleanup

bb8:                                              ; No predecessors!
  unreachable

terminate:                                        ; preds = %bb37
  %41 = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer
; call core::panicking::panic_in_cleanup
  call void @_ZN4core9panicking16panic_in_cleanup17h5f6bde45d17ae243E() #21
  unreachable

bb38:                                             ; preds = %bb37
  %42 = load ptr, ptr %0, align 8
  %43 = getelementptr inbounds i8, ptr %0, i64 8
  %44 = load i32, ptr %43, align 8
  %45 = insertvalue { ptr, i32 } poison, ptr %42, 0
  %46 = insertvalue { ptr, i32 } %45, i32 %44, 1
  resume { ptr, i32 } %46
}

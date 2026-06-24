define i32 @f_gold(i32 %N) unnamed_addr #3 personality ptr @rust_eh_personality {
start:
  %0 = alloca [16 x i8], align 8
  %_20 = alloca [8 x i8], align 4
  %iter1 = alloca [12 x i8], align 4
  %_18 = alloca [12 x i8], align 4
  %_17 = alloca [12 x i8], align 4
  %_8 = alloca [8 x i8], align 4
  %iter = alloca [12 x i8], align 4
  %_6 = alloca [12 x i8], align 4
  %_5 = alloca [12 x i8], align 4
  %screen = alloca [24 x i8], align 8
  %_0 = alloca [4 x i8], align 4
  %_2 = icmp sle i32 %N, 6
  br i1 %_2, label %bb1, label %bb2

bb2:                                              ; preds = %start
  %_4 = sext i32 %N to i64
; call alloc::vec::from_elem
  call void @_ZN5alloc3vec9from_elem17hb31d10cc0d65e6f7E(ptr sret([24 x i8]) align 8 %screen, i32 0, i64 %_4)
; invoke core::ops::range::RangeInclusive<Idx>::new
  invoke void @"_ZN4core3ops5range25RangeInclusive$LT$Idx$GT$3new17h55ff3c21c22b6d45E"(ptr sret([12 x i8]) align 4 %_6, i32 1, i32 6)
          to label %bb4 unwind label %cleanup

bb1:                                              ; preds = %start
  store i32 %N, ptr %_0, align 4
  br label %bb34

bb35:                                             ; preds = %cleanup
; invoke core::ptr::drop_in_place<alloc::vec::Vec<i32>>
  invoke void @"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17ha0b748e31f08ed93E"(ptr align 8 %screen) #22
          to label %bb36 unwind label %terminate

cleanup:                                          ; preds = %bb11, %panic10, %bb30, %panic8, %bb28, %bb27, %panic7, %bb25, %panic6, %panic5, %bb22, %panic4, %panic3, %bb19, %panic2, %bb32, %panic, %bb15, %bb13, %bb10, %bb6, %bb4, %bb2
  %1 = landingpad { ptr, i32 }
          cleanup
  %2 = extractvalue { ptr, i32 } %1, 0
  %3 = extractvalue { ptr, i32 } %1, 1
  store ptr %2, ptr %0, align 8
  %4 = getelementptr inbounds i8, ptr %0, i64 8
  store i32 %3, ptr %4, align 8
  br label %bb35

bb4:                                              ; preds = %bb2
; invoke <I as core::iter::traits::collect::IntoIterator>::into_iter
  invoke void @"_ZN63_$LT$I$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17hfa4cc32a1d72ce6cE"(ptr sret([12 x i8]) align 4 %_5, ptr align 4 %_6)
          to label %bb5 unwind label %cleanup

bb5:                                              ; preds = %bb4
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %iter, ptr align 4 %_5, i64 12, i1 false)
  br label %bb6

bb6:                                              ; preds = %bb12, %bb5
; invoke core::iter::range::<impl core::iter::traits::iterator::Iterator for core::ops::range::RangeInclusive<A>>::next
  %5 = invoke { i32, i32 } @"_ZN4core4iter5range110_$LT$impl$u20$core..iter..traits..iterator..Iterator$u20$for$u20$core..ops..range..RangeInclusive$LT$A$GT$$GT$4next17h92bbe8af40bbbc69E"(ptr align 4 %iter)
          to label %bb7 unwind label %cleanup

bb7:                                              ; preds = %bb6
  %6 = extractvalue { i32, i32 } %5, 0
  %7 = extractvalue { i32, i32 } %5, 1
  store i32 %6, ptr %_8, align 4
  %8 = getelementptr inbounds i8, ptr %_8, i64 4
  store i32 %7, ptr %8, align 4
  %9 = load i32, ptr %_8, align 4
  %10 = getelementptr inbounds i8, ptr %_8, i64 4
  %11 = load i32, ptr %10, align 4
  %_10 = zext i32 %9 to i64
  %12 = trunc nuw i64 %_10 to i1
  br i1 %12, label %bb9, label %bb10

bb9:                                              ; preds = %bb7
  %13 = getelementptr inbounds i8, ptr %_8, i64 4
  %n9 = load i32, ptr %13, align 4
  %_15 = sext i32 %n9 to i64
  %_16.0 = sub i64 %_15, 1
  %_16.1 = icmp ult i64 %_15, 1
  br i1 %_16.1, label %panic10, label %bb11

bb10:                                             ; preds = %bb7
; invoke core::ops::range::RangeInclusive<Idx>::new
  invoke void @"_ZN4core3ops5range25RangeInclusive$LT$Idx$GT$3new17h55ff3c21c22b6d45E"(ptr sret([12 x i8]) align 4 %_18, i32 7, i32 %N)
          to label %bb13 unwind label %cleanup

bb13:                                             ; preds = %bb10
; invoke <I as core::iter::traits::collect::IntoIterator>::into_iter
  invoke void @"_ZN63_$LT$I$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17hfa4cc32a1d72ce6cE"(ptr sret([12 x i8]) align 4 %_17, ptr align 4 %_18)
          to label %bb14 unwind label %cleanup

bb14:                                             ; preds = %bb13
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %iter1, ptr align 4 %_17, i64 12, i1 false)
  br label %bb15

bb15:                                             ; preds = %bb31, %bb14
; invoke core::iter::range::<impl core::iter::traits::iterator::Iterator for core::ops::range::RangeInclusive<A>>::next
  %14 = invoke { i32, i32 } @"_ZN4core4iter5range110_$LT$impl$u20$core..iter..traits..iterator..Iterator$u20$for$u20$core..ops..range..RangeInclusive$LT$A$GT$$GT$4next17h92bbe8af40bbbc69E"(ptr align 4 %iter1)
          to label %bb16 unwind label %cleanup

bb16:                                             ; preds = %bb15
  %15 = extractvalue { i32, i32 } %14, 0
  %16 = extractvalue { i32, i32 } %14, 1
  store i32 %15, ptr %_20, align 4
  %17 = getelementptr inbounds i8, ptr %_20, i64 4
  store i32 %16, ptr %17, align 4
  %18 = load i32, ptr %_20, align 4
  %19 = getelementptr inbounds i8, ptr %_20, i64 4
  %20 = load i32, ptr %19, align 4
  %_22 = zext i32 %18 to i64
  %21 = trunc nuw i64 %_22 to i1
  br i1 %21, label %bb17, label %bb18

bb17:                                             ; preds = %bb16
  %22 = getelementptr inbounds i8, ptr %_20, i64 4
  %n = load i32, ptr %22, align 4
  %23 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %n, i32 4)
  %_31.0 = extractvalue { i32, i1 } %23, 0
  %_31.1 = extractvalue { i32, i1 } %23, 1
  br i1 %_31.1, label %panic2, label %bb19

bb18:                                             ; preds = %bb16
  %_58 = sext i32 %N to i64
  %_59.0 = sub i64 %_58, 1
  %_59.1 = icmp ult i64 %_58, 1
  br i1 %_59.1, label %panic, label %bb32

bb32:                                             ; preds = %bb18
; invoke <alloc::vec::Vec<T,A> as core::ops::index::Index<I>>::index
  %_55 = invoke align 4 ptr @"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hcfe89adab24421feE"(ptr align 8 %screen, i64 %_59.0, ptr align 8 @alloc_c5c2d096d013c1b0f8f857f9b809095a)
          to label %bb33 unwind label %cleanup

panic:                                            ; preds = %bb18
; invoke core::panicking::panic_const::panic_const_sub_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_sub_overflow17h134cc1a7f93654deE(ptr align 8 @alloc_555a97208ec36aee0f7e004426580d03) #24
          to label %unreachable unwind label %cleanup

unreachable:                                      ; preds = %panic10, %panic8, %panic7, %panic6, %panic5, %panic4, %panic3, %panic2, %panic
  unreachable

bb33:                                             ; preds = %bb32
  %24 = load i32, ptr %_55, align 4
  store i32 %24, ptr %_0, align 4
; call core::ptr::drop_in_place<alloc::vec::Vec<i32>>
  call void @"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17ha0b748e31f08ed93E"(ptr align 8 %screen)
  br label %bb34

bb34:                                             ; preds = %bb1, %bb33
  %25 = load i32, ptr %_0, align 4
  ret i32 %25

bb19:                                             ; preds = %bb17
  %_29 = sext i32 %_31.0 to i64
; invoke <alloc::vec::Vec<T,A> as core::ops::index::Index<I>>::index
  %_27 = invoke align 4 ptr @"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hcfe89adab24421feE"(ptr align 8 %screen, i64 %_29, ptr align 8 @alloc_506212057596a7c60d3b77412992138b)
          to label %bb20 unwind label %cleanup

panic2:                                           ; preds = %bb17
; invoke core::panicking::panic_const::panic_const_sub_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_sub_overflow17h134cc1a7f93654deE(ptr align 8 @alloc_9d5444e60e9abd7ba86bf988c5389a50) #24
          to label %unreachable unwind label %cleanup

bb20:                                             ; preds = %bb19
  %_26 = load i32, ptr %_27, align 4
  %26 = call { i32, i1 } @llvm.smul.with.overflow.i32(i32 2, i32 %_26)
  %_32.0 = extractvalue { i32, i1 } %26, 0
  %_32.1 = extractvalue { i32, i1 } %26, 1
  br i1 %_32.1, label %panic3, label %bb21

bb21:                                             ; preds = %bb20
  %27 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %n, i32 5)
  %_40.0 = extractvalue { i32, i1 } %27, 0
  %_40.1 = extractvalue { i32, i1 } %27, 1
  br i1 %_40.1, label %panic4, label %bb22

panic3:                                           ; preds = %bb20
; invoke core::panicking::panic_const::panic_const_mul_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_mul_overflow17h554ac164c12099f8E(ptr align 8 @alloc_a922d294f2e512f69802054e0f5f44a0) #24
          to label %unreachable unwind label %cleanup

bb22:                                             ; preds = %bb21
  %_38 = sext i32 %_40.0 to i64
; invoke <alloc::vec::Vec<T,A> as core::ops::index::Index<I>>::index
  %_36 = invoke align 4 ptr @"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hcfe89adab24421feE"(ptr align 8 %screen, i64 %_38, ptr align 8 @alloc_55d1a5b6cc2bb67f91fdaa711a6dce3a)
          to label %bb23 unwind label %cleanup

panic4:                                           ; preds = %bb21
; invoke core::panicking::panic_const::panic_const_sub_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_sub_overflow17h134cc1a7f93654deE(ptr align 8 @alloc_6a6fb73814d1b882876b2b5aeee59182) #24
          to label %unreachable unwind label %cleanup

bb23:                                             ; preds = %bb22
  %_35 = load i32, ptr %_36, align 4
  %28 = call { i32, i1 } @llvm.smul.with.overflow.i32(i32 3, i32 %_35)
  %_41.0 = extractvalue { i32, i1 } %28, 0
  %_41.1 = extractvalue { i32, i1 } %28, 1
  br i1 %_41.1, label %panic5, label %bb24

bb24:                                             ; preds = %bb23
  %29 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %n, i32 6)
  %_48.0 = extractvalue { i32, i1 } %29, 0
  %_48.1 = extractvalue { i32, i1 } %29, 1
  br i1 %_48.1, label %panic6, label %bb25

panic5:                                           ; preds = %bb23
; invoke core::panicking::panic_const::panic_const_mul_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_mul_overflow17h554ac164c12099f8E(ptr align 8 @alloc_9d667f115c996be1dee67f9e15433b55) #24
          to label %unreachable unwind label %cleanup

bb25:                                             ; preds = %bb24
  %_46 = sext i32 %_48.0 to i64
; invoke <alloc::vec::Vec<T,A> as core::ops::index::Index<I>>::index
  %_44 = invoke align 4 ptr @"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hcfe89adab24421feE"(ptr align 8 %screen, i64 %_46, ptr align 8 @alloc_4830824e781f2470ff81c18374510bf3)
          to label %bb26 unwind label %cleanup

panic6:                                           ; preds = %bb24
; invoke core::panicking::panic_const::panic_const_sub_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_sub_overflow17h134cc1a7f93654deE(ptr align 8 @alloc_ca5114a5bd793b3df62a0af4350b49d4) #24
          to label %unreachable unwind label %cleanup

bb26:                                             ; preds = %bb25
  %_43 = load i32, ptr %_44, align 4
  %30 = call { i32, i1 } @llvm.smul.with.overflow.i32(i32 4, i32 %_43)
  %_49.0 = extractvalue { i32, i1 } %30, 0
  %_49.1 = extractvalue { i32, i1 } %30, 1
  br i1 %_49.1, label %panic7, label %bb27

bb27:                                             ; preds = %bb26
  %_33 = invoke i32 @max(i32 %_41.0, i32 %_49.0)
          to label %bb28 unwind label %cleanup

panic7:                                           ; preds = %bb26
; invoke core::panicking::panic_const::panic_const_mul_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_mul_overflow17h554ac164c12099f8E(ptr align 8 @alloc_b53a5ffdf2feeb7475c10fb6abf38f34) #24
          to label %unreachable unwind label %cleanup

bb28:                                             ; preds = %bb27
  %_24 = invoke i32 @max(i32 %_32.0, i32 %_33)
          to label %bb29 unwind label %cleanup

bb29:                                             ; preds = %bb28
  %_53 = sext i32 %n to i64
  %_54.0 = sub i64 %_53, 1
  %_54.1 = icmp ult i64 %_53, 1
  br i1 %_54.1, label %panic8, label %bb30

bb30:                                             ; preds = %bb29
; invoke <alloc::vec::Vec<T,A> as core::ops::index::IndexMut<I>>::index_mut
  %_50 = invoke align 4 ptr @"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h433d429f05fe3830E"(ptr align 8 %screen, i64 %_54.0, ptr align 8 @alloc_209eba98801309518a2580ad4205d3ae)
          to label %bb31 unwind label %cleanup

panic8:                                           ; preds = %bb29
; invoke core::panicking::panic_const::panic_const_sub_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_sub_overflow17h134cc1a7f93654deE(ptr align 8 @alloc_bf90d9ee961919f3bdb617b2e9f80f25) #24
          to label %unreachable unwind label %cleanup

bb31:                                             ; preds = %bb30
  store i32 %_24, ptr %_50, align 4
  br label %bb15

bb11:                                             ; preds = %bb9
; invoke <alloc::vec::Vec<T,A> as core::ops::index::IndexMut<I>>::index_mut
  %_12 = invoke align 4 ptr @"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h433d429f05fe3830E"(ptr align 8 %screen, i64 %_16.0, ptr align 8 @alloc_d890047ad308786635e78ae2f9611a0c)
          to label %bb12 unwind label %cleanup

panic10:                                          ; preds = %bb9
; invoke core::panicking::panic_const::panic_const_sub_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_sub_overflow17h134cc1a7f93654deE(ptr align 8 @alloc_cf3fd35d8d781a2289e3ab68089aa51c) #24
          to label %unreachable unwind label %cleanup

bb12:                                             ; preds = %bb11
  store i32 %n9, ptr %_12, align 4
  br label %bb6

bb8:                                              ; No predecessors!
  unreachable

terminate:                                        ; preds = %bb35
  %31 = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer
; call core::panicking::panic_in_cleanup
  call void @_ZN4core9panicking16panic_in_cleanup17h5f6bde45d17ae243E() #21
  unreachable

bb36:                                             ; preds = %bb35
  %32 = load ptr, ptr %0, align 8
  %33 = getelementptr inbounds i8, ptr %0, i64 8
  %34 = load i32, ptr %33, align 8
  %35 = insertvalue { ptr, i32 } poison, ptr %32, 0
  %36 = insertvalue { ptr, i32 } %35, i32 %34, 1
  resume { ptr, i32 } %36
}

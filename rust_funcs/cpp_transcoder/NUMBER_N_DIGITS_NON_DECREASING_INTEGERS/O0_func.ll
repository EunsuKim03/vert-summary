define i32 @f_gold(i32 %n) unnamed_addr #3 personality ptr @rust_eh_personality {
start:
  %0 = alloca [16 x i8], align 8
  %_66 = alloca [1 x i8], align 1
  %_39 = alloca [16 x i8], align 8
  %iter3 = alloca [16 x i8], align 8
  %_31 = alloca [8 x i8], align 4
  %iter2 = alloca [12 x i8], align 4
  %_29 = alloca [12 x i8], align 4
  %_28 = alloca [12 x i8], align 4
  %_20 = alloca [8 x i8], align 4
  %iter1 = alloca [12 x i8], align 4
  %_18 = alloca [12 x i8], align 4
  %_17 = alloca [12 x i8], align 4
  %_10 = alloca [16 x i8], align 8
  %iter = alloca [16 x i8], align 8
  %_3 = alloca [24 x i8], align 8
  %a = alloca [24 x i8], align 8
  store i8 0, ptr %_66, align 1
  store i8 1, ptr %_66, align 1
; call alloc::vec::from_elem
  call void @_ZN5alloc3vec9from_elem17h0943ff5c3d8c89dbE(ptr sret([24 x i8]) align 8 %_3, i32 0, i64 10)
  %_5 = sext i32 %n to i64
  %_6.0 = add i64 %_5, 1
  %_6.1 = icmp ult i64 %_6.0, %_5
  br i1 %_6.1, label %panic, label %bb2

bb2:                                              ; preds = %start
  store i8 0, ptr %_66, align 1
; invoke alloc::vec::from_elem
  invoke void @_ZN5alloc3vec9from_elem17ha9b7a17d157613b6E(ptr sret([24 x i8]) align 8 %a, ptr align 8 %_3, i64 %_6.0)
          to label %bb3 unwind label %cleanup

panic:                                            ; preds = %start
; invoke core::panicking::panic_const::panic_const_add_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_e1e57e453256f811c97f8037f1a81569) #24
          to label %unreachable unwind label %cleanup

bb46:                                             ; preds = %cleanup
  %1 = load i8, ptr %_66, align 1
  %2 = trunc nuw i8 %1 to i1
  br i1 %2, label %bb45, label %bb44

cleanup:                                          ; preds = %bb2, %panic
  %3 = landingpad { ptr, i32 }
          cleanup
  %4 = extractvalue { ptr, i32 } %3, 0
  %5 = extractvalue { ptr, i32 } %3, 1
  store ptr %4, ptr %0, align 8
  %6 = getelementptr inbounds i8, ptr %0, i64 8
  store i32 %5, ptr %6, align 8
  br label %bb46

unreachable:                                      ; preds = %panic7, %panic6, %panic5, %panic
  unreachable

bb3:                                              ; preds = %bb2
  store i8 0, ptr %_66, align 1
; invoke <I as core::iter::traits::collect::IntoIterator>::into_iter
  %7 = invoke { i64, i64 } @"_ZN63_$LT$I$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17h5a8d4dfda46aa93aE"(i64 0, i64 10)
          to label %bb4 unwind label %cleanup4

bb43:                                             ; preds = %cleanup4
; invoke core::ptr::drop_in_place<alloc::vec::Vec<alloc::vec::Vec<i32>>>
  invoke void @"_ZN4core3ptr70drop_in_place$LT$alloc..vec..Vec$LT$alloc..vec..Vec$LT$i32$GT$$GT$$GT$17h28ddabc450875e66E"(ptr align 8 %a) #22
          to label %bb44 unwind label %terminate

cleanup4:                                         ; preds = %bb10, %bb8, %bb18, %bb16, %bb38, %bb37, %panic7, %bb35, %panic6, %bb33, %bb32, %bb31, %panic5, %bb28, %bb26, %bb24, %bb40, %bb25, %bb22, %bb20, %bb17, %bb14, %bb12, %bb9, %bb5, %bb3
  %8 = landingpad { ptr, i32 }
          cleanup
  %9 = extractvalue { ptr, i32 } %8, 0
  %10 = extractvalue { ptr, i32 } %8, 1
  store ptr %9, ptr %0, align 8
  %11 = getelementptr inbounds i8, ptr %0, i64 8
  store i32 %10, ptr %11, align 8
  br label %bb43

bb4:                                              ; preds = %bb3
  %_7.0 = extractvalue { i64, i64 } %7, 0
  %_7.1 = extractvalue { i64, i64 } %7, 1
  store i64 %_7.0, ptr %iter, align 8
  %12 = getelementptr inbounds i8, ptr %iter, i64 8
  store i64 %_7.1, ptr %12, align 8
  br label %bb5

bb5:                                              ; preds = %bb11, %bb4
; invoke core::iter::range::<impl core::iter::traits::iterator::Iterator for core::ops::range::Range<A>>::next
  %13 = invoke { i64, i64 } @"_ZN4core4iter5range101_$LT$impl$u20$core..iter..traits..iterator..Iterator$u20$for$u20$core..ops..range..Range$LT$A$GT$$GT$4next17h4b31be56789ecf20E"(ptr align 8 %iter)
          to label %bb6 unwind label %cleanup4

bb6:                                              ; preds = %bb5
  %14 = extractvalue { i64, i64 } %13, 0
  %15 = extractvalue { i64, i64 } %13, 1
  store i64 %14, ptr %_10, align 8
  %16 = getelementptr inbounds i8, ptr %_10, i64 8
  store i64 %15, ptr %16, align 8
  %_12 = load i64, ptr %_10, align 8
  %17 = getelementptr inbounds i8, ptr %_10, i64 8
  %18 = load i64, ptr %17, align 8
  %19 = trunc nuw i64 %_12 to i1
  br i1 %19, label %bb8, label %bb9

bb8:                                              ; preds = %bb6
  %20 = getelementptr inbounds i8, ptr %_10, i64 8
  %i9 = load i64, ptr %20, align 8
; invoke <alloc::vec::Vec<T,A> as core::ops::index::IndexMut<I>>::index_mut
  %_15 = invoke align 8 ptr @"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17hfbcc8500d17a6306E"(ptr align 8 %a, i64 0, ptr align 8 @alloc_d8331e252f0bd3d702fc75b13ecfa4e4)
          to label %bb10 unwind label %cleanup4

bb9:                                              ; preds = %bb6
; invoke core::ops::range::RangeInclusive<Idx>::new
  invoke void @"_ZN4core3ops5range25RangeInclusive$LT$Idx$GT$3new17h29f14f5b57d62682E"(ptr sret([12 x i8]) align 4 %_18, i32 1, i32 %n)
          to label %bb12 unwind label %cleanup4

bb12:                                             ; preds = %bb9
; invoke <I as core::iter::traits::collect::IntoIterator>::into_iter
  invoke void @"_ZN63_$LT$I$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17hb5c90792f5d84e28E"(ptr sret([12 x i8]) align 4 %_17, ptr align 4 %_18)
          to label %bb13 unwind label %cleanup4

bb13:                                             ; preds = %bb12
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %iter1, ptr align 4 %_17, i64 12, i1 false)
  br label %bb14

bb14:                                             ; preds = %bb19, %bb13
; invoke core::iter::range::<impl core::iter::traits::iterator::Iterator for core::ops::range::RangeInclusive<A>>::next
  %21 = invoke { i32, i32 } @"_ZN4core4iter5range110_$LT$impl$u20$core..iter..traits..iterator..Iterator$u20$for$u20$core..ops..range..RangeInclusive$LT$A$GT$$GT$4next17h9debbe19cd271073E"(ptr align 4 %iter1)
          to label %bb15 unwind label %cleanup4

bb15:                                             ; preds = %bb14
  %22 = extractvalue { i32, i32 } %21, 0
  %23 = extractvalue { i32, i32 } %21, 1
  store i32 %22, ptr %_20, align 4
  %24 = getelementptr inbounds i8, ptr %_20, i64 4
  store i32 %23, ptr %24, align 4
  %25 = load i32, ptr %_20, align 4
  %26 = getelementptr inbounds i8, ptr %_20, i64 4
  %27 = load i32, ptr %26, align 4
  %_22 = zext i32 %25 to i64
  %28 = trunc nuw i64 %_22 to i1
  br i1 %28, label %bb16, label %bb17

bb16:                                             ; preds = %bb15
  %29 = getelementptr inbounds i8, ptr %_20, i64 4
  %i8 = load i32, ptr %29, align 4
  %_27 = sext i32 %i8 to i64
; invoke <alloc::vec::Vec<T,A> as core::ops::index::IndexMut<I>>::index_mut
  %_25 = invoke align 8 ptr @"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17hfbcc8500d17a6306E"(ptr align 8 %a, i64 %_27, ptr align 8 @alloc_05b19055f92c9d5e9f047356ec5db620)
          to label %bb18 unwind label %cleanup4

bb17:                                             ; preds = %bb15
; invoke core::ops::range::RangeInclusive<Idx>::new
  invoke void @"_ZN4core3ops5range25RangeInclusive$LT$Idx$GT$3new17h29f14f5b57d62682E"(ptr sret([12 x i8]) align 4 %_29, i32 1, i32 %n)
          to label %bb20 unwind label %cleanup4

bb20:                                             ; preds = %bb17
; invoke <I as core::iter::traits::collect::IntoIterator>::into_iter
  invoke void @"_ZN63_$LT$I$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17hb5c90792f5d84e28E"(ptr sret([12 x i8]) align 4 %_28, ptr align 4 %_29)
          to label %bb21 unwind label %cleanup4

bb21:                                             ; preds = %bb20
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %iter2, ptr align 4 %_28, i64 12, i1 false)
  br label %bb22

bb22:                                             ; preds = %bb29, %bb21
; invoke core::iter::range::<impl core::iter::traits::iterator::Iterator for core::ops::range::RangeInclusive<A>>::next
  %30 = invoke { i32, i32 } @"_ZN4core4iter5range110_$LT$impl$u20$core..iter..traits..iterator..Iterator$u20$for$u20$core..ops..range..RangeInclusive$LT$A$GT$$GT$4next17h9debbe19cd271073E"(ptr align 4 %iter2)
          to label %bb23 unwind label %cleanup4

bb23:                                             ; preds = %bb22
  %31 = extractvalue { i32, i32 } %30, 0
  %32 = extractvalue { i32, i32 } %30, 1
  store i32 %31, ptr %_31, align 4
  %33 = getelementptr inbounds i8, ptr %_31, i64 4
  store i32 %32, ptr %33, align 4
  %34 = load i32, ptr %_31, align 4
  %35 = getelementptr inbounds i8, ptr %_31, i64 4
  %36 = load i32, ptr %35, align 4
  %_33 = zext i32 %34 to i64
  %37 = trunc nuw i64 %_33 to i1
  br i1 %37, label %bb24, label %bb25

bb24:                                             ; preds = %bb23
  %38 = getelementptr inbounds i8, ptr %_31, i64 4
  %i = load i32, ptr %38, align 4
; invoke core::iter::traits::iterator::Iterator::rev
  %39 = invoke { i64, i64 } @_ZN4core4iter6traits8iterator8Iterator3rev17hfc902b17cc9dc66dE(i64 0, i64 9)
          to label %bb26 unwind label %cleanup4

bb25:                                             ; preds = %bb23
  %_65 = sext i32 %n to i64
; invoke <alloc::vec::Vec<T,A> as core::ops::index::Index<I>>::index
  %_63 = invoke align 8 ptr @"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h1f30e244c6ee49b7E"(ptr align 8 %a, i64 %_65, ptr align 8 @alloc_ad53536c75336b5b550143ae8351bbba)
          to label %bb40 unwind label %cleanup4

bb40:                                             ; preds = %bb25
; invoke <alloc::vec::Vec<T,A> as core::ops::index::Index<I>>::index
  %_62 = invoke align 4 ptr @"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hd242b3f76110506fE"(ptr align 8 %_63, i64 0, ptr align 8 @alloc_a9295b2bed659bc12bf462e33dce4bc3)
          to label %bb41 unwind label %cleanup4

bb41:                                             ; preds = %bb40
  %_0 = load i32, ptr %_62, align 4
; call core::ptr::drop_in_place<alloc::vec::Vec<alloc::vec::Vec<i32>>>
  call void @"_ZN4core3ptr70drop_in_place$LT$alloc..vec..Vec$LT$alloc..vec..Vec$LT$i32$GT$$GT$$GT$17h28ddabc450875e66E"(ptr align 8 %a)
  ret i32 %_0

bb26:                                             ; preds = %bb24
  %_36.0 = extractvalue { i64, i64 } %39, 0
  %_36.1 = extractvalue { i64, i64 } %39, 1
; invoke <I as core::iter::traits::collect::IntoIterator>::into_iter
  %40 = invoke { i64, i64 } @"_ZN63_$LT$I$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17ha18130ac33d8c1b6E"(i64 %_36.0, i64 %_36.1)
          to label %bb27 unwind label %cleanup4

bb27:                                             ; preds = %bb26
  %_35.0 = extractvalue { i64, i64 } %40, 0
  %_35.1 = extractvalue { i64, i64 } %40, 1
  store i64 %_35.0, ptr %iter3, align 8
  %41 = getelementptr inbounds i8, ptr %iter3, i64 8
  store i64 %_35.1, ptr %41, align 8
  br label %bb28

bb28:                                             ; preds = %bb39, %bb27
; invoke <core::iter::adapters::rev::Rev<I> as core::iter::traits::iterator::Iterator>::next
  %42 = invoke { i64, i64 } @"_ZN98_$LT$core..iter..adapters..rev..Rev$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hc88aa232c486dcfcE"(ptr align 8 %iter3)
          to label %bb29 unwind label %cleanup4

bb29:                                             ; preds = %bb28
  %43 = extractvalue { i64, i64 } %42, 0
  %44 = extractvalue { i64, i64 } %42, 1
  store i64 %43, ptr %_39, align 8
  %45 = getelementptr inbounds i8, ptr %_39, i64 8
  store i64 %44, ptr %45, align 8
  %_41 = load i64, ptr %_39, align 8
  %46 = getelementptr inbounds i8, ptr %_39, i64 8
  %47 = load i64, ptr %46, align 8
  %48 = trunc nuw i64 %_41 to i1
  br i1 %48, label %bb30, label %bb22

bb30:                                             ; preds = %bb29
  %49 = getelementptr inbounds i8, ptr %_39, i64 8
  %j = load i64, ptr %49, align 8
  %50 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %i, i32 1)
  %_49.0 = extractvalue { i32, i1 } %50, 0
  %_49.1 = extractvalue { i32, i1 } %50, 1
  br i1 %_49.1, label %panic5, label %bb31

bb31:                                             ; preds = %bb30
  %_47 = sext i32 %_49.0 to i64
; invoke <alloc::vec::Vec<T,A> as core::ops::index::Index<I>>::index
  %_45 = invoke align 8 ptr @"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h1f30e244c6ee49b7E"(ptr align 8 %a, i64 %_47, ptr align 8 @alloc_97257dea4c25d16ac01dfed9157b334f)
          to label %bb32 unwind label %cleanup4

panic5:                                           ; preds = %bb30
; invoke core::panicking::panic_const::panic_const_sub_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_sub_overflow17h134cc1a7f93654deE(ptr align 8 @alloc_0af409f4afc27dabfaeb9aa31f8de87c) #24
          to label %unreachable unwind label %cleanup4

bb32:                                             ; preds = %bb31
; invoke <alloc::vec::Vec<T,A> as core::ops::index::Index<I>>::index
  %_44 = invoke align 4 ptr @"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hd242b3f76110506fE"(ptr align 8 %_45, i64 %j, ptr align 8 @alloc_422063443952b1d6e7a3f175e781b928)
          to label %bb33 unwind label %cleanup4

bb33:                                             ; preds = %bb32
  %_43 = load i32, ptr %_44, align 4
  %_54 = sext i32 %i to i64
; invoke <alloc::vec::Vec<T,A> as core::ops::index::Index<I>>::index
  %_52 = invoke align 8 ptr @"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h1f30e244c6ee49b7E"(ptr align 8 %a, i64 %_54, ptr align 8 @alloc_58177cf6f21ea68bee3e8bdbc951e9f2)
          to label %bb34 unwind label %cleanup4

bb34:                                             ; preds = %bb33
  %_56.0 = add i64 %j, 1
  %_56.1 = icmp ult i64 %_56.0, %j
  br i1 %_56.1, label %panic6, label %bb35

bb35:                                             ; preds = %bb34
; invoke <alloc::vec::Vec<T,A> as core::ops::index::Index<I>>::index
  %_51 = invoke align 4 ptr @"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hd242b3f76110506fE"(ptr align 8 %_52, i64 %_56.0, ptr align 8 @alloc_f7a63cf4bd7cf25b5afc968ec2d455ad)
          to label %bb36 unwind label %cleanup4

panic6:                                           ; preds = %bb34
; invoke core::panicking::panic_const::panic_const_add_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_b8f50442edc6dc40cd910f08aed9892d) #24
          to label %unreachable unwind label %cleanup4

bb36:                                             ; preds = %bb35
  %_50 = load i32, ptr %_51, align 4
  %51 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %_43, i32 %_50)
  %_57.0 = extractvalue { i32, i1 } %51, 0
  %_57.1 = extractvalue { i32, i1 } %51, 1
  br i1 %_57.1, label %panic7, label %bb37

bb37:                                             ; preds = %bb36
  %_61 = sext i32 %i to i64
; invoke <alloc::vec::Vec<T,A> as core::ops::index::IndexMut<I>>::index_mut
  %_59 = invoke align 8 ptr @"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17hfbcc8500d17a6306E"(ptr align 8 %a, i64 %_61, ptr align 8 @alloc_d24441828ca210307691a424f2760b0c)
          to label %bb38 unwind label %cleanup4

panic7:                                           ; preds = %bb36
; invoke core::panicking::panic_const::panic_const_add_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_c1af8e06d9462e515043f6a558449c13) #24
          to label %unreachable unwind label %cleanup4

bb38:                                             ; preds = %bb37
; invoke <alloc::vec::Vec<T,A> as core::ops::index::IndexMut<I>>::index_mut
  %_58 = invoke align 4 ptr @"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h4e69a52d81d59a40E"(ptr align 8 %_59, i64 %j, ptr align 8 @alloc_711be6953d5959899d54bc84453395c0)
          to label %bb39 unwind label %cleanup4

bb39:                                             ; preds = %bb38
  store i32 %_57.0, ptr %_58, align 4
  br label %bb28

bb18:                                             ; preds = %bb16
; invoke <alloc::vec::Vec<T,A> as core::ops::index::IndexMut<I>>::index_mut
  %_24 = invoke align 4 ptr @"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h4e69a52d81d59a40E"(ptr align 8 %_25, i64 9, ptr align 8 @alloc_28514442b776d66058ab6f17c9cbc078)
          to label %bb19 unwind label %cleanup4

bb19:                                             ; preds = %bb18
  store i32 1, ptr %_24, align 4
  br label %bb14

bb10:                                             ; preds = %bb8
; invoke <alloc::vec::Vec<T,A> as core::ops::index::IndexMut<I>>::index_mut
  %_14 = invoke align 4 ptr @"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h4e69a52d81d59a40E"(ptr align 8 %_15, i64 %i9, ptr align 8 @alloc_b5e99050356f4e39f5508f6dbd95c079)
          to label %bb11 unwind label %cleanup4

bb11:                                             ; preds = %bb10
  store i32 1, ptr %_14, align 4
  br label %bb5

bb7:                                              ; No predecessors!
  unreachable

terminate:                                        ; preds = %bb45, %bb43
  %52 = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer
; call core::panicking::panic_in_cleanup
  call void @_ZN4core9panicking16panic_in_cleanup17h5f6bde45d17ae243E() #21
  unreachable

bb44:                                             ; preds = %bb45, %bb46, %bb43
  %53 = load ptr, ptr %0, align 8
  %54 = getelementptr inbounds i8, ptr %0, i64 8
  %55 = load i32, ptr %54, align 8
  %56 = insertvalue { ptr, i32 } poison, ptr %53, 0
  %57 = insertvalue { ptr, i32 } %56, i32 %55, 1
  resume { ptr, i32 } %57

bb45:                                             ; preds = %bb46
; invoke core::ptr::drop_in_place<alloc::vec::Vec<i32>>
  invoke void @"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17h6cdb5d749e060be4E"(ptr align 8 %_3) #22
          to label %bb44 unwind label %terminate
}

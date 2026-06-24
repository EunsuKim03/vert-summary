define i32 @f_gold(i32 %n) unnamed_addr #3 personality ptr @rust_eh_personality {
start:
  %0 = alloca [16 x i8], align 8
  %_59 = alloca [1 x i8], align 1
  %_29 = alloca [8 x i8], align 4
  %iter2 = alloca [8 x i8], align 4
  %_21 = alloca [8 x i8], align 4
  %iter1 = alloca [12 x i8], align 4
  %_19 = alloca [12 x i8], align 4
  %_18 = alloca [12 x i8], align 4
  %_10 = alloca [8 x i8], align 4
  %iter = alloca [12 x i8], align 4
  %_8 = alloca [12 x i8], align 4
  %_7 = alloca [12 x i8], align 4
  %_3 = alloca [24 x i8], align 8
  %a = alloca [24 x i8], align 8
  store i8 0, ptr %_59, align 1
  store i8 1, ptr %_59, align 1
; call alloc::vec::from_elem
  call void @_ZN5alloc3vec9from_elem17h0943ff5c3d8c89dbE(ptr sret([24 x i8]) align 8 %_3, i32 1, i64 10)
  %_5 = sext i32 %n to i64
  %_6.0 = add i64 %_5, 1
  %_6.1 = icmp ult i64 %_6.0, %_5
  br i1 %_6.1, label %panic, label %bb2

bb2:                                              ; preds = %start
  store i8 0, ptr %_59, align 1
; invoke alloc::vec::from_elem
  invoke void @_ZN5alloc3vec9from_elem17ha9b7a17d157613b6E(ptr sret([24 x i8]) align 8 %a, ptr align 8 %_3, i64 %_6.0)
          to label %bb3 unwind label %cleanup

panic:                                            ; preds = %start
; invoke core::panicking::panic_const::panic_const_add_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_de271766540b10754cb1256b6c956f26) #24
          to label %unreachable unwind label %cleanup

bb39:                                             ; preds = %cleanup
  %1 = load i8, ptr %_59, align 1
  %2 = trunc nuw i8 %1 to i1
  br i1 %2, label %bb38, label %bb37

cleanup:                                          ; preds = %bb2, %panic
  %3 = landingpad { ptr, i32 }
          cleanup
  %4 = extractvalue { ptr, i32 } %3, 0
  %5 = extractvalue { ptr, i32 } %3, 1
  store ptr %4, ptr %0, align 8
  %6 = getelementptr inbounds i8, ptr %0, i64 8
  store i32 %5, ptr %6, align 8
  br label %bb39

unreachable:                                      ; preds = %panic6, %panic5, %panic4, %panic
  unreachable

bb3:                                              ; preds = %bb2
  store i8 0, ptr %_59, align 1
; invoke core::ops::range::RangeInclusive<Idx>::new
  invoke void @"_ZN4core3ops5range25RangeInclusive$LT$Idx$GT$3new17h29f14f5b57d62682E"(ptr sret([12 x i8]) align 4 %_8, i32 1, i32 %n)
          to label %bb4 unwind label %cleanup3

bb36:                                             ; preds = %cleanup3
; invoke core::ptr::drop_in_place<alloc::vec::Vec<alloc::vec::Vec<i32>>>
  invoke void @"_ZN4core3ptr70drop_in_place$LT$alloc..vec..Vec$LT$alloc..vec..Vec$LT$i32$GT$$GT$$GT$17h28ddabc450875e66E"(ptr align 8 %a) #22
          to label %bb37 unwind label %terminate

cleanup3:                                         ; preds = %bb11, %bb9, %bb31, %bb30, %panic6, %bb28, %panic5, %bb26, %bb25, %bb24, %panic4, %bb21, %bb19, %bb17, %bb33, %bb18, %bb15, %bb13, %bb10, %bb6, %bb4, %bb3
  %7 = landingpad { ptr, i32 }
          cleanup
  %8 = extractvalue { ptr, i32 } %7, 0
  %9 = extractvalue { ptr, i32 } %7, 1
  store ptr %8, ptr %0, align 8
  %10 = getelementptr inbounds i8, ptr %0, i64 8
  store i32 %9, ptr %10, align 8
  br label %bb36

bb4:                                              ; preds = %bb3
; invoke <I as core::iter::traits::collect::IntoIterator>::into_iter
  invoke void @"_ZN63_$LT$I$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17hb5c90792f5d84e28E"(ptr sret([12 x i8]) align 4 %_7, ptr align 4 %_8)
          to label %bb5 unwind label %cleanup3

bb5:                                              ; preds = %bb4
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %iter, ptr align 4 %_7, i64 12, i1 false)
  br label %bb6

bb6:                                              ; preds = %bb12, %bb5
; invoke core::iter::range::<impl core::iter::traits::iterator::Iterator for core::ops::range::RangeInclusive<A>>::next
  %11 = invoke { i32, i32 } @"_ZN4core4iter5range110_$LT$impl$u20$core..iter..traits..iterator..Iterator$u20$for$u20$core..ops..range..RangeInclusive$LT$A$GT$$GT$4next17h9debbe19cd271073E"(ptr align 4 %iter)
          to label %bb7 unwind label %cleanup3

bb7:                                              ; preds = %bb6
  %12 = extractvalue { i32, i32 } %11, 0
  %13 = extractvalue { i32, i32 } %11, 1
  store i32 %12, ptr %_10, align 4
  %14 = getelementptr inbounds i8, ptr %_10, i64 4
  store i32 %13, ptr %14, align 4
  %15 = load i32, ptr %_10, align 4
  %16 = getelementptr inbounds i8, ptr %_10, i64 4
  %17 = load i32, ptr %16, align 4
  %_12 = zext i32 %15 to i64
  %18 = trunc nuw i64 %_12 to i1
  br i1 %18, label %bb9, label %bb10

bb9:                                              ; preds = %bb7
  %19 = getelementptr inbounds i8, ptr %_10, i64 4
  %i7 = load i32, ptr %19, align 4
  %_17 = sext i32 %i7 to i64
; invoke <alloc::vec::Vec<T,A> as core::ops::index::IndexMut<I>>::index_mut
  %_15 = invoke align 8 ptr @"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17hfbcc8500d17a6306E"(ptr align 8 %a, i64 %_17, ptr align 8 @alloc_7162e58a8a7b0533268c046f1d583fd8)
          to label %bb11 unwind label %cleanup3

bb10:                                             ; preds = %bb7
; invoke core::ops::range::RangeInclusive<Idx>::new
  invoke void @"_ZN4core3ops5range25RangeInclusive$LT$Idx$GT$3new17h29f14f5b57d62682E"(ptr sret([12 x i8]) align 4 %_19, i32 1, i32 %n)
          to label %bb13 unwind label %cleanup3

bb13:                                             ; preds = %bb10
; invoke <I as core::iter::traits::collect::IntoIterator>::into_iter
  invoke void @"_ZN63_$LT$I$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17hb5c90792f5d84e28E"(ptr sret([12 x i8]) align 4 %_18, ptr align 4 %_19)
          to label %bb14 unwind label %cleanup3

bb14:                                             ; preds = %bb13
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %iter1, ptr align 4 %_18, i64 12, i1 false)
  br label %bb15

bb15:                                             ; preds = %bb22, %bb14
; invoke core::iter::range::<impl core::iter::traits::iterator::Iterator for core::ops::range::RangeInclusive<A>>::next
  %20 = invoke { i32, i32 } @"_ZN4core4iter5range110_$LT$impl$u20$core..iter..traits..iterator..Iterator$u20$for$u20$core..ops..range..RangeInclusive$LT$A$GT$$GT$4next17h9debbe19cd271073E"(ptr align 4 %iter1)
          to label %bb16 unwind label %cleanup3

bb16:                                             ; preds = %bb15
  %21 = extractvalue { i32, i32 } %20, 0
  %22 = extractvalue { i32, i32 } %20, 1
  store i32 %21, ptr %_21, align 4
  %23 = getelementptr inbounds i8, ptr %_21, i64 4
  store i32 %22, ptr %23, align 4
  %24 = load i32, ptr %_21, align 4
  %25 = getelementptr inbounds i8, ptr %_21, i64 4
  %26 = load i32, ptr %25, align 4
  %_23 = zext i32 %24 to i64
  %27 = trunc nuw i64 %_23 to i1
  br i1 %27, label %bb17, label %bb18

bb17:                                             ; preds = %bb16
  %28 = getelementptr inbounds i8, ptr %_21, i64 4
  %i = load i32, ptr %28, align 4
; invoke core::iter::traits::iterator::Iterator::rev
  %29 = invoke { i32, i32 } @_ZN4core4iter6traits8iterator8Iterator3rev17h4820bb05eba75d6aE(i32 0, i32 9)
          to label %bb19 unwind label %cleanup3

bb18:                                             ; preds = %bb16
  %_58 = sext i32 %n to i64
; invoke <alloc::vec::Vec<T,A> as core::ops::index::Index<I>>::index
  %_56 = invoke align 8 ptr @"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h1f30e244c6ee49b7E"(ptr align 8 %a, i64 %_58, ptr align 8 @alloc_9f8a1fa603b38d6f0354cfd7953091ba)
          to label %bb33 unwind label %cleanup3

bb33:                                             ; preds = %bb18
; invoke <alloc::vec::Vec<T,A> as core::ops::index::Index<I>>::index
  %_55 = invoke align 4 ptr @"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hd242b3f76110506fE"(ptr align 8 %_56, i64 0, ptr align 8 @alloc_b2125b75bf9c8525480588f931c77a68)
          to label %bb34 unwind label %cleanup3

bb34:                                             ; preds = %bb33
  %_0 = load i32, ptr %_55, align 4
; call core::ptr::drop_in_place<alloc::vec::Vec<alloc::vec::Vec<i32>>>
  call void @"_ZN4core3ptr70drop_in_place$LT$alloc..vec..Vec$LT$alloc..vec..Vec$LT$i32$GT$$GT$$GT$17h28ddabc450875e66E"(ptr align 8 %a)
  ret i32 %_0

bb19:                                             ; preds = %bb17
  %_26.0 = extractvalue { i32, i32 } %29, 0
  %_26.1 = extractvalue { i32, i32 } %29, 1
; invoke <I as core::iter::traits::collect::IntoIterator>::into_iter
  %30 = invoke { i32, i32 } @"_ZN63_$LT$I$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17h653dc93cfe9dfba9E"(i32 %_26.0, i32 %_26.1)
          to label %bb20 unwind label %cleanup3

bb20:                                             ; preds = %bb19
  %_25.0 = extractvalue { i32, i32 } %30, 0
  %_25.1 = extractvalue { i32, i32 } %30, 1
  store i32 %_25.0, ptr %iter2, align 4
  %31 = getelementptr inbounds i8, ptr %iter2, i64 4
  store i32 %_25.1, ptr %31, align 4
  br label %bb21

bb21:                                             ; preds = %bb32, %bb20
; invoke <core::iter::adapters::rev::Rev<I> as core::iter::traits::iterator::Iterator>::next
  %32 = invoke { i32, i32 } @"_ZN98_$LT$core..iter..adapters..rev..Rev$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hded0f53068291ad1E"(ptr align 4 %iter2)
          to label %bb22 unwind label %cleanup3

bb22:                                             ; preds = %bb21
  %33 = extractvalue { i32, i32 } %32, 0
  %34 = extractvalue { i32, i32 } %32, 1
  store i32 %33, ptr %_29, align 4
  %35 = getelementptr inbounds i8, ptr %_29, i64 4
  store i32 %34, ptr %35, align 4
  %36 = load i32, ptr %_29, align 4
  %37 = getelementptr inbounds i8, ptr %_29, i64 4
  %38 = load i32, ptr %37, align 4
  %_31 = zext i32 %36 to i64
  %39 = trunc nuw i64 %_31 to i1
  br i1 %39, label %bb23, label %bb15

bb23:                                             ; preds = %bb22
  %40 = getelementptr inbounds i8, ptr %_29, i64 4
  %j = load i32, ptr %40, align 4
  %41 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %i, i32 1)
  %_39.0 = extractvalue { i32, i1 } %41, 0
  %_39.1 = extractvalue { i32, i1 } %41, 1
  br i1 %_39.1, label %panic4, label %bb24

bb24:                                             ; preds = %bb23
  %_37 = sext i32 %_39.0 to i64
; invoke <alloc::vec::Vec<T,A> as core::ops::index::Index<I>>::index
  %_35 = invoke align 8 ptr @"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h1f30e244c6ee49b7E"(ptr align 8 %a, i64 %_37, ptr align 8 @alloc_a32607dfa100bdc5e1710911146a6a12)
          to label %bb25 unwind label %cleanup3

panic4:                                           ; preds = %bb23
; invoke core::panicking::panic_const::panic_const_sub_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_sub_overflow17h134cc1a7f93654deE(ptr align 8 @alloc_61b306342fbaabe8f8f38807773ca560) #24
          to label %unreachable unwind label %cleanup3

bb25:                                             ; preds = %bb24
  %_40 = sext i32 %j to i64
; invoke <alloc::vec::Vec<T,A> as core::ops::index::Index<I>>::index
  %_34 = invoke align 4 ptr @"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hd242b3f76110506fE"(ptr align 8 %_35, i64 %_40, ptr align 8 @alloc_563a010e25f4f2d4fefdfc2421e36fcd)
          to label %bb26 unwind label %cleanup3

bb26:                                             ; preds = %bb25
  %_33 = load i32, ptr %_34, align 4
  %_45 = sext i32 %i to i64
; invoke <alloc::vec::Vec<T,A> as core::ops::index::Index<I>>::index
  %_43 = invoke align 8 ptr @"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h1f30e244c6ee49b7E"(ptr align 8 %a, i64 %_45, ptr align 8 @alloc_bbba2d2ca2b7088e16f7cfe8fafd272d)
          to label %bb27 unwind label %cleanup3

bb27:                                             ; preds = %bb26
  %42 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %j, i32 1)
  %_48.0 = extractvalue { i32, i1 } %42, 0
  %_48.1 = extractvalue { i32, i1 } %42, 1
  br i1 %_48.1, label %panic5, label %bb28

bb28:                                             ; preds = %bb27
  %_46 = sext i32 %_48.0 to i64
; invoke <alloc::vec::Vec<T,A> as core::ops::index::Index<I>>::index
  %_42 = invoke align 4 ptr @"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hd242b3f76110506fE"(ptr align 8 %_43, i64 %_46, ptr align 8 @alloc_69c8473680779265916e759af82e00be)
          to label %bb29 unwind label %cleanup3

panic5:                                           ; preds = %bb27
; invoke core::panicking::panic_const::panic_const_add_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_d80bc5e7c3729cb595463f72c1fb0162) #24
          to label %unreachable unwind label %cleanup3

bb29:                                             ; preds = %bb28
  %_41 = load i32, ptr %_42, align 4
  %43 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %_33, i32 %_41)
  %_49.0 = extractvalue { i32, i1 } %43, 0
  %_49.1 = extractvalue { i32, i1 } %43, 1
  br i1 %_49.1, label %panic6, label %bb30

bb30:                                             ; preds = %bb29
  %_53 = sext i32 %i to i64
; invoke <alloc::vec::Vec<T,A> as core::ops::index::IndexMut<I>>::index_mut
  %_51 = invoke align 8 ptr @"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17hfbcc8500d17a6306E"(ptr align 8 %a, i64 %_53, ptr align 8 @alloc_63128f8903a870c5305be57225ed9045)
          to label %bb31 unwind label %cleanup3

panic6:                                           ; preds = %bb29
; invoke core::panicking::panic_const::panic_const_add_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_7ab37069d4d5dff77cc51cf41d76cc65) #24
          to label %unreachable unwind label %cleanup3

bb31:                                             ; preds = %bb30
  %_54 = sext i32 %j to i64
; invoke <alloc::vec::Vec<T,A> as core::ops::index::IndexMut<I>>::index_mut
  %_50 = invoke align 4 ptr @"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h4e69a52d81d59a40E"(ptr align 8 %_51, i64 %_54, ptr align 8 @alloc_4054e15948dd908ee14fccba1754fa77)
          to label %bb32 unwind label %cleanup3

bb32:                                             ; preds = %bb31
  store i32 %_49.0, ptr %_50, align 4
  br label %bb21

bb11:                                             ; preds = %bb9
; invoke <alloc::vec::Vec<T,A> as core::ops::index::IndexMut<I>>::index_mut
  %_14 = invoke align 4 ptr @"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h4e69a52d81d59a40E"(ptr align 8 %_15, i64 9, ptr align 8 @alloc_3313e8fe8ee3acc11cc0fe56aa7f3bd8)
          to label %bb12 unwind label %cleanup3

bb12:                                             ; preds = %bb11
  store i32 1, ptr %_14, align 4
  br label %bb6

bb8:                                              ; No predecessors!
  unreachable

terminate:                                        ; preds = %bb38, %bb36
  %44 = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer
; call core::panicking::panic_in_cleanup
  call void @_ZN4core9panicking16panic_in_cleanup17h5f6bde45d17ae243E() #21
  unreachable

bb37:                                             ; preds = %bb38, %bb39, %bb36
  %45 = load ptr, ptr %0, align 8
  %46 = getelementptr inbounds i8, ptr %0, i64 8
  %47 = load i32, ptr %46, align 8
  %48 = insertvalue { ptr, i32 } poison, ptr %45, 0
  %49 = insertvalue { ptr, i32 } %48, i32 %47, 1
  resume { ptr, i32 } %49

bb38:                                             ; preds = %bb39
; invoke core::ptr::drop_in_place<alloc::vec::Vec<i32>>
  invoke void @"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17h6cdb5d749e060be4E"(ptr align 8 %_3) #22
          to label %bb37 unwind label %terminate
}

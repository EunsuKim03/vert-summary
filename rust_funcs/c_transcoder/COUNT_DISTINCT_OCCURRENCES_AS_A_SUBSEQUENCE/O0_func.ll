define i32 @f_gold(ptr align 1 %S.0, i64 %S.1, ptr align 1 %T.0, i64 %T.1) unnamed_addr #3 personality ptr @rust_eh_personality {
start:
  %0 = alloca [16 x i8], align 8
  %_89 = alloca [1 x i8], align 1
  %_56 = alloca [16 x i8], align 8
  %_54 = alloca [4 x i8], align 4
  %_50 = alloca [16 x i8], align 8
  %_48 = alloca [4 x i8], align 4
  %_42 = alloca [16 x i8], align 8
  %iter3 = alloca [24 x i8], align 8
  %_40 = alloca [24 x i8], align 8
  %_39 = alloca [24 x i8], align 8
  %_35 = alloca [16 x i8], align 8
  %iter2 = alloca [24 x i8], align 8
  %_33 = alloca [24 x i8], align 8
  %_32 = alloca [24 x i8], align 8
  %_25 = alloca [16 x i8], align 8
  %iter1 = alloca [24 x i8], align 8
  %_23 = alloca [24 x i8], align 8
  %_22 = alloca [24 x i8], align 8
  %_15 = alloca [16 x i8], align 8
  %iter = alloca [24 x i8], align 8
  %_13 = alloca [24 x i8], align 8
  %_12 = alloca [24 x i8], align 8
  %_7 = alloca [24 x i8], align 8
  %mat = alloca [24 x i8], align 8
  %_0 = alloca [4 x i8], align 4
  store i8 0, ptr %_89, align 1
; call core::str::<impl str>::len
  %m = call i64 @"_ZN4core3str21_$LT$impl$u20$str$GT$3len17h5326e1b8ebcb4755E"(ptr align 1 %T.0, i64 %T.1) #18
; call core::str::<impl str>::len
  %n = call i64 @"_ZN4core3str21_$LT$impl$u20$str$GT$3len17h5326e1b8ebcb4755E"(ptr align 1 %S.0, i64 %S.1) #18
  %_5 = icmp ugt i64 %m, %n
  br i1 %_5, label %bb3, label %bb4

bb4:                                              ; preds = %start
  %_9.0 = add i64 %n, 1
  %_9.1 = icmp ult i64 %_9.0, %n
  br i1 %_9.1, label %panic, label %bb5

bb3:                                              ; preds = %start
  store i32 0, ptr %_0, align 4
  br label %bb63

bb5:                                              ; preds = %bb4
  store i8 1, ptr %_89, align 1
; call alloc::vec::from_elem
  call void @_ZN5alloc3vec9from_elem17h1a9871d84209acacE(ptr sret([24 x i8]) align 8 %_7, i32 0, i64 %_9.0)
  %_11.0 = add i64 %m, 1
  %_11.1 = icmp ult i64 %_11.0, %m
  br i1 %_11.1, label %panic4, label %bb7

panic:                                            ; preds = %bb4
; call core::panicking::panic_const::panic_const_add_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_0f31870a10d66bcd6db3e0428b5f2ea6) #23
  unreachable

bb7:                                              ; preds = %bb5
  store i8 0, ptr %_89, align 1
; invoke alloc::vec::from_elem
  invoke void @_ZN5alloc3vec9from_elem17h78cfe21d16aa7b1dE(ptr sret([24 x i8]) align 8 %mat, ptr align 8 %_7, i64 %_11.0)
          to label %bb8 unwind label %cleanup

panic4:                                           ; preds = %bb5
; invoke core::panicking::panic_const::panic_const_add_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_e4bf549522b6372fd350f7d36881e2c7) #24
          to label %unreachable unwind label %cleanup

bb67:                                             ; preds = %cleanup
  %1 = load i8, ptr %_89, align 1
  %2 = trunc nuw i8 %1 to i1
  br i1 %2, label %bb66, label %bb65

cleanup:                                          ; preds = %bb7, %panic4
  %3 = landingpad { ptr, i32 }
          cleanup
  %4 = extractvalue { ptr, i32 } %3, 0
  %5 = extractvalue { ptr, i32 } %3, 1
  store ptr %4, ptr %0, align 8
  %6 = getelementptr inbounds i8, ptr %0, i64 8
  store i32 %5, ptr %6, align 8
  br label %bb67

unreachable:                                      ; preds = %panic12, %panic11, %panic10, %panic9, %panic8, %panic7, %panic6, %panic4
  unreachable

bb8:                                              ; preds = %bb7
  store i8 0, ptr %_89, align 1
; invoke core::ops::range::RangeInclusive<Idx>::new
  invoke void @"_ZN4core3ops5range25RangeInclusive$LT$Idx$GT$3new17h94921d8f59b6cb2cE"(ptr sret([24 x i8]) align 8 %_13, i64 1, i64 %m)
          to label %bb9 unwind label %cleanup5

bb64:                                             ; preds = %cleanup5
; invoke core::ptr::drop_in_place<alloc::vec::Vec<alloc::vec::Vec<i32>>>
  invoke void @"_ZN4core3ptr70drop_in_place$LT$alloc..vec..Vec$LT$alloc..vec..Vec$LT$i32$GT$$GT$$GT$17h7bc7584ae89e2f8cE"(ptr align 8 %mat) #22
          to label %bb65 unwind label %terminate

cleanup5:                                         ; preds = %bb16, %bb14, %bb24, %bb22, %bb48, %bb47, %bb46, %panic12, %bb44, %bb59, %bb58, %panic11, %bb56, %panic10, %bb54, %panic9, %bb52, %panic8, %bb50, %bb42, %bb41, %panic7, %bb39, %bb38, %panic6, %bb36, %bb34, %bb32, %bb30, %bb61, %bb31, %bb28, %bb26, %bb23, %bb20, %bb18, %bb15, %bb11, %bb9, %bb8
  %7 = landingpad { ptr, i32 }
          cleanup
  %8 = extractvalue { ptr, i32 } %7, 0
  %9 = extractvalue { ptr, i32 } %7, 1
  store ptr %8, ptr %0, align 8
  %10 = getelementptr inbounds i8, ptr %0, i64 8
  store i32 %9, ptr %10, align 8
  br label %bb64

bb9:                                              ; preds = %bb8
; invoke <I as core::iter::traits::collect::IntoIterator>::into_iter
  invoke void @"_ZN63_$LT$I$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17h4d2503149eed4c5aE"(ptr sret([24 x i8]) align 8 %_12, ptr align 8 %_13)
          to label %bb10 unwind label %cleanup5

bb10:                                             ; preds = %bb9
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %iter, ptr align 8 %_12, i64 24, i1 false)
  br label %bb11

bb11:                                             ; preds = %bb17, %bb10
; invoke core::iter::range::<impl core::iter::traits::iterator::Iterator for core::ops::range::RangeInclusive<A>>::next
  %11 = invoke { i64, i64 } @"_ZN4core4iter5range110_$LT$impl$u20$core..iter..traits..iterator..Iterator$u20$for$u20$core..ops..range..RangeInclusive$LT$A$GT$$GT$4next17h1a1c7d0209043353E"(ptr align 8 %iter)
          to label %bb12 unwind label %cleanup5

bb12:                                             ; preds = %bb11
  %12 = extractvalue { i64, i64 } %11, 0
  %13 = extractvalue { i64, i64 } %11, 1
  store i64 %12, ptr %_15, align 8
  %14 = getelementptr inbounds i8, ptr %_15, i64 8
  store i64 %13, ptr %14, align 8
  %_17 = load i64, ptr %_15, align 8
  %15 = getelementptr inbounds i8, ptr %_15, i64 8
  %16 = load i64, ptr %15, align 8
  %17 = trunc nuw i64 %_17 to i1
  br i1 %17, label %bb14, label %bb15

bb14:                                             ; preds = %bb12
  %18 = getelementptr inbounds i8, ptr %_15, i64 8
  %i14 = load i64, ptr %18, align 8
; invoke <alloc::vec::Vec<T,A> as core::ops::index::IndexMut<I>>::index_mut
  %_20 = invoke align 8 ptr @"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h422855d8df2505e3E"(ptr align 8 %mat, i64 %i14, ptr align 8 @alloc_fcd2d6e1b70d7f01b5d57430105247e1)
          to label %bb16 unwind label %cleanup5

bb15:                                             ; preds = %bb12
; invoke core::ops::range::RangeInclusive<Idx>::new
  invoke void @"_ZN4core3ops5range25RangeInclusive$LT$Idx$GT$3new17h94921d8f59b6cb2cE"(ptr sret([24 x i8]) align 8 %_23, i64 0, i64 %n)
          to label %bb18 unwind label %cleanup5

bb18:                                             ; preds = %bb15
; invoke <I as core::iter::traits::collect::IntoIterator>::into_iter
  invoke void @"_ZN63_$LT$I$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17h4d2503149eed4c5aE"(ptr sret([24 x i8]) align 8 %_22, ptr align 8 %_23)
          to label %bb19 unwind label %cleanup5

bb19:                                             ; preds = %bb18
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %iter1, ptr align 8 %_22, i64 24, i1 false)
  br label %bb20

bb20:                                             ; preds = %bb25, %bb19
; invoke core::iter::range::<impl core::iter::traits::iterator::Iterator for core::ops::range::RangeInclusive<A>>::next
  %19 = invoke { i64, i64 } @"_ZN4core4iter5range110_$LT$impl$u20$core..iter..traits..iterator..Iterator$u20$for$u20$core..ops..range..RangeInclusive$LT$A$GT$$GT$4next17h1a1c7d0209043353E"(ptr align 8 %iter1)
          to label %bb21 unwind label %cleanup5

bb21:                                             ; preds = %bb20
  %20 = extractvalue { i64, i64 } %19, 0
  %21 = extractvalue { i64, i64 } %19, 1
  store i64 %20, ptr %_25, align 8
  %22 = getelementptr inbounds i8, ptr %_25, i64 8
  store i64 %21, ptr %22, align 8
  %_27 = load i64, ptr %_25, align 8
  %23 = getelementptr inbounds i8, ptr %_25, i64 8
  %24 = load i64, ptr %23, align 8
  %25 = trunc nuw i64 %_27 to i1
  br i1 %25, label %bb22, label %bb23

bb22:                                             ; preds = %bb21
  %26 = getelementptr inbounds i8, ptr %_25, i64 8
  %j13 = load i64, ptr %26, align 8
; invoke <alloc::vec::Vec<T,A> as core::ops::index::IndexMut<I>>::index_mut
  %_30 = invoke align 8 ptr @"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h422855d8df2505e3E"(ptr align 8 %mat, i64 0, ptr align 8 @alloc_a85f843388eafb43ee3e9ec534da462a)
          to label %bb24 unwind label %cleanup5

bb23:                                             ; preds = %bb21
; invoke core::ops::range::RangeInclusive<Idx>::new
  invoke void @"_ZN4core3ops5range25RangeInclusive$LT$Idx$GT$3new17h94921d8f59b6cb2cE"(ptr sret([24 x i8]) align 8 %_33, i64 1, i64 %m)
          to label %bb26 unwind label %cleanup5

bb26:                                             ; preds = %bb23
; invoke <I as core::iter::traits::collect::IntoIterator>::into_iter
  invoke void @"_ZN63_$LT$I$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17h4d2503149eed4c5aE"(ptr sret([24 x i8]) align 8 %_32, ptr align 8 %_33)
          to label %bb27 unwind label %cleanup5

bb27:                                             ; preds = %bb26
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %iter2, ptr align 8 %_32, i64 24, i1 false)
  br label %bb28

bb28:                                             ; preds = %bb35, %bb27
; invoke core::iter::range::<impl core::iter::traits::iterator::Iterator for core::ops::range::RangeInclusive<A>>::next
  %27 = invoke { i64, i64 } @"_ZN4core4iter5range110_$LT$impl$u20$core..iter..traits..iterator..Iterator$u20$for$u20$core..ops..range..RangeInclusive$LT$A$GT$$GT$4next17h1a1c7d0209043353E"(ptr align 8 %iter2)
          to label %bb29 unwind label %cleanup5

bb29:                                             ; preds = %bb28
  %28 = extractvalue { i64, i64 } %27, 0
  %29 = extractvalue { i64, i64 } %27, 1
  store i64 %28, ptr %_35, align 8
  %30 = getelementptr inbounds i8, ptr %_35, i64 8
  store i64 %29, ptr %30, align 8
  %_37 = load i64, ptr %_35, align 8
  %31 = getelementptr inbounds i8, ptr %_35, i64 8
  %32 = load i64, ptr %31, align 8
  %33 = trunc nuw i64 %_37 to i1
  br i1 %33, label %bb30, label %bb31

bb30:                                             ; preds = %bb29
  %34 = getelementptr inbounds i8, ptr %_35, i64 8
  %i = load i64, ptr %34, align 8
; invoke core::ops::range::RangeInclusive<Idx>::new
  invoke void @"_ZN4core3ops5range25RangeInclusive$LT$Idx$GT$3new17h94921d8f59b6cb2cE"(ptr sret([24 x i8]) align 8 %_40, i64 1, i64 %n)
          to label %bb32 unwind label %cleanup5

bb31:                                             ; preds = %bb29
; invoke <alloc::vec::Vec<T,A> as core::ops::index::Index<I>>::index
  %_87 = invoke align 8 ptr @"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h6d6ee6c507e3fd55E"(ptr align 8 %mat, i64 %m, ptr align 8 @alloc_dbeca339df116ba97f2493a055f85555)
          to label %bb61 unwind label %cleanup5

bb61:                                             ; preds = %bb31
; invoke <alloc::vec::Vec<T,A> as core::ops::index::Index<I>>::index
  %_86 = invoke align 4 ptr @"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h435b7eec00325955E"(ptr align 8 %_87, i64 %n, ptr align 8 @alloc_04674294953e431463b0e626f04068d7)
          to label %bb62 unwind label %cleanup5

bb62:                                             ; preds = %bb61
  %35 = load i32, ptr %_86, align 4
  store i32 %35, ptr %_0, align 4
; call core::ptr::drop_in_place<alloc::vec::Vec<alloc::vec::Vec<i32>>>
  call void @"_ZN4core3ptr70drop_in_place$LT$alloc..vec..Vec$LT$alloc..vec..Vec$LT$i32$GT$$GT$$GT$17h7bc7584ae89e2f8cE"(ptr align 8 %mat)
  br label %bb63

bb63:                                             ; preds = %bb3, %bb62
  %36 = load i32, ptr %_0, align 4
  ret i32 %36

bb32:                                             ; preds = %bb30
; invoke <I as core::iter::traits::collect::IntoIterator>::into_iter
  invoke void @"_ZN63_$LT$I$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17h4d2503149eed4c5aE"(ptr sret([24 x i8]) align 8 %_39, ptr align 8 %_40)
          to label %bb33 unwind label %cleanup5

bb33:                                             ; preds = %bb32
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %iter3, ptr align 8 %_39, i64 24, i1 false)
  br label %bb34

bb34:                                             ; preds = %bb49, %bb60, %bb33
; invoke core::iter::range::<impl core::iter::traits::iterator::Iterator for core::ops::range::RangeInclusive<A>>::next
  %37 = invoke { i64, i64 } @"_ZN4core4iter5range110_$LT$impl$u20$core..iter..traits..iterator..Iterator$u20$for$u20$core..ops..range..RangeInclusive$LT$A$GT$$GT$4next17h1a1c7d0209043353E"(ptr align 8 %iter3)
          to label %bb35 unwind label %cleanup5

bb35:                                             ; preds = %bb34
  %38 = extractvalue { i64, i64 } %37, 0
  %39 = extractvalue { i64, i64 } %37, 1
  store i64 %38, ptr %_42, align 8
  %40 = getelementptr inbounds i8, ptr %_42, i64 8
  store i64 %39, ptr %40, align 8
  %_44 = load i64, ptr %_42, align 8
  %41 = getelementptr inbounds i8, ptr %_42, i64 8
  %42 = load i64, ptr %41, align 8
  %43 = trunc nuw i64 %_44 to i1
  br i1 %43, label %bb36, label %bb28

bb36:                                             ; preds = %bb35
  %44 = getelementptr inbounds i8, ptr %_42, i64 8
  %j = load i64, ptr %44, align 8
; invoke core::str::<impl str>::chars
  %45 = invoke { ptr, ptr } @"_ZN4core3str21_$LT$impl$u20$str$GT$5chars17hacdcfb3751c834bdE"(ptr align 1 %T.0, i64 %T.1)
          to label %bb37 unwind label %cleanup5

bb37:                                             ; preds = %bb36
  %46 = extractvalue { ptr, ptr } %45, 0
  %47 = extractvalue { ptr, ptr } %45, 1
  store ptr %46, ptr %_50, align 8
  %48 = getelementptr inbounds i8, ptr %_50, i64 8
  store ptr %47, ptr %48, align 8
  %_52.0 = sub i64 %i, 1
  %_52.1 = icmp ult i64 %i, 1
  br i1 %_52.1, label %panic6, label %bb38

bb38:                                             ; preds = %bb37
; invoke core::iter::traits::iterator::Iterator::nth
  %49 = invoke i32 @_ZN4core4iter6traits8iterator8Iterator3nth17h8e02ce6e53c9c700E(ptr align 8 %_50, i64 %_52.0)
          to label %bb39 unwind label %cleanup5

panic6:                                           ; preds = %bb37
; invoke core::panicking::panic_const::panic_const_sub_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_sub_overflow17h134cc1a7f93654deE(ptr align 8 @alloc_9a14cd9556edbf29eca27b9e4500adb4) #24
          to label %unreachable unwind label %cleanup5

bb39:                                             ; preds = %bb38
  store i32 %49, ptr %_48, align 4
; invoke core::str::<impl str>::chars
  %50 = invoke { ptr, ptr } @"_ZN4core3str21_$LT$impl$u20$str$GT$5chars17hacdcfb3751c834bdE"(ptr align 1 %S.0, i64 %S.1)
          to label %bb40 unwind label %cleanup5

bb40:                                             ; preds = %bb39
  %51 = extractvalue { ptr, ptr } %50, 0
  %52 = extractvalue { ptr, ptr } %50, 1
  store ptr %51, ptr %_56, align 8
  %53 = getelementptr inbounds i8, ptr %_56, i64 8
  store ptr %52, ptr %53, align 8
  %_58.0 = sub i64 %j, 1
  %_58.1 = icmp ult i64 %j, 1
  br i1 %_58.1, label %panic7, label %bb41

bb41:                                             ; preds = %bb40
; invoke core::iter::traits::iterator::Iterator::nth
  %54 = invoke i32 @_ZN4core4iter6traits8iterator8Iterator3nth17h8e02ce6e53c9c700E(ptr align 8 %_56, i64 %_58.0)
          to label %bb42 unwind label %cleanup5

panic7:                                           ; preds = %bb40
; invoke core::panicking::panic_const::panic_const_sub_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_sub_overflow17h134cc1a7f93654deE(ptr align 8 @alloc_231a8593d3ea59d6e618ca423d8526db) #24
          to label %unreachable unwind label %cleanup5

bb42:                                             ; preds = %bb41
  store i32 %54, ptr %_54, align 4
; invoke core::cmp::PartialEq::ne
  %_46 = invoke zeroext i1 @_ZN4core3cmp9PartialEq2ne17heac18b1a62767380E(ptr align 4 %_48, ptr align 4 %_54)
          to label %bb43 unwind label %cleanup5

bb43:                                             ; preds = %bb42
  br i1 %_46, label %bb44, label %bb50

bb50:                                             ; preds = %bb43
; invoke <alloc::vec::Vec<T,A> as core::ops::index::Index<I>>::index
  %_70 = invoke align 8 ptr @"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h6d6ee6c507e3fd55E"(ptr align 8 %mat, i64 %i, ptr align 8 @alloc_ea421f44397ac36eec8ddae5d85f8a69)
          to label %bb51 unwind label %cleanup5

bb44:                                             ; preds = %bb43
; invoke <alloc::vec::Vec<T,A> as core::ops::index::Index<I>>::index
  %_61 = invoke align 8 ptr @"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h6d6ee6c507e3fd55E"(ptr align 8 %mat, i64 %i, ptr align 8 @alloc_87f7874e54d9d1937ac7379ed22425dc)
          to label %bb45 unwind label %cleanup5

bb51:                                             ; preds = %bb50
  %_73.0 = sub i64 %j, 1
  %_73.1 = icmp ult i64 %j, 1
  br i1 %_73.1, label %panic8, label %bb52

bb52:                                             ; preds = %bb51
; invoke <alloc::vec::Vec<T,A> as core::ops::index::Index<I>>::index
  %_69 = invoke align 4 ptr @"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h435b7eec00325955E"(ptr align 8 %_70, i64 %_73.0, ptr align 8 @alloc_9b67f796afe6fa84d2d3c396f8648fc9)
          to label %bb53 unwind label %cleanup5

panic8:                                           ; preds = %bb51
; invoke core::panicking::panic_const::panic_const_sub_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_sub_overflow17h134cc1a7f93654deE(ptr align 8 @alloc_e2043d9acb5532252a237a5963a4d78f) #24
          to label %unreachable unwind label %cleanup5

bb53:                                             ; preds = %bb52
  %_68 = load i32, ptr %_69, align 4
  %_79.0 = sub i64 %i, 1
  %_79.1 = icmp ult i64 %i, 1
  br i1 %_79.1, label %panic9, label %bb54

bb54:                                             ; preds = %bb53
; invoke <alloc::vec::Vec<T,A> as core::ops::index::Index<I>>::index
  %_76 = invoke align 8 ptr @"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h6d6ee6c507e3fd55E"(ptr align 8 %mat, i64 %_79.0, ptr align 8 @alloc_93abb739713526d59ea81e49c9cc2087)
          to label %bb55 unwind label %cleanup5

panic9:                                           ; preds = %bb53
; invoke core::panicking::panic_const::panic_const_sub_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_sub_overflow17h134cc1a7f93654deE(ptr align 8 @alloc_8a0d518f10cb321902d4b1d4ebd4631d) #24
          to label %unreachable unwind label %cleanup5

bb55:                                             ; preds = %bb54
  %_81.0 = sub i64 %j, 1
  %_81.1 = icmp ult i64 %j, 1
  br i1 %_81.1, label %panic10, label %bb56

bb56:                                             ; preds = %bb55
; invoke <alloc::vec::Vec<T,A> as core::ops::index::Index<I>>::index
  %_75 = invoke align 4 ptr @"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h435b7eec00325955E"(ptr align 8 %_76, i64 %_81.0, ptr align 8 @alloc_9201997efb1bb4885b312ad48cf176c1)
          to label %bb57 unwind label %cleanup5

panic10:                                          ; preds = %bb55
; invoke core::panicking::panic_const::panic_const_sub_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_sub_overflow17h134cc1a7f93654deE(ptr align 8 @alloc_5e451068404801cdf6d1259a83441fef) #24
          to label %unreachable unwind label %cleanup5

bb57:                                             ; preds = %bb56
  %_74 = load i32, ptr %_75, align 4
  %55 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %_68, i32 %_74)
  %_82.0 = extractvalue { i32, i1 } %55, 0
  %_82.1 = extractvalue { i32, i1 } %55, 1
  br i1 %_82.1, label %panic11, label %bb58

bb58:                                             ; preds = %bb57
; invoke <alloc::vec::Vec<T,A> as core::ops::index::IndexMut<I>>::index_mut
  %_84 = invoke align 8 ptr @"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h422855d8df2505e3E"(ptr align 8 %mat, i64 %i, ptr align 8 @alloc_12ed146baa20d8666b577e8cc289587c)
          to label %bb59 unwind label %cleanup5

panic11:                                          ; preds = %bb57
; invoke core::panicking::panic_const::panic_const_add_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_50a76bfca215c03477433d661d9eef3d) #24
          to label %unreachable unwind label %cleanup5

bb59:                                             ; preds = %bb58
; invoke <alloc::vec::Vec<T,A> as core::ops::index::IndexMut<I>>::index_mut
  %_83 = invoke align 4 ptr @"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h20f659aaae3e52edE"(ptr align 8 %_84, i64 %j, ptr align 8 @alloc_47ac06c8c00465b740eb5a3917a1d414)
          to label %bb60 unwind label %cleanup5

bb60:                                             ; preds = %bb59
  store i32 %_82.0, ptr %_83, align 4
  br label %bb34

bb45:                                             ; preds = %bb44
  %_64.0 = sub i64 %j, 1
  %_64.1 = icmp ult i64 %j, 1
  br i1 %_64.1, label %panic12, label %bb46

bb46:                                             ; preds = %bb45
; invoke <alloc::vec::Vec<T,A> as core::ops::index::Index<I>>::index
  %_60 = invoke align 4 ptr @"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h435b7eec00325955E"(ptr align 8 %_61, i64 %_64.0, ptr align 8 @alloc_cf3124b6416a13719f41450e195cd192)
          to label %bb47 unwind label %cleanup5

panic12:                                          ; preds = %bb45
; invoke core::panicking::panic_const::panic_const_sub_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_sub_overflow17h134cc1a7f93654deE(ptr align 8 @alloc_af592cc6fee111b09ff5a04cf6ebbc75) #24
          to label %unreachable unwind label %cleanup5

bb47:                                             ; preds = %bb46
  %_59 = load i32, ptr %_60, align 4
; invoke <alloc::vec::Vec<T,A> as core::ops::index::IndexMut<I>>::index_mut
  %_66 = invoke align 8 ptr @"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h422855d8df2505e3E"(ptr align 8 %mat, i64 %i, ptr align 8 @alloc_126d8b77eb2e5851e118353049a75d97)
          to label %bb48 unwind label %cleanup5

bb48:                                             ; preds = %bb47
; invoke <alloc::vec::Vec<T,A> as core::ops::index::IndexMut<I>>::index_mut
  %_65 = invoke align 4 ptr @"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h20f659aaae3e52edE"(ptr align 8 %_66, i64 %j, ptr align 8 @alloc_df8317cfe2b8e5d493681f9b19e5dd3e)
          to label %bb49 unwind label %cleanup5

bb49:                                             ; preds = %bb48
  store i32 %_59, ptr %_65, align 4
  br label %bb34

bb24:                                             ; preds = %bb22
; invoke <alloc::vec::Vec<T,A> as core::ops::index::IndexMut<I>>::index_mut
  %_29 = invoke align 4 ptr @"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h20f659aaae3e52edE"(ptr align 8 %_30, i64 %j13, ptr align 8 @alloc_a685a6f90158416d8ea2cf46d8015334)
          to label %bb25 unwind label %cleanup5

bb25:                                             ; preds = %bb24
  store i32 1, ptr %_29, align 4
  br label %bb20

bb16:                                             ; preds = %bb14
; invoke <alloc::vec::Vec<T,A> as core::ops::index::IndexMut<I>>::index_mut
  %_19 = invoke align 4 ptr @"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h20f659aaae3e52edE"(ptr align 8 %_20, i64 0, ptr align 8 @alloc_13df6837543cf95af1adb046a35438c2)
          to label %bb17 unwind label %cleanup5

bb17:                                             ; preds = %bb16
  store i32 0, ptr %_19, align 4
  br label %bb11

bb13:                                             ; No predecessors!
  unreachable

terminate:                                        ; preds = %bb66, %bb64
  %56 = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer
; call core::panicking::panic_in_cleanup
  call void @_ZN4core9panicking16panic_in_cleanup17h5f6bde45d17ae243E() #21
  unreachable

bb65:                                             ; preds = %bb66, %bb67, %bb64
  %57 = load ptr, ptr %0, align 8
  %58 = getelementptr inbounds i8, ptr %0, i64 8
  %59 = load i32, ptr %58, align 8
  %60 = insertvalue { ptr, i32 } poison, ptr %57, 0
  %61 = insertvalue { ptr, i32 } %60, i32 %59, 1
  resume { ptr, i32 } %61

bb66:                                             ; preds = %bb67
; invoke core::ptr::drop_in_place<alloc::vec::Vec<i32>>
  invoke void @"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17hab352d418f4da754E"(ptr align 8 %_7) #22
          to label %bb65 unwind label %terminate
}

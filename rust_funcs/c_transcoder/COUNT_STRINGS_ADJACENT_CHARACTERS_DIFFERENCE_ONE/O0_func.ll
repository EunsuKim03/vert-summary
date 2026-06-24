define i32 @f_gold(i32 %n) unnamed_addr #3 personality ptr @rust_eh_personality {
start:
  %0 = alloca [16 x i8], align 8
  %_82 = alloca [1 x i8], align 1
  %_72 = alloca [16 x i8], align 8
  %iter3 = alloca [24 x i8], align 8
  %_70 = alloca [24 x i8], align 8
  %_69 = alloca [24 x i8], align 8
  %sum = alloca [4 x i8], align 4
  %_27 = alloca [16 x i8], align 8
  %iter2 = alloca [24 x i8], align 8
  %_25 = alloca [24 x i8], align 8
  %_24 = alloca [24 x i8], align 8
  %_20 = alloca [8 x i8], align 4
  %iter1 = alloca [12 x i8], align 4
  %_18 = alloca [12 x i8], align 4
  %_17 = alloca [12 x i8], align 4
  %_10 = alloca [16 x i8], align 8
  %iter = alloca [24 x i8], align 8
  %_8 = alloca [24 x i8], align 8
  %_7 = alloca [24 x i8], align 8
  %_3 = alloca [24 x i8], align 8
  %dp = alloca [24 x i8], align 8
  store i8 0, ptr %_82, align 1
  store i8 1, ptr %_82, align 1
; call alloc::vec::from_elem
  call void @_ZN5alloc3vec9from_elem17h0378bdea375ce31bE(ptr sret([24 x i8]) align 8 %_3, i32 0, i64 27)
  %_5 = sext i32 %n to i64
  %_6.0 = add i64 %_5, 1
  %_6.1 = icmp ult i64 %_6.0, %_5
  br i1 %_6.1, label %panic, label %bb2

bb2:                                              ; preds = %start
  store i8 0, ptr %_82, align 1
; invoke alloc::vec::from_elem
  invoke void @_ZN5alloc3vec9from_elem17h2078cd544a6eb44aE(ptr sret([24 x i8]) align 8 %dp, ptr align 8 %_3, i64 %_6.0)
          to label %bb3 unwind label %cleanup

panic:                                            ; preds = %start
; invoke core::panicking::panic_const::panic_const_add_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_c6e6e26228ad674556596b894482265b) #24
          to label %unreachable unwind label %cleanup

bb56:                                             ; preds = %cleanup
  %1 = load i8, ptr %_82, align 1
  %2 = trunc nuw i8 %1 to i1
  br i1 %2, label %bb55, label %bb54

cleanup:                                          ; preds = %bb2, %panic
  %3 = landingpad { ptr, i32 }
          cleanup
  %4 = extractvalue { ptr, i32 } %3, 0
  %5 = extractvalue { ptr, i32 } %3, 1
  store ptr %4, ptr %0, align 8
  %6 = getelementptr inbounds i8, ptr %0, i64 8
  store i32 %5, ptr %6, align 8
  br label %bb56

unreachable:                                      ; preds = %panic13, %panic12, %panic11, %panic10, %panic9, %panic8, %panic7, %panic5, %panic
  unreachable

bb3:                                              ; preds = %bb2
  store i8 0, ptr %_82, align 1
; invoke core::ops::range::RangeInclusive<Idx>::new
  invoke void @"_ZN4core3ops5range25RangeInclusive$LT$Idx$GT$3new17hace3c8e1d1de0c3fE"(ptr sret([24 x i8]) align 8 %_8, i64 0, i64 25)
          to label %bb4 unwind label %cleanup4

bb53:                                             ; preds = %cleanup4
; invoke core::ptr::drop_in_place<alloc::vec::Vec<alloc::vec::Vec<i32>>>
  invoke void @"_ZN4core3ptr70drop_in_place$LT$alloc..vec..Vec$LT$alloc..vec..Vec$LT$i32$GT$$GT$$GT$17h1a49d248c15d4acfE"(ptr align 8 %dp) #22
          to label %bb54 unwind label %terminate

cleanup4:                                         ; preds = %bb11, %bb9, %bb29, %bb28, %bb27, %panic13, %bb25, %panic12, %bb41, %bb40, %panic11, %bb38, %panic10, %bb36, %panic9, %bb34, %panic8, %bb32, %panic7, %bb21, %bb19, %bb17, %panic5, %bb49, %bb47, %bb45, %bb43, %bb18, %bb15, %bb13, %bb10, %bb6, %bb4, %bb3
  %7 = landingpad { ptr, i32 }
          cleanup
  %8 = extractvalue { ptr, i32 } %7, 0
  %9 = extractvalue { ptr, i32 } %7, 1
  store ptr %8, ptr %0, align 8
  %10 = getelementptr inbounds i8, ptr %0, i64 8
  store i32 %9, ptr %10, align 8
  br label %bb53

bb4:                                              ; preds = %bb3
; invoke <I as core::iter::traits::collect::IntoIterator>::into_iter
  invoke void @"_ZN63_$LT$I$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17h5f798d5038b7bc9bE"(ptr sret([24 x i8]) align 8 %_7, ptr align 8 %_8)
          to label %bb5 unwind label %cleanup4

bb5:                                              ; preds = %bb4
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %iter, ptr align 8 %_7, i64 24, i1 false)
  br label %bb6

bb6:                                              ; preds = %bb12, %bb5
; invoke core::iter::range::<impl core::iter::traits::iterator::Iterator for core::ops::range::RangeInclusive<A>>::next
  %11 = invoke { i64, i64 } @"_ZN4core4iter5range110_$LT$impl$u20$core..iter..traits..iterator..Iterator$u20$for$u20$core..ops..range..RangeInclusive$LT$A$GT$$GT$4next17h468624698dde6acfE"(ptr align 8 %iter)
          to label %bb7 unwind label %cleanup4

bb7:                                              ; preds = %bb6
  %12 = extractvalue { i64, i64 } %11, 0
  %13 = extractvalue { i64, i64 } %11, 1
  store i64 %12, ptr %_10, align 8
  %14 = getelementptr inbounds i8, ptr %_10, i64 8
  store i64 %13, ptr %14, align 8
  %_12 = load i64, ptr %_10, align 8
  %15 = getelementptr inbounds i8, ptr %_10, i64 8
  %16 = load i64, ptr %15, align 8
  %17 = trunc nuw i64 %_12 to i1
  br i1 %17, label %bb9, label %bb10

bb9:                                              ; preds = %bb7
  %18 = getelementptr inbounds i8, ptr %_10, i64 8
  %i14 = load i64, ptr %18, align 8
; invoke <alloc::vec::Vec<T,A> as core::ops::index::IndexMut<I>>::index_mut
  %_15 = invoke align 8 ptr @"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h38939401f5085ce7E"(ptr align 8 %dp, i64 1, ptr align 8 @alloc_22ab2c56e287a287214a1e1a8b6785ab)
          to label %bb11 unwind label %cleanup4

bb10:                                             ; preds = %bb7
; invoke core::ops::range::RangeInclusive<Idx>::new
  invoke void @"_ZN4core3ops5range25RangeInclusive$LT$Idx$GT$3new17h22a34d6452e32824E"(ptr sret([12 x i8]) align 4 %_18, i32 2, i32 %n)
          to label %bb13 unwind label %cleanup4

bb13:                                             ; preds = %bb10
; invoke <I as core::iter::traits::collect::IntoIterator>::into_iter
  invoke void @"_ZN63_$LT$I$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17hf23a3cfb3a443968E"(ptr sret([12 x i8]) align 4 %_17, ptr align 4 %_18)
          to label %bb14 unwind label %cleanup4

bb14:                                             ; preds = %bb13
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %iter1, ptr align 4 %_17, i64 12, i1 false)
  br label %bb15

bb15:                                             ; preds = %bb22, %bb14
; invoke core::iter::range::<impl core::iter::traits::iterator::Iterator for core::ops::range::RangeInclusive<A>>::next
  %19 = invoke { i32, i32 } @"_ZN4core4iter5range110_$LT$impl$u20$core..iter..traits..iterator..Iterator$u20$for$u20$core..ops..range..RangeInclusive$LT$A$GT$$GT$4next17ha8b1d2bf0c4481a3E"(ptr align 4 %iter1)
          to label %bb16 unwind label %cleanup4

bb16:                                             ; preds = %bb15
  %20 = extractvalue { i32, i32 } %19, 0
  %21 = extractvalue { i32, i32 } %19, 1
  store i32 %20, ptr %_20, align 4
  %22 = getelementptr inbounds i8, ptr %_20, i64 4
  store i32 %21, ptr %22, align 4
  %23 = load i32, ptr %_20, align 4
  %24 = getelementptr inbounds i8, ptr %_20, i64 4
  %25 = load i32, ptr %24, align 4
  %_22 = zext i32 %23 to i64
  %26 = trunc nuw i64 %_22 to i1
  br i1 %26, label %bb17, label %bb18

bb17:                                             ; preds = %bb16
  %27 = getelementptr inbounds i8, ptr %_20, i64 4
  %i6 = load i32, ptr %27, align 4
; invoke core::ops::range::RangeInclusive<Idx>::new
  invoke void @"_ZN4core3ops5range25RangeInclusive$LT$Idx$GT$3new17hace3c8e1d1de0c3fE"(ptr sret([24 x i8]) align 8 %_25, i64 0, i64 25)
          to label %bb19 unwind label %cleanup4

bb18:                                             ; preds = %bb16
  store i32 0, ptr %sum, align 4
; invoke core::ops::range::RangeInclusive<Idx>::new
  invoke void @"_ZN4core3ops5range25RangeInclusive$LT$Idx$GT$3new17hace3c8e1d1de0c3fE"(ptr sret([24 x i8]) align 8 %_70, i64 0, i64 25)
          to label %bb43 unwind label %cleanup4

bb43:                                             ; preds = %bb18
; invoke <I as core::iter::traits::collect::IntoIterator>::into_iter
  invoke void @"_ZN63_$LT$I$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17h5f798d5038b7bc9bE"(ptr sret([24 x i8]) align 8 %_69, ptr align 8 %_70)
          to label %bb44 unwind label %cleanup4

bb44:                                             ; preds = %bb43
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %iter3, ptr align 8 %_69, i64 24, i1 false)
  br label %bb45

bb45:                                             ; preds = %bb51, %bb44
; invoke core::iter::range::<impl core::iter::traits::iterator::Iterator for core::ops::range::RangeInclusive<A>>::next
  %28 = invoke { i64, i64 } @"_ZN4core4iter5range110_$LT$impl$u20$core..iter..traits..iterator..Iterator$u20$for$u20$core..ops..range..RangeInclusive$LT$A$GT$$GT$4next17h468624698dde6acfE"(ptr align 8 %iter3)
          to label %bb46 unwind label %cleanup4

bb46:                                             ; preds = %bb45
  %29 = extractvalue { i64, i64 } %28, 0
  %30 = extractvalue { i64, i64 } %28, 1
  store i64 %29, ptr %_72, align 8
  %31 = getelementptr inbounds i8, ptr %_72, i64 8
  store i64 %30, ptr %31, align 8
  %_74 = load i64, ptr %_72, align 8
  %32 = getelementptr inbounds i8, ptr %_72, i64 8
  %33 = load i64, ptr %32, align 8
  %34 = trunc nuw i64 %_74 to i1
  br i1 %34, label %bb47, label %bb48

bb47:                                             ; preds = %bb46
  %35 = getelementptr inbounds i8, ptr %_72, i64 8
  %i = load i64, ptr %35, align 8
  %_80 = sext i32 %n to i64
; invoke <alloc::vec::Vec<T,A> as core::ops::index::Index<I>>::index
  %_78 = invoke align 8 ptr @"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h34826d8391da57f6E"(ptr align 8 %dp, i64 %_80, ptr align 8 @alloc_2a17113741e559c14bd197440bb931ac)
          to label %bb49 unwind label %cleanup4

bb48:                                             ; preds = %bb46
  %_0 = load i32, ptr %sum, align 4
; call core::ptr::drop_in_place<alloc::vec::Vec<alloc::vec::Vec<i32>>>
  call void @"_ZN4core3ptr70drop_in_place$LT$alloc..vec..Vec$LT$alloc..vec..Vec$LT$i32$GT$$GT$$GT$17h1a49d248c15d4acfE"(ptr align 8 %dp)
  ret i32 %_0

bb49:                                             ; preds = %bb47
; invoke <alloc::vec::Vec<T,A> as core::ops::index::Index<I>>::index
  %_77 = invoke align 4 ptr @"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17heef5d88ea76925afE"(ptr align 8 %_78, i64 %i, ptr align 8 @alloc_ea1b003d79af6d3a64e76cc2eaf3ed83)
          to label %bb50 unwind label %cleanup4

bb50:                                             ; preds = %bb49
  %_76 = load i32, ptr %_77, align 4
  %36 = load i32, ptr %sum, align 4
  %37 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %36, i32 %_76)
  %_81.0 = extractvalue { i32, i1 } %37, 0
  %_81.1 = extractvalue { i32, i1 } %37, 1
  br i1 %_81.1, label %panic5, label %bb51

bb51:                                             ; preds = %bb50
  store i32 %_81.0, ptr %sum, align 4
  br label %bb45

panic5:                                           ; preds = %bb50
; invoke core::panicking::panic_const::panic_const_add_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_bb7e4aa2c4b4c8bffd05985ce672cc8d) #24
          to label %unreachable unwind label %cleanup4

bb19:                                             ; preds = %bb17
; invoke <I as core::iter::traits::collect::IntoIterator>::into_iter
  invoke void @"_ZN63_$LT$I$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17h5f798d5038b7bc9bE"(ptr sret([24 x i8]) align 8 %_24, ptr align 8 %_25)
          to label %bb20 unwind label %cleanup4

bb20:                                             ; preds = %bb19
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %iter2, ptr align 8 %_24, i64 24, i1 false)
  br label %bb21

bb21:                                             ; preds = %bb30, %bb42, %bb20
; invoke core::iter::range::<impl core::iter::traits::iterator::Iterator for core::ops::range::RangeInclusive<A>>::next
  %38 = invoke { i64, i64 } @"_ZN4core4iter5range110_$LT$impl$u20$core..iter..traits..iterator..Iterator$u20$for$u20$core..ops..range..RangeInclusive$LT$A$GT$$GT$4next17h468624698dde6acfE"(ptr align 8 %iter2)
          to label %bb22 unwind label %cleanup4

bb22:                                             ; preds = %bb21
  %39 = extractvalue { i64, i64 } %38, 0
  %40 = extractvalue { i64, i64 } %38, 1
  store i64 %39, ptr %_27, align 8
  %41 = getelementptr inbounds i8, ptr %_27, i64 8
  store i64 %40, ptr %41, align 8
  %_29 = load i64, ptr %_27, align 8
  %42 = getelementptr inbounds i8, ptr %_27, i64 8
  %43 = load i64, ptr %42, align 8
  %44 = trunc nuw i64 %_29 to i1
  br i1 %44, label %bb23, label %bb15

bb23:                                             ; preds = %bb22
  %45 = getelementptr inbounds i8, ptr %_27, i64 8
  %j = load i64, ptr %45, align 8
  %_31 = icmp eq i64 %j, 0
  br i1 %_31, label %bb24, label %bb31

bb31:                                             ; preds = %bb23
  %46 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %i6, i32 1)
  %_51.0 = extractvalue { i32, i1 } %46, 0
  %_51.1 = extractvalue { i32, i1 } %46, 1
  br i1 %_51.1, label %panic7, label %bb32

bb24:                                             ; preds = %bb23
  %47 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %i6, i32 1)
  %_38.0 = extractvalue { i32, i1 } %47, 0
  %_38.1 = extractvalue { i32, i1 } %47, 1
  br i1 %_38.1, label %panic12, label %bb25

bb32:                                             ; preds = %bb31
  %_49 = sext i32 %_51.0 to i64
; invoke <alloc::vec::Vec<T,A> as core::ops::index::Index<I>>::index
  %_47 = invoke align 8 ptr @"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h34826d8391da57f6E"(ptr align 8 %dp, i64 %_49, ptr align 8 @alloc_2508536e22c130ed9045f6b520249db6)
          to label %bb33 unwind label %cleanup4

panic7:                                           ; preds = %bb31
; invoke core::panicking::panic_const::panic_const_sub_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_sub_overflow17h134cc1a7f93654deE(ptr align 8 @alloc_a7853604df253d4cd93a297fc0554a20) #24
          to label %unreachable unwind label %cleanup4

bb33:                                             ; preds = %bb32
  %_53.0 = sub i64 %j, 1
  %_53.1 = icmp ult i64 %j, 1
  br i1 %_53.1, label %panic8, label %bb34

bb34:                                             ; preds = %bb33
; invoke <alloc::vec::Vec<T,A> as core::ops::index::Index<I>>::index
  %_46 = invoke align 4 ptr @"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17heef5d88ea76925afE"(ptr align 8 %_47, i64 %_53.0, ptr align 8 @alloc_97f8fab629096b38d7d723d3fcc7ee46)
          to label %bb35 unwind label %cleanup4

panic8:                                           ; preds = %bb33
; invoke core::panicking::panic_const::panic_const_sub_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_sub_overflow17h134cc1a7f93654deE(ptr align 8 @alloc_ce47e64e5be8c2463294f07cd1b2287f) #24
          to label %unreachable unwind label %cleanup4

bb35:                                             ; preds = %bb34
  %_45 = load i32, ptr %_46, align 4
  %48 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %i6, i32 1)
  %_60.0 = extractvalue { i32, i1 } %48, 0
  %_60.1 = extractvalue { i32, i1 } %48, 1
  br i1 %_60.1, label %panic9, label %bb36

bb36:                                             ; preds = %bb35
  %_58 = sext i32 %_60.0 to i64
; invoke <alloc::vec::Vec<T,A> as core::ops::index::Index<I>>::index
  %_56 = invoke align 8 ptr @"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h34826d8391da57f6E"(ptr align 8 %dp, i64 %_58, ptr align 8 @alloc_a7a82027890393c5ba495017b639b811)
          to label %bb37 unwind label %cleanup4

panic9:                                           ; preds = %bb35
; invoke core::panicking::panic_const::panic_const_sub_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_sub_overflow17h134cc1a7f93654deE(ptr align 8 @alloc_e0679e49705db6e821b4ca874ce309a0) #24
          to label %unreachable unwind label %cleanup4

bb37:                                             ; preds = %bb36
  %_62.0 = add i64 %j, 1
  %_62.1 = icmp ult i64 %_62.0, %j
  br i1 %_62.1, label %panic10, label %bb38

bb38:                                             ; preds = %bb37
; invoke <alloc::vec::Vec<T,A> as core::ops::index::Index<I>>::index
  %_55 = invoke align 4 ptr @"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17heef5d88ea76925afE"(ptr align 8 %_56, i64 %_62.0, ptr align 8 @alloc_ef0571cc6380bb258db4973dd4d13008)
          to label %bb39 unwind label %cleanup4

panic10:                                          ; preds = %bb37
; invoke core::panicking::panic_const::panic_const_add_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_1ad5da1522b180a5e7c079db5d34610a) #24
          to label %unreachable unwind label %cleanup4

bb39:                                             ; preds = %bb38
  %_54 = load i32, ptr %_55, align 4
  %49 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %_45, i32 %_54)
  %_63.0 = extractvalue { i32, i1 } %49, 0
  %_63.1 = extractvalue { i32, i1 } %49, 1
  br i1 %_63.1, label %panic11, label %bb40

bb40:                                             ; preds = %bb39
  %_67 = sext i32 %i6 to i64
; invoke <alloc::vec::Vec<T,A> as core::ops::index::IndexMut<I>>::index_mut
  %_65 = invoke align 8 ptr @"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h38939401f5085ce7E"(ptr align 8 %dp, i64 %_67, ptr align 8 @alloc_9a9a2e37add18c176c5cb61462e29301)
          to label %bb41 unwind label %cleanup4

panic11:                                          ; preds = %bb39
; invoke core::panicking::panic_const::panic_const_add_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_cf72125f5077959bc25a2d18fdcb1318) #24
          to label %unreachable unwind label %cleanup4

bb41:                                             ; preds = %bb40
; invoke <alloc::vec::Vec<T,A> as core::ops::index::IndexMut<I>>::index_mut
  %_64 = invoke align 4 ptr @"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17hbb699821bdd62ec3E"(ptr align 8 %_65, i64 %j, ptr align 8 @alloc_2948f482fd36f0406bb7f8be30e31e90)
          to label %bb42 unwind label %cleanup4

bb42:                                             ; preds = %bb41
  store i32 %_63.0, ptr %_64, align 4
  br label %bb21

bb25:                                             ; preds = %bb24
  %_36 = sext i32 %_38.0 to i64
; invoke <alloc::vec::Vec<T,A> as core::ops::index::Index<I>>::index
  %_34 = invoke align 8 ptr @"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h34826d8391da57f6E"(ptr align 8 %dp, i64 %_36, ptr align 8 @alloc_6a4bdd0b393bf7a44aa5a825822e0e00)
          to label %bb26 unwind label %cleanup4

panic12:                                          ; preds = %bb24
; invoke core::panicking::panic_const::panic_const_sub_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_sub_overflow17h134cc1a7f93654deE(ptr align 8 @alloc_1c1d340a3fd605f4b41daee8c33b626e) #24
          to label %unreachable unwind label %cleanup4

bb26:                                             ; preds = %bb25
  %_40.0 = add i64 %j, 1
  %_40.1 = icmp ult i64 %_40.0, %j
  br i1 %_40.1, label %panic13, label %bb27

bb27:                                             ; preds = %bb26
; invoke <alloc::vec::Vec<T,A> as core::ops::index::Index<I>>::index
  %_33 = invoke align 4 ptr @"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17heef5d88ea76925afE"(ptr align 8 %_34, i64 %_40.0, ptr align 8 @alloc_b3241f28fb12000b5e3620f99e6ab699)
          to label %bb28 unwind label %cleanup4

panic13:                                          ; preds = %bb26
; invoke core::panicking::panic_const::panic_const_add_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_281efef443cdd229c321d99a98b9157f) #24
          to label %unreachable unwind label %cleanup4

bb28:                                             ; preds = %bb27
  %_32 = load i32, ptr %_33, align 4
  %_44 = sext i32 %i6 to i64
; invoke <alloc::vec::Vec<T,A> as core::ops::index::IndexMut<I>>::index_mut
  %_42 = invoke align 8 ptr @"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h38939401f5085ce7E"(ptr align 8 %dp, i64 %_44, ptr align 8 @alloc_6fda34c5a5ccd26f8bff72bcf3f477b1)
          to label %bb29 unwind label %cleanup4

bb29:                                             ; preds = %bb28
; invoke <alloc::vec::Vec<T,A> as core::ops::index::IndexMut<I>>::index_mut
  %_41 = invoke align 4 ptr @"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17hbb699821bdd62ec3E"(ptr align 8 %_42, i64 %j, ptr align 8 @alloc_d8edd249abdc4ab744aa96ee5d8675a1)
          to label %bb30 unwind label %cleanup4

bb30:                                             ; preds = %bb29
  store i32 %_32, ptr %_41, align 4
  br label %bb21

bb11:                                             ; preds = %bb9
; invoke <alloc::vec::Vec<T,A> as core::ops::index::IndexMut<I>>::index_mut
  %_14 = invoke align 4 ptr @"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17hbb699821bdd62ec3E"(ptr align 8 %_15, i64 %i14, ptr align 8 @alloc_1083bbc45c68588113d031ebfefc2405)
          to label %bb12 unwind label %cleanup4

bb12:                                             ; preds = %bb11
  store i32 1, ptr %_14, align 4
  br label %bb6

bb8:                                              ; No predecessors!
  unreachable

terminate:                                        ; preds = %bb55, %bb53
  %50 = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer
; call core::panicking::panic_in_cleanup
  call void @_ZN4core9panicking16panic_in_cleanup17h5f6bde45d17ae243E() #21
  unreachable

bb54:                                             ; preds = %bb55, %bb56, %bb53
  %51 = load ptr, ptr %0, align 8
  %52 = getelementptr inbounds i8, ptr %0, i64 8
  %53 = load i32, ptr %52, align 8
  %54 = insertvalue { ptr, i32 } poison, ptr %51, 0
  %55 = insertvalue { ptr, i32 } %54, i32 %53, 1
  resume { ptr, i32 } %55

bb55:                                             ; preds = %bb56
; invoke core::ptr::drop_in_place<alloc::vec::Vec<i32>>
  invoke void @"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17h04493e3e05b37c3bE"(ptr align 8 %_3) #22
          to label %bb54 unwind label %terminate
}

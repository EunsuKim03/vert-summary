define i32 @f_gold(i32 %n) unnamed_addr #3 personality ptr @rust_eh_personality {
start:
  %0 = alloca [16 x i8], align 8
  %_98 = alloca [1 x i8], align 1
  %_87 = alloca [8 x i8], align 4
  %iter3 = alloca [12 x i8], align 4
  %_85 = alloca [12 x i8], align 4
  %_84 = alloca [12 x i8], align 4
  %sum = alloca [4 x i8], align 4
  %_28 = alloca [16 x i8], align 8
  %iter2 = alloca [24 x i8], align 8
  %_26 = alloca [24 x i8], align 8
  %_25 = alloca [24 x i8], align 8
  %_21 = alloca [8 x i8], align 4
  %iter1 = alloca [12 x i8], align 4
  %_19 = alloca [12 x i8], align 4
  %_18 = alloca [12 x i8], align 4
  %_11 = alloca [16 x i8], align 8
  %iter = alloca [24 x i8], align 8
  %_9 = alloca [24 x i8], align 8
  %_8 = alloca [24 x i8], align 8
  %_3 = alloca [24 x i8], align 8
  %dp = alloca [24 x i8], align 8
  %_0 = alloca [4 x i8], align 4
  store i8 0, ptr %_98, align 1
  store i8 1, ptr %_98, align 1
; call alloc::vec::from_elem
  call void @_ZN5alloc3vec9from_elem17h98ce968f3a1fa04bE(ptr sret([24 x i8]) align 8 %_3, i32 0, i64 10)
  %_5 = sext i32 %n to i64
  %_6.0 = add i64 %_5, 1
  %_6.1 = icmp ult i64 %_6.0, %_5
  br i1 %_6.1, label %panic, label %bb2

bb2:                                              ; preds = %start
  store i8 0, ptr %_98, align 1
; invoke alloc::vec::from_elem
  invoke void @_ZN5alloc3vec9from_elem17he3c4f640602e572dE(ptr sret([24 x i8]) align 8 %dp, ptr align 8 %_3, i64 %_6.0)
          to label %bb3 unwind label %cleanup

panic:                                            ; preds = %start
; invoke core::panicking::panic_const::panic_const_add_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_a9e89bb2cd1f787e32edb2979df44bc3) #24
          to label %unreachable unwind label %cleanup

bb67:                                             ; preds = %cleanup
  %1 = load i8, ptr %_98, align 1
  %2 = trunc nuw i8 %1 to i1
  br i1 %2, label %bb66, label %bb65

cleanup:                                          ; preds = %bb2, %panic
  %3 = landingpad { ptr, i32 }
          cleanup
  %4 = extractvalue { ptr, i32 } %3, 0
  %5 = extractvalue { ptr, i32 } %3, 1
  store ptr %4, ptr %0, align 8
  %6 = getelementptr inbounds i8, ptr %0, i64 8
  store i32 %5, ptr %6, align 8
  br label %bb67

unreachable:                                      ; preds = %panic15, %panic14, %panic13, %panic12, %panic11, %panic10, %panic9, %panic8, %panic7, %panic5, %panic
  unreachable

bb3:                                              ; preds = %bb2
  store i8 0, ptr %_98, align 1
  %_7 = icmp eq i32 %n, 1
  br i1 %_7, label %bb4, label %bb5

bb5:                                              ; preds = %bb3
; invoke core::ops::range::RangeInclusive<Idx>::new
  invoke void @"_ZN4core3ops5range25RangeInclusive$LT$Idx$GT$3new17h1020ed44520e0a8dE"(ptr sret([24 x i8]) align 8 %_9, i64 0, i64 9)
          to label %bb6 unwind label %cleanup4

bb4:                                              ; preds = %bb3
  store i32 10, ptr %_0, align 4
  br label %bb62

bb64:                                             ; preds = %cleanup4
; invoke core::ptr::drop_in_place<alloc::vec::Vec<alloc::vec::Vec<i32>>>
  invoke void @"_ZN4core3ptr70drop_in_place$LT$alloc..vec..Vec$LT$alloc..vec..Vec$LT$i32$GT$$GT$$GT$17h4cbd73c1c37ce775E"(ptr align 8 %dp) #22
          to label %bb65 unwind label %terminate

cleanup4:                                         ; preds = %bb13, %bb11, %bb31, %bb30, %bb29, %panic15, %bb27, %panic14, %bb39, %bb38, %bb37, %panic13, %bb35, %panic12, %bb51, %bb50, %panic11, %bb48, %panic10, %bb46, %panic9, %bb44, %panic8, %bb42, %panic7, %bb23, %bb21, %bb19, %panic5, %bb59, %bb57, %bb55, %bb53, %bb20, %bb17, %bb15, %bb12, %bb8, %bb6, %bb5
  %7 = landingpad { ptr, i32 }
          cleanup
  %8 = extractvalue { ptr, i32 } %7, 0
  %9 = extractvalue { ptr, i32 } %7, 1
  store ptr %8, ptr %0, align 8
  %10 = getelementptr inbounds i8, ptr %0, i64 8
  store i32 %9, ptr %10, align 8
  br label %bb64

bb6:                                              ; preds = %bb5
; invoke <I as core::iter::traits::collect::IntoIterator>::into_iter
  invoke void @"_ZN63_$LT$I$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17h2cebb80a84fc354dE"(ptr sret([24 x i8]) align 8 %_8, ptr align 8 %_9)
          to label %bb7 unwind label %cleanup4

bb7:                                              ; preds = %bb6
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %iter, ptr align 8 %_8, i64 24, i1 false)
  br label %bb8

bb8:                                              ; preds = %bb14, %bb7
; invoke core::iter::range::<impl core::iter::traits::iterator::Iterator for core::ops::range::RangeInclusive<A>>::next
  %11 = invoke { i64, i64 } @"_ZN4core4iter5range110_$LT$impl$u20$core..iter..traits..iterator..Iterator$u20$for$u20$core..ops..range..RangeInclusive$LT$A$GT$$GT$4next17haa9f6e9178789136E"(ptr align 8 %iter)
          to label %bb9 unwind label %cleanup4

bb9:                                              ; preds = %bb8
  %12 = extractvalue { i64, i64 } %11, 0
  %13 = extractvalue { i64, i64 } %11, 1
  store i64 %12, ptr %_11, align 8
  %14 = getelementptr inbounds i8, ptr %_11, i64 8
  store i64 %13, ptr %14, align 8
  %_13 = load i64, ptr %_11, align 8
  %15 = getelementptr inbounds i8, ptr %_11, i64 8
  %16 = load i64, ptr %15, align 8
  %17 = trunc nuw i64 %_13 to i1
  br i1 %17, label %bb11, label %bb12

bb11:                                             ; preds = %bb9
  %18 = getelementptr inbounds i8, ptr %_11, i64 8
  %j16 = load i64, ptr %18, align 8
; invoke <alloc::vec::Vec<T,A> as core::ops::index::IndexMut<I>>::index_mut
  %_16 = invoke align 8 ptr @"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17hcbdd70bc9aef7dafE"(ptr align 8 %dp, i64 1, ptr align 8 @alloc_5c433a824e669530951056dd03df0465)
          to label %bb13 unwind label %cleanup4

bb12:                                             ; preds = %bb9
; invoke core::ops::range::RangeInclusive<Idx>::new
  invoke void @"_ZN4core3ops5range25RangeInclusive$LT$Idx$GT$3new17hcbe8a5b7b7a78b1bE"(ptr sret([12 x i8]) align 4 %_19, i32 2, i32 %n)
          to label %bb15 unwind label %cleanup4

bb15:                                             ; preds = %bb12
; invoke <I as core::iter::traits::collect::IntoIterator>::into_iter
  invoke void @"_ZN63_$LT$I$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17h10ef1c4419d166a7E"(ptr sret([12 x i8]) align 4 %_18, ptr align 4 %_19)
          to label %bb16 unwind label %cleanup4

bb16:                                             ; preds = %bb15
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %iter1, ptr align 4 %_18, i64 12, i1 false)
  br label %bb17

bb17:                                             ; preds = %bb24, %bb16
; invoke core::iter::range::<impl core::iter::traits::iterator::Iterator for core::ops::range::RangeInclusive<A>>::next
  %19 = invoke { i32, i32 } @"_ZN4core4iter5range110_$LT$impl$u20$core..iter..traits..iterator..Iterator$u20$for$u20$core..ops..range..RangeInclusive$LT$A$GT$$GT$4next17hcb040a761fe8dc21E"(ptr align 4 %iter1)
          to label %bb18 unwind label %cleanup4

bb18:                                             ; preds = %bb17
  %20 = extractvalue { i32, i32 } %19, 0
  %21 = extractvalue { i32, i32 } %19, 1
  store i32 %20, ptr %_21, align 4
  %22 = getelementptr inbounds i8, ptr %_21, i64 4
  store i32 %21, ptr %22, align 4
  %23 = load i32, ptr %_21, align 4
  %24 = getelementptr inbounds i8, ptr %_21, i64 4
  %25 = load i32, ptr %24, align 4
  %_23 = zext i32 %23 to i64
  %26 = trunc nuw i64 %_23 to i1
  br i1 %26, label %bb19, label %bb20

bb19:                                             ; preds = %bb18
  %27 = getelementptr inbounds i8, ptr %_21, i64 4
  %i = load i32, ptr %27, align 4
; invoke core::ops::range::RangeInclusive<Idx>::new
  invoke void @"_ZN4core3ops5range25RangeInclusive$LT$Idx$GT$3new17h1020ed44520e0a8dE"(ptr sret([24 x i8]) align 8 %_26, i64 0, i64 9)
          to label %bb21 unwind label %cleanup4

bb20:                                             ; preds = %bb18
  store i32 0, ptr %sum, align 4
; invoke core::ops::range::RangeInclusive<Idx>::new
  invoke void @"_ZN4core3ops5range25RangeInclusive$LT$Idx$GT$3new17hcbe8a5b7b7a78b1bE"(ptr sret([12 x i8]) align 4 %_85, i32 1, i32 9)
          to label %bb53 unwind label %cleanup4

bb53:                                             ; preds = %bb20
; invoke <I as core::iter::traits::collect::IntoIterator>::into_iter
  invoke void @"_ZN63_$LT$I$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17h10ef1c4419d166a7E"(ptr sret([12 x i8]) align 4 %_84, ptr align 4 %_85)
          to label %bb54 unwind label %cleanup4

bb54:                                             ; preds = %bb53
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %iter3, ptr align 4 %_84, i64 12, i1 false)
  br label %bb55

bb55:                                             ; preds = %bb61, %bb54
; invoke core::iter::range::<impl core::iter::traits::iterator::Iterator for core::ops::range::RangeInclusive<A>>::next
  %28 = invoke { i32, i32 } @"_ZN4core4iter5range110_$LT$impl$u20$core..iter..traits..iterator..Iterator$u20$for$u20$core..ops..range..RangeInclusive$LT$A$GT$$GT$4next17hcb040a761fe8dc21E"(ptr align 4 %iter3)
          to label %bb56 unwind label %cleanup4

bb56:                                             ; preds = %bb55
  %29 = extractvalue { i32, i32 } %28, 0
  %30 = extractvalue { i32, i32 } %28, 1
  store i32 %29, ptr %_87, align 4
  %31 = getelementptr inbounds i8, ptr %_87, i64 4
  store i32 %30, ptr %31, align 4
  %32 = load i32, ptr %_87, align 4
  %33 = getelementptr inbounds i8, ptr %_87, i64 4
  %34 = load i32, ptr %33, align 4
  %_89 = zext i32 %32 to i64
  %35 = trunc nuw i64 %_89 to i1
  br i1 %35, label %bb57, label %bb58

bb57:                                             ; preds = %bb56
  %36 = getelementptr inbounds i8, ptr %_87, i64 4
  %j = load i32, ptr %36, align 4
  %_95 = sext i32 %n to i64
; invoke <alloc::vec::Vec<T,A> as core::ops::index::Index<I>>::index
  %_93 = invoke align 8 ptr @"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hfa913cd68984c2beE"(ptr align 8 %dp, i64 %_95, ptr align 8 @alloc_f03cd92664b51039c91525c5e8959c65)
          to label %bb59 unwind label %cleanup4

bb58:                                             ; preds = %bb56
  %37 = load i32, ptr %sum, align 4
  store i32 %37, ptr %_0, align 4
  br label %bb62

bb62:                                             ; preds = %bb4, %bb58
; call core::ptr::drop_in_place<alloc::vec::Vec<alloc::vec::Vec<i32>>>
  call void @"_ZN4core3ptr70drop_in_place$LT$alloc..vec..Vec$LT$alloc..vec..Vec$LT$i32$GT$$GT$$GT$17h4cbd73c1c37ce775E"(ptr align 8 %dp)
  %38 = load i32, ptr %_0, align 4
  ret i32 %38

bb59:                                             ; preds = %bb57
  %_96 = sext i32 %j to i64
; invoke <alloc::vec::Vec<T,A> as core::ops::index::Index<I>>::index
  %_92 = invoke align 4 ptr @"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h27c4f336af3243ffE"(ptr align 8 %_93, i64 %_96, ptr align 8 @alloc_530490e34fb011f13f1f5621b51b3418)
          to label %bb60 unwind label %cleanup4

bb60:                                             ; preds = %bb59
  %_91 = load i32, ptr %_92, align 4
  %39 = load i32, ptr %sum, align 4
  %40 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %39, i32 %_91)
  %_97.0 = extractvalue { i32, i1 } %40, 0
  %_97.1 = extractvalue { i32, i1 } %40, 1
  br i1 %_97.1, label %panic5, label %bb61

bb61:                                             ; preds = %bb60
  store i32 %_97.0, ptr %sum, align 4
  br label %bb55

panic5:                                           ; preds = %bb60
; invoke core::panicking::panic_const::panic_const_add_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_12d75cad380159a2f6882387384691b0) #24
          to label %unreachable unwind label %cleanup4

bb21:                                             ; preds = %bb19
; invoke <I as core::iter::traits::collect::IntoIterator>::into_iter
  invoke void @"_ZN63_$LT$I$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17h2cebb80a84fc354dE"(ptr sret([24 x i8]) align 8 %_25, ptr align 8 %_26)
          to label %bb22 unwind label %cleanup4

bb22:                                             ; preds = %bb21
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %iter2, ptr align 8 %_25, i64 24, i1 false)
  br label %bb23

bb23:                                             ; preds = %bb32, %bb40, %bb52, %bb22
; invoke core::iter::range::<impl core::iter::traits::iterator::Iterator for core::ops::range::RangeInclusive<A>>::next
  %41 = invoke { i64, i64 } @"_ZN4core4iter5range110_$LT$impl$u20$core..iter..traits..iterator..Iterator$u20$for$u20$core..ops..range..RangeInclusive$LT$A$GT$$GT$4next17haa9f6e9178789136E"(ptr align 8 %iter2)
          to label %bb24 unwind label %cleanup4

bb24:                                             ; preds = %bb23
  %42 = extractvalue { i64, i64 } %41, 0
  %43 = extractvalue { i64, i64 } %41, 1
  store i64 %42, ptr %_28, align 8
  %44 = getelementptr inbounds i8, ptr %_28, i64 8
  store i64 %43, ptr %44, align 8
  %_30 = load i64, ptr %_28, align 8
  %45 = getelementptr inbounds i8, ptr %_28, i64 8
  %46 = load i64, ptr %45, align 8
  %47 = trunc nuw i64 %_30 to i1
  br i1 %47, label %bb25, label %bb17

bb25:                                             ; preds = %bb24
  %48 = getelementptr inbounds i8, ptr %_28, i64 8
  %j6 = load i64, ptr %48, align 8
  %_32 = icmp eq i64 %j6, 0
  br i1 %_32, label %bb26, label %bb33

bb33:                                             ; preds = %bb25
  %_46 = icmp eq i64 %j6, 9
  br i1 %_46, label %bb34, label %bb41

bb26:                                             ; preds = %bb25
  %49 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %i, i32 1)
  %_39.0 = extractvalue { i32, i1 } %49, 0
  %_39.1 = extractvalue { i32, i1 } %49, 1
  br i1 %_39.1, label %panic14, label %bb27

bb41:                                             ; preds = %bb33
  %50 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %i, i32 1)
  %_66.0 = extractvalue { i32, i1 } %50, 0
  %_66.1 = extractvalue { i32, i1 } %50, 1
  br i1 %_66.1, label %panic7, label %bb42

bb34:                                             ; preds = %bb33
  %51 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %i, i32 1)
  %_53.0 = extractvalue { i32, i1 } %51, 0
  %_53.1 = extractvalue { i32, i1 } %51, 1
  br i1 %_53.1, label %panic12, label %bb35

bb42:                                             ; preds = %bb41
  %_64 = sext i32 %_66.0 to i64
; invoke <alloc::vec::Vec<T,A> as core::ops::index::Index<I>>::index
  %_62 = invoke align 8 ptr @"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hfa913cd68984c2beE"(ptr align 8 %dp, i64 %_64, ptr align 8 @alloc_978362d8fdb792f8a12099dfaffc5535)
          to label %bb43 unwind label %cleanup4

panic7:                                           ; preds = %bb41
; invoke core::panicking::panic_const::panic_const_sub_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_sub_overflow17h134cc1a7f93654deE(ptr align 8 @alloc_38cf403b71775093b6b5a0d201571bf5) #24
          to label %unreachable unwind label %cleanup4

bb43:                                             ; preds = %bb42
  %_68.0 = sub i64 %j6, 1
  %_68.1 = icmp ult i64 %j6, 1
  br i1 %_68.1, label %panic8, label %bb44

bb44:                                             ; preds = %bb43
; invoke <alloc::vec::Vec<T,A> as core::ops::index::Index<I>>::index
  %_61 = invoke align 4 ptr @"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h27c4f336af3243ffE"(ptr align 8 %_62, i64 %_68.0, ptr align 8 @alloc_28505c3e8d77fe1aadbe796a11f8ad15)
          to label %bb45 unwind label %cleanup4

panic8:                                           ; preds = %bb43
; invoke core::panicking::panic_const::panic_const_sub_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_sub_overflow17h134cc1a7f93654deE(ptr align 8 @alloc_355f3e8bcccf55506d2790df231d0a2d) #24
          to label %unreachable unwind label %cleanup4

bb45:                                             ; preds = %bb44
  %_60 = load i32, ptr %_61, align 4
  %52 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %i, i32 1)
  %_75.0 = extractvalue { i32, i1 } %52, 0
  %_75.1 = extractvalue { i32, i1 } %52, 1
  br i1 %_75.1, label %panic9, label %bb46

bb46:                                             ; preds = %bb45
  %_73 = sext i32 %_75.0 to i64
; invoke <alloc::vec::Vec<T,A> as core::ops::index::Index<I>>::index
  %_71 = invoke align 8 ptr @"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hfa913cd68984c2beE"(ptr align 8 %dp, i64 %_73, ptr align 8 @alloc_c7963c7db3da376d1d0d1201ebc44a9c)
          to label %bb47 unwind label %cleanup4

panic9:                                           ; preds = %bb45
; invoke core::panicking::panic_const::panic_const_sub_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_sub_overflow17h134cc1a7f93654deE(ptr align 8 @alloc_197f8a8b483c560bcaf30f031b7f8115) #24
          to label %unreachable unwind label %cleanup4

bb47:                                             ; preds = %bb46
  %_77.0 = add i64 %j6, 1
  %_77.1 = icmp ult i64 %_77.0, %j6
  br i1 %_77.1, label %panic10, label %bb48

bb48:                                             ; preds = %bb47
; invoke <alloc::vec::Vec<T,A> as core::ops::index::Index<I>>::index
  %_70 = invoke align 4 ptr @"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h27c4f336af3243ffE"(ptr align 8 %_71, i64 %_77.0, ptr align 8 @alloc_944b70bce7d04b6b57067b1abf700b9b)
          to label %bb49 unwind label %cleanup4

panic10:                                          ; preds = %bb47
; invoke core::panicking::panic_const::panic_const_add_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_ef78d30669ecd671e6ea0feb7116fabb) #24
          to label %unreachable unwind label %cleanup4

bb49:                                             ; preds = %bb48
  %_69 = load i32, ptr %_70, align 4
  %53 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %_60, i32 %_69)
  %_78.0 = extractvalue { i32, i1 } %53, 0
  %_78.1 = extractvalue { i32, i1 } %53, 1
  br i1 %_78.1, label %panic11, label %bb50

bb50:                                             ; preds = %bb49
  %_82 = sext i32 %i to i64
; invoke <alloc::vec::Vec<T,A> as core::ops::index::IndexMut<I>>::index_mut
  %_80 = invoke align 8 ptr @"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17hcbdd70bc9aef7dafE"(ptr align 8 %dp, i64 %_82, ptr align 8 @alloc_fa8da6a593dbb980a949b51185dda8b7)
          to label %bb51 unwind label %cleanup4

panic11:                                          ; preds = %bb49
; invoke core::panicking::panic_const::panic_const_add_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_5a30bf27dbf117dda4cf9b3976c31b47) #24
          to label %unreachable unwind label %cleanup4

bb51:                                             ; preds = %bb50
; invoke <alloc::vec::Vec<T,A> as core::ops::index::IndexMut<I>>::index_mut
  %_79 = invoke align 4 ptr @"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h9d6880c51d7c833cE"(ptr align 8 %_80, i64 %j6, ptr align 8 @alloc_63d4895e64764a7f83e88ff06b77ab8b)
          to label %bb52 unwind label %cleanup4

bb52:                                             ; preds = %bb51
  store i32 %_78.0, ptr %_79, align 4
  br label %bb23

bb35:                                             ; preds = %bb34
  %_51 = sext i32 %_53.0 to i64
; invoke <alloc::vec::Vec<T,A> as core::ops::index::Index<I>>::index
  %_49 = invoke align 8 ptr @"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hfa913cd68984c2beE"(ptr align 8 %dp, i64 %_51, ptr align 8 @alloc_195bc6716cbaa7f5cf11ba50192f2255)
          to label %bb36 unwind label %cleanup4

panic12:                                          ; preds = %bb34
; invoke core::panicking::panic_const::panic_const_sub_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_sub_overflow17h134cc1a7f93654deE(ptr align 8 @alloc_5c16c8ed63175f22347287cd610c0014) #24
          to label %unreachable unwind label %cleanup4

bb36:                                             ; preds = %bb35
  %_55.0 = sub i64 %j6, 1
  %_55.1 = icmp ult i64 %j6, 1
  br i1 %_55.1, label %panic13, label %bb37

bb37:                                             ; preds = %bb36
; invoke <alloc::vec::Vec<T,A> as core::ops::index::Index<I>>::index
  %_48 = invoke align 4 ptr @"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h27c4f336af3243ffE"(ptr align 8 %_49, i64 %_55.0, ptr align 8 @alloc_6888d7607a9c5a68b1f07ad43b416d5f)
          to label %bb38 unwind label %cleanup4

panic13:                                          ; preds = %bb36
; invoke core::panicking::panic_const::panic_const_sub_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_sub_overflow17h134cc1a7f93654deE(ptr align 8 @alloc_f29fcf3e21f8ce9192b90e904bcdbde9) #24
          to label %unreachable unwind label %cleanup4

bb38:                                             ; preds = %bb37
  %_47 = load i32, ptr %_48, align 4
  %_59 = sext i32 %i to i64
; invoke <alloc::vec::Vec<T,A> as core::ops::index::IndexMut<I>>::index_mut
  %_57 = invoke align 8 ptr @"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17hcbdd70bc9aef7dafE"(ptr align 8 %dp, i64 %_59, ptr align 8 @alloc_50dad301657deaf751678c1435222d49)
          to label %bb39 unwind label %cleanup4

bb39:                                             ; preds = %bb38
; invoke <alloc::vec::Vec<T,A> as core::ops::index::IndexMut<I>>::index_mut
  %_56 = invoke align 4 ptr @"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h9d6880c51d7c833cE"(ptr align 8 %_57, i64 %j6, ptr align 8 @alloc_538882bfaf147ec94619242a84db67bc)
          to label %bb40 unwind label %cleanup4

bb40:                                             ; preds = %bb39
  store i32 %_47, ptr %_56, align 4
  br label %bb23

bb27:                                             ; preds = %bb26
  %_37 = sext i32 %_39.0 to i64
; invoke <alloc::vec::Vec<T,A> as core::ops::index::Index<I>>::index
  %_35 = invoke align 8 ptr @"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hfa913cd68984c2beE"(ptr align 8 %dp, i64 %_37, ptr align 8 @alloc_18df04020dbb408023baa4fb892d4c53)
          to label %bb28 unwind label %cleanup4

panic14:                                          ; preds = %bb26
; invoke core::panicking::panic_const::panic_const_sub_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_sub_overflow17h134cc1a7f93654deE(ptr align 8 @alloc_01f3644161cc3732f2ea075ab1d05449) #24
          to label %unreachable unwind label %cleanup4

bb28:                                             ; preds = %bb27
  %_41.0 = add i64 %j6, 1
  %_41.1 = icmp ult i64 %_41.0, %j6
  br i1 %_41.1, label %panic15, label %bb29

bb29:                                             ; preds = %bb28
; invoke <alloc::vec::Vec<T,A> as core::ops::index::Index<I>>::index
  %_34 = invoke align 4 ptr @"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h27c4f336af3243ffE"(ptr align 8 %_35, i64 %_41.0, ptr align 8 @alloc_94f09ad24bf1baf03b88bc4564ae5f8e)
          to label %bb30 unwind label %cleanup4

panic15:                                          ; preds = %bb28
; invoke core::panicking::panic_const::panic_const_add_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_88721e4c532db80795cdc93dfc872bb9) #24
          to label %unreachable unwind label %cleanup4

bb30:                                             ; preds = %bb29
  %_33 = load i32, ptr %_34, align 4
  %_45 = sext i32 %i to i64
; invoke <alloc::vec::Vec<T,A> as core::ops::index::IndexMut<I>>::index_mut
  %_43 = invoke align 8 ptr @"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17hcbdd70bc9aef7dafE"(ptr align 8 %dp, i64 %_45, ptr align 8 @alloc_2a4ef6b7d0558cc6888f2353d0a84baa)
          to label %bb31 unwind label %cleanup4

bb31:                                             ; preds = %bb30
; invoke <alloc::vec::Vec<T,A> as core::ops::index::IndexMut<I>>::index_mut
  %_42 = invoke align 4 ptr @"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h9d6880c51d7c833cE"(ptr align 8 %_43, i64 %j6, ptr align 8 @alloc_6df30d5534b44e6b3854ca9c3571d54c)
          to label %bb32 unwind label %cleanup4

bb32:                                             ; preds = %bb31
  store i32 %_33, ptr %_42, align 4
  br label %bb23

bb13:                                             ; preds = %bb11
; invoke <alloc::vec::Vec<T,A> as core::ops::index::IndexMut<I>>::index_mut
  %_15 = invoke align 4 ptr @"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h9d6880c51d7c833cE"(ptr align 8 %_16, i64 %j16, ptr align 8 @alloc_32d3d7b2ec74aa472095090785c9cb93)
          to label %bb14 unwind label %cleanup4

bb14:                                             ; preds = %bb13
  store i32 1, ptr %_15, align 4
  br label %bb8

bb10:                                             ; No predecessors!
  unreachable

terminate:                                        ; preds = %bb66, %bb64
  %54 = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer
; call core::panicking::panic_in_cleanup
  call void @_ZN4core9panicking16panic_in_cleanup17h5f6bde45d17ae243E() #21
  unreachable

bb65:                                             ; preds = %bb66, %bb67, %bb64
  %55 = load ptr, ptr %0, align 8
  %56 = getelementptr inbounds i8, ptr %0, i64 8
  %57 = load i32, ptr %56, align 8
  %58 = insertvalue { ptr, i32 } poison, ptr %55, 0
  %59 = insertvalue { ptr, i32 } %58, i32 %57, 1
  resume { ptr, i32 } %59

bb66:                                             ; preds = %bb67
; invoke core::ptr::drop_in_place<alloc::vec::Vec<i32>>
  invoke void @"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17h5780db3058cb1fe2E"(ptr align 8 %_3) #22
          to label %bb65 unwind label %terminate
}

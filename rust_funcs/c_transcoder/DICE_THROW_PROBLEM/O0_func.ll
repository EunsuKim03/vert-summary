define i32 @f_gold(i32 %m, i32 %n, i32 %x) unnamed_addr #3 personality ptr @rust_eh_personality {
start:
  %0 = alloca [16 x i8], align 8
  %_67 = alloca [1 x i8], align 1
  %_42 = alloca [8 x i8], align 4
  %iter3 = alloca [12 x i8], align 4
  %_39 = alloca [12 x i8], align 4
  %_38 = alloca [12 x i8], align 4
  %_34 = alloca [8 x i8], align 4
  %iter2 = alloca [12 x i8], align 4
  %_32 = alloca [12 x i8], align 4
  %_31 = alloca [12 x i8], align 4
  %_27 = alloca [8 x i8], align 4
  %iter1 = alloca [12 x i8], align 4
  %_25 = alloca [12 x i8], align 4
  %_24 = alloca [12 x i8], align 4
  %_16 = alloca [8 x i8], align 4
  %iter = alloca [12 x i8], align 4
  %_13 = alloca [12 x i8], align 4
  %_12 = alloca [12 x i8], align 4
  %_5 = alloca [24 x i8], align 8
  %table = alloca [24 x i8], align 8
  store i8 0, ptr %_67, align 1
  %_7 = sext i32 %x to i64
  %_8.0 = add i64 %_7, 1
  %_8.1 = icmp ult i64 %_8.0, %_7
  br i1 %_8.1, label %panic, label %bb1

bb1:                                              ; preds = %start
  store i8 1, ptr %_67, align 1
; call alloc::vec::from_elem
  call void @_ZN5alloc3vec9from_elem17h1c155b4a36a96c24E(ptr sret([24 x i8]) align 8 %_5, i32 0, i64 %_8.0)
  %_10 = sext i32 %n to i64
  %_11.0 = add i64 %_10, 1
  %_11.1 = icmp ult i64 %_11.0, %_10
  br i1 %_11.1, label %panic4, label %bb3

panic:                                            ; preds = %start
; call core::panicking::panic_const::panic_const_add_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_436103a73e227e9e6ed40fb4850a5c8d) #23
  unreachable

bb3:                                              ; preds = %bb1
  store i8 0, ptr %_67, align 1
; invoke alloc::vec::from_elem
  invoke void @_ZN5alloc3vec9from_elem17h485fbe6508e11a83E(ptr sret([24 x i8]) align 8 %table, ptr align 8 %_5, i64 %_11.0)
          to label %bb4 unwind label %cleanup

panic4:                                           ; preds = %bb1
; invoke core::panicking::panic_const::panic_const_add_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_71114470aa21471421969eec731714fb) #24
          to label %unreachable unwind label %cleanup

bb45:                                             ; preds = %cleanup
  %1 = load i8, ptr %_67, align 1
  %2 = trunc nuw i8 %1 to i1
  br i1 %2, label %bb44, label %bb43

cleanup:                                          ; preds = %bb3, %panic4
  %3 = landingpad { ptr, i32 }
          cleanup
  %4 = extractvalue { ptr, i32 } %3, 0
  %5 = extractvalue { ptr, i32 } %3, 1
  store ptr %4, ptr %0, align 8
  %6 = getelementptr inbounds i8, ptr %0, i64 8
  store i32 %5, ptr %6, align 8
  br label %bb45

unreachable:                                      ; preds = %panic8, %panic7, %panic6, %panic4
  unreachable

bb4:                                              ; preds = %bb3
  store i8 0, ptr %_67, align 1
; invoke core::cmp::Ord::min
  %_14 = invoke i32 @_ZN4core3cmp3Ord3min17hbc222ff77f4a43e3E(i32 %m, i32 %x)
          to label %bb5 unwind label %cleanup5

bb42:                                             ; preds = %cleanup5
; invoke core::ptr::drop_in_place<alloc::vec::Vec<alloc::vec::Vec<i32>>>
  invoke void @"_ZN4core3ptr70drop_in_place$LT$alloc..vec..Vec$LT$alloc..vec..Vec$LT$i32$GT$$GT$$GT$17he03508af9ca7e7dbE"(ptr align 8 %table) #22
          to label %bb43 unwind label %terminate

cleanup5:                                         ; preds = %bb13, %bb11, %panic8, %bb36, %bb35, %bb34, %panic7, %bb32, %panic6, %bb29, %bb27, %bb26, %bb25, %bb23, %bb21, %bb19, %bb39, %bb20, %bb17, %bb15, %bb12, %bb8, %bb6, %bb5, %bb4
  %7 = landingpad { ptr, i32 }
          cleanup
  %8 = extractvalue { ptr, i32 } %7, 0
  %9 = extractvalue { ptr, i32 } %7, 1
  store ptr %8, ptr %0, align 8
  %10 = getelementptr inbounds i8, ptr %0, i64 8
  store i32 %9, ptr %10, align 8
  br label %bb42

bb5:                                              ; preds = %bb4
; invoke core::ops::range::RangeInclusive<Idx>::new
  invoke void @"_ZN4core3ops5range25RangeInclusive$LT$Idx$GT$3new17hd7bfd7f23bd1b52fE"(ptr sret([12 x i8]) align 4 %_13, i32 1, i32 %_14)
          to label %bb6 unwind label %cleanup5

bb6:                                              ; preds = %bb5
; invoke <I as core::iter::traits::collect::IntoIterator>::into_iter
  invoke void @"_ZN63_$LT$I$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17h42f38dfc55608c8aE"(ptr sret([12 x i8]) align 4 %_12, ptr align 4 %_13)
          to label %bb7 unwind label %cleanup5

bb7:                                              ; preds = %bb6
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %iter, ptr align 4 %_12, i64 12, i1 false)
  br label %bb8

bb8:                                              ; preds = %bb14, %bb7
; invoke core::iter::range::<impl core::iter::traits::iterator::Iterator for core::ops::range::RangeInclusive<A>>::next
  %11 = invoke { i32, i32 } @"_ZN4core4iter5range110_$LT$impl$u20$core..iter..traits..iterator..Iterator$u20$for$u20$core..ops..range..RangeInclusive$LT$A$GT$$GT$4next17h17c322c43e6108b9E"(ptr align 4 %iter)
          to label %bb9 unwind label %cleanup5

bb9:                                              ; preds = %bb8
  %12 = extractvalue { i32, i32 } %11, 0
  %13 = extractvalue { i32, i32 } %11, 1
  store i32 %12, ptr %_16, align 4
  %14 = getelementptr inbounds i8, ptr %_16, i64 4
  store i32 %13, ptr %14, align 4
  %15 = load i32, ptr %_16, align 4
  %16 = getelementptr inbounds i8, ptr %_16, i64 4
  %17 = load i32, ptr %16, align 4
  %_18 = zext i32 %15 to i64
  %18 = trunc nuw i64 %_18 to i1
  br i1 %18, label %bb11, label %bb12

bb11:                                             ; preds = %bb9
  %19 = getelementptr inbounds i8, ptr %_16, i64 4
  %j9 = load i32, ptr %19, align 4
; invoke <alloc::vec::Vec<T,A> as core::ops::index::IndexMut<I>>::index_mut
  %_21 = invoke align 8 ptr @"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h019499aa8c1f2df3E"(ptr align 8 %table, i64 1, ptr align 8 @alloc_e3d21401c6aa205a88e651e9b1ed0d4b)
          to label %bb13 unwind label %cleanup5

bb12:                                             ; preds = %bb9
; invoke core::ops::range::RangeInclusive<Idx>::new
  invoke void @"_ZN4core3ops5range25RangeInclusive$LT$Idx$GT$3new17hd7bfd7f23bd1b52fE"(ptr sret([12 x i8]) align 4 %_25, i32 2, i32 %n)
          to label %bb15 unwind label %cleanup5

bb15:                                             ; preds = %bb12
; invoke <I as core::iter::traits::collect::IntoIterator>::into_iter
  invoke void @"_ZN63_$LT$I$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17h42f38dfc55608c8aE"(ptr sret([12 x i8]) align 4 %_24, ptr align 4 %_25)
          to label %bb16 unwind label %cleanup5

bb16:                                             ; preds = %bb15
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %iter1, ptr align 4 %_24, i64 12, i1 false)
  br label %bb17

bb17:                                             ; preds = %bb24, %bb16
; invoke core::iter::range::<impl core::iter::traits::iterator::Iterator for core::ops::range::RangeInclusive<A>>::next
  %20 = invoke { i32, i32 } @"_ZN4core4iter5range110_$LT$impl$u20$core..iter..traits..iterator..Iterator$u20$for$u20$core..ops..range..RangeInclusive$LT$A$GT$$GT$4next17h17c322c43e6108b9E"(ptr align 4 %iter1)
          to label %bb18 unwind label %cleanup5

bb18:                                             ; preds = %bb17
  %21 = extractvalue { i32, i32 } %20, 0
  %22 = extractvalue { i32, i32 } %20, 1
  store i32 %21, ptr %_27, align 4
  %23 = getelementptr inbounds i8, ptr %_27, i64 4
  store i32 %22, ptr %23, align 4
  %24 = load i32, ptr %_27, align 4
  %25 = getelementptr inbounds i8, ptr %_27, i64 4
  %26 = load i32, ptr %25, align 4
  %_29 = zext i32 %24 to i64
  %27 = trunc nuw i64 %_29 to i1
  br i1 %27, label %bb19, label %bb20

bb19:                                             ; preds = %bb18
  %28 = getelementptr inbounds i8, ptr %_27, i64 4
  %i = load i32, ptr %28, align 4
; invoke core::ops::range::RangeInclusive<Idx>::new
  invoke void @"_ZN4core3ops5range25RangeInclusive$LT$Idx$GT$3new17hd7bfd7f23bd1b52fE"(ptr sret([12 x i8]) align 4 %_32, i32 1, i32 %x)
          to label %bb21 unwind label %cleanup5

bb20:                                             ; preds = %bb18
  %_65 = sext i32 %n to i64
; invoke <alloc::vec::Vec<T,A> as core::ops::index::Index<I>>::index
  %_63 = invoke align 8 ptr @"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h13172378d5579e4fE"(ptr align 8 %table, i64 %_65, ptr align 8 @alloc_f00ede298b14ec2fa76120a253f5c6ae)
          to label %bb39 unwind label %cleanup5

bb39:                                             ; preds = %bb20
  %_66 = sext i32 %x to i64
; invoke <alloc::vec::Vec<T,A> as core::ops::index::Index<I>>::index
  %_62 = invoke align 4 ptr @"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h69c9ea17902e2344E"(ptr align 8 %_63, i64 %_66, ptr align 8 @alloc_7d3f8aaa6ac2cc957194a3e93ab0a652)
          to label %bb40 unwind label %cleanup5

bb40:                                             ; preds = %bb39
  %_0 = load i32, ptr %_62, align 4
; call core::ptr::drop_in_place<alloc::vec::Vec<alloc::vec::Vec<i32>>>
  call void @"_ZN4core3ptr70drop_in_place$LT$alloc..vec..Vec$LT$alloc..vec..Vec$LT$i32$GT$$GT$$GT$17he03508af9ca7e7dbE"(ptr align 8 %table)
  ret i32 %_0

bb21:                                             ; preds = %bb19
; invoke <I as core::iter::traits::collect::IntoIterator>::into_iter
  invoke void @"_ZN63_$LT$I$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17h42f38dfc55608c8aE"(ptr sret([12 x i8]) align 4 %_31, ptr align 4 %_32)
          to label %bb22 unwind label %cleanup5

bb22:                                             ; preds = %bb21
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %iter2, ptr align 4 %_31, i64 12, i1 false)
  br label %bb23

bb23:                                             ; preds = %bb30, %bb22
; invoke core::iter::range::<impl core::iter::traits::iterator::Iterator for core::ops::range::RangeInclusive<A>>::next
  %29 = invoke { i32, i32 } @"_ZN4core4iter5range110_$LT$impl$u20$core..iter..traits..iterator..Iterator$u20$for$u20$core..ops..range..RangeInclusive$LT$A$GT$$GT$4next17h17c322c43e6108b9E"(ptr align 4 %iter2)
          to label %bb24 unwind label %cleanup5

bb24:                                             ; preds = %bb23
  %30 = extractvalue { i32, i32 } %29, 0
  %31 = extractvalue { i32, i32 } %29, 1
  store i32 %30, ptr %_34, align 4
  %32 = getelementptr inbounds i8, ptr %_34, i64 4
  store i32 %31, ptr %32, align 4
  %33 = load i32, ptr %_34, align 4
  %34 = getelementptr inbounds i8, ptr %_34, i64 4
  %35 = load i32, ptr %34, align 4
  %_36 = zext i32 %33 to i64
  %36 = trunc nuw i64 %_36 to i1
  br i1 %36, label %bb25, label %bb17

bb25:                                             ; preds = %bb24
  %37 = getelementptr inbounds i8, ptr %_34, i64 4
  %j = load i32, ptr %37, align 4
; invoke core::cmp::Ord::min
  %_40 = invoke i32 @_ZN4core3cmp3Ord3min17hbc222ff77f4a43e3E(i32 %m, i32 %j)
          to label %bb26 unwind label %cleanup5

bb26:                                             ; preds = %bb25
; invoke core::ops::range::RangeInclusive<Idx>::new
  invoke void @"_ZN4core3ops5range25RangeInclusive$LT$Idx$GT$3new17hd7bfd7f23bd1b52fE"(ptr sret([12 x i8]) align 4 %_39, i32 1, i32 %_40)
          to label %bb27 unwind label %cleanup5

bb27:                                             ; preds = %bb26
; invoke <I as core::iter::traits::collect::IntoIterator>::into_iter
  invoke void @"_ZN63_$LT$I$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17h42f38dfc55608c8aE"(ptr sret([12 x i8]) align 4 %_38, ptr align 4 %_39)
          to label %bb28 unwind label %cleanup5

bb28:                                             ; preds = %bb27
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %iter3, ptr align 4 %_38, i64 12, i1 false)
  br label %bb29

bb29:                                             ; preds = %bb38, %bb28
; invoke core::iter::range::<impl core::iter::traits::iterator::Iterator for core::ops::range::RangeInclusive<A>>::next
  %38 = invoke { i32, i32 } @"_ZN4core4iter5range110_$LT$impl$u20$core..iter..traits..iterator..Iterator$u20$for$u20$core..ops..range..RangeInclusive$LT$A$GT$$GT$4next17h17c322c43e6108b9E"(ptr align 4 %iter3)
          to label %bb30 unwind label %cleanup5

bb30:                                             ; preds = %bb29
  %39 = extractvalue { i32, i32 } %38, 0
  %40 = extractvalue { i32, i32 } %38, 1
  store i32 %39, ptr %_42, align 4
  %41 = getelementptr inbounds i8, ptr %_42, i64 4
  store i32 %40, ptr %41, align 4
  %42 = load i32, ptr %_42, align 4
  %43 = getelementptr inbounds i8, ptr %_42, i64 4
  %44 = load i32, ptr %43, align 4
  %_44 = zext i32 %42 to i64
  %45 = trunc nuw i64 %_44 to i1
  br i1 %45, label %bb31, label %bb23

bb31:                                             ; preds = %bb30
  %46 = getelementptr inbounds i8, ptr %_42, i64 4
  %k = load i32, ptr %46, align 4
  %47 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %i, i32 1)
  %_52.0 = extractvalue { i32, i1 } %47, 0
  %_52.1 = extractvalue { i32, i1 } %47, 1
  br i1 %_52.1, label %panic6, label %bb32

bb32:                                             ; preds = %bb31
  %_50 = sext i32 %_52.0 to i64
; invoke <alloc::vec::Vec<T,A> as core::ops::index::Index<I>>::index
  %_48 = invoke align 8 ptr @"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h13172378d5579e4fE"(ptr align 8 %table, i64 %_50, ptr align 8 @alloc_f8fbe59ce21ef3c9574e12d12f23d9c8)
          to label %bb33 unwind label %cleanup5

panic6:                                           ; preds = %bb31
; invoke core::panicking::panic_const::panic_const_sub_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_sub_overflow17h134cc1a7f93654deE(ptr align 8 @alloc_80407db9cca949dd7d390e6d4ba3ead5) #24
          to label %unreachable unwind label %cleanup5

bb33:                                             ; preds = %bb32
  %48 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %j, i32 %k)
  %_55.0 = extractvalue { i32, i1 } %48, 0
  %_55.1 = extractvalue { i32, i1 } %48, 1
  br i1 %_55.1, label %panic7, label %bb34

bb34:                                             ; preds = %bb33
  %_53 = sext i32 %_55.0 to i64
; invoke <alloc::vec::Vec<T,A> as core::ops::index::Index<I>>::index
  %_47 = invoke align 4 ptr @"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h69c9ea17902e2344E"(ptr align 8 %_48, i64 %_53, ptr align 8 @alloc_05421d283e5940d0ff933c7ad09a3f0d)
          to label %bb35 unwind label %cleanup5

panic7:                                           ; preds = %bb33
; invoke core::panicking::panic_const::panic_const_sub_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_sub_overflow17h134cc1a7f93654deE(ptr align 8 @alloc_366bae2b541f927edc4e69aaf23aee0a) #24
          to label %unreachable unwind label %cleanup5

bb35:                                             ; preds = %bb34
  %_46 = load i32, ptr %_47, align 4
  %_59 = sext i32 %i to i64
; invoke <alloc::vec::Vec<T,A> as core::ops::index::IndexMut<I>>::index_mut
  %_57 = invoke align 8 ptr @"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h019499aa8c1f2df3E"(ptr align 8 %table, i64 %_59, ptr align 8 @alloc_88d8d7569224b96d495d6268f741c6fe)
          to label %bb36 unwind label %cleanup5

bb36:                                             ; preds = %bb35
  %_60 = sext i32 %j to i64
; invoke <alloc::vec::Vec<T,A> as core::ops::index::IndexMut<I>>::index_mut
  %_56 = invoke align 4 ptr @"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17hbf3a805eea0163bcE"(ptr align 8 %_57, i64 %_60, ptr align 8 @alloc_8d7541b78a625eb802b56d2455e50ddc)
          to label %bb37 unwind label %cleanup5

bb37:                                             ; preds = %bb36
  %49 = load i32, ptr %_56, align 4
  %50 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %49, i32 %_46)
  %_61.0 = extractvalue { i32, i1 } %50, 0
  %_61.1 = extractvalue { i32, i1 } %50, 1
  br i1 %_61.1, label %panic8, label %bb38

bb38:                                             ; preds = %bb37
  store i32 %_61.0, ptr %_56, align 4
  br label %bb29

panic8:                                           ; preds = %bb37
; invoke core::panicking::panic_const::panic_const_add_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_dcfef7adea2a6e8c64b05cac81266171) #24
          to label %unreachable unwind label %cleanup5

bb13:                                             ; preds = %bb11
  %_23 = sext i32 %j9 to i64
; invoke <alloc::vec::Vec<T,A> as core::ops::index::IndexMut<I>>::index_mut
  %_20 = invoke align 4 ptr @"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17hbf3a805eea0163bcE"(ptr align 8 %_21, i64 %_23, ptr align 8 @alloc_c3ea006f633000c9cf551385f8cf170e)
          to label %bb14 unwind label %cleanup5

bb14:                                             ; preds = %bb13
  store i32 1, ptr %_20, align 4
  br label %bb8

bb10:                                             ; No predecessors!
  unreachable

terminate:                                        ; preds = %bb44, %bb42
  %51 = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer
; call core::panicking::panic_in_cleanup
  call void @_ZN4core9panicking16panic_in_cleanup17h5f6bde45d17ae243E() #21
  unreachable

bb43:                                             ; preds = %bb44, %bb45, %bb42
  %52 = load ptr, ptr %0, align 8
  %53 = getelementptr inbounds i8, ptr %0, i64 8
  %54 = load i32, ptr %53, align 8
  %55 = insertvalue { ptr, i32 } poison, ptr %52, 0
  %56 = insertvalue { ptr, i32 } %55, i32 %54, 1
  resume { ptr, i32 } %56

bb44:                                             ; preds = %bb45
; invoke core::ptr::drop_in_place<alloc::vec::Vec<i32>>
  invoke void @"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17h51d14347f5a9314dE"(ptr align 8 %_5) #22
          to label %bb43 unwind label %terminate
}

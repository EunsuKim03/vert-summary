define i32 @f_gold(i32 %n, i32 %m) unnamed_addr #3 personality ptr @rust_eh_personality {
start:
  %0 = alloca [16 x i8], align 8
  %_74 = alloca [1 x i8], align 1
  %_43 = alloca [8 x i8], align 4
  %iter3 = alloca [12 x i8], align 4
  %_41 = alloca [12 x i8], align 4
  %_40 = alloca [12 x i8], align 4
  %_36 = alloca [8 x i8], align 4
  %iter2 = alloca [12 x i8], align 4
  %_34 = alloca [12 x i8], align 4
  %_33 = alloca [12 x i8], align 4
  %_25 = alloca [8 x i8], align 4
  %iter1 = alloca [12 x i8], align 4
  %_23 = alloca [12 x i8], align 4
  %_22 = alloca [12 x i8], align 4
  %_14 = alloca [8 x i8], align 4
  %iter = alloca [12 x i8], align 4
  %_12 = alloca [12 x i8], align 4
  %_11 = alloca [12 x i8], align 4
  %_4 = alloca [24 x i8], align 8
  %dp = alloca [24 x i8], align 8
  store i8 0, ptr %_74, align 1
  %_6 = sext i32 %m to i64
  %_7.0 = add i64 %_6, 1
  %_7.1 = icmp ult i64 %_7.0, %_6
  br i1 %_7.1, label %panic, label %bb1

bb1:                                              ; preds = %start
  store i8 1, ptr %_74, align 1
; call alloc::vec::from_elem
  call void @_ZN5alloc3vec9from_elem17ha027458619a36cf1E(ptr sret([24 x i8]) align 8 %_4, i32 0, i64 %_7.0)
  %_9 = sext i32 %n to i64
  %_10.0 = add i64 %_9, 1
  %_10.1 = icmp ult i64 %_10.0, %_9
  br i1 %_10.1, label %panic4, label %bb3

panic:                                            ; preds = %start
; call core::panicking::panic_const::panic_const_add_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_e59e4443a4a8c8e233e9a4af09c6be9d) #23
  unreachable

bb3:                                              ; preds = %bb1
  store i8 0, ptr %_74, align 1
; invoke alloc::vec::from_elem
  invoke void @_ZN5alloc3vec9from_elem17h9e48b3b1a55b50bcE(ptr sret([24 x i8]) align 8 %dp, ptr align 8 %_4, i64 %_10.0)
          to label %bb4 unwind label %cleanup

panic4:                                           ; preds = %bb1
; invoke core::panicking::panic_const::panic_const_add_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_fa9c5c2f427b76fb27b6c226f6abd5e9) #24
          to label %unreachable unwind label %cleanup

bb48:                                             ; preds = %cleanup
  %1 = load i8, ptr %_74, align 1
  %2 = trunc nuw i8 %1 to i1
  br i1 %2, label %bb47, label %bb46

cleanup:                                          ; preds = %bb3, %panic4
  %3 = landingpad { ptr, i32 }
          cleanup
  %4 = extractvalue { ptr, i32 } %3, 0
  %5 = extractvalue { ptr, i32 } %3, 1
  store ptr %4, ptr %0, align 8
  %6 = getelementptr inbounds i8, ptr %0, i64 8
  store i32 %5, ptr %6, align 8
  br label %bb48

unreachable:                                      ; preds = %panic8, %panic7, %panic6, %panic4
  unreachable

bb4:                                              ; preds = %bb3
  store i8 0, ptr %_74, align 1
; invoke core::ops::range::RangeInclusive<Idx>::new
  invoke void @"_ZN4core3ops5range25RangeInclusive$LT$Idx$GT$3new17hc0fdf360c8982a4aE"(ptr sret([12 x i8]) align 4 %_12, i32 0, i32 %n)
          to label %bb5 unwind label %cleanup5

bb45:                                             ; preds = %cleanup5
; invoke core::ptr::drop_in_place<alloc::vec::Vec<alloc::vec::Vec<i32>>>
  invoke void @"_ZN4core3ptr70drop_in_place$LT$alloc..vec..Vec$LT$alloc..vec..Vec$LT$i32$GT$$GT$$GT$17h84c19daef9c653e0E"(ptr align 8 %dp) #22
          to label %bb46 unwind label %terminate

cleanup5:                                         ; preds = %bb12, %bb10, %bb20, %bb18, %bb40, %bb39, %panic8, %bb37, %panic7, %bb35, %bb34, %bb33, %panic6, %bb30, %bb28, %bb26, %bb42, %bb27, %bb24, %bb22, %bb19, %bb16, %bb14, %bb11, %bb7, %bb5, %bb4
  %7 = landingpad { ptr, i32 }
          cleanup
  %8 = extractvalue { ptr, i32 } %7, 0
  %9 = extractvalue { ptr, i32 } %7, 1
  store ptr %8, ptr %0, align 8
  %10 = getelementptr inbounds i8, ptr %0, i64 8
  store i32 %9, ptr %10, align 8
  br label %bb45

bb5:                                              ; preds = %bb4
; invoke <I as core::iter::traits::collect::IntoIterator>::into_iter
  invoke void @"_ZN63_$LT$I$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17hdcded83427af6d71E"(ptr sret([12 x i8]) align 4 %_11, ptr align 4 %_12)
          to label %bb6 unwind label %cleanup5

bb6:                                              ; preds = %bb5
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %iter, ptr align 4 %_11, i64 12, i1 false)
  br label %bb7

bb7:                                              ; preds = %bb13, %bb6
; invoke core::iter::range::<impl core::iter::traits::iterator::Iterator for core::ops::range::RangeInclusive<A>>::next
  %11 = invoke { i32, i32 } @"_ZN4core4iter5range110_$LT$impl$u20$core..iter..traits..iterator..Iterator$u20$for$u20$core..ops..range..RangeInclusive$LT$A$GT$$GT$4next17h9af08dda924cf10eE"(ptr align 4 %iter)
          to label %bb8 unwind label %cleanup5

bb8:                                              ; preds = %bb7
  %12 = extractvalue { i32, i32 } %11, 0
  %13 = extractvalue { i32, i32 } %11, 1
  store i32 %12, ptr %_14, align 4
  %14 = getelementptr inbounds i8, ptr %_14, i64 4
  store i32 %13, ptr %14, align 4
  %15 = load i32, ptr %_14, align 4
  %16 = getelementptr inbounds i8, ptr %_14, i64 4
  %17 = load i32, ptr %16, align 4
  %_16 = zext i32 %15 to i64
  %18 = trunc nuw i64 %_16 to i1
  br i1 %18, label %bb10, label %bb11

bb10:                                             ; preds = %bb8
  %19 = getelementptr inbounds i8, ptr %_14, i64 4
  %i10 = load i32, ptr %19, align 4
  %_21 = sext i32 %i10 to i64
; invoke <alloc::vec::Vec<T,A> as core::ops::index::IndexMut<I>>::index_mut
  %_19 = invoke align 8 ptr @"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17hbbba3b0526e952a2E"(ptr align 8 %dp, i64 %_21, ptr align 8 @alloc_cc8ccd59d7e1ec9577ca60017538e5d2)
          to label %bb12 unwind label %cleanup5

bb11:                                             ; preds = %bb8
; invoke core::ops::range::RangeInclusive<Idx>::new
  invoke void @"_ZN4core3ops5range25RangeInclusive$LT$Idx$GT$3new17hc0fdf360c8982a4aE"(ptr sret([12 x i8]) align 4 %_23, i32 0, i32 %m)
          to label %bb14 unwind label %cleanup5

bb14:                                             ; preds = %bb11
; invoke <I as core::iter::traits::collect::IntoIterator>::into_iter
  invoke void @"_ZN63_$LT$I$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17hdcded83427af6d71E"(ptr sret([12 x i8]) align 4 %_22, ptr align 4 %_23)
          to label %bb15 unwind label %cleanup5

bb15:                                             ; preds = %bb14
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %iter1, ptr align 4 %_22, i64 12, i1 false)
  br label %bb16

bb16:                                             ; preds = %bb21, %bb15
; invoke core::iter::range::<impl core::iter::traits::iterator::Iterator for core::ops::range::RangeInclusive<A>>::next
  %20 = invoke { i32, i32 } @"_ZN4core4iter5range110_$LT$impl$u20$core..iter..traits..iterator..Iterator$u20$for$u20$core..ops..range..RangeInclusive$LT$A$GT$$GT$4next17h9af08dda924cf10eE"(ptr align 4 %iter1)
          to label %bb17 unwind label %cleanup5

bb17:                                             ; preds = %bb16
  %21 = extractvalue { i32, i32 } %20, 0
  %22 = extractvalue { i32, i32 } %20, 1
  store i32 %21, ptr %_25, align 4
  %23 = getelementptr inbounds i8, ptr %_25, i64 4
  store i32 %22, ptr %23, align 4
  %24 = load i32, ptr %_25, align 4
  %25 = getelementptr inbounds i8, ptr %_25, i64 4
  %26 = load i32, ptr %25, align 4
  %_27 = zext i32 %24 to i64
  %27 = trunc nuw i64 %_27 to i1
  br i1 %27, label %bb18, label %bb19

bb18:                                             ; preds = %bb17
  %28 = getelementptr inbounds i8, ptr %_25, i64 4
  %j9 = load i32, ptr %28, align 4
; invoke <alloc::vec::Vec<T,A> as core::ops::index::IndexMut<I>>::index_mut
  %_30 = invoke align 8 ptr @"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17hbbba3b0526e952a2E"(ptr align 8 %dp, i64 0, ptr align 8 @alloc_8e38f9ee458ecfcd2d4fa8978752790c)
          to label %bb20 unwind label %cleanup5

bb19:                                             ; preds = %bb17
; invoke core::ops::range::RangeInclusive<Idx>::new
  invoke void @"_ZN4core3ops5range25RangeInclusive$LT$Idx$GT$3new17hc0fdf360c8982a4aE"(ptr sret([12 x i8]) align 4 %_34, i32 1, i32 %n)
          to label %bb22 unwind label %cleanup5

bb22:                                             ; preds = %bb19
; invoke <I as core::iter::traits::collect::IntoIterator>::into_iter
  invoke void @"_ZN63_$LT$I$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17hdcded83427af6d71E"(ptr sret([12 x i8]) align 4 %_33, ptr align 4 %_34)
          to label %bb23 unwind label %cleanup5

bb23:                                             ; preds = %bb22
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %iter2, ptr align 4 %_33, i64 12, i1 false)
  br label %bb24

bb24:                                             ; preds = %bb31, %bb23
; invoke core::iter::range::<impl core::iter::traits::iterator::Iterator for core::ops::range::RangeInclusive<A>>::next
  %29 = invoke { i32, i32 } @"_ZN4core4iter5range110_$LT$impl$u20$core..iter..traits..iterator..Iterator$u20$for$u20$core..ops..range..RangeInclusive$LT$A$GT$$GT$4next17h9af08dda924cf10eE"(ptr align 4 %iter2)
          to label %bb25 unwind label %cleanup5

bb25:                                             ; preds = %bb24
  %30 = extractvalue { i32, i32 } %29, 0
  %31 = extractvalue { i32, i32 } %29, 1
  store i32 %30, ptr %_36, align 4
  %32 = getelementptr inbounds i8, ptr %_36, i64 4
  store i32 %31, ptr %32, align 4
  %33 = load i32, ptr %_36, align 4
  %34 = getelementptr inbounds i8, ptr %_36, i64 4
  %35 = load i32, ptr %34, align 4
  %_38 = zext i32 %33 to i64
  %36 = trunc nuw i64 %_38 to i1
  br i1 %36, label %bb26, label %bb27

bb26:                                             ; preds = %bb25
  %37 = getelementptr inbounds i8, ptr %_36, i64 4
  %i = load i32, ptr %37, align 4
; invoke core::ops::range::RangeInclusive<Idx>::new
  invoke void @"_ZN4core3ops5range25RangeInclusive$LT$Idx$GT$3new17hc0fdf360c8982a4aE"(ptr sret([12 x i8]) align 4 %_41, i32 1, i32 %m)
          to label %bb28 unwind label %cleanup5

bb27:                                             ; preds = %bb25
  %_72 = sext i32 %n to i64
; invoke <alloc::vec::Vec<T,A> as core::ops::index::Index<I>>::index
  %_70 = invoke align 8 ptr @"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h0c1444ee4c4975aaE"(ptr align 8 %dp, i64 %_72, ptr align 8 @alloc_e29ec0490c21d6b45df819bbed447e74)
          to label %bb42 unwind label %cleanup5

bb42:                                             ; preds = %bb27
  %_73 = sext i32 %m to i64
; invoke <alloc::vec::Vec<T,A> as core::ops::index::Index<I>>::index
  %_69 = invoke align 4 ptr @"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h90aa752b7ed36cb0E"(ptr align 8 %_70, i64 %_73, ptr align 8 @alloc_1e3fe3fb240b8243c463d00c90685121)
          to label %bb43 unwind label %cleanup5

bb43:                                             ; preds = %bb42
  %_0 = load i32, ptr %_69, align 4
; call core::ptr::drop_in_place<alloc::vec::Vec<alloc::vec::Vec<i32>>>
  call void @"_ZN4core3ptr70drop_in_place$LT$alloc..vec..Vec$LT$alloc..vec..Vec$LT$i32$GT$$GT$$GT$17h84c19daef9c653e0E"(ptr align 8 %dp)
  ret i32 %_0

bb28:                                             ; preds = %bb26
; invoke <I as core::iter::traits::collect::IntoIterator>::into_iter
  invoke void @"_ZN63_$LT$I$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17hdcded83427af6d71E"(ptr sret([12 x i8]) align 4 %_40, ptr align 4 %_41)
          to label %bb29 unwind label %cleanup5

bb29:                                             ; preds = %bb28
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %iter3, ptr align 4 %_40, i64 12, i1 false)
  br label %bb30

bb30:                                             ; preds = %bb41, %bb29
; invoke core::iter::range::<impl core::iter::traits::iterator::Iterator for core::ops::range::RangeInclusive<A>>::next
  %38 = invoke { i32, i32 } @"_ZN4core4iter5range110_$LT$impl$u20$core..iter..traits..iterator..Iterator$u20$for$u20$core..ops..range..RangeInclusive$LT$A$GT$$GT$4next17h9af08dda924cf10eE"(ptr align 4 %iter3)
          to label %bb31 unwind label %cleanup5

bb31:                                             ; preds = %bb30
  %39 = extractvalue { i32, i32 } %38, 0
  %40 = extractvalue { i32, i32 } %38, 1
  store i32 %39, ptr %_43, align 4
  %41 = getelementptr inbounds i8, ptr %_43, i64 4
  store i32 %40, ptr %41, align 4
  %42 = load i32, ptr %_43, align 4
  %43 = getelementptr inbounds i8, ptr %_43, i64 4
  %44 = load i32, ptr %43, align 4
  %_45 = zext i32 %42 to i64
  %45 = trunc nuw i64 %_45 to i1
  br i1 %45, label %bb32, label %bb24

bb32:                                             ; preds = %bb31
  %46 = getelementptr inbounds i8, ptr %_43, i64 4
  %j = load i32, ptr %46, align 4
  %_52 = sext i32 %i to i64
  %_53.0 = sub i64 %_52, 1
  %_53.1 = icmp ult i64 %_52, 1
  br i1 %_53.1, label %panic6, label %bb33

bb33:                                             ; preds = %bb32
; invoke <alloc::vec::Vec<T,A> as core::ops::index::Index<I>>::index
  %_49 = invoke align 8 ptr @"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h0c1444ee4c4975aaE"(ptr align 8 %dp, i64 %_53.0, ptr align 8 @alloc_e2c2cdf0b64d7a03399a579d692d2626)
          to label %bb34 unwind label %cleanup5

panic6:                                           ; preds = %bb32
; invoke core::panicking::panic_const::panic_const_sub_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_sub_overflow17h134cc1a7f93654deE(ptr align 8 @alloc_fae548d293ae22a82faed379564aedd2) #24
          to label %unreachable unwind label %cleanup5

bb34:                                             ; preds = %bb33
  %_54 = sext i32 %j to i64
; invoke <alloc::vec::Vec<T,A> as core::ops::index::Index<I>>::index
  %_48 = invoke align 4 ptr @"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h90aa752b7ed36cb0E"(ptr align 8 %_49, i64 %_54, ptr align 8 @alloc_54b8a6caa101901de1d6507246f6e926)
          to label %bb35 unwind label %cleanup5

bb35:                                             ; preds = %bb34
  %_47 = load i32, ptr %_48, align 4
  %_59 = sext i32 %i to i64
; invoke <alloc::vec::Vec<T,A> as core::ops::index::Index<I>>::index
  %_57 = invoke align 8 ptr @"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h0c1444ee4c4975aaE"(ptr align 8 %dp, i64 %_59, ptr align 8 @alloc_bc774ccd5f2c9cc2e663d8601b0202d3)
          to label %bb36 unwind label %cleanup5

bb36:                                             ; preds = %bb35
  %_61 = sext i32 %j to i64
  %_62.0 = sub i64 %_61, 1
  %_62.1 = icmp ult i64 %_61, 1
  br i1 %_62.1, label %panic7, label %bb37

bb37:                                             ; preds = %bb36
; invoke <alloc::vec::Vec<T,A> as core::ops::index::Index<I>>::index
  %_56 = invoke align 4 ptr @"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h90aa752b7ed36cb0E"(ptr align 8 %_57, i64 %_62.0, ptr align 8 @alloc_f226291cd7a3254b36d4c75a86b8fb82)
          to label %bb38 unwind label %cleanup5

panic7:                                           ; preds = %bb36
; invoke core::panicking::panic_const::panic_const_sub_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_sub_overflow17h134cc1a7f93654deE(ptr align 8 @alloc_f980260acf4d04f97e53e66a62a81cd7) #24
          to label %unreachable unwind label %cleanup5

bb38:                                             ; preds = %bb37
  %_55 = load i32, ptr %_56, align 4
  %47 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %_47, i32 %_55)
  %_63.0 = extractvalue { i32, i1 } %47, 0
  %_63.1 = extractvalue { i32, i1 } %47, 1
  br i1 %_63.1, label %panic8, label %bb39

bb39:                                             ; preds = %bb38
  %_67 = sext i32 %i to i64
; invoke <alloc::vec::Vec<T,A> as core::ops::index::IndexMut<I>>::index_mut
  %_65 = invoke align 8 ptr @"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17hbbba3b0526e952a2E"(ptr align 8 %dp, i64 %_67, ptr align 8 @alloc_326ef0023e859c2b10aeadbc549c297d)
          to label %bb40 unwind label %cleanup5

panic8:                                           ; preds = %bb38
; invoke core::panicking::panic_const::panic_const_add_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_f4e629543ce9b95f670a185ab38b4ba4) #24
          to label %unreachable unwind label %cleanup5

bb40:                                             ; preds = %bb39
  %_68 = sext i32 %j to i64
; invoke <alloc::vec::Vec<T,A> as core::ops::index::IndexMut<I>>::index_mut
  %_64 = invoke align 4 ptr @"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h9aaa2268d6a1e8e8E"(ptr align 8 %_65, i64 %_68, ptr align 8 @alloc_8f4327a1f61dad9ee6133221c1332f28)
          to label %bb41 unwind label %cleanup5

bb41:                                             ; preds = %bb40
  store i32 %_63.0, ptr %_64, align 4
  br label %bb30

bb20:                                             ; preds = %bb18
  %_32 = sext i32 %j9 to i64
; invoke <alloc::vec::Vec<T,A> as core::ops::index::IndexMut<I>>::index_mut
  %_29 = invoke align 4 ptr @"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h9aaa2268d6a1e8e8E"(ptr align 8 %_30, i64 %_32, ptr align 8 @alloc_ee53bdc27602b3598d85d62c8aa04e77)
          to label %bb21 unwind label %cleanup5

bb21:                                             ; preds = %bb20
  store i32 1, ptr %_29, align 4
  br label %bb16

bb12:                                             ; preds = %bb10
; invoke <alloc::vec::Vec<T,A> as core::ops::index::IndexMut<I>>::index_mut
  %_18 = invoke align 4 ptr @"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h9aaa2268d6a1e8e8E"(ptr align 8 %_19, i64 0, ptr align 8 @alloc_c75e0815adb627be99df549d0eb76a5f)
          to label %bb13 unwind label %cleanup5

bb13:                                             ; preds = %bb12
  store i32 1, ptr %_18, align 4
  br label %bb7

bb9:                                              ; No predecessors!
  unreachable

terminate:                                        ; preds = %bb47, %bb45
  %48 = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer
; call core::panicking::panic_in_cleanup
  call void @_ZN4core9panicking16panic_in_cleanup17h5f6bde45d17ae243E() #21
  unreachable

bb46:                                             ; preds = %bb47, %bb48, %bb45
  %49 = load ptr, ptr %0, align 8
  %50 = getelementptr inbounds i8, ptr %0, i64 8
  %51 = load i32, ptr %50, align 8
  %52 = insertvalue { ptr, i32 } poison, ptr %49, 0
  %53 = insertvalue { ptr, i32 } %52, i32 %51, 1
  resume { ptr, i32 } %53

bb47:                                             ; preds = %bb48
; invoke core::ptr::drop_in_place<alloc::vec::Vec<i32>>
  invoke void @"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17h4255cf1302b62c65E"(ptr align 8 %_4) #22
          to label %bb46 unwind label %terminate
}

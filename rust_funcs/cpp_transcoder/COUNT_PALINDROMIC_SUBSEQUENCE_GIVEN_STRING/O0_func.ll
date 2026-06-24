define i32 @f_gold(ptr align 8 %str) unnamed_addr #3 personality ptr @rust_eh_personality {
start:
  %0 = alloca [16 x i8], align 8
  %_98 = alloca [1 x i8], align 1
  %_30 = alloca [16 x i8], align 8
  %iter2 = alloca [16 x i8], align 8
  %_23 = alloca [16 x i8], align 8
  %iter1 = alloca [24 x i8], align 8
  %_21 = alloca [24 x i8], align 8
  %_20 = alloca [24 x i8], align 8
  %_13 = alloca [16 x i8], align 8
  %iter = alloca [16 x i8], align 8
  %_5 = alloca [24 x i8], align 8
  %cps = alloca [24 x i8], align 8
  store i8 0, ptr %_98, align 1
; invoke alloc::string::String::len
  %N = invoke i64 @_ZN5alloc6string6String3len17hc6d89a98dae6dcb5E(ptr align 8 %str)
          to label %bb1 unwind label %cleanup

bb63:                                             ; preds = %bb65, %bb66, %bb62, %cleanup
; invoke core::ptr::drop_in_place<alloc::string::String>
  invoke void @"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17he38dc3e8ad247e78E"(ptr align 8 %str) #23
          to label %bb64 unwind label %terminate

cleanup:                                          ; preds = %bb59, %bb2, %panic, %start
  %1 = landingpad { ptr, i32 }
          cleanup
  %2 = extractvalue { ptr, i32 } %1, 0
  %3 = extractvalue { ptr, i32 } %1, 1
  store ptr %2, ptr %0, align 8
  %4 = getelementptr inbounds i8, ptr %0, i64 8
  store i32 %3, ptr %4, align 8
  br label %bb63

bb1:                                              ; preds = %start
  %_7.0 = add i64 %N, 1
  %_7.1 = icmp ult i64 %_7.0, %N
  br i1 %_7.1, label %panic, label %bb2

bb2:                                              ; preds = %bb1
; invoke alloc::vec::from_elem
  invoke void @_ZN5alloc3vec9from_elem17hca758c718855457cE(ptr sret([24 x i8]) align 8 %_5, i32 0, i64 %_7.0)
          to label %bb3 unwind label %cleanup

panic:                                            ; preds = %bb1
; invoke core::panicking::panic_const::panic_const_add_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_22dc36e879c858d8f2f869c9e712fdf0) #25
          to label %unreachable unwind label %cleanup

unreachable:                                      ; preds = %panic20, %panic19, %panic18, %panic17, %panic16, %panic15, %panic14, %panic13, %panic12, %panic11, %panic10, %panic9, %panic8, %panic7, %panic6, %panic3, %panic
  unreachable

bb3:                                              ; preds = %bb2
  store i8 1, ptr %_98, align 1
  %_9.0 = add i64 %N, 1
  %_9.1 = icmp ult i64 %_9.0, %N
  br i1 %_9.1, label %panic3, label %bb4

bb4:                                              ; preds = %bb3
  store i8 0, ptr %_98, align 1
; invoke alloc::vec::from_elem
  invoke void @_ZN5alloc3vec9from_elem17ha199d610d9d51a1dE(ptr sret([24 x i8]) align 8 %cps, ptr align 8 %_5, i64 %_9.0)
          to label %bb5 unwind label %cleanup4

panic3:                                           ; preds = %bb3
; invoke core::panicking::panic_const::panic_const_add_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_f642363be9ae851b1ca044936dc200c4) #25
          to label %unreachable unwind label %cleanup4

bb66:                                             ; preds = %cleanup4
  %5 = load i8, ptr %_98, align 1
  %6 = trunc nuw i8 %5 to i1
  br i1 %6, label %bb65, label %bb63

cleanup4:                                         ; preds = %bb4, %panic3
  %7 = landingpad { ptr, i32 }
          cleanup
  %8 = extractvalue { ptr, i32 } %7, 0
  %9 = extractvalue { ptr, i32 } %7, 1
  store ptr %8, ptr %0, align 8
  %10 = getelementptr inbounds i8, ptr %0, i64 8
  store i32 %9, ptr %10, align 8
  br label %bb66

bb5:                                              ; preds = %bb4
  store i8 0, ptr %_98, align 1
; invoke <I as core::iter::traits::collect::IntoIterator>::into_iter
  %11 = invoke { i64, i64 } @"_ZN63_$LT$I$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17hb467940f48b7880dE"(i64 0, i64 %N)
          to label %bb6 unwind label %cleanup5

bb62:                                             ; preds = %cleanup5
; invoke core::ptr::drop_in_place<alloc::vec::Vec<alloc::vec::Vec<i32>>>
  invoke void @"_ZN4core3ptr70drop_in_place$LT$alloc..vec..Vec$LT$alloc..vec..Vec$LT$i32$GT$$GT$$GT$17hd3bef7cb221c7e2cE"(ptr align 8 %cps) #23
          to label %bb63 unwind label %terminate

cleanup5:                                         ; preds = %bb12, %bb10, %bb40, %bb39, %panic20, %panic19, %bb36, %bb35, %panic18, %bb33, %panic17, %bb31, %bb55, %bb54, %panic16, %bb52, %panic15, %bb50, %panic14, %panic13, %bb47, %bb46, %panic12, %bb44, %panic11, %bb42, %bb29, %bb28, %panic10, %bb26, %panic9, %panic8, %panic7, %bb21, %bb18, %bb58, %panic6, %bb19, %bb16, %bb14, %bb11, %bb7, %bb5
  %12 = landingpad { ptr, i32 }
          cleanup
  %13 = extractvalue { ptr, i32 } %12, 0
  %14 = extractvalue { ptr, i32 } %12, 1
  store ptr %13, ptr %0, align 8
  %15 = getelementptr inbounds i8, ptr %0, i64 8
  store i32 %14, ptr %15, align 8
  br label %bb62

bb6:                                              ; preds = %bb5
  %_10.0 = extractvalue { i64, i64 } %11, 0
  %_10.1 = extractvalue { i64, i64 } %11, 1
  store i64 %_10.0, ptr %iter, align 8
  %16 = getelementptr inbounds i8, ptr %iter, i64 8
  store i64 %_10.1, ptr %16, align 8
  br label %bb7

bb7:                                              ; preds = %bb13, %bb6
; invoke core::iter::range::<impl core::iter::traits::iterator::Iterator for core::ops::range::Range<A>>::next
  %17 = invoke { i64, i64 } @"_ZN4core4iter5range101_$LT$impl$u20$core..iter..traits..iterator..Iterator$u20$for$u20$core..ops..range..Range$LT$A$GT$$GT$4next17h54e3bf97a9857940E"(ptr align 8 %iter)
          to label %bb8 unwind label %cleanup5

bb8:                                              ; preds = %bb7
  %18 = extractvalue { i64, i64 } %17, 0
  %19 = extractvalue { i64, i64 } %17, 1
  store i64 %18, ptr %_13, align 8
  %20 = getelementptr inbounds i8, ptr %_13, i64 8
  store i64 %19, ptr %20, align 8
  %_15 = load i64, ptr %_13, align 8
  %21 = getelementptr inbounds i8, ptr %_13, i64 8
  %22 = load i64, ptr %21, align 8
  %23 = trunc nuw i64 %_15 to i1
  br i1 %23, label %bb10, label %bb11

bb10:                                             ; preds = %bb8
  %24 = getelementptr inbounds i8, ptr %_13, i64 8
  %i21 = load i64, ptr %24, align 8
; invoke <alloc::vec::Vec<T,A> as core::ops::index::IndexMut<I>>::index_mut
  %_18 = invoke align 8 ptr @"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h09b9639fedfc171aE"(ptr align 8 %cps, i64 %i21, ptr align 8 @alloc_79af2461bd0480297561f96066ec1843)
          to label %bb12 unwind label %cleanup5

bb11:                                             ; preds = %bb8
; invoke core::ops::range::RangeInclusive<Idx>::new
  invoke void @"_ZN4core3ops5range25RangeInclusive$LT$Idx$GT$3new17ha2f0701628e52082E"(ptr sret([24 x i8]) align 8 %_21, i64 2, i64 %N)
          to label %bb14 unwind label %cleanup5

bb14:                                             ; preds = %bb11
; invoke <I as core::iter::traits::collect::IntoIterator>::into_iter
  invoke void @"_ZN63_$LT$I$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17hf353d342faa44bdaE"(ptr sret([24 x i8]) align 8 %_20, ptr align 8 %_21)
          to label %bb15 unwind label %cleanup5

bb15:                                             ; preds = %bb14
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %iter1, ptr align 8 %_20, i64 24, i1 false)
  br label %bb16

bb16:                                             ; preds = %bb22, %bb15
; invoke core::iter::range::<impl core::iter::traits::iterator::Iterator for core::ops::range::RangeInclusive<A>>::next
  %25 = invoke { i64, i64 } @"_ZN4core4iter5range110_$LT$impl$u20$core..iter..traits..iterator..Iterator$u20$for$u20$core..ops..range..RangeInclusive$LT$A$GT$$GT$4next17h702e84ab6094f771E"(ptr align 8 %iter1)
          to label %bb17 unwind label %cleanup5

bb17:                                             ; preds = %bb16
  %26 = extractvalue { i64, i64 } %25, 0
  %27 = extractvalue { i64, i64 } %25, 1
  store i64 %26, ptr %_23, align 8
  %28 = getelementptr inbounds i8, ptr %_23, i64 8
  store i64 %27, ptr %28, align 8
  %_25 = load i64, ptr %_23, align 8
  %29 = getelementptr inbounds i8, ptr %_23, i64 8
  %30 = load i64, ptr %29, align 8
  %31 = trunc nuw i64 %_25 to i1
  br i1 %31, label %bb18, label %bb19

bb18:                                             ; preds = %bb17
  %32 = getelementptr inbounds i8, ptr %_23, i64 8
  %L = load i64, ptr %32, align 8
; invoke <I as core::iter::traits::collect::IntoIterator>::into_iter
  %33 = invoke { i64, i64 } @"_ZN63_$LT$I$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17hb467940f48b7880dE"(i64 0, i64 %N)
          to label %bb20 unwind label %cleanup5

bb19:                                             ; preds = %bb17
; invoke <alloc::vec::Vec<T,A> as core::ops::index::Index<I>>::index
  %_94 = invoke align 8 ptr @"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h63155d91a9181c56E"(ptr align 8 %cps, i64 0, ptr align 8 @alloc_8ce85e97d646e96dc23fcb202c1e5c01)
          to label %bb57 unwind label %cleanup5

bb57:                                             ; preds = %bb19
  %_97.0 = sub i64 %N, 1
  %_97.1 = icmp ult i64 %N, 1
  br i1 %_97.1, label %panic6, label %bb58

bb58:                                             ; preds = %bb57
; invoke <alloc::vec::Vec<T,A> as core::ops::index::Index<I>>::index
  %_93 = invoke align 4 ptr @"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hc35846953b05fd34E"(ptr align 8 %_94, i64 %_97.0, ptr align 8 @alloc_d236b0242df7c5803f09a1e9b6ec0106)
          to label %bb59 unwind label %cleanup5

panic6:                                           ; preds = %bb57
; invoke core::panicking::panic_const::panic_const_sub_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_sub_overflow17h134cc1a7f93654deE(ptr align 8 @alloc_c5e07914f444190ae7907390ee47075c) #25
          to label %unreachable unwind label %cleanup5

bb59:                                             ; preds = %bb58
  %_0 = load i32, ptr %_93, align 4
; invoke core::ptr::drop_in_place<alloc::vec::Vec<alloc::vec::Vec<i32>>>
  invoke void @"_ZN4core3ptr70drop_in_place$LT$alloc..vec..Vec$LT$alloc..vec..Vec$LT$i32$GT$$GT$$GT$17hd3bef7cb221c7e2cE"(ptr align 8 %cps)
          to label %bb60 unwind label %cleanup

bb60:                                             ; preds = %bb59
; call core::ptr::drop_in_place<alloc::string::String>
  call void @"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17he38dc3e8ad247e78E"(ptr align 8 %str)
  ret i32 %_0

bb20:                                             ; preds = %bb18
  %_27.0 = extractvalue { i64, i64 } %33, 0
  %_27.1 = extractvalue { i64, i64 } %33, 1
  store i64 %_27.0, ptr %iter2, align 8
  %34 = getelementptr inbounds i8, ptr %iter2, i64 8
  store i64 %_27.1, ptr %34, align 8
  br label %bb21

bb21:                                             ; preds = %bb41, %bb56, %bb20
; invoke core::iter::range::<impl core::iter::traits::iterator::Iterator for core::ops::range::Range<A>>::next
  %35 = invoke { i64, i64 } @"_ZN4core4iter5range101_$LT$impl$u20$core..iter..traits..iterator..Iterator$u20$for$u20$core..ops..range..Range$LT$A$GT$$GT$4next17h54e3bf97a9857940E"(ptr align 8 %iter2)
          to label %bb22 unwind label %cleanup5

bb22:                                             ; preds = %bb21
  %36 = extractvalue { i64, i64 } %35, 0
  %37 = extractvalue { i64, i64 } %35, 1
  store i64 %36, ptr %_30, align 8
  %38 = getelementptr inbounds i8, ptr %_30, i64 8
  store i64 %37, ptr %38, align 8
  %_32 = load i64, ptr %_30, align 8
  %39 = getelementptr inbounds i8, ptr %_30, i64 8
  %40 = load i64, ptr %39, align 8
  %41 = trunc nuw i64 %_32 to i1
  br i1 %41, label %bb23, label %bb16

bb23:                                             ; preds = %bb22
  %42 = getelementptr inbounds i8, ptr %_30, i64 8
  %i = load i64, ptr %42, align 8
  %_36.0 = add i64 %L, %i
  %_36.1 = icmp ult i64 %_36.0, %L
  br i1 %_36.1, label %panic7, label %bb24

bb24:                                             ; preds = %bb23
  %_37.0 = sub i64 %_36.0, 1
  %_37.1 = icmp ult i64 %_36.0, 1
  br i1 %_37.1, label %panic8, label %bb25

panic7:                                           ; preds = %bb23
; invoke core::panicking::panic_const::panic_const_add_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_c879ac88c659f554381445c1b1ee25cb) #25
          to label %unreachable unwind label %cleanup5

bb25:                                             ; preds = %bb24
  %_43.0 = add i64 %i, 1
  %_43.1 = icmp ult i64 %_43.0, %i
  br i1 %_43.1, label %panic9, label %bb26

panic8:                                           ; preds = %bb24
; invoke core::panicking::panic_const::panic_const_sub_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_sub_overflow17h134cc1a7f93654deE(ptr align 8 @alloc_c879ac88c659f554381445c1b1ee25cb) #25
          to label %unreachable unwind label %cleanup5

bb26:                                             ; preds = %bb25
; invoke <alloc::string::String as core::ops::index::Index<I>>::index
  %43 = invoke { ptr, i64 } @"_ZN74_$LT$alloc..string..String$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h0c044039a1a94e08E"(ptr align 8 %str, i64 %i, i64 %_43.0, ptr align 8 @alloc_26afdd522f55b1e0eba86a1f9263dd5a)
          to label %bb27 unwind label %cleanup5

panic9:                                           ; preds = %bb25
; invoke core::panicking::panic_const::panic_const_add_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_6ba17e31ca2b60953bc3ac686ecdad0b) #25
          to label %unreachable unwind label %cleanup5

bb27:                                             ; preds = %bb26
  %_39.0 = extractvalue { ptr, i64 } %43, 0
  %_39.1 = extractvalue { ptr, i64 } %43, 1
  %_48.0 = add i64 %_37.0, 1
  %_48.1 = icmp ult i64 %_48.0, %_37.0
  br i1 %_48.1, label %panic10, label %bb28

bb28:                                             ; preds = %bb27
; invoke <alloc::string::String as core::ops::index::Index<I>>::index
  %44 = invoke { ptr, i64 } @"_ZN74_$LT$alloc..string..String$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h0c044039a1a94e08E"(ptr align 8 %str, i64 %_37.0, i64 %_48.0, ptr align 8 @alloc_6e7aa3ae607030d3a785625c1a237d9f)
          to label %bb29 unwind label %cleanup5

panic10:                                          ; preds = %bb27
; invoke core::panicking::panic_const::panic_const_add_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_5ae32df68e2f377e6a37ad446bb28587) #25
          to label %unreachable unwind label %cleanup5

bb29:                                             ; preds = %bb28
  %_44.0 = extractvalue { ptr, i64 } %44, 0
  %_44.1 = extractvalue { ptr, i64 } %44, 1
; invoke core::str::traits::<impl core::cmp::PartialEq for str>::eq
  %_38 = invoke zeroext i1 @"_ZN4core3str6traits54_$LT$impl$u20$core..cmp..PartialEq$u20$for$u20$str$GT$2eq17h209e669316eb0383E"(ptr align 1 %_39.0, i64 %_39.1, ptr align 1 %_44.0, i64 %_44.1)
          to label %bb30 unwind label %cleanup5

bb30:                                             ; preds = %bb29
  br i1 %_38, label %bb31, label %bb42

bb42:                                             ; preds = %bb30
; invoke <alloc::vec::Vec<T,A> as core::ops::index::Index<I>>::index
  %_70 = invoke align 8 ptr @"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h63155d91a9181c56E"(ptr align 8 %cps, i64 %i, ptr align 8 @alloc_de1499e29279aa925af3731188568020)
          to label %bb43 unwind label %cleanup5

bb31:                                             ; preds = %bb30
; invoke <alloc::vec::Vec<T,A> as core::ops::index::Index<I>>::index
  %_52 = invoke align 8 ptr @"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h63155d91a9181c56E"(ptr align 8 %cps, i64 %i, ptr align 8 @alloc_ed5a02914ad19a6a55b0ab93a8b24f75)
          to label %bb32 unwind label %cleanup5

bb43:                                             ; preds = %bb42
  %_73.0 = sub i64 %_37.0, 1
  %_73.1 = icmp ult i64 %_37.0, 1
  br i1 %_73.1, label %panic11, label %bb44

bb44:                                             ; preds = %bb43
; invoke <alloc::vec::Vec<T,A> as core::ops::index::Index<I>>::index
  %_69 = invoke align 4 ptr @"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hc35846953b05fd34E"(ptr align 8 %_70, i64 %_73.0, ptr align 8 @alloc_d4df6d254994bb3043a805c3828c52e3)
          to label %bb45 unwind label %cleanup5

panic11:                                          ; preds = %bb43
; invoke core::panicking::panic_const::panic_const_sub_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_sub_overflow17h134cc1a7f93654deE(ptr align 8 @alloc_510f8ca5ab32f989488745a7eca2b0cf) #25
          to label %unreachable unwind label %cleanup5

bb45:                                             ; preds = %bb44
  %_68 = load i32, ptr %_69, align 4
  %_79.0 = add i64 %i, 1
  %_79.1 = icmp ult i64 %_79.0, %i
  br i1 %_79.1, label %panic12, label %bb46

bb46:                                             ; preds = %bb45
; invoke <alloc::vec::Vec<T,A> as core::ops::index::Index<I>>::index
  %_76 = invoke align 8 ptr @"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h63155d91a9181c56E"(ptr align 8 %cps, i64 %_79.0, ptr align 8 @alloc_2119ae80cf6501eafd3d1cf294117eb1)
          to label %bb47 unwind label %cleanup5

panic12:                                          ; preds = %bb45
; invoke core::panicking::panic_const::panic_const_add_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_9393defe5d313804611abc0731fe14fb) #25
          to label %unreachable unwind label %cleanup5

bb47:                                             ; preds = %bb46
; invoke <alloc::vec::Vec<T,A> as core::ops::index::Index<I>>::index
  %_75 = invoke align 4 ptr @"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hc35846953b05fd34E"(ptr align 8 %_76, i64 %_37.0, ptr align 8 @alloc_16255c1547d82634905aebedaa0978a8)
          to label %bb48 unwind label %cleanup5

bb48:                                             ; preds = %bb47
  %_74 = load i32, ptr %_75, align 4
  %45 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %_68, i32 %_74)
  %_80.0 = extractvalue { i32, i1 } %45, 0
  %_80.1 = extractvalue { i32, i1 } %45, 1
  br i1 %_80.1, label %panic13, label %bb49

bb49:                                             ; preds = %bb48
  %_86.0 = add i64 %i, 1
  %_86.1 = icmp ult i64 %_86.0, %i
  br i1 %_86.1, label %panic14, label %bb50

panic13:                                          ; preds = %bb48
; invoke core::panicking::panic_const::panic_const_add_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_4964f32b28ccf0373c0f0b6e48a31f50) #25
          to label %unreachable unwind label %cleanup5

bb50:                                             ; preds = %bb49
; invoke <alloc::vec::Vec<T,A> as core::ops::index::Index<I>>::index
  %_83 = invoke align 8 ptr @"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h63155d91a9181c56E"(ptr align 8 %cps, i64 %_86.0, ptr align 8 @alloc_7270c7ca64ee85598aa1a8558527bb52)
          to label %bb51 unwind label %cleanup5

panic14:                                          ; preds = %bb49
; invoke core::panicking::panic_const::panic_const_add_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_08fa3f8cae61889feb5cdd71dd9b0143) #25
          to label %unreachable unwind label %cleanup5

bb51:                                             ; preds = %bb50
  %_88.0 = sub i64 %_37.0, 1
  %_88.1 = icmp ult i64 %_37.0, 1
  br i1 %_88.1, label %panic15, label %bb52

bb52:                                             ; preds = %bb51
; invoke <alloc::vec::Vec<T,A> as core::ops::index::Index<I>>::index
  %_82 = invoke align 4 ptr @"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hc35846953b05fd34E"(ptr align 8 %_83, i64 %_88.0, ptr align 8 @alloc_05e0b3f4033e5ab48795dae405be3b68)
          to label %bb53 unwind label %cleanup5

panic15:                                          ; preds = %bb51
; invoke core::panicking::panic_const::panic_const_sub_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_sub_overflow17h134cc1a7f93654deE(ptr align 8 @alloc_f17b99e3c0b61875274ddbea569c1a67) #25
          to label %unreachable unwind label %cleanup5

bb53:                                             ; preds = %bb52
  %_81 = load i32, ptr %_82, align 4
  %46 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %_80.0, i32 %_81)
  %_89.0 = extractvalue { i32, i1 } %46, 0
  %_89.1 = extractvalue { i32, i1 } %46, 1
  br i1 %_89.1, label %panic16, label %bb54

bb54:                                             ; preds = %bb53
; invoke <alloc::vec::Vec<T,A> as core::ops::index::IndexMut<I>>::index_mut
  %_91 = invoke align 8 ptr @"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h09b9639fedfc171aE"(ptr align 8 %cps, i64 %i, ptr align 8 @alloc_227ba38fdafd5557fb15b8ee4cc5d14f)
          to label %bb55 unwind label %cleanup5

panic16:                                          ; preds = %bb53
; invoke core::panicking::panic_const::panic_const_sub_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_sub_overflow17h134cc1a7f93654deE(ptr align 8 @alloc_4964f32b28ccf0373c0f0b6e48a31f50) #25
          to label %unreachable unwind label %cleanup5

bb55:                                             ; preds = %bb54
; invoke <alloc::vec::Vec<T,A> as core::ops::index::IndexMut<I>>::index_mut
  %_90 = invoke align 4 ptr @"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h83ae79df7f24641bE"(ptr align 8 %_91, i64 %_37.0, ptr align 8 @alloc_c1b99c8b01f4c49c71ca97df7d7400df)
          to label %bb56 unwind label %cleanup5

bb56:                                             ; preds = %bb55
  store i32 %_89.0, ptr %_90, align 4
  br label %bb21

bb32:                                             ; preds = %bb31
  %_55.0 = sub i64 %_37.0, 1
  %_55.1 = icmp ult i64 %_37.0, 1
  br i1 %_55.1, label %panic17, label %bb33

bb33:                                             ; preds = %bb32
; invoke <alloc::vec::Vec<T,A> as core::ops::index::Index<I>>::index
  %_51 = invoke align 4 ptr @"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hc35846953b05fd34E"(ptr align 8 %_52, i64 %_55.0, ptr align 8 @alloc_64422b2f142978549256c8b72bb77199)
          to label %bb34 unwind label %cleanup5

panic17:                                          ; preds = %bb32
; invoke core::panicking::panic_const::panic_const_sub_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_sub_overflow17h134cc1a7f93654deE(ptr align 8 @alloc_3ffc07616af380494ece1784777aadda) #25
          to label %unreachable unwind label %cleanup5

bb34:                                             ; preds = %bb33
  %_50 = load i32, ptr %_51, align 4
  %_61.0 = add i64 %i, 1
  %_61.1 = icmp ult i64 %_61.0, %i
  br i1 %_61.1, label %panic18, label %bb35

bb35:                                             ; preds = %bb34
; invoke <alloc::vec::Vec<T,A> as core::ops::index::Index<I>>::index
  %_58 = invoke align 8 ptr @"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h63155d91a9181c56E"(ptr align 8 %cps, i64 %_61.0, ptr align 8 @alloc_26c45d637ab9d102ba3aa3ed144a05e4)
          to label %bb36 unwind label %cleanup5

panic18:                                          ; preds = %bb34
; invoke core::panicking::panic_const::panic_const_add_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_9db450087561d2f6218429afee6e19b6) #25
          to label %unreachable unwind label %cleanup5

bb36:                                             ; preds = %bb35
; invoke <alloc::vec::Vec<T,A> as core::ops::index::Index<I>>::index
  %_57 = invoke align 4 ptr @"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hc35846953b05fd34E"(ptr align 8 %_58, i64 %_37.0, ptr align 8 @alloc_b1503b2cc08369785ac8374ef82ebf57)
          to label %bb37 unwind label %cleanup5

bb37:                                             ; preds = %bb36
  %_56 = load i32, ptr %_57, align 4
  %47 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %_50, i32 %_56)
  %_62.0 = extractvalue { i32, i1 } %47, 0
  %_62.1 = extractvalue { i32, i1 } %47, 1
  br i1 %_62.1, label %panic19, label %bb38

bb38:                                             ; preds = %bb37
  %48 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %_62.0, i32 1)
  %_63.0 = extractvalue { i32, i1 } %48, 0
  %_63.1 = extractvalue { i32, i1 } %48, 1
  br i1 %_63.1, label %panic20, label %bb39

panic19:                                          ; preds = %bb37
; invoke core::panicking::panic_const::panic_const_add_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_ebaa181482b97cb3568c45d0d390e9c1) #25
          to label %unreachable unwind label %cleanup5

bb39:                                             ; preds = %bb38
; invoke <alloc::vec::Vec<T,A> as core::ops::index::IndexMut<I>>::index_mut
  %_65 = invoke align 8 ptr @"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h09b9639fedfc171aE"(ptr align 8 %cps, i64 %i, ptr align 8 @alloc_28f7c281e850de9b368cc74b5dc2d970)
          to label %bb40 unwind label %cleanup5

panic20:                                          ; preds = %bb38
; invoke core::panicking::panic_const::panic_const_add_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_ebaa181482b97cb3568c45d0d390e9c1) #25
          to label %unreachable unwind label %cleanup5

bb40:                                             ; preds = %bb39
; invoke <alloc::vec::Vec<T,A> as core::ops::index::IndexMut<I>>::index_mut
  %_64 = invoke align 4 ptr @"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h83ae79df7f24641bE"(ptr align 8 %_65, i64 %_37.0, ptr align 8 @alloc_e836aa6bf5e61509e32ee53ca7c0ef3b)
          to label %bb41 unwind label %cleanup5

bb41:                                             ; preds = %bb40
  store i32 %_63.0, ptr %_64, align 4
  br label %bb21

bb12:                                             ; preds = %bb10
; invoke <alloc::vec::Vec<T,A> as core::ops::index::IndexMut<I>>::index_mut
  %_17 = invoke align 4 ptr @"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h83ae79df7f24641bE"(ptr align 8 %_18, i64 %i21, ptr align 8 @alloc_620dfc3b86741debbba8ca00006e8648)
          to label %bb13 unwind label %cleanup5

bb13:                                             ; preds = %bb12
  store i32 1, ptr %_17, align 4
  br label %bb7

bb9:                                              ; No predecessors!
  unreachable

terminate:                                        ; preds = %bb63, %bb65, %bb62
  %49 = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer
; call core::panicking::panic_in_cleanup
  call void @_ZN4core9panicking16panic_in_cleanup17h5f6bde45d17ae243E() #22
  unreachable

bb65:                                             ; preds = %bb66
; invoke core::ptr::drop_in_place<alloc::vec::Vec<i32>>
  invoke void @"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17hb14d39b51e809f9cE"(ptr align 8 %_5) #23
          to label %bb63 unwind label %terminate

bb64:                                             ; preds = %bb63
  %50 = load ptr, ptr %0, align 8
  %51 = getelementptr inbounds i8, ptr %0, i64 8
  %52 = load i32, ptr %51, align 8
  %53 = insertvalue { ptr, i32 } poison, ptr %50, 0
  %54 = insertvalue { ptr, i32 } %53, i32 %52, 1
  resume { ptr, i32 } %54
}

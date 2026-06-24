define i32 @f_gold(ptr align 4 %str.0, i64 %str.1) unnamed_addr #3 personality ptr @rust_eh_personality {
start:
  %0 = alloca [16 x i8], align 8
  %_96 = alloca [1 x i8], align 1
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
  store i8 0, ptr %_96, align 1
  %_7.0 = add i64 %str.1, 1
  %_7.1 = icmp ult i64 %_7.0, %str.1
  br i1 %_7.1, label %panic, label %bb1

bb1:                                              ; preds = %start
  store i8 1, ptr %_96, align 1
; call alloc::vec::from_elem
  call void @_ZN5alloc3vec9from_elem17hca758c718855457cE(ptr sret([24 x i8]) align 8 %_5, i32 0, i64 %_7.0)
  %_9.0 = add i64 %str.1, 1
  %_9.1 = icmp ult i64 %_9.0, %str.1
  br i1 %_9.1, label %panic3, label %bb3

panic:                                            ; preds = %start
; call core::panicking::panic_const::panic_const_add_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_fbeca1f49d22c41fc89c692cca7c4584) #23
  unreachable

bb3:                                              ; preds = %bb1
  store i8 0, ptr %_96, align 1
; invoke alloc::vec::from_elem
  invoke void @_ZN5alloc3vec9from_elem17ha199d610d9d51a1dE(ptr sret([24 x i8]) align 8 %cps, ptr align 8 %_5, i64 %_9.0)
          to label %bb4 unwind label %cleanup

panic3:                                           ; preds = %bb1
; invoke core::panicking::panic_const::panic_const_add_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_62b023d48f16a30062c0eebd49a8a713) #24
          to label %unreachable unwind label %cleanup

bb60:                                             ; preds = %cleanup
  %1 = load i8, ptr %_96, align 1
  %2 = trunc nuw i8 %1 to i1
  br i1 %2, label %bb59, label %bb58

cleanup:                                          ; preds = %bb3, %panic3
  %3 = landingpad { ptr, i32 }
          cleanup
  %4 = extractvalue { ptr, i32 } %3, 0
  %5 = extractvalue { ptr, i32 } %3, 1
  store ptr %4, ptr %0, align 8
  %6 = getelementptr inbounds i8, ptr %0, i64 8
  store i32 %5, ptr %6, align 8
  br label %bb60

unreachable:                                      ; preds = %panic19, %panic18, %panic17, %panic16, %panic15, %panic14, %panic13, %panic12, %panic11, %panic10, %panic9, %panic8, %panic7, %panic6, %panic5, %panic3
  unreachable

bb4:                                              ; preds = %bb3
  store i8 0, ptr %_96, align 1
; invoke <I as core::iter::traits::collect::IntoIterator>::into_iter
  %7 = invoke { i64, i64 } @"_ZN63_$LT$I$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17hb467940f48b7880dE"(i64 0, i64 %str.1)
          to label %bb5 unwind label %cleanup4

bb57:                                             ; preds = %cleanup4
; invoke core::ptr::drop_in_place<alloc::vec::Vec<alloc::vec::Vec<i32>>>
  invoke void @"_ZN4core3ptr70drop_in_place$LT$alloc..vec..Vec$LT$alloc..vec..Vec$LT$i32$GT$$GT$$GT$17hd3bef7cb221c7e2cE"(ptr align 8 %cps) #22
          to label %bb58 unwind label %terminate

cleanup4:                                         ; preds = %bb11, %bb9, %bb36, %bb35, %panic19, %panic18, %bb32, %bb31, %panic17, %bb29, %panic16, %bb27, %bb51, %bb50, %panic15, %bb48, %panic14, %bb46, %panic13, %panic12, %bb43, %bb42, %panic11, %bb40, %panic10, %bb38, %panic9, %panic8, %panic7, %panic6, %bb20, %bb17, %bb54, %panic5, %bb18, %bb15, %bb13, %bb10, %bb6, %bb4
  %8 = landingpad { ptr, i32 }
          cleanup
  %9 = extractvalue { ptr, i32 } %8, 0
  %10 = extractvalue { ptr, i32 } %8, 1
  store ptr %9, ptr %0, align 8
  %11 = getelementptr inbounds i8, ptr %0, i64 8
  store i32 %10, ptr %11, align 8
  br label %bb57

bb5:                                              ; preds = %bb4
  %_10.0 = extractvalue { i64, i64 } %7, 0
  %_10.1 = extractvalue { i64, i64 } %7, 1
  store i64 %_10.0, ptr %iter, align 8
  %12 = getelementptr inbounds i8, ptr %iter, i64 8
  store i64 %_10.1, ptr %12, align 8
  br label %bb6

bb6:                                              ; preds = %bb12, %bb5
; invoke core::iter::range::<impl core::iter::traits::iterator::Iterator for core::ops::range::Range<A>>::next
  %13 = invoke { i64, i64 } @"_ZN4core4iter5range101_$LT$impl$u20$core..iter..traits..iterator..Iterator$u20$for$u20$core..ops..range..Range$LT$A$GT$$GT$4next17h54e3bf97a9857940E"(ptr align 8 %iter)
          to label %bb7 unwind label %cleanup4

bb7:                                              ; preds = %bb6
  %14 = extractvalue { i64, i64 } %13, 0
  %15 = extractvalue { i64, i64 } %13, 1
  store i64 %14, ptr %_13, align 8
  %16 = getelementptr inbounds i8, ptr %_13, i64 8
  store i64 %15, ptr %16, align 8
  %_15 = load i64, ptr %_13, align 8
  %17 = getelementptr inbounds i8, ptr %_13, i64 8
  %18 = load i64, ptr %17, align 8
  %19 = trunc nuw i64 %_15 to i1
  br i1 %19, label %bb9, label %bb10

bb9:                                              ; preds = %bb7
  %20 = getelementptr inbounds i8, ptr %_13, i64 8
  %i20 = load i64, ptr %20, align 8
; invoke <alloc::vec::Vec<T,A> as core::ops::index::IndexMut<I>>::index_mut
  %_18 = invoke align 8 ptr @"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h09b9639fedfc171aE"(ptr align 8 %cps, i64 %i20, ptr align 8 @alloc_39d060508fad4987e6ae1b4d84e4d73a)
          to label %bb11 unwind label %cleanup4

bb10:                                             ; preds = %bb7
; invoke core::ops::range::RangeInclusive<Idx>::new
  invoke void @"_ZN4core3ops5range25RangeInclusive$LT$Idx$GT$3new17ha2f0701628e52082E"(ptr sret([24 x i8]) align 8 %_21, i64 2, i64 %str.1)
          to label %bb13 unwind label %cleanup4

bb13:                                             ; preds = %bb10
; invoke <I as core::iter::traits::collect::IntoIterator>::into_iter
  invoke void @"_ZN63_$LT$I$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17hf353d342faa44bdaE"(ptr sret([24 x i8]) align 8 %_20, ptr align 8 %_21)
          to label %bb14 unwind label %cleanup4

bb14:                                             ; preds = %bb13
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %iter1, ptr align 8 %_20, i64 24, i1 false)
  br label %bb15

bb15:                                             ; preds = %bb21, %bb14
; invoke core::iter::range::<impl core::iter::traits::iterator::Iterator for core::ops::range::RangeInclusive<A>>::next
  %21 = invoke { i64, i64 } @"_ZN4core4iter5range110_$LT$impl$u20$core..iter..traits..iterator..Iterator$u20$for$u20$core..ops..range..RangeInclusive$LT$A$GT$$GT$4next17h702e84ab6094f771E"(ptr align 8 %iter1)
          to label %bb16 unwind label %cleanup4

bb16:                                             ; preds = %bb15
  %22 = extractvalue { i64, i64 } %21, 0
  %23 = extractvalue { i64, i64 } %21, 1
  store i64 %22, ptr %_23, align 8
  %24 = getelementptr inbounds i8, ptr %_23, i64 8
  store i64 %23, ptr %24, align 8
  %_25 = load i64, ptr %_23, align 8
  %25 = getelementptr inbounds i8, ptr %_23, i64 8
  %26 = load i64, ptr %25, align 8
  %27 = trunc nuw i64 %_25 to i1
  br i1 %27, label %bb17, label %bb18

bb17:                                             ; preds = %bb16
  %28 = getelementptr inbounds i8, ptr %_23, i64 8
  %L = load i64, ptr %28, align 8
; invoke <I as core::iter::traits::collect::IntoIterator>::into_iter
  %29 = invoke { i64, i64 } @"_ZN63_$LT$I$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17hb467940f48b7880dE"(i64 0, i64 %str.1)
          to label %bb19 unwind label %cleanup4

bb18:                                             ; preds = %bb16
; invoke <alloc::vec::Vec<T,A> as core::ops::index::Index<I>>::index
  %_92 = invoke align 8 ptr @"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h63155d91a9181c56E"(ptr align 8 %cps, i64 0, ptr align 8 @alloc_7757919005380415a2994239c5bfd096)
          to label %bb53 unwind label %cleanup4

bb53:                                             ; preds = %bb18
  %_95.0 = sub i64 %str.1, 1
  %_95.1 = icmp ult i64 %str.1, 1
  br i1 %_95.1, label %panic5, label %bb54

bb54:                                             ; preds = %bb53
; invoke <alloc::vec::Vec<T,A> as core::ops::index::Index<I>>::index
  %_91 = invoke align 4 ptr @"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hc35846953b05fd34E"(ptr align 8 %_92, i64 %_95.0, ptr align 8 @alloc_46ee436f46c976fc67b0a4d604ef43d1)
          to label %bb55 unwind label %cleanup4

panic5:                                           ; preds = %bb53
; invoke core::panicking::panic_const::panic_const_sub_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_sub_overflow17h134cc1a7f93654deE(ptr align 8 @alloc_856758c189732fd072f8ac888ac1d76a) #24
          to label %unreachable unwind label %cleanup4

bb55:                                             ; preds = %bb54
  %_0 = load i32, ptr %_91, align 4
; call core::ptr::drop_in_place<alloc::vec::Vec<alloc::vec::Vec<i32>>>
  call void @"_ZN4core3ptr70drop_in_place$LT$alloc..vec..Vec$LT$alloc..vec..Vec$LT$i32$GT$$GT$$GT$17hd3bef7cb221c7e2cE"(ptr align 8 %cps)
  ret i32 %_0

bb19:                                             ; preds = %bb17
  %_27.0 = extractvalue { i64, i64 } %29, 0
  %_27.1 = extractvalue { i64, i64 } %29, 1
  store i64 %_27.0, ptr %iter2, align 8
  %30 = getelementptr inbounds i8, ptr %iter2, i64 8
  store i64 %_27.1, ptr %30, align 8
  br label %bb20

bb20:                                             ; preds = %bb37, %bb52, %bb19
; invoke core::iter::range::<impl core::iter::traits::iterator::Iterator for core::ops::range::Range<A>>::next
  %31 = invoke { i64, i64 } @"_ZN4core4iter5range101_$LT$impl$u20$core..iter..traits..iterator..Iterator$u20$for$u20$core..ops..range..Range$LT$A$GT$$GT$4next17h54e3bf97a9857940E"(ptr align 8 %iter2)
          to label %bb21 unwind label %cleanup4

bb21:                                             ; preds = %bb20
  %32 = extractvalue { i64, i64 } %31, 0
  %33 = extractvalue { i64, i64 } %31, 1
  store i64 %32, ptr %_30, align 8
  %34 = getelementptr inbounds i8, ptr %_30, i64 8
  store i64 %33, ptr %34, align 8
  %_32 = load i64, ptr %_30, align 8
  %35 = getelementptr inbounds i8, ptr %_30, i64 8
  %36 = load i64, ptr %35, align 8
  %37 = trunc nuw i64 %_32 to i1
  br i1 %37, label %bb22, label %bb15

bb22:                                             ; preds = %bb21
  %38 = getelementptr inbounds i8, ptr %_30, i64 8
  %i = load i64, ptr %38, align 8
  %_36.0 = add i64 %i, %L
  %_36.1 = icmp ult i64 %_36.0, %i
  br i1 %_36.1, label %panic6, label %bb23

bb23:                                             ; preds = %bb22
  %_37.0 = sub i64 %_36.0, 1
  %_37.1 = icmp ult i64 %_36.0, 1
  br i1 %_37.1, label %panic7, label %bb24

panic6:                                           ; preds = %bb22
; invoke core::panicking::panic_const::panic_const_add_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_6edaeaea848a31aa0bb61d5865f9a592) #24
          to label %unreachable unwind label %cleanup4

bb24:                                             ; preds = %bb23
  %_42 = icmp ult i64 %i, %str.1
  br i1 %_42, label %bb25, label %panic8

panic7:                                           ; preds = %bb23
; invoke core::panicking::panic_const::panic_const_sub_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_sub_overflow17h134cc1a7f93654deE(ptr align 8 @alloc_6edaeaea848a31aa0bb61d5865f9a592) #24
          to label %unreachable unwind label %cleanup4

bb25:                                             ; preds = %bb24
  %39 = getelementptr inbounds nuw i32, ptr %str.0, i64 %i
  %_39 = load i32, ptr %39, align 4
  %_46 = icmp ult i64 %_37.0, %str.1
  br i1 %_46, label %bb26, label %panic9

panic8:                                           ; preds = %bb24
; invoke core::panicking::panic_bounds_check
  invoke void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 %i, i64 %str.1, ptr align 8 @alloc_0155b8e5d55c00db668f026852c281cf) #24
          to label %unreachable unwind label %cleanup4

bb26:                                             ; preds = %bb25
  %40 = getelementptr inbounds nuw i32, ptr %str.0, i64 %_37.0
  %_43 = load i32, ptr %40, align 4
  %_38 = icmp eq i32 %_39, %_43
  br i1 %_38, label %bb27, label %bb38

panic9:                                           ; preds = %bb25
; invoke core::panicking::panic_bounds_check
  invoke void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 %_37.0, i64 %str.1, ptr align 8 @alloc_8d62c3ed1b9c03e4736c665d1f08cba9) #24
          to label %unreachable unwind label %cleanup4

bb38:                                             ; preds = %bb26
; invoke <alloc::vec::Vec<T,A> as core::ops::index::Index<I>>::index
  %_68 = invoke align 8 ptr @"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h63155d91a9181c56E"(ptr align 8 %cps, i64 %i, ptr align 8 @alloc_ddbaab3758c76bbf52bb001c18fac71e)
          to label %bb39 unwind label %cleanup4

bb27:                                             ; preds = %bb26
; invoke <alloc::vec::Vec<T,A> as core::ops::index::Index<I>>::index
  %_50 = invoke align 8 ptr @"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h63155d91a9181c56E"(ptr align 8 %cps, i64 %i, ptr align 8 @alloc_fdd581b7752f899207845c0846b8f4ad)
          to label %bb28 unwind label %cleanup4

bb39:                                             ; preds = %bb38
  %_71.0 = sub i64 %_37.0, 1
  %_71.1 = icmp ult i64 %_37.0, 1
  br i1 %_71.1, label %panic10, label %bb40

bb40:                                             ; preds = %bb39
; invoke <alloc::vec::Vec<T,A> as core::ops::index::Index<I>>::index
  %_67 = invoke align 4 ptr @"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hc35846953b05fd34E"(ptr align 8 %_68, i64 %_71.0, ptr align 8 @alloc_45ab111b335fee41c27fc106ffc2a4bf)
          to label %bb41 unwind label %cleanup4

panic10:                                          ; preds = %bb39
; invoke core::panicking::panic_const::panic_const_sub_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_sub_overflow17h134cc1a7f93654deE(ptr align 8 @alloc_6a84ee8c058c3d92f63439aeeeaa4e1c) #24
          to label %unreachable unwind label %cleanup4

bb41:                                             ; preds = %bb40
  %_66 = load i32, ptr %_67, align 4
  %_77.0 = add i64 %i, 1
  %_77.1 = icmp ult i64 %_77.0, %i
  br i1 %_77.1, label %panic11, label %bb42

bb42:                                             ; preds = %bb41
; invoke <alloc::vec::Vec<T,A> as core::ops::index::Index<I>>::index
  %_74 = invoke align 8 ptr @"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h63155d91a9181c56E"(ptr align 8 %cps, i64 %_77.0, ptr align 8 @alloc_bc26929688ac6821c503b2c406ead434)
          to label %bb43 unwind label %cleanup4

panic11:                                          ; preds = %bb41
; invoke core::panicking::panic_const::panic_const_add_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_206fa0999131101aeef9e64703043f87) #24
          to label %unreachable unwind label %cleanup4

bb43:                                             ; preds = %bb42
; invoke <alloc::vec::Vec<T,A> as core::ops::index::Index<I>>::index
  %_73 = invoke align 4 ptr @"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hc35846953b05fd34E"(ptr align 8 %_74, i64 %_37.0, ptr align 8 @alloc_09b67fd1095f97e7140e9fb1145c97db)
          to label %bb44 unwind label %cleanup4

bb44:                                             ; preds = %bb43
  %_72 = load i32, ptr %_73, align 4
  %41 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %_66, i32 %_72)
  %_78.0 = extractvalue { i32, i1 } %41, 0
  %_78.1 = extractvalue { i32, i1 } %41, 1
  br i1 %_78.1, label %panic12, label %bb45

bb45:                                             ; preds = %bb44
  %_84.0 = add i64 %i, 1
  %_84.1 = icmp ult i64 %_84.0, %i
  br i1 %_84.1, label %panic13, label %bb46

panic12:                                          ; preds = %bb44
; invoke core::panicking::panic_const::panic_const_add_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_b692dc8838c361ed3fbddbed9839e3d5) #24
          to label %unreachable unwind label %cleanup4

bb46:                                             ; preds = %bb45
; invoke <alloc::vec::Vec<T,A> as core::ops::index::Index<I>>::index
  %_81 = invoke align 8 ptr @"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h63155d91a9181c56E"(ptr align 8 %cps, i64 %_84.0, ptr align 8 @alloc_ebf956582db99f882b6d7e973af0d3d2)
          to label %bb47 unwind label %cleanup4

panic13:                                          ; preds = %bb45
; invoke core::panicking::panic_const::panic_const_add_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_5f53247dd90162b9192c779bb44f04bc) #24
          to label %unreachable unwind label %cleanup4

bb47:                                             ; preds = %bb46
  %_86.0 = sub i64 %_37.0, 1
  %_86.1 = icmp ult i64 %_37.0, 1
  br i1 %_86.1, label %panic14, label %bb48

bb48:                                             ; preds = %bb47
; invoke <alloc::vec::Vec<T,A> as core::ops::index::Index<I>>::index
  %_80 = invoke align 4 ptr @"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hc35846953b05fd34E"(ptr align 8 %_81, i64 %_86.0, ptr align 8 @alloc_484dcb8734abbbe5e0630690bd32d651)
          to label %bb49 unwind label %cleanup4

panic14:                                          ; preds = %bb47
; invoke core::panicking::panic_const::panic_const_sub_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_sub_overflow17h134cc1a7f93654deE(ptr align 8 @alloc_ac1f081f7d6d0caa3122e14c9eb1a37d) #24
          to label %unreachable unwind label %cleanup4

bb49:                                             ; preds = %bb48
  %_79 = load i32, ptr %_80, align 4
  %42 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %_78.0, i32 %_79)
  %_87.0 = extractvalue { i32, i1 } %42, 0
  %_87.1 = extractvalue { i32, i1 } %42, 1
  br i1 %_87.1, label %panic15, label %bb50

bb50:                                             ; preds = %bb49
; invoke <alloc::vec::Vec<T,A> as core::ops::index::IndexMut<I>>::index_mut
  %_89 = invoke align 8 ptr @"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h09b9639fedfc171aE"(ptr align 8 %cps, i64 %i, ptr align 8 @alloc_15e4ca7c236d68adb5e8653dd7bc5b30)
          to label %bb51 unwind label %cleanup4

panic15:                                          ; preds = %bb49
; invoke core::panicking::panic_const::panic_const_sub_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_sub_overflow17h134cc1a7f93654deE(ptr align 8 @alloc_b692dc8838c361ed3fbddbed9839e3d5) #24
          to label %unreachable unwind label %cleanup4

bb51:                                             ; preds = %bb50
; invoke <alloc::vec::Vec<T,A> as core::ops::index::IndexMut<I>>::index_mut
  %_88 = invoke align 4 ptr @"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h83ae79df7f24641bE"(ptr align 8 %_89, i64 %_37.0, ptr align 8 @alloc_5f0e2680551a901c69138b3cf21798c7)
          to label %bb52 unwind label %cleanup4

bb52:                                             ; preds = %bb51
  store i32 %_87.0, ptr %_88, align 4
  br label %bb20

bb28:                                             ; preds = %bb27
  %_53.0 = sub i64 %_37.0, 1
  %_53.1 = icmp ult i64 %_37.0, 1
  br i1 %_53.1, label %panic16, label %bb29

bb29:                                             ; preds = %bb28
; invoke <alloc::vec::Vec<T,A> as core::ops::index::Index<I>>::index
  %_49 = invoke align 4 ptr @"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hc35846953b05fd34E"(ptr align 8 %_50, i64 %_53.0, ptr align 8 @alloc_4011691a40a02c8eaa2d09fea6394e4a)
          to label %bb30 unwind label %cleanup4

panic16:                                          ; preds = %bb28
; invoke core::panicking::panic_const::panic_const_sub_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_sub_overflow17h134cc1a7f93654deE(ptr align 8 @alloc_818b100ca1cd05debe411b3dccff4c77) #24
          to label %unreachable unwind label %cleanup4

bb30:                                             ; preds = %bb29
  %_48 = load i32, ptr %_49, align 4
  %_59.0 = add i64 %i, 1
  %_59.1 = icmp ult i64 %_59.0, %i
  br i1 %_59.1, label %panic17, label %bb31

bb31:                                             ; preds = %bb30
; invoke <alloc::vec::Vec<T,A> as core::ops::index::Index<I>>::index
  %_56 = invoke align 8 ptr @"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h63155d91a9181c56E"(ptr align 8 %cps, i64 %_59.0, ptr align 8 @alloc_05e09818b122da61b4322d659cc98e74)
          to label %bb32 unwind label %cleanup4

panic17:                                          ; preds = %bb30
; invoke core::panicking::panic_const::panic_const_add_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_308b3d83365617fa1335fd2b4c0d293f) #24
          to label %unreachable unwind label %cleanup4

bb32:                                             ; preds = %bb31
; invoke <alloc::vec::Vec<T,A> as core::ops::index::Index<I>>::index
  %_55 = invoke align 4 ptr @"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hc35846953b05fd34E"(ptr align 8 %_56, i64 %_37.0, ptr align 8 @alloc_6add4e67cc9042309409da8fa897e2ef)
          to label %bb33 unwind label %cleanup4

bb33:                                             ; preds = %bb32
  %_54 = load i32, ptr %_55, align 4
  %43 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %_48, i32 %_54)
  %_60.0 = extractvalue { i32, i1 } %43, 0
  %_60.1 = extractvalue { i32, i1 } %43, 1
  br i1 %_60.1, label %panic18, label %bb34

bb34:                                             ; preds = %bb33
  %44 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %_60.0, i32 1)
  %_61.0 = extractvalue { i32, i1 } %44, 0
  %_61.1 = extractvalue { i32, i1 } %44, 1
  br i1 %_61.1, label %panic19, label %bb35

panic18:                                          ; preds = %bb33
; invoke core::panicking::panic_const::panic_const_add_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_4a018ae2b45d40888c267cae7c64c274) #24
          to label %unreachable unwind label %cleanup4

bb35:                                             ; preds = %bb34
; invoke <alloc::vec::Vec<T,A> as core::ops::index::IndexMut<I>>::index_mut
  %_63 = invoke align 8 ptr @"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h09b9639fedfc171aE"(ptr align 8 %cps, i64 %i, ptr align 8 @alloc_f7f5cede4b1fe59a2f91ec6c491ad21f)
          to label %bb36 unwind label %cleanup4

panic19:                                          ; preds = %bb34
; invoke core::panicking::panic_const::panic_const_add_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_4a018ae2b45d40888c267cae7c64c274) #24
          to label %unreachable unwind label %cleanup4

bb36:                                             ; preds = %bb35
; invoke <alloc::vec::Vec<T,A> as core::ops::index::IndexMut<I>>::index_mut
  %_62 = invoke align 4 ptr @"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h83ae79df7f24641bE"(ptr align 8 %_63, i64 %_37.0, ptr align 8 @alloc_188a750156dd86e4a285feb4f91107b6)
          to label %bb37 unwind label %cleanup4

bb37:                                             ; preds = %bb36
  store i32 %_61.0, ptr %_62, align 4
  br label %bb20

bb11:                                             ; preds = %bb9
; invoke <alloc::vec::Vec<T,A> as core::ops::index::IndexMut<I>>::index_mut
  %_17 = invoke align 4 ptr @"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h83ae79df7f24641bE"(ptr align 8 %_18, i64 %i20, ptr align 8 @alloc_ce51f17b63fd60f37175c288e59c261c)
          to label %bb12 unwind label %cleanup4

bb12:                                             ; preds = %bb11
  store i32 1, ptr %_17, align 4
  br label %bb6

bb8:                                              ; No predecessors!
  unreachable

terminate:                                        ; preds = %bb59, %bb57
  %45 = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer
; call core::panicking::panic_in_cleanup
  call void @_ZN4core9panicking16panic_in_cleanup17h5f6bde45d17ae243E() #21
  unreachable

bb58:                                             ; preds = %bb59, %bb60, %bb57
  %46 = load ptr, ptr %0, align 8
  %47 = getelementptr inbounds i8, ptr %0, i64 8
  %48 = load i32, ptr %47, align 8
  %49 = insertvalue { ptr, i32 } poison, ptr %46, 0
  %50 = insertvalue { ptr, i32 } %49, i32 %48, 1
  resume { ptr, i32 } %50

bb59:                                             ; preds = %bb60
; invoke core::ptr::drop_in_place<alloc::vec::Vec<i32>>
  invoke void @"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17hb14d39b51e809f9cE"(ptr align 8 %_5) #22
          to label %bb58 unwind label %terminate
}

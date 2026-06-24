define i32 @f_gold(ptr align 8 %str) unnamed_addr #3 personality ptr @rust_eh_personality {
start:
  %0 = alloca [16 x i8], align 8
  %_118 = alloca [1 x i8], align 1
  %_109 = alloca [16 x i8], align 8
  %iter3 = alloca [24 x i8], align 8
  %_107 = alloca [24 x i8], align 8
  %_106 = alloca [24 x i8], align 8
  %_44 = alloca [16 x i8], align 8
  %iter2 = alloca [16 x i8], align 8
  %_29 = alloca [16 x i8], align 8
  %iter1 = alloca [24 x i8], align 8
  %_27 = alloca [24 x i8], align 8
  %_26 = alloca [24 x i8], align 8
  %_13 = alloca [16 x i8], align 8
  %iter = alloca [24 x i8], align 8
  %_11 = alloca [24 x i8], align 8
  %_10 = alloca [24 x i8], align 8
  %arr = alloca [24 x i8], align 8
  %_4 = alloca [24 x i8], align 8
  %dp = alloca [24 x i8], align 8
  %_0 = alloca [4 x i8], align 4
  store i8 0, ptr %_118, align 1
; call alloc::vec::Vec<T,A>::len
  %n = call i64 @"_ZN5alloc3vec16Vec$LT$T$C$A$GT$3len17hf671681b291fe5daE"(ptr align 8 %str) #18
  store i8 1, ptr %_118, align 1
; call alloc::vec::from_elem
  call void @_ZN5alloc3vec9from_elem17hdad675b30dc97c29E(ptr sret([24 x i8]) align 8 %_4, i32 0, i64 10)
  %_6.0 = add i64 %n, 1
  %_6.1 = icmp ult i64 %_6.0, %n
  br i1 %_6.1, label %panic, label %bb3

bb3:                                              ; preds = %start
  store i8 0, ptr %_118, align 1
; invoke alloc::vec::from_elem
  invoke void @_ZN5alloc3vec9from_elem17hc82b41ae6e8c2a02E(ptr sret([24 x i8]) align 8 %dp, ptr align 8 %_4, i64 %_6.0)
          to label %bb4 unwind label %cleanup

panic:                                            ; preds = %start
; invoke core::panicking::panic_const::panic_const_add_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_c8006592066d788d32393cff2d39e82c) #24
          to label %unreachable unwind label %cleanup

bb79:                                             ; preds = %cleanup
  %1 = load i8, ptr %_118, align 1
  %2 = trunc nuw i8 %1 to i1
  br i1 %2, label %bb78, label %bb77

cleanup:                                          ; preds = %bb3, %panic
  %3 = landingpad { ptr, i32 }
          cleanup
  %4 = extractvalue { ptr, i32 } %3, 0
  %5 = extractvalue { ptr, i32 } %3, 1
  store ptr %4, ptr %0, align 8
  %6 = getelementptr inbounds i8, ptr %0, i64 8
  store i32 %5, ptr %6, align 8
  br label %bb79

unreachable:                                      ; preds = %panic18, %panic17, %panic15, %panic14, %panic13, %panic12, %panic11, %panic10, %panic9, %panic8, %panic4, %panic
  unreachable

bb4:                                              ; preds = %bb3
  store i8 0, ptr %_118, align 1
  %_9.0 = add i64 %n, 1
  %_9.1 = icmp ult i64 %_9.0, %n
  br i1 %_9.1, label %panic4, label %bb5

bb5:                                              ; preds = %bb4
; invoke alloc::vec::from_elem
  invoke void @_ZN5alloc3vec9from_elem17h5cc9103268e52c0bE(ptr sret([24 x i8]) align 8 %arr, i64 0, i64 %_9.0)
          to label %bb6 unwind label %cleanup5

panic4:                                           ; preds = %bb4
; invoke core::panicking::panic_const::panic_const_add_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_d3bd0ad46316881071b74dc0196d6e0b) #24
          to label %unreachable unwind label %cleanup5

bb76:                                             ; preds = %bb75, %cleanup5
; invoke core::ptr::drop_in_place<alloc::vec::Vec<alloc::vec::Vec<i32>>>
  invoke void @"_ZN4core3ptr70drop_in_place$LT$alloc..vec..Vec$LT$alloc..vec..Vec$LT$i32$GT$$GT$$GT$17hef1019e3ac01ef99E"(ptr align 8 %dp) #22
          to label %bb77 unwind label %terminate

cleanup5:                                         ; preds = %bb71, %bb68, %bb5, %panic4
  %7 = landingpad { ptr, i32 }
          cleanup
  %8 = extractvalue { ptr, i32 } %7, 0
  %9 = extractvalue { ptr, i32 } %7, 1
  store ptr %8, ptr %0, align 8
  %10 = getelementptr inbounds i8, ptr %0, i64 8
  store i32 %9, ptr %10, align 8
  br label %bb76

bb6:                                              ; preds = %bb5
; invoke core::ops::range::RangeInclusive<Idx>::new
  invoke void @"_ZN4core3ops5range25RangeInclusive$LT$Idx$GT$3new17hdf8dcff67f3bf70fE"(ptr sret([24 x i8]) align 8 %_11, i64 1, i64 %n)
          to label %bb7 unwind label %cleanup6

bb75:                                             ; preds = %cleanup6
; invoke core::ptr::drop_in_place<alloc::vec::Vec<usize>>
  invoke void @"_ZN4core3ptr49drop_in_place$LT$alloc..vec..Vec$LT$usize$GT$$GT$17h4959bfb8b537e796E"(ptr align 8 %arr) #22
          to label %bb76 unwind label %terminate

cleanup6:                                         ; preds = %bb16, %panic18, %bb14, %panic17, %bb61, %bb60, %bb59, %bb58, %panic15, %bb55, %bb54, %bb53, %bb52, %panic14, %bb49, %panic13, %bb46, %panic12, %bb44, %bb43, %bb42, %panic11, %bb39, %panic10, %bb36, %panic9, %bb34, %bb33, %bb32, %panic8, %bb29, %bb27, %bb26, %bb24, %bb22, %bb69, %bb67, %bb65, %bb63, %bb23, %bb20, %bb18, %bb13, %bb9, %bb7, %bb6
  %11 = landingpad { ptr, i32 }
          cleanup
  %12 = extractvalue { ptr, i32 } %11, 0
  %13 = extractvalue { ptr, i32 } %11, 1
  store ptr %12, ptr %0, align 8
  %14 = getelementptr inbounds i8, ptr %0, i64 8
  store i32 %13, ptr %14, align 8
  br label %bb75

bb7:                                              ; preds = %bb6
; invoke <I as core::iter::traits::collect::IntoIterator>::into_iter
  invoke void @"_ZN63_$LT$I$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17h836923c9c7cd97d9E"(ptr sret([24 x i8]) align 8 %_10, ptr align 8 %_11)
          to label %bb8 unwind label %cleanup6

bb8:                                              ; preds = %bb7
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %iter, ptr align 8 %_10, i64 24, i1 false)
  br label %bb9

bb9:                                              ; preds = %bb17, %bb8
; invoke core::iter::range::<impl core::iter::traits::iterator::Iterator for core::ops::range::RangeInclusive<A>>::next
  %15 = invoke { i64, i64 } @"_ZN4core4iter5range110_$LT$impl$u20$core..iter..traits..iterator..Iterator$u20$for$u20$core..ops..range..RangeInclusive$LT$A$GT$$GT$4next17h942bb423049ca53eE"(ptr align 8 %iter)
          to label %bb10 unwind label %cleanup6

bb10:                                             ; preds = %bb9
  %16 = extractvalue { i64, i64 } %15, 0
  %17 = extractvalue { i64, i64 } %15, 1
  store i64 %16, ptr %_13, align 8
  %18 = getelementptr inbounds i8, ptr %_13, i64 8
  store i64 %17, ptr %18, align 8
  %_15 = load i64, ptr %_13, align 8
  %19 = getelementptr inbounds i8, ptr %_13, i64 8
  %20 = load i64, ptr %19, align 8
  %21 = trunc nuw i64 %_15 to i1
  br i1 %21, label %bb12, label %bb13

bb12:                                             ; preds = %bb10
  %22 = getelementptr inbounds i8, ptr %_13, i64 8
  %i16 = load i64, ptr %22, align 8
  %_22.0 = sub i64 %i16, 1
  %_22.1 = icmp ult i64 %i16, 1
  br i1 %_22.1, label %panic17, label %bb14

bb13:                                             ; preds = %bb10
; invoke core::ops::range::RangeInclusive<Idx>::new
  invoke void @"_ZN4core3ops5range25RangeInclusive$LT$Idx$GT$3new17hdf8dcff67f3bf70fE"(ptr sret([24 x i8]) align 8 %_27, i64 1, i64 %n)
          to label %bb18 unwind label %cleanup6

bb18:                                             ; preds = %bb13
; invoke <I as core::iter::traits::collect::IntoIterator>::into_iter
  invoke void @"_ZN63_$LT$I$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17h836923c9c7cd97d9E"(ptr sret([24 x i8]) align 8 %_26, ptr align 8 %_27)
          to label %bb19 unwind label %cleanup6

bb19:                                             ; preds = %bb18
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %iter1, ptr align 8 %_26, i64 24, i1 false)
  br label %bb20

bb20:                                             ; preds = %bb30, %bb19
; invoke core::iter::range::<impl core::iter::traits::iterator::Iterator for core::ops::range::RangeInclusive<A>>::next
  %23 = invoke { i64, i64 } @"_ZN4core4iter5range110_$LT$impl$u20$core..iter..traits..iterator..Iterator$u20$for$u20$core..ops..range..RangeInclusive$LT$A$GT$$GT$4next17h942bb423049ca53eE"(ptr align 8 %iter1)
          to label %bb21 unwind label %cleanup6

bb21:                                             ; preds = %bb20
  %24 = extractvalue { i64, i64 } %23, 0
  %25 = extractvalue { i64, i64 } %23, 1
  store i64 %24, ptr %_29, align 8
  %26 = getelementptr inbounds i8, ptr %_29, i64 8
  store i64 %25, ptr %26, align 8
  %_31 = load i64, ptr %_29, align 8
  %27 = getelementptr inbounds i8, ptr %_29, i64 8
  %28 = load i64, ptr %27, align 8
  %29 = trunc nuw i64 %_31 to i1
  br i1 %29, label %bb22, label %bb23

bb22:                                             ; preds = %bb21
  %30 = getelementptr inbounds i8, ptr %_29, i64 8
  %i7 = load i64, ptr %30, align 8
; invoke <alloc::vec::Vec<T,A> as core::ops::index::IndexMut<I>>::index_mut
  %_34 = invoke align 8 ptr @"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h32bddd7abb57d56dE"(ptr align 8 %dp, i64 %i7, ptr align 8 @alloc_c5ab3d61f63e18c03ee982f52b98d981)
          to label %bb24 unwind label %cleanup6

bb23:                                             ; preds = %bb21
; invoke core::ops::range::RangeInclusive<Idx>::new
  invoke void @"_ZN4core3ops5range25RangeInclusive$LT$Idx$GT$3new17hdf8dcff67f3bf70fE"(ptr sret([24 x i8]) align 8 %_107, i64 1, i64 %n)
          to label %bb63 unwind label %cleanup6

bb63:                                             ; preds = %bb23
; invoke <I as core::iter::traits::collect::IntoIterator>::into_iter
  invoke void @"_ZN63_$LT$I$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17h836923c9c7cd97d9E"(ptr sret([24 x i8]) align 8 %_106, ptr align 8 %_107)
          to label %bb64 unwind label %cleanup6

bb64:                                             ; preds = %bb63
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %iter3, ptr align 8 %_106, i64 24, i1 false)
  br label %bb65

bb65:                                             ; preds = %bb70, %bb64
; invoke core::iter::range::<impl core::iter::traits::iterator::Iterator for core::ops::range::RangeInclusive<A>>::next
  %31 = invoke { i64, i64 } @"_ZN4core4iter5range110_$LT$impl$u20$core..iter..traits..iterator..Iterator$u20$for$u20$core..ops..range..RangeInclusive$LT$A$GT$$GT$4next17h942bb423049ca53eE"(ptr align 8 %iter3)
          to label %bb66 unwind label %cleanup6

bb66:                                             ; preds = %bb65
  %32 = extractvalue { i64, i64 } %31, 0
  %33 = extractvalue { i64, i64 } %31, 1
  store i64 %32, ptr %_109, align 8
  %34 = getelementptr inbounds i8, ptr %_109, i64 8
  store i64 %33, ptr %34, align 8
  %_111 = load i64, ptr %_109, align 8
  %35 = getelementptr inbounds i8, ptr %_109, i64 8
  %36 = load i64, ptr %35, align 8
  %37 = trunc nuw i64 %_111 to i1
  br i1 %37, label %bb67, label %bb68

bb67:                                             ; preds = %bb66
  %38 = getelementptr inbounds i8, ptr %_109, i64 8
  %i = load i64, ptr %38, align 8
; invoke <alloc::vec::Vec<T,A> as core::ops::index::Index<I>>::index
  %_116 = invoke align 8 ptr @"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h9c955c58406a343bE"(ptr align 8 %dp, i64 %i, ptr align 8 @alloc_68915adc29673af60cd1b7c232cd0c53)
          to label %bb69 unwind label %cleanup6

bb68:                                             ; preds = %bb66
  store i32 0, ptr %_0, align 4
; invoke core::ptr::drop_in_place<alloc::vec::Vec<usize>>
  invoke void @"_ZN4core3ptr49drop_in_place$LT$alloc..vec..Vec$LT$usize$GT$$GT$17h4959bfb8b537e796E"(ptr align 8 %arr)
          to label %bb72 unwind label %cleanup5

bb72:                                             ; preds = %bb68
; call core::ptr::drop_in_place<alloc::vec::Vec<alloc::vec::Vec<i32>>>
  call void @"_ZN4core3ptr70drop_in_place$LT$alloc..vec..Vec$LT$alloc..vec..Vec$LT$i32$GT$$GT$$GT$17hef1019e3ac01ef99E"(ptr align 8 %dp)
  br label %bb74

bb74:                                             ; preds = %bb73, %bb72
  %39 = load i32, ptr %_0, align 4
  ret i32 %39

bb69:                                             ; preds = %bb67
; invoke <alloc::vec::Vec<T,A> as core::ops::index::Index<I>>::index
  %_115 = invoke align 4 ptr @"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h3d0e2af110850d42E"(ptr align 8 %_116, i64 0, ptr align 8 @alloc_0247985fb93dcac774066f58ab497f53)
          to label %bb70 unwind label %cleanup6

bb70:                                             ; preds = %bb69
  %_114 = load i32, ptr %_115, align 4
  %_113 = icmp eq i32 %_114, 1
  br i1 %_113, label %bb71, label %bb65

bb71:                                             ; preds = %bb70
  store i32 1, ptr %_0, align 4
; invoke core::ptr::drop_in_place<alloc::vec::Vec<usize>>
  invoke void @"_ZN4core3ptr49drop_in_place$LT$alloc..vec..Vec$LT$usize$GT$$GT$17h4959bfb8b537e796E"(ptr align 8 %arr)
          to label %bb73 unwind label %cleanup5

bb73:                                             ; preds = %bb71
; call core::ptr::drop_in_place<alloc::vec::Vec<alloc::vec::Vec<i32>>>
  call void @"_ZN4core3ptr70drop_in_place$LT$alloc..vec..Vec$LT$alloc..vec..Vec$LT$i32$GT$$GT$$GT$17hef1019e3ac01ef99E"(ptr align 8 %dp)
  br label %bb74

bb24:                                             ; preds = %bb22
; invoke <alloc::vec::Vec<T,A> as core::ops::index::Index<I>>::index
  %_38 = invoke align 8 ptr @"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h93f388fead8c542eE"(ptr align 8 %arr, i64 %i7, ptr align 8 @alloc_11c2c7745a712df5bf8723ae019f7881)
          to label %bb25 unwind label %cleanup6

bb25:                                             ; preds = %bb24
  %_37 = load i64, ptr %_38, align 8
  br label %bb26

bb26:                                             ; preds = %bb25
  %_36 = urem i64 %_37, 8
; invoke <alloc::vec::Vec<T,A> as core::ops::index::IndexMut<I>>::index_mut
  %_33 = invoke align 4 ptr @"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17hb194f373c215fb35E"(ptr align 8 %_34, i64 %_36, ptr align 8 @alloc_c01585be3ddb7e9645f35c751a7dd173)
          to label %bb27 unwind label %cleanup6

bb27:                                             ; preds = %bb26
  store i32 1, ptr %_33, align 4
; invoke <I as core::iter::traits::collect::IntoIterator>::into_iter
  %40 = invoke { i64, i64 } @"_ZN63_$LT$I$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17h3b30c312cd7a579aE"(i64 0, i64 8)
          to label %bb28 unwind label %cleanup6

bb28:                                             ; preds = %bb27
  %_41.0 = extractvalue { i64, i64 } %40, 0
  %_41.1 = extractvalue { i64, i64 } %40, 1
  store i64 %_41.0, ptr %iter2, align 8
  %41 = getelementptr inbounds i8, ptr %iter2, i64 8
  store i64 %_41.1, ptr %41, align 8
  br label %bb29

bb29:                                             ; preds = %bb62, %bb56, %bb28
; invoke core::iter::range::<impl core::iter::traits::iterator::Iterator for core::ops::range::Range<A>>::next
  %42 = invoke { i64, i64 } @"_ZN4core4iter5range101_$LT$impl$u20$core..iter..traits..iterator..Iterator$u20$for$u20$core..ops..range..Range$LT$A$GT$$GT$4next17h22d361263fc1dadcE"(ptr align 8 %iter2)
          to label %bb30 unwind label %cleanup6

bb30:                                             ; preds = %bb29
  %43 = extractvalue { i64, i64 } %42, 0
  %44 = extractvalue { i64, i64 } %42, 1
  store i64 %43, ptr %_44, align 8
  %45 = getelementptr inbounds i8, ptr %_44, i64 8
  store i64 %44, ptr %45, align 8
  %_46 = load i64, ptr %_44, align 8
  %46 = getelementptr inbounds i8, ptr %_44, i64 8
  %47 = load i64, ptr %46, align 8
  %48 = trunc nuw i64 %_46 to i1
  br i1 %48, label %bb31, label %bb20

bb31:                                             ; preds = %bb30
  %49 = getelementptr inbounds i8, ptr %_44, i64 8
  %j = load i64, ptr %49, align 8
  %_54.0 = sub i64 %i7, 1
  %_54.1 = icmp ult i64 %i7, 1
  br i1 %_54.1, label %panic8, label %bb32

bb32:                                             ; preds = %bb31
; invoke <alloc::vec::Vec<T,A> as core::ops::index::Index<I>>::index
  %_51 = invoke align 8 ptr @"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h9c955c58406a343bE"(ptr align 8 %dp, i64 %_54.0, ptr align 8 @alloc_afbc525cd8f46a2cfd07f14ac35c3a07)
          to label %bb33 unwind label %cleanup6

panic8:                                           ; preds = %bb31
; invoke core::panicking::panic_const::panic_const_sub_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_sub_overflow17h134cc1a7f93654deE(ptr align 8 @alloc_268bb82c6de8383f8b6e5f38046895c7) #24
          to label %unreachable unwind label %cleanup6

bb33:                                             ; preds = %bb32
; invoke <alloc::vec::Vec<T,A> as core::ops::index::Index<I>>::index
  %_50 = invoke align 4 ptr @"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h3d0e2af110850d42E"(ptr align 8 %_51, i64 %j, ptr align 8 @alloc_e600f6843e939b10d87254da1c0ab437)
          to label %bb34 unwind label %cleanup6

bb34:                                             ; preds = %bb33
  %_49 = load i32, ptr %_50, align 4
; invoke <alloc::vec::Vec<T,A> as core::ops::index::Index<I>>::index
  %_57 = invoke align 8 ptr @"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h9c955c58406a343bE"(ptr align 8 %dp, i64 %i7, ptr align 8 @alloc_b866ff4b4051ca0d7f4fbd6594544a5c)
          to label %bb35 unwind label %cleanup6

bb35:                                             ; preds = %bb34
  %50 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %j, i64 10)
  %_62.0 = extractvalue { i64, i1 } %50, 0
  %_62.1 = extractvalue { i64, i1 } %50, 1
  br i1 %_62.1, label %panic9, label %bb36

bb36:                                             ; preds = %bb35
; invoke <alloc::vec::Vec<T,A> as core::ops::index::Index<I>>::index
  %_64 = invoke align 8 ptr @"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h93f388fead8c542eE"(ptr align 8 %arr, i64 %i7, ptr align 8 @alloc_3f9435ad1d1fcc67bfd7365e425a6717)
          to label %bb37 unwind label %cleanup6

panic9:                                           ; preds = %bb35
; invoke core::panicking::panic_const::panic_const_mul_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_mul_overflow17h554ac164c12099f8E(ptr align 8 @alloc_8460688525ff200ee2bd2589886183dd) #24
          to label %unreachable unwind label %cleanup6

bb37:                                             ; preds = %bb36
  %_63 = load i64, ptr %_64, align 8
  %_66.0 = add i64 %_62.0, %_63
  %_66.1 = icmp ult i64 %_66.0, %_62.0
  br i1 %_66.1, label %panic10, label %bb38

bb38:                                             ; preds = %bb37
  br label %bb39

panic10:                                          ; preds = %bb37
; invoke core::panicking::panic_const::panic_const_add_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_4642f3d4774a205d5a53ecf4ae43bbe2) #24
          to label %unreachable unwind label %cleanup6

bb39:                                             ; preds = %bb38
  %_59 = urem i64 %_66.0, 8
; invoke <alloc::vec::Vec<T,A> as core::ops::index::Index<I>>::index
  %_56 = invoke align 4 ptr @"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h3d0e2af110850d42E"(ptr align 8 %_57, i64 %_59, ptr align 8 @alloc_b40cba54fe857c28368b061b9248cff0)
          to label %bb40 unwind label %cleanup6

bb40:                                             ; preds = %bb39
  %_55 = load i32, ptr %_56, align 4
  %_48 = icmp sgt i32 %_49, %_55
  br i1 %_48, label %bb41, label %bb51

bb51:                                             ; preds = %bb50, %bb40
  %_92.0 = sub i64 %i7, 1
  %_92.1 = icmp ult i64 %i7, 1
  br i1 %_92.1, label %panic14, label %bb52

bb41:                                             ; preds = %bb40
  %_73.0 = sub i64 %i7, 1
  %_73.1 = icmp ult i64 %i7, 1
  br i1 %_73.1, label %panic11, label %bb42

bb42:                                             ; preds = %bb41
; invoke <alloc::vec::Vec<T,A> as core::ops::index::Index<I>>::index
  %_70 = invoke align 8 ptr @"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h9c955c58406a343bE"(ptr align 8 %dp, i64 %_73.0, ptr align 8 @alloc_22109e28abfe2ae68981f138783e5ba6)
          to label %bb43 unwind label %cleanup6

panic11:                                          ; preds = %bb41
; invoke core::panicking::panic_const::panic_const_sub_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_sub_overflow17h134cc1a7f93654deE(ptr align 8 @alloc_a601b2053f8f7a7649145e86cd50852b) #24
          to label %unreachable unwind label %cleanup6

bb43:                                             ; preds = %bb42
; invoke <alloc::vec::Vec<T,A> as core::ops::index::Index<I>>::index
  %_69 = invoke align 4 ptr @"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h3d0e2af110850d42E"(ptr align 8 %_70, i64 %j, ptr align 8 @alloc_7fbde0f589a2eea61dacd13721141c80)
          to label %bb44 unwind label %cleanup6

bb44:                                             ; preds = %bb43
  %_68 = load i32, ptr %_69, align 4
; invoke <alloc::vec::Vec<T,A> as core::ops::index::IndexMut<I>>::index_mut
  %_75 = invoke align 8 ptr @"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h32bddd7abb57d56dE"(ptr align 8 %dp, i64 %i7, ptr align 8 @alloc_acb400c581711efeeff6e00c5b6d175c)
          to label %bb45 unwind label %cleanup6

bb45:                                             ; preds = %bb44
  %51 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %j, i64 10)
  %_80.0 = extractvalue { i64, i1 } %51, 0
  %_80.1 = extractvalue { i64, i1 } %51, 1
  br i1 %_80.1, label %panic12, label %bb46

bb46:                                             ; preds = %bb45
; invoke <alloc::vec::Vec<T,A> as core::ops::index::Index<I>>::index
  %_82 = invoke align 8 ptr @"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h93f388fead8c542eE"(ptr align 8 %arr, i64 %i7, ptr align 8 @alloc_b7746c7f8bd9e462881756a31ce3efc2)
          to label %bb47 unwind label %cleanup6

panic12:                                          ; preds = %bb45
; invoke core::panicking::panic_const::panic_const_mul_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_mul_overflow17h554ac164c12099f8E(ptr align 8 @alloc_3e13cd138264c38a172118783d956de4) #24
          to label %unreachable unwind label %cleanup6

bb47:                                             ; preds = %bb46
  %_81 = load i64, ptr %_82, align 8
  %_84.0 = add i64 %_80.0, %_81
  %_84.1 = icmp ult i64 %_84.0, %_80.0
  br i1 %_84.1, label %panic13, label %bb48

bb48:                                             ; preds = %bb47
  br label %bb49

panic13:                                          ; preds = %bb47
; invoke core::panicking::panic_const::panic_const_add_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_ef3d4dc4168dcca1ff703bd577fd847e) #24
          to label %unreachable unwind label %cleanup6

bb49:                                             ; preds = %bb48
  %_77 = urem i64 %_84.0, 8
; invoke <alloc::vec::Vec<T,A> as core::ops::index::IndexMut<I>>::index_mut
  %_74 = invoke align 4 ptr @"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17hb194f373c215fb35E"(ptr align 8 %_75, i64 %_77, ptr align 8 @alloc_cf8579d7792473d8a94e108800d6bae3)
          to label %bb50 unwind label %cleanup6

bb50:                                             ; preds = %bb49
  store i32 %_68, ptr %_74, align 4
  br label %bb51

bb52:                                             ; preds = %bb51
; invoke <alloc::vec::Vec<T,A> as core::ops::index::Index<I>>::index
  %_89 = invoke align 8 ptr @"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h9c955c58406a343bE"(ptr align 8 %dp, i64 %_92.0, ptr align 8 @alloc_ad5c145452d2443fb24703508e1532bb)
          to label %bb53 unwind label %cleanup6

panic14:                                          ; preds = %bb51
; invoke core::panicking::panic_const::panic_const_sub_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_sub_overflow17h134cc1a7f93654deE(ptr align 8 @alloc_d2900f74ac014159b8766f4291c603f3) #24
          to label %unreachable unwind label %cleanup6

bb53:                                             ; preds = %bb52
; invoke <alloc::vec::Vec<T,A> as core::ops::index::Index<I>>::index
  %_88 = invoke align 4 ptr @"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h3d0e2af110850d42E"(ptr align 8 %_89, i64 %j, ptr align 8 @alloc_94b87e038c1507b36f8ac030892fac14)
          to label %bb54 unwind label %cleanup6

bb54:                                             ; preds = %bb53
  %_87 = load i32, ptr %_88, align 4
; invoke <alloc::vec::Vec<T,A> as core::ops::index::Index<I>>::index
  %_95 = invoke align 8 ptr @"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h9c955c58406a343bE"(ptr align 8 %dp, i64 %i7, ptr align 8 @alloc_d469a434f8457ac5bc7606e842d5efb3)
          to label %bb55 unwind label %cleanup6

bb55:                                             ; preds = %bb54
; invoke <alloc::vec::Vec<T,A> as core::ops::index::Index<I>>::index
  %_94 = invoke align 4 ptr @"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h3d0e2af110850d42E"(ptr align 8 %_95, i64 %j, ptr align 8 @alloc_ecffea89b770956640c1726c41ca734c)
          to label %bb56 unwind label %cleanup6

bb56:                                             ; preds = %bb55
  %_93 = load i32, ptr %_94, align 4
  %_86 = icmp sgt i32 %_87, %_93
  br i1 %_86, label %bb57, label %bb29

bb57:                                             ; preds = %bb56
  %_102.0 = sub i64 %i7, 1
  %_102.1 = icmp ult i64 %i7, 1
  br i1 %_102.1, label %panic15, label %bb58

bb58:                                             ; preds = %bb57
; invoke <alloc::vec::Vec<T,A> as core::ops::index::Index<I>>::index
  %_99 = invoke align 8 ptr @"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h9c955c58406a343bE"(ptr align 8 %dp, i64 %_102.0, ptr align 8 @alloc_13395618c500c5a34da4b3112a0a2646)
          to label %bb59 unwind label %cleanup6

panic15:                                          ; preds = %bb57
; invoke core::panicking::panic_const::panic_const_sub_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_sub_overflow17h134cc1a7f93654deE(ptr align 8 @alloc_b9fcab750f0a0561e09f7a3057da5fd1) #24
          to label %unreachable unwind label %cleanup6

bb59:                                             ; preds = %bb58
; invoke <alloc::vec::Vec<T,A> as core::ops::index::Index<I>>::index
  %_98 = invoke align 4 ptr @"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h3d0e2af110850d42E"(ptr align 8 %_99, i64 %j, ptr align 8 @alloc_14828130b09a1ed96e1213f5c559da13)
          to label %bb60 unwind label %cleanup6

bb60:                                             ; preds = %bb59
  %_97 = load i32, ptr %_98, align 4
; invoke <alloc::vec::Vec<T,A> as core::ops::index::IndexMut<I>>::index_mut
  %_104 = invoke align 8 ptr @"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h32bddd7abb57d56dE"(ptr align 8 %dp, i64 %i7, ptr align 8 @alloc_894d09b13fab88dfe314bf590269b0b6)
          to label %bb61 unwind label %cleanup6

bb61:                                             ; preds = %bb60
; invoke <alloc::vec::Vec<T,A> as core::ops::index::IndexMut<I>>::index_mut
  %_103 = invoke align 4 ptr @"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17hb194f373c215fb35E"(ptr align 8 %_104, i64 %j, ptr align 8 @alloc_c47b05bd5cc94367d4456cbba5c7a03a)
          to label %bb62 unwind label %cleanup6

bb62:                                             ; preds = %bb61
  store i32 %_97, ptr %_103, align 4
  br label %bb29

bb14:                                             ; preds = %bb12
; invoke <alloc::vec::Vec<T,A> as core::ops::index::Index<I>>::index
  %_20 = invoke align 4 ptr @"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h632590a817c4c28fE"(ptr align 8 %str, i64 %_22.0, ptr align 8 @alloc_7ebeeaa4972a12ddf9f14e5f75c343ce)
          to label %bb15 unwind label %cleanup6

panic17:                                          ; preds = %bb12
; invoke core::panicking::panic_const::panic_const_sub_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_sub_overflow17h134cc1a7f93654deE(ptr align 8 @alloc_06d1568e9358813f7a484a1c7e2edec8) #24
          to label %unreachable unwind label %cleanup6

bb15:                                             ; preds = %bb14
  %_19 = load i32, ptr %_20, align 4
  %_18 = trunc i32 %_19 to i8
  %_23.0 = sub i8 %_18, 48
  %_23.1 = icmp ult i8 %_18, 48
  br i1 %_23.1, label %panic18, label %bb16

bb16:                                             ; preds = %bb15
; invoke <alloc::vec::Vec<T,A> as core::ops::index::IndexMut<I>>::index_mut
  %_24 = invoke align 8 ptr @"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17hc4fda97a68a6f0f6E"(ptr align 8 %arr, i64 %i16, ptr align 8 @alloc_6d55ab9e636101899d83693fc7d38348)
          to label %bb17 unwind label %cleanup6

panic18:                                          ; preds = %bb15
; invoke core::panicking::panic_const::panic_const_sub_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_sub_overflow17h134cc1a7f93654deE(ptr align 8 @alloc_929f9c1356ea99be3d6caabd2496c9a9) #24
          to label %unreachable unwind label %cleanup6

bb17:                                             ; preds = %bb16
  %52 = zext i8 %_23.0 to i64
  store i64 %52, ptr %_24, align 8
  br label %bb9

bb11:                                             ; No predecessors!
  unreachable

terminate:                                        ; preds = %bb78, %bb76, %bb75
  %53 = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer
; call core::panicking::panic_in_cleanup
  call void @_ZN4core9panicking16panic_in_cleanup17h5f6bde45d17ae243E() #21
  unreachable

bb77:                                             ; preds = %bb78, %bb79, %bb76
  %54 = load ptr, ptr %0, align 8
  %55 = getelementptr inbounds i8, ptr %0, i64 8
  %56 = load i32, ptr %55, align 8
  %57 = insertvalue { ptr, i32 } poison, ptr %54, 0
  %58 = insertvalue { ptr, i32 } %57, i32 %56, 1
  resume { ptr, i32 } %58

bb78:                                             ; preds = %bb79
; invoke core::ptr::drop_in_place<alloc::vec::Vec<i32>>
  invoke void @"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17ha8d7684f3cca654fE"(ptr align 8 %_4) #22
          to label %bb77 unwind label %terminate
}

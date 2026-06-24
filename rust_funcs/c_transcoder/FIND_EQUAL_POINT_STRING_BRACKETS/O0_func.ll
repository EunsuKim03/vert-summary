define i32 @f_gold(ptr align 8 %str) unnamed_addr #3 personality ptr @rust_eh_personality {
start:
  %0 = alloca [16 x i8], align 8
  %_101 = alloca [16 x i8], align 8
  %iter2 = alloca [24 x i8], align 8
  %_98 = alloca [24 x i8], align 8
  %_97 = alloca [24 x i8], align 8
  %_65 = alloca [16 x i8], align 8
  %iter1 = alloca [16 x i8], align 8
  %_36 = alloca [16 x i8], align 8
  %iter = alloca [16 x i8], align 8
  %index = alloca [4 x i8], align 4
  %close = alloca [24 x i8], align 8
  %open = alloca [24 x i8], align 8
  %_0 = alloca [4 x i8], align 4
; call alloc::vec::Vec<T,A>::len
  %_4 = call i64 @"_ZN5alloc3vec16Vec$LT$T$C$A$GT$3len17h879e058014800e59E"(ptr align 8 %str) #18
  %_5.0 = add i64 %_4, 1
  %_5.1 = icmp ult i64 %_5.0, %_4
  br i1 %_5.1, label %panic, label %bb2

bb2:                                              ; preds = %start
; call alloc::vec::from_elem
  call void @_ZN5alloc3vec9from_elem17h7931365a439dba7bE(ptr sret([24 x i8]) align 8 %open, i32 0, i64 %_5.0)
; invoke alloc::vec::Vec<T,A>::len
  %_8 = invoke i64 @"_ZN5alloc3vec16Vec$LT$T$C$A$GT$3len17h879e058014800e59E"(ptr align 8 %str)
          to label %bb4 unwind label %cleanup

panic:                                            ; preds = %start
; call core::panicking::panic_const::panic_const_add_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_43b991ead2b94e98d6319739cd299159) #23
  unreachable

bb80:                                             ; preds = %bb79, %cleanup
; invoke core::ptr::drop_in_place<alloc::vec::Vec<i32>>
  invoke void @"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17h8733d215aa61edc4E"(ptr align 8 %open) #22
          to label %bb81 unwind label %terminate

cleanup:                                          ; preds = %bb76, %bb74, %bb5, %panic3, %bb2
  %1 = landingpad { ptr, i32 }
          cleanup
  %2 = extractvalue { ptr, i32 } %1, 0
  %3 = extractvalue { ptr, i32 } %1, 1
  store ptr %2, ptr %0, align 8
  %4 = getelementptr inbounds i8, ptr %0, i64 8
  store i32 %3, ptr %4, align 8
  br label %bb80

bb4:                                              ; preds = %bb2
  %_9.0 = add i64 %_8, 1
  %_9.1 = icmp ult i64 %_9.0, %_8
  br i1 %_9.1, label %panic3, label %bb5

bb5:                                              ; preds = %bb4
; invoke alloc::vec::from_elem
  invoke void @_ZN5alloc3vec9from_elem17h7931365a439dba7bE(ptr sret([24 x i8]) align 8 %close, i32 0, i64 %_9.0)
          to label %bb6 unwind label %cleanup

panic3:                                           ; preds = %bb4
; invoke core::panicking::panic_const::panic_const_add_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_d7951483be192058f58181be05639cf1) #24
          to label %unreachable unwind label %cleanup

unreachable:                                      ; preds = %panic15, %panic14, %panic13, %panic11, %panic10, %panic9, %panic7, %panic6, %panic5, %panic3
  unreachable

bb6:                                              ; preds = %bb5
  store i32 -1, ptr %index, align 4
; invoke <alloc::vec::Vec<T,A> as core::ops::index::IndexMut<I>>::index_mut
  %_11 = invoke align 4 ptr @"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h4df71a3ba9dfc70aE"(ptr align 8 %open, i64 0, ptr align 8 @alloc_dbac7b577c2c8f447791777aaeb9527d)
          to label %bb7 unwind label %cleanup4

bb79:                                             ; preds = %cleanup4
; invoke core::ptr::drop_in_place<alloc::vec::Vec<i32>>
  invoke void @"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17h8733d215aa61edc4E"(ptr align 8 %close) #22
          to label %bb80 unwind label %terminate

cleanup4:                                         ; preds = %bb33, %panic15, %panic14, %bb30, %bb37, %panic13, %bb35, %bb27, %bb51, %panic11, %bb49, %panic10, %bb55, %bb54, %panic9, %bb45, %bb59, %bb71, %bb70, %bb68, %bb66, %bb65, %bb64, %bb61, %bb57, %bb46, %bb43, %bb41, %bb40, %panic7, %bb28, %bb24, %bb22, %bb21, %bb19, %panic6, %bb17, %bb15, %panic5, %bb13, %bb11, %bb9, %bb8, %bb7, %bb6
  %5 = landingpad { ptr, i32 }
          cleanup
  %6 = extractvalue { ptr, i32 } %5, 0
  %7 = extractvalue { ptr, i32 } %5, 1
  store ptr %6, ptr %0, align 8
  %8 = getelementptr inbounds i8, ptr %0, i64 8
  store i32 %7, ptr %8, align 8
  br label %bb79

bb7:                                              ; preds = %bb6
  store i32 0, ptr %_11, align 4
; invoke alloc::vec::Vec<T,A>::len
  %_15 = invoke i64 @"_ZN5alloc3vec16Vec$LT$T$C$A$GT$3len17h879e058014800e59E"(ptr align 8 %str)
          to label %bb8 unwind label %cleanup4

bb8:                                              ; preds = %bb7
; invoke <alloc::vec::Vec<T,A> as core::ops::index::IndexMut<I>>::index_mut
  %_13 = invoke align 4 ptr @"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h4df71a3ba9dfc70aE"(ptr align 8 %close, i64 %_15, ptr align 8 @alloc_5912d6e4ba8931d7d2077b2cddd8a183)
          to label %bb9 unwind label %cleanup4

bb9:                                              ; preds = %bb8
  store i32 0, ptr %_13, align 4
; invoke <alloc::vec::Vec<T,A> as core::ops::index::Index<I>>::index
  %_18 = invoke align 4 ptr @"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h184addac9b20f20fE"(ptr align 8 %str, i64 0, ptr align 8 @alloc_7e970dd81f62319fed255317e74a2708)
          to label %bb10 unwind label %cleanup4

bb10:                                             ; preds = %bb9
  %_17 = load i32, ptr %_18, align 4
  %_16 = icmp eq i32 %_17, 40
  br i1 %_16, label %bb11, label %bb13

bb13:                                             ; preds = %bb12, %bb10
; invoke alloc::vec::Vec<T,A>::len
  %_25 = invoke i64 @"_ZN5alloc3vec16Vec$LT$T$C$A$GT$3len17h879e058014800e59E"(ptr align 8 %str)
          to label %bb14 unwind label %cleanup4

bb11:                                             ; preds = %bb10
; invoke <alloc::vec::Vec<T,A> as core::ops::index::IndexMut<I>>::index_mut
  %_19 = invoke align 4 ptr @"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h4df71a3ba9dfc70aE"(ptr align 8 %open, i64 1, ptr align 8 @alloc_ca1a38a460c1dd020d239d0fd21e3e34)
          to label %bb12 unwind label %cleanup4

bb12:                                             ; preds = %bb11
  store i32 1, ptr %_19, align 4
  br label %bb13

bb14:                                             ; preds = %bb13
  %_26.0 = sub i64 %_25, 1
  %_26.1 = icmp ult i64 %_25, 1
  br i1 %_26.1, label %panic5, label %bb15

bb15:                                             ; preds = %bb14
; invoke <alloc::vec::Vec<T,A> as core::ops::index::Index<I>>::index
  %_23 = invoke align 4 ptr @"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h184addac9b20f20fE"(ptr align 8 %str, i64 %_26.0, ptr align 8 @alloc_3aaeef2a80dd262ff5e42d592b0c6c77)
          to label %bb16 unwind label %cleanup4

panic5:                                           ; preds = %bb14
; invoke core::panicking::panic_const::panic_const_sub_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_sub_overflow17h134cc1a7f93654deE(ptr align 8 @alloc_71b0b738b00b2768bc95ee9acaf80121) #24
          to label %unreachable unwind label %cleanup4

bb16:                                             ; preds = %bb15
  %_22 = load i32, ptr %_23, align 4
  %_21 = icmp eq i32 %_22, 41
  br i1 %_21, label %bb17, label %bb21

bb21:                                             ; preds = %bb20, %bb16
; invoke alloc::vec::Vec<T,A>::len
  %_34 = invoke i64 @"_ZN5alloc3vec16Vec$LT$T$C$A$GT$3len17h879e058014800e59E"(ptr align 8 %str)
          to label %bb22 unwind label %cleanup4

bb17:                                             ; preds = %bb16
; invoke alloc::vec::Vec<T,A>::len
  %_30 = invoke i64 @"_ZN5alloc3vec16Vec$LT$T$C$A$GT$3len17h879e058014800e59E"(ptr align 8 %str)
          to label %bb18 unwind label %cleanup4

bb18:                                             ; preds = %bb17
  %_31.0 = sub i64 %_30, 1
  %_31.1 = icmp ult i64 %_30, 1
  br i1 %_31.1, label %panic6, label %bb19

bb19:                                             ; preds = %bb18
; invoke <alloc::vec::Vec<T,A> as core::ops::index::IndexMut<I>>::index_mut
  %_27 = invoke align 4 ptr @"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h4df71a3ba9dfc70aE"(ptr align 8 %close, i64 %_31.0, ptr align 8 @alloc_f73222c7f25623f074564b767bd09308)
          to label %bb20 unwind label %cleanup4

panic6:                                           ; preds = %bb18
; invoke core::panicking::panic_const::panic_const_sub_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_sub_overflow17h134cc1a7f93654deE(ptr align 8 @alloc_eab711c6751d43278ff25f3e1829acda) #24
          to label %unreachable unwind label %cleanup4

bb20:                                             ; preds = %bb19
  store i32 1, ptr %_27, align 4
  br label %bb21

bb22:                                             ; preds = %bb21
; invoke <I as core::iter::traits::collect::IntoIterator>::into_iter
  %9 = invoke { i64, i64 } @"_ZN63_$LT$I$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17h4f27785a8b457cf4E"(i64 1, i64 %_34)
          to label %bb23 unwind label %cleanup4

bb23:                                             ; preds = %bb22
  %_32.0 = extractvalue { i64, i64 } %9, 0
  %_32.1 = extractvalue { i64, i64 } %9, 1
  store i64 %_32.0, ptr %iter, align 8
  %10 = getelementptr inbounds i8, ptr %iter, i64 8
  store i64 %_32.1, ptr %10, align 8
  br label %bb24

bb24:                                             ; preds = %bb34, %bb38, %bb23
; invoke core::iter::range::<impl core::iter::traits::iterator::Iterator for core::ops::range::Range<A>>::next
  %11 = invoke { i64, i64 } @"_ZN4core4iter5range101_$LT$impl$u20$core..iter..traits..iterator..Iterator$u20$for$u20$core..ops..range..Range$LT$A$GT$$GT$4next17h4eee75279f750debE"(ptr align 8 %iter)
          to label %bb25 unwind label %cleanup4

bb25:                                             ; preds = %bb24
  %12 = extractvalue { i64, i64 } %11, 0
  %13 = extractvalue { i64, i64 } %11, 1
  store i64 %12, ptr %_36, align 8
  %14 = getelementptr inbounds i8, ptr %_36, i64 8
  store i64 %13, ptr %14, align 8
  %_38 = load i64, ptr %_36, align 8
  %15 = getelementptr inbounds i8, ptr %_36, i64 8
  %16 = load i64, ptr %15, align 8
  %17 = trunc nuw i64 %_38 to i1
  br i1 %17, label %bb27, label %bb28

bb27:                                             ; preds = %bb25
  %18 = getelementptr inbounds i8, ptr %_36, i64 8
  %i12 = load i64, ptr %18, align 8
; invoke <alloc::vec::Vec<T,A> as core::ops::index::Index<I>>::index
  %_42 = invoke align 4 ptr @"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h184addac9b20f20fE"(ptr align 8 %str, i64 %i12, ptr align 8 @alloc_6f2659f499ea5af75e7986c3545bc445)
          to label %bb29 unwind label %cleanup4

bb28:                                             ; preds = %bb25
; invoke alloc::vec::Vec<T,A>::len
  %_62 = invoke i64 @"_ZN5alloc3vec16Vec$LT$T$C$A$GT$3len17h879e058014800e59E"(ptr align 8 %str)
          to label %bb39 unwind label %cleanup4

bb39:                                             ; preds = %bb28
  %_63.0 = sub i64 %_62, 1
  %_63.1 = icmp ult i64 %_62, 1
  br i1 %_63.1, label %panic7, label %bb40

bb40:                                             ; preds = %bb39
; invoke core::iter::traits::iterator::Iterator::rev
  %19 = invoke { i64, i64 } @_ZN4core4iter6traits8iterator8Iterator3rev17h0345f436a1c0be4bE(i64 0, i64 %_63.0)
          to label %bb41 unwind label %cleanup4

panic7:                                           ; preds = %bb39
; invoke core::panicking::panic_const::panic_const_sub_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_sub_overflow17h134cc1a7f93654deE(ptr align 8 @alloc_9d7cf9d2b4757322982b043b1ad48d46) #24
          to label %unreachable unwind label %cleanup4

bb41:                                             ; preds = %bb40
  %_59.0 = extractvalue { i64, i64 } %19, 0
  %_59.1 = extractvalue { i64, i64 } %19, 1
; invoke <I as core::iter::traits::collect::IntoIterator>::into_iter
  %20 = invoke { i64, i64 } @"_ZN63_$LT$I$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17h23b1b9470e5aa9e0E"(i64 %_59.0, i64 %_59.1)
          to label %bb42 unwind label %cleanup4

bb42:                                             ; preds = %bb41
  %_58.0 = extractvalue { i64, i64 } %20, 0
  %_58.1 = extractvalue { i64, i64 } %20, 1
  store i64 %_58.0, ptr %iter1, align 8
  %21 = getelementptr inbounds i8, ptr %iter1, i64 8
  store i64 %_58.1, ptr %21, align 8
  br label %bb43

bb43:                                             ; preds = %bb52, %bb56, %bb42
; invoke <core::iter::adapters::rev::Rev<I> as core::iter::traits::iterator::Iterator>::next
  %22 = invoke { i64, i64 } @"_ZN98_$LT$core..iter..adapters..rev..Rev$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h206c1a11ff9617dbE"(ptr align 8 %iter1)
          to label %bb44 unwind label %cleanup4

bb44:                                             ; preds = %bb43
  %23 = extractvalue { i64, i64 } %22, 0
  %24 = extractvalue { i64, i64 } %22, 1
  store i64 %23, ptr %_65, align 8
  %25 = getelementptr inbounds i8, ptr %_65, i64 8
  store i64 %24, ptr %25, align 8
  %_67 = load i64, ptr %_65, align 8
  %26 = getelementptr inbounds i8, ptr %_65, i64 8
  %27 = load i64, ptr %26, align 8
  %28 = trunc nuw i64 %_67 to i1
  br i1 %28, label %bb45, label %bb46

bb45:                                             ; preds = %bb44
  %29 = getelementptr inbounds i8, ptr %_65, i64 8
  %i8 = load i64, ptr %29, align 8
; invoke <alloc::vec::Vec<T,A> as core::ops::index::Index<I>>::index
  %_71 = invoke align 4 ptr @"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h184addac9b20f20fE"(ptr align 8 %str, i64 %i8, ptr align 8 @alloc_978090ae14aa3bd11d92521130c9960b)
          to label %bb47 unwind label %cleanup4

bb46:                                             ; preds = %bb44
; invoke alloc::vec::Vec<T,A>::len
  %_91 = invoke i64 @"_ZN5alloc3vec16Vec$LT$T$C$A$GT$3len17h879e058014800e59E"(ptr align 8 %str)
          to label %bb57 unwind label %cleanup4

bb57:                                             ; preds = %bb46
; invoke <alloc::vec::Vec<T,A> as core::ops::index::Index<I>>::index
  %_89 = invoke align 4 ptr @"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h7aeb1232b4c0bed7E"(ptr align 8 %open, i64 %_91, ptr align 8 @alloc_c095594a9ab3d5a8e8d4e052eb81011a)
          to label %bb58 unwind label %cleanup4

bb58:                                             ; preds = %bb57
  %_88 = load i32, ptr %_89, align 4
  %_87 = icmp eq i32 %_88, 0
  br i1 %_87, label %bb59, label %bb61

bb61:                                             ; preds = %bb58
; invoke <alloc::vec::Vec<T,A> as core::ops::index::Index<I>>::index
  %_95 = invoke align 4 ptr @"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h7aeb1232b4c0bed7E"(ptr align 8 %close, i64 0, ptr align 8 @alloc_11b3c827a4ae72af30a1f0f6669558ce)
          to label %bb62 unwind label %cleanup4

bb59:                                             ; preds = %bb58
; invoke alloc::vec::Vec<T,A>::len
  %_92 = invoke i64 @"_ZN5alloc3vec16Vec$LT$T$C$A$GT$3len17h879e058014800e59E"(ptr align 8 %str)
          to label %bb60 unwind label %cleanup4

bb62:                                             ; preds = %bb61
  %_94 = load i32, ptr %_95, align 4
  %_93 = icmp eq i32 %_94, 0
  br i1 %_93, label %bb63, label %bb64

bb64:                                             ; preds = %bb62
; invoke alloc::vec::Vec<T,A>::len
  %_99 = invoke i64 @"_ZN5alloc3vec16Vec$LT$T$C$A$GT$3len17h879e058014800e59E"(ptr align 8 %str)
          to label %bb65 unwind label %cleanup4

bb63:                                             ; preds = %bb62
  store i32 0, ptr %_0, align 4
  br label %bb76

bb65:                                             ; preds = %bb64
; invoke core::ops::range::RangeInclusive<Idx>::new
  invoke void @"_ZN4core3ops5range25RangeInclusive$LT$Idx$GT$3new17h9760506e24bc62b1E"(ptr sret([24 x i8]) align 8 %_98, i64 0, i64 %_99)
          to label %bb66 unwind label %cleanup4

bb66:                                             ; preds = %bb65
; invoke <I as core::iter::traits::collect::IntoIterator>::into_iter
  invoke void @"_ZN63_$LT$I$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17h5b1181d2ed6b9465E"(ptr sret([24 x i8]) align 8 %_97, ptr align 8 %_98)
          to label %bb67 unwind label %cleanup4

bb67:                                             ; preds = %bb66
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %iter2, ptr align 8 %_97, i64 24, i1 false)
  br label %bb68

bb68:                                             ; preds = %bb72, %bb67
; invoke core::iter::range::<impl core::iter::traits::iterator::Iterator for core::ops::range::RangeInclusive<A>>::next
  %30 = invoke { i64, i64 } @"_ZN4core4iter5range110_$LT$impl$u20$core..iter..traits..iterator..Iterator$u20$for$u20$core..ops..range..RangeInclusive$LT$A$GT$$GT$4next17h47db83a138dd0bd4E"(ptr align 8 %iter2)
          to label %bb69 unwind label %cleanup4

bb69:                                             ; preds = %bb68
  %31 = extractvalue { i64, i64 } %30, 0
  %32 = extractvalue { i64, i64 } %30, 1
  store i64 %31, ptr %_101, align 8
  %33 = getelementptr inbounds i8, ptr %_101, i64 8
  store i64 %32, ptr %33, align 8
  %_103 = load i64, ptr %_101, align 8
  %34 = getelementptr inbounds i8, ptr %_101, i64 8
  %35 = load i64, ptr %34, align 8
  %36 = trunc nuw i64 %_103 to i1
  br i1 %36, label %bb70, label %bb74

bb70:                                             ; preds = %bb69
  %37 = getelementptr inbounds i8, ptr %_101, i64 8
  %i = load i64, ptr %37, align 8
; invoke <alloc::vec::Vec<T,A> as core::ops::index::Index<I>>::index
  %_107 = invoke align 4 ptr @"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h7aeb1232b4c0bed7E"(ptr align 8 %open, i64 %i, ptr align 8 @alloc_069ff1f6edefec90d513d0dc5a75eddf)
          to label %bb71 unwind label %cleanup4

bb74:                                             ; preds = %bb73, %bb69
  %38 = load i32, ptr %index, align 4
  store i32 %38, ptr %_0, align 4
; invoke core::ptr::drop_in_place<alloc::vec::Vec<i32>>
  invoke void @"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17h8733d215aa61edc4E"(ptr align 8 %close)
          to label %bb75 unwind label %cleanup

bb71:                                             ; preds = %bb70
  %_106 = load i32, ptr %_107, align 4
; invoke <alloc::vec::Vec<T,A> as core::ops::index::Index<I>>::index
  %_110 = invoke align 4 ptr @"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h7aeb1232b4c0bed7E"(ptr align 8 %close, i64 %i, ptr align 8 @alloc_3079e8a73ff5c64e0020f177c9531994)
          to label %bb72 unwind label %cleanup4

bb72:                                             ; preds = %bb71
  %_109 = load i32, ptr %_110, align 4
  %_105 = icmp eq i32 %_106, %_109
  br i1 %_105, label %bb73, label %bb68

bb73:                                             ; preds = %bb72
  %39 = trunc i64 %i to i32
  store i32 %39, ptr %index, align 4
  br label %bb74

bb75:                                             ; preds = %bb74
; call core::ptr::drop_in_place<alloc::vec::Vec<i32>>
  call void @"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17h8733d215aa61edc4E"(ptr align 8 %open)
  br label %bb78

bb78:                                             ; preds = %bb77, %bb75
  %40 = load i32, ptr %_0, align 4
  ret i32 %40

bb76:                                             ; preds = %bb60, %bb63
; invoke core::ptr::drop_in_place<alloc::vec::Vec<i32>>
  invoke void @"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17h8733d215aa61edc4E"(ptr align 8 %close)
          to label %bb77 unwind label %cleanup

bb60:                                             ; preds = %bb59
  %41 = trunc i64 %_92 to i32
  store i32 %41, ptr %_0, align 4
  br label %bb76

bb77:                                             ; preds = %bb76
; call core::ptr::drop_in_place<alloc::vec::Vec<i32>>
  call void @"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17h8733d215aa61edc4E"(ptr align 8 %open)
  br label %bb78

bb47:                                             ; preds = %bb45
  %_70 = load i32, ptr %_71, align 4
  %_69 = icmp eq i32 %_70, 41
  br i1 %_69, label %bb48, label %bb53

bb53:                                             ; preds = %bb47
  %_84.0 = add i64 %i8, 1
  %_84.1 = icmp ult i64 %_84.0, %i8
  br i1 %_84.1, label %panic9, label %bb54

bb48:                                             ; preds = %bb47
  %_76.0 = add i64 %i8, 1
  %_76.1 = icmp ult i64 %_76.0, %i8
  br i1 %_76.1, label %panic10, label %bb49

bb54:                                             ; preds = %bb53
; invoke <alloc::vec::Vec<T,A> as core::ops::index::Index<I>>::index
  %_81 = invoke align 4 ptr @"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h7aeb1232b4c0bed7E"(ptr align 8 %close, i64 %_84.0, ptr align 8 @alloc_8131848b3bacb7a80d59a6d9c8e4d242)
          to label %bb55 unwind label %cleanup4

panic9:                                           ; preds = %bb53
; invoke core::panicking::panic_const::panic_const_add_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_1e4a9baf6861161148545a6c5a11fd81) #24
          to label %unreachable unwind label %cleanup4

bb55:                                             ; preds = %bb54
  %_80 = load i32, ptr %_81, align 4
; invoke <alloc::vec::Vec<T,A> as core::ops::index::IndexMut<I>>::index_mut
  %_85 = invoke align 4 ptr @"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h4df71a3ba9dfc70aE"(ptr align 8 %close, i64 %i8, ptr align 8 @alloc_e10dba8f8a969d264cc905b737559afd)
          to label %bb56 unwind label %cleanup4

bb56:                                             ; preds = %bb55
  store i32 %_80, ptr %_85, align 4
  br label %bb43

bb49:                                             ; preds = %bb48
; invoke <alloc::vec::Vec<T,A> as core::ops::index::Index<I>>::index
  %_73 = invoke align 4 ptr @"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h7aeb1232b4c0bed7E"(ptr align 8 %close, i64 %_76.0, ptr align 8 @alloc_b250a9124a49e207fe64c3c258b4817a)
          to label %bb50 unwind label %cleanup4

panic10:                                          ; preds = %bb48
; invoke core::panicking::panic_const::panic_const_add_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_a08f01c8be8516008287bb83207c818a) #24
          to label %unreachable unwind label %cleanup4

bb50:                                             ; preds = %bb49
  %_72 = load i32, ptr %_73, align 4
  %42 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %_72, i32 1)
  %_77.0 = extractvalue { i32, i1 } %42, 0
  %_77.1 = extractvalue { i32, i1 } %42, 1
  br i1 %_77.1, label %panic11, label %bb51

bb51:                                             ; preds = %bb50
; invoke <alloc::vec::Vec<T,A> as core::ops::index::IndexMut<I>>::index_mut
  %_78 = invoke align 4 ptr @"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h4df71a3ba9dfc70aE"(ptr align 8 %close, i64 %i8, ptr align 8 @alloc_eba6bc72ce887dbf38f54ae765a0af12)
          to label %bb52 unwind label %cleanup4

panic11:                                          ; preds = %bb50
; invoke core::panicking::panic_const::panic_const_add_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_85436e451fe0d7036e5909bd6fc3a035) #24
          to label %unreachable unwind label %cleanup4

bb52:                                             ; preds = %bb51
  store i32 %_77.0, ptr %_78, align 4
  br label %bb43

bb29:                                             ; preds = %bb27
  %_41 = load i32, ptr %_42, align 4
  %_40 = icmp eq i32 %_41, 40
  br i1 %_40, label %bb30, label %bb35

bb35:                                             ; preds = %bb29
; invoke <alloc::vec::Vec<T,A> as core::ops::index::Index<I>>::index
  %_52 = invoke align 4 ptr @"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h7aeb1232b4c0bed7E"(ptr align 8 %open, i64 %i12, ptr align 8 @alloc_995fca70dafe92d6dbfae404296de00b)
          to label %bb36 unwind label %cleanup4

bb30:                                             ; preds = %bb29
; invoke <alloc::vec::Vec<T,A> as core::ops::index::Index<I>>::index
  %_44 = invoke align 4 ptr @"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h7aeb1232b4c0bed7E"(ptr align 8 %open, i64 %i12, ptr align 8 @alloc_603c2b75e00903c23e63922f1769616c)
          to label %bb31 unwind label %cleanup4

bb36:                                             ; preds = %bb35
  %_51 = load i32, ptr %_52, align 4
  %_57.0 = add i64 %i12, 1
  %_57.1 = icmp ult i64 %_57.0, %i12
  br i1 %_57.1, label %panic13, label %bb37

bb37:                                             ; preds = %bb36
; invoke <alloc::vec::Vec<T,A> as core::ops::index::IndexMut<I>>::index_mut
  %_54 = invoke align 4 ptr @"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h4df71a3ba9dfc70aE"(ptr align 8 %open, i64 %_57.0, ptr align 8 @alloc_0d5fa6f788c1f95d44e37783c68ccb98)
          to label %bb38 unwind label %cleanup4

panic13:                                          ; preds = %bb36
; invoke core::panicking::panic_const::panic_const_add_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_0f4826422d69e71473e18e77cfcd6145) #24
          to label %unreachable unwind label %cleanup4

bb38:                                             ; preds = %bb37
  store i32 %_51, ptr %_54, align 4
  br label %bb24

bb31:                                             ; preds = %bb30
  %_43 = load i32, ptr %_44, align 4
  %43 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %_43, i32 1)
  %_46.0 = extractvalue { i32, i1 } %43, 0
  %_46.1 = extractvalue { i32, i1 } %43, 1
  br i1 %_46.1, label %panic14, label %bb32

bb32:                                             ; preds = %bb31
  %_50.0 = add i64 %i12, 1
  %_50.1 = icmp ult i64 %_50.0, %i12
  br i1 %_50.1, label %panic15, label %bb33

panic14:                                          ; preds = %bb31
; invoke core::panicking::panic_const::panic_const_add_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_9c4cd8cb216385a26f5146a3f0c9a808) #24
          to label %unreachable unwind label %cleanup4

bb33:                                             ; preds = %bb32
; invoke <alloc::vec::Vec<T,A> as core::ops::index::IndexMut<I>>::index_mut
  %_47 = invoke align 4 ptr @"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h4df71a3ba9dfc70aE"(ptr align 8 %open, i64 %_50.0, ptr align 8 @alloc_c9fceaaa78c29c5e74788d0d6f240185)
          to label %bb34 unwind label %cleanup4

panic15:                                          ; preds = %bb32
; invoke core::panicking::panic_const::panic_const_add_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_b94844d486587767ccbc586157a4004d) #24
          to label %unreachable unwind label %cleanup4

bb34:                                             ; preds = %bb33
  store i32 %_46.0, ptr %_47, align 4
  br label %bb24

bb26:                                             ; No predecessors!
  unreachable

terminate:                                        ; preds = %bb80, %bb79
  %44 = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer
; call core::panicking::panic_in_cleanup
  call void @_ZN4core9panicking16panic_in_cleanup17h5f6bde45d17ae243E() #21
  unreachable

bb81:                                             ; preds = %bb80
  %45 = load ptr, ptr %0, align 8
  %46 = getelementptr inbounds i8, ptr %0, i64 8
  %47 = load i32, ptr %46, align 8
  %48 = insertvalue { ptr, i32 } poison, ptr %45, 0
  %49 = insertvalue { ptr, i32 } %48, i32 %47, 1
  resume { ptr, i32 } %49
}

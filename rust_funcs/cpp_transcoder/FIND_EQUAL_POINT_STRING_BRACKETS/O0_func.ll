define i32 @f_gold(ptr align 8 %str) unnamed_addr #3 personality ptr @rust_eh_personality {
start:
  %self.i30 = alloca [4 x i8], align 4
  %self.i24 = alloca [4 x i8], align 4
  %self.i18 = alloca [4 x i8], align 4
  %self.i = alloca [4 x i8], align 4
  %0 = alloca [16 x i8], align 8
  %_128 = alloca [8 x i8], align 4
  %iter2 = alloca [12 x i8], align 4
  %_126 = alloca [12 x i8], align 4
  %_125 = alloca [12 x i8], align 4
  %_93 = alloca [16 x i8], align 8
  %_85 = alloca [8 x i8], align 4
  %iter1 = alloca [8 x i8], align 4
  %_54 = alloca [16 x i8], align 8
  %_46 = alloca [8 x i8], align 4
  %iter = alloca [8 x i8], align 4
  %_32 = alloca [16 x i8], align 8
  %_23 = alloca [16 x i8], align 8
  %index = alloca [4 x i8], align 4
  %close = alloca [24 x i8], align 8
  %open = alloca [24 x i8], align 8
  %_0 = alloca [4 x i8], align 4
; invoke alloc::string::String::len
  %_3 = invoke i64 @_ZN5alloc6string6String3len17h1e8d5b6c8a826258E(ptr align 8 %str)
          to label %bb1 unwind label %cleanup

bb85:                                             ; preds = %bb84, %cleanup
; invoke core::ptr::drop_in_place<alloc::string::String>
  invoke void @"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h371fff1e478da1e2E"(ptr align 8 %str) #22
          to label %bb86 unwind label %terminate

cleanup:                                          ; preds = %bb80, %bb2, %panic, %start
  %1 = landingpad { ptr, i32 }
          cleanup
  %2 = extractvalue { ptr, i32 } %1, 0
  %3 = extractvalue { ptr, i32 } %1, 1
  store ptr %2, ptr %0, align 8
  %4 = getelementptr inbounds i8, ptr %0, i64 8
  store i32 %3, ptr %4, align 8
  br label %bb85

bb1:                                              ; preds = %start
  %len = trunc i64 %_3 to i32
  %_7 = sext i32 %len to i64
  %_8.0 = add i64 %_7, 1
  %_8.1 = icmp ult i64 %_8.0, %_7
  br i1 %_8.1, label %panic, label %bb2

bb2:                                              ; preds = %bb1
; invoke alloc::vec::from_elem
  invoke void @_ZN5alloc3vec9from_elem17h7931365a439dba7bE(ptr sret([24 x i8]) align 8 %open, i32 0, i64 %_8.0)
          to label %bb3 unwind label %cleanup

panic:                                            ; preds = %bb1
; invoke core::panicking::panic_const::panic_const_add_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_be25a32fdacdede99ac364b05cbc68f3) #24
          to label %unreachable unwind label %cleanup

unreachable:                                      ; preds = %panic17, %panic16, %panic15, %panic14, %panic12, %panic11, %panic10, %panic8, %panic7, %panic6, %panic3, %panic
  unreachable

bb3:                                              ; preds = %bb2
  %_11 = sext i32 %len to i64
  %_12.0 = add i64 %_11, 1
  %_12.1 = icmp ult i64 %_12.0, %_11
  br i1 %_12.1, label %panic3, label %bb4

bb4:                                              ; preds = %bb3
; invoke alloc::vec::from_elem
  invoke void @_ZN5alloc3vec9from_elem17h7931365a439dba7bE(ptr sret([24 x i8]) align 8 %close, i32 0, i64 %_12.0)
          to label %bb5 unwind label %cleanup4

panic3:                                           ; preds = %bb3
; invoke core::panicking::panic_const::panic_const_add_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_0d61ba6b198c29ce31dff36bb5dafddd) #24
          to label %unreachable unwind label %cleanup4

bb84:                                             ; preds = %bb83, %cleanup4
; invoke core::ptr::drop_in_place<alloc::vec::Vec<i32>>
  invoke void @"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17h8733d215aa61edc4E"(ptr align 8 %open) #22
          to label %bb85 unwind label %terminate

cleanup4:                                         ; preds = %bb79, %bb4, %panic3
  %5 = landingpad { ptr, i32 }
          cleanup
  %6 = extractvalue { ptr, i32 } %5, 0
  %7 = extractvalue { ptr, i32 } %5, 1
  store ptr %6, ptr %0, align 8
  %8 = getelementptr inbounds i8, ptr %0, i64 8
  store i32 %7, ptr %8, align 8
  br label %bb84

bb5:                                              ; preds = %bb4
  store i32 -1, ptr %index, align 4
; invoke <alloc::vec::Vec<T,A> as core::ops::index::IndexMut<I>>::index_mut
  %_14 = invoke align 4 ptr @"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h4df71a3ba9dfc70aE"(ptr align 8 %open, i64 0, ptr align 8 @alloc_df8a023a655685e9fd0008fb80e57673)
          to label %bb6 unwind label %cleanup5

bb83:                                             ; preds = %cleanup5
; invoke core::ptr::drop_in_place<alloc::vec::Vec<i32>>
  invoke void @"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17h8733d215aa61edc4E"(ptr align 8 %close) #22
          to label %bb84 unwind label %terminate

cleanup5:                                         ; preds = %bb2.i32, %bb2.i26, %bb2.i20, %bb2.i, %bb38, %panic17, %panic16, %bb35, %bb42, %panic15, %bb40, %bb32, %panic14, %bb30, %bb28, %bb58, %panic12, %bb56, %panic11, %bb62, %bb61, %panic10, %bb52, %bb51, %bb49, %bb75, %bb74, %bb72, %bb70, %bb69, %bb66, %bb50, %bb47, %bb45, %bb44, %panic8, %bb25, %bb23, %bb21, %panic7, %bb17, %panic6, %bb15, %bb14, %bb12, %bb9, %bb8, %bb7, %bb6, %bb5
  %9 = landingpad { ptr, i32 }
          cleanup
  %10 = extractvalue { ptr, i32 } %9, 0
  %11 = extractvalue { ptr, i32 } %9, 1
  store ptr %10, ptr %0, align 8
  %12 = getelementptr inbounds i8, ptr %0, i64 8
  store i32 %11, ptr %12, align 8
  br label %bb83

bb6:                                              ; preds = %bb5
  store i32 0, ptr %_14, align 4
  %_18 = sext i32 %len to i64
; invoke <alloc::vec::Vec<T,A> as core::ops::index::IndexMut<I>>::index_mut
  %_16 = invoke align 4 ptr @"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h4df71a3ba9dfc70aE"(ptr align 8 %close, i64 %_18, ptr align 8 @alloc_643b4a7ec7340372f73d132d69c09f43)
          to label %bb7 unwind label %cleanup5

bb7:                                              ; preds = %bb6
  store i32 0, ptr %_16, align 4
; invoke <alloc::string::String as core::ops::deref::Deref>::deref
  %13 = invoke { ptr, i64 } @"_ZN65_$LT$alloc..string..String$u20$as$u20$core..ops..deref..Deref$GT$5deref17haf5e746f25e75412E"(ptr align 8 %str)
          to label %bb8 unwind label %cleanup5

bb8:                                              ; preds = %bb7
  %_24.0 = extractvalue { ptr, i64 } %13, 0
  %_24.1 = extractvalue { ptr, i64 } %13, 1
; invoke core::str::<impl str>::chars
  %14 = invoke { ptr, ptr } @"_ZN4core3str21_$LT$impl$u20$str$GT$5chars17h40f770551010c361E"(ptr align 1 %_24.0, i64 %_24.1)
          to label %bb9 unwind label %cleanup5

bb9:                                              ; preds = %bb8
  %15 = extractvalue { ptr, ptr } %14, 0
  %16 = extractvalue { ptr, ptr } %14, 1
  store ptr %15, ptr %_23, align 8
  %17 = getelementptr inbounds i8, ptr %_23, i64 8
  store ptr %16, ptr %17, align 8
; invoke core::iter::traits::iterator::Iterator::nth
  %_21 = invoke i32 @_ZN4core4iter6traits8iterator8Iterator3nth17hc3dedf81601ff44eE(ptr align 8 %_23, i64 0)
          to label %bb10 unwind label %cleanup5

bb10:                                             ; preds = %bb9
  store i32 %_21, ptr %self.i30, align 4
  %18 = load i32, ptr %self.i30, align 4
  %19 = icmp eq i32 %18, 1114112
  %_2.i31 = select i1 %19, i64 0, i64 1
  %20 = trunc nuw i64 %_2.i31 to i1
  br i1 %20, label %"_ZN4core6option15Option$LT$T$GT$6unwrap17hb7928c9fc9d15c00E.exit35", label %bb2.i32

bb2.i32:                                          ; preds = %bb10
; invoke core::option::unwrap_failed
  invoke void @_ZN4core6option13unwrap_failed17hef2534b77b89c04fE(ptr align 8 @alloc_0f3090e147c0e9e1a80ee84b90461e0e) #23
          to label %.noexc34 unwind label %cleanup5

.noexc34:                                         ; preds = %bb2.i32
  unreachable

"_ZN4core6option15Option$LT$T$GT$6unwrap17hb7928c9fc9d15c00E.exit35": ; preds = %bb10
  %val.i33 = load i32, ptr %self.i30, align 4
  br label %bb11

bb11:                                             ; preds = %"_ZN4core6option15Option$LT$T$GT$6unwrap17hb7928c9fc9d15c00E.exit35"
  %_19 = icmp eq i32 %val.i33, 40
  br i1 %_19, label %bb12, label %bb14

bb14:                                             ; preds = %bb13, %bb11
; invoke <alloc::string::String as core::ops::deref::Deref>::deref
  %21 = invoke { ptr, i64 } @"_ZN65_$LT$alloc..string..String$u20$as$u20$core..ops..deref..Deref$GT$5deref17haf5e746f25e75412E"(ptr align 8 %str)
          to label %bb15 unwind label %cleanup5

bb12:                                             ; preds = %bb11
; invoke <alloc::vec::Vec<T,A> as core::ops::index::IndexMut<I>>::index_mut
  %_26 = invoke align 4 ptr @"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h4df71a3ba9dfc70aE"(ptr align 8 %open, i64 1, ptr align 8 @alloc_ecbdc10220ec3081f222b173cf06947e)
          to label %bb13 unwind label %cleanup5

bb13:                                             ; preds = %bb12
  store i32 1, ptr %_26, align 4
  br label %bb14

bb15:                                             ; preds = %bb14
  %_33.0 = extractvalue { ptr, i64 } %21, 0
  %_33.1 = extractvalue { ptr, i64 } %21, 1
; invoke core::str::<impl str>::chars
  %22 = invoke { ptr, ptr } @"_ZN4core3str21_$LT$impl$u20$str$GT$5chars17h40f770551010c361E"(ptr align 1 %_33.0, i64 %_33.1)
          to label %bb16 unwind label %cleanup5

bb16:                                             ; preds = %bb15
  %23 = extractvalue { ptr, ptr } %22, 0
  %24 = extractvalue { ptr, ptr } %22, 1
  store ptr %23, ptr %_32, align 8
  %25 = getelementptr inbounds i8, ptr %_32, i64 8
  store ptr %24, ptr %25, align 8
  %_36 = sext i32 %len to i64
  %_37.0 = sub i64 %_36, 1
  %_37.1 = icmp ult i64 %_36, 1
  br i1 %_37.1, label %panic6, label %bb17

bb17:                                             ; preds = %bb16
; invoke core::iter::traits::iterator::Iterator::nth
  %_30 = invoke i32 @_ZN4core4iter6traits8iterator8Iterator3nth17hc3dedf81601ff44eE(ptr align 8 %_32, i64 %_37.0)
          to label %bb18 unwind label %cleanup5

panic6:                                           ; preds = %bb16
; invoke core::panicking::panic_const::panic_const_sub_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_sub_overflow17h134cc1a7f93654deE(ptr align 8 @alloc_bc72c1461ba9410d8cf7487ecb853611) #24
          to label %unreachable unwind label %cleanup5

bb18:                                             ; preds = %bb17
  store i32 %_30, ptr %self.i24, align 4
  %26 = load i32, ptr %self.i24, align 4
  %27 = icmp eq i32 %26, 1114112
  %_2.i25 = select i1 %27, i64 0, i64 1
  %28 = trunc nuw i64 %_2.i25 to i1
  br i1 %28, label %"_ZN4core6option15Option$LT$T$GT$6unwrap17hb7928c9fc9d15c00E.exit29", label %bb2.i26

bb2.i26:                                          ; preds = %bb18
; invoke core::option::unwrap_failed
  invoke void @_ZN4core6option13unwrap_failed17hef2534b77b89c04fE(ptr align 8 @alloc_3afafe37ce08cf88086ed43a42e27b3f) #23
          to label %.noexc28 unwind label %cleanup5

.noexc28:                                         ; preds = %bb2.i26
  unreachable

"_ZN4core6option15Option$LT$T$GT$6unwrap17hb7928c9fc9d15c00E.exit29": ; preds = %bb18
  %val.i27 = load i32, ptr %self.i24, align 4
  br label %bb19

bb19:                                             ; preds = %"_ZN4core6option15Option$LT$T$GT$6unwrap17hb7928c9fc9d15c00E.exit29"
  %_28 = icmp eq i32 %val.i27, 41
  br i1 %_28, label %bb20, label %bb23

bb23:                                             ; preds = %bb22, %bb19
; invoke <I as core::iter::traits::collect::IntoIterator>::into_iter
  %29 = invoke { i32, i32 } @"_ZN63_$LT$I$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17h9efccbef0f394d9dE"(i32 1, i32 %len)
          to label %bb24 unwind label %cleanup5

bb20:                                             ; preds = %bb19
  %_41 = sext i32 %len to i64
  %_42.0 = sub i64 %_41, 1
  %_42.1 = icmp ult i64 %_41, 1
  br i1 %_42.1, label %panic7, label %bb21

bb21:                                             ; preds = %bb20
; invoke <alloc::vec::Vec<T,A> as core::ops::index::IndexMut<I>>::index_mut
  %_38 = invoke align 4 ptr @"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h4df71a3ba9dfc70aE"(ptr align 8 %close, i64 %_42.0, ptr align 8 @alloc_401692266b3b2da5a6b98725de4236f5)
          to label %bb22 unwind label %cleanup5

panic7:                                           ; preds = %bb20
; invoke core::panicking::panic_const::panic_const_sub_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_sub_overflow17h134cc1a7f93654deE(ptr align 8 @alloc_39052952390d1f7d015f68ff518e200d) #24
          to label %unreachable unwind label %cleanup5

bb22:                                             ; preds = %bb21
  store i32 1, ptr %_38, align 4
  br label %bb23

bb24:                                             ; preds = %bb23
  %_43.0 = extractvalue { i32, i32 } %29, 0
  %_43.1 = extractvalue { i32, i32 } %29, 1
  store i32 %_43.0, ptr %iter, align 4
  %30 = getelementptr inbounds i8, ptr %iter, i64 4
  store i32 %_43.1, ptr %30, align 4
  br label %bb25

bb25:                                             ; preds = %bb39, %bb43, %bb24
; invoke core::iter::range::<impl core::iter::traits::iterator::Iterator for core::ops::range::Range<A>>::next
  %31 = invoke { i32, i32 } @"_ZN4core4iter5range101_$LT$impl$u20$core..iter..traits..iterator..Iterator$u20$for$u20$core..ops..range..Range$LT$A$GT$$GT$4next17h926a74d882b5da02E"(ptr align 4 %iter)
          to label %bb26 unwind label %cleanup5

bb26:                                             ; preds = %bb25
  %32 = extractvalue { i32, i32 } %31, 0
  %33 = extractvalue { i32, i32 } %31, 1
  store i32 %32, ptr %_46, align 4
  %34 = getelementptr inbounds i8, ptr %_46, i64 4
  store i32 %33, ptr %34, align 4
  %35 = load i32, ptr %_46, align 4
  %36 = getelementptr inbounds i8, ptr %_46, i64 4
  %37 = load i32, ptr %36, align 4
  %_48 = zext i32 %35 to i64
  %38 = trunc nuw i64 %_48 to i1
  br i1 %38, label %bb28, label %bb29

bb28:                                             ; preds = %bb26
  %39 = getelementptr inbounds i8, ptr %_46, i64 4
  %i13 = load i32, ptr %39, align 4
; invoke <alloc::string::String as core::ops::deref::Deref>::deref
  %40 = invoke { ptr, i64 } @"_ZN65_$LT$alloc..string..String$u20$as$u20$core..ops..deref..Deref$GT$5deref17haf5e746f25e75412E"(ptr align 8 %str)
          to label %bb30 unwind label %cleanup5

bb29:                                             ; preds = %bb26
  %41 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %len, i32 1)
  %_83.0 = extractvalue { i32, i1 } %41, 0
  %_83.1 = extractvalue { i32, i1 } %41, 1
  br i1 %_83.1, label %panic8, label %bb44

bb44:                                             ; preds = %bb29
; invoke core::iter::traits::iterator::Iterator::rev
  %42 = invoke { i32, i32 } @_ZN4core4iter6traits8iterator8Iterator3rev17hd83ebc59437635baE(i32 0, i32 %_83.0)
          to label %bb45 unwind label %cleanup5

panic8:                                           ; preds = %bb29
; invoke core::panicking::panic_const::panic_const_sub_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_sub_overflow17h134cc1a7f93654deE(ptr align 8 @alloc_eae45ccab2d6fab624f2f5baf1d0ea1f) #24
          to label %unreachable unwind label %cleanup5

bb45:                                             ; preds = %bb44
  %_80.0 = extractvalue { i32, i32 } %42, 0
  %_80.1 = extractvalue { i32, i32 } %42, 1
; invoke <I as core::iter::traits::collect::IntoIterator>::into_iter
  %43 = invoke { i32, i32 } @"_ZN63_$LT$I$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17h57e0176179b3256bE"(i32 %_80.0, i32 %_80.1)
          to label %bb46 unwind label %cleanup5

bb46:                                             ; preds = %bb45
  %_79.0 = extractvalue { i32, i32 } %43, 0
  %_79.1 = extractvalue { i32, i32 } %43, 1
  store i32 %_79.0, ptr %iter1, align 4
  %44 = getelementptr inbounds i8, ptr %iter1, i64 4
  store i32 %_79.1, ptr %44, align 4
  br label %bb47

bb47:                                             ; preds = %bb59, %bb63, %bb46
; invoke <core::iter::adapters::rev::Rev<I> as core::iter::traits::iterator::Iterator>::next
  %45 = invoke { i32, i32 } @"_ZN98_$LT$core..iter..adapters..rev..Rev$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h12cac597cb5cb230E"(ptr align 4 %iter1)
          to label %bb48 unwind label %cleanup5

bb48:                                             ; preds = %bb47
  %46 = extractvalue { i32, i32 } %45, 0
  %47 = extractvalue { i32, i32 } %45, 1
  store i32 %46, ptr %_85, align 4
  %48 = getelementptr inbounds i8, ptr %_85, i64 4
  store i32 %47, ptr %48, align 4
  %49 = load i32, ptr %_85, align 4
  %50 = getelementptr inbounds i8, ptr %_85, i64 4
  %51 = load i32, ptr %50, align 4
  %_87 = zext i32 %49 to i64
  %52 = trunc nuw i64 %_87 to i1
  br i1 %52, label %bb49, label %bb50

bb49:                                             ; preds = %bb48
  %53 = getelementptr inbounds i8, ptr %_85, i64 4
  %i9 = load i32, ptr %53, align 4
; invoke <alloc::string::String as core::ops::deref::Deref>::deref
  %54 = invoke { ptr, i64 } @"_ZN65_$LT$alloc..string..String$u20$as$u20$core..ops..deref..Deref$GT$5deref17haf5e746f25e75412E"(ptr align 8 %str)
          to label %bb51 unwind label %cleanup5

bb50:                                             ; preds = %bb48
  %_120 = sext i32 %len to i64
; invoke <alloc::vec::Vec<T,A> as core::ops::index::Index<I>>::index
  %_118 = invoke align 4 ptr @"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h7aeb1232b4c0bed7E"(ptr align 8 %open, i64 %_120, ptr align 8 @alloc_0aca04be49d9dc049478c94de5d65215)
          to label %bb64 unwind label %cleanup5

bb64:                                             ; preds = %bb50
  %_117 = load i32, ptr %_118, align 4
  %_116 = icmp eq i32 %_117, 0
  br i1 %_116, label %bb65, label %bb66

bb66:                                             ; preds = %bb64
; invoke <alloc::vec::Vec<T,A> as core::ops::index::Index<I>>::index
  %_123 = invoke align 4 ptr @"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h7aeb1232b4c0bed7E"(ptr align 8 %close, i64 0, ptr align 8 @alloc_bffb7d89f0bddf985dbe63275e3fad7a)
          to label %bb67 unwind label %cleanup5

bb65:                                             ; preds = %bb64
  store i32 %len, ptr %_0, align 4
  br label %bb79

bb67:                                             ; preds = %bb66
  %_122 = load i32, ptr %_123, align 4
  %_121 = icmp eq i32 %_122, 0
  br i1 %_121, label %bb68, label %bb69

bb69:                                             ; preds = %bb67
; invoke core::ops::range::RangeInclusive<Idx>::new
  invoke void @"_ZN4core3ops5range25RangeInclusive$LT$Idx$GT$3new17h3939eea6d83c8641E"(ptr sret([12 x i8]) align 4 %_126, i32 0, i32 %len)
          to label %bb70 unwind label %cleanup5

bb68:                                             ; preds = %bb67
  store i32 0, ptr %_0, align 4
  br label %bb79

bb70:                                             ; preds = %bb69
; invoke <I as core::iter::traits::collect::IntoIterator>::into_iter
  invoke void @"_ZN63_$LT$I$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17h740371d7d140bdb3E"(ptr sret([12 x i8]) align 4 %_125, ptr align 4 %_126)
          to label %bb71 unwind label %cleanup5

bb71:                                             ; preds = %bb70
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %iter2, ptr align 4 %_125, i64 12, i1 false)
  br label %bb72

bb72:                                             ; preds = %bb76, %bb71
; invoke core::iter::range::<impl core::iter::traits::iterator::Iterator for core::ops::range::RangeInclusive<A>>::next
  %55 = invoke { i32, i32 } @"_ZN4core4iter5range110_$LT$impl$u20$core..iter..traits..iterator..Iterator$u20$for$u20$core..ops..range..RangeInclusive$LT$A$GT$$GT$4next17hf31c2f7bdc062cb6E"(ptr align 4 %iter2)
          to label %bb73 unwind label %cleanup5

bb73:                                             ; preds = %bb72
  %56 = extractvalue { i32, i32 } %55, 0
  %57 = extractvalue { i32, i32 } %55, 1
  store i32 %56, ptr %_128, align 4
  %58 = getelementptr inbounds i8, ptr %_128, i64 4
  store i32 %57, ptr %58, align 4
  %59 = load i32, ptr %_128, align 4
  %60 = getelementptr inbounds i8, ptr %_128, i64 4
  %61 = load i32, ptr %60, align 4
  %_130 = zext i32 %59 to i64
  %62 = trunc nuw i64 %_130 to i1
  br i1 %62, label %bb74, label %bb78

bb74:                                             ; preds = %bb73
  %63 = getelementptr inbounds i8, ptr %_128, i64 4
  %i = load i32, ptr %63, align 4
  %_136 = sext i32 %i to i64
; invoke <alloc::vec::Vec<T,A> as core::ops::index::Index<I>>::index
  %_134 = invoke align 4 ptr @"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h7aeb1232b4c0bed7E"(ptr align 8 %open, i64 %_136, ptr align 8 @alloc_301d4e2663978e2850f50b82ba108207)
          to label %bb75 unwind label %cleanup5

bb78:                                             ; preds = %bb77, %bb73
  %64 = load i32, ptr %index, align 4
  store i32 %64, ptr %_0, align 4
  br label %bb79

bb75:                                             ; preds = %bb74
  %_133 = load i32, ptr %_134, align 4
  %_140 = sext i32 %i to i64
; invoke <alloc::vec::Vec<T,A> as core::ops::index::Index<I>>::index
  %_138 = invoke align 4 ptr @"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h7aeb1232b4c0bed7E"(ptr align 8 %close, i64 %_140, ptr align 8 @alloc_08b71613548c0c5f551aac667cd49682)
          to label %bb76 unwind label %cleanup5

bb76:                                             ; preds = %bb75
  %_137 = load i32, ptr %_138, align 4
  %_132 = icmp eq i32 %_133, %_137
  br i1 %_132, label %bb77, label %bb72

bb77:                                             ; preds = %bb76
  store i32 %i, ptr %index, align 4
  br label %bb78

bb79:                                             ; preds = %bb65, %bb68, %bb78
; invoke core::ptr::drop_in_place<alloc::vec::Vec<i32>>
  invoke void @"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17h8733d215aa61edc4E"(ptr align 8 %close)
          to label %bb80 unwind label %cleanup4

bb80:                                             ; preds = %bb79
; invoke core::ptr::drop_in_place<alloc::vec::Vec<i32>>
  invoke void @"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17h8733d215aa61edc4E"(ptr align 8 %open)
          to label %bb81 unwind label %cleanup

bb81:                                             ; preds = %bb80
; call core::ptr::drop_in_place<alloc::string::String>
  call void @"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h371fff1e478da1e2E"(ptr align 8 %str)
  %65 = load i32, ptr %_0, align 4
  ret i32 %65

bb51:                                             ; preds = %bb49
  %_94.0 = extractvalue { ptr, i64 } %54, 0
  %_94.1 = extractvalue { ptr, i64 } %54, 1
; invoke core::str::<impl str>::chars
  %66 = invoke { ptr, ptr } @"_ZN4core3str21_$LT$impl$u20$str$GT$5chars17h40f770551010c361E"(ptr align 1 %_94.0, i64 %_94.1)
          to label %bb52 unwind label %cleanup5

bb52:                                             ; preds = %bb51
  %67 = extractvalue { ptr, ptr } %66, 0
  %68 = extractvalue { ptr, ptr } %66, 1
  store ptr %67, ptr %_93, align 8
  %69 = getelementptr inbounds i8, ptr %_93, i64 8
  store ptr %68, ptr %69, align 8
  %_96 = sext i32 %i9 to i64
; invoke core::iter::traits::iterator::Iterator::nth
  %_91 = invoke i32 @_ZN4core4iter6traits8iterator8Iterator3nth17hc3dedf81601ff44eE(ptr align 8 %_93, i64 %_96)
          to label %bb53 unwind label %cleanup5

bb53:                                             ; preds = %bb52
  store i32 %_91, ptr %self.i18, align 4
  %70 = load i32, ptr %self.i18, align 4
  %71 = icmp eq i32 %70, 1114112
  %_2.i19 = select i1 %71, i64 0, i64 1
  %72 = trunc nuw i64 %_2.i19 to i1
  br i1 %72, label %"_ZN4core6option15Option$LT$T$GT$6unwrap17hb7928c9fc9d15c00E.exit23", label %bb2.i20

bb2.i20:                                          ; preds = %bb53
; invoke core::option::unwrap_failed
  invoke void @_ZN4core6option13unwrap_failed17hef2534b77b89c04fE(ptr align 8 @alloc_167656e27831988d0da901f5a5e99792) #23
          to label %.noexc22 unwind label %cleanup5

.noexc22:                                         ; preds = %bb2.i20
  unreachable

"_ZN4core6option15Option$LT$T$GT$6unwrap17hb7928c9fc9d15c00E.exit23": ; preds = %bb53
  %val.i21 = load i32, ptr %self.i18, align 4
  br label %bb54

bb54:                                             ; preds = %"_ZN4core6option15Option$LT$T$GT$6unwrap17hb7928c9fc9d15c00E.exit23"
  %_89 = icmp eq i32 %val.i21, 41
  br i1 %_89, label %bb55, label %bb60

bb60:                                             ; preds = %bb54
  %_111 = sext i32 %i9 to i64
  %_112.0 = add i64 %_111, 1
  %_112.1 = icmp ult i64 %_112.0, %_111
  br i1 %_112.1, label %panic10, label %bb61

bb55:                                             ; preds = %bb54
  %_101 = sext i32 %i9 to i64
  %_102.0 = add i64 %_101, 1
  %_102.1 = icmp ult i64 %_102.0, %_101
  br i1 %_102.1, label %panic11, label %bb56

bb61:                                             ; preds = %bb60
; invoke <alloc::vec::Vec<T,A> as core::ops::index::Index<I>>::index
  %_108 = invoke align 4 ptr @"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h7aeb1232b4c0bed7E"(ptr align 8 %close, i64 %_112.0, ptr align 8 @alloc_80e6a15270a8277f653acc37fcc03142)
          to label %bb62 unwind label %cleanup5

panic10:                                          ; preds = %bb60
; invoke core::panicking::panic_const::panic_const_add_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_a9e9e3ee8054464f939ba2fa465ff140) #24
          to label %unreachable unwind label %cleanup5

bb62:                                             ; preds = %bb61
  %_107 = load i32, ptr %_108, align 4
  %_115 = sext i32 %i9 to i64
; invoke <alloc::vec::Vec<T,A> as core::ops::index::IndexMut<I>>::index_mut
  %_113 = invoke align 4 ptr @"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h4df71a3ba9dfc70aE"(ptr align 8 %close, i64 %_115, ptr align 8 @alloc_61501b7d5a87054b7523e2785d80fd89)
          to label %bb63 unwind label %cleanup5

bb63:                                             ; preds = %bb62
  store i32 %_107, ptr %_113, align 4
  br label %bb47

bb56:                                             ; preds = %bb55
; invoke <alloc::vec::Vec<T,A> as core::ops::index::Index<I>>::index
  %_98 = invoke align 4 ptr @"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h7aeb1232b4c0bed7E"(ptr align 8 %close, i64 %_102.0, ptr align 8 @alloc_ff6adf247f7228c209412bda815307d3)
          to label %bb57 unwind label %cleanup5

panic11:                                          ; preds = %bb55
; invoke core::panicking::panic_const::panic_const_add_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_51153b1563df50bcc677623199831789) #24
          to label %unreachable unwind label %cleanup5

bb57:                                             ; preds = %bb56
  %_97 = load i32, ptr %_98, align 4
  %73 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %_97, i32 1)
  %_103.0 = extractvalue { i32, i1 } %73, 0
  %_103.1 = extractvalue { i32, i1 } %73, 1
  br i1 %_103.1, label %panic12, label %bb58

bb58:                                             ; preds = %bb57
  %_106 = sext i32 %i9 to i64
; invoke <alloc::vec::Vec<T,A> as core::ops::index::IndexMut<I>>::index_mut
  %_104 = invoke align 4 ptr @"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h4df71a3ba9dfc70aE"(ptr align 8 %close, i64 %_106, ptr align 8 @alloc_b8e15b1097f40dccc2e6ef69d6051f23)
          to label %bb59 unwind label %cleanup5

panic12:                                          ; preds = %bb57
; invoke core::panicking::panic_const::panic_const_add_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_1f742f7c70ceb7b56943c20b2ad66d34) #24
          to label %unreachable unwind label %cleanup5

bb59:                                             ; preds = %bb58
  store i32 %_103.0, ptr %_104, align 4
  br label %bb47

bb30:                                             ; preds = %bb28
  %_55.0 = extractvalue { ptr, i64 } %40, 0
  %_55.1 = extractvalue { ptr, i64 } %40, 1
; invoke core::str::<impl str>::chars
  %74 = invoke { ptr, ptr } @"_ZN4core3str21_$LT$impl$u20$str$GT$5chars17h40f770551010c361E"(ptr align 1 %_55.0, i64 %_55.1)
          to label %bb31 unwind label %cleanup5

bb31:                                             ; preds = %bb30
  %75 = extractvalue { ptr, ptr } %74, 0
  %76 = extractvalue { ptr, ptr } %74, 1
  store ptr %75, ptr %_54, align 8
  %77 = getelementptr inbounds i8, ptr %_54, i64 8
  store ptr %76, ptr %77, align 8
  %_58 = sext i32 %i13 to i64
  %_59.0 = sub i64 %_58, 1
  %_59.1 = icmp ult i64 %_58, 1
  br i1 %_59.1, label %panic14, label %bb32

bb32:                                             ; preds = %bb31
; invoke core::iter::traits::iterator::Iterator::nth
  %_52 = invoke i32 @_ZN4core4iter6traits8iterator8Iterator3nth17hc3dedf81601ff44eE(ptr align 8 %_54, i64 %_59.0)
          to label %bb33 unwind label %cleanup5

panic14:                                          ; preds = %bb31
; invoke core::panicking::panic_const::panic_const_sub_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_sub_overflow17h134cc1a7f93654deE(ptr align 8 @alloc_d6b297106faf8a632b28c5f3b2c8f5b9) #24
          to label %unreachable unwind label %cleanup5

bb33:                                             ; preds = %bb32
  store i32 %_52, ptr %self.i, align 4
  %78 = load i32, ptr %self.i, align 4
  %79 = icmp eq i32 %78, 1114112
  %_2.i = select i1 %79, i64 0, i64 1
  %80 = trunc nuw i64 %_2.i to i1
  br i1 %80, label %"_ZN4core6option15Option$LT$T$GT$6unwrap17hb7928c9fc9d15c00E.exit", label %bb2.i

bb2.i:                                            ; preds = %bb33
; invoke core::option::unwrap_failed
  invoke void @_ZN4core6option13unwrap_failed17hef2534b77b89c04fE(ptr align 8 @alloc_4bc4b0a3e868e7ef6c4ee48e4a8370b7) #23
          to label %.noexc unwind label %cleanup5

.noexc:                                           ; preds = %bb2.i
  unreachable

"_ZN4core6option15Option$LT$T$GT$6unwrap17hb7928c9fc9d15c00E.exit": ; preds = %bb33
  %val.i = load i32, ptr %self.i, align 4
  br label %bb34

bb34:                                             ; preds = %"_ZN4core6option15Option$LT$T$GT$6unwrap17hb7928c9fc9d15c00E.exit"
  %_50 = icmp eq i32 %val.i, 40
  br i1 %_50, label %bb35, label %bb40

bb40:                                             ; preds = %bb34
  %_73 = sext i32 %i13 to i64
; invoke <alloc::vec::Vec<T,A> as core::ops::index::Index<I>>::index
  %_71 = invoke align 4 ptr @"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h7aeb1232b4c0bed7E"(ptr align 8 %open, i64 %_73, ptr align 8 @alloc_5a025afecf0ec93f385afbf7b6c2b834)
          to label %bb41 unwind label %cleanup5

bb35:                                             ; preds = %bb34
  %_63 = sext i32 %i13 to i64
; invoke <alloc::vec::Vec<T,A> as core::ops::index::Index<I>>::index
  %_61 = invoke align 4 ptr @"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h7aeb1232b4c0bed7E"(ptr align 8 %open, i64 %_63, ptr align 8 @alloc_295064cbd5ff84d9a463a8f6ed459015)
          to label %bb36 unwind label %cleanup5

bb41:                                             ; preds = %bb40
  %_70 = load i32, ptr %_71, align 4
  %_77 = sext i32 %i13 to i64
  %_78.0 = add i64 %_77, 1
  %_78.1 = icmp ult i64 %_78.0, %_77
  br i1 %_78.1, label %panic15, label %bb42

bb42:                                             ; preds = %bb41
; invoke <alloc::vec::Vec<T,A> as core::ops::index::IndexMut<I>>::index_mut
  %_74 = invoke align 4 ptr @"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h4df71a3ba9dfc70aE"(ptr align 8 %open, i64 %_78.0, ptr align 8 @alloc_c8158441d4fee7340a9870987ce6ba61)
          to label %bb43 unwind label %cleanup5

panic15:                                          ; preds = %bb41
; invoke core::panicking::panic_const::panic_const_add_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_634267c133ef67fd06948a03caeadc35) #24
          to label %unreachable unwind label %cleanup5

bb43:                                             ; preds = %bb42
  store i32 %_70, ptr %_74, align 4
  br label %bb25

bb36:                                             ; preds = %bb35
  %_60 = load i32, ptr %_61, align 4
  %81 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %_60, i32 1)
  %_64.0 = extractvalue { i32, i1 } %81, 0
  %_64.1 = extractvalue { i32, i1 } %81, 1
  br i1 %_64.1, label %panic16, label %bb37

bb37:                                             ; preds = %bb36
  %_68 = sext i32 %i13 to i64
  %_69.0 = add i64 %_68, 1
  %_69.1 = icmp ult i64 %_69.0, %_68
  br i1 %_69.1, label %panic17, label %bb38

panic16:                                          ; preds = %bb36
; invoke core::panicking::panic_const::panic_const_add_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_71f8046a981fce8951cce6116ec12114) #24
          to label %unreachable unwind label %cleanup5

bb38:                                             ; preds = %bb37
; invoke <alloc::vec::Vec<T,A> as core::ops::index::IndexMut<I>>::index_mut
  %_65 = invoke align 4 ptr @"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h4df71a3ba9dfc70aE"(ptr align 8 %open, i64 %_69.0, ptr align 8 @alloc_6719a1b86bdb1dc54885f7db6d9c6092)
          to label %bb39 unwind label %cleanup5

panic17:                                          ; preds = %bb37
; invoke core::panicking::panic_const::panic_const_add_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_03fc7997a1d8d0fdf9e8817d8eaebae6) #24
          to label %unreachable unwind label %cleanup5

bb39:                                             ; preds = %bb38
  store i32 %_64.0, ptr %_65, align 4
  br label %bb25

bb27:                                             ; No predecessors!
  unreachable

terminate:                                        ; preds = %bb85, %bb84, %bb83
  %82 = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer
; call core::panicking::panic_in_cleanup
  call void @_ZN4core9panicking16panic_in_cleanup17h5f6bde45d17ae243E() #21
  unreachable

bb86:                                             ; preds = %bb85
  %83 = load ptr, ptr %0, align 8
  %84 = getelementptr inbounds i8, ptr %0, i64 8
  %85 = load i32, ptr %84, align 8
  %86 = insertvalue { ptr, i32 } poison, ptr %83, 0
  %87 = insertvalue { ptr, i32 } %86, i32 %85, 1
  resume { ptr, i32 } %87
}

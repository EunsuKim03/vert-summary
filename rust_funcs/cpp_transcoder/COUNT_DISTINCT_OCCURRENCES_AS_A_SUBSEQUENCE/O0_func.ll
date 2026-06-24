define i32 @f_gold(ptr align 8 %s, ptr align 8 %t) unnamed_addr #3 personality ptr @rust_eh_personality {
start:
  %0 = alloca [16 x i8], align 8
  %_95 = alloca [1 x i8], align 1
  %_60 = alloca [16 x i8], align 8
  %_58 = alloca [4 x i8], align 4
  %_52 = alloca [16 x i8], align 8
  %_50 = alloca [4 x i8], align 4
  %_44 = alloca [16 x i8], align 8
  %iter3 = alloca [24 x i8], align 8
  %_42 = alloca [24 x i8], align 8
  %_41 = alloca [24 x i8], align 8
  %_37 = alloca [16 x i8], align 8
  %iter2 = alloca [24 x i8], align 8
  %_35 = alloca [24 x i8], align 8
  %_34 = alloca [24 x i8], align 8
  %_27 = alloca [16 x i8], align 8
  %iter1 = alloca [24 x i8], align 8
  %_25 = alloca [24 x i8], align 8
  %_24 = alloca [24 x i8], align 8
  %_17 = alloca [16 x i8], align 8
  %iter = alloca [24 x i8], align 8
  %_15 = alloca [24 x i8], align 8
  %_14 = alloca [24 x i8], align 8
  %_9 = alloca [24 x i8], align 8
  %mat = alloca [24 x i8], align 8
  %_0 = alloca [4 x i8], align 4
  store i8 0, ptr %_95, align 1
; invoke alloc::string::String::len
  %m = invoke i64 @_ZN5alloc6string6String3len17he74e7cdd0fef997fE(ptr align 8 %t)
          to label %bb1 unwind label %cleanup

bb70:                                             ; preds = %bb73, %bb74, %bb69, %cleanup
; invoke core::ptr::drop_in_place<alloc::string::String>
  invoke void @"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17ha3342ee7a17542a8E"(ptr align 8 %t) #22
          to label %bb71 unwind label %terminate

cleanup:                                          ; preds = %bb64, %bb5, %panic, %bb1, %start
  %1 = landingpad { ptr, i32 }
          cleanup
  %2 = extractvalue { ptr, i32 } %1, 0
  %3 = extractvalue { ptr, i32 } %1, 1
  store ptr %2, ptr %0, align 8
  %4 = getelementptr inbounds i8, ptr %0, i64 8
  store i32 %3, ptr %4, align 8
  br label %bb70

bb1:                                              ; preds = %start
; invoke alloc::string::String::len
  %n = invoke i64 @_ZN5alloc6string6String3len17he74e7cdd0fef997fE(ptr align 8 %s)
          to label %bb2 unwind label %cleanup

bb2:                                              ; preds = %bb1
  %_7 = icmp ugt i64 %m, %n
  br i1 %_7, label %bb3, label %bb4

bb4:                                              ; preds = %bb2
  %_11.0 = add i64 %n, 1
  %_11.1 = icmp ult i64 %_11.0, %n
  br i1 %_11.1, label %panic, label %bb5

bb3:                                              ; preds = %bb2
  store i32 0, ptr %_0, align 4
; invoke core::ptr::drop_in_place<alloc::string::String>
  invoke void @"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17ha3342ee7a17542a8E"(ptr align 8 %t)
          to label %bb67 unwind label %cleanup7

bb5:                                              ; preds = %bb4
; invoke alloc::vec::from_elem
  invoke void @_ZN5alloc3vec9from_elem17h1a9871d84209acacE(ptr sret([24 x i8]) align 8 %_9, i32 0, i64 %_11.0)
          to label %bb6 unwind label %cleanup

panic:                                            ; preds = %bb4
; invoke core::panicking::panic_const::panic_const_add_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_90dfc06f481242d8c4134c5e658d3cdc) #24
          to label %unreachable unwind label %cleanup

unreachable:                                      ; preds = %panic14, %panic13, %panic12, %panic11, %panic10, %panic9, %panic8, %panic4, %panic
  unreachable

bb6:                                              ; preds = %bb5
  store i8 1, ptr %_95, align 1
  %_13.0 = add i64 %m, 1
  %_13.1 = icmp ult i64 %_13.0, %m
  br i1 %_13.1, label %panic4, label %bb7

bb7:                                              ; preds = %bb6
  store i8 0, ptr %_95, align 1
; invoke alloc::vec::from_elem
  invoke void @_ZN5alloc3vec9from_elem17h78cfe21d16aa7b1dE(ptr sret([24 x i8]) align 8 %mat, ptr align 8 %_9, i64 %_13.0)
          to label %bb8 unwind label %cleanup5

panic4:                                           ; preds = %bb6
; invoke core::panicking::panic_const::panic_const_add_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_05bfd662aec452d20e44115a10dafd96) #24
          to label %unreachable unwind label %cleanup5

bb74:                                             ; preds = %cleanup5
  %5 = load i8, ptr %_95, align 1
  %6 = trunc nuw i8 %5 to i1
  br i1 %6, label %bb73, label %bb70

cleanup5:                                         ; preds = %bb7, %panic4
  %7 = landingpad { ptr, i32 }
          cleanup
  %8 = extractvalue { ptr, i32 } %7, 0
  %9 = extractvalue { ptr, i32 } %7, 1
  store ptr %8, ptr %0, align 8
  %10 = getelementptr inbounds i8, ptr %0, i64 8
  store i32 %9, ptr %10, align 8
  br label %bb74

bb8:                                              ; preds = %bb7
  store i8 0, ptr %_95, align 1
; invoke core::ops::range::RangeInclusive<Idx>::new
  invoke void @"_ZN4core3ops5range25RangeInclusive$LT$Idx$GT$3new17h94921d8f59b6cb2cE"(ptr sret([24 x i8]) align 8 %_15, i64 1, i64 %m)
          to label %bb9 unwind label %cleanup6

bb69:                                             ; preds = %cleanup6
; invoke core::ptr::drop_in_place<alloc::vec::Vec<alloc::vec::Vec<i32>>>
  invoke void @"_ZN4core3ptr70drop_in_place$LT$alloc..vec..Vec$LT$alloc..vec..Vec$LT$i32$GT$$GT$$GT$17h7bc7584ae89e2f8cE"(ptr align 8 %mat) #22
          to label %bb70 unwind label %terminate

cleanup6:                                         ; preds = %bb16, %bb14, %bb24, %bb22, %bb50, %bb49, %bb48, %panic14, %bb46, %bb61, %bb60, %panic13, %bb58, %panic12, %bb56, %panic11, %bb54, %panic10, %bb52, %bb44, %bb43, %panic9, %bb41, %bb40, %bb39, %panic8, %bb37, %bb36, %bb34, %bb32, %bb30, %bb63, %bb31, %bb28, %bb26, %bb23, %bb20, %bb18, %bb15, %bb11, %bb9, %bb8
  %11 = landingpad { ptr, i32 }
          cleanup
  %12 = extractvalue { ptr, i32 } %11, 0
  %13 = extractvalue { ptr, i32 } %11, 1
  store ptr %12, ptr %0, align 8
  %14 = getelementptr inbounds i8, ptr %0, i64 8
  store i32 %13, ptr %14, align 8
  br label %bb69

bb9:                                              ; preds = %bb8
; invoke <I as core::iter::traits::collect::IntoIterator>::into_iter
  invoke void @"_ZN63_$LT$I$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17h4d2503149eed4c5aE"(ptr sret([24 x i8]) align 8 %_14, ptr align 8 %_15)
          to label %bb10 unwind label %cleanup6

bb10:                                             ; preds = %bb9
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %iter, ptr align 8 %_14, i64 24, i1 false)
  br label %bb11

bb11:                                             ; preds = %bb17, %bb10
; invoke core::iter::range::<impl core::iter::traits::iterator::Iterator for core::ops::range::RangeInclusive<A>>::next
  %15 = invoke { i64, i64 } @"_ZN4core4iter5range110_$LT$impl$u20$core..iter..traits..iterator..Iterator$u20$for$u20$core..ops..range..RangeInclusive$LT$A$GT$$GT$4next17h1a1c7d0209043353E"(ptr align 8 %iter)
          to label %bb12 unwind label %cleanup6

bb12:                                             ; preds = %bb11
  %16 = extractvalue { i64, i64 } %15, 0
  %17 = extractvalue { i64, i64 } %15, 1
  store i64 %16, ptr %_17, align 8
  %18 = getelementptr inbounds i8, ptr %_17, i64 8
  store i64 %17, ptr %18, align 8
  %_19 = load i64, ptr %_17, align 8
  %19 = getelementptr inbounds i8, ptr %_17, i64 8
  %20 = load i64, ptr %19, align 8
  %21 = trunc nuw i64 %_19 to i1
  br i1 %21, label %bb14, label %bb15

bb14:                                             ; preds = %bb12
  %22 = getelementptr inbounds i8, ptr %_17, i64 8
  %i16 = load i64, ptr %22, align 8
; invoke <alloc::vec::Vec<T,A> as core::ops::index::IndexMut<I>>::index_mut
  %_22 = invoke align 8 ptr @"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h422855d8df2505e3E"(ptr align 8 %mat, i64 %i16, ptr align 8 @alloc_c3be058e40d8d19b19fafc29c5892dfd)
          to label %bb16 unwind label %cleanup6

bb15:                                             ; preds = %bb12
; invoke core::ops::range::RangeInclusive<Idx>::new
  invoke void @"_ZN4core3ops5range25RangeInclusive$LT$Idx$GT$3new17h94921d8f59b6cb2cE"(ptr sret([24 x i8]) align 8 %_25, i64 0, i64 %n)
          to label %bb18 unwind label %cleanup6

bb18:                                             ; preds = %bb15
; invoke <I as core::iter::traits::collect::IntoIterator>::into_iter
  invoke void @"_ZN63_$LT$I$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17h4d2503149eed4c5aE"(ptr sret([24 x i8]) align 8 %_24, ptr align 8 %_25)
          to label %bb19 unwind label %cleanup6

bb19:                                             ; preds = %bb18
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %iter1, ptr align 8 %_24, i64 24, i1 false)
  br label %bb20

bb20:                                             ; preds = %bb25, %bb19
; invoke core::iter::range::<impl core::iter::traits::iterator::Iterator for core::ops::range::RangeInclusive<A>>::next
  %23 = invoke { i64, i64 } @"_ZN4core4iter5range110_$LT$impl$u20$core..iter..traits..iterator..Iterator$u20$for$u20$core..ops..range..RangeInclusive$LT$A$GT$$GT$4next17h1a1c7d0209043353E"(ptr align 8 %iter1)
          to label %bb21 unwind label %cleanup6

bb21:                                             ; preds = %bb20
  %24 = extractvalue { i64, i64 } %23, 0
  %25 = extractvalue { i64, i64 } %23, 1
  store i64 %24, ptr %_27, align 8
  %26 = getelementptr inbounds i8, ptr %_27, i64 8
  store i64 %25, ptr %26, align 8
  %_29 = load i64, ptr %_27, align 8
  %27 = getelementptr inbounds i8, ptr %_27, i64 8
  %28 = load i64, ptr %27, align 8
  %29 = trunc nuw i64 %_29 to i1
  br i1 %29, label %bb22, label %bb23

bb22:                                             ; preds = %bb21
  %30 = getelementptr inbounds i8, ptr %_27, i64 8
  %j15 = load i64, ptr %30, align 8
; invoke <alloc::vec::Vec<T,A> as core::ops::index::IndexMut<I>>::index_mut
  %_32 = invoke align 8 ptr @"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h422855d8df2505e3E"(ptr align 8 %mat, i64 0, ptr align 8 @alloc_4fbf94089a080e87ab73176eefafa1f9)
          to label %bb24 unwind label %cleanup6

bb23:                                             ; preds = %bb21
; invoke core::ops::range::RangeInclusive<Idx>::new
  invoke void @"_ZN4core3ops5range25RangeInclusive$LT$Idx$GT$3new17h94921d8f59b6cb2cE"(ptr sret([24 x i8]) align 8 %_35, i64 1, i64 %m)
          to label %bb26 unwind label %cleanup6

bb26:                                             ; preds = %bb23
; invoke <I as core::iter::traits::collect::IntoIterator>::into_iter
  invoke void @"_ZN63_$LT$I$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17h4d2503149eed4c5aE"(ptr sret([24 x i8]) align 8 %_34, ptr align 8 %_35)
          to label %bb27 unwind label %cleanup6

bb27:                                             ; preds = %bb26
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %iter2, ptr align 8 %_34, i64 24, i1 false)
  br label %bb28

bb28:                                             ; preds = %bb35, %bb27
; invoke core::iter::range::<impl core::iter::traits::iterator::Iterator for core::ops::range::RangeInclusive<A>>::next
  %31 = invoke { i64, i64 } @"_ZN4core4iter5range110_$LT$impl$u20$core..iter..traits..iterator..Iterator$u20$for$u20$core..ops..range..RangeInclusive$LT$A$GT$$GT$4next17h1a1c7d0209043353E"(ptr align 8 %iter2)
          to label %bb29 unwind label %cleanup6

bb29:                                             ; preds = %bb28
  %32 = extractvalue { i64, i64 } %31, 0
  %33 = extractvalue { i64, i64 } %31, 1
  store i64 %32, ptr %_37, align 8
  %34 = getelementptr inbounds i8, ptr %_37, i64 8
  store i64 %33, ptr %34, align 8
  %_39 = load i64, ptr %_37, align 8
  %35 = getelementptr inbounds i8, ptr %_37, i64 8
  %36 = load i64, ptr %35, align 8
  %37 = trunc nuw i64 %_39 to i1
  br i1 %37, label %bb30, label %bb31

bb30:                                             ; preds = %bb29
  %38 = getelementptr inbounds i8, ptr %_37, i64 8
  %i = load i64, ptr %38, align 8
; invoke core::ops::range::RangeInclusive<Idx>::new
  invoke void @"_ZN4core3ops5range25RangeInclusive$LT$Idx$GT$3new17h94921d8f59b6cb2cE"(ptr sret([24 x i8]) align 8 %_42, i64 1, i64 %n)
          to label %bb32 unwind label %cleanup6

bb31:                                             ; preds = %bb29
; invoke <alloc::vec::Vec<T,A> as core::ops::index::Index<I>>::index
  %_93 = invoke align 8 ptr @"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h6d6ee6c507e3fd55E"(ptr align 8 %mat, i64 %m, ptr align 8 @alloc_18df641d2c2df62652d096d93f852091)
          to label %bb63 unwind label %cleanup6

bb63:                                             ; preds = %bb31
; invoke <alloc::vec::Vec<T,A> as core::ops::index::Index<I>>::index
  %_92 = invoke align 4 ptr @"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h435b7eec00325955E"(ptr align 8 %_93, i64 %n, ptr align 8 @alloc_b00c72d6caf29025e90c0ab64fa1eed6)
          to label %bb64 unwind label %cleanup6

bb64:                                             ; preds = %bb63
  %39 = load i32, ptr %_92, align 4
  store i32 %39, ptr %_0, align 4
; invoke core::ptr::drop_in_place<alloc::vec::Vec<alloc::vec::Vec<i32>>>
  invoke void @"_ZN4core3ptr70drop_in_place$LT$alloc..vec..Vec$LT$alloc..vec..Vec$LT$i32$GT$$GT$$GT$17h7bc7584ae89e2f8cE"(ptr align 8 %mat)
          to label %bb65 unwind label %cleanup

bb65:                                             ; preds = %bb64
; invoke core::ptr::drop_in_place<alloc::string::String>
  invoke void @"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17ha3342ee7a17542a8E"(ptr align 8 %t)
          to label %bb66 unwind label %cleanup7

bb71:                                             ; preds = %bb70, %cleanup7
; invoke core::ptr::drop_in_place<alloc::string::String>
  invoke void @"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17ha3342ee7a17542a8E"(ptr align 8 %s) #22
          to label %bb72 unwind label %terminate

cleanup7:                                         ; preds = %bb3, %bb65
  %40 = landingpad { ptr, i32 }
          cleanup
  %41 = extractvalue { ptr, i32 } %40, 0
  %42 = extractvalue { ptr, i32 } %40, 1
  store ptr %41, ptr %0, align 8
  %43 = getelementptr inbounds i8, ptr %0, i64 8
  store i32 %42, ptr %43, align 8
  br label %bb71

bb66:                                             ; preds = %bb65
; call core::ptr::drop_in_place<alloc::string::String>
  call void @"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17ha3342ee7a17542a8E"(ptr align 8 %s)
  br label %bb68

bb68:                                             ; preds = %bb67, %bb66
  %44 = load i32, ptr %_0, align 4
  ret i32 %44

bb32:                                             ; preds = %bb30
; invoke <I as core::iter::traits::collect::IntoIterator>::into_iter
  invoke void @"_ZN63_$LT$I$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17h4d2503149eed4c5aE"(ptr sret([24 x i8]) align 8 %_41, ptr align 8 %_42)
          to label %bb33 unwind label %cleanup6

bb33:                                             ; preds = %bb32
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %iter3, ptr align 8 %_41, i64 24, i1 false)
  br label %bb34

bb34:                                             ; preds = %bb51, %bb62, %bb33
; invoke core::iter::range::<impl core::iter::traits::iterator::Iterator for core::ops::range::RangeInclusive<A>>::next
  %45 = invoke { i64, i64 } @"_ZN4core4iter5range110_$LT$impl$u20$core..iter..traits..iterator..Iterator$u20$for$u20$core..ops..range..RangeInclusive$LT$A$GT$$GT$4next17h1a1c7d0209043353E"(ptr align 8 %iter3)
          to label %bb35 unwind label %cleanup6

bb35:                                             ; preds = %bb34
  %46 = extractvalue { i64, i64 } %45, 0
  %47 = extractvalue { i64, i64 } %45, 1
  store i64 %46, ptr %_44, align 8
  %48 = getelementptr inbounds i8, ptr %_44, i64 8
  store i64 %47, ptr %48, align 8
  %_46 = load i64, ptr %_44, align 8
  %49 = getelementptr inbounds i8, ptr %_44, i64 8
  %50 = load i64, ptr %49, align 8
  %51 = trunc nuw i64 %_46 to i1
  br i1 %51, label %bb36, label %bb28

bb36:                                             ; preds = %bb35
  %52 = getelementptr inbounds i8, ptr %_44, i64 8
  %j = load i64, ptr %52, align 8
; invoke <alloc::string::String as core::ops::deref::Deref>::deref
  %53 = invoke { ptr, i64 } @"_ZN65_$LT$alloc..string..String$u20$as$u20$core..ops..deref..Deref$GT$5deref17hf35a5918e8a2eec3E"(ptr align 8 %t)
          to label %bb37 unwind label %cleanup6

bb37:                                             ; preds = %bb36
  %_53.0 = extractvalue { ptr, i64 } %53, 0
  %_53.1 = extractvalue { ptr, i64 } %53, 1
; invoke core::str::<impl str>::chars
  %54 = invoke { ptr, ptr } @"_ZN4core3str21_$LT$impl$u20$str$GT$5chars17hacdcfb3751c834bdE"(ptr align 1 %_53.0, i64 %_53.1)
          to label %bb38 unwind label %cleanup6

bb38:                                             ; preds = %bb37
  %55 = extractvalue { ptr, ptr } %54, 0
  %56 = extractvalue { ptr, ptr } %54, 1
  store ptr %55, ptr %_52, align 8
  %57 = getelementptr inbounds i8, ptr %_52, i64 8
  store ptr %56, ptr %57, align 8
  %_56.0 = sub i64 %i, 1
  %_56.1 = icmp ult i64 %i, 1
  br i1 %_56.1, label %panic8, label %bb39

bb39:                                             ; preds = %bb38
; invoke core::iter::traits::iterator::Iterator::nth
  %58 = invoke i32 @_ZN4core4iter6traits8iterator8Iterator3nth17h8e02ce6e53c9c700E(ptr align 8 %_52, i64 %_56.0)
          to label %bb40 unwind label %cleanup6

panic8:                                           ; preds = %bb38
; invoke core::panicking::panic_const::panic_const_sub_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_sub_overflow17h134cc1a7f93654deE(ptr align 8 @alloc_5a23050f737f5b3e7d939d0892a6a596) #24
          to label %unreachable unwind label %cleanup6

bb40:                                             ; preds = %bb39
  store i32 %58, ptr %_50, align 4
; invoke <alloc::string::String as core::ops::deref::Deref>::deref
  %59 = invoke { ptr, i64 } @"_ZN65_$LT$alloc..string..String$u20$as$u20$core..ops..deref..Deref$GT$5deref17hf35a5918e8a2eec3E"(ptr align 8 %s)
          to label %bb41 unwind label %cleanup6

bb41:                                             ; preds = %bb40
  %_61.0 = extractvalue { ptr, i64 } %59, 0
  %_61.1 = extractvalue { ptr, i64 } %59, 1
; invoke core::str::<impl str>::chars
  %60 = invoke { ptr, ptr } @"_ZN4core3str21_$LT$impl$u20$str$GT$5chars17hacdcfb3751c834bdE"(ptr align 1 %_61.0, i64 %_61.1)
          to label %bb42 unwind label %cleanup6

bb42:                                             ; preds = %bb41
  %61 = extractvalue { ptr, ptr } %60, 0
  %62 = extractvalue { ptr, ptr } %60, 1
  store ptr %61, ptr %_60, align 8
  %63 = getelementptr inbounds i8, ptr %_60, i64 8
  store ptr %62, ptr %63, align 8
  %_64.0 = sub i64 %j, 1
  %_64.1 = icmp ult i64 %j, 1
  br i1 %_64.1, label %panic9, label %bb43

bb43:                                             ; preds = %bb42
; invoke core::iter::traits::iterator::Iterator::nth
  %64 = invoke i32 @_ZN4core4iter6traits8iterator8Iterator3nth17h8e02ce6e53c9c700E(ptr align 8 %_60, i64 %_64.0)
          to label %bb44 unwind label %cleanup6

panic9:                                           ; preds = %bb42
; invoke core::panicking::panic_const::panic_const_sub_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_sub_overflow17h134cc1a7f93654deE(ptr align 8 @alloc_2d13c3354f9aa54d56b6e8854137f4c0) #24
          to label %unreachable unwind label %cleanup6

bb44:                                             ; preds = %bb43
  store i32 %64, ptr %_58, align 4
; invoke core::cmp::PartialEq::ne
  %_48 = invoke zeroext i1 @_ZN4core3cmp9PartialEq2ne17heac18b1a62767380E(ptr align 4 %_50, ptr align 4 %_58)
          to label %bb45 unwind label %cleanup6

bb45:                                             ; preds = %bb44
  br i1 %_48, label %bb46, label %bb52

bb52:                                             ; preds = %bb45
; invoke <alloc::vec::Vec<T,A> as core::ops::index::Index<I>>::index
  %_76 = invoke align 8 ptr @"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h6d6ee6c507e3fd55E"(ptr align 8 %mat, i64 %i, ptr align 8 @alloc_56992e00ea9bee0fa107355f609e55bc)
          to label %bb53 unwind label %cleanup6

bb46:                                             ; preds = %bb45
; invoke <alloc::vec::Vec<T,A> as core::ops::index::Index<I>>::index
  %_67 = invoke align 8 ptr @"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h6d6ee6c507e3fd55E"(ptr align 8 %mat, i64 %i, ptr align 8 @alloc_848d5804101f47dc7592003f085a5536)
          to label %bb47 unwind label %cleanup6

bb53:                                             ; preds = %bb52
  %_79.0 = sub i64 %j, 1
  %_79.1 = icmp ult i64 %j, 1
  br i1 %_79.1, label %panic10, label %bb54

bb54:                                             ; preds = %bb53
; invoke <alloc::vec::Vec<T,A> as core::ops::index::Index<I>>::index
  %_75 = invoke align 4 ptr @"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h435b7eec00325955E"(ptr align 8 %_76, i64 %_79.0, ptr align 8 @alloc_1d288691f361df57db325cd647d3e42f)
          to label %bb55 unwind label %cleanup6

panic10:                                          ; preds = %bb53
; invoke core::panicking::panic_const::panic_const_sub_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_sub_overflow17h134cc1a7f93654deE(ptr align 8 @alloc_0e660c258bcc7cfbc0e0b01fb23556c7) #24
          to label %unreachable unwind label %cleanup6

bb55:                                             ; preds = %bb54
  %_74 = load i32, ptr %_75, align 4
  %_85.0 = sub i64 %i, 1
  %_85.1 = icmp ult i64 %i, 1
  br i1 %_85.1, label %panic11, label %bb56

bb56:                                             ; preds = %bb55
; invoke <alloc::vec::Vec<T,A> as core::ops::index::Index<I>>::index
  %_82 = invoke align 8 ptr @"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h6d6ee6c507e3fd55E"(ptr align 8 %mat, i64 %_85.0, ptr align 8 @alloc_ccca52a54b9e46b339b9a91748cb89ae)
          to label %bb57 unwind label %cleanup6

panic11:                                          ; preds = %bb55
; invoke core::panicking::panic_const::panic_const_sub_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_sub_overflow17h134cc1a7f93654deE(ptr align 8 @alloc_b3eff6d788e036ea2ba4e2c2a82fdd8f) #24
          to label %unreachable unwind label %cleanup6

bb57:                                             ; preds = %bb56
  %_87.0 = sub i64 %j, 1
  %_87.1 = icmp ult i64 %j, 1
  br i1 %_87.1, label %panic12, label %bb58

bb58:                                             ; preds = %bb57
; invoke <alloc::vec::Vec<T,A> as core::ops::index::Index<I>>::index
  %_81 = invoke align 4 ptr @"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h435b7eec00325955E"(ptr align 8 %_82, i64 %_87.0, ptr align 8 @alloc_ab227fbe6d82a269a084c9d7b91d7b5a)
          to label %bb59 unwind label %cleanup6

panic12:                                          ; preds = %bb57
; invoke core::panicking::panic_const::panic_const_sub_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_sub_overflow17h134cc1a7f93654deE(ptr align 8 @alloc_06c1691c266a8076e5b323dcc48db528) #24
          to label %unreachable unwind label %cleanup6

bb59:                                             ; preds = %bb58
  %_80 = load i32, ptr %_81, align 4
  %65 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %_74, i32 %_80)
  %_88.0 = extractvalue { i32, i1 } %65, 0
  %_88.1 = extractvalue { i32, i1 } %65, 1
  br i1 %_88.1, label %panic13, label %bb60

bb60:                                             ; preds = %bb59
; invoke <alloc::vec::Vec<T,A> as core::ops::index::IndexMut<I>>::index_mut
  %_90 = invoke align 8 ptr @"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h422855d8df2505e3E"(ptr align 8 %mat, i64 %i, ptr align 8 @alloc_d9fd622e0fa8703027a55eaa646e2ad1)
          to label %bb61 unwind label %cleanup6

panic13:                                          ; preds = %bb59
; invoke core::panicking::panic_const::panic_const_add_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_3f0104876f03e29a1241202117a437b4) #24
          to label %unreachable unwind label %cleanup6

bb61:                                             ; preds = %bb60
; invoke <alloc::vec::Vec<T,A> as core::ops::index::IndexMut<I>>::index_mut
  %_89 = invoke align 4 ptr @"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h20f659aaae3e52edE"(ptr align 8 %_90, i64 %j, ptr align 8 @alloc_f8fe858b8c1558f2ee4927fb6c14fba7)
          to label %bb62 unwind label %cleanup6

bb62:                                             ; preds = %bb61
  store i32 %_88.0, ptr %_89, align 4
  br label %bb34

bb47:                                             ; preds = %bb46
  %_70.0 = sub i64 %j, 1
  %_70.1 = icmp ult i64 %j, 1
  br i1 %_70.1, label %panic14, label %bb48

bb48:                                             ; preds = %bb47
; invoke <alloc::vec::Vec<T,A> as core::ops::index::Index<I>>::index
  %_66 = invoke align 4 ptr @"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h435b7eec00325955E"(ptr align 8 %_67, i64 %_70.0, ptr align 8 @alloc_3cb0aa2108432cf44b493bbd57625613)
          to label %bb49 unwind label %cleanup6

panic14:                                          ; preds = %bb47
; invoke core::panicking::panic_const::panic_const_sub_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_sub_overflow17h134cc1a7f93654deE(ptr align 8 @alloc_613b615685f350b9d98af9276d8ca610) #24
          to label %unreachable unwind label %cleanup6

bb49:                                             ; preds = %bb48
  %_65 = load i32, ptr %_66, align 4
; invoke <alloc::vec::Vec<T,A> as core::ops::index::IndexMut<I>>::index_mut
  %_72 = invoke align 8 ptr @"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h422855d8df2505e3E"(ptr align 8 %mat, i64 %i, ptr align 8 @alloc_7bcd66ac1e095f8f04f21148af59f00d)
          to label %bb50 unwind label %cleanup6

bb50:                                             ; preds = %bb49
; invoke <alloc::vec::Vec<T,A> as core::ops::index::IndexMut<I>>::index_mut
  %_71 = invoke align 4 ptr @"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h20f659aaae3e52edE"(ptr align 8 %_72, i64 %j, ptr align 8 @alloc_4b0293b4d2fd5ea24fc25f1e54d47bb0)
          to label %bb51 unwind label %cleanup6

bb51:                                             ; preds = %bb50
  store i32 %_65, ptr %_71, align 4
  br label %bb34

bb24:                                             ; preds = %bb22
; invoke <alloc::vec::Vec<T,A> as core::ops::index::IndexMut<I>>::index_mut
  %_31 = invoke align 4 ptr @"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h20f659aaae3e52edE"(ptr align 8 %_32, i64 %j15, ptr align 8 @alloc_d214a5199dd5fd71a6da2179005950f1)
          to label %bb25 unwind label %cleanup6

bb25:                                             ; preds = %bb24
  store i32 1, ptr %_31, align 4
  br label %bb20

bb16:                                             ; preds = %bb14
; invoke <alloc::vec::Vec<T,A> as core::ops::index::IndexMut<I>>::index_mut
  %_21 = invoke align 4 ptr @"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h20f659aaae3e52edE"(ptr align 8 %_22, i64 0, ptr align 8 @alloc_ee3ebfdcd74c75e2032f5e61df668a86)
          to label %bb17 unwind label %cleanup6

bb17:                                             ; preds = %bb16
  store i32 0, ptr %_21, align 4
  br label %bb11

bb13:                                             ; No predecessors!
  unreachable

terminate:                                        ; preds = %bb71, %bb70, %bb73, %bb69
  %66 = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer
; call core::panicking::panic_in_cleanup
  call void @_ZN4core9panicking16panic_in_cleanup17h5f6bde45d17ae243E() #21
  unreachable

bb73:                                             ; preds = %bb74
; invoke core::ptr::drop_in_place<alloc::vec::Vec<i32>>
  invoke void @"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17hab352d418f4da754E"(ptr align 8 %_9) #22
          to label %bb70 unwind label %terminate

bb67:                                             ; preds = %bb3
; call core::ptr::drop_in_place<alloc::string::String>
  call void @"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17ha3342ee7a17542a8E"(ptr align 8 %s)
  br label %bb68

bb72:                                             ; preds = %bb71
  %67 = load ptr, ptr %0, align 8
  %68 = getelementptr inbounds i8, ptr %0, i64 8
  %69 = load i32, ptr %68, align 8
  %70 = insertvalue { ptr, i32 } poison, ptr %67, 0
  %71 = insertvalue { ptr, i32 } %70, i32 %69, 1
  resume { ptr, i32 } %71
}

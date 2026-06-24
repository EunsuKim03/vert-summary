define i32 @f_gold(ptr align 8 %str) unnamed_addr #3 personality ptr @rust_eh_personality {
start:
  %0 = alloca [16 x i8], align 8
  %_141 = alloca [1 x i8], align 1
  %_97 = alloca [16 x i8], align 8
  %iter4 = alloca [24 x i8], align 8
  %_93 = alloca [24 x i8], align 8
  %_92 = alloca [24 x i8], align 8
  %_41 = alloca [16 x i8], align 8
  %iter3 = alloca [16 x i8], align 8
  %_30 = alloca [16 x i8], align 8
  %iter2 = alloca [24 x i8], align 8
  %_28 = alloca [24 x i8], align 8
  %_27 = alloca [24 x i8], align 8
  %_20 = alloca [16 x i8], align 8
  %iter1 = alloca [24 x i8], align 8
  %_18 = alloca [24 x i8], align 8
  %_17 = alloca [24 x i8], align 8
  %_13 = alloca [16 x i8], align 8
  %iter = alloca [24 x i8], align 8
  %_11 = alloca [24 x i8], align 8
  %_10 = alloca [24 x i8], align 8
  %_5 = alloca [24 x i8], align 8
  %dp = alloca [24 x i8], align 8
  store i8 0, ptr %_141, align 1
; invoke alloc::string::String::len
  %N = invoke i64 @_ZN5alloc6string6String3len17hd03eb50fab837879E(ptr align 8 %str)
          to label %bb1 unwind label %cleanup

bb92:                                             ; preds = %bb94, %bb95, %bb91, %cleanup
; invoke core::ptr::drop_in_place<alloc::string::String>
  invoke void @"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h19694d511a22bb7dE"(ptr align 8 %str) #23
          to label %bb93 unwind label %terminate

cleanup:                                          ; preds = %bb88, %bb2, %panic, %start
  %1 = landingpad { ptr, i32 }
          cleanup
  %2 = extractvalue { ptr, i32 } %1, 0
  %3 = extractvalue { ptr, i32 } %1, 1
  store ptr %2, ptr %0, align 8
  %4 = getelementptr inbounds i8, ptr %0, i64 8
  store i32 %3, ptr %4, align 8
  br label %bb92

bb1:                                              ; preds = %start
  %_7.0 = add i64 %N, 1
  %_7.1 = icmp ult i64 %_7.0, %N
  br i1 %_7.1, label %panic, label %bb2

bb2:                                              ; preds = %bb1
; invoke alloc::vec::from_elem
  invoke void @_ZN5alloc3vec9from_elem17h44f8ddfa4e19ab92E(ptr sret([24 x i8]) align 8 %_5, i32 0, i64 %_7.0)
          to label %bb3 unwind label %cleanup

panic:                                            ; preds = %bb1
; invoke core::panicking::panic_const::panic_const_add_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_445651b784785f5683dfaa56b9fdb786) #25
          to label %unreachable unwind label %cleanup

unreachable:                                      ; preds = %panic26, %panic25, %panic24, %panic23, %panic22, %panic21, %panic20, %panic19, %panic18, %panic17, %panic16, %panic15, %panic14, %panic13, %panic12, %panic11, %panic10, %panic9, %panic8, %panic5, %panic
  unreachable

bb3:                                              ; preds = %bb2
  store i8 1, ptr %_141, align 1
  %_9.0 = add i64 %N, 1
  %_9.1 = icmp ult i64 %_9.0, %N
  br i1 %_9.1, label %panic5, label %bb4

bb4:                                              ; preds = %bb3
  store i8 0, ptr %_141, align 1
; invoke alloc::vec::from_elem
  invoke void @_ZN5alloc3vec9from_elem17h77b12d92d993339eE(ptr sret([24 x i8]) align 8 %dp, ptr align 8 %_5, i64 %_9.0)
          to label %bb5 unwind label %cleanup6

panic5:                                           ; preds = %bb3
; invoke core::panicking::panic_const::panic_const_add_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_583d013587706340fc3a9f8bd257ed45) #25
          to label %unreachable unwind label %cleanup6

bb95:                                             ; preds = %cleanup6
  %5 = load i8, ptr %_141, align 1
  %6 = trunc nuw i8 %5 to i1
  br i1 %6, label %bb94, label %bb92

cleanup6:                                         ; preds = %bb4, %panic5
  %7 = landingpad { ptr, i32 }
          cleanup
  %8 = extractvalue { ptr, i32 } %7, 0
  %9 = extractvalue { ptr, i32 } %7, 1
  store ptr %8, ptr %0, align 8
  %10 = getelementptr inbounds i8, ptr %0, i64 8
  store i32 %9, ptr %10, align 8
  br label %bb95

bb5:                                              ; preds = %bb4
  store i8 0, ptr %_141, align 1
; invoke core::ops::range::RangeInclusive<Idx>::new
  invoke void @"_ZN4core3ops5range25RangeInclusive$LT$Idx$GT$3new17h3dcd2ba559346f03E"(ptr sret([24 x i8]) align 8 %_11, i64 0, i64 %N)
          to label %bb6 unwind label %cleanup7

bb91:                                             ; preds = %cleanup7
; invoke core::ptr::drop_in_place<alloc::vec::Vec<alloc::vec::Vec<i32>>>
  invoke void @"_ZN4core3ptr70drop_in_place$LT$alloc..vec..Vec$LT$alloc..vec..Vec$LT$i32$GT$$GT$$GT$17hedf48bb8a32fa4f7E"(ptr align 8 %dp) #23
          to label %bb92 unwind label %terminate

cleanup7:                                         ; preds = %bb18, %bb17, %bb15, %bb13, %bb11, %bb35, %bb34, %bb84, %bb83, %bb82, %panic26, %bb80, %bb79, %panic25, %bb77, %panic24, %bb75, %panic23, %bb73, %bb72, %bb70, %bb69, %panic22, %bb67, %panic21, %bb64, %bb62, %bb61, %panic20, %bb58, %bb57, %bb56, %panic19, %bb54, %bb53, %panic18, %bb51, %bb50, %bb48, %bb47, %panic17, %panic16, %bb44, %panic15, %bb42, %bb41, %panic14, %bb39, %bb38, %panic13, %panic12, %panic11, %bb29, %bb27, %panic10, %panic9, %bb87, %panic8, %bb25, %bb22, %bb20, %bb12, %bb8, %bb6, %bb5
  %11 = landingpad { ptr, i32 }
          cleanup
  %12 = extractvalue { ptr, i32 } %11, 0
  %13 = extractvalue { ptr, i32 } %11, 1
  store ptr %12, ptr %0, align 8
  %14 = getelementptr inbounds i8, ptr %0, i64 8
  store i32 %13, ptr %14, align 8
  br label %bb91

bb6:                                              ; preds = %bb5
; invoke <I as core::iter::traits::collect::IntoIterator>::into_iter
  invoke void @"_ZN63_$LT$I$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17h3717997e4b6687aeE"(ptr sret([24 x i8]) align 8 %_10, ptr align 8 %_11)
          to label %bb7 unwind label %cleanup7

bb7:                                              ; preds = %bb6
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %iter, ptr align 8 %_10, i64 24, i1 false)
  br label %bb8

bb8:                                              ; preds = %bb16, %bb7
; invoke core::iter::range::<impl core::iter::traits::iterator::Iterator for core::ops::range::RangeInclusive<A>>::next
  %15 = invoke { i64, i64 } @"_ZN4core4iter5range110_$LT$impl$u20$core..iter..traits..iterator..Iterator$u20$for$u20$core..ops..range..RangeInclusive$LT$A$GT$$GT$4next17h6d8558d2a463f3c3E"(ptr align 8 %iter)
          to label %bb9 unwind label %cleanup7

bb9:                                              ; preds = %bb8
  %16 = extractvalue { i64, i64 } %15, 0
  %17 = extractvalue { i64, i64 } %15, 1
  store i64 %16, ptr %_13, align 8
  %18 = getelementptr inbounds i8, ptr %_13, i64 8
  store i64 %17, ptr %18, align 8
  %_15 = load i64, ptr %_13, align 8
  %19 = getelementptr inbounds i8, ptr %_13, i64 8
  %20 = load i64, ptr %19, align 8
  %21 = trunc nuw i64 %_15 to i1
  br i1 %21, label %bb11, label %bb12

bb11:                                             ; preds = %bb9
  %22 = getelementptr inbounds i8, ptr %_13, i64 8
  %i27 = load i64, ptr %22, align 8
; invoke core::ops::range::RangeInclusive<Idx>::new
  invoke void @"_ZN4core3ops5range25RangeInclusive$LT$Idx$GT$3new17h3dcd2ba559346f03E"(ptr sret([24 x i8]) align 8 %_18, i64 0, i64 %N)
          to label %bb13 unwind label %cleanup7

bb12:                                             ; preds = %bb9
; invoke core::ops::range::RangeInclusive<Idx>::new
  invoke void @"_ZN4core3ops5range25RangeInclusive$LT$Idx$GT$3new17h3dcd2ba559346f03E"(ptr sret([24 x i8]) align 8 %_28, i64 1, i64 %N)
          to label %bb20 unwind label %cleanup7

bb20:                                             ; preds = %bb12
; invoke <I as core::iter::traits::collect::IntoIterator>::into_iter
  invoke void @"_ZN63_$LT$I$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17h3717997e4b6687aeE"(ptr sret([24 x i8]) align 8 %_27, ptr align 8 %_28)
          to label %bb21 unwind label %cleanup7

bb21:                                             ; preds = %bb20
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %iter2, ptr align 8 %_27, i64 24, i1 false)
  br label %bb22

bb22:                                             ; preds = %bb30, %bb21
; invoke core::iter::range::<impl core::iter::traits::iterator::Iterator for core::ops::range::RangeInclusive<A>>::next
  %23 = invoke { i64, i64 } @"_ZN4core4iter5range110_$LT$impl$u20$core..iter..traits..iterator..Iterator$u20$for$u20$core..ops..range..RangeInclusive$LT$A$GT$$GT$4next17h6d8558d2a463f3c3E"(ptr align 8 %iter2)
          to label %bb23 unwind label %cleanup7

bb23:                                             ; preds = %bb22
  %24 = extractvalue { i64, i64 } %23, 0
  %25 = extractvalue { i64, i64 } %23, 1
  store i64 %24, ptr %_30, align 8
  %26 = getelementptr inbounds i8, ptr %_30, i64 8
  store i64 %25, ptr %26, align 8
  %_32 = load i64, ptr %_30, align 8
  %27 = getelementptr inbounds i8, ptr %_30, i64 8
  %28 = load i64, ptr %27, align 8
  %29 = trunc nuw i64 %_32 to i1
  br i1 %29, label %bb24, label %bb25

bb24:                                             ; preds = %bb23
  %30 = getelementptr inbounds i8, ptr %_30, i64 8
  %len = load i64, ptr %30, align 8
  %_38.0 = sub i64 %N, %len
  %_38.1 = icmp ult i64 %N, %len
  br i1 %_38.1, label %panic9, label %bb26

bb25:                                             ; preds = %bb23
; invoke <alloc::vec::Vec<T,A> as core::ops::index::Index<I>>::index
  %_137 = invoke align 8 ptr @"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h3831e1b6aa9d6656E"(ptr align 8 %dp, i64 0, ptr align 8 @alloc_c42efeef25c9c048574e05b2f481b33c)
          to label %bb86 unwind label %cleanup7

bb86:                                             ; preds = %bb25
  %_140.0 = sub i64 %N, 1
  %_140.1 = icmp ult i64 %N, 1
  br i1 %_140.1, label %panic8, label %bb87

bb87:                                             ; preds = %bb86
; invoke <alloc::vec::Vec<T,A> as core::ops::index::Index<I>>::index
  %_136 = invoke align 4 ptr @"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h63e7d48f0a7a4c95E"(ptr align 8 %_137, i64 %_140.0, ptr align 8 @alloc_32a5fb7023fa92c01fb8d23496c811ab)
          to label %bb88 unwind label %cleanup7

panic8:                                           ; preds = %bb86
; invoke core::panicking::panic_const::panic_const_sub_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_sub_overflow17h134cc1a7f93654deE(ptr align 8 @alloc_a974498d760be5428a0ba560c6f17c91) #25
          to label %unreachable unwind label %cleanup7

bb88:                                             ; preds = %bb87
  %_0 = load i32, ptr %_136, align 4
; invoke core::ptr::drop_in_place<alloc::vec::Vec<alloc::vec::Vec<i32>>>
  invoke void @"_ZN4core3ptr70drop_in_place$LT$alloc..vec..Vec$LT$alloc..vec..Vec$LT$i32$GT$$GT$$GT$17hedf48bb8a32fa4f7E"(ptr align 8 %dp)
          to label %bb89 unwind label %cleanup

bb89:                                             ; preds = %bb88
; call core::ptr::drop_in_place<alloc::string::String>
  call void @"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h19694d511a22bb7dE"(ptr align 8 %str)
  ret i32 %_0

bb26:                                             ; preds = %bb24
  %_39.0 = add i64 %_38.0, 1
  %_39.1 = icmp ult i64 %_39.0, %_38.0
  br i1 %_39.1, label %panic10, label %bb27

panic9:                                           ; preds = %bb24
; invoke core::panicking::panic_const::panic_const_sub_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_sub_overflow17h134cc1a7f93654deE(ptr align 8 @alloc_0cd557067fadb86fce0954f8512b1ebc) #25
          to label %unreachable unwind label %cleanup7

bb27:                                             ; preds = %bb26
; invoke <I as core::iter::traits::collect::IntoIterator>::into_iter
  %31 = invoke { i64, i64 } @"_ZN63_$LT$I$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17hcfe5c13b6a3e09abE"(i64 0, i64 %_39.0)
          to label %bb28 unwind label %cleanup7

panic10:                                          ; preds = %bb26
; invoke core::panicking::panic_const::panic_const_add_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_0cd557067fadb86fce0954f8512b1ebc) #25
          to label %unreachable unwind label %cleanup7

bb28:                                             ; preds = %bb27
  %_34.0 = extractvalue { i64, i64 } %31, 0
  %_34.1 = extractvalue { i64, i64 } %31, 1
  store i64 %_34.0, ptr %iter3, align 8
  %32 = getelementptr inbounds i8, ptr %iter3, i64 8
  store i64 %_34.1, ptr %32, align 8
  br label %bb29

bb29:                                             ; preds = %bb36, %bb65, %bb28
; invoke core::iter::range::<impl core::iter::traits::iterator::Iterator for core::ops::range::Range<A>>::next
  %33 = invoke { i64, i64 } @"_ZN4core4iter5range101_$LT$impl$u20$core..iter..traits..iterator..Iterator$u20$for$u20$core..ops..range..Range$LT$A$GT$$GT$4next17hae1138c20ce25b23E"(ptr align 8 %iter3)
          to label %bb30 unwind label %cleanup7

bb30:                                             ; preds = %bb29
  %34 = extractvalue { i64, i64 } %33, 0
  %35 = extractvalue { i64, i64 } %33, 1
  store i64 %34, ptr %_41, align 8
  %36 = getelementptr inbounds i8, ptr %_41, i64 8
  store i64 %35, ptr %36, align 8
  %_43 = load i64, ptr %_41, align 8
  %37 = getelementptr inbounds i8, ptr %_41, i64 8
  %38 = load i64, ptr %37, align 8
  %39 = trunc nuw i64 %_43 to i1
  br i1 %39, label %bb31, label %bb22

bb31:                                             ; preds = %bb30
  %40 = getelementptr inbounds i8, ptr %_41, i64 8
  %i = load i64, ptr %40, align 8
  %_47.0 = add i64 %i, %len
  %_47.1 = icmp ult i64 %_47.0, %i
  br i1 %_47.1, label %panic11, label %bb32

bb32:                                             ; preds = %bb31
  %_48.0 = sub i64 %_47.0, 1
  %_48.1 = icmp ult i64 %_47.0, 1
  br i1 %_48.1, label %panic12, label %bb33

panic11:                                          ; preds = %bb31
; invoke core::panicking::panic_const::panic_const_add_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_8f7eeffd43960f4d858cba712f41019d) #25
          to label %unreachable unwind label %cleanup7

bb33:                                             ; preds = %bb32
  %_49 = icmp eq i64 %len, 1
  br i1 %_49, label %bb34, label %bb37

panic12:                                          ; preds = %bb32
; invoke core::panicking::panic_const::panic_const_sub_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_sub_overflow17h134cc1a7f93654deE(ptr align 8 @alloc_8f7eeffd43960f4d858cba712f41019d) #25
          to label %unreachable unwind label %cleanup7

bb37:                                             ; preds = %bb33
  %_58.0 = add i64 %i, 1
  %_58.1 = icmp ult i64 %_58.0, %i
  br i1 %_58.1, label %panic13, label %bb38

bb34:                                             ; preds = %bb33
; invoke <alloc::vec::Vec<T,A> as core::ops::index::IndexMut<I>>::index_mut
  %_51 = invoke align 8 ptr @"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h2f352061c7466959E"(ptr align 8 %dp, i64 %i, ptr align 8 @alloc_8dde8fd9f67bcf5ba06860b6719d8496)
          to label %bb35 unwind label %cleanup7

bb38:                                             ; preds = %bb37
; invoke <alloc::vec::Vec<T,A> as core::ops::index::Index<I>>::index
  %_55 = invoke align 8 ptr @"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h3831e1b6aa9d6656E"(ptr align 8 %dp, i64 %_58.0, ptr align 8 @alloc_ea04b4282f3ecb11f76847f2523d02ae)
          to label %bb39 unwind label %cleanup7

panic13:                                          ; preds = %bb37
; invoke core::panicking::panic_const::panic_const_add_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_49a2008c206d22e05aa1fa2c8510e255) #25
          to label %unreachable unwind label %cleanup7

bb39:                                             ; preds = %bb38
; invoke <alloc::vec::Vec<T,A> as core::ops::index::Index<I>>::index
  %_54 = invoke align 4 ptr @"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h63e7d48f0a7a4c95E"(ptr align 8 %_55, i64 %_48.0, ptr align 8 @alloc_5080bf987922e717732635722f07d0cf)
          to label %bb40 unwind label %cleanup7

bb40:                                             ; preds = %bb39
  %_53 = load i32, ptr %_54, align 4
  %41 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 1, i32 %_53)
  %_59.0 = extractvalue { i32, i1 } %41, 0
  %_59.1 = extractvalue { i32, i1 } %41, 1
  br i1 %_59.1, label %panic14, label %bb41

bb41:                                             ; preds = %bb40
; invoke <alloc::vec::Vec<T,A> as core::ops::index::IndexMut<I>>::index_mut
  %_61 = invoke align 8 ptr @"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h2f352061c7466959E"(ptr align 8 %dp, i64 %i, ptr align 8 @alloc_8867279fd44c785b2d2b863f0c09dd4f)
          to label %bb42 unwind label %cleanup7

panic14:                                          ; preds = %bb40
; invoke core::panicking::panic_const::panic_const_add_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_9526f08a3a0c040d0ed354cfe30b848d) #25
          to label %unreachable unwind label %cleanup7

bb42:                                             ; preds = %bb41
; invoke <alloc::vec::Vec<T,A> as core::ops::index::IndexMut<I>>::index_mut
  %_60 = invoke align 4 ptr @"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17hb80f13494d4bb7cfE"(ptr align 8 %_61, i64 %_48.0, ptr align 8 @alloc_fa5f7e8fcfe0330da9ccf800ea86b0ec)
          to label %bb43 unwind label %cleanup7

bb43:                                             ; preds = %bb42
  store i32 %_59.0, ptr %_60, align 4
  %_68.0 = add i64 %i, 1
  %_68.1 = icmp ult i64 %_68.0, %i
  br i1 %_68.1, label %panic15, label %bb44

bb44:                                             ; preds = %bb43
; invoke <alloc::string::String as core::ops::index::Index<I>>::index
  %42 = invoke { ptr, i64 } @"_ZN74_$LT$alloc..string..String$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h2b4f84b932675b17E"(ptr align 8 %str, i64 %i, i64 %_68.0, ptr align 8 @alloc_c434b6e725389ed18298be7de95276e7)
          to label %bb45 unwind label %cleanup7

panic15:                                          ; preds = %bb43
; invoke core::panicking::panic_const::panic_const_add_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_14d3bd143471e7896534acd454783162) #25
          to label %unreachable unwind label %cleanup7

bb45:                                             ; preds = %bb44
  %_64.0 = extractvalue { ptr, i64 } %42, 0
  %_64.1 = extractvalue { ptr, i64 } %42, 1
  %_73.0 = add i64 %i, 1
  %_73.1 = icmp ult i64 %_73.0, %i
  br i1 %_73.1, label %panic16, label %bb46

bb46:                                             ; preds = %bb45
  %_75.0 = add i64 %i, 2
  %_75.1 = icmp ult i64 %_75.0, %i
  br i1 %_75.1, label %panic17, label %bb47

panic16:                                          ; preds = %bb45
; invoke core::panicking::panic_const::panic_const_add_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_841134beef55165bcc7884eefaa6e66e) #25
          to label %unreachable unwind label %cleanup7

bb47:                                             ; preds = %bb46
; invoke <alloc::string::String as core::ops::index::Index<I>>::index
  %43 = invoke { ptr, i64 } @"_ZN74_$LT$alloc..string..String$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h2b4f84b932675b17E"(ptr align 8 %str, i64 %_73.0, i64 %_75.0, ptr align 8 @alloc_7452c3969efa35b6a92ce4a05dfe6c48)
          to label %bb48 unwind label %cleanup7

panic17:                                          ; preds = %bb46
; invoke core::panicking::panic_const::panic_const_add_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_462bc748ea38c15558d5b5169b5e3740) #25
          to label %unreachable unwind label %cleanup7

bb48:                                             ; preds = %bb47
  %_69.0 = extractvalue { ptr, i64 } %43, 0
  %_69.1 = extractvalue { ptr, i64 } %43, 1
; invoke core::str::traits::<impl core::cmp::PartialEq for str>::eq
  %_63 = invoke zeroext i1 @"_ZN4core3str6traits54_$LT$impl$u20$core..cmp..PartialEq$u20$for$u20$str$GT$2eq17h66d9732c7d991e29E"(ptr align 1 %_64.0, i64 %_64.1, ptr align 1 %_69.0, i64 %_69.1)
          to label %bb49 unwind label %cleanup7

bb49:                                             ; preds = %bb48
  br i1 %_63, label %bb50, label %bb60

bb60:                                             ; preds = %bb59, %bb49
  %_95.0 = add i64 %i, 2
  %_95.1 = icmp ult i64 %_95.0, %i
  br i1 %_95.1, label %panic20, label %bb61

bb50:                                             ; preds = %bb49
; invoke <alloc::vec::Vec<T,A> as core::ops::index::Index<I>>::index
  %_79 = invoke align 8 ptr @"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h3831e1b6aa9d6656E"(ptr align 8 %dp, i64 %i, ptr align 8 @alloc_f508b9360c97eb3018bd79e31441f428)
          to label %bb51 unwind label %cleanup7

bb51:                                             ; preds = %bb50
; invoke <alloc::vec::Vec<T,A> as core::ops::index::Index<I>>::index
  %_78 = invoke align 4 ptr @"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h63e7d48f0a7a4c95E"(ptr align 8 %_79, i64 %_48.0, ptr align 8 @alloc_6b3b532efca5c791106087d22090968f)
          to label %bb52 unwind label %cleanup7

bb52:                                             ; preds = %bb51
  %_77 = load i32, ptr %_78, align 4
  %_87.0 = add i64 %i, 2
  %_87.1 = icmp ult i64 %_87.0, %i
  br i1 %_87.1, label %panic18, label %bb53

bb53:                                             ; preds = %bb52
; invoke <alloc::vec::Vec<T,A> as core::ops::index::Index<I>>::index
  %_84 = invoke align 8 ptr @"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h3831e1b6aa9d6656E"(ptr align 8 %dp, i64 %_87.0, ptr align 8 @alloc_76257ca614eadef188fc734e6e36deaa)
          to label %bb54 unwind label %cleanup7

panic18:                                          ; preds = %bb52
; invoke core::panicking::panic_const::panic_const_add_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_c3c45753a4c847de8a0de7b40eb3bc4a) #25
          to label %unreachable unwind label %cleanup7

bb54:                                             ; preds = %bb53
; invoke <alloc::vec::Vec<T,A> as core::ops::index::Index<I>>::index
  %_83 = invoke align 4 ptr @"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h63e7d48f0a7a4c95E"(ptr align 8 %_84, i64 %_48.0, ptr align 8 @alloc_35a4674d698ca1bc0478e9bb79486e5f)
          to label %bb55 unwind label %cleanup7

bb55:                                             ; preds = %bb54
  %_82 = load i32, ptr %_83, align 4
  %44 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 1, i32 %_82)
  %_88.0 = extractvalue { i32, i1 } %44, 0
  %_88.1 = extractvalue { i32, i1 } %44, 1
  br i1 %_88.1, label %panic19, label %bb56

bb56:                                             ; preds = %bb55
; invoke core::cmp::Ord::min
  %_76 = invoke i32 @_ZN4core3cmp3Ord3min17heaebd8c26e94c78fE(i32 %_77, i32 %_88.0)
          to label %bb57 unwind label %cleanup7

panic19:                                          ; preds = %bb55
; invoke core::panicking::panic_const::panic_const_add_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_cc4a03d8ee7f65af915d32c3fd0f4c90) #25
          to label %unreachable unwind label %cleanup7

bb57:                                             ; preds = %bb56
; invoke <alloc::vec::Vec<T,A> as core::ops::index::IndexMut<I>>::index_mut
  %_90 = invoke align 8 ptr @"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h2f352061c7466959E"(ptr align 8 %dp, i64 %i, ptr align 8 @alloc_16f9be37c68a28669f07bd609fe7759d)
          to label %bb58 unwind label %cleanup7

bb58:                                             ; preds = %bb57
; invoke <alloc::vec::Vec<T,A> as core::ops::index::IndexMut<I>>::index_mut
  %_89 = invoke align 4 ptr @"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17hb80f13494d4bb7cfE"(ptr align 8 %_90, i64 %_48.0, ptr align 8 @alloc_ac5a030a6c41926baa1f2054025f2ca7)
          to label %bb59 unwind label %cleanup7

bb59:                                             ; preds = %bb58
  store i32 %_76, ptr %_89, align 4
  br label %bb60

bb61:                                             ; preds = %bb60
; invoke core::ops::range::RangeInclusive<Idx>::new
  invoke void @"_ZN4core3ops5range25RangeInclusive$LT$Idx$GT$3new17h3dcd2ba559346f03E"(ptr sret([24 x i8]) align 8 %_93, i64 %_95.0, i64 %_48.0)
          to label %bb62 unwind label %cleanup7

panic20:                                          ; preds = %bb60
; invoke core::panicking::panic_const::panic_const_add_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_9761d5e3671df1d4b322218790fb61be) #25
          to label %unreachable unwind label %cleanup7

bb62:                                             ; preds = %bb61
; invoke <I as core::iter::traits::collect::IntoIterator>::into_iter
  invoke void @"_ZN63_$LT$I$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17h3717997e4b6687aeE"(ptr sret([24 x i8]) align 8 %_92, ptr align 8 %_93)
          to label %bb63 unwind label %cleanup7

bb63:                                             ; preds = %bb62
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %iter4, ptr align 8 %_92, i64 24, i1 false)
  br label %bb64

bb64:                                             ; preds = %bb85, %bb71, %bb63
; invoke core::iter::range::<impl core::iter::traits::iterator::Iterator for core::ops::range::RangeInclusive<A>>::next
  %45 = invoke { i64, i64 } @"_ZN4core4iter5range110_$LT$impl$u20$core..iter..traits..iterator..Iterator$u20$for$u20$core..ops..range..RangeInclusive$LT$A$GT$$GT$4next17h6d8558d2a463f3c3E"(ptr align 8 %iter4)
          to label %bb65 unwind label %cleanup7

bb65:                                             ; preds = %bb64
  %46 = extractvalue { i64, i64 } %45, 0
  %47 = extractvalue { i64, i64 } %45, 1
  store i64 %46, ptr %_97, align 8
  %48 = getelementptr inbounds i8, ptr %_97, i64 8
  store i64 %47, ptr %48, align 8
  %_99 = load i64, ptr %_97, align 8
  %49 = getelementptr inbounds i8, ptr %_97, i64 8
  %50 = load i64, ptr %49, align 8
  %51 = trunc nuw i64 %_99 to i1
  br i1 %51, label %bb66, label %bb29

bb66:                                             ; preds = %bb65
  %52 = getelementptr inbounds i8, ptr %_97, i64 8
  %K = load i64, ptr %52, align 8
  %_106.0 = add i64 %i, 1
  %_106.1 = icmp ult i64 %_106.0, %i
  br i1 %_106.1, label %panic21, label %bb67

bb67:                                             ; preds = %bb66
; invoke <alloc::string::String as core::ops::index::Index<I>>::index
  %53 = invoke { ptr, i64 } @"_ZN74_$LT$alloc..string..String$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h2b4f84b932675b17E"(ptr align 8 %str, i64 %i, i64 %_106.0, ptr align 8 @alloc_3599240ad9c036f367dc937afdeb7674)
          to label %bb68 unwind label %cleanup7

panic21:                                          ; preds = %bb66
; invoke core::panicking::panic_const::panic_const_add_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_bed8f9f4b784fa89538faf36bb0a1b56) #25
          to label %unreachable unwind label %cleanup7

bb68:                                             ; preds = %bb67
  %_102.0 = extractvalue { ptr, i64 } %53, 0
  %_102.1 = extractvalue { ptr, i64 } %53, 1
  %_111.0 = add i64 %K, 1
  %_111.1 = icmp ult i64 %_111.0, %K
  br i1 %_111.1, label %panic22, label %bb69

bb69:                                             ; preds = %bb68
; invoke <alloc::string::String as core::ops::index::Index<I>>::index
  %54 = invoke { ptr, i64 } @"_ZN74_$LT$alloc..string..String$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h2b4f84b932675b17E"(ptr align 8 %str, i64 %K, i64 %_111.0, ptr align 8 @alloc_50691c52435e0b533a833de3d71578c4)
          to label %bb70 unwind label %cleanup7

panic22:                                          ; preds = %bb68
; invoke core::panicking::panic_const::panic_const_add_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_e003e5a9b8aca2110600ecc4c03867e7) #25
          to label %unreachable unwind label %cleanup7

bb70:                                             ; preds = %bb69
  %_107.0 = extractvalue { ptr, i64 } %54, 0
  %_107.1 = extractvalue { ptr, i64 } %54, 1
; invoke core::str::traits::<impl core::cmp::PartialEq for str>::eq
  %_101 = invoke zeroext i1 @"_ZN4core3str6traits54_$LT$impl$u20$core..cmp..PartialEq$u20$for$u20$str$GT$2eq17h66d9732c7d991e29E"(ptr align 1 %_102.0, i64 %_102.1, ptr align 1 %_107.0, i64 %_107.1)
          to label %bb71 unwind label %cleanup7

bb71:                                             ; preds = %bb70
  br i1 %_101, label %bb72, label %bb64

bb72:                                             ; preds = %bb71
; invoke <alloc::vec::Vec<T,A> as core::ops::index::Index<I>>::index
  %_115 = invoke align 8 ptr @"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h3831e1b6aa9d6656E"(ptr align 8 %dp, i64 %i, ptr align 8 @alloc_c864910b491b4ea488837a719d350f78)
          to label %bb73 unwind label %cleanup7

bb73:                                             ; preds = %bb72
; invoke <alloc::vec::Vec<T,A> as core::ops::index::Index<I>>::index
  %_114 = invoke align 4 ptr @"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h63e7d48f0a7a4c95E"(ptr align 8 %_115, i64 %_48.0, ptr align 8 @alloc_3258b43c0e586cfebadad5d9b06e199a)
          to label %bb74 unwind label %cleanup7

bb74:                                             ; preds = %bb73
  %_113 = load i32, ptr %_114, align 4
  %_123.0 = add i64 %i, 1
  %_123.1 = icmp ult i64 %_123.0, %i
  br i1 %_123.1, label %panic23, label %bb75

bb75:                                             ; preds = %bb74
; invoke <alloc::vec::Vec<T,A> as core::ops::index::Index<I>>::index
  %_120 = invoke align 8 ptr @"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h3831e1b6aa9d6656E"(ptr align 8 %dp, i64 %_123.0, ptr align 8 @alloc_d63919847eb4a6b6f338f18d641dc4b8)
          to label %bb76 unwind label %cleanup7

panic23:                                          ; preds = %bb74
; invoke core::panicking::panic_const::panic_const_add_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_64f153a3345530a117a04795b59ded2c) #25
          to label %unreachable unwind label %cleanup7

bb76:                                             ; preds = %bb75
  %_125.0 = sub i64 %K, 1
  %_125.1 = icmp ult i64 %K, 1
  br i1 %_125.1, label %panic24, label %bb77

bb77:                                             ; preds = %bb76
; invoke <alloc::vec::Vec<T,A> as core::ops::index::Index<I>>::index
  %_119 = invoke align 4 ptr @"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h63e7d48f0a7a4c95E"(ptr align 8 %_120, i64 %_125.0, ptr align 8 @alloc_c4ad05f4868203e0276bebdff804fdf4)
          to label %bb78 unwind label %cleanup7

panic24:                                          ; preds = %bb76
; invoke core::panicking::panic_const::panic_const_sub_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_sub_overflow17h134cc1a7f93654deE(ptr align 8 @alloc_56efbe5ef9e9463059d6829cbad387fa) #25
          to label %unreachable unwind label %cleanup7

bb78:                                             ; preds = %bb77
  %_118 = load i32, ptr %_119, align 4
  %_131.0 = add i64 %K, 1
  %_131.1 = icmp ult i64 %_131.0, %K
  br i1 %_131.1, label %panic25, label %bb79

bb79:                                             ; preds = %bb78
; invoke <alloc::vec::Vec<T,A> as core::ops::index::Index<I>>::index
  %_128 = invoke align 8 ptr @"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h3831e1b6aa9d6656E"(ptr align 8 %dp, i64 %_131.0, ptr align 8 @alloc_b0f954d1de8063202abc582b5edd1028)
          to label %bb80 unwind label %cleanup7

panic25:                                          ; preds = %bb78
; invoke core::panicking::panic_const::panic_const_add_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_8f87f55c846b39ce5db8adeaeab10911) #25
          to label %unreachable unwind label %cleanup7

bb80:                                             ; preds = %bb79
; invoke <alloc::vec::Vec<T,A> as core::ops::index::Index<I>>::index
  %_127 = invoke align 4 ptr @"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h63e7d48f0a7a4c95E"(ptr align 8 %_128, i64 %_48.0, ptr align 8 @alloc_c12674f93d03fe9e475f754037315898)
          to label %bb81 unwind label %cleanup7

bb81:                                             ; preds = %bb80
  %_126 = load i32, ptr %_127, align 4
  %55 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %_118, i32 %_126)
  %_132.0 = extractvalue { i32, i1 } %55, 0
  %_132.1 = extractvalue { i32, i1 } %55, 1
  br i1 %_132.1, label %panic26, label %bb82

bb82:                                             ; preds = %bb81
; invoke core::cmp::Ord::min
  %_112 = invoke i32 @_ZN4core3cmp3Ord3min17heaebd8c26e94c78fE(i32 %_113, i32 %_132.0)
          to label %bb83 unwind label %cleanup7

panic26:                                          ; preds = %bb81
; invoke core::panicking::panic_const::panic_const_add_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_eb0f8d9a78bf7403bfb2a9ff8fecca7e) #25
          to label %unreachable unwind label %cleanup7

bb83:                                             ; preds = %bb82
; invoke <alloc::vec::Vec<T,A> as core::ops::index::IndexMut<I>>::index_mut
  %_134 = invoke align 8 ptr @"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h2f352061c7466959E"(ptr align 8 %dp, i64 %i, ptr align 8 @alloc_257d15c792e51c8a7e728e28e0a5a12f)
          to label %bb84 unwind label %cleanup7

bb84:                                             ; preds = %bb83
; invoke <alloc::vec::Vec<T,A> as core::ops::index::IndexMut<I>>::index_mut
  %_133 = invoke align 4 ptr @"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17hb80f13494d4bb7cfE"(ptr align 8 %_134, i64 %_48.0, ptr align 8 @alloc_d7af114c98a8919208c276ecb2301242)
          to label %bb85 unwind label %cleanup7

bb85:                                             ; preds = %bb84
  store i32 %_112, ptr %_133, align 4
  br label %bb64

bb35:                                             ; preds = %bb34
; invoke <alloc::vec::Vec<T,A> as core::ops::index::IndexMut<I>>::index_mut
  %_50 = invoke align 4 ptr @"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17hb80f13494d4bb7cfE"(ptr align 8 %_51, i64 %_48.0, ptr align 8 @alloc_4d02adb086ec39aa4ee6e663aff7048f)
          to label %bb36 unwind label %cleanup7

bb36:                                             ; preds = %bb35
  store i32 1, ptr %_50, align 4
  br label %bb29

bb13:                                             ; preds = %bb11
; invoke <I as core::iter::traits::collect::IntoIterator>::into_iter
  invoke void @"_ZN63_$LT$I$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17h3717997e4b6687aeE"(ptr sret([24 x i8]) align 8 %_17, ptr align 8 %_18)
          to label %bb14 unwind label %cleanup7

bb14:                                             ; preds = %bb13
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %iter1, ptr align 8 %_17, i64 24, i1 false)
  br label %bb15

bb15:                                             ; preds = %bb19, %bb14
; invoke core::iter::range::<impl core::iter::traits::iterator::Iterator for core::ops::range::RangeInclusive<A>>::next
  %56 = invoke { i64, i64 } @"_ZN4core4iter5range110_$LT$impl$u20$core..iter..traits..iterator..Iterator$u20$for$u20$core..ops..range..RangeInclusive$LT$A$GT$$GT$4next17h6d8558d2a463f3c3E"(ptr align 8 %iter1)
          to label %bb16 unwind label %cleanup7

bb16:                                             ; preds = %bb15
  %57 = extractvalue { i64, i64 } %56, 0
  %58 = extractvalue { i64, i64 } %56, 1
  store i64 %57, ptr %_20, align 8
  %59 = getelementptr inbounds i8, ptr %_20, i64 8
  store i64 %58, ptr %59, align 8
  %_22 = load i64, ptr %_20, align 8
  %60 = getelementptr inbounds i8, ptr %_20, i64 8
  %61 = load i64, ptr %60, align 8
  %62 = trunc nuw i64 %_22 to i1
  br i1 %62, label %bb17, label %bb8

bb17:                                             ; preds = %bb16
  %63 = getelementptr inbounds i8, ptr %_20, i64 8
  %j = load i64, ptr %63, align 8
; invoke <alloc::vec::Vec<T,A> as core::ops::index::IndexMut<I>>::index_mut
  %_25 = invoke align 8 ptr @"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h2f352061c7466959E"(ptr align 8 %dp, i64 %i27, ptr align 8 @alloc_83614b7a27c86558b2aee679e2acbdb3)
          to label %bb18 unwind label %cleanup7

bb18:                                             ; preds = %bb17
; invoke <alloc::vec::Vec<T,A> as core::ops::index::IndexMut<I>>::index_mut
  %_24 = invoke align 4 ptr @"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17hb80f13494d4bb7cfE"(ptr align 8 %_25, i64 %j, ptr align 8 @alloc_a0fdff677409a98b5d52790e5dd650ea)
          to label %bb19 unwind label %cleanup7

bb19:                                             ; preds = %bb18
  store i32 0, ptr %_24, align 4
  br label %bb15

bb10:                                             ; No predecessors!
  unreachable

terminate:                                        ; preds = %bb92, %bb94, %bb91
  %64 = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer
; call core::panicking::panic_in_cleanup
  call void @_ZN4core9panicking16panic_in_cleanup17h5f6bde45d17ae243E() #22
  unreachable

bb94:                                             ; preds = %bb95
; invoke core::ptr::drop_in_place<alloc::vec::Vec<i32>>
  invoke void @"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17hffcf64ef4c9777d3E"(ptr align 8 %_5) #23
          to label %bb92 unwind label %terminate

bb93:                                             ; preds = %bb92
  %65 = load ptr, ptr %0, align 8
  %66 = getelementptr inbounds i8, ptr %0, i64 8
  %67 = load i32, ptr %66, align 8
  %68 = insertvalue { ptr, i32 } poison, ptr %65, 0
  %69 = insertvalue { ptr, i32 } %68, i32 %67, 1
  resume { ptr, i32 } %69
}

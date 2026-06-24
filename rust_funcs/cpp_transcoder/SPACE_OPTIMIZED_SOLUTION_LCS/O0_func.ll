define i32 @f_gold(ptr align 8 %X, ptr align 8 %Y) unnamed_addr #3 personality ptr @rust_eh_personality {
start:
  %0 = alloca [16 x i8], align 8
  %_44 = alloca [16 x i8], align 8
  %_42 = alloca [4 x i8], align 4
  %_36 = alloca [16 x i8], align 8
  %_34 = alloca [4 x i8], align 4
  %_22 = alloca [16 x i8], align 8
  %iter1 = alloca [24 x i8], align 8
  %_20 = alloca [24 x i8], align 8
  %_19 = alloca [24 x i8], align 8
  %_15 = alloca [16 x i8], align 8
  %iter = alloca [24 x i8], align 8
  %_13 = alloca [24 x i8], align 8
  %_12 = alloca [24 x i8], align 8
  %bi = alloca [8 x i8], align 8
  %_8 = alloca [24 x i8], align 8
  %L = alloca [24 x i8], align 8
; invoke alloc::string::String::len
  %m = invoke i64 @_ZN5alloc6string6String3len17h1514287cc8c9757aE(ptr align 8 %X)
          to label %bb1 unwind label %cleanup

bb56:                                             ; preds = %bb55, %cleanup
; invoke core::ptr::drop_in_place<alloc::string::String>
  invoke void @"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hcbe033eebee81fb1E"(ptr align 8 %Y) #22
          to label %bb57 unwind label %terminate

cleanup:                                          ; preds = %bb51, %bb4, %bb3, %panic, %bb1, %start
  %1 = landingpad { ptr, i32 }
          cleanup
  %2 = extractvalue { ptr, i32 } %1, 0
  %3 = extractvalue { ptr, i32 } %1, 1
  store ptr %2, ptr %0, align 8
  %4 = getelementptr inbounds i8, ptr %0, i64 8
  store i32 %3, ptr %4, align 8
  br label %bb56

bb1:                                              ; preds = %start
; invoke alloc::string::String::len
  %n = invoke i64 @_ZN5alloc6string6String3len17h1514287cc8c9757aE(ptr align 8 %Y)
          to label %bb2 unwind label %cleanup

bb2:                                              ; preds = %bb1
  %_10.0 = add i64 %n, 1
  %_10.1 = icmp ult i64 %_10.0, %n
  br i1 %_10.1, label %panic, label %bb3

bb3:                                              ; preds = %bb2
; invoke alloc::vec::from_elem
  invoke void @_ZN5alloc3vec9from_elem17had7d64d6a4a48132E(ptr sret([24 x i8]) align 8 %_8, i32 0, i64 %_10.0)
          to label %bb4 unwind label %cleanup

panic:                                            ; preds = %bb2
; invoke core::panicking::panic_const::panic_const_add_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_6e47d1d848a840186204e74ea534c69e) #24
          to label %unreachable unwind label %cleanup

unreachable:                                      ; preds = %panic10, %panic9, %panic8, %panic7, %panic6, %panic5, %panic4, %panic
  unreachable

bb4:                                              ; preds = %bb3
; invoke alloc::vec::from_elem
  invoke void @_ZN5alloc3vec9from_elem17h529fd68caacc536cE(ptr sret([24 x i8]) align 8 %L, ptr align 8 %_8, i64 2)
          to label %bb5 unwind label %cleanup

bb5:                                              ; preds = %bb4
  store i64 0, ptr %bi, align 8
; invoke core::ops::range::RangeInclusive<Idx>::new
  invoke void @"_ZN4core3ops5range25RangeInclusive$LT$Idx$GT$3new17h3a20f3747c793c02E"(ptr sret([24 x i8]) align 8 %_13, i64 0, i64 %m)
          to label %bb6 unwind label %cleanup2

bb55:                                             ; preds = %cleanup2
; invoke core::ptr::drop_in_place<alloc::vec::Vec<alloc::vec::Vec<i32>>>
  invoke void @"_ZN4core3ptr70drop_in_place$LT$alloc..vec..Vec$LT$alloc..vec..Vec$LT$i32$GT$$GT$$GT$17h44214dba56b9c7e4E"(ptr align 8 %L) #22
          to label %bb56 unwind label %terminate

cleanup2:                                         ; preds = %bb20, %bb19, %bb38, %bb37, %panic10, %bb35, %panic9, %bb33, %panic8, %bb48, %bb47, %bb46, %bb45, %panic7, %bb43, %bb42, %bb41, %panic6, %bb30, %bb29, %panic5, %bb27, %bb26, %bb25, %panic4, %bb23, %bb22, %bb15, %bb13, %bb11, %bb50, %bb12, %bb8, %bb6, %bb5
  %5 = landingpad { ptr, i32 }
          cleanup
  %6 = extractvalue { ptr, i32 } %5, 0
  %7 = extractvalue { ptr, i32 } %5, 1
  store ptr %6, ptr %0, align 8
  %8 = getelementptr inbounds i8, ptr %0, i64 8
  store i32 %7, ptr %8, align 8
  br label %bb55

bb6:                                              ; preds = %bb5
; invoke <I as core::iter::traits::collect::IntoIterator>::into_iter
  invoke void @"_ZN63_$LT$I$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17h9562345d9128cd6eE"(ptr sret([24 x i8]) align 8 %_12, ptr align 8 %_13)
          to label %bb7 unwind label %cleanup2

bb7:                                              ; preds = %bb6
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %iter, ptr align 8 %_12, i64 24, i1 false)
  br label %bb8

bb8:                                              ; preds = %bb16, %bb7
; invoke core::iter::range::<impl core::iter::traits::iterator::Iterator for core::ops::range::RangeInclusive<A>>::next
  %9 = invoke { i64, i64 } @"_ZN4core4iter5range110_$LT$impl$u20$core..iter..traits..iterator..Iterator$u20$for$u20$core..ops..range..RangeInclusive$LT$A$GT$$GT$4next17h97d366cff72ca8d9E"(ptr align 8 %iter)
          to label %bb9 unwind label %cleanup2

bb9:                                              ; preds = %bb8
  %10 = extractvalue { i64, i64 } %9, 0
  %11 = extractvalue { i64, i64 } %9, 1
  store i64 %10, ptr %_15, align 8
  %12 = getelementptr inbounds i8, ptr %_15, i64 8
  store i64 %11, ptr %12, align 8
  %_17 = load i64, ptr %_15, align 8
  %13 = getelementptr inbounds i8, ptr %_15, i64 8
  %14 = load i64, ptr %13, align 8
  %15 = trunc nuw i64 %_17 to i1
  br i1 %15, label %bb11, label %bb12

bb11:                                             ; preds = %bb9
  %16 = getelementptr inbounds i8, ptr %_15, i64 8
  %i = load i64, ptr %16, align 8
  %17 = and i64 %i, 1
  store i64 %17, ptr %bi, align 8
; invoke core::ops::range::RangeInclusive<Idx>::new
  invoke void @"_ZN4core3ops5range25RangeInclusive$LT$Idx$GT$3new17h3a20f3747c793c02E"(ptr sret([24 x i8]) align 8 %_20, i64 0, i64 %n)
          to label %bb13 unwind label %cleanup2

bb12:                                             ; preds = %bb9
  %_85 = load i64, ptr %bi, align 8
; invoke <alloc::vec::Vec<T,A> as core::ops::index::Index<I>>::index
  %_83 = invoke align 8 ptr @"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h82c39717c1eb3998E"(ptr align 8 %L, i64 %_85, ptr align 8 @alloc_e5cea990743572c516560e03329fb198)
          to label %bb50 unwind label %cleanup2

bb50:                                             ; preds = %bb12
; invoke <alloc::vec::Vec<T,A> as core::ops::index::Index<I>>::index
  %_82 = invoke align 4 ptr @"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hb45ac865c4a4340fE"(ptr align 8 %_83, i64 %n, ptr align 8 @alloc_8cb7c192ee1ec0060ed9f767f36f2c9e)
          to label %bb51 unwind label %cleanup2

bb51:                                             ; preds = %bb50
  %_0 = load i32, ptr %_82, align 4
; invoke core::ptr::drop_in_place<alloc::vec::Vec<alloc::vec::Vec<i32>>>
  invoke void @"_ZN4core3ptr70drop_in_place$LT$alloc..vec..Vec$LT$alloc..vec..Vec$LT$i32$GT$$GT$$GT$17h44214dba56b9c7e4E"(ptr align 8 %L)
          to label %bb52 unwind label %cleanup

bb52:                                             ; preds = %bb51
; invoke core::ptr::drop_in_place<alloc::string::String>
  invoke void @"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hcbe033eebee81fb1E"(ptr align 8 %Y)
          to label %bb53 unwind label %cleanup3

bb57:                                             ; preds = %bb56, %cleanup3
; invoke core::ptr::drop_in_place<alloc::string::String>
  invoke void @"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hcbe033eebee81fb1E"(ptr align 8 %X) #22
          to label %bb58 unwind label %terminate

cleanup3:                                         ; preds = %bb52
  %18 = landingpad { ptr, i32 }
          cleanup
  %19 = extractvalue { ptr, i32 } %18, 0
  %20 = extractvalue { ptr, i32 } %18, 1
  store ptr %19, ptr %0, align 8
  %21 = getelementptr inbounds i8, ptr %0, i64 8
  store i32 %20, ptr %21, align 8
  br label %bb57

bb53:                                             ; preds = %bb52
; call core::ptr::drop_in_place<alloc::string::String>
  call void @"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hcbe033eebee81fb1E"(ptr align 8 %X)
  ret i32 %_0

bb13:                                             ; preds = %bb11
; invoke <I as core::iter::traits::collect::IntoIterator>::into_iter
  invoke void @"_ZN63_$LT$I$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17h9562345d9128cd6eE"(ptr sret([24 x i8]) align 8 %_19, ptr align 8 %_20)
          to label %bb14 unwind label %cleanup2

bb14:                                             ; preds = %bb13
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %iter1, ptr align 8 %_19, i64 24, i1 false)
  br label %bb15

bb15:                                             ; preds = %bb21, %bb39, %bb49, %bb14
; invoke core::iter::range::<impl core::iter::traits::iterator::Iterator for core::ops::range::RangeInclusive<A>>::next
  %22 = invoke { i64, i64 } @"_ZN4core4iter5range110_$LT$impl$u20$core..iter..traits..iterator..Iterator$u20$for$u20$core..ops..range..RangeInclusive$LT$A$GT$$GT$4next17h97d366cff72ca8d9E"(ptr align 8 %iter1)
          to label %bb16 unwind label %cleanup2

bb16:                                             ; preds = %bb15
  %23 = extractvalue { i64, i64 } %22, 0
  %24 = extractvalue { i64, i64 } %22, 1
  store i64 %23, ptr %_22, align 8
  %25 = getelementptr inbounds i8, ptr %_22, i64 8
  store i64 %24, ptr %25, align 8
  %_24 = load i64, ptr %_22, align 8
  %26 = getelementptr inbounds i8, ptr %_22, i64 8
  %27 = load i64, ptr %26, align 8
  %28 = trunc nuw i64 %_24 to i1
  br i1 %28, label %bb17, label %bb8

bb17:                                             ; preds = %bb16
  %29 = getelementptr inbounds i8, ptr %_22, i64 8
  %j = load i64, ptr %29, align 8
  %_26 = icmp eq i64 %i, 0
  br i1 %_26, label %bb19, label %bb18

bb18:                                             ; preds = %bb17
  %_27 = icmp eq i64 %j, 0
  br i1 %_27, label %bb19, label %bb22

bb19:                                             ; preds = %bb18, %bb17
  %_31 = load i64, ptr %bi, align 8
; invoke <alloc::vec::Vec<T,A> as core::ops::index::IndexMut<I>>::index_mut
  %_29 = invoke align 8 ptr @"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h7a0ce9ec0489349aE"(ptr align 8 %L, i64 %_31, ptr align 8 @alloc_a99a63d008f34bc6907e6f9478a494d7)
          to label %bb20 unwind label %cleanup2

bb22:                                             ; preds = %bb18
; invoke <alloc::string::String as core::ops::deref::Deref>::deref
  %30 = invoke { ptr, i64 } @"_ZN65_$LT$alloc..string..String$u20$as$u20$core..ops..deref..Deref$GT$5deref17h87d4421a219848c7E"(ptr align 8 %X)
          to label %bb23 unwind label %cleanup2

bb23:                                             ; preds = %bb22
  %_37.0 = extractvalue { ptr, i64 } %30, 0
  %_37.1 = extractvalue { ptr, i64 } %30, 1
; invoke core::str::<impl str>::chars
  %31 = invoke { ptr, ptr } @"_ZN4core3str21_$LT$impl$u20$str$GT$5chars17h530206704de8544cE"(ptr align 1 %_37.0, i64 %_37.1)
          to label %bb24 unwind label %cleanup2

bb24:                                             ; preds = %bb23
  %32 = extractvalue { ptr, ptr } %31, 0
  %33 = extractvalue { ptr, ptr } %31, 1
  store ptr %32, ptr %_36, align 8
  %34 = getelementptr inbounds i8, ptr %_36, i64 8
  store ptr %33, ptr %34, align 8
  %_40.0 = sub i64 %i, 1
  %_40.1 = icmp ult i64 %i, 1
  br i1 %_40.1, label %panic4, label %bb25

bb25:                                             ; preds = %bb24
; invoke core::iter::traits::iterator::Iterator::nth
  %35 = invoke i32 @_ZN4core4iter6traits8iterator8Iterator3nth17hd6310bf1b462ad66E(ptr align 8 %_36, i64 %_40.0)
          to label %bb26 unwind label %cleanup2

panic4:                                           ; preds = %bb24
; invoke core::panicking::panic_const::panic_const_sub_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_sub_overflow17h134cc1a7f93654deE(ptr align 8 @alloc_ed849ac1dd4ece57eccf08b5c67e18b0) #24
          to label %unreachable unwind label %cleanup2

bb26:                                             ; preds = %bb25
  store i32 %35, ptr %_34, align 4
; invoke <alloc::string::String as core::ops::deref::Deref>::deref
  %36 = invoke { ptr, i64 } @"_ZN65_$LT$alloc..string..String$u20$as$u20$core..ops..deref..Deref$GT$5deref17h87d4421a219848c7E"(ptr align 8 %Y)
          to label %bb27 unwind label %cleanup2

bb27:                                             ; preds = %bb26
  %_45.0 = extractvalue { ptr, i64 } %36, 0
  %_45.1 = extractvalue { ptr, i64 } %36, 1
; invoke core::str::<impl str>::chars
  %37 = invoke { ptr, ptr } @"_ZN4core3str21_$LT$impl$u20$str$GT$5chars17h530206704de8544cE"(ptr align 1 %_45.0, i64 %_45.1)
          to label %bb28 unwind label %cleanup2

bb28:                                             ; preds = %bb27
  %38 = extractvalue { ptr, ptr } %37, 0
  %39 = extractvalue { ptr, ptr } %37, 1
  store ptr %38, ptr %_44, align 8
  %40 = getelementptr inbounds i8, ptr %_44, i64 8
  store ptr %39, ptr %40, align 8
  %_48.0 = sub i64 %j, 1
  %_48.1 = icmp ult i64 %j, 1
  br i1 %_48.1, label %panic5, label %bb29

bb29:                                             ; preds = %bb28
; invoke core::iter::traits::iterator::Iterator::nth
  %41 = invoke i32 @_ZN4core4iter6traits8iterator8Iterator3nth17hd6310bf1b462ad66E(ptr align 8 %_44, i64 %_48.0)
          to label %bb30 unwind label %cleanup2

panic5:                                           ; preds = %bb28
; invoke core::panicking::panic_const::panic_const_sub_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_sub_overflow17h134cc1a7f93654deE(ptr align 8 @alloc_fead95ac195fc569afec7d42828ee33f) #24
          to label %unreachable unwind label %cleanup2

bb30:                                             ; preds = %bb29
  store i32 %41, ptr %_42, align 4
; invoke <core::option::Option<T> as core::cmp::PartialEq>::eq
  %_32 = invoke zeroext i1 @"_ZN70_$LT$core..option..Option$LT$T$GT$$u20$as$u20$core..cmp..PartialEq$GT$2eq17hee4c188da7b49c5cE"(ptr align 4 %_34, ptr align 4 %_42)
          to label %bb31 unwind label %cleanup2

bb31:                                             ; preds = %bb30
  br i1 %_32, label %bb32, label %bb40

bb40:                                             ; preds = %bb31
  %_69 = load i64, ptr %bi, align 8
  %_70.0 = sub i64 1, %_69
  %_70.1 = icmp ult i64 1, %_69
  br i1 %_70.1, label %panic6, label %bb41

bb32:                                             ; preds = %bb31
  %_54 = load i64, ptr %bi, align 8
  %_55.0 = sub i64 1, %_54
  %_55.1 = icmp ult i64 1, %_54
  br i1 %_55.1, label %panic8, label %bb33

bb41:                                             ; preds = %bb40
; invoke <alloc::vec::Vec<T,A> as core::ops::index::Index<I>>::index
  %_66 = invoke align 8 ptr @"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h82c39717c1eb3998E"(ptr align 8 %L, i64 %_70.0, ptr align 8 @alloc_455f6da57be4aa27106e364f8d7b8599)
          to label %bb42 unwind label %cleanup2

panic6:                                           ; preds = %bb40
; invoke core::panicking::panic_const::panic_const_sub_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_sub_overflow17h134cc1a7f93654deE(ptr align 8 @alloc_7549da4a1047ce89bda6bbe468ddb713) #24
          to label %unreachable unwind label %cleanup2

bb42:                                             ; preds = %bb41
; invoke <alloc::vec::Vec<T,A> as core::ops::index::Index<I>>::index
  %_65 = invoke align 4 ptr @"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hb45ac865c4a4340fE"(ptr align 8 %_66, i64 %j, ptr align 8 @alloc_7ecdd2b7719c07fbecfa7e040c70555b)
          to label %bb43 unwind label %cleanup2

bb43:                                             ; preds = %bb42
  %_64 = load i32, ptr %_65, align 4
  %_75 = load i64, ptr %bi, align 8
; invoke <alloc::vec::Vec<T,A> as core::ops::index::Index<I>>::index
  %_73 = invoke align 8 ptr @"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h82c39717c1eb3998E"(ptr align 8 %L, i64 %_75, ptr align 8 @alloc_d0e34cd241e8189c6593b7385f5f379c)
          to label %bb44 unwind label %cleanup2

bb44:                                             ; preds = %bb43
  %_77.0 = sub i64 %j, 1
  %_77.1 = icmp ult i64 %j, 1
  br i1 %_77.1, label %panic7, label %bb45

bb45:                                             ; preds = %bb44
; invoke <alloc::vec::Vec<T,A> as core::ops::index::Index<I>>::index
  %_72 = invoke align 4 ptr @"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hb45ac865c4a4340fE"(ptr align 8 %_73, i64 %_77.0, ptr align 8 @alloc_037f547cb5df5bedfad12176aeb72b79)
          to label %bb46 unwind label %cleanup2

panic7:                                           ; preds = %bb44
; invoke core::panicking::panic_const::panic_const_sub_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_sub_overflow17h134cc1a7f93654deE(ptr align 8 @alloc_7633063ca55bd1f30337df2a7097544f) #24
          to label %unreachable unwind label %cleanup2

bb46:                                             ; preds = %bb45
  %_71 = load i32, ptr %_72, align 4
; invoke core::cmp::max
  %_63 = invoke i32 @_ZN4core3cmp3max17h41d9cb1be0a91b48E(i32 %_64, i32 %_71)
          to label %bb47 unwind label %cleanup2

bb47:                                             ; preds = %bb46
  %_81 = load i64, ptr %bi, align 8
; invoke <alloc::vec::Vec<T,A> as core::ops::index::IndexMut<I>>::index_mut
  %_79 = invoke align 8 ptr @"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h7a0ce9ec0489349aE"(ptr align 8 %L, i64 %_81, ptr align 8 @alloc_312feeeafa8384b3729d6ba111ee2a87)
          to label %bb48 unwind label %cleanup2

bb48:                                             ; preds = %bb47
; invoke <alloc::vec::Vec<T,A> as core::ops::index::IndexMut<I>>::index_mut
  %_78 = invoke align 4 ptr @"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h48659c87ff6e3cb4E"(ptr align 8 %_79, i64 %j, ptr align 8 @alloc_a9c490451cd9c7d3a440aacf8c0d7183)
          to label %bb49 unwind label %cleanup2

bb49:                                             ; preds = %bb48
  store i32 %_63, ptr %_78, align 4
  br label %bb15

bb33:                                             ; preds = %bb32
; invoke <alloc::vec::Vec<T,A> as core::ops::index::Index<I>>::index
  %_51 = invoke align 8 ptr @"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h82c39717c1eb3998E"(ptr align 8 %L, i64 %_55.0, ptr align 8 @alloc_d5ba85c33213dac699e5ee0a47dd0a37)
          to label %bb34 unwind label %cleanup2

panic8:                                           ; preds = %bb32
; invoke core::panicking::panic_const::panic_const_sub_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_sub_overflow17h134cc1a7f93654deE(ptr align 8 @alloc_fde838082e13896c9b00e476dbf38643) #24
          to label %unreachable unwind label %cleanup2

bb34:                                             ; preds = %bb33
  %_57.0 = sub i64 %j, 1
  %_57.1 = icmp ult i64 %j, 1
  br i1 %_57.1, label %panic9, label %bb35

bb35:                                             ; preds = %bb34
; invoke <alloc::vec::Vec<T,A> as core::ops::index::Index<I>>::index
  %_50 = invoke align 4 ptr @"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hb45ac865c4a4340fE"(ptr align 8 %_51, i64 %_57.0, ptr align 8 @alloc_f1e41b190b84bd02d38089fab6d74940)
          to label %bb36 unwind label %cleanup2

panic9:                                           ; preds = %bb34
; invoke core::panicking::panic_const::panic_const_sub_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_sub_overflow17h134cc1a7f93654deE(ptr align 8 @alloc_5b9cf745711469bd91f6bef805b55117) #24
          to label %unreachable unwind label %cleanup2

bb36:                                             ; preds = %bb35
  %_49 = load i32, ptr %_50, align 4
  %42 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %_49, i32 1)
  %_58.0 = extractvalue { i32, i1 } %42, 0
  %_58.1 = extractvalue { i32, i1 } %42, 1
  br i1 %_58.1, label %panic10, label %bb37

bb37:                                             ; preds = %bb36
  %_62 = load i64, ptr %bi, align 8
; invoke <alloc::vec::Vec<T,A> as core::ops::index::IndexMut<I>>::index_mut
  %_60 = invoke align 8 ptr @"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h7a0ce9ec0489349aE"(ptr align 8 %L, i64 %_62, ptr align 8 @alloc_cf20fb0e18c4ea37932feaeda39df7cf)
          to label %bb38 unwind label %cleanup2

panic10:                                          ; preds = %bb36
; invoke core::panicking::panic_const::panic_const_add_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_abb96726f7a1b2848a1de71d1fd86aae) #24
          to label %unreachable unwind label %cleanup2

bb38:                                             ; preds = %bb37
; invoke <alloc::vec::Vec<T,A> as core::ops::index::IndexMut<I>>::index_mut
  %_59 = invoke align 4 ptr @"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h48659c87ff6e3cb4E"(ptr align 8 %_60, i64 %j, ptr align 8 @alloc_4a22b1a21adf3638edf77849667ba91c)
          to label %bb39 unwind label %cleanup2

bb39:                                             ; preds = %bb38
  store i32 %_58.0, ptr %_59, align 4
  br label %bb15

bb20:                                             ; preds = %bb19
; invoke <alloc::vec::Vec<T,A> as core::ops::index::IndexMut<I>>::index_mut
  %_28 = invoke align 4 ptr @"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h48659c87ff6e3cb4E"(ptr align 8 %_29, i64 %j, ptr align 8 @alloc_f5e2ee6bccd6b724dfb61b6dd55a2ee7)
          to label %bb21 unwind label %cleanup2

bb21:                                             ; preds = %bb20
  store i32 0, ptr %_28, align 4
  br label %bb15

bb10:                                             ; No predecessors!
  unreachable

terminate:                                        ; preds = %bb57, %bb56, %bb55
  %43 = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer
; call core::panicking::panic_in_cleanup
  call void @_ZN4core9panicking16panic_in_cleanup17h5f6bde45d17ae243E() #21
  unreachable

bb58:                                             ; preds = %bb57
  %44 = load ptr, ptr %0, align 8
  %45 = getelementptr inbounds i8, ptr %0, i64 8
  %46 = load i32, ptr %45, align 8
  %47 = insertvalue { ptr, i32 } poison, ptr %44, 0
  %48 = insertvalue { ptr, i32 } %47, i32 %46, 1
  resume { ptr, i32 } %48
}

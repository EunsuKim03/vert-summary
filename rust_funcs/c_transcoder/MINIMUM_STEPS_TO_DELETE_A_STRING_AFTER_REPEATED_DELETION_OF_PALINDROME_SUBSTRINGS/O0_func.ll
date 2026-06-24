define i32 @f_gold(ptr align 1 %str.0, i64 %str.1) unnamed_addr #3 personality ptr @rust_eh_personality {
start:
  %0 = alloca [16 x i8], align 8
  %_119 = alloca [1 x i8], align 1
  %_89 = alloca [16 x i8], align 8
  %_87 = alloca [4 x i8], align 4
  %_85 = alloca [16 x i8], align 8
  %_83 = alloca [4 x i8], align 4
  %_77 = alloca [16 x i8], align 8
  %iter2 = alloca [24 x i8], align 8
  %_73 = alloca [24 x i8], align 8
  %_72 = alloca [24 x i8], align 8
  %_53 = alloca [16 x i8], align 8
  %_51 = alloca [4 x i8], align 4
  %_49 = alloca [16 x i8], align 8
  %_47 = alloca [4 x i8], align 4
  %_23 = alloca [16 x i8], align 8
  %iter1 = alloca [16 x i8], align 8
  %_12 = alloca [16 x i8], align 8
  %iter = alloca [24 x i8], align 8
  %_10 = alloca [24 x i8], align 8
  %_9 = alloca [24 x i8], align 8
  %_4 = alloca [24 x i8], align 8
  %dp = alloca [24 x i8], align 8
  store i8 0, ptr %_119, align 1
; call core::str::<impl str>::len
  %n = call i64 @"_ZN4core3str21_$LT$impl$u20$str$GT$3len17h32de0f7ca26f5385E"(ptr align 1 %str.0, i64 %str.1) #18
  %_6.0 = add i64 %n, 1
  %_6.1 = icmp ult i64 %_6.0, %n
  br i1 %_6.1, label %panic, label %bb2

bb2:                                              ; preds = %start
  store i8 1, ptr %_119, align 1
; call alloc::vec::from_elem
  call void @_ZN5alloc3vec9from_elem17h44f8ddfa4e19ab92E(ptr sret([24 x i8]) align 8 %_4, i32 0, i64 %_6.0)
  %_8.0 = add i64 %n, 1
  %_8.1 = icmp ult i64 %_8.0, %n
  br i1 %_8.1, label %panic3, label %bb4

panic:                                            ; preds = %start
; call core::panicking::panic_const::panic_const_add_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_fa3918aada223ea8670029af6845d966) #23
  unreachable

bb4:                                              ; preds = %bb2
  store i8 0, ptr %_119, align 1
; invoke alloc::vec::from_elem
  invoke void @_ZN5alloc3vec9from_elem17h77b12d92d993339eE(ptr sret([24 x i8]) align 8 %dp, ptr align 8 %_4, i64 %_8.0)
          to label %bb5 unwind label %cleanup

panic3:                                           ; preds = %bb2
; invoke core::panicking::panic_const::panic_const_add_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_2d92910c7447d630c6cba6c1ff5fc5f9) #24
          to label %unreachable unwind label %cleanup

bb80:                                             ; preds = %cleanup
  %1 = load i8, ptr %_119, align 1
  %2 = trunc nuw i8 %1 to i1
  br i1 %2, label %bb79, label %bb78

cleanup:                                          ; preds = %bb4, %panic3
  %3 = landingpad { ptr, i32 }
          cleanup
  %4 = extractvalue { ptr, i32 } %3, 0
  %5 = extractvalue { ptr, i32 } %3, 1
  store ptr %4, ptr %0, align 8
  %6 = getelementptr inbounds i8, ptr %0, i64 8
  store i32 %5, ptr %6, align 8
  br label %bb80

unreachable:                                      ; preds = %panic19, %panic18, %panic17, %panic16, %panic15, %panic14, %panic13, %panic12, %panic11, %panic10, %panic9, %panic8, %panic7, %panic6, %panic5, %panic3
  unreachable

bb5:                                              ; preds = %bb4
  store i8 0, ptr %_119, align 1
; invoke core::ops::range::RangeInclusive<Idx>::new
  invoke void @"_ZN4core3ops5range25RangeInclusive$LT$Idx$GT$3new17h3dcd2ba559346f03E"(ptr sret([24 x i8]) align 8 %_10, i64 1, i64 %n)
          to label %bb6 unwind label %cleanup4

bb77:                                             ; preds = %cleanup4
; invoke core::ptr::drop_in_place<alloc::vec::Vec<alloc::vec::Vec<i32>>>
  invoke void @"_ZN4core3ptr70drop_in_place$LT$alloc..vec..Vec$LT$alloc..vec..Vec$LT$i32$GT$$GT$$GT$17hedf48bb8a32fa4f7E"(ptr align 8 %dp) #22
          to label %bb78 unwind label %terminate

cleanup4:                                         ; preds = %bb22, %bb21, %bb71, %bb70, %bb69, %bb68, %bb67, %panic19, %bb65, %bb64, %panic18, %bb62, %panic17, %bb60, %panic16, %bb57, %bb56, %bb55, %bb54, %bb53, %bb51, %bb49, %bb48, %panic15, %bb45, %bb44, %bb43, %bb42, %bb41, %panic14, %bb39, %bb38, %panic13, %bb35, %bb34, %panic12, %bb32, %bb31, %bb30, %bb29, %bb28, %panic11, %bb26, %bb25, %panic10, %panic9, %panic8, %bb16, %bb14, %panic7, %panic6, %bb74, %panic5, %bb12, %bb8, %bb6, %bb5
  %7 = landingpad { ptr, i32 }
          cleanup
  %8 = extractvalue { ptr, i32 } %7, 0
  %9 = extractvalue { ptr, i32 } %7, 1
  store ptr %8, ptr %0, align 8
  %10 = getelementptr inbounds i8, ptr %0, i64 8
  store i32 %9, ptr %10, align 8
  br label %bb77

bb6:                                              ; preds = %bb5
; invoke <I as core::iter::traits::collect::IntoIterator>::into_iter
  invoke void @"_ZN63_$LT$I$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17h3717997e4b6687aeE"(ptr sret([24 x i8]) align 8 %_9, ptr align 8 %_10)
          to label %bb7 unwind label %cleanup4

bb7:                                              ; preds = %bb6
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %iter, ptr align 8 %_9, i64 24, i1 false)
  br label %bb8

bb8:                                              ; preds = %bb17, %bb7
; invoke core::iter::range::<impl core::iter::traits::iterator::Iterator for core::ops::range::RangeInclusive<A>>::next
  %11 = invoke { i64, i64 } @"_ZN4core4iter5range110_$LT$impl$u20$core..iter..traits..iterator..Iterator$u20$for$u20$core..ops..range..RangeInclusive$LT$A$GT$$GT$4next17h6d8558d2a463f3c3E"(ptr align 8 %iter)
          to label %bb9 unwind label %cleanup4

bb9:                                              ; preds = %bb8
  %12 = extractvalue { i64, i64 } %11, 0
  %13 = extractvalue { i64, i64 } %11, 1
  store i64 %12, ptr %_12, align 8
  %14 = getelementptr inbounds i8, ptr %_12, i64 8
  store i64 %13, ptr %14, align 8
  %_14 = load i64, ptr %_12, align 8
  %15 = getelementptr inbounds i8, ptr %_12, i64 8
  %16 = load i64, ptr %15, align 8
  %17 = trunc nuw i64 %_14 to i1
  br i1 %17, label %bb11, label %bb12

bb11:                                             ; preds = %bb9
  %18 = getelementptr inbounds i8, ptr %_12, i64 8
  %len = load i64, ptr %18, align 8
  %_20.0 = sub i64 %n, %len
  %_20.1 = icmp ult i64 %n, %len
  br i1 %_20.1, label %panic6, label %bb13

bb12:                                             ; preds = %bb9
; invoke <alloc::vec::Vec<T,A> as core::ops::index::Index<I>>::index
  %_115 = invoke align 8 ptr @"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h3831e1b6aa9d6656E"(ptr align 8 %dp, i64 0, ptr align 8 @alloc_09d9726e9dca430ce46f65da2758a105)
          to label %bb73 unwind label %cleanup4

bb73:                                             ; preds = %bb12
  %_118.0 = sub i64 %n, 1
  %_118.1 = icmp ult i64 %n, 1
  br i1 %_118.1, label %panic5, label %bb74

bb74:                                             ; preds = %bb73
; invoke <alloc::vec::Vec<T,A> as core::ops::index::Index<I>>::index
  %_114 = invoke align 4 ptr @"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h63e7d48f0a7a4c95E"(ptr align 8 %_115, i64 %_118.0, ptr align 8 @alloc_7ea99a588233bc662b17535c284e45f0)
          to label %bb75 unwind label %cleanup4

panic5:                                           ; preds = %bb73
; invoke core::panicking::panic_const::panic_const_sub_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_sub_overflow17h134cc1a7f93654deE(ptr align 8 @alloc_7567fa0bb9e8cd2e24f906d49ac221fc) #24
          to label %unreachable unwind label %cleanup4

bb75:                                             ; preds = %bb74
  %_0 = load i32, ptr %_114, align 4
; call core::ptr::drop_in_place<alloc::vec::Vec<alloc::vec::Vec<i32>>>
  call void @"_ZN4core3ptr70drop_in_place$LT$alloc..vec..Vec$LT$alloc..vec..Vec$LT$i32$GT$$GT$$GT$17hedf48bb8a32fa4f7E"(ptr align 8 %dp)
  ret i32 %_0

bb13:                                             ; preds = %bb11
  %_21.0 = add i64 %_20.0, 1
  %_21.1 = icmp ult i64 %_21.0, %_20.0
  br i1 %_21.1, label %panic7, label %bb14

panic6:                                           ; preds = %bb11
; invoke core::panicking::panic_const::panic_const_sub_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_sub_overflow17h134cc1a7f93654deE(ptr align 8 @alloc_4b41f7c3b5b04db1fd76293e2e2fc4c5) #24
          to label %unreachable unwind label %cleanup4

bb14:                                             ; preds = %bb13
; invoke <I as core::iter::traits::collect::IntoIterator>::into_iter
  %19 = invoke { i64, i64 } @"_ZN63_$LT$I$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17hcfe5c13b6a3e09abE"(i64 0, i64 %_21.0)
          to label %bb15 unwind label %cleanup4

panic7:                                           ; preds = %bb13
; invoke core::panicking::panic_const::panic_const_add_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_55481005680f1354d21f10c3ab0af52b) #24
          to label %unreachable unwind label %cleanup4

bb15:                                             ; preds = %bb14
  %_16.0 = extractvalue { i64, i64 } %19, 0
  %_16.1 = extractvalue { i64, i64 } %19, 1
  store i64 %_16.0, ptr %iter1, align 8
  %20 = getelementptr inbounds i8, ptr %iter1, i64 8
  store i64 %_16.1, ptr %20, align 8
  br label %bb16

bb16:                                             ; preds = %bb23, %bb52, %bb15
; invoke core::iter::range::<impl core::iter::traits::iterator::Iterator for core::ops::range::Range<A>>::next
  %21 = invoke { i64, i64 } @"_ZN4core4iter5range101_$LT$impl$u20$core..iter..traits..iterator..Iterator$u20$for$u20$core..ops..range..Range$LT$A$GT$$GT$4next17hae1138c20ce25b23E"(ptr align 8 %iter1)
          to label %bb17 unwind label %cleanup4

bb17:                                             ; preds = %bb16
  %22 = extractvalue { i64, i64 } %21, 0
  %23 = extractvalue { i64, i64 } %21, 1
  store i64 %22, ptr %_23, align 8
  %24 = getelementptr inbounds i8, ptr %_23, i64 8
  store i64 %23, ptr %24, align 8
  %_25 = load i64, ptr %_23, align 8
  %25 = getelementptr inbounds i8, ptr %_23, i64 8
  %26 = load i64, ptr %25, align 8
  %27 = trunc nuw i64 %_25 to i1
  br i1 %27, label %bb18, label %bb8

bb18:                                             ; preds = %bb17
  %28 = getelementptr inbounds i8, ptr %_23, i64 8
  %i = load i64, ptr %28, align 8
  %_29.0 = add i64 %i, %len
  %_29.1 = icmp ult i64 %_29.0, %i
  br i1 %_29.1, label %panic8, label %bb19

bb19:                                             ; preds = %bb18
  %_30.0 = sub i64 %_29.0, 1
  %_30.1 = icmp ult i64 %_29.0, 1
  br i1 %_30.1, label %panic9, label %bb20

panic8:                                           ; preds = %bb18
; invoke core::panicking::panic_const::panic_const_add_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_94c7ca184e2285d58c999146defe2102) #24
          to label %unreachable unwind label %cleanup4

bb20:                                             ; preds = %bb19
  %_31 = icmp eq i64 %len, 1
  br i1 %_31, label %bb21, label %bb24

panic9:                                           ; preds = %bb19
; invoke core::panicking::panic_const::panic_const_sub_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_sub_overflow17h134cc1a7f93654deE(ptr align 8 @alloc_94c7ca184e2285d58c999146defe2102) #24
          to label %unreachable unwind label %cleanup4

bb24:                                             ; preds = %bb20
  %_40.0 = add i64 %i, 1
  %_40.1 = icmp ult i64 %_40.0, %i
  br i1 %_40.1, label %panic10, label %bb25

bb21:                                             ; preds = %bb20
; invoke <alloc::vec::Vec<T,A> as core::ops::index::IndexMut<I>>::index_mut
  %_33 = invoke align 8 ptr @"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h2f352061c7466959E"(ptr align 8 %dp, i64 %i, ptr align 8 @alloc_68fe8210ffca6323f95345929d5156af)
          to label %bb22 unwind label %cleanup4

bb25:                                             ; preds = %bb24
; invoke <alloc::vec::Vec<T,A> as core::ops::index::Index<I>>::index
  %_37 = invoke align 8 ptr @"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h3831e1b6aa9d6656E"(ptr align 8 %dp, i64 %_40.0, ptr align 8 @alloc_e0fb644f2835251536e28d976c083ab5)
          to label %bb26 unwind label %cleanup4

panic10:                                          ; preds = %bb24
; invoke core::panicking::panic_const::panic_const_add_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_27e07e7b38bdd3bd835b093bca1f10fa) #24
          to label %unreachable unwind label %cleanup4

bb26:                                             ; preds = %bb25
; invoke <alloc::vec::Vec<T,A> as core::ops::index::Index<I>>::index
  %_36 = invoke align 4 ptr @"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h63e7d48f0a7a4c95E"(ptr align 8 %_37, i64 %_30.0, ptr align 8 @alloc_1b6967bd50a3ed3744b9db0d19da8cab)
          to label %bb27 unwind label %cleanup4

bb27:                                             ; preds = %bb26
  %_35 = load i32, ptr %_36, align 4
  %29 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 1, i32 %_35)
  %_41.0 = extractvalue { i32, i1 } %29, 0
  %_41.1 = extractvalue { i32, i1 } %29, 1
  br i1 %_41.1, label %panic11, label %bb28

bb28:                                             ; preds = %bb27
; invoke <alloc::vec::Vec<T,A> as core::ops::index::IndexMut<I>>::index_mut
  %_43 = invoke align 8 ptr @"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h2f352061c7466959E"(ptr align 8 %dp, i64 %i, ptr align 8 @alloc_20e56ebe0b68aef944d27b754d6cc860)
          to label %bb29 unwind label %cleanup4

panic11:                                          ; preds = %bb27
; invoke core::panicking::panic_const::panic_const_add_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_14a7c141de59f346b65752f91a9c3653) #24
          to label %unreachable unwind label %cleanup4

bb29:                                             ; preds = %bb28
; invoke <alloc::vec::Vec<T,A> as core::ops::index::IndexMut<I>>::index_mut
  %_42 = invoke align 4 ptr @"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17hb80f13494d4bb7cfE"(ptr align 8 %_43, i64 %_30.0, ptr align 8 @alloc_6f099308f8cec46ab1f61428cf774695)
          to label %bb30 unwind label %cleanup4

bb30:                                             ; preds = %bb29
  store i32 %_41.0, ptr %_42, align 4
; invoke core::str::<impl str>::chars
  %30 = invoke { ptr, ptr } @"_ZN4core3str21_$LT$impl$u20$str$GT$5chars17h04e67b12bb94043bE"(ptr align 1 %str.0, i64 %str.1)
          to label %bb31 unwind label %cleanup4

bb31:                                             ; preds = %bb30
  %31 = extractvalue { ptr, ptr } %30, 0
  %32 = extractvalue { ptr, ptr } %30, 1
  store ptr %31, ptr %_49, align 8
  %33 = getelementptr inbounds i8, ptr %_49, i64 8
  store ptr %32, ptr %33, align 8
; invoke core::iter::traits::iterator::Iterator::nth
  %34 = invoke i32 @_ZN4core4iter6traits8iterator8Iterator3nth17h3b633c9b00d6c9bdE(ptr align 8 %_49, i64 %i)
          to label %bb32 unwind label %cleanup4

bb32:                                             ; preds = %bb31
  store i32 %34, ptr %_47, align 4
; invoke core::str::<impl str>::chars
  %35 = invoke { ptr, ptr } @"_ZN4core3str21_$LT$impl$u20$str$GT$5chars17h04e67b12bb94043bE"(ptr align 1 %str.0, i64 %str.1)
          to label %bb33 unwind label %cleanup4

bb33:                                             ; preds = %bb32
  %36 = extractvalue { ptr, ptr } %35, 0
  %37 = extractvalue { ptr, ptr } %35, 1
  store ptr %36, ptr %_53, align 8
  %38 = getelementptr inbounds i8, ptr %_53, i64 8
  store ptr %37, ptr %38, align 8
  %_55.0 = add i64 %i, 1
  %_55.1 = icmp ult i64 %_55.0, %i
  br i1 %_55.1, label %panic12, label %bb34

bb34:                                             ; preds = %bb33
; invoke core::iter::traits::iterator::Iterator::nth
  %39 = invoke i32 @_ZN4core4iter6traits8iterator8Iterator3nth17h3b633c9b00d6c9bdE(ptr align 8 %_53, i64 %_55.0)
          to label %bb35 unwind label %cleanup4

panic12:                                          ; preds = %bb33
; invoke core::panicking::panic_const::panic_const_add_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_c151777752db778764ef103703e80c97) #24
          to label %unreachable unwind label %cleanup4

bb35:                                             ; preds = %bb34
  store i32 %39, ptr %_51, align 4
; invoke <core::option::Option<T> as core::cmp::PartialEq>::eq
  %_45 = invoke zeroext i1 @"_ZN70_$LT$core..option..Option$LT$T$GT$$u20$as$u20$core..cmp..PartialEq$GT$2eq17hd17bcb3d733b444fE"(ptr align 4 %_47, ptr align 4 %_51)
          to label %bb36 unwind label %cleanup4

bb36:                                             ; preds = %bb35
  br i1 %_45, label %bb37, label %bb47

bb47:                                             ; preds = %bb46, %bb36
  %_75.0 = add i64 %i, 2
  %_75.1 = icmp ult i64 %_75.0, %i
  br i1 %_75.1, label %panic15, label %bb48

bb37:                                             ; preds = %bb36
  %_63.0 = add i64 %i, 2
  %_63.1 = icmp ult i64 %_63.0, %i
  br i1 %_63.1, label %panic13, label %bb38

bb38:                                             ; preds = %bb37
; invoke <alloc::vec::Vec<T,A> as core::ops::index::Index<I>>::index
  %_60 = invoke align 8 ptr @"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h3831e1b6aa9d6656E"(ptr align 8 %dp, i64 %_63.0, ptr align 8 @alloc_1b6b3a58d991771f9df5b12abdfe2e86)
          to label %bb39 unwind label %cleanup4

panic13:                                          ; preds = %bb37
; invoke core::panicking::panic_const::panic_const_add_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_c61841ca71f31039ce4f1c480ba656c6) #24
          to label %unreachable unwind label %cleanup4

bb39:                                             ; preds = %bb38
; invoke <alloc::vec::Vec<T,A> as core::ops::index::Index<I>>::index
  %_59 = invoke align 4 ptr @"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h63e7d48f0a7a4c95E"(ptr align 8 %_60, i64 %_30.0, ptr align 8 @alloc_ecb15a8ed04bd1e7364ee97f47c3d1d9)
          to label %bb40 unwind label %cleanup4

bb40:                                             ; preds = %bb39
  %_58 = load i32, ptr %_59, align 4
  %40 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 1, i32 %_58)
  %_64.0 = extractvalue { i32, i1 } %40, 0
  %_64.1 = extractvalue { i32, i1 } %40, 1
  br i1 %_64.1, label %panic14, label %bb41

bb41:                                             ; preds = %bb40
; invoke <alloc::vec::Vec<T,A> as core::ops::index::Index<I>>::index
  %_67 = invoke align 8 ptr @"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h3831e1b6aa9d6656E"(ptr align 8 %dp, i64 %i, ptr align 8 @alloc_6b6a35e40095fb6621f914d9d0e99c37)
          to label %bb42 unwind label %cleanup4

panic14:                                          ; preds = %bb40
; invoke core::panicking::panic_const::panic_const_add_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_23c8190a8f3eaa3fac0cfa067cb992fc) #24
          to label %unreachable unwind label %cleanup4

bb42:                                             ; preds = %bb41
; invoke <alloc::vec::Vec<T,A> as core::ops::index::Index<I>>::index
  %_66 = invoke align 4 ptr @"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h63e7d48f0a7a4c95E"(ptr align 8 %_67, i64 %_30.0, ptr align 8 @alloc_fca3c7fc7851ae25cd234b6bef1bf372)
          to label %bb43 unwind label %cleanup4

bb43:                                             ; preds = %bb42
  %_65 = load i32, ptr %_66, align 4
  %_56 = invoke i32 @min(i32 %_64.0, i32 %_65)
          to label %bb44 unwind label %cleanup4

bb44:                                             ; preds = %bb43
; invoke <alloc::vec::Vec<T,A> as core::ops::index::IndexMut<I>>::index_mut
  %_70 = invoke align 8 ptr @"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h2f352061c7466959E"(ptr align 8 %dp, i64 %i, ptr align 8 @alloc_c6bcb88aba1813c324ed668528465642)
          to label %bb45 unwind label %cleanup4

bb45:                                             ; preds = %bb44
; invoke <alloc::vec::Vec<T,A> as core::ops::index::IndexMut<I>>::index_mut
  %_69 = invoke align 4 ptr @"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17hb80f13494d4bb7cfE"(ptr align 8 %_70, i64 %_30.0, ptr align 8 @alloc_6e685ba5c334bf5b2fca8d40b23cf97c)
          to label %bb46 unwind label %cleanup4

bb46:                                             ; preds = %bb45
  store i32 %_56, ptr %_69, align 4
  br label %bb47

bb48:                                             ; preds = %bb47
; invoke core::ops::range::RangeInclusive<Idx>::new
  invoke void @"_ZN4core3ops5range25RangeInclusive$LT$Idx$GT$3new17h3dcd2ba559346f03E"(ptr sret([24 x i8]) align 8 %_73, i64 %_75.0, i64 %_30.0)
          to label %bb49 unwind label %cleanup4

panic15:                                          ; preds = %bb47
; invoke core::panicking::panic_const::panic_const_add_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_d166d3f4681690272af6b9361374b35a) #24
          to label %unreachable unwind label %cleanup4

bb49:                                             ; preds = %bb48
; invoke <I as core::iter::traits::collect::IntoIterator>::into_iter
  invoke void @"_ZN63_$LT$I$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17h3717997e4b6687aeE"(ptr sret([24 x i8]) align 8 %_72, ptr align 8 %_73)
          to label %bb50 unwind label %cleanup4

bb50:                                             ; preds = %bb49
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %iter2, ptr align 8 %_72, i64 24, i1 false)
  br label %bb51

bb51:                                             ; preds = %bb72, %bb58, %bb50
; invoke core::iter::range::<impl core::iter::traits::iterator::Iterator for core::ops::range::RangeInclusive<A>>::next
  %41 = invoke { i64, i64 } @"_ZN4core4iter5range110_$LT$impl$u20$core..iter..traits..iterator..Iterator$u20$for$u20$core..ops..range..RangeInclusive$LT$A$GT$$GT$4next17h6d8558d2a463f3c3E"(ptr align 8 %iter2)
          to label %bb52 unwind label %cleanup4

bb52:                                             ; preds = %bb51
  %42 = extractvalue { i64, i64 } %41, 0
  %43 = extractvalue { i64, i64 } %41, 1
  store i64 %42, ptr %_77, align 8
  %44 = getelementptr inbounds i8, ptr %_77, i64 8
  store i64 %43, ptr %44, align 8
  %_79 = load i64, ptr %_77, align 8
  %45 = getelementptr inbounds i8, ptr %_77, i64 8
  %46 = load i64, ptr %45, align 8
  %47 = trunc nuw i64 %_79 to i1
  br i1 %47, label %bb53, label %bb16

bb53:                                             ; preds = %bb52
  %48 = getelementptr inbounds i8, ptr %_77, i64 8
  %k = load i64, ptr %48, align 8
; invoke core::str::<impl str>::chars
  %49 = invoke { ptr, ptr } @"_ZN4core3str21_$LT$impl$u20$str$GT$5chars17h04e67b12bb94043bE"(ptr align 1 %str.0, i64 %str.1)
          to label %bb54 unwind label %cleanup4

bb54:                                             ; preds = %bb53
  %50 = extractvalue { ptr, ptr } %49, 0
  %51 = extractvalue { ptr, ptr } %49, 1
  store ptr %50, ptr %_85, align 8
  %52 = getelementptr inbounds i8, ptr %_85, i64 8
  store ptr %51, ptr %52, align 8
; invoke core::iter::traits::iterator::Iterator::nth
  %53 = invoke i32 @_ZN4core4iter6traits8iterator8Iterator3nth17h3b633c9b00d6c9bdE(ptr align 8 %_85, i64 %i)
          to label %bb55 unwind label %cleanup4

bb55:                                             ; preds = %bb54
  store i32 %53, ptr %_83, align 4
; invoke core::str::<impl str>::chars
  %54 = invoke { ptr, ptr } @"_ZN4core3str21_$LT$impl$u20$str$GT$5chars17h04e67b12bb94043bE"(ptr align 1 %str.0, i64 %str.1)
          to label %bb56 unwind label %cleanup4

bb56:                                             ; preds = %bb55
  %55 = extractvalue { ptr, ptr } %54, 0
  %56 = extractvalue { ptr, ptr } %54, 1
  store ptr %55, ptr %_89, align 8
  %57 = getelementptr inbounds i8, ptr %_89, i64 8
  store ptr %56, ptr %57, align 8
; invoke core::iter::traits::iterator::Iterator::nth
  %58 = invoke i32 @_ZN4core4iter6traits8iterator8Iterator3nth17h3b633c9b00d6c9bdE(ptr align 8 %_89, i64 %k)
          to label %bb57 unwind label %cleanup4

bb57:                                             ; preds = %bb56
  store i32 %58, ptr %_87, align 4
; invoke <core::option::Option<T> as core::cmp::PartialEq>::eq
  %_81 = invoke zeroext i1 @"_ZN70_$LT$core..option..Option$LT$T$GT$$u20$as$u20$core..cmp..PartialEq$GT$2eq17hd17bcb3d733b444fE"(ptr align 4 %_83, ptr align 4 %_87)
          to label %bb58 unwind label %cleanup4

bb58:                                             ; preds = %bb57
  br i1 %_81, label %bb59, label %bb51

bb59:                                             ; preds = %bb58
  %_97.0 = add i64 %i, 1
  %_97.1 = icmp ult i64 %_97.0, %i
  br i1 %_97.1, label %panic16, label %bb60

bb60:                                             ; preds = %bb59
; invoke <alloc::vec::Vec<T,A> as core::ops::index::Index<I>>::index
  %_94 = invoke align 8 ptr @"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h3831e1b6aa9d6656E"(ptr align 8 %dp, i64 %_97.0, ptr align 8 @alloc_2003f0eb0222b92afd4a4554ab130f1f)
          to label %bb61 unwind label %cleanup4

panic16:                                          ; preds = %bb59
; invoke core::panicking::panic_const::panic_const_add_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_fe3eaa5a14935d58e1189f2bbed6f303) #24
          to label %unreachable unwind label %cleanup4

bb61:                                             ; preds = %bb60
  %_99.0 = sub i64 %k, 1
  %_99.1 = icmp ult i64 %k, 1
  br i1 %_99.1, label %panic17, label %bb62

bb62:                                             ; preds = %bb61
; invoke <alloc::vec::Vec<T,A> as core::ops::index::Index<I>>::index
  %_93 = invoke align 4 ptr @"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h63e7d48f0a7a4c95E"(ptr align 8 %_94, i64 %_99.0, ptr align 8 @alloc_f189b43c609a3f1819a996f646fdb5c5)
          to label %bb63 unwind label %cleanup4

panic17:                                          ; preds = %bb61
; invoke core::panicking::panic_const::panic_const_sub_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_sub_overflow17h134cc1a7f93654deE(ptr align 8 @alloc_f159e205fc3e82ee19a9b57bb5ef28b6) #24
          to label %unreachable unwind label %cleanup4

bb63:                                             ; preds = %bb62
  %_92 = load i32, ptr %_93, align 4
  %_105.0 = add i64 %k, 1
  %_105.1 = icmp ult i64 %_105.0, %k
  br i1 %_105.1, label %panic18, label %bb64

bb64:                                             ; preds = %bb63
; invoke <alloc::vec::Vec<T,A> as core::ops::index::Index<I>>::index
  %_102 = invoke align 8 ptr @"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h3831e1b6aa9d6656E"(ptr align 8 %dp, i64 %_105.0, ptr align 8 @alloc_9385309506eab2a8069a1d40e6f50c98)
          to label %bb65 unwind label %cleanup4

panic18:                                          ; preds = %bb63
; invoke core::panicking::panic_const::panic_const_add_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_9cfa07a34789d4337c715d80884c93c0) #24
          to label %unreachable unwind label %cleanup4

bb65:                                             ; preds = %bb64
; invoke <alloc::vec::Vec<T,A> as core::ops::index::Index<I>>::index
  %_101 = invoke align 4 ptr @"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h63e7d48f0a7a4c95E"(ptr align 8 %_102, i64 %_30.0, ptr align 8 @alloc_4a57d5fa5a079133928698c565cbbb0e)
          to label %bb66 unwind label %cleanup4

bb66:                                             ; preds = %bb65
  %_100 = load i32, ptr %_101, align 4
  %59 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %_92, i32 %_100)
  %_106.0 = extractvalue { i32, i1 } %59, 0
  %_106.1 = extractvalue { i32, i1 } %59, 1
  br i1 %_106.1, label %panic19, label %bb67

bb67:                                             ; preds = %bb66
; invoke <alloc::vec::Vec<T,A> as core::ops::index::Index<I>>::index
  %_109 = invoke align 8 ptr @"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h3831e1b6aa9d6656E"(ptr align 8 %dp, i64 %i, ptr align 8 @alloc_5e8fc306a6c80e3f5767357f0bdd5c3b)
          to label %bb68 unwind label %cleanup4

panic19:                                          ; preds = %bb66
; invoke core::panicking::panic_const::panic_const_add_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_90e666402996bb4127c9912a686919e8) #24
          to label %unreachable unwind label %cleanup4

bb68:                                             ; preds = %bb67
; invoke <alloc::vec::Vec<T,A> as core::ops::index::Index<I>>::index
  %_108 = invoke align 4 ptr @"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h63e7d48f0a7a4c95E"(ptr align 8 %_109, i64 %_30.0, ptr align 8 @alloc_fff4570fd7ff5175315c97e5b351fcd3)
          to label %bb69 unwind label %cleanup4

bb69:                                             ; preds = %bb68
  %_107 = load i32, ptr %_108, align 4
  %_90 = invoke i32 @min(i32 %_106.0, i32 %_107)
          to label %bb70 unwind label %cleanup4

bb70:                                             ; preds = %bb69
; invoke <alloc::vec::Vec<T,A> as core::ops::index::IndexMut<I>>::index_mut
  %_112 = invoke align 8 ptr @"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h2f352061c7466959E"(ptr align 8 %dp, i64 %i, ptr align 8 @alloc_e9cce67a3b7cc16dcecb9785dac482dd)
          to label %bb71 unwind label %cleanup4

bb71:                                             ; preds = %bb70
; invoke <alloc::vec::Vec<T,A> as core::ops::index::IndexMut<I>>::index_mut
  %_111 = invoke align 4 ptr @"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17hb80f13494d4bb7cfE"(ptr align 8 %_112, i64 %_30.0, ptr align 8 @alloc_5142d771d70dfc077f6e674f17815792)
          to label %bb72 unwind label %cleanup4

bb72:                                             ; preds = %bb71
  store i32 %_90, ptr %_111, align 4
  br label %bb51

bb22:                                             ; preds = %bb21
; invoke <alloc::vec::Vec<T,A> as core::ops::index::IndexMut<I>>::index_mut
  %_32 = invoke align 4 ptr @"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17hb80f13494d4bb7cfE"(ptr align 8 %_33, i64 %_30.0, ptr align 8 @alloc_eeec4d2fcb69fadc1d546cf32c68ce1f)
          to label %bb23 unwind label %cleanup4

bb23:                                             ; preds = %bb22
  store i32 1, ptr %_32, align 4
  br label %bb16

bb10:                                             ; No predecessors!
  unreachable

terminate:                                        ; preds = %bb79, %bb77
  %60 = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer
; call core::panicking::panic_in_cleanup
  call void @_ZN4core9panicking16panic_in_cleanup17h5f6bde45d17ae243E() #21
  unreachable

bb78:                                             ; preds = %bb79, %bb80, %bb77
  %61 = load ptr, ptr %0, align 8
  %62 = getelementptr inbounds i8, ptr %0, i64 8
  %63 = load i32, ptr %62, align 8
  %64 = insertvalue { ptr, i32 } poison, ptr %61, 0
  %65 = insertvalue { ptr, i32 } %64, i32 %63, 1
  resume { ptr, i32 } %65

bb79:                                             ; preds = %bb80
; invoke core::ptr::drop_in_place<alloc::vec::Vec<i32>>
  invoke void @"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17hffcf64ef4c9777d3E"(ptr align 8 %_4) #22
          to label %bb78 unwind label %terminate
}

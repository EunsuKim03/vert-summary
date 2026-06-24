define i32 @f_gold(i32 %n) unnamed_addr #3 personality ptr @rust_eh_personality {
start:
  %0 = alloca [16 x i8], align 8
  %_69 = alloca [1 x i8], align 1
  %_37 = alloca [8 x i8], align 4
  %iter1 = alloca [12 x i8], align 4
  %_35 = alloca [12 x i8], align 4
  %_34 = alloca [12 x i8], align 4
  %_16 = alloca [8 x i8], align 4
  %iter = alloca [12 x i8], align 4
  %_14 = alloca [12 x i8], align 4
  %_13 = alloca [12 x i8], align 4
  %_3 = alloca [24 x i8], align 8
  %bell = alloca [24 x i8], align 8
  store i8 0, ptr %_69, align 1
  %_5 = sext i32 %n to i64
  %_6.0 = add i64 %_5, 1
  %_6.1 = icmp ult i64 %_6.0, %_5
  br i1 %_6.1, label %panic, label %bb1

bb1:                                              ; preds = %start
  store i8 1, ptr %_69, align 1
; call alloc::vec::from_elem
  call void @_ZN5alloc3vec9from_elem17h1cadcc8454442effE(ptr sret([24 x i8]) align 8 %_3, i32 0, i64 %_6.0)
  %_8 = sext i32 %n to i64
  %_9.0 = add i64 %_8, 1
  %_9.1 = icmp ult i64 %_9.0, %_8
  br i1 %_9.1, label %panic2, label %bb3

panic:                                            ; preds = %start
; call core::panicking::panic_const::panic_const_add_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_f74e406d0b3c96c71fdbeabdec1dcad1) #23
  unreachable

bb3:                                              ; preds = %bb1
  store i8 0, ptr %_69, align 1
; invoke alloc::vec::from_elem
  invoke void @_ZN5alloc3vec9from_elem17h3eb064ff4aa31be8E(ptr sret([24 x i8]) align 8 %bell, ptr align 8 %_3, i64 %_9.0)
          to label %bb4 unwind label %cleanup

panic2:                                           ; preds = %bb1
; invoke core::panicking::panic_const::panic_const_add_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_8dfe21b0f0c5a2d3bd93bcd6cb870d81) #24
          to label %unreachable unwind label %cleanup

bb41:                                             ; preds = %cleanup
  %1 = load i8, ptr %_69, align 1
  %2 = trunc nuw i8 %1 to i1
  br i1 %2, label %bb40, label %bb39

cleanup:                                          ; preds = %bb3, %panic2
  %3 = landingpad { ptr, i32 }
          cleanup
  %4 = extractvalue { ptr, i32 } %3, 0
  %5 = extractvalue { ptr, i32 } %3, 1
  store ptr %4, ptr %0, align 8
  %6 = getelementptr inbounds i8, ptr %0, i64 8
  store i32 %5, ptr %6, align 8
  br label %bb41

unreachable:                                      ; preds = %panic9, %panic8, %panic7, %panic6, %panic5, %panic4, %panic2
  unreachable

bb4:                                              ; preds = %bb3
  store i8 0, ptr %_69, align 1
; invoke <alloc::vec::Vec<T,A> as core::ops::index::IndexMut<I>>::index_mut
  %_11 = invoke align 8 ptr @"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h432c6af4b9123597E"(ptr align 8 %bell, i64 0, ptr align 8 @alloc_5d4ada7e8c7f9de9fb39b0119ca2f7b3)
          to label %bb5 unwind label %cleanup3

bb38:                                             ; preds = %cleanup3
; invoke core::ptr::drop_in_place<alloc::vec::Vec<alloc::vec::Vec<i32>>>
  invoke void @"_ZN4core3ptr70drop_in_place$LT$alloc..vec..Vec$LT$alloc..vec..Vec$LT$i32$GT$$GT$$GT$17h4fdc3782cff1728bE"(ptr align 8 %bell) #22
          to label %bb39 unwind label %terminate

cleanup3:                                         ; preds = %bb33, %bb32, %panic9, %bb30, %panic8, %bb28, %bb27, %panic7, %bb25, %panic6, %bb22, %bb20, %bb19, %bb18, %bb17, %bb16, %panic5, %bb14, %panic4, %bb35, %bb13, %bb9, %bb7, %bb6, %bb5, %bb4
  %7 = landingpad { ptr, i32 }
          cleanup
  %8 = extractvalue { ptr, i32 } %7, 0
  %9 = extractvalue { ptr, i32 } %7, 1
  store ptr %8, ptr %0, align 8
  %10 = getelementptr inbounds i8, ptr %0, i64 8
  store i32 %9, ptr %10, align 8
  br label %bb38

bb5:                                              ; preds = %bb4
; invoke <alloc::vec::Vec<T,A> as core::ops::index::IndexMut<I>>::index_mut
  %_10 = invoke align 4 ptr @"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17hb33175917cbcc04aE"(ptr align 8 %_11, i64 0, ptr align 8 @alloc_090c5d77c30e5d7530385996b56198df)
          to label %bb6 unwind label %cleanup3

bb6:                                              ; preds = %bb5
  store i32 1, ptr %_10, align 4
; invoke core::ops::range::RangeInclusive<Idx>::new
  invoke void @"_ZN4core3ops5range25RangeInclusive$LT$Idx$GT$3new17h03dcd2fbd39377c3E"(ptr sret([12 x i8]) align 4 %_14, i32 1, i32 %n)
          to label %bb7 unwind label %cleanup3

bb7:                                              ; preds = %bb6
; invoke <I as core::iter::traits::collect::IntoIterator>::into_iter
  invoke void @"_ZN63_$LT$I$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17ha1a21810f618798fE"(ptr sret([12 x i8]) align 4 %_13, ptr align 4 %_14)
          to label %bb8 unwind label %cleanup3

bb8:                                              ; preds = %bb7
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %iter, ptr align 4 %_13, i64 12, i1 false)
  br label %bb9

bb9:                                              ; preds = %bb23, %bb8
; invoke core::iter::range::<impl core::iter::traits::iterator::Iterator for core::ops::range::RangeInclusive<A>>::next
  %11 = invoke { i32, i32 } @"_ZN4core4iter5range110_$LT$impl$u20$core..iter..traits..iterator..Iterator$u20$for$u20$core..ops..range..RangeInclusive$LT$A$GT$$GT$4next17hae944b6422efeaf7E"(ptr align 4 %iter)
          to label %bb10 unwind label %cleanup3

bb10:                                             ; preds = %bb9
  %12 = extractvalue { i32, i32 } %11, 0
  %13 = extractvalue { i32, i32 } %11, 1
  store i32 %12, ptr %_16, align 4
  %14 = getelementptr inbounds i8, ptr %_16, i64 4
  store i32 %13, ptr %14, align 4
  %15 = load i32, ptr %_16, align 4
  %16 = getelementptr inbounds i8, ptr %_16, i64 4
  %17 = load i32, ptr %16, align 4
  %_18 = zext i32 %15 to i64
  %18 = trunc nuw i64 %_18 to i1
  br i1 %18, label %bb12, label %bb13

bb12:                                             ; preds = %bb10
  %19 = getelementptr inbounds i8, ptr %_16, i64 4
  %i = load i32, ptr %19, align 4
  %20 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %i, i32 1)
  %_26.0 = extractvalue { i32, i1 } %20, 0
  %_26.1 = extractvalue { i32, i1 } %20, 1
  br i1 %_26.1, label %panic4, label %bb14

bb13:                                             ; preds = %bb10
  %_68 = sext i32 %n to i64
; invoke <alloc::vec::Vec<T,A> as core::ops::index::Index<I>>::index
  %_66 = invoke align 8 ptr @"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h2f6d67a7cdc2aaf4E"(ptr align 8 %bell, i64 %_68, ptr align 8 @alloc_99e2076ca35ede0fbab7b69a0b879398)
          to label %bb35 unwind label %cleanup3

bb35:                                             ; preds = %bb13
; invoke <alloc::vec::Vec<T,A> as core::ops::index::Index<I>>::index
  %_65 = invoke align 4 ptr @"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h31bbb289de038cabE"(ptr align 8 %_66, i64 0, ptr align 8 @alloc_22667ba4b7c27f5de72e5fdda86abaf1)
          to label %bb36 unwind label %cleanup3

bb36:                                             ; preds = %bb35
  %_0 = load i32, ptr %_65, align 4
; call core::ptr::drop_in_place<alloc::vec::Vec<alloc::vec::Vec<i32>>>
  call void @"_ZN4core3ptr70drop_in_place$LT$alloc..vec..Vec$LT$alloc..vec..Vec$LT$i32$GT$$GT$$GT$17h4fdc3782cff1728bE"(ptr align 8 %bell)
  ret i32 %_0

bb14:                                             ; preds = %bb12
  %_24 = sext i32 %_26.0 to i64
; invoke <alloc::vec::Vec<T,A> as core::ops::index::Index<I>>::index
  %_22 = invoke align 8 ptr @"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h2f6d67a7cdc2aaf4E"(ptr align 8 %bell, i64 %_24, ptr align 8 @alloc_917914cac55b10112659c9dcdae0d91f)
          to label %bb15 unwind label %cleanup3

panic4:                                           ; preds = %bb12
; invoke core::panicking::panic_const::panic_const_sub_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_sub_overflow17h134cc1a7f93654deE(ptr align 8 @alloc_db57a3f52b590001b6e0537dfabcf48b) #24
          to label %unreachable unwind label %cleanup3

bb15:                                             ; preds = %bb14
  %21 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %i, i32 1)
  %_29.0 = extractvalue { i32, i1 } %21, 0
  %_29.1 = extractvalue { i32, i1 } %21, 1
  br i1 %_29.1, label %panic5, label %bb16

bb16:                                             ; preds = %bb15
  %_27 = sext i32 %_29.0 to i64
; invoke <alloc::vec::Vec<T,A> as core::ops::index::Index<I>>::index
  %_21 = invoke align 4 ptr @"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h31bbb289de038cabE"(ptr align 8 %_22, i64 %_27, ptr align 8 @alloc_7594c38f85a9837ffb44290c9cbeb054)
          to label %bb17 unwind label %cleanup3

panic5:                                           ; preds = %bb15
; invoke core::panicking::panic_const::panic_const_sub_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_sub_overflow17h134cc1a7f93654deE(ptr align 8 @alloc_4c298f223ece28a9c1110d317fb3f44f) #24
          to label %unreachable unwind label %cleanup3

bb17:                                             ; preds = %bb16
  %_20 = load i32, ptr %_21, align 4
  %_33 = sext i32 %i to i64
; invoke <alloc::vec::Vec<T,A> as core::ops::index::IndexMut<I>>::index_mut
  %_31 = invoke align 8 ptr @"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h432c6af4b9123597E"(ptr align 8 %bell, i64 %_33, ptr align 8 @alloc_de3364628362b361d6a48780f3ce5b62)
          to label %bb18 unwind label %cleanup3

bb18:                                             ; preds = %bb17
; invoke <alloc::vec::Vec<T,A> as core::ops::index::IndexMut<I>>::index_mut
  %_30 = invoke align 4 ptr @"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17hb33175917cbcc04aE"(ptr align 8 %_31, i64 0, ptr align 8 @alloc_a982bde884205ec6b78acb64c4d1c1ce)
          to label %bb19 unwind label %cleanup3

bb19:                                             ; preds = %bb18
  store i32 %_20, ptr %_30, align 4
; invoke core::ops::range::RangeInclusive<Idx>::new
  invoke void @"_ZN4core3ops5range25RangeInclusive$LT$Idx$GT$3new17h03dcd2fbd39377c3E"(ptr sret([12 x i8]) align 4 %_35, i32 1, i32 %i)
          to label %bb20 unwind label %cleanup3

bb20:                                             ; preds = %bb19
; invoke <I as core::iter::traits::collect::IntoIterator>::into_iter
  invoke void @"_ZN63_$LT$I$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17ha1a21810f618798fE"(ptr sret([12 x i8]) align 4 %_34, ptr align 4 %_35)
          to label %bb21 unwind label %cleanup3

bb21:                                             ; preds = %bb20
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %iter1, ptr align 4 %_34, i64 12, i1 false)
  br label %bb22

bb22:                                             ; preds = %bb34, %bb21
; invoke core::iter::range::<impl core::iter::traits::iterator::Iterator for core::ops::range::RangeInclusive<A>>::next
  %22 = invoke { i32, i32 } @"_ZN4core4iter5range110_$LT$impl$u20$core..iter..traits..iterator..Iterator$u20$for$u20$core..ops..range..RangeInclusive$LT$A$GT$$GT$4next17hae944b6422efeaf7E"(ptr align 4 %iter1)
          to label %bb23 unwind label %cleanup3

bb23:                                             ; preds = %bb22
  %23 = extractvalue { i32, i32 } %22, 0
  %24 = extractvalue { i32, i32 } %22, 1
  store i32 %23, ptr %_37, align 4
  %25 = getelementptr inbounds i8, ptr %_37, i64 4
  store i32 %24, ptr %25, align 4
  %26 = load i32, ptr %_37, align 4
  %27 = getelementptr inbounds i8, ptr %_37, i64 4
  %28 = load i32, ptr %27, align 4
  %_39 = zext i32 %26 to i64
  %29 = trunc nuw i64 %_39 to i1
  br i1 %29, label %bb24, label %bb9

bb24:                                             ; preds = %bb23
  %30 = getelementptr inbounds i8, ptr %_37, i64 4
  %j = load i32, ptr %30, align 4
  %31 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %i, i32 1)
  %_47.0 = extractvalue { i32, i1 } %31, 0
  %_47.1 = extractvalue { i32, i1 } %31, 1
  br i1 %_47.1, label %panic6, label %bb25

bb25:                                             ; preds = %bb24
  %_45 = sext i32 %_47.0 to i64
; invoke <alloc::vec::Vec<T,A> as core::ops::index::Index<I>>::index
  %_43 = invoke align 8 ptr @"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h2f6d67a7cdc2aaf4E"(ptr align 8 %bell, i64 %_45, ptr align 8 @alloc_4fc5f0921be18081a459eef85eb51a56)
          to label %bb26 unwind label %cleanup3

panic6:                                           ; preds = %bb24
; invoke core::panicking::panic_const::panic_const_sub_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_sub_overflow17h134cc1a7f93654deE(ptr align 8 @alloc_e0400c5ece2052ccff129b569d2a25f3) #24
          to label %unreachable unwind label %cleanup3

bb26:                                             ; preds = %bb25
  %32 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %j, i32 1)
  %_50.0 = extractvalue { i32, i1 } %32, 0
  %_50.1 = extractvalue { i32, i1 } %32, 1
  br i1 %_50.1, label %panic7, label %bb27

bb27:                                             ; preds = %bb26
  %_48 = sext i32 %_50.0 to i64
; invoke <alloc::vec::Vec<T,A> as core::ops::index::Index<I>>::index
  %_42 = invoke align 4 ptr @"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h31bbb289de038cabE"(ptr align 8 %_43, i64 %_48, ptr align 8 @alloc_2403799b24f2f8d7457fc145085fbbf3)
          to label %bb28 unwind label %cleanup3

panic7:                                           ; preds = %bb26
; invoke core::panicking::panic_const::panic_const_sub_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_sub_overflow17h134cc1a7f93654deE(ptr align 8 @alloc_23e4b718a0c6860b364d5ee87375c561) #24
          to label %unreachable unwind label %cleanup3

bb28:                                             ; preds = %bb27
  %_41 = load i32, ptr %_42, align 4
  %_55 = sext i32 %i to i64
; invoke <alloc::vec::Vec<T,A> as core::ops::index::Index<I>>::index
  %_53 = invoke align 8 ptr @"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h2f6d67a7cdc2aaf4E"(ptr align 8 %bell, i64 %_55, ptr align 8 @alloc_600135e98e5ed7a2c2db9e0181209556)
          to label %bb29 unwind label %cleanup3

bb29:                                             ; preds = %bb28
  %33 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %j, i32 1)
  %_58.0 = extractvalue { i32, i1 } %33, 0
  %_58.1 = extractvalue { i32, i1 } %33, 1
  br i1 %_58.1, label %panic8, label %bb30

bb30:                                             ; preds = %bb29
  %_56 = sext i32 %_58.0 to i64
; invoke <alloc::vec::Vec<T,A> as core::ops::index::Index<I>>::index
  %_52 = invoke align 4 ptr @"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h31bbb289de038cabE"(ptr align 8 %_53, i64 %_56, ptr align 8 @alloc_ae63bed9eea94c6dfc9b84ab8079c1e6)
          to label %bb31 unwind label %cleanup3

panic8:                                           ; preds = %bb29
; invoke core::panicking::panic_const::panic_const_sub_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_sub_overflow17h134cc1a7f93654deE(ptr align 8 @alloc_b15e56abd8874a014768b168f10d37e0) #24
          to label %unreachable unwind label %cleanup3

bb31:                                             ; preds = %bb30
  %_51 = load i32, ptr %_52, align 4
  %34 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %_41, i32 %_51)
  %_59.0 = extractvalue { i32, i1 } %34, 0
  %_59.1 = extractvalue { i32, i1 } %34, 1
  br i1 %_59.1, label %panic9, label %bb32

bb32:                                             ; preds = %bb31
  %_63 = sext i32 %i to i64
; invoke <alloc::vec::Vec<T,A> as core::ops::index::IndexMut<I>>::index_mut
  %_61 = invoke align 8 ptr @"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h432c6af4b9123597E"(ptr align 8 %bell, i64 %_63, ptr align 8 @alloc_9930ff8481164e20ad2d3cb98e6a1020)
          to label %bb33 unwind label %cleanup3

panic9:                                           ; preds = %bb31
; invoke core::panicking::panic_const::panic_const_add_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_816da0a7cce7f67bfda0dc979f594157) #24
          to label %unreachable unwind label %cleanup3

bb33:                                             ; preds = %bb32
  %_64 = sext i32 %j to i64
; invoke <alloc::vec::Vec<T,A> as core::ops::index::IndexMut<I>>::index_mut
  %_60 = invoke align 4 ptr @"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17hb33175917cbcc04aE"(ptr align 8 %_61, i64 %_64, ptr align 8 @alloc_c1bdbd00257e9a82b4e4c5532503329f)
          to label %bb34 unwind label %cleanup3

bb34:                                             ; preds = %bb33
  store i32 %_59.0, ptr %_60, align 4
  br label %bb22

bb11:                                             ; No predecessors!
  unreachable

terminate:                                        ; preds = %bb40, %bb38
  %35 = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer
; call core::panicking::panic_in_cleanup
  call void @_ZN4core9panicking16panic_in_cleanup17h5f6bde45d17ae243E() #21
  unreachable

bb39:                                             ; preds = %bb40, %bb41, %bb38
  %36 = load ptr, ptr %0, align 8
  %37 = getelementptr inbounds i8, ptr %0, i64 8
  %38 = load i32, ptr %37, align 8
  %39 = insertvalue { ptr, i32 } poison, ptr %36, 0
  %40 = insertvalue { ptr, i32 } %39, i32 %38, 1
  resume { ptr, i32 } %40

bb40:                                             ; preds = %bb41
; invoke core::ptr::drop_in_place<alloc::vec::Vec<i32>>
  invoke void @"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17h7635b7d6bbd3936cE"(ptr align 8 %_3) #22
          to label %bb39 unwind label %terminate
}

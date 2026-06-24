define i32 @f_gold(i32 %n, i32 %m) unnamed_addr #3 personality ptr @rust_eh_personality {
start:
  %0 = alloca [16 x i8], align 8
  %_67 = alloca [1 x i8], align 1
  %_28 = alloca [8 x i8], align 4
  %iter1 = alloca [12 x i8], align 4
  %_26 = alloca [12 x i8], align 4
  %_25 = alloca [12 x i8], align 4
  %_21 = alloca [8 x i8], align 4
  %iter = alloca [12 x i8], align 4
  %_19 = alloca [12 x i8], align 4
  %_18 = alloca [12 x i8], align 4
  %_17 = alloca [12 x i8], align 4
  %_4 = alloca [24 x i8], align 8
  %dp = alloca [24 x i8], align 8
  store i8 0, ptr %_67, align 1
  %_6 = sext i32 %n to i64
  %_7.0 = add i64 %_6, 2
  %_7.1 = icmp ult i64 %_7.0, %_6
  br i1 %_7.1, label %panic, label %bb1

bb1:                                              ; preds = %start
  store i8 1, ptr %_67, align 1
; call alloc::vec::from_elem
  call void @_ZN5alloc3vec9from_elem17h62c74915ba6451f7E(ptr sret([24 x i8]) align 8 %_4, i32 0, i64 %_7.0)
  %_9 = sext i32 %n to i64
  %_10.0 = add i64 %_9, 2
  %_10.1 = icmp ult i64 %_10.0, %_9
  br i1 %_10.1, label %panic2, label %bb3

panic:                                            ; preds = %start
; call core::panicking::panic_const::panic_const_add_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_265f4e93f05d84ff9e265420e57f3d2e) #23
  unreachable

bb3:                                              ; preds = %bb1
  store i8 0, ptr %_67, align 1
; invoke alloc::vec::from_elem
  invoke void @_ZN5alloc3vec9from_elem17hd798af5f7cc7561fE(ptr sret([24 x i8]) align 8 %dp, ptr align 8 %_4, i64 %_10.0)
          to label %bb4 unwind label %cleanup

panic2:                                           ; preds = %bb1
; invoke core::panicking::panic_const::panic_const_add_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_6d3512511b70ed4330aec1a0d201bf53) #24
          to label %unreachable unwind label %cleanup

bb40:                                             ; preds = %cleanup
  %1 = load i8, ptr %_67, align 1
  %2 = trunc nuw i8 %1 to i1
  br i1 %2, label %bb39, label %bb38

cleanup:                                          ; preds = %bb3, %panic2
  %3 = landingpad { ptr, i32 }
          cleanup
  %4 = extractvalue { ptr, i32 } %3, 0
  %5 = extractvalue { ptr, i32 } %3, 1
  store ptr %4, ptr %0, align 8
  %6 = getelementptr inbounds i8, ptr %0, i64 8
  store i32 %5, ptr %6, align 8
  br label %bb40

unreachable:                                      ; preds = %panic8, %panic7, %panic6, %panic5, %panic4, %panic2
  unreachable

bb4:                                              ; preds = %bb3
  store i8 0, ptr %_67, align 1
; invoke <alloc::vec::Vec<T,A> as core::ops::index::IndexMut<I>>::index_mut
  %_12 = invoke align 8 ptr @"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17hefdd2306cbc2b10fE"(ptr align 8 %dp, i64 0, ptr align 8 @alloc_81698c01d869173cb04ad6aa7ae16527)
          to label %bb5 unwind label %cleanup3

bb37:                                             ; preds = %cleanup3
; invoke core::ptr::drop_in_place<alloc::vec::Vec<alloc::vec::Vec<i32>>>
  invoke void @"_ZN4core3ptr70drop_in_place$LT$alloc..vec..Vec$LT$alloc..vec..Vec$LT$i32$GT$$GT$$GT$17h73460d9c94b3644dE"(ptr align 8 %dp) #22
          to label %bb38 unwind label %terminate

cleanup3:                                         ; preds = %panic8, %bb31, %bb30, %bb29, %bb28, %panic7, %panic6, %bb24, %bb23, %bb22, %panic5, %bb20, %bb18, %bb16, %bb14, %bb34, %bb15, %bb11, %bb9, %bb8, %bb7, %bb6, %panic4, %bb4
  %7 = landingpad { ptr, i32 }
          cleanup
  %8 = extractvalue { ptr, i32 } %7, 0
  %9 = extractvalue { ptr, i32 } %7, 1
  store ptr %8, ptr %0, align 8
  %10 = getelementptr inbounds i8, ptr %0, i64 8
  store i32 %9, ptr %10, align 8
  br label %bb37

bb5:                                              ; preds = %bb4
  %_15 = sext i32 %n to i64
  %_16.0 = add i64 %_15, 1
  %_16.1 = icmp ult i64 %_16.0, %_15
  br i1 %_16.1, label %panic4, label %bb6

bb6:                                              ; preds = %bb5
; invoke <alloc::vec::Vec<T,A> as core::ops::index::IndexMut<I>>::index_mut
  %_11 = invoke align 4 ptr @"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h84e0e43e2282beecE"(ptr align 8 %_12, i64 %_16.0, ptr align 8 @alloc_21d6d7bc48393d889ac7687d62301079)
          to label %bb7 unwind label %cleanup3

panic4:                                           ; preds = %bb5
; invoke core::panicking::panic_const::panic_const_add_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_8cb23862a6a39bbcb74620e983c96602) #24
          to label %unreachable unwind label %cleanup3

bb7:                                              ; preds = %bb6
  store i32 1, ptr %_11, align 4
; invoke core::ops::range::RangeInclusive<Idx>::new
  invoke void @"_ZN4core3ops5range25RangeInclusive$LT$Idx$GT$3new17h04db1a7f3a0a63dfE"(ptr sret([12 x i8]) align 4 %_19, i32 %n, i32 %m)
          to label %bb8 unwind label %cleanup3

bb8:                                              ; preds = %bb7
; invoke core::iter::traits::iterator::Iterator::rev
  invoke void @_ZN4core4iter6traits8iterator8Iterator3rev17h19b0877b27f91ea2E(ptr sret([12 x i8]) align 4 %_18, ptr align 4 %_19)
          to label %bb9 unwind label %cleanup3

bb9:                                              ; preds = %bb8
; invoke <I as core::iter::traits::collect::IntoIterator>::into_iter
  invoke void @"_ZN63_$LT$I$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17he05fd865b0522ad6E"(ptr sret([12 x i8]) align 4 %_17, ptr align 4 %_18)
          to label %bb10 unwind label %cleanup3

bb10:                                             ; preds = %bb9
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %iter, ptr align 4 %_17, i64 12, i1 false)
  br label %bb11

bb11:                                             ; preds = %bb19, %bb10
; invoke <core::iter::adapters::rev::Rev<I> as core::iter::traits::iterator::Iterator>::next
  %11 = invoke { i32, i32 } @"_ZN98_$LT$core..iter..adapters..rev..Rev$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hb422df3f95f29edeE"(ptr align 4 %iter)
          to label %bb12 unwind label %cleanup3

bb12:                                             ; preds = %bb11
  %12 = extractvalue { i32, i32 } %11, 0
  %13 = extractvalue { i32, i32 } %11, 1
  store i32 %12, ptr %_21, align 4
  %14 = getelementptr inbounds i8, ptr %_21, i64 4
  store i32 %13, ptr %14, align 4
  %15 = load i32, ptr %_21, align 4
  %16 = getelementptr inbounds i8, ptr %_21, i64 4
  %17 = load i32, ptr %16, align 4
  %_23 = zext i32 %15 to i64
  %18 = trunc nuw i64 %_23 to i1
  br i1 %18, label %bb14, label %bb15

bb14:                                             ; preds = %bb12
  %19 = getelementptr inbounds i8, ptr %_21, i64 4
  %k = load i32, ptr %19, align 4
; invoke core::ops::range::RangeInclusive<Idx>::new
  invoke void @"_ZN4core3ops5range25RangeInclusive$LT$Idx$GT$3new17h04db1a7f3a0a63dfE"(ptr sret([12 x i8]) align 4 %_26, i32 0, i32 %n)
          to label %bb16 unwind label %cleanup3

bb15:                                             ; preds = %bb12
  %_65 = sext i32 %n to i64
; invoke <alloc::vec::Vec<T,A> as core::ops::index::Index<I>>::index
  %_63 = invoke align 8 ptr @"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hc4485747053bb8a4E"(ptr align 8 %dp, i64 %_65, ptr align 8 @alloc_234baa2226a178592a321a2610212f2b)
          to label %bb34 unwind label %cleanup3

bb34:                                             ; preds = %bb15
  %_66 = sext i32 %m to i64
; invoke <alloc::vec::Vec<T,A> as core::ops::index::Index<I>>::index
  %_62 = invoke align 4 ptr @"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h6017bdf3439b24f9E"(ptr align 8 %_63, i64 %_66, ptr align 8 @alloc_92ab0385a0693d929f1a14827f7be16f)
          to label %bb35 unwind label %cleanup3

bb35:                                             ; preds = %bb34
  %_0 = load i32, ptr %_62, align 4
; call core::ptr::drop_in_place<alloc::vec::Vec<alloc::vec::Vec<i32>>>
  call void @"_ZN4core3ptr70drop_in_place$LT$alloc..vec..Vec$LT$alloc..vec..Vec$LT$i32$GT$$GT$$GT$17h73460d9c94b3644dE"(ptr align 8 %dp)
  ret i32 %_0

bb16:                                             ; preds = %bb14
; invoke <I as core::iter::traits::collect::IntoIterator>::into_iter
  invoke void @"_ZN63_$LT$I$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17hb4893e95dba98e1cE"(ptr sret([12 x i8]) align 4 %_25, ptr align 4 %_26)
          to label %bb17 unwind label %cleanup3

bb17:                                             ; preds = %bb16
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %iter1, ptr align 4 %_25, i64 12, i1 false)
  br label %bb18

bb18:                                             ; preds = %bb33, %bb26, %bb17
; invoke core::iter::range::<impl core::iter::traits::iterator::Iterator for core::ops::range::RangeInclusive<A>>::next
  %20 = invoke { i32, i32 } @"_ZN4core4iter5range110_$LT$impl$u20$core..iter..traits..iterator..Iterator$u20$for$u20$core..ops..range..RangeInclusive$LT$A$GT$$GT$4next17h49206d8934258477E"(ptr align 4 %iter1)
          to label %bb19 unwind label %cleanup3

bb19:                                             ; preds = %bb18
  %21 = extractvalue { i32, i32 } %20, 0
  %22 = extractvalue { i32, i32 } %20, 1
  store i32 %21, ptr %_28, align 4
  %23 = getelementptr inbounds i8, ptr %_28, i64 4
  store i32 %22, ptr %23, align 4
  %24 = load i32, ptr %_28, align 4
  %25 = getelementptr inbounds i8, ptr %_28, i64 4
  %26 = load i32, ptr %25, align 4
  %_30 = zext i32 %24 to i64
  %27 = trunc nuw i64 %_30 to i1
  br i1 %27, label %bb20, label %bb11

bb20:                                             ; preds = %bb19
  %28 = getelementptr inbounds i8, ptr %_28, i64 4
  %i = load i32, ptr %28, align 4
  %_36 = sext i32 %i to i64
; invoke <alloc::vec::Vec<T,A> as core::ops::index::Index<I>>::index
  %_34 = invoke align 8 ptr @"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hc4485747053bb8a4E"(ptr align 8 %dp, i64 %_36, ptr align 8 @alloc_3b724e58deee6d70e6d2a132b3ae81a3)
          to label %bb21 unwind label %cleanup3

bb21:                                             ; preds = %bb20
  %29 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %k, i32 1)
  %_39.0 = extractvalue { i32, i1 } %29, 0
  %_39.1 = extractvalue { i32, i1 } %29, 1
  br i1 %_39.1, label %panic5, label %bb22

bb22:                                             ; preds = %bb21
  %_37 = sext i32 %_39.0 to i64
; invoke <alloc::vec::Vec<T,A> as core::ops::index::Index<I>>::index
  %_33 = invoke align 4 ptr @"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h6017bdf3439b24f9E"(ptr align 8 %_34, i64 %_37, ptr align 8 @alloc_98c5e91ae09872aeb3b84cc9cf3e635e)
          to label %bb23 unwind label %cleanup3

panic5:                                           ; preds = %bb21
; invoke core::panicking::panic_const::panic_const_add_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_8fe06c2139d47bd2e6235779b39b9e6f) #24
          to label %unreachable unwind label %cleanup3

bb23:                                             ; preds = %bb22
  %_32 = load i32, ptr %_33, align 4
  %_43 = sext i32 %i to i64
; invoke <alloc::vec::Vec<T,A> as core::ops::index::IndexMut<I>>::index_mut
  %_41 = invoke align 8 ptr @"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17hefdd2306cbc2b10fE"(ptr align 8 %dp, i64 %_43, ptr align 8 @alloc_e0d82c6cd5a5cfd1ddb08605add84838)
          to label %bb24 unwind label %cleanup3

bb24:                                             ; preds = %bb23
  %_44 = sext i32 %k to i64
; invoke <alloc::vec::Vec<T,A> as core::ops::index::IndexMut<I>>::index_mut
  %_40 = invoke align 4 ptr @"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h84e0e43e2282beecE"(ptr align 8 %_41, i64 %_44, ptr align 8 @alloc_0128e0030ff2c14713d1ebac2d26335a)
          to label %bb25 unwind label %cleanup3

bb25:                                             ; preds = %bb24
  store i32 %_32, ptr %_40, align 4
  %30 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %i, i32 %k)
  %_47.0 = extractvalue { i32, i1 } %30, 0
  %_47.1 = extractvalue { i32, i1 } %30, 1
  br i1 %_47.1, label %panic6, label %bb26

bb26:                                             ; preds = %bb25
  %_45 = icmp sge i32 %_47.0, 0
  br i1 %_45, label %bb27, label %bb18

panic6:                                           ; preds = %bb25
; invoke core::panicking::panic_const::panic_const_sub_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_sub_overflow17h134cc1a7f93654deE(ptr align 8 @alloc_1a8cb5d28bc4ebfd3cac8cf7e0615661) #24
          to label %unreachable unwind label %cleanup3

bb27:                                             ; preds = %bb26
  %31 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %i, i32 %k)
  %_54.0 = extractvalue { i32, i1 } %31, 0
  %_54.1 = extractvalue { i32, i1 } %31, 1
  br i1 %_54.1, label %panic7, label %bb28

bb28:                                             ; preds = %bb27
  %_52 = sext i32 %_54.0 to i64
; invoke <alloc::vec::Vec<T,A> as core::ops::index::Index<I>>::index
  %_50 = invoke align 8 ptr @"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hc4485747053bb8a4E"(ptr align 8 %dp, i64 %_52, ptr align 8 @alloc_7ce0cab68ec278d5a9f7617afb6ffe6e)
          to label %bb29 unwind label %cleanup3

panic7:                                           ; preds = %bb27
; invoke core::panicking::panic_const::panic_const_sub_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_sub_overflow17h134cc1a7f93654deE(ptr align 8 @alloc_6374e911fdfce26c3dcd578957659408) #24
          to label %unreachable unwind label %cleanup3

bb29:                                             ; preds = %bb28
  %_55 = sext i32 %k to i64
; invoke <alloc::vec::Vec<T,A> as core::ops::index::Index<I>>::index
  %_49 = invoke align 4 ptr @"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h6017bdf3439b24f9E"(ptr align 8 %_50, i64 %_55, ptr align 8 @alloc_3e9ac0e59aaf8d58d98516826bad0590)
          to label %bb30 unwind label %cleanup3

bb30:                                             ; preds = %bb29
  %_48 = load i32, ptr %_49, align 4
  %_59 = sext i32 %i to i64
; invoke <alloc::vec::Vec<T,A> as core::ops::index::IndexMut<I>>::index_mut
  %_57 = invoke align 8 ptr @"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17hefdd2306cbc2b10fE"(ptr align 8 %dp, i64 %_59, ptr align 8 @alloc_b8e6eba421ef4b6e987a8671071bd9d1)
          to label %bb31 unwind label %cleanup3

bb31:                                             ; preds = %bb30
  %_60 = sext i32 %k to i64
; invoke <alloc::vec::Vec<T,A> as core::ops::index::IndexMut<I>>::index_mut
  %_56 = invoke align 4 ptr @"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h84e0e43e2282beecE"(ptr align 8 %_57, i64 %_60, ptr align 8 @alloc_de5e162da34b74e0dff68a32cc6697b8)
          to label %bb32 unwind label %cleanup3

bb32:                                             ; preds = %bb31
  %32 = load i32, ptr %_56, align 4
  %33 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %32, i32 %_48)
  %_61.0 = extractvalue { i32, i1 } %33, 0
  %_61.1 = extractvalue { i32, i1 } %33, 1
  br i1 %_61.1, label %panic8, label %bb33

bb33:                                             ; preds = %bb32
  store i32 %_61.0, ptr %_56, align 4
  br label %bb18

panic8:                                           ; preds = %bb32
; invoke core::panicking::panic_const::panic_const_add_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_f489e53ecba919feca4cf21cc4cec519) #24
          to label %unreachable unwind label %cleanup3

bb13:                                             ; No predecessors!
  unreachable

terminate:                                        ; preds = %bb39, %bb37
  %34 = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer
; call core::panicking::panic_in_cleanup
  call void @_ZN4core9panicking16panic_in_cleanup17h5f6bde45d17ae243E() #21
  unreachable

bb38:                                             ; preds = %bb39, %bb40, %bb37
  %35 = load ptr, ptr %0, align 8
  %36 = getelementptr inbounds i8, ptr %0, i64 8
  %37 = load i32, ptr %36, align 8
  %38 = insertvalue { ptr, i32 } poison, ptr %35, 0
  %39 = insertvalue { ptr, i32 } %38, i32 %37, 1
  resume { ptr, i32 } %39

bb39:                                             ; preds = %bb40
; invoke core::ptr::drop_in_place<alloc::vec::Vec<i32>>
  invoke void @"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17h9c19673c900affa0E"(ptr align 8 %_4) #22
          to label %bb38 unwind label %terminate
}

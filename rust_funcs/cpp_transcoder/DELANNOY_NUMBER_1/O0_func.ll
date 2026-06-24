define i32 @f_gold(i32 %n, i32 %m) unnamed_addr #3 personality ptr @rust_eh_personality {
start:
  %0 = alloca [16 x i8], align 8
  %_64 = alloca [1 x i8], align 1
  %_21 = alloca [8 x i8], align 4
  %iter1 = alloca [12 x i8], align 4
  %_19 = alloca [12 x i8], align 4
  %_18 = alloca [12 x i8], align 4
  %_14 = alloca [8 x i8], align 4
  %iter = alloca [12 x i8], align 4
  %_12 = alloca [12 x i8], align 4
  %_11 = alloca [12 x i8], align 4
  %_4 = alloca [24 x i8], align 8
  %dp = alloca [24 x i8], align 8
  store i8 0, ptr %_64, align 1
  %_6 = sext i32 %n to i64
  %_7.0 = add i64 %_6, 1
  %_7.1 = icmp ult i64 %_7.0, %_6
  br i1 %_7.1, label %panic, label %bb1

bb1:                                              ; preds = %start
  store i8 1, ptr %_64, align 1
; call alloc::vec::from_elem
  call void @_ZN5alloc3vec9from_elem17h9c6a95fe0ef3d10fE(ptr sret([24 x i8]) align 8 %_4, i32 1, i64 %_7.0)
  %_9 = sext i32 %m to i64
  %_10.0 = add i64 %_9, 1
  %_10.1 = icmp ult i64 %_10.0, %_9
  br i1 %_10.1, label %panic2, label %bb3

panic:                                            ; preds = %start
; call core::panicking::panic_const::panic_const_add_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_83020c3337a62591e5b62a3ca69d3346) #23
  unreachable

bb3:                                              ; preds = %bb1
  store i8 0, ptr %_64, align 1
; invoke alloc::vec::from_elem
  invoke void @_ZN5alloc3vec9from_elem17hef245f16a9234468E(ptr sret([24 x i8]) align 8 %dp, ptr align 8 %_4, i64 %_10.0)
          to label %bb4 unwind label %cleanup

panic2:                                           ; preds = %bb1
; invoke core::panicking::panic_const::panic_const_add_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_db8c225017701d4bd7d56fd9906bfe9c) #24
          to label %unreachable unwind label %cleanup

bb37:                                             ; preds = %cleanup
  %1 = load i8, ptr %_64, align 1
  %2 = trunc nuw i8 %1 to i1
  br i1 %2, label %bb36, label %bb35

cleanup:                                          ; preds = %bb3, %panic2
  %3 = landingpad { ptr, i32 }
          cleanup
  %4 = extractvalue { ptr, i32 } %3, 0
  %5 = extractvalue { ptr, i32 } %3, 1
  store ptr %4, ptr %0, align 8
  %6 = getelementptr inbounds i8, ptr %0, i64 8
  store i32 %5, ptr %6, align 8
  br label %bb37

unreachable:                                      ; preds = %panic9, %panic8, %panic7, %panic6, %panic5, %panic4, %panic2
  unreachable

bb4:                                              ; preds = %bb3
  store i8 0, ptr %_64, align 1
; invoke core::ops::range::RangeInclusive<Idx>::new
  invoke void @"_ZN4core3ops5range25RangeInclusive$LT$Idx$GT$3new17h7d630299fd144861E"(ptr sret([12 x i8]) align 4 %_12, i32 1, i32 %m)
          to label %bb5 unwind label %cleanup3

bb34:                                             ; preds = %cleanup3
; invoke core::ptr::drop_in_place<alloc::vec::Vec<alloc::vec::Vec<i32>>>
  invoke void @"_ZN4core3ptr70drop_in_place$LT$alloc..vec..Vec$LT$alloc..vec..Vec$LT$i32$GT$$GT$$GT$17hd4f44059f4c2989dE"(ptr align 8 %dp) #22
          to label %bb35 unwind label %terminate

cleanup3:                                         ; preds = %bb29, %bb28, %panic9, %bb26, %panic8, %bb24, %panic7, %bb22, %panic6, %bb20, %panic5, %bb18, %bb17, %panic4, %bb14, %bb12, %bb10, %bb31, %bb11, %bb7, %bb5, %bb4
  %7 = landingpad { ptr, i32 }
          cleanup
  %8 = extractvalue { ptr, i32 } %7, 0
  %9 = extractvalue { ptr, i32 } %7, 1
  store ptr %8, ptr %0, align 8
  %10 = getelementptr inbounds i8, ptr %0, i64 8
  store i32 %9, ptr %10, align 8
  br label %bb34

bb5:                                              ; preds = %bb4
; invoke <I as core::iter::traits::collect::IntoIterator>::into_iter
  invoke void @"_ZN63_$LT$I$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17hb3ecad1bcbeb0f36E"(ptr sret([12 x i8]) align 4 %_11, ptr align 4 %_12)
          to label %bb6 unwind label %cleanup3

bb6:                                              ; preds = %bb5
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %iter, ptr align 4 %_11, i64 12, i1 false)
  br label %bb7

bb7:                                              ; preds = %bb15, %bb6
; invoke core::iter::range::<impl core::iter::traits::iterator::Iterator for core::ops::range::RangeInclusive<A>>::next
  %11 = invoke { i32, i32 } @"_ZN4core4iter5range110_$LT$impl$u20$core..iter..traits..iterator..Iterator$u20$for$u20$core..ops..range..RangeInclusive$LT$A$GT$$GT$4next17h11a29aeba6c68559E"(ptr align 4 %iter)
          to label %bb8 unwind label %cleanup3

bb8:                                              ; preds = %bb7
  %12 = extractvalue { i32, i32 } %11, 0
  %13 = extractvalue { i32, i32 } %11, 1
  store i32 %12, ptr %_14, align 4
  %14 = getelementptr inbounds i8, ptr %_14, i64 4
  store i32 %13, ptr %14, align 4
  %15 = load i32, ptr %_14, align 4
  %16 = getelementptr inbounds i8, ptr %_14, i64 4
  %17 = load i32, ptr %16, align 4
  %_16 = zext i32 %15 to i64
  %18 = trunc nuw i64 %_16 to i1
  br i1 %18, label %bb10, label %bb11

bb10:                                             ; preds = %bb8
  %19 = getelementptr inbounds i8, ptr %_14, i64 4
  %i = load i32, ptr %19, align 4
; invoke core::ops::range::RangeInclusive<Idx>::new
  invoke void @"_ZN4core3ops5range25RangeInclusive$LT$Idx$GT$3new17h7d630299fd144861E"(ptr sret([12 x i8]) align 4 %_19, i32 1, i32 %n)
          to label %bb12 unwind label %cleanup3

bb11:                                             ; preds = %bb8
  %_62 = sext i32 %m to i64
; invoke <alloc::vec::Vec<T,A> as core::ops::index::Index<I>>::index
  %_60 = invoke align 8 ptr @"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17he40159770b0c0f40E"(ptr align 8 %dp, i64 %_62, ptr align 8 @alloc_20b3f9c0b846103852130b6bf06f81fc)
          to label %bb31 unwind label %cleanup3

bb31:                                             ; preds = %bb11
  %_63 = sext i32 %n to i64
; invoke <alloc::vec::Vec<T,A> as core::ops::index::Index<I>>::index
  %_59 = invoke align 4 ptr @"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17habb41f8e1555c78dE"(ptr align 8 %_60, i64 %_63, ptr align 8 @alloc_53bd0cc8b1f1fa486c56d3e589bce80d)
          to label %bb32 unwind label %cleanup3

bb32:                                             ; preds = %bb31
  %_0 = load i32, ptr %_59, align 4
; call core::ptr::drop_in_place<alloc::vec::Vec<alloc::vec::Vec<i32>>>
  call void @"_ZN4core3ptr70drop_in_place$LT$alloc..vec..Vec$LT$alloc..vec..Vec$LT$i32$GT$$GT$$GT$17hd4f44059f4c2989dE"(ptr align 8 %dp)
  ret i32 %_0

bb12:                                             ; preds = %bb10
; invoke <I as core::iter::traits::collect::IntoIterator>::into_iter
  invoke void @"_ZN63_$LT$I$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17hb3ecad1bcbeb0f36E"(ptr sret([12 x i8]) align 4 %_18, ptr align 4 %_19)
          to label %bb13 unwind label %cleanup3

bb13:                                             ; preds = %bb12
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %iter1, ptr align 4 %_18, i64 12, i1 false)
  br label %bb14

bb14:                                             ; preds = %bb30, %bb13
; invoke core::iter::range::<impl core::iter::traits::iterator::Iterator for core::ops::range::RangeInclusive<A>>::next
  %20 = invoke { i32, i32 } @"_ZN4core4iter5range110_$LT$impl$u20$core..iter..traits..iterator..Iterator$u20$for$u20$core..ops..range..RangeInclusive$LT$A$GT$$GT$4next17h11a29aeba6c68559E"(ptr align 4 %iter1)
          to label %bb15 unwind label %cleanup3

bb15:                                             ; preds = %bb14
  %21 = extractvalue { i32, i32 } %20, 0
  %22 = extractvalue { i32, i32 } %20, 1
  store i32 %21, ptr %_21, align 4
  %23 = getelementptr inbounds i8, ptr %_21, i64 4
  store i32 %22, ptr %23, align 4
  %24 = load i32, ptr %_21, align 4
  %25 = getelementptr inbounds i8, ptr %_21, i64 4
  %26 = load i32, ptr %25, align 4
  %_23 = zext i32 %24 to i64
  %27 = trunc nuw i64 %_23 to i1
  br i1 %27, label %bb16, label %bb7

bb16:                                             ; preds = %bb15
  %28 = getelementptr inbounds i8, ptr %_21, i64 4
  %j = load i32, ptr %28, align 4
  %29 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %i, i32 1)
  %_32.0 = extractvalue { i32, i1 } %29, 0
  %_32.1 = extractvalue { i32, i1 } %29, 1
  br i1 %_32.1, label %panic4, label %bb17

bb17:                                             ; preds = %bb16
  %_30 = sext i32 %_32.0 to i64
; invoke <alloc::vec::Vec<T,A> as core::ops::index::Index<I>>::index
  %_28 = invoke align 8 ptr @"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17he40159770b0c0f40E"(ptr align 8 %dp, i64 %_30, ptr align 8 @alloc_731c37909044fcdd2e18b78d2828ebff)
          to label %bb18 unwind label %cleanup3

panic4:                                           ; preds = %bb16
; invoke core::panicking::panic_const::panic_const_sub_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_sub_overflow17h134cc1a7f93654deE(ptr align 8 @alloc_37524acad84559368cb23e2b9a6338dc) #24
          to label %unreachable unwind label %cleanup3

bb18:                                             ; preds = %bb17
  %_33 = sext i32 %j to i64
; invoke <alloc::vec::Vec<T,A> as core::ops::index::Index<I>>::index
  %_27 = invoke align 4 ptr @"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17habb41f8e1555c78dE"(ptr align 8 %_28, i64 %_33, ptr align 8 @alloc_6034ec1573abad1eb0f32e70345b0d1b)
          to label %bb19 unwind label %cleanup3

bb19:                                             ; preds = %bb18
  %_26 = load i32, ptr %_27, align 4
  %30 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %i, i32 1)
  %_40.0 = extractvalue { i32, i1 } %30, 0
  %_40.1 = extractvalue { i32, i1 } %30, 1
  br i1 %_40.1, label %panic5, label %bb20

bb20:                                             ; preds = %bb19
  %_38 = sext i32 %_40.0 to i64
; invoke <alloc::vec::Vec<T,A> as core::ops::index::Index<I>>::index
  %_36 = invoke align 8 ptr @"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17he40159770b0c0f40E"(ptr align 8 %dp, i64 %_38, ptr align 8 @alloc_1c9fa3dfd90dcc2b71374efa72e073de)
          to label %bb21 unwind label %cleanup3

panic5:                                           ; preds = %bb19
; invoke core::panicking::panic_const::panic_const_sub_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_sub_overflow17h134cc1a7f93654deE(ptr align 8 @alloc_76805253f79e35aa1a7040c2530ead8e) #24
          to label %unreachable unwind label %cleanup3

bb21:                                             ; preds = %bb20
  %31 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %j, i32 1)
  %_43.0 = extractvalue { i32, i1 } %31, 0
  %_43.1 = extractvalue { i32, i1 } %31, 1
  br i1 %_43.1, label %panic6, label %bb22

bb22:                                             ; preds = %bb21
  %_41 = sext i32 %_43.0 to i64
; invoke <alloc::vec::Vec<T,A> as core::ops::index::Index<I>>::index
  %_35 = invoke align 4 ptr @"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17habb41f8e1555c78dE"(ptr align 8 %_36, i64 %_41, ptr align 8 @alloc_a1893a14c1fec3093c7d7f7353ef69a1)
          to label %bb23 unwind label %cleanup3

panic6:                                           ; preds = %bb21
; invoke core::panicking::panic_const::panic_const_sub_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_sub_overflow17h134cc1a7f93654deE(ptr align 8 @alloc_25c3cc2547fae3acbf7d5ddd595e13ab) #24
          to label %unreachable unwind label %cleanup3

bb23:                                             ; preds = %bb22
  %_34 = load i32, ptr %_35, align 4
  %32 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %_26, i32 %_34)
  %_44.0 = extractvalue { i32, i1 } %32, 0
  %_44.1 = extractvalue { i32, i1 } %32, 1
  br i1 %_44.1, label %panic7, label %bb24

bb24:                                             ; preds = %bb23
  %_49 = sext i32 %i to i64
; invoke <alloc::vec::Vec<T,A> as core::ops::index::Index<I>>::index
  %_47 = invoke align 8 ptr @"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17he40159770b0c0f40E"(ptr align 8 %dp, i64 %_49, ptr align 8 @alloc_4019431e0402a285e798aec2dd229ee9)
          to label %bb25 unwind label %cleanup3

panic7:                                           ; preds = %bb23
; invoke core::panicking::panic_const::panic_const_add_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_94d728ac3b0b72a977f9d1d5010c5ea9) #24
          to label %unreachable unwind label %cleanup3

bb25:                                             ; preds = %bb24
  %33 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %j, i32 1)
  %_52.0 = extractvalue { i32, i1 } %33, 0
  %_52.1 = extractvalue { i32, i1 } %33, 1
  br i1 %_52.1, label %panic8, label %bb26

bb26:                                             ; preds = %bb25
  %_50 = sext i32 %_52.0 to i64
; invoke <alloc::vec::Vec<T,A> as core::ops::index::Index<I>>::index
  %_46 = invoke align 4 ptr @"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17habb41f8e1555c78dE"(ptr align 8 %_47, i64 %_50, ptr align 8 @alloc_a101ad5ad4a9ebcfbf7a78d2bc847d1f)
          to label %bb27 unwind label %cleanup3

panic8:                                           ; preds = %bb25
; invoke core::panicking::panic_const::panic_const_sub_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_sub_overflow17h134cc1a7f93654deE(ptr align 8 @alloc_8b06735d0d01e76fe4475846f69ad710) #24
          to label %unreachable unwind label %cleanup3

bb27:                                             ; preds = %bb26
  %_45 = load i32, ptr %_46, align 4
  %34 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %_44.0, i32 %_45)
  %_53.0 = extractvalue { i32, i1 } %34, 0
  %_53.1 = extractvalue { i32, i1 } %34, 1
  br i1 %_53.1, label %panic9, label %bb28

bb28:                                             ; preds = %bb27
  %_57 = sext i32 %i to i64
; invoke <alloc::vec::Vec<T,A> as core::ops::index::IndexMut<I>>::index_mut
  %_55 = invoke align 8 ptr @"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17hb26a32d9649d7f38E"(ptr align 8 %dp, i64 %_57, ptr align 8 @alloc_18142c03d1f178700dd3e192cb7d9ed7)
          to label %bb29 unwind label %cleanup3

panic9:                                           ; preds = %bb27
; invoke core::panicking::panic_const::panic_const_add_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_94d728ac3b0b72a977f9d1d5010c5ea9) #24
          to label %unreachable unwind label %cleanup3

bb29:                                             ; preds = %bb28
  %_58 = sext i32 %j to i64
; invoke <alloc::vec::Vec<T,A> as core::ops::index::IndexMut<I>>::index_mut
  %_54 = invoke align 4 ptr @"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h08834b325217b7c0E"(ptr align 8 %_55, i64 %_58, ptr align 8 @alloc_184845fc6526c938fbcef99611338cb8)
          to label %bb30 unwind label %cleanup3

bb30:                                             ; preds = %bb29
  store i32 %_53.0, ptr %_54, align 4
  br label %bb14

bb9:                                              ; No predecessors!
  unreachable

terminate:                                        ; preds = %bb36, %bb34
  %35 = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer
; call core::panicking::panic_in_cleanup
  call void @_ZN4core9panicking16panic_in_cleanup17h5f6bde45d17ae243E() #21
  unreachable

bb35:                                             ; preds = %bb36, %bb37, %bb34
  %36 = load ptr, ptr %0, align 8
  %37 = getelementptr inbounds i8, ptr %0, i64 8
  %38 = load i32, ptr %37, align 8
  %39 = insertvalue { ptr, i32 } poison, ptr %36, 0
  %40 = insertvalue { ptr, i32 } %39, i32 %38, 1
  resume { ptr, i32 } %40

bb36:                                             ; preds = %bb37
; invoke core::ptr::drop_in_place<alloc::vec::Vec<i32>>
  invoke void @"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17h63fe1e6bbfe6588eE"(ptr align 8 %_4) #22
          to label %bb35 unwind label %terminate
}

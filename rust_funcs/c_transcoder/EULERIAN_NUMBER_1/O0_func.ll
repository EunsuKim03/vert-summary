define i32 @f_gold(i32 %n, i32 %m) unnamed_addr #3 personality ptr @rust_eh_personality {
start:
  %0 = alloca [16 x i8], align 8
  %_69 = alloca [1 x i8], align 1
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
  store i8 0, ptr %_69, align 1
  %_6 = sext i32 %m to i64
  %_7.0 = add i64 %_6, 1
  %_7.1 = icmp ult i64 %_7.0, %_6
  br i1 %_7.1, label %panic, label %bb1

bb1:                                              ; preds = %start
  store i8 1, ptr %_69, align 1
; call alloc::vec::from_elem
  call void @_ZN5alloc3vec9from_elem17hff1cf82933b9e4abE(ptr sret([24 x i8]) align 8 %_4, i32 0, i64 %_7.0)
  %_9 = sext i32 %n to i64
  %_10.0 = add i64 %_9, 1
  %_10.1 = icmp ult i64 %_10.0, %_9
  br i1 %_10.1, label %panic2, label %bb3

panic:                                            ; preds = %start
; call core::panicking::panic_const::panic_const_add_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_fb769308c285320bc0100181a7913b09) #23
  unreachable

bb3:                                              ; preds = %bb1
  store i8 0, ptr %_69, align 1
; invoke alloc::vec::from_elem
  invoke void @_ZN5alloc3vec9from_elem17ha4ceb994098dee71E(ptr sret([24 x i8]) align 8 %dp, ptr align 8 %_4, i64 %_10.0)
          to label %bb4 unwind label %cleanup

panic2:                                           ; preds = %bb1
; invoke core::panicking::panic_const::panic_const_add_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_750730e01ac63841d206137b65905964) #24
          to label %unreachable unwind label %cleanup

bb42:                                             ; preds = %cleanup
  %1 = load i8, ptr %_69, align 1
  %2 = trunc nuw i8 %1 to i1
  br i1 %2, label %bb41, label %bb40

cleanup:                                          ; preds = %bb3, %panic2
  %3 = landingpad { ptr, i32 }
          cleanup
  %4 = extractvalue { ptr, i32 } %3, 0
  %5 = extractvalue { ptr, i32 } %3, 1
  store ptr %4, ptr %0, align 8
  %6 = getelementptr inbounds i8, ptr %0, i64 8
  store i32 %5, ptr %6, align 8
  br label %bb42

unreachable:                                      ; preds = %panic11, %panic10, %panic9, %panic8, %panic7, %panic6, %panic5, %panic4, %panic2
  unreachable

bb4:                                              ; preds = %bb3
  store i8 0, ptr %_69, align 1
; invoke core::ops::range::RangeInclusive<Idx>::new
  invoke void @"_ZN4core3ops5range25RangeInclusive$LT$Idx$GT$3new17hd0a5a8710fceace0E"(ptr sret([12 x i8]) align 4 %_12, i32 1, i32 %n)
          to label %bb5 unwind label %cleanup3

bb39:                                             ; preds = %cleanup3
; invoke core::ptr::drop_in_place<alloc::vec::Vec<alloc::vec::Vec<i32>>>
  invoke void @"_ZN4core3ptr70drop_in_place$LT$alloc..vec..Vec$LT$alloc..vec..Vec$LT$i32$GT$$GT$$GT$17hf003bc041d4d0d5fE"(ptr align 8 %dp) #22
          to label %bb40 unwind label %terminate

cleanup3:                                         ; preds = %bb19, %bb18, %bb34, %bb33, %panic11, %panic10, %bb30, %bb29, %panic9, %panic8, %panic7, %bb25, %panic6, %bb23, %panic5, %panic4, %bb14, %bb12, %bb10, %bb36, %bb11, %bb7, %bb5, %bb4
  %7 = landingpad { ptr, i32 }
          cleanup
  %8 = extractvalue { ptr, i32 } %7, 0
  %9 = extractvalue { ptr, i32 } %7, 1
  store ptr %8, ptr %0, align 8
  %10 = getelementptr inbounds i8, ptr %0, i64 8
  store i32 %9, ptr %10, align 8
  br label %bb39

bb5:                                              ; preds = %bb4
; invoke <I as core::iter::traits::collect::IntoIterator>::into_iter
  invoke void @"_ZN63_$LT$I$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17h6bc52f616aba79d6E"(ptr sret([12 x i8]) align 4 %_11, ptr align 4 %_12)
          to label %bb6 unwind label %cleanup3

bb6:                                              ; preds = %bb5
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %iter, ptr align 4 %_11, i64 12, i1 false)
  br label %bb7

bb7:                                              ; preds = %bb15, %bb6
; invoke core::iter::range::<impl core::iter::traits::iterator::Iterator for core::ops::range::RangeInclusive<A>>::next
  %11 = invoke { i32, i32 } @"_ZN4core4iter5range110_$LT$impl$u20$core..iter..traits..iterator..Iterator$u20$for$u20$core..ops..range..RangeInclusive$LT$A$GT$$GT$4next17h053b1522d0f994afE"(ptr align 4 %iter)
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
  invoke void @"_ZN4core3ops5range25RangeInclusive$LT$Idx$GT$3new17hd0a5a8710fceace0E"(ptr sret([12 x i8]) align 4 %_19, i32 0, i32 %m)
          to label %bb12 unwind label %cleanup3

bb11:                                             ; preds = %bb8
  %_67 = sext i32 %n to i64
; invoke <alloc::vec::Vec<T,A> as core::ops::index::Index<I>>::index
  %_65 = invoke align 8 ptr @"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hb7608ceb4d22d5f5E"(ptr align 8 %dp, i64 %_67, ptr align 8 @alloc_9aedac22484814d7d80e57d57901818a)
          to label %bb36 unwind label %cleanup3

bb36:                                             ; preds = %bb11
  %_68 = sext i32 %m to i64
; invoke <alloc::vec::Vec<T,A> as core::ops::index::Index<I>>::index
  %_64 = invoke align 4 ptr @"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h8e2df6bf9aa91763E"(ptr align 8 %_65, i64 %_68, ptr align 8 @alloc_73604c8d70270bde2a40dd181137d92f)
          to label %bb37 unwind label %cleanup3

bb37:                                             ; preds = %bb36
  %_0 = load i32, ptr %_64, align 4
; call core::ptr::drop_in_place<alloc::vec::Vec<alloc::vec::Vec<i32>>>
  call void @"_ZN4core3ptr70drop_in_place$LT$alloc..vec..Vec$LT$alloc..vec..Vec$LT$i32$GT$$GT$$GT$17hf003bc041d4d0d5fE"(ptr align 8 %dp)
  ret i32 %_0

bb12:                                             ; preds = %bb10
; invoke <I as core::iter::traits::collect::IntoIterator>::into_iter
  invoke void @"_ZN63_$LT$I$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17h6bc52f616aba79d6E"(ptr sret([12 x i8]) align 4 %_18, ptr align 4 %_19)
          to label %bb13 unwind label %cleanup3

bb13:                                             ; preds = %bb12
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %iter1, ptr align 4 %_18, i64 12, i1 false)
  br label %bb14

bb14:                                             ; preds = %bb20, %bb35, %bb16, %bb13
; invoke core::iter::range::<impl core::iter::traits::iterator::Iterator for core::ops::range::RangeInclusive<A>>::next
  %20 = invoke { i32, i32 } @"_ZN4core4iter5range110_$LT$impl$u20$core..iter..traits..iterator..Iterator$u20$for$u20$core..ops..range..RangeInclusive$LT$A$GT$$GT$4next17h053b1522d0f994afE"(ptr align 4 %iter1)
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
  %_25 = icmp sgt i32 %i, %j
  br i1 %_25, label %bb17, label %bb14

bb17:                                             ; preds = %bb16
  %_26 = icmp eq i32 %j, 0
  br i1 %_26, label %bb18, label %bb21

bb21:                                             ; preds = %bb17
  %29 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %i, i32 %j)
  %_34.0 = extractvalue { i32, i1 } %29, 0
  %_34.1 = extractvalue { i32, i1 } %29, 1
  br i1 %_34.1, label %panic4, label %bb22

bb18:                                             ; preds = %bb17
  %_30 = sext i32 %i to i64
; invoke <alloc::vec::Vec<T,A> as core::ops::index::IndexMut<I>>::index_mut
  %_28 = invoke align 8 ptr @"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h0519fb3f504dacabE"(ptr align 8 %dp, i64 %_30, ptr align 8 @alloc_16db62fd9e969c3de572f8a58d97dff4)
          to label %bb19 unwind label %cleanup3

bb22:                                             ; preds = %bb21
  %30 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %i, i32 1)
  %_41.0 = extractvalue { i32, i1 } %30, 0
  %_41.1 = extractvalue { i32, i1 } %30, 1
  br i1 %_41.1, label %panic5, label %bb23

panic4:                                           ; preds = %bb21
; invoke core::panicking::panic_const::panic_const_sub_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_sub_overflow17h134cc1a7f93654deE(ptr align 8 @alloc_d5f3780693b9e381ea18540d91364ad2) #24
          to label %unreachable unwind label %cleanup3

bb23:                                             ; preds = %bb22
  %_39 = sext i32 %_41.0 to i64
; invoke <alloc::vec::Vec<T,A> as core::ops::index::Index<I>>::index
  %_37 = invoke align 8 ptr @"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hb7608ceb4d22d5f5E"(ptr align 8 %dp, i64 %_39, ptr align 8 @alloc_07768cd8e99053a5a2b29f5c6e6fad5a)
          to label %bb24 unwind label %cleanup3

panic5:                                           ; preds = %bb22
; invoke core::panicking::panic_const::panic_const_sub_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_sub_overflow17h134cc1a7f93654deE(ptr align 8 @alloc_30e0aef85bf0fec60eeaf8915fd99ab9) #24
          to label %unreachable unwind label %cleanup3

bb24:                                             ; preds = %bb23
  %31 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %j, i32 1)
  %_44.0 = extractvalue { i32, i1 } %31, 0
  %_44.1 = extractvalue { i32, i1 } %31, 1
  br i1 %_44.1, label %panic6, label %bb25

bb25:                                             ; preds = %bb24
  %_42 = sext i32 %_44.0 to i64
; invoke <alloc::vec::Vec<T,A> as core::ops::index::Index<I>>::index
  %_36 = invoke align 4 ptr @"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h8e2df6bf9aa91763E"(ptr align 8 %_37, i64 %_42, ptr align 8 @alloc_638c58dfa4b375a85f70c20a7d4b825e)
          to label %bb26 unwind label %cleanup3

panic6:                                           ; preds = %bb24
; invoke core::panicking::panic_const::panic_const_sub_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_sub_overflow17h134cc1a7f93654deE(ptr align 8 @alloc_50f3876ceff914043db9f0b5f395c878) #24
          to label %unreachable unwind label %cleanup3

bb26:                                             ; preds = %bb25
  %_35 = load i32, ptr %_36, align 4
  %32 = call { i32, i1 } @llvm.smul.with.overflow.i32(i32 %_34.0, i32 %_35)
  %_45.0 = extractvalue { i32, i1 } %32, 0
  %_45.1 = extractvalue { i32, i1 } %32, 1
  br i1 %_45.1, label %panic7, label %bb27

bb27:                                             ; preds = %bb26
  %33 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %j, i32 1)
  %_48.0 = extractvalue { i32, i1 } %33, 0
  %_48.1 = extractvalue { i32, i1 } %33, 1
  br i1 %_48.1, label %panic8, label %bb28

panic7:                                           ; preds = %bb26
; invoke core::panicking::panic_const::panic_const_mul_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_mul_overflow17h554ac164c12099f8E(ptr align 8 @alloc_d5f3780693b9e381ea18540d91364ad2) #24
          to label %unreachable unwind label %cleanup3

bb28:                                             ; preds = %bb27
  %34 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %i, i32 1)
  %_55.0 = extractvalue { i32, i1 } %34, 0
  %_55.1 = extractvalue { i32, i1 } %34, 1
  br i1 %_55.1, label %panic9, label %bb29

panic8:                                           ; preds = %bb27
; invoke core::panicking::panic_const::panic_const_add_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_5f1ff3d3e024404ea1121d5aa72b6053) #24
          to label %unreachable unwind label %cleanup3

bb29:                                             ; preds = %bb28
  %_53 = sext i32 %_55.0 to i64
; invoke <alloc::vec::Vec<T,A> as core::ops::index::Index<I>>::index
  %_51 = invoke align 8 ptr @"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hb7608ceb4d22d5f5E"(ptr align 8 %dp, i64 %_53, ptr align 8 @alloc_8079ce15ef3153fcdad7f8bbcdf8e431)
          to label %bb30 unwind label %cleanup3

panic9:                                           ; preds = %bb28
; invoke core::panicking::panic_const::panic_const_sub_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_sub_overflow17h134cc1a7f93654deE(ptr align 8 @alloc_40b21f01f8c1e6759057b60fab0cd6f9) #24
          to label %unreachable unwind label %cleanup3

bb30:                                             ; preds = %bb29
  %_56 = sext i32 %j to i64
; invoke <alloc::vec::Vec<T,A> as core::ops::index::Index<I>>::index
  %_50 = invoke align 4 ptr @"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h8e2df6bf9aa91763E"(ptr align 8 %_51, i64 %_56, ptr align 8 @alloc_f68cf6ba4ed92a6d9a9a828247a7e218)
          to label %bb31 unwind label %cleanup3

bb31:                                             ; preds = %bb30
  %_49 = load i32, ptr %_50, align 4
  %35 = call { i32, i1 } @llvm.smul.with.overflow.i32(i32 %_48.0, i32 %_49)
  %_57.0 = extractvalue { i32, i1 } %35, 0
  %_57.1 = extractvalue { i32, i1 } %35, 1
  br i1 %_57.1, label %panic10, label %bb32

bb32:                                             ; preds = %bb31
  %36 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %_45.0, i32 %_57.0)
  %_58.0 = extractvalue { i32, i1 } %36, 0
  %_58.1 = extractvalue { i32, i1 } %36, 1
  br i1 %_58.1, label %panic11, label %bb33

panic10:                                          ; preds = %bb31
; invoke core::panicking::panic_const::panic_const_mul_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_mul_overflow17h554ac164c12099f8E(ptr align 8 @alloc_5f1ff3d3e024404ea1121d5aa72b6053) #24
          to label %unreachable unwind label %cleanup3

bb33:                                             ; preds = %bb32
  %_62 = sext i32 %i to i64
; invoke <alloc::vec::Vec<T,A> as core::ops::index::IndexMut<I>>::index_mut
  %_60 = invoke align 8 ptr @"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h0519fb3f504dacabE"(ptr align 8 %dp, i64 %_62, ptr align 8 @alloc_055624fe5570cb20d170bc175b8b8fb2)
          to label %bb34 unwind label %cleanup3

panic11:                                          ; preds = %bb32
; invoke core::panicking::panic_const::panic_const_add_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_d5f3780693b9e381ea18540d91364ad2) #24
          to label %unreachable unwind label %cleanup3

bb34:                                             ; preds = %bb33
  %_63 = sext i32 %j to i64
; invoke <alloc::vec::Vec<T,A> as core::ops::index::IndexMut<I>>::index_mut
  %_59 = invoke align 4 ptr @"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17hf297737a974473feE"(ptr align 8 %_60, i64 %_63, ptr align 8 @alloc_8084c17ab5154093f71e140cf63be4bd)
          to label %bb35 unwind label %cleanup3

bb35:                                             ; preds = %bb34
  store i32 %_58.0, ptr %_59, align 4
  br label %bb14

bb19:                                             ; preds = %bb18
  %_31 = sext i32 %j to i64
; invoke <alloc::vec::Vec<T,A> as core::ops::index::IndexMut<I>>::index_mut
  %_27 = invoke align 4 ptr @"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17hf297737a974473feE"(ptr align 8 %_28, i64 %_31, ptr align 8 @alloc_598ba389cd355acaa8ef28f2ad111c05)
          to label %bb20 unwind label %cleanup3

bb20:                                             ; preds = %bb19
  store i32 1, ptr %_27, align 4
  br label %bb14

bb9:                                              ; No predecessors!
  unreachable

terminate:                                        ; preds = %bb41, %bb39
  %37 = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer
; call core::panicking::panic_in_cleanup
  call void @_ZN4core9panicking16panic_in_cleanup17h5f6bde45d17ae243E() #21
  unreachable

bb40:                                             ; preds = %bb41, %bb42, %bb39
  %38 = load ptr, ptr %0, align 8
  %39 = getelementptr inbounds i8, ptr %0, i64 8
  %40 = load i32, ptr %39, align 8
  %41 = insertvalue { ptr, i32 } poison, ptr %38, 0
  %42 = insertvalue { ptr, i32 } %41, i32 %40, 1
  resume { ptr, i32 } %42

bb41:                                             ; preds = %bb42
; invoke core::ptr::drop_in_place<alloc::vec::Vec<i32>>
  invoke void @"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17h9fcaf1efa8794f9fE"(ptr align 8 %_4) #22
          to label %bb40 unwind label %terminate
}

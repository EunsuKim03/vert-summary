define i32 @f_gold(i32 %m, i32 %n) unnamed_addr #3 personality ptr @rust_eh_personality {
start:
  %0 = alloca [16 x i8], align 8
  %_39 = alloca [8 x i8], align 4
  %iter3 = alloca [8 x i8], align 4
  %_32 = alloca [8 x i8], align 4
  %iter2 = alloca [8 x i8], align 4
  %_21 = alloca [8 x i8], align 4
  %iter1 = alloca [8 x i8], align 4
  %_10 = alloca [8 x i8], align 4
  %iter = alloca [8 x i8], align 4
  %_4 = alloca [24 x i8], align 8
  %count = alloca [24 x i8], align 8
  %_5 = sext i32 %n to i64
; call alloc::vec::from_elem
  call void @_ZN5alloc3vec9from_elem17h9fdb3c4f0bd28596E(ptr sret([24 x i8]) align 8 %_4, i32 0, i64 %_5)
  %_6 = sext i32 %m to i64
; call alloc::vec::from_elem
  call void @_ZN5alloc3vec9from_elem17h42d280bfb327f445E(ptr sret([24 x i8]) align 8 %count, ptr align 8 %_4, i64 %_6)
; invoke <I as core::iter::traits::collect::IntoIterator>::into_iter
  %1 = invoke { i32, i32 } @"_ZN63_$LT$I$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17h0b4044a7ab81817dE"(i32 0, i32 %m)
          to label %bb3 unwind label %cleanup

bb41:                                             ; preds = %cleanup
; invoke core::ptr::drop_in_place<alloc::vec::Vec<alloc::vec::Vec<i32>>>
  invoke void @"_ZN4core3ptr70drop_in_place$LT$alloc..vec..Vec$LT$alloc..vec..Vec$LT$i32$GT$$GT$$GT$17h775fb4c842b20801E"(ptr align 8 %count) #22
          to label %bb42 unwind label %terminate

cleanup:                                          ; preds = %bb9, %bb7, %bb16, %bb14, %bb34, %bb33, %panic7, %bb31, %panic6, %bb29, %bb28, %bb27, %panic5, %bb24, %bb21, %bb38, %panic4, %bb36, %panic, %bb19, %bb15, %bb12, %bb8, %bb4, %start
  %2 = landingpad { ptr, i32 }
          cleanup
  %3 = extractvalue { ptr, i32 } %2, 0
  %4 = extractvalue { ptr, i32 } %2, 1
  store ptr %3, ptr %0, align 8
  %5 = getelementptr inbounds i8, ptr %0, i64 8
  store i32 %4, ptr %5, align 8
  br label %bb41

bb3:                                              ; preds = %start
  %_7.0 = extractvalue { i32, i32 } %1, 0
  %_7.1 = extractvalue { i32, i32 } %1, 1
  store i32 %_7.0, ptr %iter, align 4
  %6 = getelementptr inbounds i8, ptr %iter, i64 4
  store i32 %_7.1, ptr %6, align 4
  br label %bb4

bb4:                                              ; preds = %bb10, %bb3
; invoke core::iter::range::<impl core::iter::traits::iterator::Iterator for core::ops::range::Range<A>>::next
  %7 = invoke { i32, i32 } @"_ZN4core4iter5range101_$LT$impl$u20$core..iter..traits..iterator..Iterator$u20$for$u20$core..ops..range..Range$LT$A$GT$$GT$4next17h976d0874e02eb94aE"(ptr align 4 %iter)
          to label %bb5 unwind label %cleanup

bb5:                                              ; preds = %bb4
  %8 = extractvalue { i32, i32 } %7, 0
  %9 = extractvalue { i32, i32 } %7, 1
  store i32 %8, ptr %_10, align 4
  %10 = getelementptr inbounds i8, ptr %_10, i64 4
  store i32 %9, ptr %10, align 4
  %11 = load i32, ptr %_10, align 4
  %12 = getelementptr inbounds i8, ptr %_10, i64 4
  %13 = load i32, ptr %12, align 4
  %_12 = zext i32 %11 to i64
  %14 = trunc nuw i64 %_12 to i1
  br i1 %14, label %bb7, label %bb8

bb7:                                              ; preds = %bb5
  %15 = getelementptr inbounds i8, ptr %_10, i64 4
  %i9 = load i32, ptr %15, align 4
  %_17 = sext i32 %i9 to i64
; invoke <alloc::vec::Vec<T,A> as core::ops::index::IndexMut<I>>::index_mut
  %_15 = invoke align 8 ptr @"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h48b0feb35abfea98E"(ptr align 8 %count, i64 %_17, ptr align 8 @alloc_d0a5002dff78d74011b3f5713d56c529)
          to label %bb9 unwind label %cleanup

bb8:                                              ; preds = %bb5
; invoke <I as core::iter::traits::collect::IntoIterator>::into_iter
  %16 = invoke { i32, i32 } @"_ZN63_$LT$I$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17h0b4044a7ab81817dE"(i32 0, i32 %n)
          to label %bb11 unwind label %cleanup

bb11:                                             ; preds = %bb8
  %_18.0 = extractvalue { i32, i32 } %16, 0
  %_18.1 = extractvalue { i32, i32 } %16, 1
  store i32 %_18.0, ptr %iter1, align 4
  %17 = getelementptr inbounds i8, ptr %iter1, i64 4
  store i32 %_18.1, ptr %17, align 4
  br label %bb12

bb12:                                             ; preds = %bb17, %bb11
; invoke core::iter::range::<impl core::iter::traits::iterator::Iterator for core::ops::range::Range<A>>::next
  %18 = invoke { i32, i32 } @"_ZN4core4iter5range101_$LT$impl$u20$core..iter..traits..iterator..Iterator$u20$for$u20$core..ops..range..Range$LT$A$GT$$GT$4next17h976d0874e02eb94aE"(ptr align 4 %iter1)
          to label %bb13 unwind label %cleanup

bb13:                                             ; preds = %bb12
  %19 = extractvalue { i32, i32 } %18, 0
  %20 = extractvalue { i32, i32 } %18, 1
  store i32 %19, ptr %_21, align 4
  %21 = getelementptr inbounds i8, ptr %_21, i64 4
  store i32 %20, ptr %21, align 4
  %22 = load i32, ptr %_21, align 4
  %23 = getelementptr inbounds i8, ptr %_21, i64 4
  %24 = load i32, ptr %23, align 4
  %_23 = zext i32 %22 to i64
  %25 = trunc nuw i64 %_23 to i1
  br i1 %25, label %bb14, label %bb15

bb14:                                             ; preds = %bb13
  %26 = getelementptr inbounds i8, ptr %_21, i64 4
  %j8 = load i32, ptr %26, align 4
; invoke <alloc::vec::Vec<T,A> as core::ops::index::IndexMut<I>>::index_mut
  %_26 = invoke align 8 ptr @"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h48b0feb35abfea98E"(ptr align 8 %count, i64 0, ptr align 8 @alloc_9fc7a9d98fb21370db2478d27f1b49de)
          to label %bb16 unwind label %cleanup

bb15:                                             ; preds = %bb13
; invoke <I as core::iter::traits::collect::IntoIterator>::into_iter
  %27 = invoke { i32, i32 } @"_ZN63_$LT$I$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17h0b4044a7ab81817dE"(i32 1, i32 %m)
          to label %bb18 unwind label %cleanup

bb18:                                             ; preds = %bb15
  %_29.0 = extractvalue { i32, i32 } %27, 0
  %_29.1 = extractvalue { i32, i32 } %27, 1
  store i32 %_29.0, ptr %iter2, align 4
  %28 = getelementptr inbounds i8, ptr %iter2, i64 4
  store i32 %_29.1, ptr %28, align 4
  br label %bb19

bb19:                                             ; preds = %bb25, %bb18
; invoke core::iter::range::<impl core::iter::traits::iterator::Iterator for core::ops::range::Range<A>>::next
  %29 = invoke { i32, i32 } @"_ZN4core4iter5range101_$LT$impl$u20$core..iter..traits..iterator..Iterator$u20$for$u20$core..ops..range..Range$LT$A$GT$$GT$4next17h976d0874e02eb94aE"(ptr align 4 %iter2)
          to label %bb20 unwind label %cleanup

bb20:                                             ; preds = %bb19
  %30 = extractvalue { i32, i32 } %29, 0
  %31 = extractvalue { i32, i32 } %29, 1
  store i32 %30, ptr %_32, align 4
  %32 = getelementptr inbounds i8, ptr %_32, i64 4
  store i32 %31, ptr %32, align 4
  %33 = load i32, ptr %_32, align 4
  %34 = getelementptr inbounds i8, ptr %_32, i64 4
  %35 = load i32, ptr %34, align 4
  %_34 = zext i32 %33 to i64
  %36 = trunc nuw i64 %_34 to i1
  br i1 %36, label %bb21, label %bb22

bb21:                                             ; preds = %bb20
  %37 = getelementptr inbounds i8, ptr %_32, i64 4
  %i = load i32, ptr %37, align 4
; invoke <I as core::iter::traits::collect::IntoIterator>::into_iter
  %38 = invoke { i32, i32 } @"_ZN63_$LT$I$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17h0b4044a7ab81817dE"(i32 1, i32 %n)
          to label %bb23 unwind label %cleanup

bb22:                                             ; preds = %bb20
  %39 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %m, i32 1)
  %_70.0 = extractvalue { i32, i1 } %39, 0
  %_70.1 = extractvalue { i32, i1 } %39, 1
  br i1 %_70.1, label %panic, label %bb36

bb36:                                             ; preds = %bb22
  %_68 = sext i32 %_70.0 to i64
; invoke <alloc::vec::Vec<T,A> as core::ops::index::Index<I>>::index
  %_66 = invoke align 8 ptr @"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h2e25f5f4c0d29ad4E"(ptr align 8 %count, i64 %_68, ptr align 8 @alloc_6ab99df21ce01782f0ee6016ad673e76)
          to label %bb37 unwind label %cleanup

panic:                                            ; preds = %bb22
; invoke core::panicking::panic_const::panic_const_sub_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_sub_overflow17h134cc1a7f93654deE(ptr align 8 @alloc_13cb970aae49411182c3dfd3b5b549e2) #24
          to label %unreachable unwind label %cleanup

unreachable:                                      ; preds = %panic7, %panic6, %panic5, %panic4, %panic
  unreachable

bb37:                                             ; preds = %bb36
  %40 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %n, i32 1)
  %_73.0 = extractvalue { i32, i1 } %40, 0
  %_73.1 = extractvalue { i32, i1 } %40, 1
  br i1 %_73.1, label %panic4, label %bb38

bb38:                                             ; preds = %bb37
  %_71 = sext i32 %_73.0 to i64
; invoke <alloc::vec::Vec<T,A> as core::ops::index::Index<I>>::index
  %_65 = invoke align 4 ptr @"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17had61aba24e53f547E"(ptr align 8 %_66, i64 %_71, ptr align 8 @alloc_da2511f4b4269b4a7fd5cfca5535e9f4)
          to label %bb39 unwind label %cleanup

panic4:                                           ; preds = %bb37
; invoke core::panicking::panic_const::panic_const_sub_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_sub_overflow17h134cc1a7f93654deE(ptr align 8 @alloc_0bdeb326ad16a81f78db8f59e1b1ad7e) #24
          to label %unreachable unwind label %cleanup

bb39:                                             ; preds = %bb38
  %_0 = load i32, ptr %_65, align 4
; call core::ptr::drop_in_place<alloc::vec::Vec<alloc::vec::Vec<i32>>>
  call void @"_ZN4core3ptr70drop_in_place$LT$alloc..vec..Vec$LT$alloc..vec..Vec$LT$i32$GT$$GT$$GT$17h775fb4c842b20801E"(ptr align 8 %count)
  ret i32 %_0

bb23:                                             ; preds = %bb21
  %_36.0 = extractvalue { i32, i32 } %38, 0
  %_36.1 = extractvalue { i32, i32 } %38, 1
  store i32 %_36.0, ptr %iter3, align 4
  %41 = getelementptr inbounds i8, ptr %iter3, i64 4
  store i32 %_36.1, ptr %41, align 4
  br label %bb24

bb24:                                             ; preds = %bb35, %bb23
; invoke core::iter::range::<impl core::iter::traits::iterator::Iterator for core::ops::range::Range<A>>::next
  %42 = invoke { i32, i32 } @"_ZN4core4iter5range101_$LT$impl$u20$core..iter..traits..iterator..Iterator$u20$for$u20$core..ops..range..Range$LT$A$GT$$GT$4next17h976d0874e02eb94aE"(ptr align 4 %iter3)
          to label %bb25 unwind label %cleanup

bb25:                                             ; preds = %bb24
  %43 = extractvalue { i32, i32 } %42, 0
  %44 = extractvalue { i32, i32 } %42, 1
  store i32 %43, ptr %_39, align 4
  %45 = getelementptr inbounds i8, ptr %_39, i64 4
  store i32 %44, ptr %45, align 4
  %46 = load i32, ptr %_39, align 4
  %47 = getelementptr inbounds i8, ptr %_39, i64 4
  %48 = load i32, ptr %47, align 4
  %_41 = zext i32 %46 to i64
  %49 = trunc nuw i64 %_41 to i1
  br i1 %49, label %bb26, label %bb19

bb26:                                             ; preds = %bb25
  %50 = getelementptr inbounds i8, ptr %_39, i64 4
  %j = load i32, ptr %50, align 4
  %_48 = sext i32 %i to i64
  %_49.0 = sub i64 %_48, 1
  %_49.1 = icmp ult i64 %_48, 1
  br i1 %_49.1, label %panic5, label %bb27

bb27:                                             ; preds = %bb26
; invoke <alloc::vec::Vec<T,A> as core::ops::index::Index<I>>::index
  %_45 = invoke align 8 ptr @"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h2e25f5f4c0d29ad4E"(ptr align 8 %count, i64 %_49.0, ptr align 8 @alloc_43974869791014330758c959e8d8e0c6)
          to label %bb28 unwind label %cleanup

panic5:                                           ; preds = %bb26
; invoke core::panicking::panic_const::panic_const_sub_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_sub_overflow17h134cc1a7f93654deE(ptr align 8 @alloc_989af9592b00413ccdab7de5c82109ab) #24
          to label %unreachable unwind label %cleanup

bb28:                                             ; preds = %bb27
  %_50 = sext i32 %j to i64
; invoke <alloc::vec::Vec<T,A> as core::ops::index::Index<I>>::index
  %_44 = invoke align 4 ptr @"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17had61aba24e53f547E"(ptr align 8 %_45, i64 %_50, ptr align 8 @alloc_d0f0326656689df9233da8ab90025f95)
          to label %bb29 unwind label %cleanup

bb29:                                             ; preds = %bb28
  %_43 = load i32, ptr %_44, align 4
  %_55 = sext i32 %i to i64
; invoke <alloc::vec::Vec<T,A> as core::ops::index::Index<I>>::index
  %_53 = invoke align 8 ptr @"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h2e25f5f4c0d29ad4E"(ptr align 8 %count, i64 %_55, ptr align 8 @alloc_75dc6024975f496abb85872b86361329)
          to label %bb30 unwind label %cleanup

bb30:                                             ; preds = %bb29
  %_57 = sext i32 %j to i64
  %_58.0 = sub i64 %_57, 1
  %_58.1 = icmp ult i64 %_57, 1
  br i1 %_58.1, label %panic6, label %bb31

bb31:                                             ; preds = %bb30
; invoke <alloc::vec::Vec<T,A> as core::ops::index::Index<I>>::index
  %_52 = invoke align 4 ptr @"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17had61aba24e53f547E"(ptr align 8 %_53, i64 %_58.0, ptr align 8 @alloc_b94ad5197c47ec9dc4c9a3b2fa2dbbd0)
          to label %bb32 unwind label %cleanup

panic6:                                           ; preds = %bb30
; invoke core::panicking::panic_const::panic_const_sub_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_sub_overflow17h134cc1a7f93654deE(ptr align 8 @alloc_69ca64c15fbfc0582eb42a26dfb81cfa) #24
          to label %unreachable unwind label %cleanup

bb32:                                             ; preds = %bb31
  %_51 = load i32, ptr %_52, align 4
  %51 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %_43, i32 %_51)
  %_59.0 = extractvalue { i32, i1 } %51, 0
  %_59.1 = extractvalue { i32, i1 } %51, 1
  br i1 %_59.1, label %panic7, label %bb33

bb33:                                             ; preds = %bb32
  %_63 = sext i32 %i to i64
; invoke <alloc::vec::Vec<T,A> as core::ops::index::IndexMut<I>>::index_mut
  %_61 = invoke align 8 ptr @"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h48b0feb35abfea98E"(ptr align 8 %count, i64 %_63, ptr align 8 @alloc_b11593c14c5b7d591f3f5b2e42ec5ccb)
          to label %bb34 unwind label %cleanup

panic7:                                           ; preds = %bb32
; invoke core::panicking::panic_const::panic_const_add_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_0687b100b1e286c6075232f2b1e36dfd) #24
          to label %unreachable unwind label %cleanup

bb34:                                             ; preds = %bb33
  %_64 = sext i32 %j to i64
; invoke <alloc::vec::Vec<T,A> as core::ops::index::IndexMut<I>>::index_mut
  %_60 = invoke align 4 ptr @"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h85537bde1336e2f9E"(ptr align 8 %_61, i64 %_64, ptr align 8 @alloc_cf9c4a5d74661590b1570b557fdfa7d0)
          to label %bb35 unwind label %cleanup

bb35:                                             ; preds = %bb34
  store i32 %_59.0, ptr %_60, align 4
  br label %bb24

bb16:                                             ; preds = %bb14
  %_28 = sext i32 %j8 to i64
; invoke <alloc::vec::Vec<T,A> as core::ops::index::IndexMut<I>>::index_mut
  %_25 = invoke align 4 ptr @"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h85537bde1336e2f9E"(ptr align 8 %_26, i64 %_28, ptr align 8 @alloc_2c913550c49240baee728c30af18bb97)
          to label %bb17 unwind label %cleanup

bb17:                                             ; preds = %bb16
  store i32 1, ptr %_25, align 4
  br label %bb12

bb9:                                              ; preds = %bb7
; invoke <alloc::vec::Vec<T,A> as core::ops::index::IndexMut<I>>::index_mut
  %_14 = invoke align 4 ptr @"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h85537bde1336e2f9E"(ptr align 8 %_15, i64 0, ptr align 8 @alloc_ee513b290a65379b0a0d9252511305b1)
          to label %bb10 unwind label %cleanup

bb10:                                             ; preds = %bb9
  store i32 1, ptr %_14, align 4
  br label %bb4

bb6:                                              ; No predecessors!
  unreachable

terminate:                                        ; preds = %bb41
  %52 = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer
; call core::panicking::panic_in_cleanup
  call void @_ZN4core9panicking16panic_in_cleanup17h5f6bde45d17ae243E() #20
  unreachable

bb42:                                             ; preds = %bb41
  %53 = load ptr, ptr %0, align 8
  %54 = getelementptr inbounds i8, ptr %0, i64 8
  %55 = load i32, ptr %54, align 8
  %56 = insertvalue { ptr, i32 } poison, ptr %53, 0
  %57 = insertvalue { ptr, i32 } %56, i32 %55, 1
  resume { ptr, i32 } %57
}

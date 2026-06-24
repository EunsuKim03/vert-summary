define i32 @f_gold(i64 %0, i32 %n, i32 %k) unnamed_addr #3 personality ptr @rust_eh_personality {
start:
  %1 = alloca [16 x i8], align 8
  %_74 = alloca [8 x i8], align 4
  %iter4 = alloca [8 x i8], align 4
  %sum = alloca [4 x i8], align 4
  %_43 = alloca [8 x i8], align 4
  %iter3 = alloca [8 x i8], align 4
  %_29 = alloca [8 x i8], align 4
  %iter2 = alloca [8 x i8], align 4
  %_22 = alloca [8 x i8], align 4
  %iter1 = alloca [8 x i8], align 4
  %_11 = alloca [8 x i8], align 4
  %iter = alloca [8 x i8], align 4
  %_5 = alloca [24 x i8], align 8
  %dp = alloca [24 x i8], align 8
  %2 = alloca [8 x i8], align 8
  %arr = alloca [8 x i8], align 4
  store i64 %0, ptr %2, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %arr, ptr align 8 %2, i64 8, i1 false)
  %_6 = sext i32 %n to i64
; call alloc::vec::from_elem
  call void @_ZN5alloc3vec9from_elem17hc104ac0eae9867acE(ptr sret([24 x i8]) align 8 %_5, i32 0, i64 %_6)
  %_7 = sext i32 %k to i64
; call alloc::vec::from_elem
  call void @_ZN5alloc3vec9from_elem17h20420bb9bfef2cccE(ptr sret([24 x i8]) align 8 %dp, ptr align 8 %_5, i64 %_7)
; invoke <I as core::iter::traits::collect::IntoIterator>::into_iter
  %3 = invoke { i32, i32 } @"_ZN63_$LT$I$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17h7d015c628b934f11E"(i32 0, i32 %n)
          to label %bb3 unwind label %cleanup

bb47:                                             ; preds = %cleanup
; invoke core::ptr::drop_in_place<alloc::vec::Vec<alloc::vec::Vec<i32>>>
  invoke void @"_ZN4core3ptr70drop_in_place$LT$alloc..vec..Vec$LT$alloc..vec..Vec$LT$i32$GT$$GT$$GT$17hf0de684cfbd338f1E"(ptr align 8 %dp) #22
          to label %bb48 unwind label %terminate

cleanup:                                          ; preds = %bb9, %bb7, %panic12, %bb33, %bb32, %bb31, %bb30, %panic11, %panic10, %panic9, %bb24, %bb22, %panic8, %bb20, %bb19, %bb17, %bb14, %panic6, %bb43, %bb42, %panic5, %bb38, %bb36, %panic, %bb12, %bb8, %bb4, %start
  %4 = landingpad { ptr, i32 }
          cleanup
  %5 = extractvalue { ptr, i32 } %4, 0
  %6 = extractvalue { ptr, i32 } %4, 1
  store ptr %5, ptr %1, align 8
  %7 = getelementptr inbounds i8, ptr %1, i64 8
  store i32 %6, ptr %7, align 8
  br label %bb47

bb3:                                              ; preds = %start
  %_8.0 = extractvalue { i32, i32 } %3, 0
  %_8.1 = extractvalue { i32, i32 } %3, 1
  store i32 %_8.0, ptr %iter, align 4
  %8 = getelementptr inbounds i8, ptr %iter, i64 4
  store i32 %_8.1, ptr %8, align 4
  br label %bb4

bb4:                                              ; preds = %bb10, %bb3
; invoke core::iter::range::<impl core::iter::traits::iterator::Iterator for core::ops::range::Range<A>>::next
  %9 = invoke { i32, i32 } @"_ZN4core4iter5range101_$LT$impl$u20$core..iter..traits..iterator..Iterator$u20$for$u20$core..ops..range..Range$LT$A$GT$$GT$4next17h3a1cf3e4097a4cf7E"(ptr align 4 %iter)
          to label %bb5 unwind label %cleanup

bb5:                                              ; preds = %bb4
  %10 = extractvalue { i32, i32 } %9, 0
  %11 = extractvalue { i32, i32 } %9, 1
  store i32 %10, ptr %_11, align 4
  %12 = getelementptr inbounds i8, ptr %_11, i64 4
  store i32 %11, ptr %12, align 4
  %13 = load i32, ptr %_11, align 4
  %14 = getelementptr inbounds i8, ptr %_11, i64 4
  %15 = load i32, ptr %14, align 4
  %_13 = zext i32 %13 to i64
  %16 = trunc nuw i64 %_13 to i1
  br i1 %16, label %bb7, label %bb8

bb7:                                              ; preds = %bb5
  %17 = getelementptr inbounds i8, ptr %_11, i64 4
  %i13 = load i32, ptr %17, align 4
; invoke <alloc::vec::Vec<T,A> as core::ops::index::IndexMut<I>>::index_mut
  %_16 = invoke align 8 ptr @"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h4e19451fd4f3edf7E"(ptr align 8 %dp, i64 0, ptr align 8 @alloc_0a312454e82901e40ae5b11056910501)
          to label %bb9 unwind label %cleanup

bb8:                                              ; preds = %bb5
; invoke <I as core::iter::traits::collect::IntoIterator>::into_iter
  %18 = invoke { i32, i32 } @"_ZN63_$LT$I$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17h7d015c628b934f11E"(i32 1, i32 %k)
          to label %bb11 unwind label %cleanup

bb11:                                             ; preds = %bb8
  %_19.0 = extractvalue { i32, i32 } %18, 0
  %_19.1 = extractvalue { i32, i32 } %18, 1
  store i32 %_19.0, ptr %iter1, align 4
  %19 = getelementptr inbounds i8, ptr %iter1, i64 4
  store i32 %_19.1, ptr %19, align 4
  br label %bb12

bb12:                                             ; preds = %bb18, %bb11
; invoke core::iter::range::<impl core::iter::traits::iterator::Iterator for core::ops::range::Range<A>>::next
  %20 = invoke { i32, i32 } @"_ZN4core4iter5range101_$LT$impl$u20$core..iter..traits..iterator..Iterator$u20$for$u20$core..ops..range..Range$LT$A$GT$$GT$4next17h3a1cf3e4097a4cf7E"(ptr align 4 %iter1)
          to label %bb13 unwind label %cleanup

bb13:                                             ; preds = %bb12
  %21 = extractvalue { i32, i32 } %20, 0
  %22 = extractvalue { i32, i32 } %20, 1
  store i32 %21, ptr %_22, align 4
  %23 = getelementptr inbounds i8, ptr %_22, i64 4
  store i32 %22, ptr %23, align 4
  %24 = load i32, ptr %_22, align 4
  %25 = getelementptr inbounds i8, ptr %_22, i64 4
  %26 = load i32, ptr %25, align 4
  %_24 = zext i32 %24 to i64
  %27 = trunc nuw i64 %_24 to i1
  br i1 %27, label %bb14, label %bb15

bb14:                                             ; preds = %bb13
  %28 = getelementptr inbounds i8, ptr %_22, i64 4
  %l = load i32, ptr %28, align 4
; invoke <I as core::iter::traits::collect::IntoIterator>::into_iter
  %29 = invoke { i32, i32 } @"_ZN63_$LT$I$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17h7d015c628b934f11E"(i32 %l, i32 %n)
          to label %bb16 unwind label %cleanup

bb15:                                             ; preds = %bb13
  store i32 0, ptr %sum, align 4
  %30 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %k, i32 1)
  %_72.0 = extractvalue { i32, i1 } %30, 0
  %_72.1 = extractvalue { i32, i1 } %30, 1
  br i1 %_72.1, label %panic, label %bb36

bb36:                                             ; preds = %bb15
; invoke <I as core::iter::traits::collect::IntoIterator>::into_iter
  %31 = invoke { i32, i32 } @"_ZN63_$LT$I$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17h7d015c628b934f11E"(i32 %_72.0, i32 %n)
          to label %bb37 unwind label %cleanup

panic:                                            ; preds = %bb15
; invoke core::panicking::panic_const::panic_const_sub_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_sub_overflow17h134cc1a7f93654deE(ptr align 8 @alloc_3cecbf11b4c6690c019b176d46cb3fa9) #24
          to label %unreachable unwind label %cleanup

unreachable:                                      ; preds = %panic12, %panic11, %panic10, %panic9, %panic8, %panic6, %panic5, %panic
  unreachable

bb37:                                             ; preds = %bb36
  %_69.0 = extractvalue { i32, i32 } %31, 0
  %_69.1 = extractvalue { i32, i32 } %31, 1
  store i32 %_69.0, ptr %iter4, align 4
  %32 = getelementptr inbounds i8, ptr %iter4, i64 4
  store i32 %_69.1, ptr %32, align 4
  br label %bb38

bb38:                                             ; preds = %bb45, %bb37
; invoke core::iter::range::<impl core::iter::traits::iterator::Iterator for core::ops::range::Range<A>>::next
  %33 = invoke { i32, i32 } @"_ZN4core4iter5range101_$LT$impl$u20$core..iter..traits..iterator..Iterator$u20$for$u20$core..ops..range..Range$LT$A$GT$$GT$4next17h3a1cf3e4097a4cf7E"(ptr align 4 %iter4)
          to label %bb39 unwind label %cleanup

bb39:                                             ; preds = %bb38
  %34 = extractvalue { i32, i32 } %33, 0
  %35 = extractvalue { i32, i32 } %33, 1
  store i32 %34, ptr %_74, align 4
  %36 = getelementptr inbounds i8, ptr %_74, i64 4
  store i32 %35, ptr %36, align 4
  %37 = load i32, ptr %_74, align 4
  %38 = getelementptr inbounds i8, ptr %_74, i64 4
  %39 = load i32, ptr %38, align 4
  %_76 = zext i32 %37 to i64
  %40 = trunc nuw i64 %_76 to i1
  br i1 %40, label %bb40, label %bb41

bb40:                                             ; preds = %bb39
  %41 = getelementptr inbounds i8, ptr %_74, i64 4
  %i = load i32, ptr %41, align 4
  %42 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %k, i32 1)
  %_84.0 = extractvalue { i32, i1 } %42, 0
  %_84.1 = extractvalue { i32, i1 } %42, 1
  br i1 %_84.1, label %panic5, label %bb42

bb41:                                             ; preds = %bb39
  %_0 = load i32, ptr %sum, align 4
; call core::ptr::drop_in_place<alloc::vec::Vec<alloc::vec::Vec<i32>>>
  call void @"_ZN4core3ptr70drop_in_place$LT$alloc..vec..Vec$LT$alloc..vec..Vec$LT$i32$GT$$GT$$GT$17hf0de684cfbd338f1E"(ptr align 8 %dp)
  ret i32 %_0

bb42:                                             ; preds = %bb40
  %_82 = sext i32 %_84.0 to i64
; invoke <alloc::vec::Vec<T,A> as core::ops::index::Index<I>>::index
  %_80 = invoke align 8 ptr @"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17haebf36d019423682E"(ptr align 8 %dp, i64 %_82, ptr align 8 @alloc_c3572c7fd87e432207143541995dce7a)
          to label %bb43 unwind label %cleanup

panic5:                                           ; preds = %bb40
; invoke core::panicking::panic_const::panic_const_sub_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_sub_overflow17h134cc1a7f93654deE(ptr align 8 @alloc_5e859741dbc2106fbb0b8f60afeead62) #24
          to label %unreachable unwind label %cleanup

bb43:                                             ; preds = %bb42
  %_85 = sext i32 %i to i64
; invoke <alloc::vec::Vec<T,A> as core::ops::index::Index<I>>::index
  %_79 = invoke align 4 ptr @"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h74ba322727acbefbE"(ptr align 8 %_80, i64 %_85, ptr align 8 @alloc_6850a72ad08aedc3f9f409943c139748)
          to label %bb44 unwind label %cleanup

bb44:                                             ; preds = %bb43
  %_78 = load i32, ptr %_79, align 4
  %43 = load i32, ptr %sum, align 4
  %44 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %43, i32 %_78)
  %_86.0 = extractvalue { i32, i1 } %44, 0
  %_86.1 = extractvalue { i32, i1 } %44, 1
  br i1 %_86.1, label %panic6, label %bb45

bb45:                                             ; preds = %bb44
  store i32 %_86.0, ptr %sum, align 4
  br label %bb38

panic6:                                           ; preds = %bb44
; invoke core::panicking::panic_const::panic_const_add_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_a5f1baa9b131a9955d0a976f1227e6c6) #24
          to label %unreachable unwind label %cleanup

bb16:                                             ; preds = %bb14
  %_26.0 = extractvalue { i32, i32 } %29, 0
  %_26.1 = extractvalue { i32, i32 } %29, 1
  store i32 %_26.0, ptr %iter2, align 4
  %45 = getelementptr inbounds i8, ptr %iter2, i64 4
  store i32 %_26.1, ptr %45, align 4
  br label %bb17

bb17:                                             ; preds = %bb25, %bb16
; invoke core::iter::range::<impl core::iter::traits::iterator::Iterator for core::ops::range::Range<A>>::next
  %46 = invoke { i32, i32 } @"_ZN4core4iter5range101_$LT$impl$u20$core..iter..traits..iterator..Iterator$u20$for$u20$core..ops..range..Range$LT$A$GT$$GT$4next17h3a1cf3e4097a4cf7E"(ptr align 4 %iter2)
          to label %bb18 unwind label %cleanup

bb18:                                             ; preds = %bb17
  %47 = extractvalue { i32, i32 } %46, 0
  %48 = extractvalue { i32, i32 } %46, 1
  store i32 %47, ptr %_29, align 4
  %49 = getelementptr inbounds i8, ptr %_29, i64 4
  store i32 %48, ptr %49, align 4
  %50 = load i32, ptr %_29, align 4
  %51 = getelementptr inbounds i8, ptr %_29, i64 4
  %52 = load i32, ptr %51, align 4
  %_31 = zext i32 %50 to i64
  %53 = trunc nuw i64 %_31 to i1
  br i1 %53, label %bb19, label %bb12

bb19:                                             ; preds = %bb18
  %54 = getelementptr inbounds i8, ptr %_29, i64 4
  %i7 = load i32, ptr %54, align 4
  %_36 = sext i32 %l to i64
; invoke <alloc::vec::Vec<T,A> as core::ops::index::IndexMut<I>>::index_mut
  %_34 = invoke align 8 ptr @"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h4e19451fd4f3edf7E"(ptr align 8 %dp, i64 %_36, ptr align 8 @alloc_9c5289c8f7d5a91955e70d4706a60f6b)
          to label %bb20 unwind label %cleanup

bb20:                                             ; preds = %bb19
  %_37 = sext i32 %i7 to i64
; invoke <alloc::vec::Vec<T,A> as core::ops::index::IndexMut<I>>::index_mut
  %_33 = invoke align 4 ptr @"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h99b866cea347ba88E"(ptr align 8 %_34, i64 %_37, ptr align 8 @alloc_1c9c883640de4a5c8244078cc1a67a62)
          to label %bb21 unwind label %cleanup

bb21:                                             ; preds = %bb20
  store i32 0, ptr %_33, align 4
  %55 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %l, i32 1)
  %_41.0 = extractvalue { i32, i1 } %55, 0
  %_41.1 = extractvalue { i32, i1 } %55, 1
  br i1 %_41.1, label %panic8, label %bb22

bb22:                                             ; preds = %bb21
; invoke <I as core::iter::traits::collect::IntoIterator>::into_iter
  %56 = invoke { i32, i32 } @"_ZN63_$LT$I$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17h7d015c628b934f11E"(i32 %_41.0, i32 %i7)
          to label %bb23 unwind label %cleanup

panic8:                                           ; preds = %bb21
; invoke core::panicking::panic_const::panic_const_sub_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_sub_overflow17h134cc1a7f93654deE(ptr align 8 @alloc_e4f8e716137ae72aa9ade45bba9771d6) #24
          to label %unreachable unwind label %cleanup

bb23:                                             ; preds = %bb22
  %_38.0 = extractvalue { i32, i32 } %56, 0
  %_38.1 = extractvalue { i32, i32 } %56, 1
  store i32 %_38.0, ptr %iter3, align 4
  %57 = getelementptr inbounds i8, ptr %iter3, i64 4
  store i32 %_38.1, ptr %57, align 4
  br label %bb24

bb24:                                             ; preds = %bb35, %bb28, %bb23
; invoke core::iter::range::<impl core::iter::traits::iterator::Iterator for core::ops::range::Range<A>>::next
  %58 = invoke { i32, i32 } @"_ZN4core4iter5range101_$LT$impl$u20$core..iter..traits..iterator..Iterator$u20$for$u20$core..ops..range..Range$LT$A$GT$$GT$4next17h3a1cf3e4097a4cf7E"(ptr align 4 %iter3)
          to label %bb25 unwind label %cleanup

bb25:                                             ; preds = %bb24
  %59 = extractvalue { i32, i32 } %58, 0
  %60 = extractvalue { i32, i32 } %58, 1
  store i32 %59, ptr %_43, align 4
  %61 = getelementptr inbounds i8, ptr %_43, i64 4
  store i32 %60, ptr %61, align 4
  %62 = load i32, ptr %_43, align 4
  %63 = getelementptr inbounds i8, ptr %_43, i64 4
  %64 = load i32, ptr %63, align 4
  %_45 = zext i32 %62 to i64
  %65 = trunc nuw i64 %_45 to i1
  br i1 %65, label %bb26, label %bb17

bb26:                                             ; preds = %bb25
  %66 = getelementptr inbounds i8, ptr %_43, i64 4
  %j = load i32, ptr %66, align 4
  %_49 = sext i32 %j to i64
  %_50 = icmp ult i64 %_49, 2
  br i1 %_50, label %bb27, label %panic9

bb27:                                             ; preds = %bb26
  %67 = getelementptr inbounds nuw i32, ptr %arr, i64 %_49
  %_48 = load i32, ptr %67, align 4
  %_52 = sext i32 %i7 to i64
  %_53 = icmp ult i64 %_52, 2
  br i1 %_53, label %bb28, label %panic10

panic9:                                           ; preds = %bb26
; invoke core::panicking::panic_bounds_check
  invoke void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 %_49, i64 2, ptr align 8 @alloc_ad3b123de7bbbcc93ad8c6b6c1ebdff3) #24
          to label %unreachable unwind label %cleanup

bb28:                                             ; preds = %bb27
  %68 = getelementptr inbounds nuw i32, ptr %arr, i64 %_52
  %_51 = load i32, ptr %68, align 4
  %_47 = icmp slt i32 %_48, %_51
  br i1 %_47, label %bb29, label %bb24

panic10:                                          ; preds = %bb27
; invoke core::panicking::panic_bounds_check
  invoke void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 %_52, i64 2, ptr align 8 @alloc_24c72aa61b91c2b192db8033567ec161) #24
          to label %unreachable unwind label %cleanup

bb29:                                             ; preds = %bb28
  %69 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %l, i32 1)
  %_60.0 = extractvalue { i32, i1 } %69, 0
  %_60.1 = extractvalue { i32, i1 } %69, 1
  br i1 %_60.1, label %panic11, label %bb30

bb30:                                             ; preds = %bb29
  %_58 = sext i32 %_60.0 to i64
; invoke <alloc::vec::Vec<T,A> as core::ops::index::Index<I>>::index
  %_56 = invoke align 8 ptr @"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17haebf36d019423682E"(ptr align 8 %dp, i64 %_58, ptr align 8 @alloc_d44678bac854b10d047e4ca8dab27e43)
          to label %bb31 unwind label %cleanup

panic11:                                          ; preds = %bb29
; invoke core::panicking::panic_const::panic_const_sub_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_sub_overflow17h134cc1a7f93654deE(ptr align 8 @alloc_3a334307075e54356da1bb9276096a97) #24
          to label %unreachable unwind label %cleanup

bb31:                                             ; preds = %bb30
  %_61 = sext i32 %j to i64
; invoke <alloc::vec::Vec<T,A> as core::ops::index::Index<I>>::index
  %_55 = invoke align 4 ptr @"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h74ba322727acbefbE"(ptr align 8 %_56, i64 %_61, ptr align 8 @alloc_76c290e1f27ec8b1236b3e59b23345ab)
          to label %bb32 unwind label %cleanup

bb32:                                             ; preds = %bb31
  %_54 = load i32, ptr %_55, align 4
  %_65 = sext i32 %l to i64
; invoke <alloc::vec::Vec<T,A> as core::ops::index::IndexMut<I>>::index_mut
  %_63 = invoke align 8 ptr @"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h4e19451fd4f3edf7E"(ptr align 8 %dp, i64 %_65, ptr align 8 @alloc_c42e7f0ba2edd1d867681560188ee4c8)
          to label %bb33 unwind label %cleanup

bb33:                                             ; preds = %bb32
  %_66 = sext i32 %i7 to i64
; invoke <alloc::vec::Vec<T,A> as core::ops::index::IndexMut<I>>::index_mut
  %_62 = invoke align 4 ptr @"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h99b866cea347ba88E"(ptr align 8 %_63, i64 %_66, ptr align 8 @alloc_a2f5de6f9f8562225e3cf1c791e66783)
          to label %bb34 unwind label %cleanup

bb34:                                             ; preds = %bb33
  %70 = load i32, ptr %_62, align 4
  %71 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %70, i32 %_54)
  %_67.0 = extractvalue { i32, i1 } %71, 0
  %_67.1 = extractvalue { i32, i1 } %71, 1
  br i1 %_67.1, label %panic12, label %bb35

bb35:                                             ; preds = %bb34
  store i32 %_67.0, ptr %_62, align 4
  br label %bb24

panic12:                                          ; preds = %bb34
; invoke core::panicking::panic_const::panic_const_add_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_8b0aacef77afd306e889a64fefed9eb9) #24
          to label %unreachable unwind label %cleanup

bb9:                                              ; preds = %bb7
  %_18 = sext i32 %i13 to i64
; invoke <alloc::vec::Vec<T,A> as core::ops::index::IndexMut<I>>::index_mut
  %_15 = invoke align 4 ptr @"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h99b866cea347ba88E"(ptr align 8 %_16, i64 %_18, ptr align 8 @alloc_69e40fa8a2eeabd95b6720ee1c6f20f2)
          to label %bb10 unwind label %cleanup

bb10:                                             ; preds = %bb9
  store i32 1, ptr %_15, align 4
  br label %bb4

bb6:                                              ; No predecessors!
  unreachable

terminate:                                        ; preds = %bb47
  %72 = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer
; call core::panicking::panic_in_cleanup
  call void @_ZN4core9panicking16panic_in_cleanup17h5f6bde45d17ae243E() #20
  unreachable

bb48:                                             ; preds = %bb47
  %73 = load ptr, ptr %1, align 8
  %74 = getelementptr inbounds i8, ptr %1, i64 8
  %75 = load i32, ptr %74, align 8
  %76 = insertvalue { ptr, i32 } poison, ptr %73, 0
  %77 = insertvalue { ptr, i32 } %76, i32 %75, 1
  resume { ptr, i32 } %77
}

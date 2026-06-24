define i32 @f_gold(ptr align 1 %s.0, i64 %s.1, i32 %n) unnamed_addr #3 personality ptr @rust_eh_personality {
start:
  %0 = alloca [16 x i8], align 8
  %_90 = alloca [8 x i8], align 4
  %iter3 = alloca [8 x i8], align 4
  %_68 = alloca [16 x i8], align 8
  %_66 = alloca [4 x i8], align 4
  %_61 = alloca [16 x i8], align 8
  %_59 = alloca [4 x i8], align 4
  %_51 = alloca [8 x i8], align 4
  %iter2 = alloca [8 x i8], align 4
  %_42 = alloca [8 x i8], align 4
  %iter1 = alloca [8 x i8], align 4
  %_27 = alloca [16 x i8], align 8
  %_25 = alloca [4 x i8], align 4
  %_20 = alloca [16 x i8], align 8
  %_18 = alloca [4 x i8], align 4
  %_12 = alloca [8 x i8], align 4
  %iter = alloca [8 x i8], align 4
  %_4 = alloca [24 x i8], align 8
  %dp = alloca [24 x i8], align 8
  %_5 = sext i32 %n to i64
; call alloc::vec::from_elem
  call void @_ZN5alloc3vec9from_elem17hbc69f230b30eadf4E(ptr sret([24 x i8]) align 8 %_4, i32 0, i64 %_5)
  %_6 = sext i32 %n to i64
; call alloc::vec::from_elem
  call void @_ZN5alloc3vec9from_elem17hd95b0ae13be22404E(ptr sret([24 x i8]) align 8 %dp, ptr align 8 %_4, i64 %_6)
  %1 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %n, i32 1)
  %_10.0 = extractvalue { i32, i1 } %1, 0
  %_10.1 = extractvalue { i32, i1 } %1, 1
  br i1 %_10.1, label %panic, label %bb3

bb3:                                              ; preds = %start
; invoke <I as core::iter::traits::collect::IntoIterator>::into_iter
  %2 = invoke { i32, i32 } @"_ZN63_$LT$I$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17h2759e6535dcad0adE"(i32 0, i32 %_10.0)
          to label %bb4 unwind label %cleanup

panic:                                            ; preds = %start
; invoke core::panicking::panic_const::panic_const_sub_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_sub_overflow17h134cc1a7f93654deE(ptr align 8 @alloc_d1c111ad90a04cb3e5a2267a65f53b35) #24
          to label %unreachable unwind label %cleanup

bb68:                                             ; preds = %cleanup
; invoke core::ptr::drop_in_place<alloc::vec::Vec<alloc::vec::Vec<i32>>>
  invoke void @"_ZN4core3ptr70drop_in_place$LT$alloc..vec..Vec$LT$alloc..vec..Vec$LT$i32$GT$$GT$$GT$17h6ebf526846c8aaaaE"(ptr align 8 %dp) #22
          to label %bb69 unwind label %terminate

cleanup:                                          ; preds = %bb20, %panic14, %bb18, %bb16, %bb15, %panic13, %bb13, %bb11, %bb10, %bb8, %bb62, %bb61, %bb60, %panic11, %bb58, %bb57, %panic10, %bb55, %bb54, %bb53, %bb52, %bb50, %bb48, %bb46, %bb45, %panic9, %bb43, %panic8, %bb41, %panic7, %bb38, %bb37, %bb36, %bb34, %bb33, %bb32, %panic6, %bb29, %bb27, %panic5, %bb65, %panic4, %bb26, %bb23, %bb9, %bb5, %bb3, %panic
  %3 = landingpad { ptr, i32 }
          cleanup
  %4 = extractvalue { ptr, i32 } %3, 0
  %5 = extractvalue { ptr, i32 } %3, 1
  store ptr %4, ptr %0, align 8
  %6 = getelementptr inbounds i8, ptr %0, i64 8
  store i32 %5, ptr %6, align 8
  br label %bb68

unreachable:                                      ; preds = %panic14, %panic13, %panic11, %panic10, %panic9, %panic8, %panic7, %panic6, %panic5, %panic4, %panic
  unreachable

bb4:                                              ; preds = %bb3
  %_7.0 = extractvalue { i32, i32 } %2, 0
  %_7.1 = extractvalue { i32, i32 } %2, 1
  store i32 %_7.0, ptr %iter, align 4
  %7 = getelementptr inbounds i8, ptr %iter, i64 4
  store i32 %_7.1, ptr %7, align 4
  br label %bb5

bb5:                                              ; preds = %bb21, %bb17, %bb12, %bb4
; invoke core::iter::range::<impl core::iter::traits::iterator::Iterator for core::ops::range::Range<A>>::next
  %8 = invoke { i32, i32 } @"_ZN4core4iter5range101_$LT$impl$u20$core..iter..traits..iterator..Iterator$u20$for$u20$core..ops..range..Range$LT$A$GT$$GT$4next17hb4dc777360bb631fE"(ptr align 4 %iter)
          to label %bb6 unwind label %cleanup

bb6:                                              ; preds = %bb5
  %9 = extractvalue { i32, i32 } %8, 0
  %10 = extractvalue { i32, i32 } %8, 1
  store i32 %9, ptr %_12, align 4
  %11 = getelementptr inbounds i8, ptr %_12, i64 4
  store i32 %10, ptr %11, align 4
  %12 = load i32, ptr %_12, align 4
  %13 = getelementptr inbounds i8, ptr %_12, i64 4
  %14 = load i32, ptr %13, align 4
  %_14 = zext i32 %12 to i64
  %15 = trunc nuw i64 %_14 to i1
  br i1 %15, label %bb8, label %bb9

bb8:                                              ; preds = %bb6
  %16 = getelementptr inbounds i8, ptr %_12, i64 4
  %i12 = load i32, ptr %16, align 4
; invoke core::str::<impl str>::chars
  %17 = invoke { ptr, ptr } @"_ZN4core3str21_$LT$impl$u20$str$GT$5chars17h6b7ec27678a465b1E"(ptr align 1 %s.0, i64 %s.1)
          to label %bb10 unwind label %cleanup

bb9:                                              ; preds = %bb6
; invoke <I as core::iter::traits::collect::IntoIterator>::into_iter
  %18 = invoke { i32, i32 } @"_ZN63_$LT$I$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17h2759e6535dcad0adE"(i32 2, i32 %n)
          to label %bb22 unwind label %cleanup

bb22:                                             ; preds = %bb9
  %_39.0 = extractvalue { i32, i32 } %18, 0
  %_39.1 = extractvalue { i32, i32 } %18, 1
  store i32 %_39.0, ptr %iter1, align 4
  %19 = getelementptr inbounds i8, ptr %iter1, i64 4
  store i32 %_39.1, ptr %19, align 4
  br label %bb23

bb23:                                             ; preds = %bb30, %bb22
; invoke core::iter::range::<impl core::iter::traits::iterator::Iterator for core::ops::range::Range<A>>::next
  %20 = invoke { i32, i32 } @"_ZN4core4iter5range101_$LT$impl$u20$core..iter..traits..iterator..Iterator$u20$for$u20$core..ops..range..Range$LT$A$GT$$GT$4next17hb4dc777360bb631fE"(ptr align 4 %iter1)
          to label %bb24 unwind label %cleanup

bb24:                                             ; preds = %bb23
  %21 = extractvalue { i32, i32 } %20, 0
  %22 = extractvalue { i32, i32 } %20, 1
  store i32 %21, ptr %_42, align 4
  %23 = getelementptr inbounds i8, ptr %_42, i64 4
  store i32 %22, ptr %23, align 4
  %24 = load i32, ptr %_42, align 4
  %25 = getelementptr inbounds i8, ptr %_42, i64 4
  %26 = load i32, ptr %25, align 4
  %_44 = zext i32 %24 to i64
  %27 = trunc nuw i64 %_44 to i1
  br i1 %27, label %bb25, label %bb26

bb25:                                             ; preds = %bb24
  %28 = getelementptr inbounds i8, ptr %_42, i64 4
  %l = load i32, ptr %28, align 4
  %29 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %n, i32 %l)
  %_49.0 = extractvalue { i32, i1 } %29, 0
  %_49.1 = extractvalue { i32, i1 } %29, 1
  br i1 %_49.1, label %panic5, label %bb27

bb26:                                             ; preds = %bb24
; invoke <alloc::vec::Vec<T,A> as core::ops::index::Index<I>>::index
  %_123 = invoke align 8 ptr @"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h93166a39d43bfa10E"(ptr align 8 %dp, i64 0, ptr align 8 @alloc_1e1b4a6c671dec4b5f4887551daa03a6)
          to label %bb64 unwind label %cleanup

bb64:                                             ; preds = %bb26
  %30 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %n, i32 1)
  %_127.0 = extractvalue { i32, i1 } %30, 0
  %_127.1 = extractvalue { i32, i1 } %30, 1
  br i1 %_127.1, label %panic4, label %bb65

bb65:                                             ; preds = %bb64
  %_125 = sext i32 %_127.0 to i64
; invoke <alloc::vec::Vec<T,A> as core::ops::index::Index<I>>::index
  %_122 = invoke align 4 ptr @"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17he6eb64503a567910E"(ptr align 8 %_123, i64 %_125, ptr align 8 @alloc_8eca53450ec288f263432e88d812ebcc)
          to label %bb66 unwind label %cleanup

panic4:                                           ; preds = %bb64
; invoke core::panicking::panic_const::panic_const_sub_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_sub_overflow17h134cc1a7f93654deE(ptr align 8 @alloc_e32e99d9ed834a94a75ac3acb33a33e6) #24
          to label %unreachable unwind label %cleanup

bb66:                                             ; preds = %bb65
  %_0 = load i32, ptr %_122, align 4
; call core::ptr::drop_in_place<alloc::vec::Vec<alloc::vec::Vec<i32>>>
  call void @"_ZN4core3ptr70drop_in_place$LT$alloc..vec..Vec$LT$alloc..vec..Vec$LT$i32$GT$$GT$$GT$17h6ebf526846c8aaaaE"(ptr align 8 %dp)
  ret i32 %_0

bb27:                                             ; preds = %bb25
; invoke <I as core::iter::traits::collect::IntoIterator>::into_iter
  %31 = invoke { i32, i32 } @"_ZN63_$LT$I$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17h2759e6535dcad0adE"(i32 0, i32 %_49.0)
          to label %bb28 unwind label %cleanup

panic5:                                           ; preds = %bb25
; invoke core::panicking::panic_const::panic_const_sub_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_sub_overflow17h134cc1a7f93654deE(ptr align 8 @alloc_fd3b21ec85185b65a597624edfcb8eb8) #24
          to label %unreachable unwind label %cleanup

bb28:                                             ; preds = %bb27
  %_46.0 = extractvalue { i32, i32 } %31, 0
  %_46.1 = extractvalue { i32, i32 } %31, 1
  store i32 %_46.0, ptr %iter2, align 4
  %32 = getelementptr inbounds i8, ptr %iter2, i64 4
  store i32 %_46.1, ptr %32, align 4
  br label %bb29

bb29:                                             ; preds = %bb51, %bb28
; invoke core::iter::range::<impl core::iter::traits::iterator::Iterator for core::ops::range::Range<A>>::next
  %33 = invoke { i32, i32 } @"_ZN4core4iter5range101_$LT$impl$u20$core..iter..traits..iterator..Iterator$u20$for$u20$core..ops..range..Range$LT$A$GT$$GT$4next17hb4dc777360bb631fE"(ptr align 4 %iter2)
          to label %bb30 unwind label %cleanup

bb30:                                             ; preds = %bb29
  %34 = extractvalue { i32, i32 } %33, 0
  %35 = extractvalue { i32, i32 } %33, 1
  store i32 %34, ptr %_51, align 4
  %36 = getelementptr inbounds i8, ptr %_51, i64 4
  store i32 %35, ptr %36, align 4
  %37 = load i32, ptr %_51, align 4
  %38 = getelementptr inbounds i8, ptr %_51, i64 4
  %39 = load i32, ptr %38, align 4
  %_53 = zext i32 %37 to i64
  %40 = trunc nuw i64 %_53 to i1
  br i1 %40, label %bb31, label %bb23

bb31:                                             ; preds = %bb30
  %41 = getelementptr inbounds i8, ptr %_51, i64 4
  %i = load i32, ptr %41, align 4
  %42 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %i, i32 %l)
  %_56.0 = extractvalue { i32, i1 } %42, 0
  %_56.1 = extractvalue { i32, i1 } %42, 1
  br i1 %_56.1, label %panic6, label %bb32

bb32:                                             ; preds = %bb31
; invoke core::str::<impl str>::chars
  %43 = invoke { ptr, ptr } @"_ZN4core3str21_$LT$impl$u20$str$GT$5chars17h6b7ec27678a465b1E"(ptr align 1 %s.0, i64 %s.1)
          to label %bb33 unwind label %cleanup

panic6:                                           ; preds = %bb31
; invoke core::panicking::panic_const::panic_const_add_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_534bbf88b311cd75845929366da44da1) #24
          to label %unreachable unwind label %cleanup

bb33:                                             ; preds = %bb32
  %44 = extractvalue { ptr, ptr } %43, 0
  %45 = extractvalue { ptr, ptr } %43, 1
  store ptr %44, ptr %_61, align 8
  %46 = getelementptr inbounds i8, ptr %_61, i64 8
  store ptr %45, ptr %46, align 8
  %_62 = sext i32 %i to i64
; invoke core::iter::traits::iterator::Iterator::nth
  %47 = invoke i32 @_ZN4core4iter6traits8iterator8Iterator3nth17h7730d2ab31fb9cbeE(ptr align 8 %_61, i64 %_62)
          to label %bb34 unwind label %cleanup

bb34:                                             ; preds = %bb33
  store i32 %47, ptr %_59, align 4
; invoke <core::option::Option<T> as core::cmp::PartialEq>::eq
  %_57 = invoke zeroext i1 @"_ZN70_$LT$core..option..Option$LT$T$GT$$u20$as$u20$core..cmp..PartialEq$GT$2eq17h2600eb57c322c1eaE"(ptr align 4 %_59, ptr align 4 @alloc_105e40204fee7a415eddcea5fc4dc756)
          to label %bb35 unwind label %cleanup

bb35:                                             ; preds = %bb34
  br i1 %_57, label %bb36, label %bb48

bb48:                                             ; preds = %bb47, %bb39, %bb35
; invoke <I as core::iter::traits::collect::IntoIterator>::into_iter
  %48 = invoke { i32, i32 } @"_ZN63_$LT$I$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17h2759e6535dcad0adE"(i32 %i, i32 %_56.0)
          to label %bb49 unwind label %cleanup

bb36:                                             ; preds = %bb35
; invoke core::str::<impl str>::chars
  %49 = invoke { ptr, ptr } @"_ZN4core3str21_$LT$impl$u20$str$GT$5chars17h6b7ec27678a465b1E"(ptr align 1 %s.0, i64 %s.1)
          to label %bb37 unwind label %cleanup

bb37:                                             ; preds = %bb36
  %50 = extractvalue { ptr, ptr } %49, 0
  %51 = extractvalue { ptr, ptr } %49, 1
  store ptr %50, ptr %_68, align 8
  %52 = getelementptr inbounds i8, ptr %_68, i64 8
  store ptr %51, ptr %52, align 8
  %_69 = sext i32 %_56.0 to i64
; invoke core::iter::traits::iterator::Iterator::nth
  %53 = invoke i32 @_ZN4core4iter6traits8iterator8Iterator3nth17h7730d2ab31fb9cbeE(ptr align 8 %_68, i64 %_69)
          to label %bb38 unwind label %cleanup

bb38:                                             ; preds = %bb37
  store i32 %53, ptr %_66, align 4
; invoke <core::option::Option<T> as core::cmp::PartialEq>::eq
  %_64 = invoke zeroext i1 @"_ZN70_$LT$core..option..Option$LT$T$GT$$u20$as$u20$core..cmp..PartialEq$GT$2eq17h2600eb57c322c1eaE"(ptr align 4 %_66, ptr align 4 @alloc_73667b43dd614c93c329aef199c5ef8b)
          to label %bb39 unwind label %cleanup

bb39:                                             ; preds = %bb38
  br i1 %_64, label %bb40, label %bb48

bb40:                                             ; preds = %bb39
  %54 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %i, i32 1)
  %_77.0 = extractvalue { i32, i1 } %54, 0
  %_77.1 = extractvalue { i32, i1 } %54, 1
  br i1 %_77.1, label %panic7, label %bb41

bb41:                                             ; preds = %bb40
  %_75 = sext i32 %_77.0 to i64
; invoke <alloc::vec::Vec<T,A> as core::ops::index::Index<I>>::index
  %_73 = invoke align 8 ptr @"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h93166a39d43bfa10E"(ptr align 8 %dp, i64 %_75, ptr align 8 @alloc_78ab7e9ff6bd77fdaae5bb606449e98f)
          to label %bb42 unwind label %cleanup

panic7:                                           ; preds = %bb40
; invoke core::panicking::panic_const::panic_const_add_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_3b779c8afc7cec659bc3a4520815c516) #24
          to label %unreachable unwind label %cleanup

bb42:                                             ; preds = %bb41
  %55 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %_56.0, i32 1)
  %_80.0 = extractvalue { i32, i1 } %55, 0
  %_80.1 = extractvalue { i32, i1 } %55, 1
  br i1 %_80.1, label %panic8, label %bb43

bb43:                                             ; preds = %bb42
  %_78 = sext i32 %_80.0 to i64
; invoke <alloc::vec::Vec<T,A> as core::ops::index::Index<I>>::index
  %_72 = invoke align 4 ptr @"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17he6eb64503a567910E"(ptr align 8 %_73, i64 %_78, ptr align 8 @alloc_fdac7b42e40d41a8c95f01901025d1fc)
          to label %bb44 unwind label %cleanup

panic8:                                           ; preds = %bb42
; invoke core::panicking::panic_const::panic_const_sub_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_sub_overflow17h134cc1a7f93654deE(ptr align 8 @alloc_02c1acca73ab062714b7b1582f7776d3) #24
          to label %unreachable unwind label %cleanup

bb44:                                             ; preds = %bb43
  %_71 = load i32, ptr %_72, align 4
  %56 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 2, i32 %_71)
  %_81.0 = extractvalue { i32, i1 } %56, 0
  %_81.1 = extractvalue { i32, i1 } %56, 1
  br i1 %_81.1, label %panic9, label %bb45

bb45:                                             ; preds = %bb44
  %_85 = sext i32 %i to i64
; invoke <alloc::vec::Vec<T,A> as core::ops::index::IndexMut<I>>::index_mut
  %_83 = invoke align 8 ptr @"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h621aa5a54d60ca13E"(ptr align 8 %dp, i64 %_85, ptr align 8 @alloc_4841e6be75a917392010379b2cb2e625)
          to label %bb46 unwind label %cleanup

panic9:                                           ; preds = %bb44
; invoke core::panicking::panic_const::panic_const_add_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_55b089eef4867e4f7c497878a9044178) #24
          to label %unreachable unwind label %cleanup

bb46:                                             ; preds = %bb45
  %_86 = sext i32 %_56.0 to i64
; invoke <alloc::vec::Vec<T,A> as core::ops::index::IndexMut<I>>::index_mut
  %_82 = invoke align 4 ptr @"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17hae0ab5a98618b786E"(ptr align 8 %_83, i64 %_86, ptr align 8 @alloc_b7ac5b29ea6dd2de7a7bc891df8b58d6)
          to label %bb47 unwind label %cleanup

bb47:                                             ; preds = %bb46
  store i32 %_81.0, ptr %_82, align 4
  br label %bb48

bb49:                                             ; preds = %bb48
  %_87.0 = extractvalue { i32, i32 } %48, 0
  %_87.1 = extractvalue { i32, i32 } %48, 1
  store i32 %_87.0, ptr %iter3, align 4
  %57 = getelementptr inbounds i8, ptr %iter3, i64 4
  store i32 %_87.1, ptr %57, align 4
  br label %bb50

bb50:                                             ; preds = %bb63, %bb49
; invoke core::iter::range::<impl core::iter::traits::iterator::Iterator for core::ops::range::Range<A>>::next
  %58 = invoke { i32, i32 } @"_ZN4core4iter5range101_$LT$impl$u20$core..iter..traits..iterator..Iterator$u20$for$u20$core..ops..range..Range$LT$A$GT$$GT$4next17hb4dc777360bb631fE"(ptr align 4 %iter3)
          to label %bb51 unwind label %cleanup

bb51:                                             ; preds = %bb50
  %59 = extractvalue { i32, i32 } %58, 0
  %60 = extractvalue { i32, i32 } %58, 1
  store i32 %59, ptr %_90, align 4
  %61 = getelementptr inbounds i8, ptr %_90, i64 4
  store i32 %60, ptr %61, align 4
  %62 = load i32, ptr %_90, align 4
  %63 = getelementptr inbounds i8, ptr %_90, i64 4
  %64 = load i32, ptr %63, align 4
  %_92 = zext i32 %62 to i64
  %65 = trunc nuw i64 %_92 to i1
  br i1 %65, label %bb52, label %bb29

bb52:                                             ; preds = %bb51
  %66 = getelementptr inbounds i8, ptr %_90, i64 4
  %k = load i32, ptr %66, align 4
  %_99 = sext i32 %i to i64
; invoke <alloc::vec::Vec<T,A> as core::ops::index::Index<I>>::index
  %_97 = invoke align 8 ptr @"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h93166a39d43bfa10E"(ptr align 8 %dp, i64 %_99, ptr align 8 @alloc_d494a4dec9e8695b9e5f9c63a4729c1c)
          to label %bb53 unwind label %cleanup

bb53:                                             ; preds = %bb52
  %_100 = sext i32 %_56.0 to i64
; invoke <alloc::vec::Vec<T,A> as core::ops::index::Index<I>>::index
  %_96 = invoke align 4 ptr @"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17he6eb64503a567910E"(ptr align 8 %_97, i64 %_100, ptr align 8 @alloc_2fa400b97d5d904a5c45e6f36c78c2ab)
          to label %bb54 unwind label %cleanup

bb54:                                             ; preds = %bb53
  %_95 = load i32, ptr %_96, align 4
  %_106 = sext i32 %i to i64
; invoke <alloc::vec::Vec<T,A> as core::ops::index::Index<I>>::index
  %_104 = invoke align 8 ptr @"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h93166a39d43bfa10E"(ptr align 8 %dp, i64 %_106, ptr align 8 @alloc_0867adeef0a958a08927e5966ce2cada)
          to label %bb55 unwind label %cleanup

bb55:                                             ; preds = %bb54
  %_107 = sext i32 %k to i64
; invoke <alloc::vec::Vec<T,A> as core::ops::index::Index<I>>::index
  %_103 = invoke align 4 ptr @"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17he6eb64503a567910E"(ptr align 8 %_104, i64 %_107, ptr align 8 @alloc_9ae9a03d413ca4dca3511fe4bf9b3072)
          to label %bb56 unwind label %cleanup

bb56:                                             ; preds = %bb55
  %_102 = load i32, ptr %_103, align 4
  %67 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %k, i32 1)
  %_114.0 = extractvalue { i32, i1 } %67, 0
  %_114.1 = extractvalue { i32, i1 } %67, 1
  br i1 %_114.1, label %panic10, label %bb57

bb57:                                             ; preds = %bb56
  %_112 = sext i32 %_114.0 to i64
; invoke <alloc::vec::Vec<T,A> as core::ops::index::Index<I>>::index
  %_110 = invoke align 8 ptr @"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h93166a39d43bfa10E"(ptr align 8 %dp, i64 %_112, ptr align 8 @alloc_8c5b540016f8cbd25db702c9167b5a9b)
          to label %bb58 unwind label %cleanup

panic10:                                          ; preds = %bb56
; invoke core::panicking::panic_const::panic_const_add_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_27a4d64e1300160a63bd0c70600aaf5e) #24
          to label %unreachable unwind label %cleanup

bb58:                                             ; preds = %bb57
  %_115 = sext i32 %_56.0 to i64
; invoke <alloc::vec::Vec<T,A> as core::ops::index::Index<I>>::index
  %_109 = invoke align 4 ptr @"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17he6eb64503a567910E"(ptr align 8 %_110, i64 %_115, ptr align 8 @alloc_ae7bf0ffce10b99e6f84fac49cb6312e)
          to label %bb59 unwind label %cleanup

bb59:                                             ; preds = %bb58
  %_108 = load i32, ptr %_109, align 4
  %68 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %_102, i32 %_108)
  %_116.0 = extractvalue { i32, i1 } %68, 0
  %_116.1 = extractvalue { i32, i1 } %68, 1
  br i1 %_116.1, label %panic11, label %bb60

bb60:                                             ; preds = %bb59
; invoke core::cmp::Ord::max
  %_94 = invoke i32 @_ZN4core3cmp3Ord3max17h919f596df49aefc5E(i32 %_95, i32 %_116.0)
          to label %bb61 unwind label %cleanup

panic11:                                          ; preds = %bb59
; invoke core::panicking::panic_const::panic_const_add_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_8a93d8b9dc0797e60a8a2dfcf7e669c5) #24
          to label %unreachable unwind label %cleanup

bb61:                                             ; preds = %bb60
  %_120 = sext i32 %i to i64
; invoke <alloc::vec::Vec<T,A> as core::ops::index::IndexMut<I>>::index_mut
  %_118 = invoke align 8 ptr @"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h621aa5a54d60ca13E"(ptr align 8 %dp, i64 %_120, ptr align 8 @alloc_5e3048071c5e0768ce879abd9bc1fc4c)
          to label %bb62 unwind label %cleanup

bb62:                                             ; preds = %bb61
  %_121 = sext i32 %_56.0 to i64
; invoke <alloc::vec::Vec<T,A> as core::ops::index::IndexMut<I>>::index_mut
  %_117 = invoke align 4 ptr @"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17hae0ab5a98618b786E"(ptr align 8 %_118, i64 %_121, ptr align 8 @alloc_22323f404255e5aea9e091210fd789a9)
          to label %bb63 unwind label %cleanup

bb63:                                             ; preds = %bb62
  store i32 %_94, ptr %_117, align 4
  br label %bb50

bb10:                                             ; preds = %bb8
  %69 = extractvalue { ptr, ptr } %17, 0
  %70 = extractvalue { ptr, ptr } %17, 1
  store ptr %69, ptr %_20, align 8
  %71 = getelementptr inbounds i8, ptr %_20, i64 8
  store ptr %70, ptr %71, align 8
  %_21 = sext i32 %i12 to i64
; invoke core::iter::traits::iterator::Iterator::nth
  %72 = invoke i32 @_ZN4core4iter6traits8iterator8Iterator3nth17h7730d2ab31fb9cbeE(ptr align 8 %_20, i64 %_21)
          to label %bb11 unwind label %cleanup

bb11:                                             ; preds = %bb10
  store i32 %72, ptr %_18, align 4
; invoke <core::option::Option<T> as core::cmp::PartialEq>::eq
  %_16 = invoke zeroext i1 @"_ZN70_$LT$core..option..Option$LT$T$GT$$u20$as$u20$core..cmp..PartialEq$GT$2eq17h2600eb57c322c1eaE"(ptr align 4 %_18, ptr align 4 @alloc_105e40204fee7a415eddcea5fc4dc756)
          to label %bb12 unwind label %cleanup

bb12:                                             ; preds = %bb11
  br i1 %_16, label %bb13, label %bb5

bb13:                                             ; preds = %bb12
; invoke core::str::<impl str>::chars
  %73 = invoke { ptr, ptr } @"_ZN4core3str21_$LT$impl$u20$str$GT$5chars17h6b7ec27678a465b1E"(ptr align 1 %s.0, i64 %s.1)
          to label %bb14 unwind label %cleanup

bb14:                                             ; preds = %bb13
  %74 = extractvalue { ptr, ptr } %73, 0
  %75 = extractvalue { ptr, ptr } %73, 1
  store ptr %74, ptr %_27, align 8
  %76 = getelementptr inbounds i8, ptr %_27, i64 8
  store ptr %75, ptr %76, align 8
  %_29 = sext i32 %i12 to i64
  %_30.0 = add i64 %_29, 1
  %_30.1 = icmp ult i64 %_30.0, %_29
  br i1 %_30.1, label %panic13, label %bb15

bb15:                                             ; preds = %bb14
; invoke core::iter::traits::iterator::Iterator::nth
  %77 = invoke i32 @_ZN4core4iter6traits8iterator8Iterator3nth17h7730d2ab31fb9cbeE(ptr align 8 %_27, i64 %_30.0)
          to label %bb16 unwind label %cleanup

panic13:                                          ; preds = %bb14
; invoke core::panicking::panic_const::panic_const_add_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_4a7258ab4fd412b859969ad45b44251a) #24
          to label %unreachable unwind label %cleanup

bb16:                                             ; preds = %bb15
  store i32 %77, ptr %_25, align 4
; invoke <core::option::Option<T> as core::cmp::PartialEq>::eq
  %_23 = invoke zeroext i1 @"_ZN70_$LT$core..option..Option$LT$T$GT$$u20$as$u20$core..cmp..PartialEq$GT$2eq17h2600eb57c322c1eaE"(ptr align 4 %_25, ptr align 4 @alloc_73667b43dd614c93c329aef199c5ef8b)
          to label %bb17 unwind label %cleanup

bb17:                                             ; preds = %bb16
  br i1 %_23, label %bb18, label %bb5

bb18:                                             ; preds = %bb17
  %_35 = sext i32 %i12 to i64
; invoke <alloc::vec::Vec<T,A> as core::ops::index::IndexMut<I>>::index_mut
  %_33 = invoke align 8 ptr @"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h621aa5a54d60ca13E"(ptr align 8 %dp, i64 %_35, ptr align 8 @alloc_c48711e634871e8adc6a6770b8d79381)
          to label %bb19 unwind label %cleanup

bb19:                                             ; preds = %bb18
  %78 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %i12, i32 1)
  %_38.0 = extractvalue { i32, i1 } %78, 0
  %_38.1 = extractvalue { i32, i1 } %78, 1
  br i1 %_38.1, label %panic14, label %bb20

bb20:                                             ; preds = %bb19
  %_36 = sext i32 %_38.0 to i64
; invoke <alloc::vec::Vec<T,A> as core::ops::index::IndexMut<I>>::index_mut
  %_32 = invoke align 4 ptr @"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17hae0ab5a98618b786E"(ptr align 8 %_33, i64 %_36, ptr align 8 @alloc_b121197f4b79b80fe84c9997be5f199b)
          to label %bb21 unwind label %cleanup

panic14:                                          ; preds = %bb19
; invoke core::panicking::panic_const::panic_const_add_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_cc9cadebbb67bebcb027117e2339d15d) #24
          to label %unreachable unwind label %cleanup

bb21:                                             ; preds = %bb20
  store i32 2, ptr %_32, align 4
  br label %bb5

bb7:                                              ; No predecessors!
  unreachable

terminate:                                        ; preds = %bb68
  %79 = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer
; call core::panicking::panic_in_cleanup
  call void @_ZN4core9panicking16panic_in_cleanup17h5f6bde45d17ae243E() #20
  unreachable

bb69:                                             ; preds = %bb68
  %80 = load ptr, ptr %0, align 8
  %81 = getelementptr inbounds i8, ptr %0, i64 8
  %82 = load i32, ptr %81, align 8
  %83 = insertvalue { ptr, i32 } poison, ptr %80, 0
  %84 = insertvalue { ptr, i32 } %83, i32 %82, 1
  resume { ptr, i32 } %84
}

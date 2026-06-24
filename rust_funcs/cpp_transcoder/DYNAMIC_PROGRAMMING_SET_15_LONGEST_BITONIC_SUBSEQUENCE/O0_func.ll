define i32 @f_gold(i64 %0, i32 %n) unnamed_addr #3 personality ptr @rust_eh_personality {
start:
  %1 = alloca [16 x i8], align 8
  %_105 = alloca [8 x i8], align 4
  %iter4 = alloca [8 x i8], align 4
  %max = alloca [4 x i8], align 4
  %_62 = alloca [8 x i8], align 4
  %iter3 = alloca [8 x i8], align 4
  %_53 = alloca [8 x i8], align 4
  %iter2 = alloca [8 x i8], align 4
  %_17 = alloca [8 x i8], align 4
  %iter1 = alloca [8 x i8], align 4
  %_10 = alloca [8 x i8], align 4
  %iter = alloca [8 x i8], align 4
  %lds = alloca [24 x i8], align 8
  %lis = alloca [24 x i8], align 8
  %2 = alloca [8 x i8], align 8
  %arr = alloca [8 x i8], align 4
  store i64 %0, ptr %2, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %arr, ptr align 8 %2, i64 8, i1 false)
  %_4 = sext i32 %n to i64
; call alloc::vec::from_elem
  call void @_ZN5alloc3vec9from_elem17hdc211e8a088928e2E(ptr sret([24 x i8]) align 8 %lis, i32 1, i64 %_4)
  %_6 = sext i32 %n to i64
; invoke alloc::vec::from_elem
  invoke void @_ZN5alloc3vec9from_elem17hdc211e8a088928e2E(ptr sret([24 x i8]) align 8 %lds, i32 1, i64 %_6)
          to label %bb2 unwind label %cleanup

bb66:                                             ; preds = %bb65, %cleanup
; invoke core::ptr::drop_in_place<alloc::vec::Vec<i32>>
  invoke void @"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17hc33ac89745f441b0E"(ptr align 8 %lis) #22
          to label %bb67 unwind label %terminate

cleanup:                                          ; preds = %bb53, %start
  %3 = landingpad { ptr, i32 }
          cleanup
  %4 = extractvalue { ptr, i32 } %3, 0
  %5 = extractvalue { ptr, i32 } %3, 1
  store ptr %4, ptr %1, align 8
  %6 = getelementptr inbounds i8, ptr %1, i64 8
  store i32 %5, ptr %6, align 8
  br label %bb66

bb2:                                              ; preds = %start
; invoke <I as core::iter::traits::collect::IntoIterator>::into_iter
  %7 = invoke { i32, i32 } @"_ZN63_$LT$I$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17h38ee7d7733e28f5bE"(i32 1, i32 %n)
          to label %bb3 unwind label %cleanup5

bb65:                                             ; preds = %cleanup5
; invoke core::ptr::drop_in_place<alloc::vec::Vec<i32>>
  invoke void @"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17hc33ac89745f441b0E"(ptr align 8 %lds) #22
          to label %bb66 unwind label %terminate

cleanup5:                                         ; preds = %bb21, %panic23, %bb19, %panic22, %bb16, %bb15, %panic21, %panic20, %bb10, %bb7, %bb43, %panic17, %bb41, %panic16, %bb38, %bb37, %panic15, %panic14, %bb32, %bb30, %panic13, %panic11, %panic10, %bb59, %bb58, %panic9, %panic8, %bb54, %bb52, %bb50, %bb48, %panic7, %panic6, %bb45, %bb29, %bb26, %bb24, %bb23, %panic, %bb4, %bb2
  %8 = landingpad { ptr, i32 }
          cleanup
  %9 = extractvalue { ptr, i32 } %8, 0
  %10 = extractvalue { ptr, i32 } %8, 1
  store ptr %9, ptr %1, align 8
  %11 = getelementptr inbounds i8, ptr %1, i64 8
  store i32 %10, ptr %11, align 8
  br label %bb65

bb3:                                              ; preds = %bb2
  %_7.0 = extractvalue { i32, i32 } %7, 0
  %_7.1 = extractvalue { i32, i32 } %7, 1
  store i32 %_7.0, ptr %iter, align 4
  %12 = getelementptr inbounds i8, ptr %iter, i64 4
  store i32 %_7.1, ptr %12, align 4
  br label %bb4

bb4:                                              ; preds = %bb11, %bb3
; invoke core::iter::range::<impl core::iter::traits::iterator::Iterator for core::ops::range::Range<A>>::next
  %13 = invoke { i32, i32 } @"_ZN4core4iter5range101_$LT$impl$u20$core..iter..traits..iterator..Iterator$u20$for$u20$core..ops..range..Range$LT$A$GT$$GT$4next17hea59fb24d2fe5aa6E"(ptr align 4 %iter)
          to label %bb5 unwind label %cleanup5

bb5:                                              ; preds = %bb4
  %14 = extractvalue { i32, i32 } %13, 0
  %15 = extractvalue { i32, i32 } %13, 1
  store i32 %14, ptr %_10, align 4
  %16 = getelementptr inbounds i8, ptr %_10, i64 4
  store i32 %15, ptr %16, align 4
  %17 = load i32, ptr %_10, align 4
  %18 = getelementptr inbounds i8, ptr %_10, i64 4
  %19 = load i32, ptr %18, align 4
  %_12 = zext i32 %17 to i64
  %20 = trunc nuw i64 %_12 to i1
  br i1 %20, label %bb7, label %bb8

bb7:                                              ; preds = %bb5
  %21 = getelementptr inbounds i8, ptr %_10, i64 4
  %i18 = load i32, ptr %21, align 4
; invoke <I as core::iter::traits::collect::IntoIterator>::into_iter
  %22 = invoke { i32, i32 } @"_ZN63_$LT$I$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17h38ee7d7733e28f5bE"(i32 0, i32 %i18)
          to label %bb9 unwind label %cleanup5

bb8:                                              ; preds = %bb5
  %23 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %n, i32 1)
  %_51.0 = extractvalue { i32, i1 } %23, 0
  %_51.1 = extractvalue { i32, i1 } %23, 1
  br i1 %_51.1, label %panic, label %bb23

bb23:                                             ; preds = %bb8
; invoke core::iter::traits::iterator::Iterator::rev
  %24 = invoke { i32, i32 } @_ZN4core4iter6traits8iterator8Iterator3rev17h2532d1d887989510E(i32 0, i32 %_51.0)
          to label %bb24 unwind label %cleanup5

panic:                                            ; preds = %bb8
; invoke core::panicking::panic_const::panic_const_sub_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_sub_overflow17h134cc1a7f93654deE(ptr align 8 @alloc_7e6eca84e88ca4f011db43fe668b9709) #24
          to label %unreachable unwind label %cleanup5

unreachable:                                      ; preds = %panic23, %panic22, %panic21, %panic20, %panic17, %panic16, %panic15, %panic14, %panic13, %panic11, %panic10, %panic9, %panic8, %panic7, %panic6, %panic
  unreachable

bb24:                                             ; preds = %bb23
  %_48.0 = extractvalue { i32, i32 } %24, 0
  %_48.1 = extractvalue { i32, i32 } %24, 1
; invoke <I as core::iter::traits::collect::IntoIterator>::into_iter
  %25 = invoke { i32, i32 } @"_ZN63_$LT$I$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17h980e2dbe8f7f34b0E"(i32 %_48.0, i32 %_48.1)
          to label %bb25 unwind label %cleanup5

bb25:                                             ; preds = %bb24
  %_47.0 = extractvalue { i32, i32 } %25, 0
  %_47.1 = extractvalue { i32, i32 } %25, 1
  store i32 %_47.0, ptr %iter2, align 4
  %26 = getelementptr inbounds i8, ptr %iter2, i64 4
  store i32 %_47.1, ptr %26, align 4
  br label %bb26

bb26:                                             ; preds = %bb33, %bb25
; invoke <core::iter::adapters::rev::Rev<I> as core::iter::traits::iterator::Iterator>::next
  %27 = invoke { i32, i32 } @"_ZN98_$LT$core..iter..adapters..rev..Rev$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf4bed60c385d7a36E"(ptr align 4 %iter2)
          to label %bb27 unwind label %cleanup5

bb27:                                             ; preds = %bb26
  %28 = extractvalue { i32, i32 } %27, 0
  %29 = extractvalue { i32, i32 } %27, 1
  store i32 %28, ptr %_53, align 4
  %30 = getelementptr inbounds i8, ptr %_53, i64 4
  store i32 %29, ptr %30, align 4
  %31 = load i32, ptr %_53, align 4
  %32 = getelementptr inbounds i8, ptr %_53, i64 4
  %33 = load i32, ptr %32, align 4
  %_55 = zext i32 %31 to i64
  %34 = trunc nuw i64 %_55 to i1
  br i1 %34, label %bb28, label %bb29

bb28:                                             ; preds = %bb27
  %35 = getelementptr inbounds i8, ptr %_53, i64 4
  %i12 = load i32, ptr %35, align 4
  %36 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %n, i32 1)
  %_60.0 = extractvalue { i32, i1 } %36, 0
  %_60.1 = extractvalue { i32, i1 } %36, 1
  br i1 %_60.1, label %panic13, label %bb30

bb29:                                             ; preds = %bb27
; invoke <alloc::vec::Vec<T,A> as core::ops::index::Index<I>>::index
  %_95 = invoke align 4 ptr @"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hea53670f141df9bfE"(ptr align 8 %lis, i64 0, ptr align 8 @alloc_44108cbca3058e83210cd4ddbd0bcb19)
          to label %bb45 unwind label %cleanup5

bb45:                                             ; preds = %bb29
  %_94 = load i32, ptr %_95, align 4
; invoke <alloc::vec::Vec<T,A> as core::ops::index::Index<I>>::index
  %_98 = invoke align 4 ptr @"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hea53670f141df9bfE"(ptr align 8 %lds, i64 0, ptr align 8 @alloc_7ced8c0f7abba16e7f05c06ead05a7fa)
          to label %bb46 unwind label %cleanup5

bb46:                                             ; preds = %bb45
  %_97 = load i32, ptr %_98, align 4
  %37 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %_94, i32 %_97)
  %_100.0 = extractvalue { i32, i1 } %37, 0
  %_100.1 = extractvalue { i32, i1 } %37, 1
  br i1 %_100.1, label %panic6, label %bb47

bb47:                                             ; preds = %bb46
  %38 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %_100.0, i32 1)
  %_101.0 = extractvalue { i32, i1 } %38, 0
  %_101.1 = extractvalue { i32, i1 } %38, 1
  br i1 %_101.1, label %panic7, label %bb48

panic6:                                           ; preds = %bb46
; invoke core::panicking::panic_const::panic_const_add_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_05a68e9ab8a741d7d0d4bbeeb9c1d88e) #24
          to label %unreachable unwind label %cleanup5

bb48:                                             ; preds = %bb47
  store i32 %_101.0, ptr %max, align 4
; invoke <I as core::iter::traits::collect::IntoIterator>::into_iter
  %39 = invoke { i32, i32 } @"_ZN63_$LT$I$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17h38ee7d7733e28f5bE"(i32 1, i32 %n)
          to label %bb49 unwind label %cleanup5

panic7:                                           ; preds = %bb47
; invoke core::panicking::panic_const::panic_const_sub_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_sub_overflow17h134cc1a7f93654deE(ptr align 8 @alloc_05a68e9ab8a741d7d0d4bbeeb9c1d88e) #24
          to label %unreachable unwind label %cleanup5

bb49:                                             ; preds = %bb48
  %_102.0 = extractvalue { i32, i32 } %39, 0
  %_102.1 = extractvalue { i32, i32 } %39, 1
  store i32 %_102.0, ptr %iter4, align 4
  %40 = getelementptr inbounds i8, ptr %iter4, i64 4
  store i32 %_102.1, ptr %40, align 4
  br label %bb50

bb50:                                             ; preds = %bb62, %bb57, %bb49
; invoke core::iter::range::<impl core::iter::traits::iterator::Iterator for core::ops::range::Range<A>>::next
  %41 = invoke { i32, i32 } @"_ZN4core4iter5range101_$LT$impl$u20$core..iter..traits..iterator..Iterator$u20$for$u20$core..ops..range..Range$LT$A$GT$$GT$4next17hea59fb24d2fe5aa6E"(ptr align 4 %iter4)
          to label %bb51 unwind label %cleanup5

bb51:                                             ; preds = %bb50
  %42 = extractvalue { i32, i32 } %41, 0
  %43 = extractvalue { i32, i32 } %41, 1
  store i32 %42, ptr %_105, align 4
  %44 = getelementptr inbounds i8, ptr %_105, i64 4
  store i32 %43, ptr %44, align 4
  %45 = load i32, ptr %_105, align 4
  %46 = getelementptr inbounds i8, ptr %_105, i64 4
  %47 = load i32, ptr %46, align 4
  %_107 = zext i32 %45 to i64
  %48 = trunc nuw i64 %_107 to i1
  br i1 %48, label %bb52, label %bb53

bb52:                                             ; preds = %bb51
  %49 = getelementptr inbounds i8, ptr %_105, i64 4
  %i = load i32, ptr %49, align 4
  %_115 = sext i32 %i to i64
; invoke <alloc::vec::Vec<T,A> as core::ops::index::Index<I>>::index
  %_113 = invoke align 4 ptr @"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hea53670f141df9bfE"(ptr align 8 %lis, i64 %_115, ptr align 8 @alloc_83d83d2d895efb5f6eae1330db8a1d2c)
          to label %bb54 unwind label %cleanup5

bb53:                                             ; preds = %bb51
  %_0 = load i32, ptr %max, align 4
; invoke core::ptr::drop_in_place<alloc::vec::Vec<i32>>
  invoke void @"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17hc33ac89745f441b0E"(ptr align 8 %lds)
          to label %bb63 unwind label %cleanup

bb63:                                             ; preds = %bb53
; call core::ptr::drop_in_place<alloc::vec::Vec<i32>>
  call void @"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17hc33ac89745f441b0E"(ptr align 8 %lis)
  ret i32 %_0

bb54:                                             ; preds = %bb52
  %_112 = load i32, ptr %_113, align 4
  %_119 = sext i32 %i to i64
; invoke <alloc::vec::Vec<T,A> as core::ops::index::Index<I>>::index
  %_117 = invoke align 4 ptr @"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hea53670f141df9bfE"(ptr align 8 %lds, i64 %_119, ptr align 8 @alloc_60c4808b808cc7064f63f9d53f38f8e4)
          to label %bb55 unwind label %cleanup5

bb55:                                             ; preds = %bb54
  %_116 = load i32, ptr %_117, align 4
  %50 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %_112, i32 %_116)
  %_120.0 = extractvalue { i32, i1 } %50, 0
  %_120.1 = extractvalue { i32, i1 } %50, 1
  br i1 %_120.1, label %panic8, label %bb56

bb56:                                             ; preds = %bb55
  %51 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %_120.0, i32 1)
  %_121.0 = extractvalue { i32, i1 } %51, 0
  %_121.1 = extractvalue { i32, i1 } %51, 1
  br i1 %_121.1, label %panic9, label %bb57

panic8:                                           ; preds = %bb55
; invoke core::panicking::panic_const::panic_const_add_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_6dc2d620918ad1692ee32d76275c71da) #24
          to label %unreachable unwind label %cleanup5

bb57:                                             ; preds = %bb56
  %_122 = load i32, ptr %max, align 4
  %_109 = icmp sgt i32 %_121.0, %_122
  br i1 %_109, label %bb58, label %bb50

panic9:                                           ; preds = %bb56
; invoke core::panicking::panic_const::panic_const_sub_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_sub_overflow17h134cc1a7f93654deE(ptr align 8 @alloc_6dc2d620918ad1692ee32d76275c71da) #24
          to label %unreachable unwind label %cleanup5

bb58:                                             ; preds = %bb57
  %_127 = sext i32 %i to i64
; invoke <alloc::vec::Vec<T,A> as core::ops::index::Index<I>>::index
  %_125 = invoke align 4 ptr @"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hea53670f141df9bfE"(ptr align 8 %lis, i64 %_127, ptr align 8 @alloc_6d6b99163555eb907df86a598a1695b4)
          to label %bb59 unwind label %cleanup5

bb59:                                             ; preds = %bb58
  %_124 = load i32, ptr %_125, align 4
  %_131 = sext i32 %i to i64
; invoke <alloc::vec::Vec<T,A> as core::ops::index::Index<I>>::index
  %_129 = invoke align 4 ptr @"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hea53670f141df9bfE"(ptr align 8 %lds, i64 %_131, ptr align 8 @alloc_826daaf863cb639fafe19edd3a064dc0)
          to label %bb60 unwind label %cleanup5

bb60:                                             ; preds = %bb59
  %_128 = load i32, ptr %_129, align 4
  %52 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %_124, i32 %_128)
  %_132.0 = extractvalue { i32, i1 } %52, 0
  %_132.1 = extractvalue { i32, i1 } %52, 1
  br i1 %_132.1, label %panic10, label %bb61

bb61:                                             ; preds = %bb60
  %53 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %_132.0, i32 1)
  %_133.0 = extractvalue { i32, i1 } %53, 0
  %_133.1 = extractvalue { i32, i1 } %53, 1
  br i1 %_133.1, label %panic11, label %bb62

panic10:                                          ; preds = %bb60
; invoke core::panicking::panic_const::panic_const_add_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_ba0f6f4f66bf25d78d7eafb7a3778b50) #24
          to label %unreachable unwind label %cleanup5

bb62:                                             ; preds = %bb61
  store i32 %_133.0, ptr %max, align 4
  br label %bb50

panic11:                                          ; preds = %bb61
; invoke core::panicking::panic_const::panic_const_sub_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_sub_overflow17h134cc1a7f93654deE(ptr align 8 @alloc_ba0f6f4f66bf25d78d7eafb7a3778b50) #24
          to label %unreachable unwind label %cleanup5

bb30:                                             ; preds = %bb28
; invoke <I as core::iter::traits::collect::IntoIterator>::into_iter
  %54 = invoke { i32, i32 } @"_ZN63_$LT$I$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17h38ee7d7733e28f5bE"(i32 %_60.0, i32 %i12)
          to label %bb31 unwind label %cleanup5

panic13:                                          ; preds = %bb28
; invoke core::panicking::panic_const::panic_const_sub_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_sub_overflow17h134cc1a7f93654deE(ptr align 8 @alloc_928eafb6ae591ba460f18a8df1987c17) #24
          to label %unreachable unwind label %cleanup5

bb31:                                             ; preds = %bb30
  %_57.0 = extractvalue { i32, i32 } %54, 0
  %_57.1 = extractvalue { i32, i32 } %54, 1
  store i32 %_57.0, ptr %iter3, align 4
  %55 = getelementptr inbounds i8, ptr %iter3, i64 4
  store i32 %_57.1, ptr %55, align 4
  br label %bb32

bb32:                                             ; preds = %bb44, %bb40, %bb36, %bb31
; invoke core::iter::range::<impl core::iter::traits::iterator::Iterator for core::ops::range::Range<A>>::next
  %56 = invoke { i32, i32 } @"_ZN4core4iter5range101_$LT$impl$u20$core..iter..traits..iterator..Iterator$u20$for$u20$core..ops..range..Range$LT$A$GT$$GT$4next17hea59fb24d2fe5aa6E"(ptr align 4 %iter3)
          to label %bb33 unwind label %cleanup5

bb33:                                             ; preds = %bb32
  %57 = extractvalue { i32, i32 } %56, 0
  %58 = extractvalue { i32, i32 } %56, 1
  store i32 %57, ptr %_62, align 4
  %59 = getelementptr inbounds i8, ptr %_62, i64 4
  store i32 %58, ptr %59, align 4
  %60 = load i32, ptr %_62, align 4
  %61 = getelementptr inbounds i8, ptr %_62, i64 4
  %62 = load i32, ptr %61, align 4
  %_64 = zext i32 %60 to i64
  %63 = trunc nuw i64 %_64 to i1
  br i1 %63, label %bb34, label %bb26

bb34:                                             ; preds = %bb33
  %64 = getelementptr inbounds i8, ptr %_62, i64 4
  %j = load i32, ptr %64, align 4
  %_68 = sext i32 %i12 to i64
  %_69 = icmp ult i64 %_68, 2
  br i1 %_69, label %bb35, label %panic14

bb35:                                             ; preds = %bb34
  %65 = getelementptr inbounds nuw i32, ptr %arr, i64 %_68
  %_67 = load i32, ptr %65, align 4
  %_71 = sext i32 %j to i64
  %_72 = icmp ult i64 %_71, 2
  br i1 %_72, label %bb36, label %panic15

panic14:                                          ; preds = %bb34
; invoke core::panicking::panic_bounds_check
  invoke void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 %_68, i64 2, ptr align 8 @alloc_fbb0a42b935a6403069846ad36369a2d) #24
          to label %unreachable unwind label %cleanup5

bb36:                                             ; preds = %bb35
  %66 = getelementptr inbounds nuw i32, ptr %arr, i64 %_71
  %_70 = load i32, ptr %66, align 4
  %_66 = icmp sgt i32 %_67, %_70
  br i1 %_66, label %bb37, label %bb32

panic15:                                          ; preds = %bb35
; invoke core::panicking::panic_bounds_check
  invoke void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 %_71, i64 2, ptr align 8 @alloc_03b7d28282a695d26d17395cd5b9f22f) #24
          to label %unreachable unwind label %cleanup5

bb37:                                             ; preds = %bb36
  %_77 = sext i32 %i12 to i64
; invoke <alloc::vec::Vec<T,A> as core::ops::index::Index<I>>::index
  %_75 = invoke align 4 ptr @"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hea53670f141df9bfE"(ptr align 8 %lds, i64 %_77, ptr align 8 @alloc_5701df87b45f8fe5f7c1f3d588c83d66)
          to label %bb38 unwind label %cleanup5

bb38:                                             ; preds = %bb37
  %_74 = load i32, ptr %_75, align 4
  %_82 = sext i32 %j to i64
; invoke <alloc::vec::Vec<T,A> as core::ops::index::Index<I>>::index
  %_80 = invoke align 4 ptr @"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hea53670f141df9bfE"(ptr align 8 %lds, i64 %_82, ptr align 8 @alloc_fbe4347f48c5b21259477bfaee7fa067)
          to label %bb39 unwind label %cleanup5

bb39:                                             ; preds = %bb38
  %_79 = load i32, ptr %_80, align 4
  %67 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %_79, i32 1)
  %_83.0 = extractvalue { i32, i1 } %67, 0
  %_83.1 = extractvalue { i32, i1 } %67, 1
  br i1 %_83.1, label %panic16, label %bb40

bb40:                                             ; preds = %bb39
  %_73 = icmp slt i32 %_74, %_83.0
  br i1 %_73, label %bb41, label %bb32

panic16:                                          ; preds = %bb39
; invoke core::panicking::panic_const::panic_const_add_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_34aec2ab912b6e4f2ad96483f47a3b06) #24
          to label %unreachable unwind label %cleanup5

bb41:                                             ; preds = %bb40
  %_87 = sext i32 %j to i64
; invoke <alloc::vec::Vec<T,A> as core::ops::index::Index<I>>::index
  %_85 = invoke align 4 ptr @"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hea53670f141df9bfE"(ptr align 8 %lds, i64 %_87, ptr align 8 @alloc_687dc4ba0b4c424db63dca38a48cabb3)
          to label %bb42 unwind label %cleanup5

bb42:                                             ; preds = %bb41
  %_84 = load i32, ptr %_85, align 4
  %68 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %_84, i32 1)
  %_88.0 = extractvalue { i32, i1 } %68, 0
  %_88.1 = extractvalue { i32, i1 } %68, 1
  br i1 %_88.1, label %panic17, label %bb43

bb43:                                             ; preds = %bb42
  %_91 = sext i32 %i12 to i64
; invoke <alloc::vec::Vec<T,A> as core::ops::index::IndexMut<I>>::index_mut
  %_89 = invoke align 4 ptr @"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17hf5a76d47e33c879aE"(ptr align 8 %lds, i64 %_91, ptr align 8 @alloc_02cf36c7a4fd0999d6c55c3dde6d7932)
          to label %bb44 unwind label %cleanup5

panic17:                                          ; preds = %bb42
; invoke core::panicking::panic_const::panic_const_add_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_71a40baf42839cfa7f8f84b54eb4e68b) #24
          to label %unreachable unwind label %cleanup5

bb44:                                             ; preds = %bb43
  store i32 %_88.0, ptr %_89, align 4
  br label %bb32

bb9:                                              ; preds = %bb7
  %_14.0 = extractvalue { i32, i32 } %22, 0
  %_14.1 = extractvalue { i32, i32 } %22, 1
  store i32 %_14.0, ptr %iter1, align 4
  %69 = getelementptr inbounds i8, ptr %iter1, i64 4
  store i32 %_14.1, ptr %69, align 4
  br label %bb10

bb10:                                             ; preds = %bb22, %bb18, %bb14, %bb9
; invoke core::iter::range::<impl core::iter::traits::iterator::Iterator for core::ops::range::Range<A>>::next
  %70 = invoke { i32, i32 } @"_ZN4core4iter5range101_$LT$impl$u20$core..iter..traits..iterator..Iterator$u20$for$u20$core..ops..range..Range$LT$A$GT$$GT$4next17hea59fb24d2fe5aa6E"(ptr align 4 %iter1)
          to label %bb11 unwind label %cleanup5

bb11:                                             ; preds = %bb10
  %71 = extractvalue { i32, i32 } %70, 0
  %72 = extractvalue { i32, i32 } %70, 1
  store i32 %71, ptr %_17, align 4
  %73 = getelementptr inbounds i8, ptr %_17, i64 4
  store i32 %72, ptr %73, align 4
  %74 = load i32, ptr %_17, align 4
  %75 = getelementptr inbounds i8, ptr %_17, i64 4
  %76 = load i32, ptr %75, align 4
  %_19 = zext i32 %74 to i64
  %77 = trunc nuw i64 %_19 to i1
  br i1 %77, label %bb12, label %bb4

bb12:                                             ; preds = %bb11
  %78 = getelementptr inbounds i8, ptr %_17, i64 4
  %j19 = load i32, ptr %78, align 4
  %_23 = sext i32 %i18 to i64
  %_24 = icmp ult i64 %_23, 2
  br i1 %_24, label %bb13, label %panic20

bb13:                                             ; preds = %bb12
  %79 = getelementptr inbounds nuw i32, ptr %arr, i64 %_23
  %_22 = load i32, ptr %79, align 4
  %_26 = sext i32 %j19 to i64
  %_27 = icmp ult i64 %_26, 2
  br i1 %_27, label %bb14, label %panic21

panic20:                                          ; preds = %bb12
; invoke core::panicking::panic_bounds_check
  invoke void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 %_23, i64 2, ptr align 8 @alloc_e7787dfaf466e88ef77af12cc2e7ee49) #24
          to label %unreachable unwind label %cleanup5

bb14:                                             ; preds = %bb13
  %80 = getelementptr inbounds nuw i32, ptr %arr, i64 %_26
  %_25 = load i32, ptr %80, align 4
  %_21 = icmp sgt i32 %_22, %_25
  br i1 %_21, label %bb15, label %bb10

panic21:                                          ; preds = %bb13
; invoke core::panicking::panic_bounds_check
  invoke void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 %_26, i64 2, ptr align 8 @alloc_bb232ff46be2667488ecb91295b582a6) #24
          to label %unreachable unwind label %cleanup5

bb15:                                             ; preds = %bb14
  %_32 = sext i32 %i18 to i64
; invoke <alloc::vec::Vec<T,A> as core::ops::index::Index<I>>::index
  %_30 = invoke align 4 ptr @"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hea53670f141df9bfE"(ptr align 8 %lis, i64 %_32, ptr align 8 @alloc_2611f1af6fbc2164a6c15b98e40edece)
          to label %bb16 unwind label %cleanup5

bb16:                                             ; preds = %bb15
  %_29 = load i32, ptr %_30, align 4
  %_37 = sext i32 %j19 to i64
; invoke <alloc::vec::Vec<T,A> as core::ops::index::Index<I>>::index
  %_35 = invoke align 4 ptr @"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hea53670f141df9bfE"(ptr align 8 %lis, i64 %_37, ptr align 8 @alloc_8d4ae6cf23ead25f6caa0d7d62248039)
          to label %bb17 unwind label %cleanup5

bb17:                                             ; preds = %bb16
  %_34 = load i32, ptr %_35, align 4
  %81 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %_34, i32 1)
  %_38.0 = extractvalue { i32, i1 } %81, 0
  %_38.1 = extractvalue { i32, i1 } %81, 1
  br i1 %_38.1, label %panic22, label %bb18

bb18:                                             ; preds = %bb17
  %_28 = icmp slt i32 %_29, %_38.0
  br i1 %_28, label %bb19, label %bb10

panic22:                                          ; preds = %bb17
; invoke core::panicking::panic_const::panic_const_add_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_2c2248b5651ed443da8efa2d62486d1f) #24
          to label %unreachable unwind label %cleanup5

bb19:                                             ; preds = %bb18
  %_42 = sext i32 %j19 to i64
; invoke <alloc::vec::Vec<T,A> as core::ops::index::Index<I>>::index
  %_40 = invoke align 4 ptr @"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hea53670f141df9bfE"(ptr align 8 %lis, i64 %_42, ptr align 8 @alloc_2213c663b1bfe076b6c7fc5ba3f2b459)
          to label %bb20 unwind label %cleanup5

bb20:                                             ; preds = %bb19
  %_39 = load i32, ptr %_40, align 4
  %82 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %_39, i32 1)
  %_43.0 = extractvalue { i32, i1 } %82, 0
  %_43.1 = extractvalue { i32, i1 } %82, 1
  br i1 %_43.1, label %panic23, label %bb21

bb21:                                             ; preds = %bb20
  %_46 = sext i32 %i18 to i64
; invoke <alloc::vec::Vec<T,A> as core::ops::index::IndexMut<I>>::index_mut
  %_44 = invoke align 4 ptr @"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17hf5a76d47e33c879aE"(ptr align 8 %lis, i64 %_46, ptr align 8 @alloc_b1bf72d1b6a912de8c1a9bd67bc829ce)
          to label %bb22 unwind label %cleanup5

panic23:                                          ; preds = %bb20
; invoke core::panicking::panic_const::panic_const_add_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_573135403527c7c507f0b07977686c98) #24
          to label %unreachable unwind label %cleanup5

bb22:                                             ; preds = %bb21
  store i32 %_43.0, ptr %_44, align 4
  br label %bb10

bb6:                                              ; No predecessors!
  unreachable

terminate:                                        ; preds = %bb66, %bb65
  %83 = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer
; call core::panicking::panic_in_cleanup
  call void @_ZN4core9panicking16panic_in_cleanup17h5f6bde45d17ae243E() #20
  unreachable

bb67:                                             ; preds = %bb66
  %84 = load ptr, ptr %1, align 8
  %85 = getelementptr inbounds i8, ptr %1, i64 8
  %86 = load i32, ptr %85, align 8
  %87 = insertvalue { ptr, i32 } poison, ptr %84, 0
  %88 = insertvalue { ptr, i32 } %87, i32 %86, 1
  resume { ptr, i32 } %88
}

define i32 @f_gold(i64 %0, i32 %n) unnamed_addr #3 personality ptr @rust_eh_personality {
start:
  %1 = alloca [16 x i8], align 8
  %k = alloca [4 x i8], align 4
  %i = alloca [4 x i8], align 4
  %_27 = alloca [8 x i8], align 4
  %iter1 = alloca [8 x i8], align 4
  %_13 = alloca [16 x i8], align 8
  %iter = alloca [16 x i8], align 8
  %_6 = alloca [24 x i8], align 8
  %L = alloca [24 x i8], align 8
  %llap = alloca [4 x i8], align 4
  %_0 = alloca [4 x i8], align 4
  %2 = alloca [8 x i8], align 8
  %set = alloca [8 x i8], align 4
  store i64 %0, ptr %2, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %set, ptr align 8 %2, i64 8, i1 false)
  %_3 = icmp sle i32 %n, 2
  br i1 %_3, label %bb1, label %bb2

bb2:                                              ; preds = %start
  store i32 2, ptr %llap, align 4
  %_7 = sext i32 %n to i64
; call alloc::vec::from_elem
  call void @_ZN5alloc3vec9from_elem17h4ff2356b5527bcefE(ptr sret([24 x i8]) align 8 %_6, i32 2, i64 %_7)
  %_8 = sext i32 %n to i64
; call alloc::vec::from_elem
  call void @_ZN5alloc3vec9from_elem17h451d6651dee38073E(ptr sret([24 x i8]) align 8 %L, ptr align 8 %_6, i64 %_8)
  %_11 = sext i32 %n to i64
; invoke <I as core::iter::traits::collect::IntoIterator>::into_iter
  %3 = invoke { i64, i64 } @"_ZN63_$LT$I$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17hd3aa38d42722246bE"(i64 0, i64 %_11)
          to label %bb5 unwind label %cleanup

bb1:                                              ; preds = %start
  store i32 %n, ptr %_0, align 4
  br label %bb59

bb60:                                             ; preds = %cleanup
; invoke core::ptr::drop_in_place<alloc::vec::Vec<alloc::vec::Vec<i32>>>
  invoke void @"_ZN4core3ptr70drop_in_place$LT$alloc..vec..Vec$LT$alloc..vec..Vec$LT$i32$GT$$GT$$GT$17heb648cd060b6dfc0E"(ptr align 8 %L) #22
          to label %bb61 unwind label %terminate

cleanup:                                          ; preds = %bb12, %panic21, %bb9, %panic19, %panic18, %bb40, %bb39, %panic17, %panic16, %bb50, %bb49, %bb48, %bb47, %bb46, %panic15, %bb44, %bb43, %panic14, %panic13, %panic12, %panic11, %panic10, %panic9, %panic8, %panic7, %panic6, %panic5, %panic4, %bb56, %bb55, %panic3, %panic2, %panic, %bb16, %bb14, %bb10, %bb6, %bb2
  %4 = landingpad { ptr, i32 }
          cleanup
  %5 = extractvalue { ptr, i32 } %4, 0
  %6 = extractvalue { ptr, i32 } %4, 1
  store ptr %5, ptr %1, align 8
  %7 = getelementptr inbounds i8, ptr %1, i64 8
  store i32 %6, ptr %7, align 8
  br label %bb60

bb5:                                              ; preds = %bb2
  %_9.0 = extractvalue { i64, i64 } %3, 0
  %_9.1 = extractvalue { i64, i64 } %3, 1
  store i64 %_9.0, ptr %iter, align 8
  %8 = getelementptr inbounds i8, ptr %iter, i64 8
  store i64 %_9.1, ptr %8, align 8
  br label %bb6

bb6:                                              ; preds = %bb13, %bb5
; invoke core::iter::range::<impl core::iter::traits::iterator::Iterator for core::ops::range::Range<A>>::next
  %9 = invoke { i64, i64 } @"_ZN4core4iter5range101_$LT$impl$u20$core..iter..traits..iterator..Iterator$u20$for$u20$core..ops..range..Range$LT$A$GT$$GT$4next17hae43e575aae56d5aE"(ptr align 8 %iter)
          to label %bb7 unwind label %cleanup

bb7:                                              ; preds = %bb6
  %10 = extractvalue { i64, i64 } %9, 0
  %11 = extractvalue { i64, i64 } %9, 1
  store i64 %10, ptr %_13, align 8
  %12 = getelementptr inbounds i8, ptr %_13, i64 8
  store i64 %11, ptr %12, align 8
  %_15 = load i64, ptr %_13, align 8
  %13 = getelementptr inbounds i8, ptr %_13, i64 8
  %14 = load i64, ptr %13, align 8
  %15 = trunc nuw i64 %_15 to i1
  br i1 %15, label %bb9, label %bb10

bb9:                                              ; preds = %bb7
  %16 = getelementptr inbounds i8, ptr %_13, i64 8
  %i20 = load i64, ptr %16, align 8
; invoke <alloc::vec::Vec<T,A> as core::ops::index::IndexMut<I>>::index_mut
  %_18 = invoke align 8 ptr @"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h932854c4cb2e61e7E"(ptr align 8 %L, i64 %i20, ptr align 8 @alloc_7e65c5552f175f9e5b53701ea20751e2)
          to label %bb11 unwind label %cleanup

bb10:                                             ; preds = %bb7
; invoke core::iter::traits::iterator::Iterator::rev
  %17 = invoke { i32, i32 } @_ZN4core4iter6traits8iterator8Iterator3rev17h45fbcf6632f8b8aaE(i32 2, i32 %n)
          to label %bb14 unwind label %cleanup

bb14:                                             ; preds = %bb10
  %_24.0 = extractvalue { i32, i32 } %17, 0
  %_24.1 = extractvalue { i32, i32 } %17, 1
; invoke <I as core::iter::traits::collect::IntoIterator>::into_iter
  %18 = invoke { i32, i32 } @"_ZN63_$LT$I$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17h7073cb6a0a773844E"(i32 %_24.0, i32 %_24.1)
          to label %bb15 unwind label %cleanup

bb15:                                             ; preds = %bb14
  %_23.0 = extractvalue { i32, i32 } %18, 0
  %_23.1 = extractvalue { i32, i32 } %18, 1
  store i32 %_23.0, ptr %iter1, align 4
  %19 = getelementptr inbounds i8, ptr %iter1, i64 4
  store i32 %_23.1, ptr %19, align 4
  br label %bb16

bb16:                                             ; preds = %bb54, %bb15
; invoke <core::iter::adapters::rev::Rev<I> as core::iter::traits::iterator::Iterator>::next
  %20 = invoke { i32, i32 } @"_ZN98_$LT$core..iter..adapters..rev..Rev$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h702eb61490fc35bbE"(ptr align 4 %iter1)
          to label %bb17 unwind label %cleanup

bb17:                                             ; preds = %bb16
  %21 = extractvalue { i32, i32 } %20, 0
  %22 = extractvalue { i32, i32 } %20, 1
  store i32 %21, ptr %_27, align 4
  %23 = getelementptr inbounds i8, ptr %_27, i64 4
  store i32 %22, ptr %23, align 4
  %24 = load i32, ptr %_27, align 4
  %25 = getelementptr inbounds i8, ptr %_27, i64 4
  %26 = load i32, ptr %25, align 4
  %_29 = zext i32 %24 to i64
  %27 = trunc nuw i64 %_29 to i1
  br i1 %27, label %bb18, label %bb19

bb18:                                             ; preds = %bb17
  %28 = getelementptr inbounds i8, ptr %_27, i64 4
  %j = load i32, ptr %28, align 4
  %29 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %j, i32 1)
  %_32.0 = extractvalue { i32, i1 } %29, 0
  %_32.1 = extractvalue { i32, i1 } %29, 1
  br i1 %_32.1, label %panic, label %bb20

bb19:                                             ; preds = %bb17
  %30 = load i32, ptr %llap, align 4
  store i32 %30, ptr %_0, align 4
; call core::ptr::drop_in_place<alloc::vec::Vec<alloc::vec::Vec<i32>>>
  call void @"_ZN4core3ptr70drop_in_place$LT$alloc..vec..Vec$LT$alloc..vec..Vec$LT$i32$GT$$GT$$GT$17heb648cd060b6dfc0E"(ptr align 8 %L)
  br label %bb59

bb59:                                             ; preds = %bb1, %bb19
  %31 = load i32, ptr %_0, align 4
  ret i32 %31

bb20:                                             ; preds = %bb18
  store i32 %_32.0, ptr %i, align 4
  %32 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %j, i32 1)
  %_34.0 = extractvalue { i32, i1 } %32, 0
  %_34.1 = extractvalue { i32, i1 } %32, 1
  br i1 %_34.1, label %panic2, label %bb21

panic:                                            ; preds = %bb18
; invoke core::panicking::panic_const::panic_const_sub_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_sub_overflow17h134cc1a7f93654deE(ptr align 8 @alloc_3a1fa0dc8ed63515645ed22c460aba8a) #24
          to label %unreachable unwind label %cleanup

unreachable:                                      ; preds = %panic21, %panic19, %panic18, %panic17, %panic16, %panic15, %panic14, %panic13, %panic12, %panic11, %panic10, %panic9, %panic8, %panic7, %panic6, %panic5, %panic4, %panic3, %panic2, %panic
  unreachable

bb21:                                             ; preds = %bb20
  store i32 %_34.0, ptr %k, align 4
  br label %bb22

panic2:                                           ; preds = %bb20
; invoke core::panicking::panic_const::panic_const_add_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_9301f3cea7900edeff181526a4b31d18) #24
          to label %unreachable unwind label %cleanup

bb22:                                             ; preds = %bb32, %bb42, %bb53, %bb21
  %_36 = load i32, ptr %i, align 4
  %_35 = icmp sge i32 %_36, 0
  br i1 %_35, label %bb23, label %bb54

bb54:                                             ; preds = %bb58, %bb24, %bb22
  %_107 = load i32, ptr %i, align 4
  %_106 = icmp sge i32 %_107, 0
  br i1 %_106, label %bb55, label %bb16

bb23:                                             ; preds = %bb22
  %_38 = load i32, ptr %k, align 4
  %33 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %n, i32 1)
  %_40.0 = extractvalue { i32, i1 } %33, 0
  %_40.1 = extractvalue { i32, i1 } %33, 1
  br i1 %_40.1, label %panic3, label %bb24

bb24:                                             ; preds = %bb23
  %_37 = icmp sle i32 %_38, %_40.0
  br i1 %_37, label %bb25, label %bb54

panic3:                                           ; preds = %bb23
; invoke core::panicking::panic_const::panic_const_sub_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_sub_overflow17h134cc1a7f93654deE(ptr align 8 @alloc_c416a101692034baf2abda771526728b) #24
          to label %unreachable unwind label %cleanup

bb25:                                             ; preds = %bb24
  %_45 = load i32, ptr %i, align 4
  %_44 = sext i32 %_45 to i64
  %_46 = icmp ult i64 %_44, 2
  br i1 %_46, label %bb26, label %panic5

bb55:                                             ; preds = %bb54
  %_112 = load i32, ptr %i, align 4
  %_111 = sext i32 %_112 to i64
; invoke <alloc::vec::Vec<T,A> as core::ops::index::IndexMut<I>>::index_mut
  %_109 = invoke align 8 ptr @"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h932854c4cb2e61e7E"(ptr align 8 %L, i64 %_111, ptr align 8 @alloc_4f6de02c9f4a796469218c905d326f44)
          to label %bb56 unwind label %cleanup

bb56:                                             ; preds = %bb55
  %_113 = sext i32 %j to i64
; invoke <alloc::vec::Vec<T,A> as core::ops::index::IndexMut<I>>::index_mut
  %_108 = invoke align 4 ptr @"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17had46c29278ed9d3bE"(ptr align 8 %_109, i64 %_113, ptr align 8 @alloc_445e0d2130c8479e1ffcac3db29a4f65)
          to label %bb57 unwind label %cleanup

bb57:                                             ; preds = %bb56
  store i32 2, ptr %_108, align 4
  %34 = load i32, ptr %i, align 4
  %35 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %34, i32 1)
  %_114.0 = extractvalue { i32, i1 } %35, 0
  %_114.1 = extractvalue { i32, i1 } %35, 1
  br i1 %_114.1, label %panic4, label %bb58

bb58:                                             ; preds = %bb57
  store i32 %_114.0, ptr %i, align 4
  br label %bb54

panic4:                                           ; preds = %bb57
; invoke core::panicking::panic_const::panic_const_sub_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_sub_overflow17h134cc1a7f93654deE(ptr align 8 @alloc_bbe06fecd01b1cf125eb0b7f511690dc) #24
          to label %unreachable unwind label %cleanup

bb26:                                             ; preds = %bb25
  %36 = getelementptr inbounds nuw i32, ptr %set, i64 %_44
  %_43 = load i32, ptr %36, align 4
  %_49 = load i32, ptr %k, align 4
  %_48 = sext i32 %_49 to i64
  %_50 = icmp ult i64 %_48, 2
  br i1 %_50, label %bb27, label %panic6

panic5:                                           ; preds = %bb25
; invoke core::panicking::panic_bounds_check
  invoke void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 %_44, i64 2, ptr align 8 @alloc_dfeefaf8b2ab45fb9de75fe5c610fb3f) #24
          to label %unreachable unwind label %cleanup

bb27:                                             ; preds = %bb26
  %37 = getelementptr inbounds nuw i32, ptr %set, i64 %_48
  %_47 = load i32, ptr %37, align 4
  %38 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %_43, i32 %_47)
  %_51.0 = extractvalue { i32, i1 } %38, 0
  %_51.1 = extractvalue { i32, i1 } %38, 1
  br i1 %_51.1, label %panic7, label %bb28

panic6:                                           ; preds = %bb26
; invoke core::panicking::panic_bounds_check
  invoke void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 %_48, i64 2, ptr align 8 @alloc_6f51ea75f6465892bb31df86ea9ef009) #24
          to label %unreachable unwind label %cleanup

bb28:                                             ; preds = %bb27
  %_54 = sext i32 %j to i64
  %_55 = icmp ult i64 %_54, 2
  br i1 %_55, label %bb29, label %panic8

panic7:                                           ; preds = %bb27
; invoke core::panicking::panic_const::panic_const_add_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_dfeefaf8b2ab45fb9de75fe5c610fb3f) #24
          to label %unreachable unwind label %cleanup

bb29:                                             ; preds = %bb28
  %39 = getelementptr inbounds nuw i32, ptr %set, i64 %_54
  %_53 = load i32, ptr %39, align 4
  %40 = call { i32, i1 } @llvm.smul.with.overflow.i32(i32 2, i32 %_53)
  %_56.0 = extractvalue { i32, i1 } %40, 0
  %_56.1 = extractvalue { i32, i1 } %40, 1
  br i1 %_56.1, label %panic9, label %bb30

panic8:                                           ; preds = %bb28
; invoke core::panicking::panic_bounds_check
  invoke void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 %_54, i64 2, ptr align 8 @alloc_f0e795fa0dda43f96cfd00acdf099f9f) #24
          to label %unreachable unwind label %cleanup

bb30:                                             ; preds = %bb29
  %_41 = icmp slt i32 %_51.0, %_56.0
  br i1 %_41, label %bb31, label %bb33

panic9:                                           ; preds = %bb29
; invoke core::panicking::panic_const::panic_const_mul_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_mul_overflow17h554ac164c12099f8E(ptr align 8 @alloc_2ecd0bc2556aa943fece0346d850bf30) #24
          to label %unreachable unwind label %cleanup

bb33:                                             ; preds = %bb30
  %_62 = load i32, ptr %i, align 4
  %_61 = sext i32 %_62 to i64
  %_63 = icmp ult i64 %_61, 2
  br i1 %_63, label %bb34, label %panic10

bb31:                                             ; preds = %bb30
  %41 = load i32, ptr %k, align 4
  %42 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %41, i32 1)
  %_57.0 = extractvalue { i32, i1 } %42, 0
  %_57.1 = extractvalue { i32, i1 } %42, 1
  br i1 %_57.1, label %panic19, label %bb32

bb34:                                             ; preds = %bb33
  %43 = getelementptr inbounds nuw i32, ptr %set, i64 %_61
  %_60 = load i32, ptr %43, align 4
  %_66 = load i32, ptr %k, align 4
  %_65 = sext i32 %_66 to i64
  %_67 = icmp ult i64 %_65, 2
  br i1 %_67, label %bb35, label %panic11

panic10:                                          ; preds = %bb33
; invoke core::panicking::panic_bounds_check
  invoke void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 %_61, i64 2, ptr align 8 @alloc_8ec48cfc208caf76e66ac6da3e005a11) #24
          to label %unreachable unwind label %cleanup

bb35:                                             ; preds = %bb34
  %44 = getelementptr inbounds nuw i32, ptr %set, i64 %_65
  %_64 = load i32, ptr %44, align 4
  %45 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %_60, i32 %_64)
  %_68.0 = extractvalue { i32, i1 } %45, 0
  %_68.1 = extractvalue { i32, i1 } %45, 1
  br i1 %_68.1, label %panic12, label %bb36

panic11:                                          ; preds = %bb34
; invoke core::panicking::panic_bounds_check
  invoke void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 %_65, i64 2, ptr align 8 @alloc_d1888f4f0f51e33a85e7f25861f0818b) #24
          to label %unreachable unwind label %cleanup

bb36:                                             ; preds = %bb35
  %_71 = sext i32 %j to i64
  %_72 = icmp ult i64 %_71, 2
  br i1 %_72, label %bb37, label %panic13

panic12:                                          ; preds = %bb35
; invoke core::panicking::panic_const::panic_const_add_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_8ec48cfc208caf76e66ac6da3e005a11) #24
          to label %unreachable unwind label %cleanup

bb37:                                             ; preds = %bb36
  %46 = getelementptr inbounds nuw i32, ptr %set, i64 %_71
  %_70 = load i32, ptr %46, align 4
  %47 = call { i32, i1 } @llvm.smul.with.overflow.i32(i32 2, i32 %_70)
  %_73.0 = extractvalue { i32, i1 } %47, 0
  %_73.1 = extractvalue { i32, i1 } %47, 1
  br i1 %_73.1, label %panic14, label %bb38

panic13:                                          ; preds = %bb36
; invoke core::panicking::panic_bounds_check
  invoke void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 %_71, i64 2, ptr align 8 @alloc_aa80e0f3c8b7ac7aeb79af7590a5e8b5) #24
          to label %unreachable unwind label %cleanup

bb38:                                             ; preds = %bb37
  %_58 = icmp sgt i32 %_68.0, %_73.0
  br i1 %_58, label %bb39, label %bb43

panic14:                                          ; preds = %bb37
; invoke core::panicking::panic_const::panic_const_mul_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_mul_overflow17h554ac164c12099f8E(ptr align 8 @alloc_cb3d83eac58579ae5277b58c89a5a206) #24
          to label %unreachable unwind label %cleanup

bb43:                                             ; preds = %bb38
  %_85 = sext i32 %j to i64
; invoke <alloc::vec::Vec<T,A> as core::ops::index::Index<I>>::index
  %_83 = invoke align 8 ptr @"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h84cdafc7b91ff024E"(ptr align 8 %L, i64 %_85, ptr align 8 @alloc_c45e8ff3f32919e3472dd8835d22df64)
          to label %bb44 unwind label %cleanup

bb39:                                             ; preds = %bb38
  %_78 = load i32, ptr %i, align 4
  %_77 = sext i32 %_78 to i64
; invoke <alloc::vec::Vec<T,A> as core::ops::index::IndexMut<I>>::index_mut
  %_75 = invoke align 8 ptr @"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h932854c4cb2e61e7E"(ptr align 8 %L, i64 %_77, ptr align 8 @alloc_0720980fb5807a00cb4b18c4db7885e3)
          to label %bb40 unwind label %cleanup

bb44:                                             ; preds = %bb43
  %_87 = load i32, ptr %k, align 4
  %_86 = sext i32 %_87 to i64
; invoke <alloc::vec::Vec<T,A> as core::ops::index::Index<I>>::index
  %_82 = invoke align 4 ptr @"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h99e5dd93face97d6E"(ptr align 8 %_83, i64 %_86, ptr align 8 @alloc_b2295a6757e166c9cabb68ed0c8b197a)
          to label %bb45 unwind label %cleanup

bb45:                                             ; preds = %bb44
  %_81 = load i32, ptr %_82, align 4
  %48 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %_81, i32 1)
  %_88.0 = extractvalue { i32, i1 } %48, 0
  %_88.1 = extractvalue { i32, i1 } %48, 1
  br i1 %_88.1, label %panic15, label %bb46

bb46:                                             ; preds = %bb45
  %_93 = load i32, ptr %i, align 4
  %_92 = sext i32 %_93 to i64
; invoke <alloc::vec::Vec<T,A> as core::ops::index::IndexMut<I>>::index_mut
  %_90 = invoke align 8 ptr @"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h932854c4cb2e61e7E"(ptr align 8 %L, i64 %_92, ptr align 8 @alloc_065f65d4f73f0494ec0d885e8858f9ce)
          to label %bb47 unwind label %cleanup

panic15:                                          ; preds = %bb45
; invoke core::panicking::panic_const::panic_const_add_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_59380d19bb6a47822f595ad9af1274ad) #24
          to label %unreachable unwind label %cleanup

bb47:                                             ; preds = %bb46
  %_94 = sext i32 %j to i64
; invoke <alloc::vec::Vec<T,A> as core::ops::index::IndexMut<I>>::index_mut
  %_89 = invoke align 4 ptr @"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17had46c29278ed9d3bE"(ptr align 8 %_90, i64 %_94, ptr align 8 @alloc_a4c1e5a2475b1d45d020028d996d5972)
          to label %bb48 unwind label %cleanup

bb48:                                             ; preds = %bb47
  store i32 %_88.0, ptr %_89, align 4
  %_96 = load i32, ptr %llap, align 4
  %_102 = load i32, ptr %i, align 4
  %_101 = sext i32 %_102 to i64
; invoke <alloc::vec::Vec<T,A> as core::ops::index::Index<I>>::index
  %_99 = invoke align 8 ptr @"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h84cdafc7b91ff024E"(ptr align 8 %L, i64 %_101, ptr align 8 @alloc_f45b891ab27fe71acc1b47f1255089b3)
          to label %bb49 unwind label %cleanup

bb49:                                             ; preds = %bb48
  %_103 = sext i32 %j to i64
; invoke <alloc::vec::Vec<T,A> as core::ops::index::Index<I>>::index
  %_98 = invoke align 4 ptr @"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h99e5dd93face97d6E"(ptr align 8 %_99, i64 %_103, ptr align 8 @alloc_a9a381c48fe7cf3ab2005754fe7bcda7)
          to label %bb50 unwind label %cleanup

bb50:                                             ; preds = %bb49
  %_97 = load i32, ptr %_98, align 4
  %_95 = invoke i32 @max(i32 %_96, i32 %_97)
          to label %bb51 unwind label %cleanup

bb51:                                             ; preds = %bb50
  store i32 %_95, ptr %llap, align 4
  %49 = load i32, ptr %i, align 4
  %50 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %49, i32 1)
  %_104.0 = extractvalue { i32, i1 } %50, 0
  %_104.1 = extractvalue { i32, i1 } %50, 1
  br i1 %_104.1, label %panic16, label %bb52

bb52:                                             ; preds = %bb51
  store i32 %_104.0, ptr %i, align 4
  %51 = load i32, ptr %k, align 4
  %52 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %51, i32 1)
  %_105.0 = extractvalue { i32, i1 } %52, 0
  %_105.1 = extractvalue { i32, i1 } %52, 1
  br i1 %_105.1, label %panic17, label %bb53

panic16:                                          ; preds = %bb51
; invoke core::panicking::panic_const::panic_const_sub_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_sub_overflow17h134cc1a7f93654deE(ptr align 8 @alloc_0290aa5ae13777b27128faadb7b52323) #24
          to label %unreachable unwind label %cleanup

bb53:                                             ; preds = %bb52
  store i32 %_105.0, ptr %k, align 4
  br label %bb22

panic17:                                          ; preds = %bb52
; invoke core::panicking::panic_const::panic_const_add_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_c9fec4571a6c9ec7fb09a5295d8b65e2) #24
          to label %unreachable unwind label %cleanup

bb40:                                             ; preds = %bb39
  %_79 = sext i32 %j to i64
; invoke <alloc::vec::Vec<T,A> as core::ops::index::IndexMut<I>>::index_mut
  %_74 = invoke align 4 ptr @"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17had46c29278ed9d3bE"(ptr align 8 %_75, i64 %_79, ptr align 8 @alloc_bb283316aef1fba55ea1daaeeeadf92f)
          to label %bb41 unwind label %cleanup

bb41:                                             ; preds = %bb40
  store i32 2, ptr %_74, align 4
  %53 = load i32, ptr %i, align 4
  %54 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %53, i32 1)
  %_80.0 = extractvalue { i32, i1 } %54, 0
  %_80.1 = extractvalue { i32, i1 } %54, 1
  br i1 %_80.1, label %panic18, label %bb42

bb42:                                             ; preds = %bb41
  store i32 %_80.0, ptr %i, align 4
  br label %bb22

panic18:                                          ; preds = %bb41
; invoke core::panicking::panic_const::panic_const_sub_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_sub_overflow17h134cc1a7f93654deE(ptr align 8 @alloc_2159a316e87281d11dd522dd9b8de4bc) #24
          to label %unreachable unwind label %cleanup

bb32:                                             ; preds = %bb31
  store i32 %_57.0, ptr %k, align 4
  br label %bb22

panic19:                                          ; preds = %bb31
; invoke core::panicking::panic_const::panic_const_add_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_a82b5f9a2a4b881f35cb6d00f57719e4) #24
          to label %unreachable unwind label %cleanup

bb11:                                             ; preds = %bb9
  %55 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %n, i32 1)
  %_22.0 = extractvalue { i32, i1 } %55, 0
  %_22.1 = extractvalue { i32, i1 } %55, 1
  br i1 %_22.1, label %panic21, label %bb12

bb12:                                             ; preds = %bb11
  %_20 = sext i32 %_22.0 to i64
; invoke <alloc::vec::Vec<T,A> as core::ops::index::IndexMut<I>>::index_mut
  %_17 = invoke align 4 ptr @"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17had46c29278ed9d3bE"(ptr align 8 %_18, i64 %_20, ptr align 8 @alloc_fcadf39929066068fe1c92547fe100e4)
          to label %bb13 unwind label %cleanup

panic21:                                          ; preds = %bb11
; invoke core::panicking::panic_const::panic_const_sub_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_sub_overflow17h134cc1a7f93654deE(ptr align 8 @alloc_3e0b7a8555e8edeaf9a84e84c58557ee) #24
          to label %unreachable unwind label %cleanup

bb13:                                             ; preds = %bb12
  store i32 2, ptr %_17, align 4
  br label %bb6

bb8:                                              ; No predecessors!
  unreachable

terminate:                                        ; preds = %bb60
  %56 = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer
; call core::panicking::panic_in_cleanup
  call void @_ZN4core9panicking16panic_in_cleanup17h5f6bde45d17ae243E() #20
  unreachable

bb61:                                             ; preds = %bb60
  %57 = load ptr, ptr %1, align 8
  %58 = getelementptr inbounds i8, ptr %1, i64 8
  %59 = load i32, ptr %58, align 8
  %60 = insertvalue { ptr, i32 } poison, ptr %57, 0
  %61 = insertvalue { ptr, i32 } %60, i32 %59, 1
  resume { ptr, i32 } %61
}

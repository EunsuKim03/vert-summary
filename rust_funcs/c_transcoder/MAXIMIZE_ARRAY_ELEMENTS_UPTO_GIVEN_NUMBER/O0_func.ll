define i32 @f_gold(i64 %0, i32 %n, i32 %num, i32 %max_limit) unnamed_addr #3 personality ptr @rust_eh_personality {
start:
  %1 = alloca [16 x i8], align 8
  %_148 = alloca [8 x i8], align 4
  %iter2 = alloca [8 x i8], align 4
  %_21 = alloca [8 x i8], align 4
  %iter1 = alloca [12 x i8], align 4
  %_19 = alloca [12 x i8], align 4
  %_18 = alloca [12 x i8], align 4
  %_14 = alloca [8 x i8], align 4
  %iter = alloca [8 x i8], align 4
  %_6 = alloca [24 x i8], align 8
  %dp = alloca [24 x i8], align 8
  %_0 = alloca [4 x i8], align 4
  %2 = alloca [8 x i8], align 8
  %arr = alloca [8 x i8], align 4
  store i64 %0, ptr %2, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %arr, ptr align 8 %2, i64 8, i1 false)
  %_8 = sext i32 %max_limit to i64
  %_9.0 = add i64 %_8, 1
  %_9.1 = icmp ult i64 %_9.0, %_8
  br i1 %_9.1, label %panic, label %bb1

bb1:                                              ; preds = %start
; call alloc::vec::from_elem
  call void @_ZN5alloc3vec9from_elem17h8d341c17db0d7aefE(ptr sret([24 x i8]) align 8 %_6, i32 0, i64 %_9.0)
  %_10 = sext i32 %n to i64
; call alloc::vec::from_elem
  call void @_ZN5alloc3vec9from_elem17h3b4ca03e658c5b12E(ptr sret([24 x i8]) align 8 %dp, ptr align 8 %_6, i64 %_10)
; invoke <I as core::iter::traits::collect::IntoIterator>::into_iter
  %3 = invoke { i32, i32 } @"_ZN63_$LT$I$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17hffb0d5862650de7bE"(i32 0, i32 %n)
          to label %bb4 unwind label %cleanup

panic:                                            ; preds = %start
; call core::panicking::panic_const::panic_const_add_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_03fb9082f0f870322a48f414450bd600) #23
  unreachable

bb82:                                             ; preds = %cleanup
; invoke core::ptr::drop_in_place<alloc::vec::Vec<alloc::vec::Vec<i32>>>
  invoke void @"_ZN4core3ptr70drop_in_place$LT$alloc..vec..Vec$LT$alloc..vec..Vec$LT$i32$GT$$GT$$GT$17h0c5fee1ccc81c4caE"(ptr align 8 %dp) #22
          to label %bb83 unwind label %terminate

cleanup:                                          ; preds = %bb22, %bb21, %bb25, %bb24, %panic28, %panic27, %panic26, %panic25, %bb44, %bb43, %bb42, %panic24, %panic23, %bb39, %panic22, %bb37, %panic21, %panic20, %bb34, %panic19, %bb55, %bb54, %bb53, %panic18, %panic17, %bb50, %panic16, %bb66, %bb65, %bb64, %panic15, %panic14, %bb61, %panic13, %bb69, %bb68, %panic12, %panic11, %panic10, %panic9, %panic8, %panic7, %panic6, %panic5, %bb12, %bb10, %bb8, %bb78, %bb77, %panic3, %bb73, %bb71, %bb9, %bb5, %bb1
  %4 = landingpad { ptr, i32 }
          cleanup
  %5 = extractvalue { ptr, i32 } %4, 0
  %6 = extractvalue { ptr, i32 } %4, 1
  store ptr %5, ptr %1, align 8
  %7 = getelementptr inbounds i8, ptr %1, i64 8
  store i32 %6, ptr %7, align 8
  br label %bb82

bb4:                                              ; preds = %bb1
  %_11.0 = extractvalue { i32, i32 } %3, 0
  %_11.1 = extractvalue { i32, i32 } %3, 1
  store i32 %_11.0, ptr %iter, align 4
  %8 = getelementptr inbounds i8, ptr %iter, i64 4
  store i32 %_11.1, ptr %8, align 4
  br label %bb5

bb5:                                              ; preds = %bb13, %bb4
; invoke core::iter::range::<impl core::iter::traits::iterator::Iterator for core::ops::range::Range<A>>::next
  %9 = invoke { i32, i32 } @"_ZN4core4iter5range101_$LT$impl$u20$core..iter..traits..iterator..Iterator$u20$for$u20$core..ops..range..Range$LT$A$GT$$GT$4next17hbc950eba196804e9E"(ptr align 4 %iter)
          to label %bb6 unwind label %cleanup

bb6:                                              ; preds = %bb5
  %10 = extractvalue { i32, i32 } %9, 0
  %11 = extractvalue { i32, i32 } %9, 1
  store i32 %10, ptr %_14, align 4
  %12 = getelementptr inbounds i8, ptr %_14, i64 4
  store i32 %11, ptr %12, align 4
  %13 = load i32, ptr %_14, align 4
  %14 = getelementptr inbounds i8, ptr %_14, i64 4
  %15 = load i32, ptr %14, align 4
  %_16 = zext i32 %13 to i64
  %16 = trunc nuw i64 %_16 to i1
  br i1 %16, label %bb8, label %bb9

bb8:                                              ; preds = %bb6
  %17 = getelementptr inbounds i8, ptr %_14, i64 4
  %ind = load i32, ptr %17, align 4
; invoke core::ops::range::RangeInclusive<Idx>::new
  invoke void @"_ZN4core3ops5range25RangeInclusive$LT$Idx$GT$3new17h67c2d56a7a1f3fe9E"(ptr sret([12 x i8]) align 4 %_19, i32 0, i32 %max_limit)
          to label %bb10 unwind label %cleanup

bb9:                                              ; preds = %bb6
; invoke core::iter::traits::iterator::Iterator::rev
  %18 = invoke { i32, i32 } @_ZN4core4iter6traits8iterator8Iterator3rev17hff3f3bf70c436836E(i32 0, i32 %max_limit)
          to label %bb71 unwind label %cleanup

bb71:                                             ; preds = %bb9
  %_145.0 = extractvalue { i32, i32 } %18, 0
  %_145.1 = extractvalue { i32, i32 } %18, 1
; invoke <I as core::iter::traits::collect::IntoIterator>::into_iter
  %19 = invoke { i32, i32 } @"_ZN63_$LT$I$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17h7c75ce8f81f037b9E"(i32 %_145.0, i32 %_145.1)
          to label %bb72 unwind label %cleanup

bb72:                                             ; preds = %bb71
  %_144.0 = extractvalue { i32, i32 } %19, 0
  %_144.1 = extractvalue { i32, i32 } %19, 1
  store i32 %_144.0, ptr %iter2, align 4
  %20 = getelementptr inbounds i8, ptr %iter2, i64 4
  store i32 %_144.1, ptr %20, align 4
  br label %bb73

bb73:                                             ; preds = %bb79, %bb72
; invoke <core::iter::adapters::rev::Rev<I> as core::iter::traits::iterator::Iterator>::next
  %21 = invoke { i32, i32 } @"_ZN98_$LT$core..iter..adapters..rev..Rev$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17ha55dd6e26c38892fE"(ptr align 4 %iter2)
          to label %bb74 unwind label %cleanup

bb74:                                             ; preds = %bb73
  %22 = extractvalue { i32, i32 } %21, 0
  %23 = extractvalue { i32, i32 } %21, 1
  store i32 %22, ptr %_148, align 4
  %24 = getelementptr inbounds i8, ptr %_148, i64 4
  store i32 %23, ptr %24, align 4
  %25 = load i32, ptr %_148, align 4
  %26 = getelementptr inbounds i8, ptr %_148, i64 4
  %27 = load i32, ptr %26, align 4
  %_150 = zext i32 %25 to i64
  %28 = trunc nuw i64 %_150 to i1
  br i1 %28, label %bb75, label %bb76

bb75:                                             ; preds = %bb74
  %29 = getelementptr inbounds i8, ptr %_148, i64 4
  %val = load i32, ptr %29, align 4
  %30 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %n, i32 1)
  %_159.0 = extractvalue { i32, i1 } %30, 0
  %_159.1 = extractvalue { i32, i1 } %30, 1
  br i1 %_159.1, label %panic3, label %bb77

bb76:                                             ; preds = %bb74
  store i32 -1, ptr %_0, align 4
; call core::ptr::drop_in_place<alloc::vec::Vec<alloc::vec::Vec<i32>>>
  call void @"_ZN4core3ptr70drop_in_place$LT$alloc..vec..Vec$LT$alloc..vec..Vec$LT$i32$GT$$GT$$GT$17h0c5fee1ccc81c4caE"(ptr align 8 %dp)
  br label %bb81

bb81:                                             ; preds = %bb80, %bb76
  %31 = load i32, ptr %_0, align 4
  ret i32 %31

bb77:                                             ; preds = %bb75
  %_157 = sext i32 %_159.0 to i64
; invoke <alloc::vec::Vec<T,A> as core::ops::index::Index<I>>::index
  %_155 = invoke align 8 ptr @"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h1ac51f569c3cf74aE"(ptr align 8 %dp, i64 %_157, ptr align 8 @alloc_8544bfb3c8c084936535511a119a084f)
          to label %bb78 unwind label %cleanup

panic3:                                           ; preds = %bb75
; invoke core::panicking::panic_const::panic_const_sub_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_sub_overflow17h134cc1a7f93654deE(ptr align 8 @alloc_acb5f476668a90c4c2c305811c198ab4) #24
          to label %unreachable unwind label %cleanup

unreachable:                                      ; preds = %panic28, %panic27, %panic26, %panic25, %panic24, %panic23, %panic22, %panic21, %panic20, %panic19, %panic18, %panic17, %panic16, %panic15, %panic14, %panic13, %panic12, %panic11, %panic10, %panic9, %panic8, %panic7, %panic6, %panic5, %panic3
  unreachable

bb78:                                             ; preds = %bb77
  %_160 = sext i32 %val to i64
; invoke <alloc::vec::Vec<T,A> as core::ops::index::Index<I>>::index
  %_154 = invoke align 4 ptr @"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hf5771ec2a1e098dcE"(ptr align 8 %_155, i64 %_160, ptr align 8 @alloc_386c73c30fea93eccc8a7f46f1983a1c)
          to label %bb79 unwind label %cleanup

bb79:                                             ; preds = %bb78
  %_153 = load i32, ptr %_154, align 4
  %_152 = icmp eq i32 %_153, 1
  br i1 %_152, label %bb80, label %bb73

bb80:                                             ; preds = %bb79
  store i32 %val, ptr %_0, align 4
; call core::ptr::drop_in_place<alloc::vec::Vec<alloc::vec::Vec<i32>>>
  call void @"_ZN4core3ptr70drop_in_place$LT$alloc..vec..Vec$LT$alloc..vec..Vec$LT$i32$GT$$GT$$GT$17h0c5fee1ccc81c4caE"(ptr align 8 %dp)
  br label %bb81

bb10:                                             ; preds = %bb8
; invoke <I as core::iter::traits::collect::IntoIterator>::into_iter
  invoke void @"_ZN63_$LT$I$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17h66cf55f82ce884ecE"(ptr sret([12 x i8]) align 4 %_18, ptr align 4 %_19)
          to label %bb11 unwind label %cleanup

bb11:                                             ; preds = %bb10
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %iter1, ptr align 4 %_18, i64 12, i1 false)
  br label %bb12

bb12:                                             ; preds = %bb23, %bb26, %bb45, %bb56, %bb67, %bb70, %bb11
; invoke core::iter::range::<impl core::iter::traits::iterator::Iterator for core::ops::range::RangeInclusive<A>>::next
  %32 = invoke { i32, i32 } @"_ZN4core4iter5range110_$LT$impl$u20$core..iter..traits..iterator..Iterator$u20$for$u20$core..ops..range..RangeInclusive$LT$A$GT$$GT$4next17hc57574bc33cf199cE"(ptr align 4 %iter1)
          to label %bb13 unwind label %cleanup

bb13:                                             ; preds = %bb12
  %33 = extractvalue { i32, i32 } %32, 0
  %34 = extractvalue { i32, i32 } %32, 1
  store i32 %33, ptr %_21, align 4
  %35 = getelementptr inbounds i8, ptr %_21, i64 4
  store i32 %34, ptr %35, align 4
  %36 = load i32, ptr %_21, align 4
  %37 = getelementptr inbounds i8, ptr %_21, i64 4
  %38 = load i32, ptr %37, align 4
  %_23 = zext i32 %36 to i64
  %39 = trunc nuw i64 %_23 to i1
  br i1 %39, label %bb14, label %bb5

bb14:                                             ; preds = %bb13
  %40 = getelementptr inbounds i8, ptr %_21, i64 4
  %val4 = load i32, ptr %40, align 4
  %_25 = icmp eq i32 %ind, 0
  br i1 %_25, label %bb15, label %bb27

bb27:                                             ; preds = %bb14
  %_51 = sext i32 %ind to i64
  %_52 = icmp ult i64 %_51, 2
  br i1 %_52, label %bb28, label %panic5

bb15:                                             ; preds = %bb14
  %_29 = sext i32 %ind to i64
  %_30 = icmp ult i64 %_29, 2
  br i1 %_30, label %bb16, label %panic25

bb28:                                             ; preds = %bb27
  %41 = getelementptr inbounds nuw i32, ptr %arr, i64 %_51
  %_50 = load i32, ptr %41, align 4
  %42 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %val4, i32 %_50)
  %_53.0 = extractvalue { i32, i1 } %42, 0
  %_53.1 = extractvalue { i32, i1 } %42, 1
  br i1 %_53.1, label %panic6, label %bb29

panic5:                                           ; preds = %bb27
; invoke core::panicking::panic_bounds_check
  invoke void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 %_51, i64 2, ptr align 8 @alloc_a7aad532e8fc9d6b67afb0ef51807c9d) #24
          to label %unreachable unwind label %cleanup

bb29:                                             ; preds = %bb28
  %_48 = icmp sge i32 %_53.0, 0
  br i1 %_48, label %bb30, label %bb46

panic6:                                           ; preds = %bb28
; invoke core::panicking::panic_const::panic_const_sub_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_sub_overflow17h134cc1a7f93654deE(ptr align 8 @alloc_29999ecc975007c8c2627bc531d277c0) #24
          to label %unreachable unwind label %cleanup

bb46:                                             ; preds = %bb32, %bb29
  %_94 = sext i32 %ind to i64
  %_95 = icmp ult i64 %_94, 2
  br i1 %_95, label %bb47, label %panic9

bb30:                                             ; preds = %bb29
  %_57 = sext i32 %ind to i64
  %_58 = icmp ult i64 %_57, 2
  br i1 %_58, label %bb31, label %panic7

bb31:                                             ; preds = %bb30
  %43 = getelementptr inbounds nuw i32, ptr %arr, i64 %_57
  %_56 = load i32, ptr %43, align 4
  %44 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %val4, i32 %_56)
  %_59.0 = extractvalue { i32, i1 } %44, 0
  %_59.1 = extractvalue { i32, i1 } %44, 1
  br i1 %_59.1, label %panic8, label %bb32

panic7:                                           ; preds = %bb30
; invoke core::panicking::panic_bounds_check
  invoke void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 %_57, i64 2, ptr align 8 @alloc_f721cbdf74e6095b32234ddf37cb86c6) #24
          to label %unreachable unwind label %cleanup

bb32:                                             ; preds = %bb31
  %_54 = icmp sle i32 %_59.0, %max_limit
  br i1 %_54, label %bb33, label %bb46

panic8:                                           ; preds = %bb31
; invoke core::panicking::panic_const::panic_const_add_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_2680cbcfc0f292830681098fcb21ca92) #24
          to label %unreachable unwind label %cleanup

bb33:                                             ; preds = %bb32
  %45 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %ind, i32 1)
  %_66.0 = extractvalue { i32, i1 } %45, 0
  %_66.1 = extractvalue { i32, i1 } %45, 1
  br i1 %_66.1, label %panic19, label %bb34

bb47:                                             ; preds = %bb46
  %46 = getelementptr inbounds nuw i32, ptr %arr, i64 %_94
  %_93 = load i32, ptr %46, align 4
  %47 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %val4, i32 %_93)
  %_96.0 = extractvalue { i32, i1 } %47, 0
  %_96.1 = extractvalue { i32, i1 } %47, 1
  br i1 %_96.1, label %panic10, label %bb48

panic9:                                           ; preds = %bb46
; invoke core::panicking::panic_bounds_check
  invoke void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 %_94, i64 2, ptr align 8 @alloc_ba145aa285ba43758ecf4dcf676cf22d) #24
          to label %unreachable unwind label %cleanup

bb48:                                             ; preds = %bb47
  %_91 = icmp sge i32 %_96.0, 0
  br i1 %_91, label %bb49, label %bb57

panic10:                                          ; preds = %bb47
; invoke core::panicking::panic_const::panic_const_sub_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_sub_overflow17h134cc1a7f93654deE(ptr align 8 @alloc_92dac491381aa84ca4e9d024706e51f8) #24
          to label %unreachable unwind label %cleanup

bb57:                                             ; preds = %bb48
  %_118 = sext i32 %ind to i64
  %_119 = icmp ult i64 %_118, 2
  br i1 %_119, label %bb58, label %panic11

bb49:                                             ; preds = %bb48
  %48 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %ind, i32 1)
  %_103.0 = extractvalue { i32, i1 } %48, 0
  %_103.1 = extractvalue { i32, i1 } %48, 1
  br i1 %_103.1, label %panic16, label %bb50

bb58:                                             ; preds = %bb57
  %49 = getelementptr inbounds nuw i32, ptr %arr, i64 %_118
  %_117 = load i32, ptr %49, align 4
  %50 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %val4, i32 %_117)
  %_120.0 = extractvalue { i32, i1 } %50, 0
  %_120.1 = extractvalue { i32, i1 } %50, 1
  br i1 %_120.1, label %panic12, label %bb59

panic11:                                          ; preds = %bb57
; invoke core::panicking::panic_bounds_check
  invoke void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 %_118, i64 2, ptr align 8 @alloc_84232433d278cb3253f7f087da05ad41) #24
          to label %unreachable unwind label %cleanup

bb59:                                             ; preds = %bb58
  %_115 = icmp sle i32 %_120.0, %max_limit
  br i1 %_115, label %bb60, label %bb68

panic12:                                          ; preds = %bb58
; invoke core::panicking::panic_const::panic_const_add_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_cef4d38039d7f0d160c6efbcac32c22c) #24
          to label %unreachable unwind label %cleanup

bb68:                                             ; preds = %bb59
  %_142 = sext i32 %ind to i64
; invoke <alloc::vec::Vec<T,A> as core::ops::index::IndexMut<I>>::index_mut
  %_140 = invoke align 8 ptr @"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17hc077d274b1de844eE"(ptr align 8 %dp, i64 %_142, ptr align 8 @alloc_ca4318a3aae233dcc8d8939970596e79)
          to label %bb69 unwind label %cleanup

bb60:                                             ; preds = %bb59
  %51 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %ind, i32 1)
  %_127.0 = extractvalue { i32, i1 } %51, 0
  %_127.1 = extractvalue { i32, i1 } %51, 1
  br i1 %_127.1, label %panic13, label %bb61

bb69:                                             ; preds = %bb68
  %_143 = sext i32 %val4 to i64
; invoke <alloc::vec::Vec<T,A> as core::ops::index::IndexMut<I>>::index_mut
  %_139 = invoke align 4 ptr @"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h8fe5861ae435cd1aE"(ptr align 8 %_140, i64 %_143, ptr align 8 @alloc_18f2ded290a7e240f3c77ae1a1d18cec)
          to label %bb70 unwind label %cleanup

bb70:                                             ; preds = %bb69
  store i32 0, ptr %_139, align 4
  br label %bb12

bb61:                                             ; preds = %bb60
  %_125 = sext i32 %_127.0 to i64
; invoke <alloc::vec::Vec<T,A> as core::ops::index::Index<I>>::index
  %_123 = invoke align 8 ptr @"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h1ac51f569c3cf74aE"(ptr align 8 %dp, i64 %_125, ptr align 8 @alloc_e4a2a57ae5b5158db5410ca2b0fc4911)
          to label %bb62 unwind label %cleanup

panic13:                                          ; preds = %bb60
; invoke core::panicking::panic_const::panic_const_sub_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_sub_overflow17h134cc1a7f93654deE(ptr align 8 @alloc_10ccfce905bc453e15e844bb0ce1b70f) #24
          to label %unreachable unwind label %cleanup

bb62:                                             ; preds = %bb61
  %_131 = sext i32 %ind to i64
  %_132 = icmp ult i64 %_131, 2
  br i1 %_132, label %bb63, label %panic14

bb63:                                             ; preds = %bb62
  %52 = getelementptr inbounds nuw i32, ptr %arr, i64 %_131
  %_130 = load i32, ptr %52, align 4
  %53 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %val4, i32 %_130)
  %_133.0 = extractvalue { i32, i1 } %53, 0
  %_133.1 = extractvalue { i32, i1 } %53, 1
  br i1 %_133.1, label %panic15, label %bb64

panic14:                                          ; preds = %bb62
; invoke core::panicking::panic_bounds_check
  invoke void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 %_131, i64 2, ptr align 8 @alloc_64ac780f8fef5ed470cee80968bc03de) #24
          to label %unreachable unwind label %cleanup

bb64:                                             ; preds = %bb63
  %_128 = sext i32 %_133.0 to i64
; invoke <alloc::vec::Vec<T,A> as core::ops::index::Index<I>>::index
  %_122 = invoke align 4 ptr @"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hf5771ec2a1e098dcE"(ptr align 8 %_123, i64 %_128, ptr align 8 @alloc_fdc805f4c88fcdefc7ed1e1fae0f0010)
          to label %bb65 unwind label %cleanup

panic15:                                          ; preds = %bb63
; invoke core::panicking::panic_const::panic_const_add_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_fef7115fa4f0929e2202daad3c6ca7fa) #24
          to label %unreachable unwind label %cleanup

bb65:                                             ; preds = %bb64
  %_121 = load i32, ptr %_122, align 4
  %_137 = sext i32 %ind to i64
; invoke <alloc::vec::Vec<T,A> as core::ops::index::IndexMut<I>>::index_mut
  %_135 = invoke align 8 ptr @"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17hc077d274b1de844eE"(ptr align 8 %dp, i64 %_137, ptr align 8 @alloc_4de28d89546c5858476c1330acb6fefc)
          to label %bb66 unwind label %cleanup

bb66:                                             ; preds = %bb65
  %_138 = sext i32 %val4 to i64
; invoke <alloc::vec::Vec<T,A> as core::ops::index::IndexMut<I>>::index_mut
  %_134 = invoke align 4 ptr @"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h8fe5861ae435cd1aE"(ptr align 8 %_135, i64 %_138, ptr align 8 @alloc_f72ab7cdd9f702b12365cbb604335f87)
          to label %bb67 unwind label %cleanup

bb67:                                             ; preds = %bb66
  store i32 %_121, ptr %_134, align 4
  br label %bb12

bb50:                                             ; preds = %bb49
  %_101 = sext i32 %_103.0 to i64
; invoke <alloc::vec::Vec<T,A> as core::ops::index::Index<I>>::index
  %_99 = invoke align 8 ptr @"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h1ac51f569c3cf74aE"(ptr align 8 %dp, i64 %_101, ptr align 8 @alloc_0fcf2a4e7696da801f5d16213760d557)
          to label %bb51 unwind label %cleanup

panic16:                                          ; preds = %bb49
; invoke core::panicking::panic_const::panic_const_sub_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_sub_overflow17h134cc1a7f93654deE(ptr align 8 @alloc_7547ec3af7d00f02a0b20dbbac9d30be) #24
          to label %unreachable unwind label %cleanup

bb51:                                             ; preds = %bb50
  %_107 = sext i32 %ind to i64
  %_108 = icmp ult i64 %_107, 2
  br i1 %_108, label %bb52, label %panic17

bb52:                                             ; preds = %bb51
  %54 = getelementptr inbounds nuw i32, ptr %arr, i64 %_107
  %_106 = load i32, ptr %54, align 4
  %55 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %val4, i32 %_106)
  %_109.0 = extractvalue { i32, i1 } %55, 0
  %_109.1 = extractvalue { i32, i1 } %55, 1
  br i1 %_109.1, label %panic18, label %bb53

panic17:                                          ; preds = %bb51
; invoke core::panicking::panic_bounds_check
  invoke void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 %_107, i64 2, ptr align 8 @alloc_0b4eac837ef0d9a98a76be82cf9b5c22) #24
          to label %unreachable unwind label %cleanup

bb53:                                             ; preds = %bb52
  %_104 = sext i32 %_109.0 to i64
; invoke <alloc::vec::Vec<T,A> as core::ops::index::Index<I>>::index
  %_98 = invoke align 4 ptr @"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hf5771ec2a1e098dcE"(ptr align 8 %_99, i64 %_104, ptr align 8 @alloc_643c308694e490f30a227da0e0797d5b)
          to label %bb54 unwind label %cleanup

panic18:                                          ; preds = %bb52
; invoke core::panicking::panic_const::panic_const_sub_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_sub_overflow17h134cc1a7f93654deE(ptr align 8 @alloc_28ef4cdc36eebe03d34ba97ffeee8de2) #24
          to label %unreachable unwind label %cleanup

bb54:                                             ; preds = %bb53
  %_97 = load i32, ptr %_98, align 4
  %_113 = sext i32 %ind to i64
; invoke <alloc::vec::Vec<T,A> as core::ops::index::IndexMut<I>>::index_mut
  %_111 = invoke align 8 ptr @"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17hc077d274b1de844eE"(ptr align 8 %dp, i64 %_113, ptr align 8 @alloc_3ab3dc165b20ab8d6bf6358a2b823572)
          to label %bb55 unwind label %cleanup

bb55:                                             ; preds = %bb54
  %_114 = sext i32 %val4 to i64
; invoke <alloc::vec::Vec<T,A> as core::ops::index::IndexMut<I>>::index_mut
  %_110 = invoke align 4 ptr @"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h8fe5861ae435cd1aE"(ptr align 8 %_111, i64 %_114, ptr align 8 @alloc_b60d3fcbcf65782f6a0aed7bf14f322c)
          to label %bb56 unwind label %cleanup

bb56:                                             ; preds = %bb55
  store i32 %_97, ptr %_110, align 4
  br label %bb12

bb34:                                             ; preds = %bb33
  %_64 = sext i32 %_66.0 to i64
; invoke <alloc::vec::Vec<T,A> as core::ops::index::Index<I>>::index
  %_62 = invoke align 8 ptr @"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h1ac51f569c3cf74aE"(ptr align 8 %dp, i64 %_64, ptr align 8 @alloc_31acd7ca53f70ac5b43620ed7982f35c)
          to label %bb35 unwind label %cleanup

panic19:                                          ; preds = %bb33
; invoke core::panicking::panic_const::panic_const_sub_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_sub_overflow17h134cc1a7f93654deE(ptr align 8 @alloc_3538f62034b748820ae646a3abb7a0eb) #24
          to label %unreachable unwind label %cleanup

bb35:                                             ; preds = %bb34
  %_70 = sext i32 %ind to i64
  %_71 = icmp ult i64 %_70, 2
  br i1 %_71, label %bb36, label %panic20

bb36:                                             ; preds = %bb35
  %56 = getelementptr inbounds nuw i32, ptr %arr, i64 %_70
  %_69 = load i32, ptr %56, align 4
  %57 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %val4, i32 %_69)
  %_72.0 = extractvalue { i32, i1 } %57, 0
  %_72.1 = extractvalue { i32, i1 } %57, 1
  br i1 %_72.1, label %panic21, label %bb37

panic20:                                          ; preds = %bb35
; invoke core::panicking::panic_bounds_check
  invoke void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 %_70, i64 2, ptr align 8 @alloc_7aa21fb0be2e49735733c7d242073574) #24
          to label %unreachable unwind label %cleanup

bb37:                                             ; preds = %bb36
  %_67 = sext i32 %_72.0 to i64
; invoke <alloc::vec::Vec<T,A> as core::ops::index::Index<I>>::index
  %_61 = invoke align 4 ptr @"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hf5771ec2a1e098dcE"(ptr align 8 %_62, i64 %_67, ptr align 8 @alloc_bede37b29741f9bb5b0006ede25fa67b)
          to label %bb38 unwind label %cleanup

panic21:                                          ; preds = %bb36
; invoke core::panicking::panic_const::panic_const_sub_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_sub_overflow17h134cc1a7f93654deE(ptr align 8 @alloc_d1edecf9fa95c42225376a4de79d1b09) #24
          to label %unreachable unwind label %cleanup

bb38:                                             ; preds = %bb37
  %_60 = load i32, ptr %_61, align 4
  %58 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %ind, i32 1)
  %_79.0 = extractvalue { i32, i1 } %58, 0
  %_79.1 = extractvalue { i32, i1 } %58, 1
  br i1 %_79.1, label %panic22, label %bb39

bb39:                                             ; preds = %bb38
  %_77 = sext i32 %_79.0 to i64
; invoke <alloc::vec::Vec<T,A> as core::ops::index::Index<I>>::index
  %_75 = invoke align 8 ptr @"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h1ac51f569c3cf74aE"(ptr align 8 %dp, i64 %_77, ptr align 8 @alloc_68d7d43e4089404c9a80f6b7e6cea21c)
          to label %bb40 unwind label %cleanup

panic22:                                          ; preds = %bb38
; invoke core::panicking::panic_const::panic_const_sub_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_sub_overflow17h134cc1a7f93654deE(ptr align 8 @alloc_85950b9cca9cf7eba6e027287cc35a71) #24
          to label %unreachable unwind label %cleanup

bb40:                                             ; preds = %bb39
  %_83 = sext i32 %ind to i64
  %_84 = icmp ult i64 %_83, 2
  br i1 %_84, label %bb41, label %panic23

bb41:                                             ; preds = %bb40
  %59 = getelementptr inbounds nuw i32, ptr %arr, i64 %_83
  %_82 = load i32, ptr %59, align 4
  %60 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %val4, i32 %_82)
  %_85.0 = extractvalue { i32, i1 } %60, 0
  %_85.1 = extractvalue { i32, i1 } %60, 1
  br i1 %_85.1, label %panic24, label %bb42

panic23:                                          ; preds = %bb40
; invoke core::panicking::panic_bounds_check
  invoke void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 %_83, i64 2, ptr align 8 @alloc_8c0d911160b4aad28f46464adc0bc1b9) #24
          to label %unreachable unwind label %cleanup

bb42:                                             ; preds = %bb41
  %_80 = sext i32 %_85.0 to i64
; invoke <alloc::vec::Vec<T,A> as core::ops::index::Index<I>>::index
  %_74 = invoke align 4 ptr @"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hf5771ec2a1e098dcE"(ptr align 8 %_75, i64 %_80, ptr align 8 @alloc_6a6f11b586cba725f4a3d3108358ec0a)
          to label %bb43 unwind label %cleanup

panic24:                                          ; preds = %bb41
; invoke core::panicking::panic_const::panic_const_add_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_c138e6d444d84a9be10857576ede1d3a) #24
          to label %unreachable unwind label %cleanup

bb43:                                             ; preds = %bb42
  %_73 = load i32, ptr %_74, align 4
  %_89 = sext i32 %ind to i64
; invoke <alloc::vec::Vec<T,A> as core::ops::index::IndexMut<I>>::index_mut
  %_87 = invoke align 8 ptr @"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17hc077d274b1de844eE"(ptr align 8 %dp, i64 %_89, ptr align 8 @alloc_0c5d266dc036bd0c491cef68ce06f8da)
          to label %bb44 unwind label %cleanup

bb44:                                             ; preds = %bb43
  %_90 = sext i32 %val4 to i64
; invoke <alloc::vec::Vec<T,A> as core::ops::index::IndexMut<I>>::index_mut
  %_86 = invoke align 4 ptr @"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h8fe5861ae435cd1aE"(ptr align 8 %_87, i64 %_90, ptr align 8 @alloc_ebd88c669f3567c18b09b5b480517974)
          to label %bb45 unwind label %cleanup

bb45:                                             ; preds = %bb44
  %61 = or i32 %_60, %_73
  store i32 %61, ptr %_86, align 4
  br label %bb12

bb16:                                             ; preds = %bb15
  %62 = getelementptr inbounds nuw i32, ptr %arr, i64 %_29
  %_28 = load i32, ptr %62, align 4
  %63 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %num, i32 %_28)
  %_31.0 = extractvalue { i32, i1 } %63, 0
  %_31.1 = extractvalue { i32, i1 } %63, 1
  br i1 %_31.1, label %panic26, label %bb17

panic25:                                          ; preds = %bb15
; invoke core::panicking::panic_bounds_check
  invoke void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 %_29, i64 2, ptr align 8 @alloc_2c67935ba779c35ac19cc6e3a4a90724) #24
          to label %unreachable unwind label %cleanup

bb17:                                             ; preds = %bb16
  %_26 = icmp eq i32 %_31.0, %val4
  br i1 %_26, label %bb21, label %bb18

panic26:                                          ; preds = %bb16
; invoke core::panicking::panic_const::panic_const_sub_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_sub_overflow17h134cc1a7f93654deE(ptr align 8 @alloc_35f6b61417248e9e3ebd3ab3bfcbacc0) #24
          to label %unreachable unwind label %cleanup

bb18:                                             ; preds = %bb17
  %_35 = sext i32 %ind to i64
  %_36 = icmp ult i64 %_35, 2
  br i1 %_36, label %bb19, label %panic27

bb21:                                             ; preds = %bb20, %bb17
  %_41 = sext i32 %ind to i64
; invoke <alloc::vec::Vec<T,A> as core::ops::index::IndexMut<I>>::index_mut
  %_39 = invoke align 8 ptr @"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17hc077d274b1de844eE"(ptr align 8 %dp, i64 %_41, ptr align 8 @alloc_a19b72dfc79b3aa2e3715f5d662eaeb2)
          to label %bb22 unwind label %cleanup

bb19:                                             ; preds = %bb18
  %64 = getelementptr inbounds nuw i32, ptr %arr, i64 %_35
  %_34 = load i32, ptr %64, align 4
  %65 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %num, i32 %_34)
  %_37.0 = extractvalue { i32, i1 } %65, 0
  %_37.1 = extractvalue { i32, i1 } %65, 1
  br i1 %_37.1, label %panic28, label %bb20

panic27:                                          ; preds = %bb18
; invoke core::panicking::panic_bounds_check
  invoke void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 %_35, i64 2, ptr align 8 @alloc_0e633e2a8e082fbdd2c1614ca6a2098f) #24
          to label %unreachable unwind label %cleanup

bb20:                                             ; preds = %bb19
  %_32 = icmp eq i32 %_37.0, %val4
  br i1 %_32, label %bb21, label %bb24

panic28:                                          ; preds = %bb19
; invoke core::panicking::panic_const::panic_const_add_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_4e4d7411f6416d982a5658da62c25071) #24
          to label %unreachable unwind label %cleanup

bb24:                                             ; preds = %bb20
  %_46 = sext i32 %ind to i64
; invoke <alloc::vec::Vec<T,A> as core::ops::index::IndexMut<I>>::index_mut
  %_44 = invoke align 8 ptr @"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17hc077d274b1de844eE"(ptr align 8 %dp, i64 %_46, ptr align 8 @alloc_391f698352d90130dbb8a820f06115a9)
          to label %bb25 unwind label %cleanup

bb25:                                             ; preds = %bb24
  %_47 = sext i32 %val4 to i64
; invoke <alloc::vec::Vec<T,A> as core::ops::index::IndexMut<I>>::index_mut
  %_43 = invoke align 4 ptr @"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h8fe5861ae435cd1aE"(ptr align 8 %_44, i64 %_47, ptr align 8 @alloc_ef4fe3a8e20ba1cfc7592862c489d9a3)
          to label %bb26 unwind label %cleanup

bb26:                                             ; preds = %bb25
  store i32 0, ptr %_43, align 4
  br label %bb12

bb22:                                             ; preds = %bb21
  %_42 = sext i32 %val4 to i64
; invoke <alloc::vec::Vec<T,A> as core::ops::index::IndexMut<I>>::index_mut
  %_38 = invoke align 4 ptr @"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h8fe5861ae435cd1aE"(ptr align 8 %_39, i64 %_42, ptr align 8 @alloc_bdfb6b239066b77ed70793146b5c2059)
          to label %bb23 unwind label %cleanup

bb23:                                             ; preds = %bb22
  store i32 1, ptr %_38, align 4
  br label %bb12

bb7:                                              ; No predecessors!
  unreachable

terminate:                                        ; preds = %bb82
  %66 = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer
; call core::panicking::panic_in_cleanup
  call void @_ZN4core9panicking16panic_in_cleanup17h5f6bde45d17ae243E() #21
  unreachable

bb83:                                             ; preds = %bb82
  %67 = load ptr, ptr %1, align 8
  %68 = getelementptr inbounds i8, ptr %1, i64 8
  %69 = load i32, ptr %68, align 8
  %70 = insertvalue { ptr, i32 } poison, ptr %67, 0
  %71 = insertvalue { ptr, i32 } %70, i32 %69, 1
  resume { ptr, i32 } %71
}

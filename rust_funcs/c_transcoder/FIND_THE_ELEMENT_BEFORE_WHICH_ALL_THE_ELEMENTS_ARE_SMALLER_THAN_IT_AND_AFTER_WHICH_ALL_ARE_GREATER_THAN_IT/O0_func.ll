define i32 @f_gold(i64 %0, i32 %n) unnamed_addr #3 personality ptr @rust_eh_personality {
start:
  %1 = alloca [16 x i8], align 8
  %_34 = alloca [16 x i8], align 8
  %iter1 = alloca [16 x i8], align 8
  %right_min = alloca [4 x i8], align 4
  %_11 = alloca [16 x i8], align 8
  %iter = alloca [16 x i8], align 8
  %left_max = alloca [24 x i8], align 8
  %_0 = alloca [4 x i8], align 4
  %2 = alloca [8 x i8], align 8
  %arr = alloca [8 x i8], align 4
  store i64 %0, ptr %2, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %arr, ptr align 8 %2, i64 8, i1 false)
  %_4 = sext i32 %n to i64
; call alloc::vec::from_elem
  call void @_ZN5alloc3vec9from_elem17h0a5ba0f4e24f9940E(ptr sret([24 x i8]) align 8 %left_max, float 0x7FF0000000000000, i64 %_4)
; invoke <alloc::vec::Vec<T,A> as core::ops::index::IndexMut<I>>::index_mut
  %_5 = invoke align 4 ptr @"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17hc2a2b58525890b65E"(ptr align 8 %left_max, i64 0, ptr align 8 @alloc_be1e2a62c724524594da0e416e75e3c6)
          to label %bb2 unwind label %cleanup

bb30:                                             ; preds = %cleanup
; invoke core::ptr::drop_in_place<alloc::vec::Vec<f32>>
  invoke void @"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$f32$GT$$GT$17hb62385e7d3cf2062E"(ptr align 8 %left_max) #22
          to label %bb31 unwind label %terminate

cleanup:                                          ; preds = %bb13, %bb12, %panic7, %panic6, %bb9, %panic5, %bb27, %panic3, %panic2, %panic, %bb19, %bb17, %bb15, %bb8, %bb4, %bb2, %start
  %3 = landingpad { ptr, i32 }
          cleanup
  %4 = extractvalue { ptr, i32 } %3, 0
  %5 = extractvalue { ptr, i32 } %3, 1
  store ptr %4, ptr %1, align 8
  %6 = getelementptr inbounds i8, ptr %1, i64 8
  store i32 %5, ptr %6, align 8
  br label %bb30

bb2:                                              ; preds = %start
  store float 0x7FF0000000000000, ptr %_5, align 4
  %_9 = sext i32 %n to i64
; invoke <I as core::iter::traits::collect::IntoIterator>::into_iter
  %7 = invoke { i64, i64 } @"_ZN63_$LT$I$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17h5482b16856308417E"(i64 1, i64 %_9)
          to label %bb3 unwind label %cleanup

bb3:                                              ; preds = %bb2
  %_7.0 = extractvalue { i64, i64 } %7, 0
  %_7.1 = extractvalue { i64, i64 } %7, 1
  store i64 %_7.0, ptr %iter, align 8
  %8 = getelementptr inbounds i8, ptr %iter, i64 8
  store i64 %_7.1, ptr %8, align 8
  br label %bb4

bb4:                                              ; preds = %bb14, %bb3
; invoke core::iter::range::<impl core::iter::traits::iterator::Iterator for core::ops::range::Range<A>>::next
  %9 = invoke { i64, i64 } @"_ZN4core4iter5range101_$LT$impl$u20$core..iter..traits..iterator..Iterator$u20$for$u20$core..ops..range..Range$LT$A$GT$$GT$4next17h8d00bd8e8111c084E"(ptr align 8 %iter)
          to label %bb5 unwind label %cleanup

bb5:                                              ; preds = %bb4
  %10 = extractvalue { i64, i64 } %9, 0
  %11 = extractvalue { i64, i64 } %9, 1
  store i64 %10, ptr %_11, align 8
  %12 = getelementptr inbounds i8, ptr %_11, i64 8
  store i64 %11, ptr %12, align 8
  %_13 = load i64, ptr %_11, align 8
  %13 = getelementptr inbounds i8, ptr %_11, i64 8
  %14 = load i64, ptr %13, align 8
  %15 = trunc nuw i64 %_13 to i1
  br i1 %15, label %bb7, label %bb8

bb7:                                              ; preds = %bb5
  %16 = getelementptr inbounds i8, ptr %_11, i64 8
  %i4 = load i64, ptr %16, align 8
  %_20.0 = sub i64 %i4, 1
  %_20.1 = icmp ult i64 %i4, 1
  br i1 %_20.1, label %panic5, label %bb9

bb8:                                              ; preds = %bb5
  store float 0x7FF0000000000000, ptr %right_min, align 4
  %_32 = sext i32 %n to i64
; invoke core::iter::traits::iterator::Iterator::rev
  %17 = invoke { i64, i64 } @_ZN4core4iter6traits8iterator8Iterator3rev17he0360069f6f1ad9aE(i64 0, i64 %_32)
          to label %bb15 unwind label %cleanup

bb15:                                             ; preds = %bb8
  %_30.0 = extractvalue { i64, i64 } %17, 0
  %_30.1 = extractvalue { i64, i64 } %17, 1
; invoke <I as core::iter::traits::collect::IntoIterator>::into_iter
  %18 = invoke { i64, i64 } @"_ZN63_$LT$I$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17h91cec5a723cd80f0E"(i64 %_30.0, i64 %_30.1)
          to label %bb16 unwind label %cleanup

bb16:                                             ; preds = %bb15
  %_29.0 = extractvalue { i64, i64 } %18, 0
  %_29.1 = extractvalue { i64, i64 } %18, 1
  store i64 %_29.0, ptr %iter1, align 8
  %19 = getelementptr inbounds i8, ptr %iter1, i64 8
  store i64 %_29.1, ptr %19, align 8
  br label %bb17

bb17:                                             ; preds = %bb28, %bb16
; invoke <core::iter::adapters::rev::Rev<I> as core::iter::traits::iterator::Iterator>::next
  %20 = invoke { i64, i64 } @"_ZN98_$LT$core..iter..adapters..rev..Rev$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h5c703b7012776532E"(ptr align 8 %iter1)
          to label %bb18 unwind label %cleanup

bb18:                                             ; preds = %bb17
  %21 = extractvalue { i64, i64 } %20, 0
  %22 = extractvalue { i64, i64 } %20, 1
  store i64 %21, ptr %_34, align 8
  %23 = getelementptr inbounds i8, ptr %_34, i64 8
  store i64 %22, ptr %23, align 8
  %_36 = load i64, ptr %_34, align 8
  %24 = getelementptr inbounds i8, ptr %_34, i64 8
  %25 = load i64, ptr %24, align 8
  %26 = trunc nuw i64 %_36 to i1
  br i1 %26, label %bb19, label %bb20

bb19:                                             ; preds = %bb18
  %27 = getelementptr inbounds i8, ptr %_34, i64 8
  %i = load i64, ptr %27, align 8
; invoke <alloc::vec::Vec<T,A> as core::ops::index::Index<I>>::index
  %_40 = invoke align 4 ptr @"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h6ac5c113644e00edE"(ptr align 8 %left_max, i64 %i, ptr align 8 @alloc_70bcb1840b51fbc65b708664eddbb2fb)
          to label %bb21 unwind label %cleanup

bb20:                                             ; preds = %bb18
  store i32 -1, ptr %_0, align 4
; call core::ptr::drop_in_place<alloc::vec::Vec<f32>>
  call void @"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$f32$GT$$GT$17hb62385e7d3cf2062E"(ptr align 8 %left_max)
  br label %bb29

bb29:                                             ; preds = %bb25, %bb20
  %28 = load i32, ptr %_0, align 4
  ret i32 %28

bb21:                                             ; preds = %bb19
  %_39 = load float, ptr %_40, align 4
  %_44 = icmp ult i64 %i, 2
  br i1 %_44, label %bb22, label %panic

bb22:                                             ; preds = %bb21
  %29 = getelementptr inbounds nuw i32, ptr %arr, i64 %i
  %_43 = load i32, ptr %29, align 4
  %_42 = sitofp i32 %_43 to float
  %_38 = fcmp olt float %_39, %_42
  br i1 %_38, label %bb23, label %bb26

panic:                                            ; preds = %bb21
; invoke core::panicking::panic_bounds_check
  invoke void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 %i, i64 2, ptr align 8 @alloc_364c74a4dfd1ffb8fd695b07409dc25a) #24
          to label %unreachable unwind label %cleanup

unreachable:                                      ; preds = %panic7, %panic6, %panic5, %panic3, %panic2, %panic
  unreachable

bb26:                                             ; preds = %bb24, %bb22
  %_51 = load float, ptr %right_min, align 4
  %_54 = icmp ult i64 %i, 2
  br i1 %_54, label %bb27, label %panic3

bb23:                                             ; preds = %bb22
  %_46 = load float, ptr %right_min, align 4
  %_49 = icmp ult i64 %i, 2
  br i1 %_49, label %bb24, label %panic2

bb24:                                             ; preds = %bb23
  %30 = getelementptr inbounds nuw i32, ptr %arr, i64 %i
  %_48 = load i32, ptr %30, align 4
  %_47 = sitofp i32 %_48 to float
  %_45 = fcmp ogt float %_46, %_47
  br i1 %_45, label %bb25, label %bb26

panic2:                                           ; preds = %bb23
; invoke core::panicking::panic_bounds_check
  invoke void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 %i, i64 2, ptr align 8 @alloc_f46735644f80fb52bab1957d7d60c69b) #24
          to label %unreachable unwind label %cleanup

bb25:                                             ; preds = %bb24
  %31 = trunc i64 %i to i32
  store i32 %31, ptr %_0, align 4
; call core::ptr::drop_in_place<alloc::vec::Vec<f32>>
  call void @"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$f32$GT$$GT$17hb62385e7d3cf2062E"(ptr align 8 %left_max)
  br label %bb29

bb27:                                             ; preds = %bb26
  %32 = getelementptr inbounds nuw i32, ptr %arr, i64 %i
  %_53 = load i32, ptr %32, align 4
  %_52 = sitofp i32 %_53 to float
; invoke core::f32::<impl f32>::min
  %_50 = invoke float @"_ZN4core3f3221_$LT$impl$u20$f32$GT$3min17h86d1d9d55593a51aE"(float %_51, float %_52)
          to label %bb28 unwind label %cleanup

panic3:                                           ; preds = %bb26
; invoke core::panicking::panic_bounds_check
  invoke void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 %i, i64 2, ptr align 8 @alloc_c1691043529fcaafb0bf26fde5fb5857) #24
          to label %unreachable unwind label %cleanup

bb28:                                             ; preds = %bb27
  store float %_50, ptr %right_min, align 4
  br label %bb17

bb9:                                              ; preds = %bb7
; invoke <alloc::vec::Vec<T,A> as core::ops::index::Index<I>>::index
  %_17 = invoke align 4 ptr @"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h6ac5c113644e00edE"(ptr align 8 %left_max, i64 %_20.0, ptr align 8 @alloc_41df549983361f78ff3e0173138d3135)
          to label %bb10 unwind label %cleanup

panic5:                                           ; preds = %bb7
; invoke core::panicking::panic_const::panic_const_sub_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_sub_overflow17h134cc1a7f93654deE(ptr align 8 @alloc_512a8e7bfe9f3e0c25cbeeba62889d4f) #24
          to label %unreachable unwind label %cleanup

bb10:                                             ; preds = %bb9
  %_16 = load float, ptr %_17, align 4
  %_24.0 = sub i64 %i4, 1
  %_24.1 = icmp ult i64 %i4, 1
  br i1 %_24.1, label %panic6, label %bb11

bb11:                                             ; preds = %bb10
  %_25 = icmp ult i64 %_24.0, 2
  br i1 %_25, label %bb12, label %panic7

panic6:                                           ; preds = %bb10
; invoke core::panicking::panic_const::panic_const_sub_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_sub_overflow17h134cc1a7f93654deE(ptr align 8 @alloc_d438f454eb6926c2226ae85b98414ebc) #24
          to label %unreachable unwind label %cleanup

bb12:                                             ; preds = %bb11
  %33 = getelementptr inbounds nuw i32, ptr %arr, i64 %_24.0
  %_22 = load i32, ptr %33, align 4
  %_21 = sitofp i32 %_22 to float
; invoke core::f32::<impl f32>::max
  %_15 = invoke float @"_ZN4core3f3221_$LT$impl$u20$f32$GT$3max17heca8dad6e305e4b8E"(float %_16, float %_21)
          to label %bb13 unwind label %cleanup

panic7:                                           ; preds = %bb11
; invoke core::panicking::panic_bounds_check
  invoke void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 %_24.0, i64 2, ptr align 8 @alloc_f73299564b4bdfa3d285c01b50503340) #24
          to label %unreachable unwind label %cleanup

bb13:                                             ; preds = %bb12
; invoke <alloc::vec::Vec<T,A> as core::ops::index::IndexMut<I>>::index_mut
  %_26 = invoke align 4 ptr @"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17hc2a2b58525890b65E"(ptr align 8 %left_max, i64 %i4, ptr align 8 @alloc_250bbfe5e1db6f88b51fe398d0ef8611)
          to label %bb14 unwind label %cleanup

bb14:                                             ; preds = %bb13
  store float %_15, ptr %_26, align 4
  br label %bb4

bb6:                                              ; No predecessors!
  unreachable

terminate:                                        ; preds = %bb30
  %34 = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer
; call core::panicking::panic_in_cleanup
  call void @_ZN4core9panicking16panic_in_cleanup17h5f6bde45d17ae243E() #20
  unreachable

bb31:                                             ; preds = %bb30
  %35 = load ptr, ptr %1, align 8
  %36 = getelementptr inbounds i8, ptr %1, i64 8
  %37 = load i32, ptr %36, align 8
  %38 = insertvalue { ptr, i32 } poison, ptr %35, 0
  %39 = insertvalue { ptr, i32 } %38, i32 %37, 1
  resume { ptr, i32 } %39
}

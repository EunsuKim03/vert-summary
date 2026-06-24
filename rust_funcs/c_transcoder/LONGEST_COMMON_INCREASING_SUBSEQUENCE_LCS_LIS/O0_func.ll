define i32 @f_gold(ptr align 4 %arr1, ptr align 4 %arr2) unnamed_addr #3 personality ptr @rust_eh_personality {
start:
  %0 = alloca [16 x i8], align 8
  %_60 = alloca [16 x i8], align 8
  %iter2 = alloca [16 x i8], align 8
  %result = alloca [4 x i8], align 4
  %_21 = alloca [16 x i8], align 8
  %iter1 = alloca [16 x i8], align 8
  %current = alloca [4 x i8], align 4
  %_11 = alloca [16 x i8], align 8
  %iter = alloca [16 x i8], align 8
  %table = alloca [24 x i8], align 8
; call alloc::vec::from_elem
  call void @_ZN5alloc3vec9from_elem17ha6659eb76b2047a2E(ptr sret([24 x i8]) align 8 %table, i32 0, i64 2)
; invoke <I as core::iter::traits::collect::IntoIterator>::into_iter
  %1 = invoke { i64, i64 } @"_ZN63_$LT$I$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17h78d0228088fd0b59E"(i64 0, i64 2)
          to label %bb2 unwind label %cleanup

bb35:                                             ; preds = %cleanup
; invoke core::ptr::drop_in_place<alloc::vec::Vec<i32>>
  invoke void @"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17h133522a0d230829eE"(ptr align 8 %table) #22
          to label %bb36 unwind label %terminate

cleanup:                                          ; preds = %bb25, %bb23, %panic8, %panic7, %bb18, %panic6, %bb15, %panic5, %panic4, %panic, %bb9, %bb6, %bb32, %bb30, %bb28, %bb7, %bb3, %start
  %2 = landingpad { ptr, i32 }
          cleanup
  %3 = extractvalue { ptr, i32 } %2, 0
  %4 = extractvalue { ptr, i32 } %2, 1
  store ptr %3, ptr %0, align 8
  %5 = getelementptr inbounds i8, ptr %0, i64 8
  store i32 %4, ptr %5, align 8
  br label %bb35

bb2:                                              ; preds = %start
  %_6.0 = extractvalue { i64, i64 } %1, 0
  %_6.1 = extractvalue { i64, i64 } %1, 1
  store i64 %_6.0, ptr %iter, align 8
  %6 = getelementptr inbounds i8, ptr %iter, i64 8
  store i64 %_6.1, ptr %6, align 8
  br label %bb3

bb3:                                              ; preds = %bb10, %bb2
; invoke core::iter::range::<impl core::iter::traits::iterator::Iterator for core::ops::range::Range<A>>::next
  %7 = invoke { i64, i64 } @"_ZN4core4iter5range101_$LT$impl$u20$core..iter..traits..iterator..Iterator$u20$for$u20$core..ops..range..Range$LT$A$GT$$GT$4next17h2f2296d77f235afdE"(ptr align 8 %iter)
          to label %bb4 unwind label %cleanup

bb4:                                              ; preds = %bb3
  %8 = extractvalue { i64, i64 } %7, 0
  %9 = extractvalue { i64, i64 } %7, 1
  store i64 %8, ptr %_11, align 8
  %10 = getelementptr inbounds i8, ptr %_11, i64 8
  store i64 %9, ptr %10, align 8
  %_13 = load i64, ptr %_11, align 8
  %11 = getelementptr inbounds i8, ptr %_11, i64 8
  %12 = load i64, ptr %11, align 8
  %13 = trunc nuw i64 %_13 to i1
  br i1 %13, label %bb6, label %bb7

bb6:                                              ; preds = %bb4
  %14 = getelementptr inbounds i8, ptr %_11, i64 8
  %i3 = load i64, ptr %14, align 8
  store i32 0, ptr %current, align 4
; invoke <I as core::iter::traits::collect::IntoIterator>::into_iter
  %15 = invoke { i64, i64 } @"_ZN63_$LT$I$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17h78d0228088fd0b59E"(i64 0, i64 2)
          to label %bb8 unwind label %cleanup

bb7:                                              ; preds = %bb4
  store i32 0, ptr %result, align 4
; invoke <I as core::iter::traits::collect::IntoIterator>::into_iter
  %16 = invoke { i64, i64 } @"_ZN63_$LT$I$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17h78d0228088fd0b59E"(i64 0, i64 2)
          to label %bb27 unwind label %cleanup

bb27:                                             ; preds = %bb7
  %_55.0 = extractvalue { i64, i64 } %16, 0
  %_55.1 = extractvalue { i64, i64 } %16, 1
  store i64 %_55.0, ptr %iter2, align 8
  %17 = getelementptr inbounds i8, ptr %iter2, i64 8
  store i64 %_55.1, ptr %17, align 8
  br label %bb28

bb28:                                             ; preds = %bb33, %bb27
; invoke core::iter::range::<impl core::iter::traits::iterator::Iterator for core::ops::range::Range<A>>::next
  %18 = invoke { i64, i64 } @"_ZN4core4iter5range101_$LT$impl$u20$core..iter..traits..iterator..Iterator$u20$for$u20$core..ops..range..Range$LT$A$GT$$GT$4next17h2f2296d77f235afdE"(ptr align 8 %iter2)
          to label %bb29 unwind label %cleanup

bb29:                                             ; preds = %bb28
  %19 = extractvalue { i64, i64 } %18, 0
  %20 = extractvalue { i64, i64 } %18, 1
  store i64 %19, ptr %_60, align 8
  %21 = getelementptr inbounds i8, ptr %_60, i64 8
  store i64 %20, ptr %21, align 8
  %_62 = load i64, ptr %_60, align 8
  %22 = getelementptr inbounds i8, ptr %_60, i64 8
  %23 = load i64, ptr %22, align 8
  %24 = trunc nuw i64 %_62 to i1
  br i1 %24, label %bb30, label %bb31

bb30:                                             ; preds = %bb29
  %25 = getelementptr inbounds i8, ptr %_60, i64 8
  %i = load i64, ptr %25, align 8
  %_65 = load i32, ptr %result, align 4
; invoke <alloc::vec::Vec<T,A> as core::ops::index::Index<I>>::index
  %_67 = invoke align 4 ptr @"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h42ec2181f988ebddE"(ptr align 8 %table, i64 %i, ptr align 8 @alloc_260c29e5d0117fecd12d562e952c9273)
          to label %bb32 unwind label %cleanup

bb31:                                             ; preds = %bb29
  %_0 = load i32, ptr %result, align 4
; call core::ptr::drop_in_place<alloc::vec::Vec<i32>>
  call void @"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17h133522a0d230829eE"(ptr align 8 %table)
  ret i32 %_0

bb32:                                             ; preds = %bb30
  %_66 = load i32, ptr %_67, align 4
; invoke core::cmp::max
  %_64 = invoke i32 @_ZN4core3cmp3max17h28b37c201b8df5c8E(i32 %_65, i32 %_66)
          to label %bb33 unwind label %cleanup

bb33:                                             ; preds = %bb32
  store i32 %_64, ptr %result, align 4
  br label %bb28

bb8:                                              ; preds = %bb6
  %_16.0 = extractvalue { i64, i64 } %15, 0
  %_16.1 = extractvalue { i64, i64 } %15, 1
  store i64 %_16.0, ptr %iter1, align 8
  %26 = getelementptr inbounds i8, ptr %iter1, i64 8
  store i64 %_16.1, ptr %26, align 8
  br label %bb9

bb9:                                              ; preds = %bb26, %bb24, %bb22, %bb8
; invoke core::iter::range::<impl core::iter::traits::iterator::Iterator for core::ops::range::Range<A>>::next
  %27 = invoke { i64, i64 } @"_ZN4core4iter5range101_$LT$impl$u20$core..iter..traits..iterator..Iterator$u20$for$u20$core..ops..range..Range$LT$A$GT$$GT$4next17h2f2296d77f235afdE"(ptr align 8 %iter1)
          to label %bb10 unwind label %cleanup

bb10:                                             ; preds = %bb9
  %28 = extractvalue { i64, i64 } %27, 0
  %29 = extractvalue { i64, i64 } %27, 1
  store i64 %28, ptr %_21, align 8
  %30 = getelementptr inbounds i8, ptr %_21, i64 8
  store i64 %29, ptr %30, align 8
  %_23 = load i64, ptr %_21, align 8
  %31 = getelementptr inbounds i8, ptr %_21, i64 8
  %32 = load i64, ptr %31, align 8
  %33 = trunc nuw i64 %_23 to i1
  br i1 %33, label %bb11, label %bb3

bb11:                                             ; preds = %bb10
  %34 = getelementptr inbounds i8, ptr %_21, i64 8
  %j = load i64, ptr %34, align 8
  %_27 = icmp ult i64 %i3, 2
  br i1 %_27, label %bb12, label %panic

bb12:                                             ; preds = %bb11
  %35 = getelementptr inbounds nuw float, ptr %arr1, i64 %i3
  %_26 = load float, ptr %35, align 4
  %_29 = icmp ult i64 %j, 2
  br i1 %_29, label %bb13, label %panic4

panic:                                            ; preds = %bb11
; invoke core::panicking::panic_bounds_check
  invoke void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 %i3, i64 2, ptr align 8 @alloc_a295ebb5ec6b2aae12716fde93812e85) #24
          to label %unreachable unwind label %cleanup

unreachable:                                      ; preds = %panic8, %panic7, %panic6, %panic5, %panic4, %panic
  unreachable

bb13:                                             ; preds = %bb12
  %36 = getelementptr inbounds nuw float, ptr %arr2, i64 %j
  %_28 = load float, ptr %36, align 4
  %_25 = fcmp oeq float %_26, %_28
  br i1 %_25, label %bb14, label %bb20

panic4:                                           ; preds = %bb12
; invoke core::panicking::panic_bounds_check
  invoke void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 %j, i64 2, ptr align 8 @alloc_cec2ebe41cbf5438641bbdb12ed0fa1e) #24
          to label %unreachable unwind label %cleanup

bb20:                                             ; preds = %bb19, %bb16, %bb13
  %_43 = icmp ult i64 %i3, 2
  br i1 %_43, label %bb21, label %panic7

bb14:                                             ; preds = %bb13
  %_32 = load i32, ptr %current, align 4
  %37 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %_32, i32 1)
  %_33.0 = extractvalue { i32, i1 } %37, 0
  %_33.1 = extractvalue { i32, i1 } %37, 1
  br i1 %_33.1, label %panic5, label %bb15

bb15:                                             ; preds = %bb14
; invoke <alloc::vec::Vec<T,A> as core::ops::index::Index<I>>::index
  %_35 = invoke align 4 ptr @"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h42ec2181f988ebddE"(ptr align 8 %table, i64 %j, ptr align 8 @alloc_e9a266468a399403d436f76c4c32e609)
          to label %bb16 unwind label %cleanup

panic5:                                           ; preds = %bb14
; invoke core::panicking::panic_const::panic_const_add_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_13829bc28d52172688ac5b3fd2ce6193) #24
          to label %unreachable unwind label %cleanup

bb16:                                             ; preds = %bb15
  %_34 = load i32, ptr %_35, align 4
  %_30 = icmp sgt i32 %_33.0, %_34
  br i1 %_30, label %bb17, label %bb20

bb17:                                             ; preds = %bb16
  %_37 = load i32, ptr %current, align 4
  %38 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %_37, i32 1)
  %_38.0 = extractvalue { i32, i1 } %38, 0
  %_38.1 = extractvalue { i32, i1 } %38, 1
  br i1 %_38.1, label %panic6, label %bb18

bb18:                                             ; preds = %bb17
; invoke <alloc::vec::Vec<T,A> as core::ops::index::IndexMut<I>>::index_mut
  %_39 = invoke align 4 ptr @"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h1ebd680f94a05e60E"(ptr align 8 %table, i64 %j, ptr align 8 @alloc_d1d090b1c505b818f46e58259ed14549)
          to label %bb19 unwind label %cleanup

panic6:                                           ; preds = %bb17
; invoke core::panicking::panic_const::panic_const_add_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_b88e9b13742b23e9a89493ab4ae624f0) #24
          to label %unreachable unwind label %cleanup

bb19:                                             ; preds = %bb18
  store i32 %_38.0, ptr %_39, align 4
  br label %bb20

bb21:                                             ; preds = %bb20
  %39 = getelementptr inbounds nuw float, ptr %arr1, i64 %i3
  %_42 = load float, ptr %39, align 4
  %_45 = icmp ult i64 %j, 2
  br i1 %_45, label %bb22, label %panic8

panic7:                                           ; preds = %bb20
; invoke core::panicking::panic_bounds_check
  invoke void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 %i3, i64 2, ptr align 8 @alloc_ba8a124842a6e736c49bfc1cdf71a6ef) #24
          to label %unreachable unwind label %cleanup

bb22:                                             ; preds = %bb21
  %40 = getelementptr inbounds nuw float, ptr %arr2, i64 %j
  %_44 = load float, ptr %40, align 4
  %_41 = fcmp ogt float %_42, %_44
  br i1 %_41, label %bb23, label %bb9

panic8:                                           ; preds = %bb21
; invoke core::panicking::panic_bounds_check
  invoke void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 %j, i64 2, ptr align 8 @alloc_7522f42119dd7af8ea1aadfc4221280c) #24
          to label %unreachable unwind label %cleanup

bb23:                                             ; preds = %bb22
; invoke <alloc::vec::Vec<T,A> as core::ops::index::Index<I>>::index
  %_48 = invoke align 4 ptr @"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h42ec2181f988ebddE"(ptr align 8 %table, i64 %j, ptr align 8 @alloc_f341562087d8e178f84756702259ac71)
          to label %bb24 unwind label %cleanup

bb24:                                             ; preds = %bb23
  %_47 = load i32, ptr %_48, align 4
  %_50 = load i32, ptr %current, align 4
  %_46 = icmp sgt i32 %_47, %_50
  br i1 %_46, label %bb25, label %bb9

bb25:                                             ; preds = %bb24
; invoke <alloc::vec::Vec<T,A> as core::ops::index::Index<I>>::index
  %_52 = invoke align 4 ptr @"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h42ec2181f988ebddE"(ptr align 8 %table, i64 %j, ptr align 8 @alloc_aba4c6df1099a829fa3404a0716d2a2c)
          to label %bb26 unwind label %cleanup

bb26:                                             ; preds = %bb25
  %_51 = load i32, ptr %_52, align 4
  store i32 %_51, ptr %current, align 4
  br label %bb9

bb5:                                              ; No predecessors!
  unreachable

terminate:                                        ; preds = %bb35
  %41 = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer
; call core::panicking::panic_in_cleanup
  call void @_ZN4core9panicking16panic_in_cleanup17h5f6bde45d17ae243E() #20
  unreachable

bb36:                                             ; preds = %bb35
  %42 = load ptr, ptr %0, align 8
  %43 = getelementptr inbounds i8, ptr %0, i64 8
  %44 = load i32, ptr %43, align 8
  %45 = insertvalue { ptr, i32 } poison, ptr %42, 0
  %46 = insertvalue { ptr, i32 } %45, i32 %44, 1
  resume { ptr, i32 } %46
}

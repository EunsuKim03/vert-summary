define i32 @f_gold(i64 %0, i32 %n) unnamed_addr #3 personality ptr @rust_eh_personality {
start:
  %1 = alloca [16 x i8], align 8
  %_52 = alloca [16 x i8], align 8
  %iter2 = alloca [16 x i8], align 8
  %_17 = alloca [16 x i8], align 8
  %iter1 = alloca [16 x i8], align 8
  %_10 = alloca [16 x i8], align 8
  %iter = alloca [16 x i8], align 8
  %lt = alloca [24 x i8], align 8
  %max_len = alloca [4 x i8], align 4
  %2 = alloca [8 x i8], align 8
  %arr = alloca [8 x i8], align 4
  store i64 %0, ptr %2, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %arr, ptr align 8 %2, i64 8, i1 false)
  store i32 0, ptr %max_len, align 4
  %_5 = sext i32 %n to i64
; call alloc::vec::from_elem
  call void @_ZN5alloc3vec9from_elem17h75d6cdbf4758f365E(ptr sret([24 x i8]) align 8 %lt, i32 1, i64 %_5)
  %_8 = sext i32 %n to i64
; invoke <I as core::iter::traits::collect::IntoIterator>::into_iter
  %3 = invoke { i64, i64 } @"_ZN63_$LT$I$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17ha7cd63f9cde09e38E"(i64 1, i64 %_8)
          to label %bb2 unwind label %cleanup

bb34:                                             ; preds = %cleanup
; invoke core::ptr::drop_in_place<alloc::vec::Vec<i32>>
  invoke void @"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17h30022ffef08173ccE"(ptr align 8 %lt) #22
          to label %bb35 unwind label %terminate

cleanup:                                          ; preds = %bb23, %panic8, %bb21, %panic7, %bb18, %bb17, %panic6, %panic5, %panic4, %panic, %bb9, %bb6, %bb31, %bb28, %bb26, %bb7, %bb3, %start
  %4 = landingpad { ptr, i32 }
          cleanup
  %5 = extractvalue { ptr, i32 } %4, 0
  %6 = extractvalue { ptr, i32 } %4, 1
  store ptr %5, ptr %1, align 8
  %7 = getelementptr inbounds i8, ptr %1, i64 8
  store i32 %6, ptr %7, align 8
  br label %bb34

bb2:                                              ; preds = %start
  %_6.0 = extractvalue { i64, i64 } %3, 0
  %_6.1 = extractvalue { i64, i64 } %3, 1
  store i64 %_6.0, ptr %iter, align 8
  %8 = getelementptr inbounds i8, ptr %iter, i64 8
  store i64 %_6.1, ptr %8, align 8
  br label %bb3

bb3:                                              ; preds = %bb10, %bb2
; invoke core::iter::range::<impl core::iter::traits::iterator::Iterator for core::ops::range::Range<A>>::next
  %9 = invoke { i64, i64 } @"_ZN4core4iter5range101_$LT$impl$u20$core..iter..traits..iterator..Iterator$u20$for$u20$core..ops..range..Range$LT$A$GT$$GT$4next17h16f459f799760b66E"(ptr align 8 %iter)
          to label %bb4 unwind label %cleanup

bb4:                                              ; preds = %bb3
  %10 = extractvalue { i64, i64 } %9, 0
  %11 = extractvalue { i64, i64 } %9, 1
  store i64 %10, ptr %_10, align 8
  %12 = getelementptr inbounds i8, ptr %_10, i64 8
  store i64 %11, ptr %12, align 8
  %_12 = load i64, ptr %_10, align 8
  %13 = getelementptr inbounds i8, ptr %_10, i64 8
  %14 = load i64, ptr %13, align 8
  %15 = trunc nuw i64 %_12 to i1
  br i1 %15, label %bb6, label %bb7

bb6:                                              ; preds = %bb4
  %16 = getelementptr inbounds i8, ptr %_10, i64 8
  %i3 = load i64, ptr %16, align 8
; invoke <I as core::iter::traits::collect::IntoIterator>::into_iter
  %17 = invoke { i64, i64 } @"_ZN63_$LT$I$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17ha7cd63f9cde09e38E"(i64 0, i64 %i3)
          to label %bb8 unwind label %cleanup

bb7:                                              ; preds = %bb4
  %_50 = sext i32 %n to i64
; invoke <I as core::iter::traits::collect::IntoIterator>::into_iter
  %18 = invoke { i64, i64 } @"_ZN63_$LT$I$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17ha7cd63f9cde09e38E"(i64 0, i64 %_50)
          to label %bb25 unwind label %cleanup

bb25:                                             ; preds = %bb7
  %_48.0 = extractvalue { i64, i64 } %18, 0
  %_48.1 = extractvalue { i64, i64 } %18, 1
  store i64 %_48.0, ptr %iter2, align 8
  %19 = getelementptr inbounds i8, ptr %iter2, i64 8
  store i64 %_48.1, ptr %19, align 8
  br label %bb26

bb26:                                             ; preds = %bb32, %bb30, %bb25
; invoke core::iter::range::<impl core::iter::traits::iterator::Iterator for core::ops::range::Range<A>>::next
  %20 = invoke { i64, i64 } @"_ZN4core4iter5range101_$LT$impl$u20$core..iter..traits..iterator..Iterator$u20$for$u20$core..ops..range..Range$LT$A$GT$$GT$4next17h16f459f799760b66E"(ptr align 8 %iter2)
          to label %bb27 unwind label %cleanup

bb27:                                             ; preds = %bb26
  %21 = extractvalue { i64, i64 } %20, 0
  %22 = extractvalue { i64, i64 } %20, 1
  store i64 %21, ptr %_52, align 8
  %23 = getelementptr inbounds i8, ptr %_52, i64 8
  store i64 %22, ptr %23, align 8
  %_54 = load i64, ptr %_52, align 8
  %24 = getelementptr inbounds i8, ptr %_52, i64 8
  %25 = load i64, ptr %24, align 8
  %26 = trunc nuw i64 %_54 to i1
  br i1 %26, label %bb28, label %bb29

bb28:                                             ; preds = %bb27
  %27 = getelementptr inbounds i8, ptr %_52, i64 8
  %i = load i64, ptr %27, align 8
  %_57 = load i32, ptr %max_len, align 4
; invoke <alloc::vec::Vec<T,A> as core::ops::index::Index<I>>::index
  %_59 = invoke align 4 ptr @"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hb569ad831088c71fE"(ptr align 8 %lt, i64 %i, ptr align 8 @alloc_fba2231dfd0dc522d7f72e0649a12fdd)
          to label %bb30 unwind label %cleanup

bb29:                                             ; preds = %bb27
  %_0 = load i32, ptr %max_len, align 4
; call core::ptr::drop_in_place<alloc::vec::Vec<i32>>
  call void @"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17h30022ffef08173ccE"(ptr align 8 %lt)
  ret i32 %_0

bb30:                                             ; preds = %bb28
  %_58 = load i32, ptr %_59, align 4
  %_56 = icmp slt i32 %_57, %_58
  br i1 %_56, label %bb31, label %bb26

bb31:                                             ; preds = %bb30
; invoke <alloc::vec::Vec<T,A> as core::ops::index::Index<I>>::index
  %_62 = invoke align 4 ptr @"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hb569ad831088c71fE"(ptr align 8 %lt, i64 %i, ptr align 8 @alloc_7bfbcddac4e5110dfc337fb113ce01df)
          to label %bb32 unwind label %cleanup

bb32:                                             ; preds = %bb31
  %_61 = load i32, ptr %_62, align 4
  store i32 %_61, ptr %max_len, align 4
  br label %bb26

bb8:                                              ; preds = %bb6
  %_14.0 = extractvalue { i64, i64 } %17, 0
  %_14.1 = extractvalue { i64, i64 } %17, 1
  store i64 %_14.0, ptr %iter1, align 8
  %28 = getelementptr inbounds i8, ptr %iter1, i64 8
  store i64 %_14.1, ptr %28, align 8
  br label %bb9

bb9:                                              ; preds = %bb24, %bb20, %bb16, %bb13, %bb8
; invoke core::iter::range::<impl core::iter::traits::iterator::Iterator for core::ops::range::Range<A>>::next
  %29 = invoke { i64, i64 } @"_ZN4core4iter5range101_$LT$impl$u20$core..iter..traits..iterator..Iterator$u20$for$u20$core..ops..range..Range$LT$A$GT$$GT$4next17h16f459f799760b66E"(ptr align 8 %iter1)
          to label %bb10 unwind label %cleanup

bb10:                                             ; preds = %bb9
  %30 = extractvalue { i64, i64 } %29, 0
  %31 = extractvalue { i64, i64 } %29, 1
  store i64 %30, ptr %_17, align 8
  %32 = getelementptr inbounds i8, ptr %_17, i64 8
  store i64 %31, ptr %32, align 8
  %_19 = load i64, ptr %_17, align 8
  %33 = getelementptr inbounds i8, ptr %_17, i64 8
  %34 = load i64, ptr %33, align 8
  %35 = trunc nuw i64 %_19 to i1
  br i1 %35, label %bb11, label %bb3

bb11:                                             ; preds = %bb10
  %36 = getelementptr inbounds i8, ptr %_17, i64 8
  %j = load i64, ptr %36, align 8
  %_23 = icmp ult i64 %i3, 2
  br i1 %_23, label %bb12, label %panic

bb12:                                             ; preds = %bb11
  %37 = getelementptr inbounds nuw float, ptr %arr, i64 %i3
  %_22 = load float, ptr %37, align 4
  %_25 = icmp ult i64 %j, 2
  br i1 %_25, label %bb13, label %panic4

panic:                                            ; preds = %bb11
; invoke core::panicking::panic_bounds_check
  invoke void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 %i3, i64 2, ptr align 8 @alloc_c6aeff43c0c2d682ac0408d77489e1b3) #24
          to label %unreachable unwind label %cleanup

unreachable:                                      ; preds = %panic8, %panic7, %panic6, %panic5, %panic4, %panic
  unreachable

bb13:                                             ; preds = %bb12
  %38 = getelementptr inbounds nuw float, ptr %arr, i64 %j
  %_24 = load float, ptr %38, align 4
  %_21 = fcmp ogt float %_22, %_24
  br i1 %_21, label %bb14, label %bb9

panic4:                                           ; preds = %bb12
; invoke core::panicking::panic_bounds_check
  invoke void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 %j, i64 2, ptr align 8 @alloc_be257dc19be5610a12a08362989dbf08) #24
          to label %unreachable unwind label %cleanup

bb14:                                             ; preds = %bb13
  %_30 = icmp ult i64 %i3, 2
  br i1 %_30, label %bb15, label %panic5

bb15:                                             ; preds = %bb14
  %39 = getelementptr inbounds nuw float, ptr %arr, i64 %i3
  %_29 = load float, ptr %39, align 4
  %_32 = icmp ult i64 %j, 2
  br i1 %_32, label %bb16, label %panic6

panic5:                                           ; preds = %bb14
; invoke core::panicking::panic_bounds_check
  invoke void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 %i3, i64 2, ptr align 8 @alloc_12275240b0ef4af99727364b6d460a03) #24
          to label %unreachable unwind label %cleanup

bb16:                                             ; preds = %bb15
  %40 = getelementptr inbounds nuw float, ptr %arr, i64 %j
  %_31 = load float, ptr %40, align 4
  %_28 = fadd float %_29, %_31
  %_27 = frem float %_28, 2.000000e+00
  %_26 = fcmp une float %_27, 0.000000e+00
  br i1 %_26, label %bb17, label %bb9

panic6:                                           ; preds = %bb15
; invoke core::panicking::panic_bounds_check
  invoke void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 %j, i64 2, ptr align 8 @alloc_1572d55cff4157845a43b67e66ccc0af) #24
          to label %unreachable unwind label %cleanup

bb17:                                             ; preds = %bb16
; invoke <alloc::vec::Vec<T,A> as core::ops::index::Index<I>>::index
  %_35 = invoke align 4 ptr @"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hb569ad831088c71fE"(ptr align 8 %lt, i64 %i3, ptr align 8 @alloc_135e7c0eecac955dcc614e9018fce069)
          to label %bb18 unwind label %cleanup

bb18:                                             ; preds = %bb17
  %_34 = load i32, ptr %_35, align 4
; invoke <alloc::vec::Vec<T,A> as core::ops::index::Index<I>>::index
  %_39 = invoke align 4 ptr @"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hb569ad831088c71fE"(ptr align 8 %lt, i64 %j, ptr align 8 @alloc_a586779ce66bd907303965bb71b224cd)
          to label %bb19 unwind label %cleanup

bb19:                                             ; preds = %bb18
  %_38 = load i32, ptr %_39, align 4
  %41 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %_38, i32 1)
  %_41.0 = extractvalue { i32, i1 } %41, 0
  %_41.1 = extractvalue { i32, i1 } %41, 1
  br i1 %_41.1, label %panic7, label %bb20

bb20:                                             ; preds = %bb19
  %_33 = icmp slt i32 %_34, %_41.0
  br i1 %_33, label %bb21, label %bb9

panic7:                                           ; preds = %bb19
; invoke core::panicking::panic_const::panic_const_add_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_38208d9f3fdeaef2feae76602c69c5cd) #24
          to label %unreachable unwind label %cleanup

bb21:                                             ; preds = %bb20
; invoke <alloc::vec::Vec<T,A> as core::ops::index::Index<I>>::index
  %_43 = invoke align 4 ptr @"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hb569ad831088c71fE"(ptr align 8 %lt, i64 %j, ptr align 8 @alloc_866a452faaf44b1f8c3e731ea7faa7d1)
          to label %bb22 unwind label %cleanup

bb22:                                             ; preds = %bb21
  %_42 = load i32, ptr %_43, align 4
  %42 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %_42, i32 1)
  %_45.0 = extractvalue { i32, i1 } %42, 0
  %_45.1 = extractvalue { i32, i1 } %42, 1
  br i1 %_45.1, label %panic8, label %bb23

bb23:                                             ; preds = %bb22
; invoke <alloc::vec::Vec<T,A> as core::ops::index::IndexMut<I>>::index_mut
  %_46 = invoke align 4 ptr @"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h4c5801fa147c10f2E"(ptr align 8 %lt, i64 %i3, ptr align 8 @alloc_9eb1db901ef856f72062612ffb0200eb)
          to label %bb24 unwind label %cleanup

panic8:                                           ; preds = %bb22
; invoke core::panicking::panic_const::panic_const_add_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_c54de611c913507fa96321625463ec2a) #24
          to label %unreachable unwind label %cleanup

bb24:                                             ; preds = %bb23
  store i32 %_45.0, ptr %_46, align 4
  br label %bb9

bb5:                                              ; No predecessors!
  unreachable

terminate:                                        ; preds = %bb34
  %43 = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer
; call core::panicking::panic_in_cleanup
  call void @_ZN4core9panicking16panic_in_cleanup17h5f6bde45d17ae243E() #20
  unreachable

bb35:                                             ; preds = %bb34
  %44 = load ptr, ptr %1, align 8
  %45 = getelementptr inbounds i8, ptr %1, i64 8
  %46 = load i32, ptr %45, align 8
  %47 = insertvalue { ptr, i32 } poison, ptr %44, 0
  %48 = insertvalue { ptr, i32 } %47, i32 %46, 1
  resume { ptr, i32 } %48
}

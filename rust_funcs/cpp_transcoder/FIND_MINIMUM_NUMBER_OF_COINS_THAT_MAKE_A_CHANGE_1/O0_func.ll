define i32 @f_gold(i64 %0, i32 %m, i32 %V) unnamed_addr #3 personality ptr @rust_eh_personality {
start:
  %1 = alloca [16 x i8], align 8
  %_28 = alloca [8 x i8], align 4
  %iter2 = alloca [8 x i8], align 4
  %_21 = alloca [8 x i8], align 4
  %iter1 = alloca [12 x i8], align 4
  %_19 = alloca [12 x i8], align 4
  %_18 = alloca [12 x i8], align 4
  %_11 = alloca [8 x i8], align 4
  %iter = alloca [12 x i8], align 4
  %_9 = alloca [12 x i8], align 4
  %_8 = alloca [12 x i8], align 4
  %table = alloca [24 x i8], align 8
  %2 = alloca [8 x i8], align 8
  %coins = alloca [8 x i8], align 4
  store i64 %0, ptr %2, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %coins, ptr align 8 %2, i64 8, i1 false)
  %_6 = sext i32 %V to i64
  %_7.0 = add i64 %_6, 1
  %_7.1 = icmp ult i64 %_7.0, %_6
  br i1 %_7.1, label %panic, label %bb1

bb1:                                              ; preds = %start
; call alloc::vec::from_elem
  call void @_ZN5alloc3vec9from_elem17h2f735ff09d10efcdE(ptr sret([24 x i8]) align 8 %table, i32 0, i64 %_7.0)
; invoke core::ops::range::RangeInclusive<Idx>::new
  invoke void @"_ZN4core3ops5range25RangeInclusive$LT$Idx$GT$3new17haa371892e72100daE"(ptr sret([12 x i8]) align 4 %_9, i32 1, i32 %V)
          to label %bb3 unwind label %cleanup

panic:                                            ; preds = %start
; call core::panicking::panic_const::panic_const_add_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_5730599ad7ad893c96207acdec5ef890) #23
  unreachable

bb34:                                             ; preds = %cleanup
; invoke core::ptr::drop_in_place<alloc::vec::Vec<i32>>
  invoke void @"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17h12ec525ad2a5c06fE"(ptr align 8 %table) #22
          to label %bb35 unwind label %terminate

cleanup:                                          ; preds = %bb8, %bb30, %panic7, %bb27, %panic6, %bb24, %panic5, %panic4, %panic3, %bb18, %bb15, %bb16, %bb13, %bb11, %bb9, %bb5, %bb3, %bb1
  %3 = landingpad { ptr, i32 }
          cleanup
  %4 = extractvalue { ptr, i32 } %3, 0
  %5 = extractvalue { ptr, i32 } %3, 1
  store ptr %4, ptr %1, align 8
  %6 = getelementptr inbounds i8, ptr %1, i64 8
  store i32 %5, ptr %6, align 8
  br label %bb34

bb3:                                              ; preds = %bb1
; invoke <I as core::iter::traits::collect::IntoIterator>::into_iter
  invoke void @"_ZN63_$LT$I$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17h5a9618a120f2b886E"(ptr sret([12 x i8]) align 4 %_8, ptr align 4 %_9)
          to label %bb4 unwind label %cleanup

bb4:                                              ; preds = %bb3
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %iter, ptr align 4 %_8, i64 12, i1 false)
  br label %bb5

bb5:                                              ; preds = %bb10, %bb4
; invoke core::iter::range::<impl core::iter::traits::iterator::Iterator for core::ops::range::RangeInclusive<A>>::next
  %7 = invoke { i32, i32 } @"_ZN4core4iter5range110_$LT$impl$u20$core..iter..traits..iterator..Iterator$u20$for$u20$core..ops..range..RangeInclusive$LT$A$GT$$GT$4next17h1ed9843908831ec2E"(ptr align 4 %iter)
          to label %bb6 unwind label %cleanup

bb6:                                              ; preds = %bb5
  %8 = extractvalue { i32, i32 } %7, 0
  %9 = extractvalue { i32, i32 } %7, 1
  store i32 %8, ptr %_11, align 4
  %10 = getelementptr inbounds i8, ptr %_11, i64 4
  store i32 %9, ptr %10, align 4
  %11 = load i32, ptr %_11, align 4
  %12 = getelementptr inbounds i8, ptr %_11, i64 4
  %13 = load i32, ptr %12, align 4
  %_13 = zext i32 %11 to i64
  %14 = trunc nuw i64 %_13 to i1
  br i1 %14, label %bb8, label %bb9

bb8:                                              ; preds = %bb6
  %15 = getelementptr inbounds i8, ptr %_11, i64 4
  %i8 = load i32, ptr %15, align 4
  %_17 = sext i32 %i8 to i64
; invoke <alloc::vec::Vec<T,A> as core::ops::index::IndexMut<I>>::index_mut
  %_15 = invoke align 4 ptr @"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17hef3e05d00f2c089dE"(ptr align 8 %table, i64 %_17, ptr align 8 @alloc_a41cd73a6564fe7c72b585cd9d86b5a8)
          to label %bb10 unwind label %cleanup

bb9:                                              ; preds = %bb6
; invoke core::ops::range::RangeInclusive<Idx>::new
  invoke void @"_ZN4core3ops5range25RangeInclusive$LT$Idx$GT$3new17haa371892e72100daE"(ptr sret([12 x i8]) align 4 %_19, i32 1, i32 %V)
          to label %bb11 unwind label %cleanup

bb11:                                             ; preds = %bb9
; invoke <I as core::iter::traits::collect::IntoIterator>::into_iter
  invoke void @"_ZN63_$LT$I$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17h5a9618a120f2b886E"(ptr sret([12 x i8]) align 4 %_18, ptr align 4 %_19)
          to label %bb12 unwind label %cleanup

bb12:                                             ; preds = %bb11
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %iter1, ptr align 4 %_18, i64 12, i1 false)
  br label %bb13

bb13:                                             ; preds = %bb19, %bb12
; invoke core::iter::range::<impl core::iter::traits::iterator::Iterator for core::ops::range::RangeInclusive<A>>::next
  %16 = invoke { i32, i32 } @"_ZN4core4iter5range110_$LT$impl$u20$core..iter..traits..iterator..Iterator$u20$for$u20$core..ops..range..RangeInclusive$LT$A$GT$$GT$4next17h1ed9843908831ec2E"(ptr align 4 %iter1)
          to label %bb14 unwind label %cleanup

bb14:                                             ; preds = %bb13
  %17 = extractvalue { i32, i32 } %16, 0
  %18 = extractvalue { i32, i32 } %16, 1
  store i32 %17, ptr %_21, align 4
  %19 = getelementptr inbounds i8, ptr %_21, i64 4
  store i32 %18, ptr %19, align 4
  %20 = load i32, ptr %_21, align 4
  %21 = getelementptr inbounds i8, ptr %_21, i64 4
  %22 = load i32, ptr %21, align 4
  %_23 = zext i32 %20 to i64
  %23 = trunc nuw i64 %_23 to i1
  br i1 %23, label %bb15, label %bb16

bb15:                                             ; preds = %bb14
  %24 = getelementptr inbounds i8, ptr %_21, i64 4
  %i = load i32, ptr %24, align 4
; invoke <I as core::iter::traits::collect::IntoIterator>::into_iter
  %25 = invoke { i32, i32 } @"_ZN63_$LT$I$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17h74897899af53c39fE"(i32 0, i32 %m)
          to label %bb17 unwind label %cleanup

bb16:                                             ; preds = %bb14
  %_59 = sext i32 %V to i64
; invoke <alloc::vec::Vec<T,A> as core::ops::index::Index<I>>::index
  %_57 = invoke align 4 ptr @"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h7cd84079ffc9f833E"(ptr align 8 %table, i64 %_59, ptr align 8 @alloc_372043b5cee3f701ede4145d47485e3e)
          to label %bb32 unwind label %cleanup

bb32:                                             ; preds = %bb16
  %_0 = load i32, ptr %_57, align 4
; call core::ptr::drop_in_place<alloc::vec::Vec<i32>>
  call void @"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17h12ec525ad2a5c06fE"(ptr align 8 %table)
  ret i32 %_0

bb17:                                             ; preds = %bb15
  %_25.0 = extractvalue { i32, i32 } %25, 0
  %_25.1 = extractvalue { i32, i32 } %25, 1
  store i32 %_25.0, ptr %iter2, align 4
  %26 = getelementptr inbounds i8, ptr %iter2, i64 4
  store i32 %_25.1, ptr %26, align 4
  br label %bb18

bb18:                                             ; preds = %bb31, %bb28, %bb25, %bb21, %bb17
; invoke core::iter::range::<impl core::iter::traits::iterator::Iterator for core::ops::range::Range<A>>::next
  %27 = invoke { i32, i32 } @"_ZN4core4iter5range101_$LT$impl$u20$core..iter..traits..iterator..Iterator$u20$for$u20$core..ops..range..Range$LT$A$GT$$GT$4next17h3d4e1b5a205e2f88E"(ptr align 4 %iter2)
          to label %bb19 unwind label %cleanup

bb19:                                             ; preds = %bb18
  %28 = extractvalue { i32, i32 } %27, 0
  %29 = extractvalue { i32, i32 } %27, 1
  store i32 %28, ptr %_28, align 4
  %30 = getelementptr inbounds i8, ptr %_28, i64 4
  store i32 %29, ptr %30, align 4
  %31 = load i32, ptr %_28, align 4
  %32 = getelementptr inbounds i8, ptr %_28, i64 4
  %33 = load i32, ptr %32, align 4
  %_30 = zext i32 %31 to i64
  %34 = trunc nuw i64 %_30 to i1
  br i1 %34, label %bb20, label %bb13

bb20:                                             ; preds = %bb19
  %35 = getelementptr inbounds i8, ptr %_28, i64 4
  %j = load i32, ptr %35, align 4
  %_34 = sext i32 %j to i64
  %_35 = icmp ult i64 %_34, 2
  br i1 %_35, label %bb21, label %panic3

bb21:                                             ; preds = %bb20
  %36 = getelementptr inbounds nuw i32, ptr %coins, i64 %_34
  %_33 = load i32, ptr %36, align 4
  %_32 = icmp sle i32 %_33, %i
  br i1 %_32, label %bb22, label %bb18

panic3:                                           ; preds = %bb20
; invoke core::panicking::panic_bounds_check
  invoke void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 %_34, i64 2, ptr align 8 @alloc_f2e0c50ab9832192ea971ef5c9e41fc2) #24
          to label %unreachable unwind label %cleanup

unreachable:                                      ; preds = %panic7, %panic6, %panic5, %panic4, %panic3
  unreachable

bb22:                                             ; preds = %bb21
  %_42 = sext i32 %j to i64
  %_43 = icmp ult i64 %_42, 2
  br i1 %_43, label %bb23, label %panic4

bb23:                                             ; preds = %bb22
  %37 = getelementptr inbounds nuw i32, ptr %coins, i64 %_42
  %_41 = load i32, ptr %37, align 4
  %38 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %i, i32 %_41)
  %_44.0 = extractvalue { i32, i1 } %38, 0
  %_44.1 = extractvalue { i32, i1 } %38, 1
  br i1 %_44.1, label %panic5, label %bb24

panic4:                                           ; preds = %bb22
; invoke core::panicking::panic_bounds_check
  invoke void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 %_42, i64 2, ptr align 8 @alloc_a75b06864fc964b7b17fdf2af6f1edac) #24
          to label %unreachable unwind label %cleanup

bb24:                                             ; preds = %bb23
  %_39 = sext i32 %_44.0 to i64
; invoke <alloc::vec::Vec<T,A> as core::ops::index::Index<I>>::index
  %_37 = invoke align 4 ptr @"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h7cd84079ffc9f833E"(ptr align 8 %table, i64 %_39, ptr align 8 @alloc_65966f449f657e9a4223d92de39f8cfe)
          to label %bb25 unwind label %cleanup

panic5:                                           ; preds = %bb23
; invoke core::panicking::panic_const::panic_const_sub_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_sub_overflow17h134cc1a7f93654deE(ptr align 8 @alloc_a5e0b82de4bf4214167f702d6f70523d) #24
          to label %unreachable unwind label %cleanup

bb25:                                             ; preds = %bb24
  %sub_res = load i32, ptr %_37, align 4
  %_45 = icmp ne i32 %sub_res, 2147483647
  br i1 %_45, label %bb26, label %bb18

bb26:                                             ; preds = %bb25
  %39 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %sub_res, i32 1)
  %_48.0 = extractvalue { i32, i1 } %39, 0
  %_48.1 = extractvalue { i32, i1 } %39, 1
  br i1 %_48.1, label %panic6, label %bb27

bb27:                                             ; preds = %bb26
  %_52 = sext i32 %i to i64
; invoke <alloc::vec::Vec<T,A> as core::ops::index::Index<I>>::index
  %_50 = invoke align 4 ptr @"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h7cd84079ffc9f833E"(ptr align 8 %table, i64 %_52, ptr align 8 @alloc_3f2a7a31242289df329ab03812116e3a)
          to label %bb28 unwind label %cleanup

panic6:                                           ; preds = %bb26
; invoke core::panicking::panic_const::panic_const_add_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_7064a7d7c821d6d16964685ab2e40331) #24
          to label %unreachable unwind label %cleanup

bb28:                                             ; preds = %bb27
  %_49 = load i32, ptr %_50, align 4
  %_46 = icmp slt i32 %_48.0, %_49
  br i1 %_46, label %bb29, label %bb18

bb29:                                             ; preds = %bb28
  %40 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %sub_res, i32 1)
  %_53.0 = extractvalue { i32, i1 } %40, 0
  %_53.1 = extractvalue { i32, i1 } %40, 1
  br i1 %_53.1, label %panic7, label %bb30

bb30:                                             ; preds = %bb29
  %_56 = sext i32 %i to i64
; invoke <alloc::vec::Vec<T,A> as core::ops::index::IndexMut<I>>::index_mut
  %_54 = invoke align 4 ptr @"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17hef3e05d00f2c089dE"(ptr align 8 %table, i64 %_56, ptr align 8 @alloc_a1bed66b5283c78cf4c9bd65dbddf80b)
          to label %bb31 unwind label %cleanup

panic7:                                           ; preds = %bb29
; invoke core::panicking::panic_const::panic_const_add_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_ec4dd053fe169f12e14a8d30cc453abb) #24
          to label %unreachable unwind label %cleanup

bb31:                                             ; preds = %bb30
  store i32 %_53.0, ptr %_54, align 4
  br label %bb18

bb10:                                             ; preds = %bb8
  store i32 2147483647, ptr %_15, align 4
  br label %bb5

bb7:                                              ; No predecessors!
  unreachable

terminate:                                        ; preds = %bb34
  %41 = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer
; call core::panicking::panic_in_cleanup
  call void @_ZN4core9panicking16panic_in_cleanup17h5f6bde45d17ae243E() #21
  unreachable

bb35:                                             ; preds = %bb34
  %42 = load ptr, ptr %1, align 8
  %43 = getelementptr inbounds i8, ptr %1, i64 8
  %44 = load i32, ptr %43, align 8
  %45 = insertvalue { ptr, i32 } poison, ptr %42, 0
  %46 = insertvalue { ptr, i32 } %45, i32 %44, 1
  resume { ptr, i32 } %46
}

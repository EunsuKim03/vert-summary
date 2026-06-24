define i32 @f_gold(i64 %0, i32 %n) unnamed_addr #3 personality ptr @rust_eh_personality {
start:
  %1 = alloca [16 x i8], align 8
  %_52 = alloca [8 x i8], align 4
  %iter2 = alloca [8 x i8], align 4
  %_16 = alloca [8 x i8], align 4
  %iter1 = alloca [8 x i8], align 4
  %_9 = alloca [8 x i8], align 4
  %iter = alloca [8 x i8], align 4
  %max = alloca [4 x i8], align 4
  %mls = alloca [24 x i8], align 8
  %2 = alloca [8 x i8], align 8
  %arr = alloca [8 x i8], align 4
  store i64 %0, ptr %2, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %arr, ptr align 8 %2, i64 8, i1 false)
  %_4 = sext i32 %n to i64
; call alloc::vec::from_elem
  call void @_ZN5alloc3vec9from_elem17h9a8c8eb5ed6a29d4E(ptr sret([24 x i8]) align 8 %mls, i32 1, i64 %_4)
  store i32 0, ptr %max, align 4
; invoke <I as core::iter::traits::collect::IntoIterator>::into_iter
  %3 = invoke { i32, i32 } @"_ZN63_$LT$I$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17h2d737f1531f20703E"(i32 1, i32 %n)
          to label %bb2 unwind label %cleanup

bb33:                                             ; preds = %cleanup
; invoke core::ptr::drop_in_place<alloc::vec::Vec<i32>>
  invoke void @"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17h5ced7fc63f398367E"(ptr align 8 %mls) #23
          to label %bb34 unwind label %terminate

cleanup:                                          ; preds = %bb22, %panic7, %bb20, %panic6, %bb17, %bb16, %bb14, %panic5, %panic4, %panic, %bb9, %bb6, %bb30, %bb27, %bb25, %bb7, %bb3, %start
  %4 = landingpad { ptr, i32 }
          cleanup
  %5 = extractvalue { ptr, i32 } %4, 0
  %6 = extractvalue { ptr, i32 } %4, 1
  store ptr %5, ptr %1, align 8
  %7 = getelementptr inbounds i8, ptr %1, i64 8
  store i32 %6, ptr %7, align 8
  br label %bb33

bb2:                                              ; preds = %start
  %_6.0 = extractvalue { i32, i32 } %3, 0
  %_6.1 = extractvalue { i32, i32 } %3, 1
  store i32 %_6.0, ptr %iter, align 4
  %8 = getelementptr inbounds i8, ptr %iter, i64 4
  store i32 %_6.1, ptr %8, align 4
  br label %bb3

bb3:                                              ; preds = %bb10, %bb2
; invoke core::iter::range::<impl core::iter::traits::iterator::Iterator for core::ops::range::Range<A>>::next
  %9 = invoke { i32, i32 } @"_ZN4core4iter5range101_$LT$impl$u20$core..iter..traits..iterator..Iterator$u20$for$u20$core..ops..range..Range$LT$A$GT$$GT$4next17h42fabda1657796d1E"(ptr align 4 %iter)
          to label %bb4 unwind label %cleanup

bb4:                                              ; preds = %bb3
  %10 = extractvalue { i32, i32 } %9, 0
  %11 = extractvalue { i32, i32 } %9, 1
  store i32 %10, ptr %_9, align 4
  %12 = getelementptr inbounds i8, ptr %_9, i64 4
  store i32 %11, ptr %12, align 4
  %13 = load i32, ptr %_9, align 4
  %14 = getelementptr inbounds i8, ptr %_9, i64 4
  %15 = load i32, ptr %14, align 4
  %_11 = zext i32 %13 to i64
  %16 = trunc nuw i64 %_11 to i1
  br i1 %16, label %bb6, label %bb7

bb6:                                              ; preds = %bb4
  %17 = getelementptr inbounds i8, ptr %_9, i64 4
  %i3 = load i32, ptr %17, align 4
; invoke <I as core::iter::traits::collect::IntoIterator>::into_iter
  %18 = invoke { i32, i32 } @"_ZN63_$LT$I$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17h2d737f1531f20703E"(i32 0, i32 %i3)
          to label %bb8 unwind label %cleanup

bb7:                                              ; preds = %bb4
; invoke <I as core::iter::traits::collect::IntoIterator>::into_iter
  %19 = invoke { i32, i32 } @"_ZN63_$LT$I$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17h2d737f1531f20703E"(i32 0, i32 %n)
          to label %bb24 unwind label %cleanup

bb24:                                             ; preds = %bb7
  %_49.0 = extractvalue { i32, i32 } %19, 0
  %_49.1 = extractvalue { i32, i32 } %19, 1
  store i32 %_49.0, ptr %iter2, align 4
  %20 = getelementptr inbounds i8, ptr %iter2, i64 4
  store i32 %_49.1, ptr %20, align 4
  br label %bb25

bb25:                                             ; preds = %bb31, %bb29, %bb24
; invoke core::iter::range::<impl core::iter::traits::iterator::Iterator for core::ops::range::Range<A>>::next
  %21 = invoke { i32, i32 } @"_ZN4core4iter5range101_$LT$impl$u20$core..iter..traits..iterator..Iterator$u20$for$u20$core..ops..range..Range$LT$A$GT$$GT$4next17h42fabda1657796d1E"(ptr align 4 %iter2)
          to label %bb26 unwind label %cleanup

bb26:                                             ; preds = %bb25
  %22 = extractvalue { i32, i32 } %21, 0
  %23 = extractvalue { i32, i32 } %21, 1
  store i32 %22, ptr %_52, align 4
  %24 = getelementptr inbounds i8, ptr %_52, i64 4
  store i32 %23, ptr %24, align 4
  %25 = load i32, ptr %_52, align 4
  %26 = getelementptr inbounds i8, ptr %_52, i64 4
  %27 = load i32, ptr %26, align 4
  %_54 = zext i32 %25 to i64
  %28 = trunc nuw i64 %_54 to i1
  br i1 %28, label %bb27, label %bb28

bb27:                                             ; preds = %bb26
  %29 = getelementptr inbounds i8, ptr %_52, i64 4
  %i = load i32, ptr %29, align 4
  %_57 = load i32, ptr %max, align 4
  %_61 = sext i32 %i to i64
; invoke <alloc::vec::Vec<T,A> as core::ops::index::Index<I>>::index
  %_59 = invoke align 4 ptr @"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hb3342258787ab62cE"(ptr align 8 %mls, i64 %_61, ptr align 8 @alloc_e587cdd9f73fc7108361eafeb3e43184)
          to label %bb29 unwind label %cleanup

bb28:                                             ; preds = %bb26
  %_0 = load i32, ptr %max, align 4
; call core::ptr::drop_in_place<alloc::vec::Vec<i32>>
  call void @"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17h5ced7fc63f398367E"(ptr align 8 %mls)
  ret i32 %_0

bb29:                                             ; preds = %bb27
  %_58 = load i32, ptr %_59, align 4
  %_56 = icmp slt i32 %_57, %_58
  br i1 %_56, label %bb30, label %bb25

bb30:                                             ; preds = %bb29
  %_65 = sext i32 %i to i64
; invoke <alloc::vec::Vec<T,A> as core::ops::index::Index<I>>::index
  %_63 = invoke align 4 ptr @"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hb3342258787ab62cE"(ptr align 8 %mls, i64 %_65, ptr align 8 @alloc_b9f306f882f96383e06c5a32c15593ca)
          to label %bb31 unwind label %cleanup

bb31:                                             ; preds = %bb30
  %_62 = load i32, ptr %_63, align 4
  store i32 %_62, ptr %max, align 4
  br label %bb25

bb8:                                              ; preds = %bb6
  %_13.0 = extractvalue { i32, i32 } %18, 0
  %_13.1 = extractvalue { i32, i32 } %18, 1
  store i32 %_13.0, ptr %iter1, align 4
  %30 = getelementptr inbounds i8, ptr %iter1, i64 4
  store i32 %_13.1, ptr %30, align 4
  br label %bb9

bb9:                                              ; preds = %bb23, %bb19, %bb15, %bb8
; invoke core::iter::range::<impl core::iter::traits::iterator::Iterator for core::ops::range::Range<A>>::next
  %31 = invoke { i32, i32 } @"_ZN4core4iter5range101_$LT$impl$u20$core..iter..traits..iterator..Iterator$u20$for$u20$core..ops..range..Range$LT$A$GT$$GT$4next17h42fabda1657796d1E"(ptr align 4 %iter1)
          to label %bb10 unwind label %cleanup

bb10:                                             ; preds = %bb9
  %32 = extractvalue { i32, i32 } %31, 0
  %33 = extractvalue { i32, i32 } %31, 1
  store i32 %32, ptr %_16, align 4
  %34 = getelementptr inbounds i8, ptr %_16, i64 4
  store i32 %33, ptr %34, align 4
  %35 = load i32, ptr %_16, align 4
  %36 = getelementptr inbounds i8, ptr %_16, i64 4
  %37 = load i32, ptr %36, align 4
  %_18 = zext i32 %35 to i64
  %38 = trunc nuw i64 %_18 to i1
  br i1 %38, label %bb11, label %bb3

bb11:                                             ; preds = %bb10
  %39 = getelementptr inbounds i8, ptr %_16, i64 4
  %j = load i32, ptr %39, align 4
  %_24 = sext i32 %i3 to i64
  %_25 = icmp ult i64 %_24, 2
  br i1 %_25, label %bb12, label %panic

bb12:                                             ; preds = %bb11
  %40 = getelementptr inbounds nuw i32, ptr %arr, i64 %_24
  %_23 = load i32, ptr %40, align 4
  %_27 = sext i32 %j to i64
  %_28 = icmp ult i64 %_27, 2
  br i1 %_28, label %bb13, label %panic4

panic:                                            ; preds = %bb11
; invoke core::panicking::panic_bounds_check
  invoke void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 %_24, i64 2, ptr align 8 @alloc_a88f0991d6f405bdb00dbe0b92b22e27) #24
          to label %unreachable unwind label %cleanup

unreachable:                                      ; preds = %panic7, %panic6, %panic5, %panic4, %panic
  unreachable

bb13:                                             ; preds = %bb12
  %41 = getelementptr inbounds nuw i32, ptr %arr, i64 %_27
  %_26 = load i32, ptr %41, align 4
  %42 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %_23, i32 %_26)
  %_29.0 = extractvalue { i32, i1 } %42, 0
  %_29.1 = extractvalue { i32, i1 } %42, 1
  br i1 %_29.1, label %panic5, label %bb14

panic4:                                           ; preds = %bb12
; invoke core::panicking::panic_bounds_check
  invoke void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 %_27, i64 2, ptr align 8 @alloc_d2f907a185e8f9387795d353ee65d6b1) #24
          to label %unreachable unwind label %cleanup

bb14:                                             ; preds = %bb13
; invoke core::num::<impl i32>::abs
  %_21 = invoke i32 @"_ZN4core3num21_$LT$impl$u20$i32$GT$3abs17h40c10910f54e02fcE"(i32 %_29.0)
          to label %bb15 unwind label %cleanup

panic5:                                           ; preds = %bb13
; invoke core::panicking::panic_const::panic_const_sub_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_sub_overflow17h134cc1a7f93654deE(ptr align 8 @alloc_da8eedb663f69b668650fb54a6604215) #24
          to label %unreachable unwind label %cleanup

bb15:                                             ; preds = %bb14
  %_20 = icmp sle i32 %_21, 1
  br i1 %_20, label %bb16, label %bb9

bb16:                                             ; preds = %bb15
  %_34 = sext i32 %i3 to i64
; invoke <alloc::vec::Vec<T,A> as core::ops::index::Index<I>>::index
  %_32 = invoke align 4 ptr @"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hb3342258787ab62cE"(ptr align 8 %mls, i64 %_34, ptr align 8 @alloc_a9906c26cf10e64fc3a18fe632770a91)
          to label %bb17 unwind label %cleanup

bb17:                                             ; preds = %bb16
  %_31 = load i32, ptr %_32, align 4
  %_39 = sext i32 %j to i64
; invoke <alloc::vec::Vec<T,A> as core::ops::index::Index<I>>::index
  %_37 = invoke align 4 ptr @"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hb3342258787ab62cE"(ptr align 8 %mls, i64 %_39, ptr align 8 @alloc_6580034067e635f247a4df901a004c73)
          to label %bb18 unwind label %cleanup

bb18:                                             ; preds = %bb17
  %_36 = load i32, ptr %_37, align 4
  %43 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %_36, i32 1)
  %_40.0 = extractvalue { i32, i1 } %43, 0
  %_40.1 = extractvalue { i32, i1 } %43, 1
  br i1 %_40.1, label %panic6, label %bb19

bb19:                                             ; preds = %bb18
  %_30 = icmp slt i32 %_31, %_40.0
  br i1 %_30, label %bb20, label %bb9

panic6:                                           ; preds = %bb18
; invoke core::panicking::panic_const::panic_const_add_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_f964e2af8b636440cd029a8471d61a85) #24
          to label %unreachable unwind label %cleanup

bb20:                                             ; preds = %bb19
  %_44 = sext i32 %j to i64
; invoke <alloc::vec::Vec<T,A> as core::ops::index::Index<I>>::index
  %_42 = invoke align 4 ptr @"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hb3342258787ab62cE"(ptr align 8 %mls, i64 %_44, ptr align 8 @alloc_c6f748dd3acd1de026598890f4dcbf16)
          to label %bb21 unwind label %cleanup

bb21:                                             ; preds = %bb20
  %_41 = load i32, ptr %_42, align 4
  %44 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %_41, i32 1)
  %_45.0 = extractvalue { i32, i1 } %44, 0
  %_45.1 = extractvalue { i32, i1 } %44, 1
  br i1 %_45.1, label %panic7, label %bb22

bb22:                                             ; preds = %bb21
  %_48 = sext i32 %i3 to i64
; invoke <alloc::vec::Vec<T,A> as core::ops::index::IndexMut<I>>::index_mut
  %_46 = invoke align 4 ptr @"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h69844daa03e04922E"(ptr align 8 %mls, i64 %_48, ptr align 8 @alloc_5ed335e5ddc09a7df10e3a58a69a8ec5)
          to label %bb23 unwind label %cleanup

panic7:                                           ; preds = %bb21
; invoke core::panicking::panic_const::panic_const_add_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_adbb5d6a44badfab366546f5e78a1577) #24
          to label %unreachable unwind label %cleanup

bb23:                                             ; preds = %bb22
  store i32 %_45.0, ptr %_46, align 4
  br label %bb9

bb5:                                              ; No predecessors!
  unreachable

terminate:                                        ; preds = %bb33
  %45 = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer
; call core::panicking::panic_in_cleanup
  call void @_ZN4core9panicking16panic_in_cleanup17h5f6bde45d17ae243E() #20
  unreachable

bb34:                                             ; preds = %bb33
  %46 = load ptr, ptr %1, align 8
  %47 = getelementptr inbounds i8, ptr %1, i64 8
  %48 = load i32, ptr %47, align 8
  %49 = insertvalue { ptr, i32 } poison, ptr %46, 0
  %50 = insertvalue { ptr, i32 } %49, i32 %48, 1
  resume { ptr, i32 } %50
}

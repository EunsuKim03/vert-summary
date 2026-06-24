define i32 @f_gold(ptr align 4 %arr.0, i64 %arr.1, i32 %n) unnamed_addr #3 personality ptr @rust_eh_personality {
start:
  %0 = alloca [16 x i8], align 8
  %_56 = alloca [16 x i8], align 8
  %iter3 = alloca [16 x i8], align 8
  %curr_ham = alloca [4 x i8], align 4
  %_45 = alloca [16 x i8], align 8
  %iter2 = alloca [16 x i8], align 8
  %max_ham = alloca [4 x i8], align 4
  %_27 = alloca [16 x i8], align 8
  %iter1 = alloca [16 x i8], align 8
  %_13 = alloca [16 x i8], align 8
  %iter = alloca [16 x i8], align 8
  %brr = alloca [24 x i8], align 8
  %_0 = alloca [4 x i8], align 4
  %1 = call { i32, i1 } @llvm.smul.with.overflow.i32(i32 2, i32 %n)
  %_7.0 = extractvalue { i32, i1 } %1, 0
  %_7.1 = extractvalue { i32, i1 } %1, 1
  br i1 %_7.1, label %panic, label %bb1

bb1:                                              ; preds = %start
  %_5 = sext i32 %_7.0 to i64
  %_8.0 = add i64 %_5, 1
  %_8.1 = icmp ult i64 %_8.0, %_5
  br i1 %_8.1, label %panic4, label %bb2

panic:                                            ; preds = %start
; call core::panicking::panic_const::panic_const_mul_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_mul_overflow17h554ac164c12099f8E(ptr align 8 @alloc_3e198a29f9a3cadde837dfd6ca976ced) #23
  unreachable

bb2:                                              ; preds = %bb1
; call alloc::vec::from_elem
  call void @_ZN5alloc3vec9from_elem17h32ccf98f8eb2787aE(ptr sret([24 x i8]) align 8 %brr, i32 0, i64 %_8.0)
  %_11 = sext i32 %n to i64
; invoke <I as core::iter::traits::collect::IntoIterator>::into_iter
  %2 = invoke { i64, i64 } @"_ZN63_$LT$I$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17h1eb6df5ad418c4a4E"(i64 0, i64 %_11)
          to label %bb4 unwind label %cleanup

panic4:                                           ; preds = %bb1
; call core::panicking::panic_const::panic_const_add_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_3e198a29f9a3cadde837dfd6ca976ced) #23
  unreachable

bb40:                                             ; preds = %cleanup
; invoke core::ptr::drop_in_place<alloc::vec::Vec<i32>>
  invoke void @"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17hc3f1b69d61d68fc8E"(ptr align 8 %brr) #22
          to label %bb41 unwind label %terminate

cleanup:                                          ; preds = %bb10, %panic13, %bb18, %panic11, %panic10, %panic8, %panic7, %bb31, %panic6, %bb37, %bb27, %bb25, %panic5, %bb21, %bb16, %bb13, %bb9, %bb5, %bb2
  %3 = landingpad { ptr, i32 }
          cleanup
  %4 = extractvalue { ptr, i32 } %3, 0
  %5 = extractvalue { ptr, i32 } %3, 1
  store ptr %4, ptr %0, align 8
  %6 = getelementptr inbounds i8, ptr %0, i64 8
  store i32 %5, ptr %6, align 8
  br label %bb40

bb4:                                              ; preds = %bb2
  %_9.0 = extractvalue { i64, i64 } %2, 0
  %_9.1 = extractvalue { i64, i64 } %2, 1
  store i64 %_9.0, ptr %iter, align 8
  %7 = getelementptr inbounds i8, ptr %iter, i64 8
  store i64 %_9.1, ptr %7, align 8
  br label %bb5

bb5:                                              ; preds = %bb11, %bb4
; invoke core::iter::range::<impl core::iter::traits::iterator::Iterator for core::ops::range::Range<A>>::next
  %8 = invoke { i64, i64 } @"_ZN4core4iter5range101_$LT$impl$u20$core..iter..traits..iterator..Iterator$u20$for$u20$core..ops..range..Range$LT$A$GT$$GT$4next17he06a43d6287d9925E"(ptr align 8 %iter)
          to label %bb6 unwind label %cleanup

bb6:                                              ; preds = %bb5
  %9 = extractvalue { i64, i64 } %8, 0
  %10 = extractvalue { i64, i64 } %8, 1
  store i64 %9, ptr %_13, align 8
  %11 = getelementptr inbounds i8, ptr %_13, i64 8
  store i64 %10, ptr %11, align 8
  %_15 = load i64, ptr %_13, align 8
  %12 = getelementptr inbounds i8, ptr %_13, i64 8
  %13 = load i64, ptr %12, align 8
  %14 = trunc nuw i64 %_15 to i1
  br i1 %14, label %bb8, label %bb9

bb8:                                              ; preds = %bb6
  %15 = getelementptr inbounds i8, ptr %_13, i64 8
  %i12 = load i64, ptr %15, align 8
  %_20 = icmp ult i64 %i12, %arr.1
  br i1 %_20, label %bb10, label %panic13

bb9:                                              ; preds = %bb6
  %_25 = sext i32 %n to i64
; invoke <I as core::iter::traits::collect::IntoIterator>::into_iter
  %16 = invoke { i64, i64 } @"_ZN63_$LT$I$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17h1eb6df5ad418c4a4E"(i64 0, i64 %_25)
          to label %bb12 unwind label %cleanup

bb12:                                             ; preds = %bb9
  %_23.0 = extractvalue { i64, i64 } %16, 0
  %_23.1 = extractvalue { i64, i64 } %16, 1
  store i64 %_23.0, ptr %iter1, align 8
  %17 = getelementptr inbounds i8, ptr %iter1, i64 8
  store i64 %_23.1, ptr %17, align 8
  br label %bb13

bb13:                                             ; preds = %bb19, %bb12
; invoke core::iter::range::<impl core::iter::traits::iterator::Iterator for core::ops::range::Range<A>>::next
  %18 = invoke { i64, i64 } @"_ZN4core4iter5range101_$LT$impl$u20$core..iter..traits..iterator..Iterator$u20$for$u20$core..ops..range..Range$LT$A$GT$$GT$4next17he06a43d6287d9925E"(ptr align 8 %iter1)
          to label %bb14 unwind label %cleanup

bb14:                                             ; preds = %bb13
  %19 = extractvalue { i64, i64 } %18, 0
  %20 = extractvalue { i64, i64 } %18, 1
  store i64 %19, ptr %_27, align 8
  %21 = getelementptr inbounds i8, ptr %_27, i64 8
  store i64 %20, ptr %21, align 8
  %_29 = load i64, ptr %_27, align 8
  %22 = getelementptr inbounds i8, ptr %_27, i64 8
  %23 = load i64, ptr %22, align 8
  %24 = trunc nuw i64 %_29 to i1
  br i1 %24, label %bb15, label %bb16

bb15:                                             ; preds = %bb14
  %25 = getelementptr inbounds i8, ptr %_27, i64 8
  %i9 = load i64, ptr %25, align 8
  %_34 = icmp ult i64 %i9, %arr.1
  br i1 %_34, label %bb17, label %panic10

bb16:                                             ; preds = %bb14
  store i32 0, ptr %max_ham, align 4
  %_43 = sext i32 %n to i64
; invoke <I as core::iter::traits::collect::IntoIterator>::into_iter
  %26 = invoke { i64, i64 } @"_ZN63_$LT$I$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17h1eb6df5ad418c4a4E"(i64 1, i64 %_43)
          to label %bb20 unwind label %cleanup

bb20:                                             ; preds = %bb16
  %_41.0 = extractvalue { i64, i64 } %26, 0
  %_41.1 = extractvalue { i64, i64 } %26, 1
  store i64 %_41.0, ptr %iter2, align 8
  %27 = getelementptr inbounds i8, ptr %iter2, i64 8
  store i64 %_41.1, ptr %27, align 8
  br label %bb21

bb21:                                             ; preds = %bb38, %bb20
; invoke core::iter::range::<impl core::iter::traits::iterator::Iterator for core::ops::range::Range<A>>::next
  %28 = invoke { i64, i64 } @"_ZN4core4iter5range101_$LT$impl$u20$core..iter..traits..iterator..Iterator$u20$for$u20$core..ops..range..Range$LT$A$GT$$GT$4next17he06a43d6287d9925E"(ptr align 8 %iter2)
          to label %bb22 unwind label %cleanup

bb22:                                             ; preds = %bb21
  %29 = extractvalue { i64, i64 } %28, 0
  %30 = extractvalue { i64, i64 } %28, 1
  store i64 %29, ptr %_45, align 8
  %31 = getelementptr inbounds i8, ptr %_45, i64 8
  store i64 %30, ptr %31, align 8
  %_47 = load i64, ptr %_45, align 8
  %32 = getelementptr inbounds i8, ptr %_45, i64 8
  %33 = load i64, ptr %32, align 8
  %34 = trunc nuw i64 %_47 to i1
  br i1 %34, label %bb23, label %bb24

bb23:                                             ; preds = %bb22
  %35 = getelementptr inbounds i8, ptr %_45, i64 8
  %i = load i64, ptr %35, align 8
  store i32 0, ptr %curr_ham, align 4
  %_53 = sext i32 %n to i64
  %_54.0 = add i64 %i, %_53
  %_54.1 = icmp ult i64 %_54.0, %i
  br i1 %_54.1, label %panic5, label %bb25

bb24:                                             ; preds = %bb22
  %36 = load i32, ptr %max_ham, align 4
  store i32 %36, ptr %_0, align 4
; call core::ptr::drop_in_place<alloc::vec::Vec<i32>>
  call void @"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17hc3f1b69d61d68fc8E"(ptr align 8 %brr)
  br label %bb39

bb39:                                             ; preds = %bb36, %bb24
  %37 = load i32, ptr %_0, align 4
  ret i32 %37

bb25:                                             ; preds = %bb23
; invoke <I as core::iter::traits::collect::IntoIterator>::into_iter
  %38 = invoke { i64, i64 } @"_ZN63_$LT$I$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17h1eb6df5ad418c4a4E"(i64 %i, i64 %_54.0)
          to label %bb26 unwind label %cleanup

panic5:                                           ; preds = %bb23
; invoke core::panicking::panic_const::panic_const_add_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_391313b8bfcce2f8aa8ccca473f93ed8) #24
          to label %unreachable unwind label %cleanup

unreachable:                                      ; preds = %panic13, %panic11, %panic10, %panic8, %panic7, %panic6, %panic5
  unreachable

bb26:                                             ; preds = %bb25
  %_50.0 = extractvalue { i64, i64 } %38, 0
  %_50.1 = extractvalue { i64, i64 } %38, 1
  store i64 %_50.0, ptr %iter3, align 8
  %39 = getelementptr inbounds i8, ptr %iter3, i64 8
  store i64 %_50.1, ptr %39, align 8
  br label %bb27

bb27:                                             ; preds = %bb35, %bb33, %bb26
; invoke core::iter::range::<impl core::iter::traits::iterator::Iterator for core::ops::range::Range<A>>::next
  %40 = invoke { i64, i64 } @"_ZN4core4iter5range101_$LT$impl$u20$core..iter..traits..iterator..Iterator$u20$for$u20$core..ops..range..Range$LT$A$GT$$GT$4next17he06a43d6287d9925E"(ptr align 8 %iter3)
          to label %bb28 unwind label %cleanup

bb28:                                             ; preds = %bb27
  %41 = extractvalue { i64, i64 } %40, 0
  %42 = extractvalue { i64, i64 } %40, 1
  store i64 %41, ptr %_56, align 8
  %43 = getelementptr inbounds i8, ptr %_56, i64 8
  store i64 %42, ptr %43, align 8
  %_58 = load i64, ptr %_56, align 8
  %44 = getelementptr inbounds i8, ptr %_56, i64 8
  %45 = load i64, ptr %44, align 8
  %46 = trunc nuw i64 %_58 to i1
  br i1 %46, label %bb29, label %bb30

bb29:                                             ; preds = %bb28
  %47 = getelementptr inbounds i8, ptr %_56, i64 8
  %j = load i64, ptr %47, align 8
  %_61.0 = sub i64 %j, %i
  %_61.1 = icmp ult i64 %j, %i
  br i1 %_61.1, label %panic6, label %bb31

bb30:                                             ; preds = %bb28
  %_72 = load i32, ptr %curr_ham, align 4
  %_71 = icmp eq i32 %_72, %n
  br i1 %_71, label %bb36, label %bb37

bb37:                                             ; preds = %bb30
  %_74 = load i32, ptr %max_ham, align 4
  %_75 = load i32, ptr %curr_ham, align 4
; invoke core::cmp::Ord::max
  %_73 = invoke i32 @_ZN4core3cmp3Ord3max17hac4c46dad31ba8c0E(i32 %_74, i32 %_75)
          to label %bb38 unwind label %cleanup

bb36:                                             ; preds = %bb30
  store i32 %n, ptr %_0, align 4
; call core::ptr::drop_in_place<alloc::vec::Vec<i32>>
  call void @"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17hc3f1b69d61d68fc8E"(ptr align 8 %brr)
  br label %bb39

bb38:                                             ; preds = %bb37
  store i32 %_73, ptr %max_ham, align 4
  br label %bb21

bb31:                                             ; preds = %bb29
; invoke <alloc::vec::Vec<T,A> as core::ops::index::Index<I>>::index
  %_64 = invoke align 4 ptr @"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h04117241cc840211E"(ptr align 8 %brr, i64 %j, ptr align 8 @alloc_7fc9389e7984de8e277fc364fc48bf1c)
          to label %bb32 unwind label %cleanup

panic6:                                           ; preds = %bb29
; invoke core::panicking::panic_const::panic_const_sub_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_sub_overflow17h134cc1a7f93654deE(ptr align 8 @alloc_11a7ce2f84e4819ed080a15913f597c7) #24
          to label %unreachable unwind label %cleanup

bb32:                                             ; preds = %bb31
  %_63 = load i32, ptr %_64, align 4
  %_69 = icmp ult i64 %_61.0, %arr.1
  br i1 %_69, label %bb33, label %panic7

bb33:                                             ; preds = %bb32
  %48 = getelementptr inbounds nuw i32, ptr %arr.0, i64 %_61.0
  %_66 = load i32, ptr %48, align 4
  %_62 = icmp ne i32 %_63, %_66
  br i1 %_62, label %bb34, label %bb27

panic7:                                           ; preds = %bb32
; invoke core::panicking::panic_bounds_check
  invoke void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 %_61.0, i64 %arr.1, ptr align 8 @alloc_2ef02cee9352d1f821538e610316e778) #24
          to label %unreachable unwind label %cleanup

bb34:                                             ; preds = %bb33
  %49 = load i32, ptr %curr_ham, align 4
  %50 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %49, i32 1)
  %_70.0 = extractvalue { i32, i1 } %50, 0
  %_70.1 = extractvalue { i32, i1 } %50, 1
  br i1 %_70.1, label %panic8, label %bb35

bb35:                                             ; preds = %bb34
  store i32 %_70.0, ptr %curr_ham, align 4
  br label %bb27

panic8:                                           ; preds = %bb34
; invoke core::panicking::panic_const::panic_const_add_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_e7a06e61c140f6ef250d184f29fa37b5) #24
          to label %unreachable unwind label %cleanup

bb17:                                             ; preds = %bb15
  %51 = getelementptr inbounds nuw i32, ptr %arr.0, i64 %i9
  %_31 = load i32, ptr %51, align 4
  %_38 = sext i32 %n to i64
  %_39.0 = add i64 %_38, %i9
  %_39.1 = icmp ult i64 %_39.0, %_38
  br i1 %_39.1, label %panic11, label %bb18

panic10:                                          ; preds = %bb15
; invoke core::panicking::panic_bounds_check
  invoke void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 %i9, i64 %arr.1, ptr align 8 @alloc_3be35fd55d4c93b07c002f779121ba47) #24
          to label %unreachable unwind label %cleanup

bb18:                                             ; preds = %bb17
; invoke <alloc::vec::Vec<T,A> as core::ops::index::IndexMut<I>>::index_mut
  %_35 = invoke align 4 ptr @"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17hd48539691cb02f44E"(ptr align 8 %brr, i64 %_39.0, ptr align 8 @alloc_7355eb00d5e8fac351bf3ff76c1ceb71)
          to label %bb19 unwind label %cleanup

panic11:                                          ; preds = %bb17
; invoke core::panicking::panic_const::panic_const_add_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_bc6fc951fc05edcd12270af6bff497d4) #24
          to label %unreachable unwind label %cleanup

bb19:                                             ; preds = %bb18
  store i32 %_31, ptr %_35, align 4
  br label %bb13

bb10:                                             ; preds = %bb8
  %52 = getelementptr inbounds nuw i32, ptr %arr.0, i64 %i12
  %_17 = load i32, ptr %52, align 4
; invoke <alloc::vec::Vec<T,A> as core::ops::index::IndexMut<I>>::index_mut
  %_21 = invoke align 4 ptr @"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17hd48539691cb02f44E"(ptr align 8 %brr, i64 %i12, ptr align 8 @alloc_fb14040e3f6c6995a6345b54a8ac6143)
          to label %bb11 unwind label %cleanup

panic13:                                          ; preds = %bb8
; invoke core::panicking::panic_bounds_check
  invoke void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 %i12, i64 %arr.1, ptr align 8 @alloc_a78bb4f53a9170f41079207610e3f956) #24
          to label %unreachable unwind label %cleanup

bb11:                                             ; preds = %bb10
  store i32 %_17, ptr %_21, align 4
  br label %bb5

bb7:                                              ; No predecessors!
  unreachable

terminate:                                        ; preds = %bb40
  %53 = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer
; call core::panicking::panic_in_cleanup
  call void @_ZN4core9panicking16panic_in_cleanup17h5f6bde45d17ae243E() #20
  unreachable

bb41:                                             ; preds = %bb40
  %54 = load ptr, ptr %0, align 8
  %55 = getelementptr inbounds i8, ptr %0, i64 8
  %56 = load i32, ptr %55, align 8
  %57 = insertvalue { ptr, i32 } poison, ptr %54, 0
  %58 = insertvalue { ptr, i32 } %57, i32 %56, 1
  resume { ptr, i32 } %58
}

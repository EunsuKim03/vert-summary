define i32 @f_gold(i64 %0, i32 %n) unnamed_addr #3 personality ptr @rust_eh_personality {
start:
  %1 = alloca [16 x i8], align 8
  %_52 = alloca [16 x i8], align 8
  %iter3 = alloca [16 x i8], align 8
  %curr_ham = alloca [4 x i8], align 4
  %_41 = alloca [16 x i8], align 8
  %iter2 = alloca [16 x i8], align 8
  %max_ham = alloca [4 x i8], align 4
  %_25 = alloca [16 x i8], align 8
  %iter1 = alloca [16 x i8], align 8
  %_13 = alloca [16 x i8], align 8
  %iter = alloca [16 x i8], align 8
  %brr = alloca [24 x i8], align 8
  %_0 = alloca [4 x i8], align 4
  %2 = alloca [8 x i8], align 8
  %arr = alloca [8 x i8], align 4
  store i64 %0, ptr %2, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %arr, ptr align 8 %2, i64 8, i1 false)
  %_6 = sext i32 %n to i64
  %3 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 2, i64 %_6)
  %_7.0 = extractvalue { i64, i1 } %3, 0
  %_7.1 = extractvalue { i64, i1 } %3, 1
  br i1 %_7.1, label %panic, label %bb1

bb1:                                              ; preds = %start
  %_8.0 = add i64 %_7.0, 1
  %_8.1 = icmp ult i64 %_8.0, %_7.0
  br i1 %_8.1, label %panic4, label %bb2

panic:                                            ; preds = %start
; call core::panicking::panic_const::panic_const_mul_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_mul_overflow17h554ac164c12099f8E(ptr align 8 @alloc_1de92e06fecdb6f164430417aff7e19a) #23
  unreachable

bb2:                                              ; preds = %bb1
; call alloc::vec::from_elem
  call void @_ZN5alloc3vec9from_elem17h32ccf98f8eb2787aE(ptr sret([24 x i8]) align 8 %brr, i32 0, i64 %_8.0)
  %_11 = sext i32 %n to i64
; invoke <I as core::iter::traits::collect::IntoIterator>::into_iter
  %4 = invoke { i64, i64 } @"_ZN63_$LT$I$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17h1eb6df5ad418c4a4E"(i64 0, i64 %_11)
          to label %bb4 unwind label %cleanup

panic4:                                           ; preds = %bb1
; call core::panicking::panic_const::panic_const_add_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_1de92e06fecdb6f164430417aff7e19a) #23
  unreachable

bb40:                                             ; preds = %cleanup
; invoke core::ptr::drop_in_place<alloc::vec::Vec<i32>>
  invoke void @"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17hc3f1b69d61d68fc8E"(ptr align 8 %brr) #22
          to label %bb41 unwind label %terminate

cleanup:                                          ; preds = %bb10, %panic13, %bb18, %panic11, %panic10, %panic8, %panic7, %bb31, %panic6, %bb37, %bb27, %bb25, %panic5, %bb21, %bb16, %bb13, %bb9, %bb5, %bb2
  %5 = landingpad { ptr, i32 }
          cleanup
  %6 = extractvalue { ptr, i32 } %5, 0
  %7 = extractvalue { ptr, i32 } %5, 1
  store ptr %6, ptr %1, align 8
  %8 = getelementptr inbounds i8, ptr %1, i64 8
  store i32 %7, ptr %8, align 8
  br label %bb40

bb4:                                              ; preds = %bb2
  %_9.0 = extractvalue { i64, i64 } %4, 0
  %_9.1 = extractvalue { i64, i64 } %4, 1
  store i64 %_9.0, ptr %iter, align 8
  %9 = getelementptr inbounds i8, ptr %iter, i64 8
  store i64 %_9.1, ptr %9, align 8
  br label %bb5

bb5:                                              ; preds = %bb11, %bb4
; invoke core::iter::range::<impl core::iter::traits::iterator::Iterator for core::ops::range::Range<A>>::next
  %10 = invoke { i64, i64 } @"_ZN4core4iter5range101_$LT$impl$u20$core..iter..traits..iterator..Iterator$u20$for$u20$core..ops..range..Range$LT$A$GT$$GT$4next17he06a43d6287d9925E"(ptr align 8 %iter)
          to label %bb6 unwind label %cleanup

bb6:                                              ; preds = %bb5
  %11 = extractvalue { i64, i64 } %10, 0
  %12 = extractvalue { i64, i64 } %10, 1
  store i64 %11, ptr %_13, align 8
  %13 = getelementptr inbounds i8, ptr %_13, i64 8
  store i64 %12, ptr %13, align 8
  %_15 = load i64, ptr %_13, align 8
  %14 = getelementptr inbounds i8, ptr %_13, i64 8
  %15 = load i64, ptr %14, align 8
  %16 = trunc nuw i64 %_15 to i1
  br i1 %16, label %bb8, label %bb9

bb8:                                              ; preds = %bb6
  %17 = getelementptr inbounds i8, ptr %_13, i64 8
  %i12 = load i64, ptr %17, align 8
  %_18 = icmp ult i64 %i12, 2
  br i1 %_18, label %bb10, label %panic13

bb9:                                              ; preds = %bb6
  %_23 = sext i32 %n to i64
; invoke <I as core::iter::traits::collect::IntoIterator>::into_iter
  %18 = invoke { i64, i64 } @"_ZN63_$LT$I$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17h1eb6df5ad418c4a4E"(i64 0, i64 %_23)
          to label %bb12 unwind label %cleanup

bb12:                                             ; preds = %bb9
  %_21.0 = extractvalue { i64, i64 } %18, 0
  %_21.1 = extractvalue { i64, i64 } %18, 1
  store i64 %_21.0, ptr %iter1, align 8
  %19 = getelementptr inbounds i8, ptr %iter1, i64 8
  store i64 %_21.1, ptr %19, align 8
  br label %bb13

bb13:                                             ; preds = %bb19, %bb12
; invoke core::iter::range::<impl core::iter::traits::iterator::Iterator for core::ops::range::Range<A>>::next
  %20 = invoke { i64, i64 } @"_ZN4core4iter5range101_$LT$impl$u20$core..iter..traits..iterator..Iterator$u20$for$u20$core..ops..range..Range$LT$A$GT$$GT$4next17he06a43d6287d9925E"(ptr align 8 %iter1)
          to label %bb14 unwind label %cleanup

bb14:                                             ; preds = %bb13
  %21 = extractvalue { i64, i64 } %20, 0
  %22 = extractvalue { i64, i64 } %20, 1
  store i64 %21, ptr %_25, align 8
  %23 = getelementptr inbounds i8, ptr %_25, i64 8
  store i64 %22, ptr %23, align 8
  %_27 = load i64, ptr %_25, align 8
  %24 = getelementptr inbounds i8, ptr %_25, i64 8
  %25 = load i64, ptr %24, align 8
  %26 = trunc nuw i64 %_27 to i1
  br i1 %26, label %bb15, label %bb16

bb15:                                             ; preds = %bb14
  %27 = getelementptr inbounds i8, ptr %_25, i64 8
  %i9 = load i64, ptr %27, align 8
  %_30 = icmp ult i64 %i9, 2
  br i1 %_30, label %bb17, label %panic10

bb16:                                             ; preds = %bb14
  store i32 0, ptr %max_ham, align 4
  %_39 = sext i32 %n to i64
; invoke <I as core::iter::traits::collect::IntoIterator>::into_iter
  %28 = invoke { i64, i64 } @"_ZN63_$LT$I$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17h1eb6df5ad418c4a4E"(i64 1, i64 %_39)
          to label %bb20 unwind label %cleanup

bb20:                                             ; preds = %bb16
  %_37.0 = extractvalue { i64, i64 } %28, 0
  %_37.1 = extractvalue { i64, i64 } %28, 1
  store i64 %_37.0, ptr %iter2, align 8
  %29 = getelementptr inbounds i8, ptr %iter2, i64 8
  store i64 %_37.1, ptr %29, align 8
  br label %bb21

bb21:                                             ; preds = %bb38, %bb20
; invoke core::iter::range::<impl core::iter::traits::iterator::Iterator for core::ops::range::Range<A>>::next
  %30 = invoke { i64, i64 } @"_ZN4core4iter5range101_$LT$impl$u20$core..iter..traits..iterator..Iterator$u20$for$u20$core..ops..range..Range$LT$A$GT$$GT$4next17he06a43d6287d9925E"(ptr align 8 %iter2)
          to label %bb22 unwind label %cleanup

bb22:                                             ; preds = %bb21
  %31 = extractvalue { i64, i64 } %30, 0
  %32 = extractvalue { i64, i64 } %30, 1
  store i64 %31, ptr %_41, align 8
  %33 = getelementptr inbounds i8, ptr %_41, i64 8
  store i64 %32, ptr %33, align 8
  %_43 = load i64, ptr %_41, align 8
  %34 = getelementptr inbounds i8, ptr %_41, i64 8
  %35 = load i64, ptr %34, align 8
  %36 = trunc nuw i64 %_43 to i1
  br i1 %36, label %bb23, label %bb24

bb23:                                             ; preds = %bb22
  %37 = getelementptr inbounds i8, ptr %_41, i64 8
  %i = load i64, ptr %37, align 8
  store i32 0, ptr %curr_ham, align 4
  %_49 = sext i32 %n to i64
  %_50.0 = add i64 %i, %_49
  %_50.1 = icmp ult i64 %_50.0, %i
  br i1 %_50.1, label %panic5, label %bb25

bb24:                                             ; preds = %bb22
  %38 = load i32, ptr %max_ham, align 4
  store i32 %38, ptr %_0, align 4
; call core::ptr::drop_in_place<alloc::vec::Vec<i32>>
  call void @"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17hc3f1b69d61d68fc8E"(ptr align 8 %brr)
  br label %bb39

bb39:                                             ; preds = %bb36, %bb24
  %39 = load i32, ptr %_0, align 4
  ret i32 %39

bb25:                                             ; preds = %bb23
; invoke <I as core::iter::traits::collect::IntoIterator>::into_iter
  %40 = invoke { i64, i64 } @"_ZN63_$LT$I$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17h1eb6df5ad418c4a4E"(i64 %i, i64 %_50.0)
          to label %bb26 unwind label %cleanup

panic5:                                           ; preds = %bb23
; invoke core::panicking::panic_const::panic_const_add_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_edcb53f7a42d48b01ddeaf4fb97af96f) #24
          to label %unreachable unwind label %cleanup

unreachable:                                      ; preds = %panic13, %panic11, %panic10, %panic8, %panic7, %panic6, %panic5
  unreachable

bb26:                                             ; preds = %bb25
  %_46.0 = extractvalue { i64, i64 } %40, 0
  %_46.1 = extractvalue { i64, i64 } %40, 1
  store i64 %_46.0, ptr %iter3, align 8
  %41 = getelementptr inbounds i8, ptr %iter3, i64 8
  store i64 %_46.1, ptr %41, align 8
  br label %bb27

bb27:                                             ; preds = %bb35, %bb33, %bb26
; invoke core::iter::range::<impl core::iter::traits::iterator::Iterator for core::ops::range::Range<A>>::next
  %42 = invoke { i64, i64 } @"_ZN4core4iter5range101_$LT$impl$u20$core..iter..traits..iterator..Iterator$u20$for$u20$core..ops..range..Range$LT$A$GT$$GT$4next17he06a43d6287d9925E"(ptr align 8 %iter3)
          to label %bb28 unwind label %cleanup

bb28:                                             ; preds = %bb27
  %43 = extractvalue { i64, i64 } %42, 0
  %44 = extractvalue { i64, i64 } %42, 1
  store i64 %43, ptr %_52, align 8
  %45 = getelementptr inbounds i8, ptr %_52, i64 8
  store i64 %44, ptr %45, align 8
  %_54 = load i64, ptr %_52, align 8
  %46 = getelementptr inbounds i8, ptr %_52, i64 8
  %47 = load i64, ptr %46, align 8
  %48 = trunc nuw i64 %_54 to i1
  br i1 %48, label %bb29, label %bb30

bb29:                                             ; preds = %bb28
  %49 = getelementptr inbounds i8, ptr %_52, i64 8
  %j = load i64, ptr %49, align 8
  %_57.0 = sub i64 %j, %i
  %_57.1 = icmp ult i64 %j, %i
  br i1 %_57.1, label %panic6, label %bb31

bb30:                                             ; preds = %bb28
  %_66 = load i32, ptr %curr_ham, align 4
  %_65 = icmp eq i32 %_66, %n
  br i1 %_65, label %bb36, label %bb37

bb37:                                             ; preds = %bb30
  %_68 = load i32, ptr %max_ham, align 4
  %_69 = load i32, ptr %curr_ham, align 4
; invoke core::cmp::Ord::max
  %_67 = invoke i32 @_ZN4core3cmp3Ord3max17hac4c46dad31ba8c0E(i32 %_68, i32 %_69)
          to label %bb38 unwind label %cleanup

bb36:                                             ; preds = %bb30
  store i32 %n, ptr %_0, align 4
; call core::ptr::drop_in_place<alloc::vec::Vec<i32>>
  call void @"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17hc3f1b69d61d68fc8E"(ptr align 8 %brr)
  br label %bb39

bb38:                                             ; preds = %bb37
  store i32 %_67, ptr %max_ham, align 4
  br label %bb21

bb31:                                             ; preds = %bb29
; invoke <alloc::vec::Vec<T,A> as core::ops::index::Index<I>>::index
  %_60 = invoke align 4 ptr @"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h04117241cc840211E"(ptr align 8 %brr, i64 %j, ptr align 8 @alloc_7e3d6da9c8159f594e182559bdac59e7)
          to label %bb32 unwind label %cleanup

panic6:                                           ; preds = %bb29
; invoke core::panicking::panic_const::panic_const_sub_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_sub_overflow17h134cc1a7f93654deE(ptr align 8 @alloc_b2c498c2166c0fe849fed3fd90bf4b60) #24
          to label %unreachable unwind label %cleanup

bb32:                                             ; preds = %bb31
  %_59 = load i32, ptr %_60, align 4
  %_63 = icmp ult i64 %_57.0, 2
  br i1 %_63, label %bb33, label %panic7

bb33:                                             ; preds = %bb32
  %50 = getelementptr inbounds nuw i32, ptr %arr, i64 %_57.0
  %_62 = load i32, ptr %50, align 4
  %_58 = icmp ne i32 %_59, %_62
  br i1 %_58, label %bb34, label %bb27

panic7:                                           ; preds = %bb32
; invoke core::panicking::panic_bounds_check
  invoke void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 %_57.0, i64 2, ptr align 8 @alloc_33e4fb336d116caf80ca95f807f47bc5) #24
          to label %unreachable unwind label %cleanup

bb34:                                             ; preds = %bb33
  %51 = load i32, ptr %curr_ham, align 4
  %52 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %51, i32 1)
  %_64.0 = extractvalue { i32, i1 } %52, 0
  %_64.1 = extractvalue { i32, i1 } %52, 1
  br i1 %_64.1, label %panic8, label %bb35

bb35:                                             ; preds = %bb34
  store i32 %_64.0, ptr %curr_ham, align 4
  br label %bb27

panic8:                                           ; preds = %bb34
; invoke core::panicking::panic_const::panic_const_add_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_99a474f1d341539ac8b773a69177e9cb) #24
          to label %unreachable unwind label %cleanup

bb17:                                             ; preds = %bb15
  %53 = getelementptr inbounds nuw i32, ptr %arr, i64 %i9
  %_29 = load i32, ptr %53, align 4
  %_34 = sext i32 %n to i64
  %_35.0 = add i64 %_34, %i9
  %_35.1 = icmp ult i64 %_35.0, %_34
  br i1 %_35.1, label %panic11, label %bb18

panic10:                                          ; preds = %bb15
; invoke core::panicking::panic_bounds_check
  invoke void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 %i9, i64 2, ptr align 8 @alloc_896fcc33b1aebf2483c098f3d26f0d30) #24
          to label %unreachable unwind label %cleanup

bb18:                                             ; preds = %bb17
; invoke <alloc::vec::Vec<T,A> as core::ops::index::IndexMut<I>>::index_mut
  %_31 = invoke align 4 ptr @"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17hd48539691cb02f44E"(ptr align 8 %brr, i64 %_35.0, ptr align 8 @alloc_8f640558ce0467725c7f98d136462a4e)
          to label %bb19 unwind label %cleanup

panic11:                                          ; preds = %bb17
; invoke core::panicking::panic_const::panic_const_add_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_2079c151bf10532e6b4148e22c595050) #24
          to label %unreachable unwind label %cleanup

bb19:                                             ; preds = %bb18
  store i32 %_29, ptr %_31, align 4
  br label %bb13

bb10:                                             ; preds = %bb8
  %54 = getelementptr inbounds nuw i32, ptr %arr, i64 %i12
  %_17 = load i32, ptr %54, align 4
; invoke <alloc::vec::Vec<T,A> as core::ops::index::IndexMut<I>>::index_mut
  %_19 = invoke align 4 ptr @"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17hd48539691cb02f44E"(ptr align 8 %brr, i64 %i12, ptr align 8 @alloc_f863d11d43511954a4949ce53133d724)
          to label %bb11 unwind label %cleanup

panic13:                                          ; preds = %bb8
; invoke core::panicking::panic_bounds_check
  invoke void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 %i12, i64 2, ptr align 8 @alloc_b6d5574efaff1c4fb94e48c16f0b9496) #24
          to label %unreachable unwind label %cleanup

bb11:                                             ; preds = %bb10
  store i32 %_17, ptr %_19, align 4
  br label %bb5

bb7:                                              ; No predecessors!
  unreachable

terminate:                                        ; preds = %bb40
  %55 = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer
; call core::panicking::panic_in_cleanup
  call void @_ZN4core9panicking16panic_in_cleanup17h5f6bde45d17ae243E() #20
  unreachable

bb41:                                             ; preds = %bb40
  %56 = load ptr, ptr %1, align 8
  %57 = getelementptr inbounds i8, ptr %1, i64 8
  %58 = load i32, ptr %57, align 8
  %59 = insertvalue { ptr, i32 } poison, ptr %56, 0
  %60 = insertvalue { ptr, i32 } %59, i32 %58, 1
  resume { ptr, i32 } %60
}

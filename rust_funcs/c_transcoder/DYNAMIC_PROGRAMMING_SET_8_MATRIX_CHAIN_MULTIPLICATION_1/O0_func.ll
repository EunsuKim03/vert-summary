define i32 @f_gold(i64 %0, i32 %n) unnamed_addr #3 personality ptr @rust_eh_personality {
start:
  %1 = alloca [16 x i8], align 8
  %_49 = alloca [8 x i8], align 4
  %iter3 = alloca [8 x i8], align 4
  %_33 = alloca [8 x i8], align 4
  %iter2 = alloca [8 x i8], align 4
  %_22 = alloca [8 x i8], align 4
  %iter1 = alloca [8 x i8], align 4
  %_10 = alloca [8 x i8], align 4
  %iter = alloca [8 x i8], align 4
  %_4 = alloca [24 x i8], align 8
  %m = alloca [24 x i8], align 8
  %2 = alloca [8 x i8], align 8
  %p = alloca [8 x i8], align 4
  store i64 %0, ptr %2, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %p, ptr align 8 %2, i64 8, i1 false)
  %_5 = sext i32 %n to i64
; call alloc::vec::from_elem
  call void @_ZN5alloc3vec9from_elem17hbc3947f1f1281c0cE(ptr sret([24 x i8]) align 8 %_4, i32 0, i64 %_5)
  %_6 = sext i32 %n to i64
; call alloc::vec::from_elem
  call void @_ZN5alloc3vec9from_elem17hc2aa093495e3c421E(ptr sret([24 x i8]) align 8 %m, ptr align 8 %_4, i64 %_6)
; invoke <I as core::iter::traits::collect::IntoIterator>::into_iter
  %3 = invoke { i32, i32 } @"_ZN63_$LT$I$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17h7150a5a616b7f81bE"(i32 1, i32 %n)
          to label %bb3 unwind label %cleanup

bb52:                                             ; preds = %cleanup
; invoke core::ptr::drop_in_place<alloc::vec::Vec<alloc::vec::Vec<i32>>>
  invoke void @"_ZN4core3ptr70drop_in_place$LT$alloc..vec..Vec$LT$alloc..vec..Vec$LT$i32$GT$$GT$$GT$17hf55ccbbfd920f6adE"(ptr align 8 %m) #22
          to label %bb53 unwind label %terminate

cleanup:                                          ; preds = %bb9, %bb7, %bb46, %bb45, %bb43, %bb42, %panic16, %panic15, %panic14, %panic13, %panic12, %panic11, %panic10, %panic9, %bb33, %bb32, %panic8, %bb30, %bb29, %bb27, %bb25, %bb24, %bb23, %panic7, %panic6, %bb19, %bb17, %panic5, %panic4, %bb49, %panic, %bb15, %bb12, %bb8, %bb4, %start
  %4 = landingpad { ptr, i32 }
          cleanup
  %5 = extractvalue { ptr, i32 } %4, 0
  %6 = extractvalue { ptr, i32 } %4, 1
  store ptr %5, ptr %1, align 8
  %7 = getelementptr inbounds i8, ptr %1, i64 8
  store i32 %6, ptr %7, align 8
  br label %bb52

bb3:                                              ; preds = %start
  %_7.0 = extractvalue { i32, i32 } %3, 0
  %_7.1 = extractvalue { i32, i32 } %3, 1
  store i32 %_7.0, ptr %iter, align 4
  %8 = getelementptr inbounds i8, ptr %iter, i64 4
  store i32 %_7.1, ptr %8, align 4
  br label %bb4

bb4:                                              ; preds = %bb10, %bb3
; invoke core::iter::range::<impl core::iter::traits::iterator::Iterator for core::ops::range::Range<A>>::next
  %9 = invoke { i32, i32 } @"_ZN4core4iter5range101_$LT$impl$u20$core..iter..traits..iterator..Iterator$u20$for$u20$core..ops..range..Range$LT$A$GT$$GT$4next17he0a19e2d47f0938fE"(ptr align 4 %iter)
          to label %bb5 unwind label %cleanup

bb5:                                              ; preds = %bb4
  %10 = extractvalue { i32, i32 } %9, 0
  %11 = extractvalue { i32, i32 } %9, 1
  store i32 %10, ptr %_10, align 4
  %12 = getelementptr inbounds i8, ptr %_10, i64 4
  store i32 %11, ptr %12, align 4
  %13 = load i32, ptr %_10, align 4
  %14 = getelementptr inbounds i8, ptr %_10, i64 4
  %15 = load i32, ptr %14, align 4
  %_12 = zext i32 %13 to i64
  %16 = trunc nuw i64 %_12 to i1
  br i1 %16, label %bb7, label %bb8

bb7:                                              ; preds = %bb5
  %17 = getelementptr inbounds i8, ptr %_10, i64 4
  %i17 = load i32, ptr %17, align 4
  %_17 = sext i32 %i17 to i64
; invoke <alloc::vec::Vec<T,A> as core::ops::index::IndexMut<I>>::index_mut
  %_15 = invoke align 8 ptr @"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17hae0072fda6a897f4E"(ptr align 8 %m, i64 %_17, ptr align 8 @alloc_30bd5d6be587ab8ee2ed8b272743aeff)
          to label %bb9 unwind label %cleanup

bb8:                                              ; preds = %bb5
; invoke <I as core::iter::traits::collect::IntoIterator>::into_iter
  %18 = invoke { i32, i32 } @"_ZN63_$LT$I$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17h7150a5a616b7f81bE"(i32 2, i32 %n)
          to label %bb11 unwind label %cleanup

bb11:                                             ; preds = %bb8
  %_19.0 = extractvalue { i32, i32 } %18, 0
  %_19.1 = extractvalue { i32, i32 } %18, 1
  store i32 %_19.0, ptr %iter1, align 4
  %19 = getelementptr inbounds i8, ptr %iter1, i64 4
  store i32 %_19.1, ptr %19, align 4
  br label %bb12

bb12:                                             ; preds = %bb20, %bb11
; invoke core::iter::range::<impl core::iter::traits::iterator::Iterator for core::ops::range::Range<A>>::next
  %20 = invoke { i32, i32 } @"_ZN4core4iter5range101_$LT$impl$u20$core..iter..traits..iterator..Iterator$u20$for$u20$core..ops..range..Range$LT$A$GT$$GT$4next17he0a19e2d47f0938fE"(ptr align 4 %iter1)
          to label %bb13 unwind label %cleanup

bb13:                                             ; preds = %bb12
  %21 = extractvalue { i32, i32 } %20, 0
  %22 = extractvalue { i32, i32 } %20, 1
  store i32 %21, ptr %_22, align 4
  %23 = getelementptr inbounds i8, ptr %_22, i64 4
  store i32 %22, ptr %23, align 4
  %24 = load i32, ptr %_22, align 4
  %25 = getelementptr inbounds i8, ptr %_22, i64 4
  %26 = load i32, ptr %25, align 4
  %_24 = zext i32 %24 to i64
  %27 = trunc nuw i64 %_24 to i1
  br i1 %27, label %bb14, label %bb15

bb14:                                             ; preds = %bb13
  %28 = getelementptr inbounds i8, ptr %_22, i64 4
  %L = load i32, ptr %28, align 4
  %29 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %n, i32 %L)
  %_30.0 = extractvalue { i32, i1 } %29, 0
  %_30.1 = extractvalue { i32, i1 } %29, 1
  br i1 %_30.1, label %panic4, label %bb16

bb15:                                             ; preds = %bb13
; invoke <alloc::vec::Vec<T,A> as core::ops::index::Index<I>>::index
  %_99 = invoke align 8 ptr @"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h253615d2018a7594E"(ptr align 8 %m, i64 1, ptr align 8 @alloc_bcb49e920a3ba87d9e484cc33a98c524)
          to label %bb48 unwind label %cleanup

bb48:                                             ; preds = %bb15
  %_102 = sext i32 %n to i64
  %_103.0 = sub i64 %_102, 1
  %_103.1 = icmp ult i64 %_102, 1
  br i1 %_103.1, label %panic, label %bb49

bb49:                                             ; preds = %bb48
; invoke <alloc::vec::Vec<T,A> as core::ops::index::Index<I>>::index
  %_98 = invoke align 4 ptr @"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h84dad8ee9961e452E"(ptr align 8 %_99, i64 %_103.0, ptr align 8 @alloc_5554d71ab0281b044ddf3f976bc7046b)
          to label %bb50 unwind label %cleanup

panic:                                            ; preds = %bb48
; invoke core::panicking::panic_const::panic_const_sub_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_sub_overflow17h134cc1a7f93654deE(ptr align 8 @alloc_90a5fd1b194d48f37f8490eb29ee7c2d) #24
          to label %unreachable unwind label %cleanup

unreachable:                                      ; preds = %panic16, %panic15, %panic14, %panic13, %panic12, %panic11, %panic10, %panic9, %panic8, %panic7, %panic6, %panic5, %panic4, %panic
  unreachable

bb50:                                             ; preds = %bb49
  %_0 = load i32, ptr %_98, align 4
; call core::ptr::drop_in_place<alloc::vec::Vec<alloc::vec::Vec<i32>>>
  call void @"_ZN4core3ptr70drop_in_place$LT$alloc..vec..Vec$LT$alloc..vec..Vec$LT$i32$GT$$GT$$GT$17hf55ccbbfd920f6adE"(ptr align 8 %m)
  ret i32 %_0

bb16:                                             ; preds = %bb14
  %30 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %_30.0, i32 1)
  %_31.0 = extractvalue { i32, i1 } %30, 0
  %_31.1 = extractvalue { i32, i1 } %30, 1
  br i1 %_31.1, label %panic5, label %bb17

panic4:                                           ; preds = %bb14
; invoke core::panicking::panic_const::panic_const_sub_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_sub_overflow17h134cc1a7f93654deE(ptr align 8 @alloc_a1d5e32043ce8302651fe47e08b09e34) #24
          to label %unreachable unwind label %cleanup

bb17:                                             ; preds = %bb16
; invoke <I as core::iter::traits::collect::IntoIterator>::into_iter
  %31 = invoke { i32, i32 } @"_ZN63_$LT$I$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17h7150a5a616b7f81bE"(i32 1, i32 %_31.0)
          to label %bb18 unwind label %cleanup

panic5:                                           ; preds = %bb16
; invoke core::panicking::panic_const::panic_const_add_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_a1d5e32043ce8302651fe47e08b09e34) #24
          to label %unreachable unwind label %cleanup

bb18:                                             ; preds = %bb17
  %_26.0 = extractvalue { i32, i32 } %31, 0
  %_26.1 = extractvalue { i32, i32 } %31, 1
  store i32 %_26.0, ptr %iter2, align 4
  %32 = getelementptr inbounds i8, ptr %iter2, i64 4
  store i32 %_26.1, ptr %32, align 4
  br label %bb19

bb19:                                             ; preds = %bb28, %bb18
; invoke core::iter::range::<impl core::iter::traits::iterator::Iterator for core::ops::range::Range<A>>::next
  %33 = invoke { i32, i32 } @"_ZN4core4iter5range101_$LT$impl$u20$core..iter..traits..iterator..Iterator$u20$for$u20$core..ops..range..Range$LT$A$GT$$GT$4next17he0a19e2d47f0938fE"(ptr align 4 %iter2)
          to label %bb20 unwind label %cleanup

bb20:                                             ; preds = %bb19
  %34 = extractvalue { i32, i32 } %33, 0
  %35 = extractvalue { i32, i32 } %33, 1
  store i32 %34, ptr %_33, align 4
  %36 = getelementptr inbounds i8, ptr %_33, i64 4
  store i32 %35, ptr %36, align 4
  %37 = load i32, ptr %_33, align 4
  %38 = getelementptr inbounds i8, ptr %_33, i64 4
  %39 = load i32, ptr %38, align 4
  %_35 = zext i32 %37 to i64
  %40 = trunc nuw i64 %_35 to i1
  br i1 %40, label %bb21, label %bb12

bb21:                                             ; preds = %bb20
  %41 = getelementptr inbounds i8, ptr %_33, i64 4
  %i = load i32, ptr %41, align 4
  %42 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %i, i32 %L)
  %_39.0 = extractvalue { i32, i1 } %42, 0
  %_39.1 = extractvalue { i32, i1 } %42, 1
  br i1 %_39.1, label %panic6, label %bb22

bb22:                                             ; preds = %bb21
  %43 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %_39.0, i32 1)
  %_40.0 = extractvalue { i32, i1 } %43, 0
  %_40.1 = extractvalue { i32, i1 } %43, 1
  br i1 %_40.1, label %panic7, label %bb23

panic6:                                           ; preds = %bb21
; invoke core::panicking::panic_const::panic_const_add_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_4da2417e201b737f837581e4d1f07506) #24
          to label %unreachable unwind label %cleanup

bb23:                                             ; preds = %bb22
  %_44 = sext i32 %i to i64
; invoke <alloc::vec::Vec<T,A> as core::ops::index::IndexMut<I>>::index_mut
  %_42 = invoke align 8 ptr @"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17hae0072fda6a897f4E"(ptr align 8 %m, i64 %_44, ptr align 8 @alloc_b56f14a803ebf901c777b26987ed4eed)
          to label %bb24 unwind label %cleanup

panic7:                                           ; preds = %bb22
; invoke core::panicking::panic_const::panic_const_sub_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_sub_overflow17h134cc1a7f93654deE(ptr align 8 @alloc_4da2417e201b737f837581e4d1f07506) #24
          to label %unreachable unwind label %cleanup

bb24:                                             ; preds = %bb23
  %_45 = sext i32 %_40.0 to i64
; invoke <alloc::vec::Vec<T,A> as core::ops::index::IndexMut<I>>::index_mut
  %_41 = invoke align 4 ptr @"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h0071af03db569ce2E"(ptr align 8 %_42, i64 %_45, ptr align 8 @alloc_70f436f01bd9ac7c881a80a7ceeab435)
          to label %bb25 unwind label %cleanup

bb25:                                             ; preds = %bb24
  %44 = call i32 @llvm.fptosi.sat.i32.f32(float 0x7FF0000000000000)
  store i32 %44, ptr %_41, align 4
; invoke <I as core::iter::traits::collect::IntoIterator>::into_iter
  %45 = invoke { i32, i32 } @"_ZN63_$LT$I$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17h7150a5a616b7f81bE"(i32 %i, i32 %_40.0)
          to label %bb26 unwind label %cleanup

bb26:                                             ; preds = %bb25
  %_46.0 = extractvalue { i32, i32 } %45, 0
  %_46.1 = extractvalue { i32, i32 } %45, 1
  store i32 %_46.0, ptr %iter3, align 4
  %46 = getelementptr inbounds i8, ptr %iter3, i64 4
  store i32 %_46.1, ptr %46, align 4
  br label %bb27

bb27:                                             ; preds = %bb47, %bb44, %bb26
; invoke core::iter::range::<impl core::iter::traits::iterator::Iterator for core::ops::range::Range<A>>::next
  %47 = invoke { i32, i32 } @"_ZN4core4iter5range101_$LT$impl$u20$core..iter..traits..iterator..Iterator$u20$for$u20$core..ops..range..Range$LT$A$GT$$GT$4next17he0a19e2d47f0938fE"(ptr align 4 %iter3)
          to label %bb28 unwind label %cleanup

bb28:                                             ; preds = %bb27
  %48 = extractvalue { i32, i32 } %47, 0
  %49 = extractvalue { i32, i32 } %47, 1
  store i32 %48, ptr %_49, align 4
  %50 = getelementptr inbounds i8, ptr %_49, i64 4
  store i32 %49, ptr %50, align 4
  %51 = load i32, ptr %_49, align 4
  %52 = getelementptr inbounds i8, ptr %_49, i64 4
  %53 = load i32, ptr %52, align 4
  %_51 = zext i32 %51 to i64
  %54 = trunc nuw i64 %_51 to i1
  br i1 %54, label %bb29, label %bb19

bb29:                                             ; preds = %bb28
  %55 = getelementptr inbounds i8, ptr %_49, i64 4
  %k = load i32, ptr %55, align 4
  %_59 = sext i32 %i to i64
; invoke <alloc::vec::Vec<T,A> as core::ops::index::Index<I>>::index
  %_57 = invoke align 8 ptr @"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h253615d2018a7594E"(ptr align 8 %m, i64 %_59, ptr align 8 @alloc_35801a12c37c78919d3cbe6956af5eb3)
          to label %bb30 unwind label %cleanup

bb30:                                             ; preds = %bb29
  %_60 = sext i32 %k to i64
; invoke <alloc::vec::Vec<T,A> as core::ops::index::Index<I>>::index
  %_56 = invoke align 4 ptr @"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h84dad8ee9961e452E"(ptr align 8 %_57, i64 %_60, ptr align 8 @alloc_d0443c52d7b59269158243a571eac4b5)
          to label %bb31 unwind label %cleanup

bb31:                                             ; preds = %bb30
  %_55 = load i32, ptr %_56, align 4
  %_66 = sext i32 %k to i64
  %_67.0 = add i64 %_66, 1
  %_67.1 = icmp ult i64 %_67.0, %_66
  br i1 %_67.1, label %panic8, label %bb32

bb32:                                             ; preds = %bb31
; invoke <alloc::vec::Vec<T,A> as core::ops::index::Index<I>>::index
  %_63 = invoke align 8 ptr @"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h253615d2018a7594E"(ptr align 8 %m, i64 %_67.0, ptr align 8 @alloc_239f04e72e439d78c92b38a8baf4dab2)
          to label %bb33 unwind label %cleanup

panic8:                                           ; preds = %bb31
; invoke core::panicking::panic_const::panic_const_add_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_686dd8c15ce30f98d02fbfec86172724) #24
          to label %unreachable unwind label %cleanup

bb33:                                             ; preds = %bb32
  %_68 = sext i32 %_40.0 to i64
; invoke <alloc::vec::Vec<T,A> as core::ops::index::Index<I>>::index
  %_62 = invoke align 4 ptr @"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h84dad8ee9961e452E"(ptr align 8 %_63, i64 %_68, ptr align 8 @alloc_7548566ae303f2ff03f66129afdc3ba3)
          to label %bb34 unwind label %cleanup

bb34:                                             ; preds = %bb33
  %_61 = load i32, ptr %_62, align 4
  %56 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %_55, i32 %_61)
  %_69.0 = extractvalue { i32, i1 } %56, 0
  %_69.1 = extractvalue { i32, i1 } %56, 1
  br i1 %_69.1, label %panic9, label %bb35

bb35:                                             ; preds = %bb34
  %_74 = sext i32 %i to i64
  %_75.0 = sub i64 %_74, 1
  %_75.1 = icmp ult i64 %_74, 1
  br i1 %_75.1, label %panic10, label %bb36

panic9:                                           ; preds = %bb34
; invoke core::panicking::panic_const::panic_const_add_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_0f4ddc73244a97d453965b318a8b0216) #24
          to label %unreachable unwind label %cleanup

bb36:                                             ; preds = %bb35
  %_76 = icmp ult i64 %_75.0, 2
  br i1 %_76, label %bb37, label %panic11

panic10:                                          ; preds = %bb35
; invoke core::panicking::panic_const::panic_const_sub_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_sub_overflow17h134cc1a7f93654deE(ptr align 8 @alloc_ae158cb53f8b0c2d7ad62d7a7e4415c4) #24
          to label %unreachable unwind label %cleanup

bb37:                                             ; preds = %bb36
  %57 = getelementptr inbounds nuw i32, ptr %p, i64 %_75.0
  %_72 = load i32, ptr %57, align 4
  %_78 = sext i32 %k to i64
  %_79 = icmp ult i64 %_78, 2
  br i1 %_79, label %bb38, label %panic12

panic11:                                          ; preds = %bb36
; invoke core::panicking::panic_bounds_check
  invoke void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 %_75.0, i64 2, ptr align 8 @alloc_2ae73ff7fcc4835fbf62e7ff24662534) #24
          to label %unreachable unwind label %cleanup

bb38:                                             ; preds = %bb37
  %58 = getelementptr inbounds nuw i32, ptr %p, i64 %_78
  %_77 = load i32, ptr %58, align 4
  %59 = call { i32, i1 } @llvm.smul.with.overflow.i32(i32 %_72, i32 %_77)
  %_80.0 = extractvalue { i32, i1 } %59, 0
  %_80.1 = extractvalue { i32, i1 } %59, 1
  br i1 %_80.1, label %panic13, label %bb39

panic12:                                          ; preds = %bb37
; invoke core::panicking::panic_bounds_check
  invoke void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 %_78, i64 2, ptr align 8 @alloc_5a9b383c70a7b1dd16c6463a41b1abb9) #24
          to label %unreachable unwind label %cleanup

bb39:                                             ; preds = %bb38
  %_82 = sext i32 %_40.0 to i64
  %_83 = icmp ult i64 %_82, 2
  br i1 %_83, label %bb40, label %panic14

panic13:                                          ; preds = %bb38
; invoke core::panicking::panic_const::panic_const_mul_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_mul_overflow17h554ac164c12099f8E(ptr align 8 @alloc_2ae73ff7fcc4835fbf62e7ff24662534) #24
          to label %unreachable unwind label %cleanup

bb40:                                             ; preds = %bb39
  %60 = getelementptr inbounds nuw i32, ptr %p, i64 %_82
  %_81 = load i32, ptr %60, align 4
  %61 = call { i32, i1 } @llvm.smul.with.overflow.i32(i32 %_80.0, i32 %_81)
  %_84.0 = extractvalue { i32, i1 } %61, 0
  %_84.1 = extractvalue { i32, i1 } %61, 1
  br i1 %_84.1, label %panic15, label %bb41

panic14:                                          ; preds = %bb39
; invoke core::panicking::panic_bounds_check
  invoke void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 %_82, i64 2, ptr align 8 @alloc_6c3e1fd742bed77b62979487ae24177f) #24
          to label %unreachable unwind label %cleanup

bb41:                                             ; preds = %bb40
  %62 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %_69.0, i32 %_84.0)
  %_85.0 = extractvalue { i32, i1 } %62, 0
  %_85.1 = extractvalue { i32, i1 } %62, 1
  br i1 %_85.1, label %panic16, label %bb42

panic15:                                          ; preds = %bb40
; invoke core::panicking::panic_const::panic_const_mul_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_mul_overflow17h554ac164c12099f8E(ptr align 8 @alloc_2ae73ff7fcc4835fbf62e7ff24662534) #24
          to label %unreachable unwind label %cleanup

bb42:                                             ; preds = %bb41
  %_91 = sext i32 %i to i64
; invoke <alloc::vec::Vec<T,A> as core::ops::index::Index<I>>::index
  %_89 = invoke align 8 ptr @"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h253615d2018a7594E"(ptr align 8 %m, i64 %_91, ptr align 8 @alloc_7e41a6f28776f22a05fae5489a277ade)
          to label %bb43 unwind label %cleanup

panic16:                                          ; preds = %bb41
; invoke core::panicking::panic_const::panic_const_add_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_0f4ddc73244a97d453965b318a8b0216) #24
          to label %unreachable unwind label %cleanup

bb43:                                             ; preds = %bb42
  %_92 = sext i32 %_40.0 to i64
; invoke <alloc::vec::Vec<T,A> as core::ops::index::Index<I>>::index
  %_88 = invoke align 4 ptr @"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h84dad8ee9961e452E"(ptr align 8 %_89, i64 %_92, ptr align 8 @alloc_46107255d94b854bcb82862ca3370e87)
          to label %bb44 unwind label %cleanup

bb44:                                             ; preds = %bb43
  %_87 = load i32, ptr %_88, align 4
  %_86 = icmp slt i32 %_85.0, %_87
  br i1 %_86, label %bb45, label %bb27

bb45:                                             ; preds = %bb44
  %_96 = sext i32 %i to i64
; invoke <alloc::vec::Vec<T,A> as core::ops::index::IndexMut<I>>::index_mut
  %_94 = invoke align 8 ptr @"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17hae0072fda6a897f4E"(ptr align 8 %m, i64 %_96, ptr align 8 @alloc_4d0dcea13463b9ca50ddeccb5d7d5046)
          to label %bb46 unwind label %cleanup

bb46:                                             ; preds = %bb45
  %_97 = sext i32 %_40.0 to i64
; invoke <alloc::vec::Vec<T,A> as core::ops::index::IndexMut<I>>::index_mut
  %_93 = invoke align 4 ptr @"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h0071af03db569ce2E"(ptr align 8 %_94, i64 %_97, ptr align 8 @alloc_96e25ce025ab4d58164896111bfcd19b)
          to label %bb47 unwind label %cleanup

bb47:                                             ; preds = %bb46
  store i32 %_85.0, ptr %_93, align 4
  br label %bb27

bb9:                                              ; preds = %bb7
  %_18 = sext i32 %i17 to i64
; invoke <alloc::vec::Vec<T,A> as core::ops::index::IndexMut<I>>::index_mut
  %_14 = invoke align 4 ptr @"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h0071af03db569ce2E"(ptr align 8 %_15, i64 %_18, ptr align 8 @alloc_2d43b99c8c45744d9d7977b95c4474e2)
          to label %bb10 unwind label %cleanup

bb10:                                             ; preds = %bb9
  store i32 0, ptr %_14, align 4
  br label %bb4

bb6:                                              ; No predecessors!
  unreachable

terminate:                                        ; preds = %bb52
  %63 = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer
; call core::panicking::panic_in_cleanup
  call void @_ZN4core9panicking16panic_in_cleanup17h5f6bde45d17ae243E() #20
  unreachable

bb53:                                             ; preds = %bb52
  %64 = load ptr, ptr %1, align 8
  %65 = getelementptr inbounds i8, ptr %1, i64 8
  %66 = load i32, ptr %65, align 8
  %67 = insertvalue { ptr, i32 } poison, ptr %64, 0
  %68 = insertvalue { ptr, i32 } %67, i32 %66, 1
  resume { ptr, i32 } %68
}

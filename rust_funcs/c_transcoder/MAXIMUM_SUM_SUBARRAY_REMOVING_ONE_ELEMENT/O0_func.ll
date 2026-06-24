define i32 @f_gold(i64 %0, i32 %n) unnamed_addr #3 personality ptr @rust_eh_personality {
start:
  %1 = alloca [16 x i8], align 8
  %_83 = alloca [16 x i8], align 8
  %iter2 = alloca [16 x i8], align 8
  %fans = alloca [4 x i8], align 4
  %_58 = alloca [16 x i8], align 8
  %iter1 = alloca [16 x i8], align 8
  %_22 = alloca [16 x i8], align 8
  %iter = alloca [16 x i8], align 8
  %max_so_far = alloca [4 x i8], align 4
  %cur_max = alloca [4 x i8], align 4
  %bw = alloca [24 x i8], align 8
  %fw = alloca [24 x i8], align 8
  %2 = alloca [8 x i8], align 8
  %arr = alloca [8 x i8], align 4
  store i64 %0, ptr %2, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %arr, ptr align 8 %2, i64 8, i1 false)
  %_4 = sext i32 %n to i64
; call alloc::vec::from_elem
  call void @_ZN5alloc3vec9from_elem17h0a6f5b7ef6f5f0edE(ptr sret([24 x i8]) align 8 %fw, i32 0, i64 %_4)
  %_6 = sext i32 %n to i64
; invoke alloc::vec::from_elem
  invoke void @_ZN5alloc3vec9from_elem17h0a6f5b7ef6f5f0edE(ptr sret([24 x i8]) align 8 %bw, i32 0, i64 %_6)
          to label %bb2 unwind label %cleanup

bb51:                                             ; preds = %bb50, %cleanup
; invoke core::ptr::drop_in_place<alloc::vec::Vec<i32>>
  invoke void @"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17ha55da6ed4c74d06bE"(ptr align 8 %fw) #22
          to label %bb52 unwind label %terminate

cleanup:                                          ; preds = %bb41, %start
  %3 = landingpad { ptr, i32 }
          cleanup
  %4 = extractvalue { ptr, i32 } %3, 0
  %5 = extractvalue { ptr, i32 } %3, 1
  store ptr %4, ptr %1, align 8
  %6 = getelementptr inbounds i8, ptr %1, i64 8
  store i32 %5, ptr %6, align 8
  br label %bb51

bb2:                                              ; preds = %start
  br label %bb3

bb3:                                              ; preds = %bb2
  %7 = getelementptr inbounds nuw i32, ptr %arr, i64 0
  %8 = load i32, ptr %7, align 4
  store i32 %8, ptr %cur_max, align 4
  br label %bb4

bb4:                                              ; preds = %bb3
  %9 = getelementptr inbounds nuw i32, ptr %arr, i64 0
  %10 = load i32, ptr %9, align 4
  store i32 %10, ptr %max_so_far, align 4
  br label %bb5

bb5:                                              ; preds = %bb4
  %11 = getelementptr inbounds nuw i32, ptr %arr, i64 0
  %_13 = load i32, ptr %11, align 4
; invoke <alloc::vec::Vec<T,A> as core::ops::index::IndexMut<I>>::index_mut
  %_16 = invoke align 4 ptr @"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h3c4aa52d848bc3f8E"(ptr align 8 %fw, i64 0, ptr align 8 @alloc_f316587cd457ae6447420db737fdde00)
          to label %bb6 unwind label %cleanup3

bb50:                                             ; preds = %cleanup3
; invoke core::ptr::drop_in_place<alloc::vec::Vec<i32>>
  invoke void @"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17ha55da6ed4c74d06bE"(ptr align 8 %bw) #22
          to label %bb51 unwind label %terminate

cleanup3:                                         ; preds = %bb17, %bb16, %bb15, %panic18, %panic17, %panic16, %bb34, %bb33, %bb32, %panic14, %panic13, %panic12, %bb46, %panic10, %bb44, %panic9, %bb42, %panic8, %bb38, %bb36, %panic7, %bb26, %bb24, %bb23, %panic6, %bb21, %panic5, %panic4, %panic, %bb8, %bb6, %bb5
  %12 = landingpad { ptr, i32 }
          cleanup
  %13 = extractvalue { ptr, i32 } %12, 0
  %14 = extractvalue { ptr, i32 } %12, 1
  store ptr %13, ptr %1, align 8
  %15 = getelementptr inbounds i8, ptr %1, i64 8
  store i32 %14, ptr %15, align 8
  br label %bb50

bb6:                                              ; preds = %bb5
  store i32 %_13, ptr %_16, align 4
  %_20 = sext i32 %n to i64
; invoke <I as core::iter::traits::collect::IntoIterator>::into_iter
  %16 = invoke { i64, i64 } @"_ZN63_$LT$I$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17h61b7a99500f813e3E"(i64 1, i64 %_20)
          to label %bb7 unwind label %cleanup3

bb7:                                              ; preds = %bb6
  %_18.0 = extractvalue { i64, i64 } %16, 0
  %_18.1 = extractvalue { i64, i64 } %16, 1
  store i64 %_18.0, ptr %iter, align 8
  %17 = getelementptr inbounds i8, ptr %iter, i64 8
  store i64 %_18.1, ptr %17, align 8
  br label %bb8

bb8:                                              ; preds = %bb18, %bb7
; invoke core::iter::range::<impl core::iter::traits::iterator::Iterator for core::ops::range::Range<A>>::next
  %18 = invoke { i64, i64 } @"_ZN4core4iter5range101_$LT$impl$u20$core..iter..traits..iterator..Iterator$u20$for$u20$core..ops..range..Range$LT$A$GT$$GT$4next17hc9b6ed56c37c797fE"(ptr align 8 %iter)
          to label %bb9 unwind label %cleanup3

bb9:                                              ; preds = %bb8
  %19 = extractvalue { i64, i64 } %18, 0
  %20 = extractvalue { i64, i64 } %18, 1
  store i64 %19, ptr %_22, align 8
  %21 = getelementptr inbounds i8, ptr %_22, i64 8
  store i64 %20, ptr %21, align 8
  %_24 = load i64, ptr %_22, align 8
  %22 = getelementptr inbounds i8, ptr %_22, i64 8
  %23 = load i64, ptr %22, align 8
  %24 = trunc nuw i64 %_24 to i1
  br i1 %24, label %bb11, label %bb12

bb11:                                             ; preds = %bb9
  %25 = getelementptr inbounds i8, ptr %_22, i64 8
  %i15 = load i64, ptr %25, align 8
  %_28 = icmp ult i64 %i15, 2
  br i1 %_28, label %bb13, label %panic16

bb12:                                             ; preds = %bb9
  %_40 = load i32, ptr %max_so_far, align 4
  store i32 %_40, ptr %cur_max, align 4
  %_43 = sext i32 %n to i64
  %_44.0 = sub i64 %_43, 1
  %_44.1 = icmp ult i64 %_43, 1
  br i1 %_44.1, label %panic, label %bb19

bb19:                                             ; preds = %bb12
  %_45 = icmp ult i64 %_44.0, 2
  br i1 %_45, label %bb20, label %panic4

panic:                                            ; preds = %bb12
; invoke core::panicking::panic_const::panic_const_sub_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_sub_overflow17h134cc1a7f93654deE(ptr align 8 @alloc_daa6c3c7090cbb9dcf93db4e816fd00f) #24
          to label %unreachable unwind label %cleanup3

unreachable:                                      ; preds = %panic18, %panic17, %panic16, %panic14, %panic13, %panic12, %panic10, %panic9, %panic8, %panic7, %panic6, %panic5, %panic4, %panic
  unreachable

bb20:                                             ; preds = %bb19
  %26 = getelementptr inbounds nuw i32, ptr %arr, i64 %_44.0
  %_41 = load i32, ptr %26, align 4
  %_49 = sext i32 %n to i64
  %_50.0 = sub i64 %_49, 1
  %_50.1 = icmp ult i64 %_49, 1
  br i1 %_50.1, label %panic5, label %bb21

panic4:                                           ; preds = %bb19
; invoke core::panicking::panic_bounds_check
  invoke void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 %_44.0, i64 2, ptr align 8 @alloc_c8b6938b2664bfe7f29701e9828cca4f) #24
          to label %unreachable unwind label %cleanup3

bb21:                                             ; preds = %bb20
; invoke <alloc::vec::Vec<T,A> as core::ops::index::IndexMut<I>>::index_mut
  %_46 = invoke align 4 ptr @"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h3c4aa52d848bc3f8E"(ptr align 8 %bw, i64 %_50.0, ptr align 8 @alloc_f2d847fe1a2be999980fa7ef23bc85c6)
          to label %bb22 unwind label %cleanup3

panic5:                                           ; preds = %bb20
; invoke core::panicking::panic_const::panic_const_sub_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_sub_overflow17h134cc1a7f93654deE(ptr align 8 @alloc_f4438e9f4021604eff278bb75ac04b9a) #24
          to label %unreachable unwind label %cleanup3

bb22:                                             ; preds = %bb21
  store i32 %_41, ptr %_46, align 4
  %_55 = sext i32 %n to i64
  %_56.0 = sub i64 %_55, 1
  %_56.1 = icmp ult i64 %_55, 1
  br i1 %_56.1, label %panic6, label %bb23

bb23:                                             ; preds = %bb22
; invoke core::iter::traits::iterator::Iterator::rev
  %27 = invoke { i64, i64 } @_ZN4core4iter6traits8iterator8Iterator3rev17h8ff95f70ac164ffeE(i64 0, i64 %_56.0)
          to label %bb24 unwind label %cleanup3

panic6:                                           ; preds = %bb22
; invoke core::panicking::panic_const::panic_const_sub_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_sub_overflow17h134cc1a7f93654deE(ptr align 8 @alloc_80c6a3752f580d8a63ac5df177c988f3) #24
          to label %unreachable unwind label %cleanup3

bb24:                                             ; preds = %bb23
  %_52.0 = extractvalue { i64, i64 } %27, 0
  %_52.1 = extractvalue { i64, i64 } %27, 1
; invoke <I as core::iter::traits::collect::IntoIterator>::into_iter
  %28 = invoke { i64, i64 } @"_ZN63_$LT$I$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17ha74730a3a182b31fE"(i64 %_52.0, i64 %_52.1)
          to label %bb25 unwind label %cleanup3

bb25:                                             ; preds = %bb24
  %_51.0 = extractvalue { i64, i64 } %28, 0
  %_51.1 = extractvalue { i64, i64 } %28, 1
  store i64 %_51.0, ptr %iter1, align 8
  %29 = getelementptr inbounds i8, ptr %iter1, i64 8
  store i64 %_51.1, ptr %29, align 8
  br label %bb26

bb26:                                             ; preds = %bb35, %bb25
; invoke <core::iter::adapters::rev::Rev<I> as core::iter::traits::iterator::Iterator>::next
  %30 = invoke { i64, i64 } @"_ZN98_$LT$core..iter..adapters..rev..Rev$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h3d15125a1f37bfdbE"(ptr align 8 %iter1)
          to label %bb27 unwind label %cleanup3

bb27:                                             ; preds = %bb26
  %31 = extractvalue { i64, i64 } %30, 0
  %32 = extractvalue { i64, i64 } %30, 1
  store i64 %31, ptr %_58, align 8
  %33 = getelementptr inbounds i8, ptr %_58, i64 8
  store i64 %32, ptr %33, align 8
  %_60 = load i64, ptr %_58, align 8
  %34 = getelementptr inbounds i8, ptr %_58, i64 8
  %35 = load i64, ptr %34, align 8
  %36 = trunc nuw i64 %_60 to i1
  br i1 %36, label %bb28, label %bb29

bb28:                                             ; preds = %bb27
  %37 = getelementptr inbounds i8, ptr %_58, i64 8
  %i11 = load i64, ptr %37, align 8
  %_64 = icmp ult i64 %i11, 2
  br i1 %_64, label %bb30, label %panic12

bb29:                                             ; preds = %bb27
  %38 = load i32, ptr %max_so_far, align 4
  store i32 %38, ptr %fans, align 4
  %_80 = sext i32 %n to i64
  %_81.0 = sub i64 %_80, 1
  %_81.1 = icmp ult i64 %_80, 1
  br i1 %_81.1, label %panic7, label %bb36

bb36:                                             ; preds = %bb29
; invoke <I as core::iter::traits::collect::IntoIterator>::into_iter
  %39 = invoke { i64, i64 } @"_ZN63_$LT$I$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17h61b7a99500f813e3E"(i64 1, i64 %_81.0)
          to label %bb37 unwind label %cleanup3

panic7:                                           ; preds = %bb29
; invoke core::panicking::panic_const::panic_const_sub_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_sub_overflow17h134cc1a7f93654deE(ptr align 8 @alloc_37cf167da451f8cbede18ff689b04b08) #24
          to label %unreachable unwind label %cleanup3

bb37:                                             ; preds = %bb36
  %_77.0 = extractvalue { i64, i64 } %39, 0
  %_77.1 = extractvalue { i64, i64 } %39, 1
  store i64 %_77.0, ptr %iter2, align 8
  %40 = getelementptr inbounds i8, ptr %iter2, i64 8
  store i64 %_77.1, ptr %40, align 8
  br label %bb38

bb38:                                             ; preds = %bb47, %bb37
; invoke core::iter::range::<impl core::iter::traits::iterator::Iterator for core::ops::range::Range<A>>::next
  %41 = invoke { i64, i64 } @"_ZN4core4iter5range101_$LT$impl$u20$core..iter..traits..iterator..Iterator$u20$for$u20$core..ops..range..Range$LT$A$GT$$GT$4next17hc9b6ed56c37c797fE"(ptr align 8 %iter2)
          to label %bb39 unwind label %cleanup3

bb39:                                             ; preds = %bb38
  %42 = extractvalue { i64, i64 } %41, 0
  %43 = extractvalue { i64, i64 } %41, 1
  store i64 %42, ptr %_83, align 8
  %44 = getelementptr inbounds i8, ptr %_83, i64 8
  store i64 %43, ptr %44, align 8
  %_85 = load i64, ptr %_83, align 8
  %45 = getelementptr inbounds i8, ptr %_83, i64 8
  %46 = load i64, ptr %45, align 8
  %47 = trunc nuw i64 %_85 to i1
  br i1 %47, label %bb40, label %bb41

bb40:                                             ; preds = %bb39
  %48 = getelementptr inbounds i8, ptr %_83, i64 8
  %i = load i64, ptr %48, align 8
  %_88 = load i32, ptr %fans, align 4
  %_94.0 = sub i64 %i, 1
  %_94.1 = icmp ult i64 %i, 1
  br i1 %_94.1, label %panic8, label %bb42

bb41:                                             ; preds = %bb39
  %_0 = load i32, ptr %fans, align 4
; invoke core::ptr::drop_in_place<alloc::vec::Vec<i32>>
  invoke void @"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17ha55da6ed4c74d06bE"(ptr align 8 %bw)
          to label %bb48 unwind label %cleanup

bb48:                                             ; preds = %bb41
; call core::ptr::drop_in_place<alloc::vec::Vec<i32>>
  call void @"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17ha55da6ed4c74d06bE"(ptr align 8 %fw)
  ret i32 %_0

bb42:                                             ; preds = %bb40
; invoke <alloc::vec::Vec<T,A> as core::ops::index::Index<I>>::index
  %_91 = invoke align 4 ptr @"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17ha8405fbbd843e464E"(ptr align 8 %fw, i64 %_94.0, ptr align 8 @alloc_8c19a63d4967de99ab837b1fc0812ccb)
          to label %bb43 unwind label %cleanup3

panic8:                                           ; preds = %bb40
; invoke core::panicking::panic_const::panic_const_sub_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_sub_overflow17h134cc1a7f93654deE(ptr align 8 @alloc_dd4280b06085bea7320f3a6fae896e6d) #24
          to label %unreachable unwind label %cleanup3

bb43:                                             ; preds = %bb42
  %_90 = load i32, ptr %_91, align 4
  %_99.0 = add i64 %i, 1
  %_99.1 = icmp ult i64 %_99.0, %i
  br i1 %_99.1, label %panic9, label %bb44

bb44:                                             ; preds = %bb43
; invoke <alloc::vec::Vec<T,A> as core::ops::index::Index<I>>::index
  %_96 = invoke align 4 ptr @"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17ha8405fbbd843e464E"(ptr align 8 %bw, i64 %_99.0, ptr align 8 @alloc_883d673306f28b021e4d6f2e6164b27d)
          to label %bb45 unwind label %cleanup3

panic9:                                           ; preds = %bb43
; invoke core::panicking::panic_const::panic_const_add_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_a4ab80a8185749c3a9047633dc3e796c) #24
          to label %unreachable unwind label %cleanup3

bb45:                                             ; preds = %bb44
  %_95 = load i32, ptr %_96, align 4
  %49 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %_90, i32 %_95)
  %_100.0 = extractvalue { i32, i1 } %49, 0
  %_100.1 = extractvalue { i32, i1 } %49, 1
  br i1 %_100.1, label %panic10, label %bb46

bb46:                                             ; preds = %bb45
  %_87 = invoke i32 @max(i32 %_88, i32 %_100.0)
          to label %bb47 unwind label %cleanup3

panic10:                                          ; preds = %bb45
; invoke core::panicking::panic_const::panic_const_add_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_793522281c1ea48962c3341adc146da4) #24
          to label %unreachable unwind label %cleanup3

bb47:                                             ; preds = %bb46
  store i32 %_87, ptr %fans, align 4
  br label %bb38

bb30:                                             ; preds = %bb28
  %50 = getelementptr inbounds nuw i32, ptr %arr, i64 %i11
  %_63 = load i32, ptr %50, align 4
  %_66 = load i32, ptr %cur_max, align 4
  %_68 = icmp ult i64 %i11, 2
  br i1 %_68, label %bb31, label %panic13

panic12:                                          ; preds = %bb28
; invoke core::panicking::panic_bounds_check
  invoke void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 %i11, i64 2, ptr align 8 @alloc_e175502f438f7f9901862b6ae3985e81) #24
          to label %unreachable unwind label %cleanup3

bb31:                                             ; preds = %bb30
  %51 = getelementptr inbounds nuw i32, ptr %arr, i64 %i11
  %_67 = load i32, ptr %51, align 4
  %52 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %_66, i32 %_67)
  %_69.0 = extractvalue { i32, i1 } %52, 0
  %_69.1 = extractvalue { i32, i1 } %52, 1
  br i1 %_69.1, label %panic14, label %bb32

panic13:                                          ; preds = %bb30
; invoke core::panicking::panic_bounds_check
  invoke void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 %i11, i64 2, ptr align 8 @alloc_d5c3f1698b4b09adb86dc5fcd7cab48f) #24
          to label %unreachable unwind label %cleanup3

bb32:                                             ; preds = %bb31
  %_62 = invoke i32 @max(i32 %_63, i32 %_69.0)
          to label %bb33 unwind label %cleanup3

panic14:                                          ; preds = %bb31
; invoke core::panicking::panic_const::panic_const_add_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_94a4da013f660b3d2e4cebd4ab5c010f) #24
          to label %unreachable unwind label %cleanup3

bb33:                                             ; preds = %bb32
  store i32 %_62, ptr %cur_max, align 4
  %_71 = load i32, ptr %max_so_far, align 4
  %_72 = load i32, ptr %cur_max, align 4
  %_70 = invoke i32 @max(i32 %_71, i32 %_72)
          to label %bb34 unwind label %cleanup3

bb34:                                             ; preds = %bb33
  store i32 %_70, ptr %max_so_far, align 4
  %_73 = load i32, ptr %cur_max, align 4
; invoke <alloc::vec::Vec<T,A> as core::ops::index::IndexMut<I>>::index_mut
  %_74 = invoke align 4 ptr @"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h3c4aa52d848bc3f8E"(ptr align 8 %bw, i64 %i11, ptr align 8 @alloc_8b0cfbe4c82c8877974daeb90fda143e)
          to label %bb35 unwind label %cleanup3

bb35:                                             ; preds = %bb34
  store i32 %_73, ptr %_74, align 4
  br label %bb26

bb13:                                             ; preds = %bb11
  %53 = getelementptr inbounds nuw i32, ptr %arr, i64 %i15
  %_27 = load i32, ptr %53, align 4
  %_30 = load i32, ptr %cur_max, align 4
  %_32 = icmp ult i64 %i15, 2
  br i1 %_32, label %bb14, label %panic17

panic16:                                          ; preds = %bb11
; invoke core::panicking::panic_bounds_check
  invoke void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 %i15, i64 2, ptr align 8 @alloc_735b14aff704636fdb9148ed047c609b) #24
          to label %unreachable unwind label %cleanup3

bb14:                                             ; preds = %bb13
  %54 = getelementptr inbounds nuw i32, ptr %arr, i64 %i15
  %_31 = load i32, ptr %54, align 4
  %55 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %_30, i32 %_31)
  %_33.0 = extractvalue { i32, i1 } %55, 0
  %_33.1 = extractvalue { i32, i1 } %55, 1
  br i1 %_33.1, label %panic18, label %bb15

panic17:                                          ; preds = %bb13
; invoke core::panicking::panic_bounds_check
  invoke void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 %i15, i64 2, ptr align 8 @alloc_35a252acd8492297b3254c66c6f189b1) #24
          to label %unreachable unwind label %cleanup3

bb15:                                             ; preds = %bb14
  %_26 = invoke i32 @max(i32 %_27, i32 %_33.0)
          to label %bb16 unwind label %cleanup3

panic18:                                          ; preds = %bb14
; invoke core::panicking::panic_const::panic_const_add_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_6b7b9bf485c64ef47c63ddd2c328d3dd) #24
          to label %unreachable unwind label %cleanup3

bb16:                                             ; preds = %bb15
  store i32 %_26, ptr %cur_max, align 4
  %_35 = load i32, ptr %max_so_far, align 4
  %_36 = load i32, ptr %cur_max, align 4
  %_34 = invoke i32 @max(i32 %_35, i32 %_36)
          to label %bb17 unwind label %cleanup3

bb17:                                             ; preds = %bb16
  store i32 %_34, ptr %max_so_far, align 4
  %_37 = load i32, ptr %cur_max, align 4
; invoke <alloc::vec::Vec<T,A> as core::ops::index::IndexMut<I>>::index_mut
  %_38 = invoke align 4 ptr @"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h3c4aa52d848bc3f8E"(ptr align 8 %fw, i64 %i15, ptr align 8 @alloc_6ee9dddbfafb43511fdfcbd0992f416a)
          to label %bb18 unwind label %cleanup3

bb18:                                             ; preds = %bb17
  store i32 %_37, ptr %_38, align 4
  br label %bb8

bb10:                                             ; No predecessors!
  unreachable

terminate:                                        ; preds = %bb51, %bb50
  %56 = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer
; call core::panicking::panic_in_cleanup
  call void @_ZN4core9panicking16panic_in_cleanup17h5f6bde45d17ae243E() #20
  unreachable

bb52:                                             ; preds = %bb51
  %57 = load ptr, ptr %1, align 8
  %58 = getelementptr inbounds i8, ptr %1, i64 8
  %59 = load i32, ptr %58, align 8
  %60 = insertvalue { ptr, i32 } poison, ptr %57, 0
  %61 = insertvalue { ptr, i32 } %60, i32 %59, 1
  resume { ptr, i32 } %61
}

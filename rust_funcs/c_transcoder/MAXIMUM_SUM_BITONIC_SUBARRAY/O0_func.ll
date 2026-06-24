define i32 @f_gold(i64 %0, i32 %n) unnamed_addr #3 personality ptr @rust_eh_personality {
start:
  %1 = alloca [16 x i8], align 8
  %_88 = alloca [16 x i8], align 8
  %iter2 = alloca [16 x i8], align 8
  %_59 = alloca [16 x i8], align 8
  %iter1 = alloca [16 x i8], align 8
  %_17 = alloca [16 x i8], align 8
  %iter = alloca [16 x i8], align 8
  %max_sum = alloca [4 x i8], align 4
  %msds = alloca [24 x i8], align 8
  %msis = alloca [24 x i8], align 8
  %2 = alloca [8 x i8], align 8
  %arr = alloca [8 x i8], align 4
  store i64 %0, ptr %2, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %arr, ptr align 8 %2, i64 8, i1 false)
  %_4 = sext i32 %n to i64
; call alloc::vec::from_elem
  call void @_ZN5alloc3vec9from_elem17h8f8687e423452488E(ptr sret([24 x i8]) align 8 %msis, i32 0, i64 %_4)
  %_6 = sext i32 %n to i64
; invoke alloc::vec::from_elem
  invoke void @_ZN5alloc3vec9from_elem17h8f8687e423452488E(ptr sret([24 x i8]) align 8 %msds, i32 0, i64 %_6)
          to label %bb2 unwind label %cleanup

bb65:                                             ; preds = %bb64, %cleanup
; invoke core::ptr::drop_in_place<alloc::vec::Vec<i32>>
  invoke void @"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17h9df7c300f3382554E"(ptr align 8 %msis) #22
          to label %bb66 unwind label %terminate

cleanup:                                          ; preds = %bb50, %start
  %3 = landingpad { ptr, i32 }
          cleanup
  %4 = extractvalue { ptr, i32 } %3, 0
  %5 = extractvalue { ptr, i32 } %3, 1
  store ptr %4, ptr %1, align 8
  %6 = getelementptr inbounds i8, ptr %1, i64 8
  store i32 %5, ptr %6, align 8
  br label %bb65

bb2:                                              ; preds = %start
  store i32 -2147483648, ptr %max_sum, align 4
  br label %bb3

bb3:                                              ; preds = %bb2
  %7 = getelementptr inbounds nuw i32, ptr %arr, i64 0
  %_8 = load i32, ptr %7, align 4
; invoke <alloc::vec::Vec<T,A> as core::ops::index::IndexMut<I>>::index_mut
  %_11 = invoke align 4 ptr @"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17hfdac3c30e89ddd5aE"(ptr align 8 %msis, i64 0, ptr align 8 @alloc_1238272fdef0c99ba1dac010e6d59982)
          to label %bb4 unwind label %cleanup3

bb64:                                             ; preds = %cleanup3
; invoke core::ptr::drop_in_place<alloc::vec::Vec<i32>>
  invoke void @"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17h9df7c300f3382554E"(ptr align 8 %msds) #22
          to label %bb65 unwind label %terminate

cleanup3:                                         ; preds = %bb18, %panic28, %panic27, %bb15, %panic26, %bb21, %panic25, %panic24, %panic23, %panic22, %bb41, %panic20, %panic19, %bb38, %panic18, %bb44, %panic17, %panic16, %panic15, %panic14, %panic12, %panic11, %panic10, %bb57, %bb56, %panic9, %panic8, %panic7, %bb51, %bb49, %bb47, %bb33, %bb30, %bb28, %bb27, %panic6, %bb25, %panic5, %panic4, %panic, %bb6, %bb4, %bb3
  %8 = landingpad { ptr, i32 }
          cleanup
  %9 = extractvalue { ptr, i32 } %8, 0
  %10 = extractvalue { ptr, i32 } %8, 1
  store ptr %9, ptr %1, align 8
  %11 = getelementptr inbounds i8, ptr %1, i64 8
  store i32 %10, ptr %11, align 8
  br label %bb64

bb4:                                              ; preds = %bb3
  store i32 %_8, ptr %_11, align 4
  %_15 = sext i32 %n to i64
; invoke <I as core::iter::traits::collect::IntoIterator>::into_iter
  %12 = invoke { i64, i64 } @"_ZN63_$LT$I$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17h1b08a3e849858e26E"(i64 1, i64 %_15)
          to label %bb5 unwind label %cleanup3

bb5:                                              ; preds = %bb4
  %_13.0 = extractvalue { i64, i64 } %12, 0
  %_13.1 = extractvalue { i64, i64 } %12, 1
  store i64 %_13.0, ptr %iter, align 8
  %13 = getelementptr inbounds i8, ptr %iter, i64 8
  store i64 %_13.1, ptr %13, align 8
  br label %bb6

bb6:                                              ; preds = %bb19, %bb22, %bb5
; invoke core::iter::range::<impl core::iter::traits::iterator::Iterator for core::ops::range::Range<A>>::next
  %14 = invoke { i64, i64 } @"_ZN4core4iter5range101_$LT$impl$u20$core..iter..traits..iterator..Iterator$u20$for$u20$core..ops..range..Range$LT$A$GT$$GT$4next17haa7f04a76ae9bd85E"(ptr align 8 %iter)
          to label %bb7 unwind label %cleanup3

bb7:                                              ; preds = %bb6
  %15 = extractvalue { i64, i64 } %14, 0
  %16 = extractvalue { i64, i64 } %14, 1
  store i64 %15, ptr %_17, align 8
  %17 = getelementptr inbounds i8, ptr %_17, i64 8
  store i64 %16, ptr %17, align 8
  %_19 = load i64, ptr %_17, align 8
  %18 = getelementptr inbounds i8, ptr %_17, i64 8
  %19 = load i64, ptr %18, align 8
  %20 = trunc nuw i64 %_19 to i1
  br i1 %20, label %bb9, label %bb10

bb9:                                              ; preds = %bb7
  %21 = getelementptr inbounds i8, ptr %_17, i64 8
  %i21 = load i64, ptr %21, align 8
  %_23 = icmp ult i64 %i21, 2
  br i1 %_23, label %bb11, label %panic22

bb10:                                             ; preds = %bb7
  %_44 = sext i32 %n to i64
  %_45.0 = sub i64 %_44, 1
  %_45.1 = icmp ult i64 %_44, 1
  br i1 %_45.1, label %panic, label %bb23

bb23:                                             ; preds = %bb10
  %_46 = icmp ult i64 %_45.0, 2
  br i1 %_46, label %bb24, label %panic4

panic:                                            ; preds = %bb10
; invoke core::panicking::panic_const::panic_const_sub_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_sub_overflow17h134cc1a7f93654deE(ptr align 8 @alloc_12d1e7a398d32c4aa0f3eb2363dedd1a) #24
          to label %unreachable unwind label %cleanup3

unreachable:                                      ; preds = %panic28, %panic27, %panic26, %panic25, %panic24, %panic23, %panic22, %panic20, %panic19, %panic18, %panic17, %panic16, %panic15, %panic14, %panic12, %panic11, %panic10, %panic9, %panic8, %panic7, %panic6, %panic5, %panic4, %panic
  unreachable

bb24:                                             ; preds = %bb23
  %22 = getelementptr inbounds nuw i32, ptr %arr, i64 %_45.0
  %_42 = load i32, ptr %22, align 4
  %_50 = sext i32 %n to i64
  %_51.0 = sub i64 %_50, 1
  %_51.1 = icmp ult i64 %_50, 1
  br i1 %_51.1, label %panic5, label %bb25

panic4:                                           ; preds = %bb23
; invoke core::panicking::panic_bounds_check
  invoke void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 %_45.0, i64 2, ptr align 8 @alloc_a43e1d8c1f066a5c6d1f4066a83d6ee5) #24
          to label %unreachable unwind label %cleanup3

bb25:                                             ; preds = %bb24
; invoke <alloc::vec::Vec<T,A> as core::ops::index::IndexMut<I>>::index_mut
  %_47 = invoke align 4 ptr @"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17hfdac3c30e89ddd5aE"(ptr align 8 %msds, i64 %_51.0, ptr align 8 @alloc_d307679156cea0526a4da0d5e5cc5304)
          to label %bb26 unwind label %cleanup3

panic5:                                           ; preds = %bb24
; invoke core::panicking::panic_const::panic_const_sub_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_sub_overflow17h134cc1a7f93654deE(ptr align 8 @alloc_53155f702345f822668117811687d724) #24
          to label %unreachable unwind label %cleanup3

bb26:                                             ; preds = %bb25
  store i32 %_42, ptr %_47, align 4
  %_56 = sext i32 %n to i64
  %_57.0 = sub i64 %_56, 1
  %_57.1 = icmp ult i64 %_56, 1
  br i1 %_57.1, label %panic6, label %bb27

bb27:                                             ; preds = %bb26
; invoke core::iter::traits::iterator::Iterator::rev
  %23 = invoke { i64, i64 } @_ZN4core4iter6traits8iterator8Iterator3rev17h00e7cf5bf6fd8d38E(i64 0, i64 %_57.0)
          to label %bb28 unwind label %cleanup3

panic6:                                           ; preds = %bb26
; invoke core::panicking::panic_const::panic_const_sub_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_sub_overflow17h134cc1a7f93654deE(ptr align 8 @alloc_45088ec6df635f3c4bb73820358b6b09) #24
          to label %unreachable unwind label %cleanup3

bb28:                                             ; preds = %bb27
  %_53.0 = extractvalue { i64, i64 } %23, 0
  %_53.1 = extractvalue { i64, i64 } %23, 1
; invoke <I as core::iter::traits::collect::IntoIterator>::into_iter
  %24 = invoke { i64, i64 } @"_ZN63_$LT$I$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17hce174a64f34faf9bE"(i64 %_53.0, i64 %_53.1)
          to label %bb29 unwind label %cleanup3

bb29:                                             ; preds = %bb28
  %_52.0 = extractvalue { i64, i64 } %24, 0
  %_52.1 = extractvalue { i64, i64 } %24, 1
  store i64 %_52.0, ptr %iter1, align 8
  %25 = getelementptr inbounds i8, ptr %iter1, i64 8
  store i64 %_52.1, ptr %25, align 8
  br label %bb30

bb30:                                             ; preds = %bb42, %bb45, %bb29
; invoke <core::iter::adapters::rev::Rev<I> as core::iter::traits::iterator::Iterator>::next
  %26 = invoke { i64, i64 } @"_ZN98_$LT$core..iter..adapters..rev..Rev$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h88248d3215c34aeaE"(ptr align 8 %iter1)
          to label %bb31 unwind label %cleanup3

bb31:                                             ; preds = %bb30
  %27 = extractvalue { i64, i64 } %26, 0
  %28 = extractvalue { i64, i64 } %26, 1
  store i64 %27, ptr %_59, align 8
  %29 = getelementptr inbounds i8, ptr %_59, i64 8
  store i64 %28, ptr %29, align 8
  %_61 = load i64, ptr %_59, align 8
  %30 = getelementptr inbounds i8, ptr %_59, i64 8
  %31 = load i64, ptr %30, align 8
  %32 = trunc nuw i64 %_61 to i1
  br i1 %32, label %bb32, label %bb33

bb32:                                             ; preds = %bb31
  %33 = getelementptr inbounds i8, ptr %_59, i64 8
  %i13 = load i64, ptr %33, align 8
  %_65 = icmp ult i64 %i13, 2
  br i1 %_65, label %bb34, label %panic14

bb33:                                             ; preds = %bb31
  %_86 = sext i32 %n to i64
; invoke <I as core::iter::traits::collect::IntoIterator>::into_iter
  %34 = invoke { i64, i64 } @"_ZN63_$LT$I$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17h1b08a3e849858e26E"(i64 0, i64 %_86)
          to label %bb46 unwind label %cleanup3

bb46:                                             ; preds = %bb33
  %_84.0 = extractvalue { i64, i64 } %34, 0
  %_84.1 = extractvalue { i64, i64 } %34, 1
  store i64 %_84.0, ptr %iter2, align 8
  %35 = getelementptr inbounds i8, ptr %iter2, i64 8
  store i64 %_84.1, ptr %35, align 8
  br label %bb47

bb47:                                             ; preds = %bb61, %bb55, %bb46
; invoke core::iter::range::<impl core::iter::traits::iterator::Iterator for core::ops::range::Range<A>>::next
  %36 = invoke { i64, i64 } @"_ZN4core4iter5range101_$LT$impl$u20$core..iter..traits..iterator..Iterator$u20$for$u20$core..ops..range..Range$LT$A$GT$$GT$4next17haa7f04a76ae9bd85E"(ptr align 8 %iter2)
          to label %bb48 unwind label %cleanup3

bb48:                                             ; preds = %bb47
  %37 = extractvalue { i64, i64 } %36, 0
  %38 = extractvalue { i64, i64 } %36, 1
  store i64 %37, ptr %_88, align 8
  %39 = getelementptr inbounds i8, ptr %_88, i64 8
  store i64 %38, ptr %39, align 8
  %_90 = load i64, ptr %_88, align 8
  %40 = getelementptr inbounds i8, ptr %_88, i64 8
  %41 = load i64, ptr %40, align 8
  %42 = trunc nuw i64 %_90 to i1
  br i1 %42, label %bb49, label %bb50

bb49:                                             ; preds = %bb48
  %43 = getelementptr inbounds i8, ptr %_88, i64 8
  %i = load i64, ptr %43, align 8
  %_93 = load i32, ptr %max_sum, align 4
; invoke <alloc::vec::Vec<T,A> as core::ops::index::Index<I>>::index
  %_97 = invoke align 4 ptr @"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hbbe45dcd4d6bed07E"(ptr align 8 %msis, i64 %i, ptr align 8 @alloc_6f34f36b13b9729523775e2a07624753)
          to label %bb51 unwind label %cleanup3

bb50:                                             ; preds = %bb48
  %_0 = load i32, ptr %max_sum, align 4
; invoke core::ptr::drop_in_place<alloc::vec::Vec<i32>>
  invoke void @"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17h9df7c300f3382554E"(ptr align 8 %msds)
          to label %bb62 unwind label %cleanup

bb62:                                             ; preds = %bb50
; call core::ptr::drop_in_place<alloc::vec::Vec<i32>>
  call void @"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17h9df7c300f3382554E"(ptr align 8 %msis)
  ret i32 %_0

bb51:                                             ; preds = %bb49
  %_96 = load i32, ptr %_97, align 4
; invoke <alloc::vec::Vec<T,A> as core::ops::index::Index<I>>::index
  %_100 = invoke align 4 ptr @"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hbbe45dcd4d6bed07E"(ptr align 8 %msds, i64 %i, ptr align 8 @alloc_cf4897ae80a9914008614410d99e729b)
          to label %bb52 unwind label %cleanup3

bb52:                                             ; preds = %bb51
  %_99 = load i32, ptr %_100, align 4
  %44 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %_96, i32 %_99)
  %_102.0 = extractvalue { i32, i1 } %44, 0
  %_102.1 = extractvalue { i32, i1 } %44, 1
  br i1 %_102.1, label %panic7, label %bb53

bb53:                                             ; preds = %bb52
  %_104 = icmp ult i64 %i, 2
  br i1 %_104, label %bb54, label %panic8

panic7:                                           ; preds = %bb52
; invoke core::panicking::panic_const::panic_const_add_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_b6c6926ebadaf687740aff3d744e1753) #24
          to label %unreachable unwind label %cleanup3

bb54:                                             ; preds = %bb53
  %45 = getelementptr inbounds nuw i32, ptr %arr, i64 %i
  %_103 = load i32, ptr %45, align 4
  %46 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %_102.0, i32 %_103)
  %_105.0 = extractvalue { i32, i1 } %46, 0
  %_105.1 = extractvalue { i32, i1 } %46, 1
  br i1 %_105.1, label %panic9, label %bb55

panic8:                                           ; preds = %bb53
; invoke core::panicking::panic_bounds_check
  invoke void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 %i, i64 2, ptr align 8 @alloc_b0d2618b4e047bde2d09e863f242e3cd) #24
          to label %unreachable unwind label %cleanup3

bb55:                                             ; preds = %bb54
  %_92 = icmp slt i32 %_93, %_105.0
  br i1 %_92, label %bb56, label %bb47

panic9:                                           ; preds = %bb54
; invoke core::panicking::panic_const::panic_const_sub_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_sub_overflow17h134cc1a7f93654deE(ptr align 8 @alloc_f29201f6fb8ccad41f044002e69cea94) #24
          to label %unreachable unwind label %cleanup3

bb56:                                             ; preds = %bb55
; invoke <alloc::vec::Vec<T,A> as core::ops::index::Index<I>>::index
  %_108 = invoke align 4 ptr @"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hbbe45dcd4d6bed07E"(ptr align 8 %msis, i64 %i, ptr align 8 @alloc_1634bc6f4c37bc49c4839c72afc7486e)
          to label %bb57 unwind label %cleanup3

bb57:                                             ; preds = %bb56
  %_107 = load i32, ptr %_108, align 4
; invoke <alloc::vec::Vec<T,A> as core::ops::index::Index<I>>::index
  %_111 = invoke align 4 ptr @"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hbbe45dcd4d6bed07E"(ptr align 8 %msds, i64 %i, ptr align 8 @alloc_9578bfdbe2b784052cae221144d88c02)
          to label %bb58 unwind label %cleanup3

bb58:                                             ; preds = %bb57
  %_110 = load i32, ptr %_111, align 4
  %47 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %_107, i32 %_110)
  %_113.0 = extractvalue { i32, i1 } %47, 0
  %_113.1 = extractvalue { i32, i1 } %47, 1
  br i1 %_113.1, label %panic10, label %bb59

bb59:                                             ; preds = %bb58
  %_115 = icmp ult i64 %i, 2
  br i1 %_115, label %bb60, label %panic11

panic10:                                          ; preds = %bb58
; invoke core::panicking::panic_const::panic_const_add_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_fe4f789be8e8e9af96048f00e81fed5f) #24
          to label %unreachable unwind label %cleanup3

bb60:                                             ; preds = %bb59
  %48 = getelementptr inbounds nuw i32, ptr %arr, i64 %i
  %_114 = load i32, ptr %48, align 4
  %49 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %_113.0, i32 %_114)
  %_116.0 = extractvalue { i32, i1 } %49, 0
  %_116.1 = extractvalue { i32, i1 } %49, 1
  br i1 %_116.1, label %panic12, label %bb61

panic11:                                          ; preds = %bb59
; invoke core::panicking::panic_bounds_check
  invoke void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 %i, i64 2, ptr align 8 @alloc_e1ada2ddee3c06da9a28a361756c7d32) #24
          to label %unreachable unwind label %cleanup3

bb61:                                             ; preds = %bb60
  store i32 %_116.0, ptr %max_sum, align 4
  br label %bb47

panic12:                                          ; preds = %bb60
; invoke core::panicking::panic_const::panic_const_sub_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_sub_overflow17h134cc1a7f93654deE(ptr align 8 @alloc_fe4f789be8e8e9af96048f00e81fed5f) #24
          to label %unreachable unwind label %cleanup3

bb34:                                             ; preds = %bb32
  %50 = getelementptr inbounds nuw i32, ptr %arr, i64 %i13
  %_64 = load i32, ptr %50, align 4
  %_68.0 = add i64 %i13, 1
  %_68.1 = icmp ult i64 %_68.0, %i13
  br i1 %_68.1, label %panic15, label %bb35

panic14:                                          ; preds = %bb32
; invoke core::panicking::panic_bounds_check
  invoke void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 %i13, i64 2, ptr align 8 @alloc_15850d54fe97227ba8dd5da114686983) #24
          to label %unreachable unwind label %cleanup3

bb35:                                             ; preds = %bb34
  %_69 = icmp ult i64 %_68.0, 2
  br i1 %_69, label %bb36, label %panic16

panic15:                                          ; preds = %bb34
; invoke core::panicking::panic_const::panic_const_add_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_af5bb656415b5de64f80972229bba796) #24
          to label %unreachable unwind label %cleanup3

bb36:                                             ; preds = %bb35
  %51 = getelementptr inbounds nuw i32, ptr %arr, i64 %_68.0
  %_66 = load i32, ptr %51, align 4
  %_63 = icmp sgt i32 %_64, %_66
  br i1 %_63, label %bb37, label %bb43

panic16:                                          ; preds = %bb35
; invoke core::panicking::panic_bounds_check
  invoke void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 %_68.0, i64 2, ptr align 8 @alloc_3ea2d52115a210be7a6b65f9d6c5ea22) #24
          to label %unreachable unwind label %cleanup3

bb43:                                             ; preds = %bb36
  %_81 = icmp ult i64 %i13, 2
  br i1 %_81, label %bb44, label %panic17

bb37:                                             ; preds = %bb36
  %_74.0 = add i64 %i13, 1
  %_74.1 = icmp ult i64 %_74.0, %i13
  br i1 %_74.1, label %panic18, label %bb38

bb44:                                             ; preds = %bb43
  %52 = getelementptr inbounds nuw i32, ptr %arr, i64 %i13
  %_80 = load i32, ptr %52, align 4
; invoke <alloc::vec::Vec<T,A> as core::ops::index::IndexMut<I>>::index_mut
  %_82 = invoke align 4 ptr @"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17hfdac3c30e89ddd5aE"(ptr align 8 %msds, i64 %i13, ptr align 8 @alloc_bfd0eb97786136fa52dced7bdfafdd7d)
          to label %bb45 unwind label %cleanup3

panic17:                                          ; preds = %bb43
; invoke core::panicking::panic_bounds_check
  invoke void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 %i13, i64 2, ptr align 8 @alloc_755c650b4ac6a48a2a9efbccfad365b6) #24
          to label %unreachable unwind label %cleanup3

bb45:                                             ; preds = %bb44
  store i32 %_80, ptr %_82, align 4
  br label %bb30

bb38:                                             ; preds = %bb37
; invoke <alloc::vec::Vec<T,A> as core::ops::index::Index<I>>::index
  %_71 = invoke align 4 ptr @"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hbbe45dcd4d6bed07E"(ptr align 8 %msds, i64 %_74.0, ptr align 8 @alloc_83ce222f45769c08900ddf3fc097d762)
          to label %bb39 unwind label %cleanup3

panic18:                                          ; preds = %bb37
; invoke core::panicking::panic_const::panic_const_add_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_3fe77a7b7d8c71df9d75e8be26530a54) #24
          to label %unreachable unwind label %cleanup3

bb39:                                             ; preds = %bb38
  %_70 = load i32, ptr %_71, align 4
  %_76 = icmp ult i64 %i13, 2
  br i1 %_76, label %bb40, label %panic19

bb40:                                             ; preds = %bb39
  %53 = getelementptr inbounds nuw i32, ptr %arr, i64 %i13
  %_75 = load i32, ptr %53, align 4
  %54 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %_70, i32 %_75)
  %_77.0 = extractvalue { i32, i1 } %54, 0
  %_77.1 = extractvalue { i32, i1 } %54, 1
  br i1 %_77.1, label %panic20, label %bb41

panic19:                                          ; preds = %bb39
; invoke core::panicking::panic_bounds_check
  invoke void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 %i13, i64 2, ptr align 8 @alloc_35c04af74ade0430b6ec13b50629c4ad) #24
          to label %unreachable unwind label %cleanup3

bb41:                                             ; preds = %bb40
; invoke <alloc::vec::Vec<T,A> as core::ops::index::IndexMut<I>>::index_mut
  %_78 = invoke align 4 ptr @"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17hfdac3c30e89ddd5aE"(ptr align 8 %msds, i64 %i13, ptr align 8 @alloc_1393f595ef290b77fa7fe2fcb2332695)
          to label %bb42 unwind label %cleanup3

panic20:                                          ; preds = %bb40
; invoke core::panicking::panic_const::panic_const_add_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_598559ea2c45d5a0477df4909e5ddd7c) #24
          to label %unreachable unwind label %cleanup3

bb42:                                             ; preds = %bb41
  store i32 %_77.0, ptr %_78, align 4
  br label %bb30

bb11:                                             ; preds = %bb9
  %55 = getelementptr inbounds nuw i32, ptr %arr, i64 %i21
  %_22 = load i32, ptr %55, align 4
  %_26.0 = sub i64 %i21, 1
  %_26.1 = icmp ult i64 %i21, 1
  br i1 %_26.1, label %panic23, label %bb12

panic22:                                          ; preds = %bb9
; invoke core::panicking::panic_bounds_check
  invoke void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 %i21, i64 2, ptr align 8 @alloc_ded4384f7577f488ca50795bd9641e49) #24
          to label %unreachable unwind label %cleanup3

bb12:                                             ; preds = %bb11
  %_27 = icmp ult i64 %_26.0, 2
  br i1 %_27, label %bb13, label %panic24

panic23:                                          ; preds = %bb11
; invoke core::panicking::panic_const::panic_const_sub_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_sub_overflow17h134cc1a7f93654deE(ptr align 8 @alloc_f2cc04038da3e231687eb5ff497deefe) #24
          to label %unreachable unwind label %cleanup3

bb13:                                             ; preds = %bb12
  %56 = getelementptr inbounds nuw i32, ptr %arr, i64 %_26.0
  %_24 = load i32, ptr %56, align 4
  %_21 = icmp sgt i32 %_22, %_24
  br i1 %_21, label %bb14, label %bb20

panic24:                                          ; preds = %bb12
; invoke core::panicking::panic_bounds_check
  invoke void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 %_26.0, i64 2, ptr align 8 @alloc_265e65c57fc83ab5e86ea253f1fd7ba1) #24
          to label %unreachable unwind label %cleanup3

bb20:                                             ; preds = %bb13
  %_39 = icmp ult i64 %i21, 2
  br i1 %_39, label %bb21, label %panic25

bb14:                                             ; preds = %bb13
  %_32.0 = sub i64 %i21, 1
  %_32.1 = icmp ult i64 %i21, 1
  br i1 %_32.1, label %panic26, label %bb15

bb21:                                             ; preds = %bb20
  %57 = getelementptr inbounds nuw i32, ptr %arr, i64 %i21
  %_38 = load i32, ptr %57, align 4
; invoke <alloc::vec::Vec<T,A> as core::ops::index::IndexMut<I>>::index_mut
  %_40 = invoke align 4 ptr @"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17hfdac3c30e89ddd5aE"(ptr align 8 %msis, i64 %i21, ptr align 8 @alloc_25b7f71928f721eb1ff2487ab577a924)
          to label %bb22 unwind label %cleanup3

panic25:                                          ; preds = %bb20
; invoke core::panicking::panic_bounds_check
  invoke void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 %i21, i64 2, ptr align 8 @alloc_3946fc3981531360c4e4444d25f4b668) #24
          to label %unreachable unwind label %cleanup3

bb22:                                             ; preds = %bb21
  store i32 %_38, ptr %_40, align 4
  br label %bb6

bb15:                                             ; preds = %bb14
; invoke <alloc::vec::Vec<T,A> as core::ops::index::Index<I>>::index
  %_29 = invoke align 4 ptr @"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hbbe45dcd4d6bed07E"(ptr align 8 %msis, i64 %_32.0, ptr align 8 @alloc_89c39a21526fb2838c96210c5b9123ab)
          to label %bb16 unwind label %cleanup3

panic26:                                          ; preds = %bb14
; invoke core::panicking::panic_const::panic_const_sub_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_sub_overflow17h134cc1a7f93654deE(ptr align 8 @alloc_646de6b3e85012d144c012f23191fdd7) #24
          to label %unreachable unwind label %cleanup3

bb16:                                             ; preds = %bb15
  %_28 = load i32, ptr %_29, align 4
  %_34 = icmp ult i64 %i21, 2
  br i1 %_34, label %bb17, label %panic27

bb17:                                             ; preds = %bb16
  %58 = getelementptr inbounds nuw i32, ptr %arr, i64 %i21
  %_33 = load i32, ptr %58, align 4
  %59 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %_28, i32 %_33)
  %_35.0 = extractvalue { i32, i1 } %59, 0
  %_35.1 = extractvalue { i32, i1 } %59, 1
  br i1 %_35.1, label %panic28, label %bb18

panic27:                                          ; preds = %bb16
; invoke core::panicking::panic_bounds_check
  invoke void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 %i21, i64 2, ptr align 8 @alloc_948974d78c02da45a0bf15b617dc2443) #24
          to label %unreachable unwind label %cleanup3

bb18:                                             ; preds = %bb17
; invoke <alloc::vec::Vec<T,A> as core::ops::index::IndexMut<I>>::index_mut
  %_36 = invoke align 4 ptr @"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17hfdac3c30e89ddd5aE"(ptr align 8 %msis, i64 %i21, ptr align 8 @alloc_816f494cf9215d52b7e358927d07f285)
          to label %bb19 unwind label %cleanup3

panic28:                                          ; preds = %bb17
; invoke core::panicking::panic_const::panic_const_add_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_eedcaeacb9d3cbff4afa25092ba480e8) #24
          to label %unreachable unwind label %cleanup3

bb19:                                             ; preds = %bb18
  store i32 %_35.0, ptr %_36, align 4
  br label %bb6

bb8:                                              ; No predecessors!
  unreachable

terminate:                                        ; preds = %bb65, %bb64
  %60 = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer
; call core::panicking::panic_in_cleanup
  call void @_ZN4core9panicking16panic_in_cleanup17h5f6bde45d17ae243E() #20
  unreachable

bb66:                                             ; preds = %bb65
  %61 = load ptr, ptr %1, align 8
  %62 = getelementptr inbounds i8, ptr %1, i64 8
  %63 = load i32, ptr %62, align 8
  %64 = insertvalue { ptr, i32 } poison, ptr %61, 0
  %65 = insertvalue { ptr, i32 } %64, i32 %63, 1
  resume { ptr, i32 } %65
}

define i32 @f_gold(i32 %n, i32 %m) unnamed_addr #3 personality ptr @rust_eh_personality {
start:
  %0 = alloca [16 x i8], align 8
  %_74 = alloca [1 x i8], align 1
  %_43 = alloca [8 x i8], align 4
  %iter3 = alloca [12 x i8], align 4
  %_41 = alloca [12 x i8], align 4
  %_40 = alloca [12 x i8], align 4
  %_36 = alloca [8 x i8], align 4
  %iter2 = alloca [12 x i8], align 4
  %_34 = alloca [12 x i8], align 4
  %_33 = alloca [12 x i8], align 4
  %_25 = alloca [8 x i8], align 4
  %iter1 = alloca [12 x i8], align 4
  %_23 = alloca [12 x i8], align 4
  %_22 = alloca [12 x i8], align 4
  %_14 = alloca [8 x i8], align 4
  %iter = alloca [12 x i8], align 4
  %_12 = alloca [12 x i8], align 4
  %_11 = alloca [12 x i8], align 4
  %_4 = alloca [24 x i8], align 8
  %dp = alloca [24 x i8], align 8
  store i8 0, ptr %_74, align 1
  %_6 = sext i32 %m to i64
  %_7.0 = add i64 %_6, 1
  %_7.1 = icmp ult i64 %_7.0, %_6
  br i1 %_7.1, label %panic, label %bb1

bb1:                                              ; preds = %start
  store i8 1, ptr %_74, align 1
; call alloc::vec::from_elem
  call void @_ZN5alloc3vec9from_elem17he90c0d0a673e26c1E(ptr sret([24 x i8]) align 8 %_4, double 0.000000e+00, i64 %_7.0)
  %_9 = sext i32 %n to i64
  %_10.0 = add i64 %_9, 1
  %_10.1 = icmp ult i64 %_10.0, %_9
  br i1 %_10.1, label %panic4, label %bb3

panic:                                            ; preds = %start
; call core::panicking::panic_const::panic_const_add_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_45f3a240d1e96ca3369a142c65c89336) #23
  unreachable

bb3:                                              ; preds = %bb1
  store i8 0, ptr %_74, align 1
; invoke alloc::vec::from_elem
  invoke void @_ZN5alloc3vec9from_elem17hf296baa3eb6f6c90E(ptr sret([24 x i8]) align 8 %dp, ptr align 8 %_4, i64 %_10.0)
          to label %bb4 unwind label %cleanup

panic4:                                           ; preds = %bb1
; invoke core::panicking::panic_const::panic_const_add_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_d47aff013ce9d59df8a500b63e3af42b) #24
          to label %unreachable unwind label %cleanup

bb47:                                             ; preds = %cleanup
  %1 = load i8, ptr %_74, align 1
  %2 = trunc nuw i8 %1 to i1
  br i1 %2, label %bb46, label %bb45

cleanup:                                          ; preds = %bb3, %panic4
  %3 = landingpad { ptr, i32 }
          cleanup
  %4 = extractvalue { ptr, i32 } %3, 0
  %5 = extractvalue { ptr, i32 } %3, 1
  store ptr %4, ptr %0, align 8
  %6 = getelementptr inbounds i8, ptr %0, i64 8
  store i32 %5, ptr %6, align 8
  br label %bb47

unreachable:                                      ; preds = %panic7, %panic6, %panic4
  unreachable

bb4:                                              ; preds = %bb3
  store i8 0, ptr %_74, align 1
; invoke core::ops::range::RangeInclusive<Idx>::new
  invoke void @"_ZN4core3ops5range25RangeInclusive$LT$Idx$GT$3new17hc0fdf360c8982a4aE"(ptr sret([12 x i8]) align 4 %_12, i32 0, i32 %n)
          to label %bb5 unwind label %cleanup5

bb44:                                             ; preds = %cleanup5
; invoke core::ptr::drop_in_place<alloc::vec::Vec<alloc::vec::Vec<f64>>>
  invoke void @"_ZN4core3ptr70drop_in_place$LT$alloc..vec..Vec$LT$alloc..vec..Vec$LT$f64$GT$$GT$$GT$17h360516edc807ed42E"(ptr align 8 %dp) #22
          to label %bb45 unwind label %terminate

cleanup5:                                         ; preds = %bb12, %bb10, %bb20, %bb18, %bb39, %bb38, %bb37, %panic7, %bb35, %bb34, %bb33, %panic6, %bb30, %bb28, %bb26, %bb41, %bb27, %bb24, %bb22, %bb19, %bb16, %bb14, %bb11, %bb7, %bb5, %bb4
  %7 = landingpad { ptr, i32 }
          cleanup
  %8 = extractvalue { ptr, i32 } %7, 0
  %9 = extractvalue { ptr, i32 } %7, 1
  store ptr %8, ptr %0, align 8
  %10 = getelementptr inbounds i8, ptr %0, i64 8
  store i32 %9, ptr %10, align 8
  br label %bb44

bb5:                                              ; preds = %bb4
; invoke <I as core::iter::traits::collect::IntoIterator>::into_iter
  invoke void @"_ZN63_$LT$I$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17hdcded83427af6d71E"(ptr sret([12 x i8]) align 4 %_11, ptr align 4 %_12)
          to label %bb6 unwind label %cleanup5

bb6:                                              ; preds = %bb5
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %iter, ptr align 4 %_11, i64 12, i1 false)
  br label %bb7

bb7:                                              ; preds = %bb13, %bb6
; invoke core::iter::range::<impl core::iter::traits::iterator::Iterator for core::ops::range::RangeInclusive<A>>::next
  %11 = invoke { i32, i32 } @"_ZN4core4iter5range110_$LT$impl$u20$core..iter..traits..iterator..Iterator$u20$for$u20$core..ops..range..RangeInclusive$LT$A$GT$$GT$4next17h9af08dda924cf10eE"(ptr align 4 %iter)
          to label %bb8 unwind label %cleanup5

bb8:                                              ; preds = %bb7
  %12 = extractvalue { i32, i32 } %11, 0
  %13 = extractvalue { i32, i32 } %11, 1
  store i32 %12, ptr %_14, align 4
  %14 = getelementptr inbounds i8, ptr %_14, i64 4
  store i32 %13, ptr %14, align 4
  %15 = load i32, ptr %_14, align 4
  %16 = getelementptr inbounds i8, ptr %_14, i64 4
  %17 = load i32, ptr %16, align 4
  %_16 = zext i32 %15 to i64
  %18 = trunc nuw i64 %_16 to i1
  br i1 %18, label %bb10, label %bb11

bb10:                                             ; preds = %bb8
  %19 = getelementptr inbounds i8, ptr %_14, i64 4
  %i9 = load i32, ptr %19, align 4
  %_21 = sext i32 %i9 to i64
; invoke <alloc::vec::Vec<T,A> as core::ops::index::IndexMut<I>>::index_mut
  %_19 = invoke align 8 ptr @"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h1279a25223294e81E"(ptr align 8 %dp, i64 %_21, ptr align 8 @alloc_1dde452738c2c089050cf8479c361b0f)
          to label %bb12 unwind label %cleanup5

bb11:                                             ; preds = %bb8
; invoke core::ops::range::RangeInclusive<Idx>::new
  invoke void @"_ZN4core3ops5range25RangeInclusive$LT$Idx$GT$3new17hc0fdf360c8982a4aE"(ptr sret([12 x i8]) align 4 %_23, i32 0, i32 %m)
          to label %bb14 unwind label %cleanup5

bb14:                                             ; preds = %bb11
; invoke <I as core::iter::traits::collect::IntoIterator>::into_iter
  invoke void @"_ZN63_$LT$I$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17hdcded83427af6d71E"(ptr sret([12 x i8]) align 4 %_22, ptr align 4 %_23)
          to label %bb15 unwind label %cleanup5

bb15:                                             ; preds = %bb14
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %iter1, ptr align 4 %_22, i64 12, i1 false)
  br label %bb16

bb16:                                             ; preds = %bb21, %bb15
; invoke core::iter::range::<impl core::iter::traits::iterator::Iterator for core::ops::range::RangeInclusive<A>>::next
  %20 = invoke { i32, i32 } @"_ZN4core4iter5range110_$LT$impl$u20$core..iter..traits..iterator..Iterator$u20$for$u20$core..ops..range..RangeInclusive$LT$A$GT$$GT$4next17h9af08dda924cf10eE"(ptr align 4 %iter1)
          to label %bb17 unwind label %cleanup5

bb17:                                             ; preds = %bb16
  %21 = extractvalue { i32, i32 } %20, 0
  %22 = extractvalue { i32, i32 } %20, 1
  store i32 %21, ptr %_25, align 4
  %23 = getelementptr inbounds i8, ptr %_25, i64 4
  store i32 %22, ptr %23, align 4
  %24 = load i32, ptr %_25, align 4
  %25 = getelementptr inbounds i8, ptr %_25, i64 4
  %26 = load i32, ptr %25, align 4
  %_27 = zext i32 %24 to i64
  %27 = trunc nuw i64 %_27 to i1
  br i1 %27, label %bb18, label %bb19

bb18:                                             ; preds = %bb17
  %28 = getelementptr inbounds i8, ptr %_25, i64 4
  %j8 = load i32, ptr %28, align 4
; invoke <alloc::vec::Vec<T,A> as core::ops::index::IndexMut<I>>::index_mut
  %_30 = invoke align 8 ptr @"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h1279a25223294e81E"(ptr align 8 %dp, i64 0, ptr align 8 @alloc_d6019bc6f82ec36056508699450c7af5)
          to label %bb20 unwind label %cleanup5

bb19:                                             ; preds = %bb17
; invoke core::ops::range::RangeInclusive<Idx>::new
  invoke void @"_ZN4core3ops5range25RangeInclusive$LT$Idx$GT$3new17hc0fdf360c8982a4aE"(ptr sret([12 x i8]) align 4 %_34, i32 1, i32 %n)
          to label %bb22 unwind label %cleanup5

bb22:                                             ; preds = %bb19
; invoke <I as core::iter::traits::collect::IntoIterator>::into_iter
  invoke void @"_ZN63_$LT$I$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17hdcded83427af6d71E"(ptr sret([12 x i8]) align 4 %_33, ptr align 4 %_34)
          to label %bb23 unwind label %cleanup5

bb23:                                             ; preds = %bb22
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %iter2, ptr align 4 %_33, i64 12, i1 false)
  br label %bb24

bb24:                                             ; preds = %bb31, %bb23
; invoke core::iter::range::<impl core::iter::traits::iterator::Iterator for core::ops::range::RangeInclusive<A>>::next
  %29 = invoke { i32, i32 } @"_ZN4core4iter5range110_$LT$impl$u20$core..iter..traits..iterator..Iterator$u20$for$u20$core..ops..range..RangeInclusive$LT$A$GT$$GT$4next17h9af08dda924cf10eE"(ptr align 4 %iter2)
          to label %bb25 unwind label %cleanup5

bb25:                                             ; preds = %bb24
  %30 = extractvalue { i32, i32 } %29, 0
  %31 = extractvalue { i32, i32 } %29, 1
  store i32 %30, ptr %_36, align 4
  %32 = getelementptr inbounds i8, ptr %_36, i64 4
  store i32 %31, ptr %32, align 4
  %33 = load i32, ptr %_36, align 4
  %34 = getelementptr inbounds i8, ptr %_36, i64 4
  %35 = load i32, ptr %34, align 4
  %_38 = zext i32 %33 to i64
  %36 = trunc nuw i64 %_38 to i1
  br i1 %36, label %bb26, label %bb27

bb26:                                             ; preds = %bb25
  %37 = getelementptr inbounds i8, ptr %_36, i64 4
  %i = load i32, ptr %37, align 4
; invoke core::ops::range::RangeInclusive<Idx>::new
  invoke void @"_ZN4core3ops5range25RangeInclusive$LT$Idx$GT$3new17hc0fdf360c8982a4aE"(ptr sret([12 x i8]) align 4 %_41, i32 1, i32 %m)
          to label %bb28 unwind label %cleanup5

bb27:                                             ; preds = %bb25
  %_72 = sext i32 %n to i64
; invoke <alloc::vec::Vec<T,A> as core::ops::index::Index<I>>::index
  %_70 = invoke align 8 ptr @"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h571fb1709d5a70d5E"(ptr align 8 %dp, i64 %_72, ptr align 8 @alloc_e8d2553384f66e9009ffe4e0c6c79b10)
          to label %bb41 unwind label %cleanup5

bb41:                                             ; preds = %bb27
  %_73 = sext i32 %m to i64
; invoke <alloc::vec::Vec<T,A> as core::ops::index::Index<I>>::index
  %_69 = invoke align 8 ptr @"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h5349e599313af818E"(ptr align 8 %_70, i64 %_73, ptr align 8 @alloc_b8bd6d75dd1d310329514329d9c51729)
          to label %bb42 unwind label %cleanup5

bb42:                                             ; preds = %bb41
  %_68 = load double, ptr %_69, align 8
  %_0 = call i32 @llvm.fptosi.sat.i32.f64(double %_68)
; call core::ptr::drop_in_place<alloc::vec::Vec<alloc::vec::Vec<f64>>>
  call void @"_ZN4core3ptr70drop_in_place$LT$alloc..vec..Vec$LT$alloc..vec..Vec$LT$f64$GT$$GT$$GT$17h360516edc807ed42E"(ptr align 8 %dp)
  ret i32 %_0

bb28:                                             ; preds = %bb26
; invoke <I as core::iter::traits::collect::IntoIterator>::into_iter
  invoke void @"_ZN63_$LT$I$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17hdcded83427af6d71E"(ptr sret([12 x i8]) align 4 %_40, ptr align 4 %_41)
          to label %bb29 unwind label %cleanup5

bb29:                                             ; preds = %bb28
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %iter3, ptr align 4 %_40, i64 12, i1 false)
  br label %bb30

bb30:                                             ; preds = %bb40, %bb29
; invoke core::iter::range::<impl core::iter::traits::iterator::Iterator for core::ops::range::RangeInclusive<A>>::next
  %38 = invoke { i32, i32 } @"_ZN4core4iter5range110_$LT$impl$u20$core..iter..traits..iterator..Iterator$u20$for$u20$core..ops..range..RangeInclusive$LT$A$GT$$GT$4next17h9af08dda924cf10eE"(ptr align 4 %iter3)
          to label %bb31 unwind label %cleanup5

bb31:                                             ; preds = %bb30
  %39 = extractvalue { i32, i32 } %38, 0
  %40 = extractvalue { i32, i32 } %38, 1
  store i32 %39, ptr %_43, align 4
  %41 = getelementptr inbounds i8, ptr %_43, i64 4
  store i32 %40, ptr %41, align 4
  %42 = load i32, ptr %_43, align 4
  %43 = getelementptr inbounds i8, ptr %_43, i64 4
  %44 = load i32, ptr %43, align 4
  %_45 = zext i32 %42 to i64
  %45 = trunc nuw i64 %_45 to i1
  br i1 %45, label %bb32, label %bb24

bb32:                                             ; preds = %bb31
  %46 = getelementptr inbounds i8, ptr %_43, i64 4
  %j = load i32, ptr %46, align 4
  %_52 = sext i32 %i to i64
  %_53.0 = sub i64 %_52, 1
  %_53.1 = icmp ult i64 %_52, 1
  br i1 %_53.1, label %panic6, label %bb33

bb33:                                             ; preds = %bb32
; invoke <alloc::vec::Vec<T,A> as core::ops::index::Index<I>>::index
  %_49 = invoke align 8 ptr @"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h571fb1709d5a70d5E"(ptr align 8 %dp, i64 %_53.0, ptr align 8 @alloc_8e02316a0a01f4c82ff9b65accedcddb)
          to label %bb34 unwind label %cleanup5

panic6:                                           ; preds = %bb32
; invoke core::panicking::panic_const::panic_const_sub_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_sub_overflow17h134cc1a7f93654deE(ptr align 8 @alloc_51371df22218d37517a4c1cfe5b44f67) #24
          to label %unreachable unwind label %cleanup5

bb34:                                             ; preds = %bb33
  %_54 = sext i32 %j to i64
; invoke <alloc::vec::Vec<T,A> as core::ops::index::Index<I>>::index
  %_48 = invoke align 8 ptr @"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h5349e599313af818E"(ptr align 8 %_49, i64 %_54, ptr align 8 @alloc_494d9eba73f073515411569989896aee)
          to label %bb35 unwind label %cleanup5

bb35:                                             ; preds = %bb34
  %_47 = load double, ptr %_48, align 8
  %_59 = sext i32 %i to i64
; invoke <alloc::vec::Vec<T,A> as core::ops::index::Index<I>>::index
  %_57 = invoke align 8 ptr @"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h571fb1709d5a70d5E"(ptr align 8 %dp, i64 %_59, ptr align 8 @alloc_95356865a2521acbe274d3967a8b31de)
          to label %bb36 unwind label %cleanup5

bb36:                                             ; preds = %bb35
  %_61 = sext i32 %j to i64
  %_62.0 = sub i64 %_61, 1
  %_62.1 = icmp ult i64 %_61, 1
  br i1 %_62.1, label %panic7, label %bb37

bb37:                                             ; preds = %bb36
; invoke <alloc::vec::Vec<T,A> as core::ops::index::Index<I>>::index
  %_56 = invoke align 8 ptr @"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h5349e599313af818E"(ptr align 8 %_57, i64 %_62.0, ptr align 8 @alloc_0cc12e91005e744fc4e24979d39cc5bd)
          to label %bb38 unwind label %cleanup5

panic7:                                           ; preds = %bb36
; invoke core::panicking::panic_const::panic_const_sub_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_sub_overflow17h134cc1a7f93654deE(ptr align 8 @alloc_30270b7b4da2bc9c1c776ebfac7d7072) #24
          to label %unreachable unwind label %cleanup5

bb38:                                             ; preds = %bb37
  %_55 = load double, ptr %_56, align 8
  %_66 = sext i32 %i to i64
; invoke <alloc::vec::Vec<T,A> as core::ops::index::IndexMut<I>>::index_mut
  %_64 = invoke align 8 ptr @"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h1279a25223294e81E"(ptr align 8 %dp, i64 %_66, ptr align 8 @alloc_b2db41bb5966159909a74666ff92e941)
          to label %bb39 unwind label %cleanup5

bb39:                                             ; preds = %bb38
  %_67 = sext i32 %j to i64
; invoke <alloc::vec::Vec<T,A> as core::ops::index::IndexMut<I>>::index_mut
  %_63 = invoke align 8 ptr @"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17ha32df46c4d33ec3fE"(ptr align 8 %_64, i64 %_67, ptr align 8 @alloc_093fc96d90a09c9701a19ee99aea4fd2)
          to label %bb40 unwind label %cleanup5

bb40:                                             ; preds = %bb39
  %47 = fadd double %_47, %_55
  store double %47, ptr %_63, align 8
  br label %bb30

bb20:                                             ; preds = %bb18
  %_32 = sext i32 %j8 to i64
; invoke <alloc::vec::Vec<T,A> as core::ops::index::IndexMut<I>>::index_mut
  %_29 = invoke align 8 ptr @"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17ha32df46c4d33ec3fE"(ptr align 8 %_30, i64 %_32, ptr align 8 @alloc_4800952808f9e1ab7c7f06bdf2247dff)
          to label %bb21 unwind label %cleanup5

bb21:                                             ; preds = %bb20
  store double 1.000000e+00, ptr %_29, align 8
  br label %bb16

bb12:                                             ; preds = %bb10
; invoke <alloc::vec::Vec<T,A> as core::ops::index::IndexMut<I>>::index_mut
  %_18 = invoke align 8 ptr @"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17ha32df46c4d33ec3fE"(ptr align 8 %_19, i64 0, ptr align 8 @alloc_b4a954efb211b910ec851d0418bc910b)
          to label %bb13 unwind label %cleanup5

bb13:                                             ; preds = %bb12
  store double 1.000000e+00, ptr %_18, align 8
  br label %bb7

bb9:                                              ; No predecessors!
  unreachable

terminate:                                        ; preds = %bb46, %bb44
  %48 = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer
; call core::panicking::panic_in_cleanup
  call void @_ZN4core9panicking16panic_in_cleanup17h5f6bde45d17ae243E() #21
  unreachable

bb45:                                             ; preds = %bb46, %bb47, %bb44
  %49 = load ptr, ptr %0, align 8
  %50 = getelementptr inbounds i8, ptr %0, i64 8
  %51 = load i32, ptr %50, align 8
  %52 = insertvalue { ptr, i32 } poison, ptr %49, 0
  %53 = insertvalue { ptr, i32 } %52, i32 %51, 1
  resume { ptr, i32 } %53

bb46:                                             ; preds = %bb47
; invoke core::ptr::drop_in_place<alloc::vec::Vec<f64>>
  invoke void @"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$f64$GT$$GT$17h030cd87fe7a8e522E"(ptr align 8 %_4) #22
          to label %bb45 unwind label %terminate
}

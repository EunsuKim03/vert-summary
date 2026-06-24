define i32 @f_gold(i32 %f, i32 %d, i32 %s) unnamed_addr #3 personality ptr @rust_eh_personality {
start:
  %0 = alloca [16 x i8], align 8
  %_81 = alloca [1 x i8], align 1
  %_25 = alloca [8 x i8], align 4
  %iter1 = alloca [12 x i8], align 4
  %_23 = alloca [12 x i8], align 4
  %_22 = alloca [12 x i8], align 4
  %_18 = alloca [8 x i8], align 4
  %iter = alloca [12 x i8], align 4
  %_16 = alloca [12 x i8], align 4
  %_15 = alloca [12 x i8], align 4
  %_5 = alloca [24 x i8], align 8
  %mem = alloca [24 x i8], align 8
  store i8 0, ptr %_81, align 1
  %_7 = sext i32 %s to i64
  %_8.0 = add i64 %_7, 1
  %_8.1 = icmp ult i64 %_8.0, %_7
  br i1 %_8.1, label %panic, label %bb1

bb1:                                              ; preds = %start
  store i8 1, ptr %_81, align 1
; call alloc::vec::from_elem
  call void @_ZN5alloc3vec9from_elem17h791a5e8f688e03f5E(ptr sret([24 x i8]) align 8 %_5, i32 0, i64 %_8.0)
  %_10 = sext i32 %d to i64
  %_11.0 = add i64 %_10, 1
  %_11.1 = icmp ult i64 %_11.0, %_10
  br i1 %_11.1, label %panic2, label %bb3

panic:                                            ; preds = %start
; call core::panicking::panic_const::panic_const_add_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_07ebeb862f0863e4cb276e61b76c1720) #23
  unreachable

bb3:                                              ; preds = %bb1
  store i8 0, ptr %_81, align 1
; invoke alloc::vec::from_elem
  invoke void @_ZN5alloc3vec9from_elem17hbf44b23d1d87bf21E(ptr sret([24 x i8]) align 8 %mem, ptr align 8 %_5, i64 %_11.0)
          to label %bb4 unwind label %cleanup

panic2:                                           ; preds = %bb1
; invoke core::panicking::panic_const::panic_const_add_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_f5dd96b2959f16bc178b9dc859485029) #24
          to label %unreachable unwind label %cleanup

bb46:                                             ; preds = %cleanup
  %1 = load i8, ptr %_81, align 1
  %2 = trunc nuw i8 %1 to i1
  br i1 %2, label %bb45, label %bb44

cleanup:                                          ; preds = %bb3, %panic2
  %3 = landingpad { ptr, i32 }
          cleanup
  %4 = extractvalue { ptr, i32 } %3, 0
  %5 = extractvalue { ptr, i32 } %3, 1
  store ptr %4, ptr %0, align 8
  %6 = getelementptr inbounds i8, ptr %0, i64 8
  store i32 %5, ptr %6, align 8
  br label %bb46

unreachable:                                      ; preds = %panic13, %panic12, %panic11, %panic10, %panic9, %panic8, %panic7, %panic6, %panic5, %panic4, %panic2
  unreachable

bb4:                                              ; preds = %bb3
  store i8 0, ptr %_81, align 1
; invoke <alloc::vec::Vec<T,A> as core::ops::index::IndexMut<I>>::index_mut
  %_13 = invoke align 8 ptr @"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h1656e61ce19526daE"(ptr align 8 %mem, i64 0, ptr align 8 @alloc_dae2ef4da11f8c3277ff05767ca96ed7)
          to label %bb5 unwind label %cleanup3

bb43:                                             ; preds = %cleanup3
; invoke core::ptr::drop_in_place<alloc::vec::Vec<alloc::vec::Vec<i32>>>
  invoke void @"_ZN4core3ptr70drop_in_place$LT$alloc..vec..Vec$LT$alloc..vec..Vec$LT$i32$GT$$GT$$GT$17h14bbc42e6e51dd72E"(ptr align 8 %mem) #22
          to label %bb44 unwind label %terminate

cleanup3:                                         ; preds = %panic13, %bb37, %bb36, %bb35, %panic12, %panic11, %bb32, %panic10, %panic9, %panic8, %bb27, %bb26, %panic7, %bb24, %panic6, %bb22, %panic5, %bb20, %panic4, %bb18, %bb16, %bb14, %bb12, %bb40, %bb13, %bb9, %bb7, %bb6, %bb5, %bb4
  %7 = landingpad { ptr, i32 }
          cleanup
  %8 = extractvalue { ptr, i32 } %7, 0
  %9 = extractvalue { ptr, i32 } %7, 1
  store ptr %8, ptr %0, align 8
  %10 = getelementptr inbounds i8, ptr %0, i64 8
  store i32 %9, ptr %10, align 8
  br label %bb43

bb5:                                              ; preds = %bb4
; invoke <alloc::vec::Vec<T,A> as core::ops::index::IndexMut<I>>::index_mut
  %_12 = invoke align 4 ptr @"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h87e2763a11b831abE"(ptr align 8 %_13, i64 0, ptr align 8 @alloc_6f35b41ea119093316f67fe513b76502)
          to label %bb6 unwind label %cleanup3

bb6:                                              ; preds = %bb5
  store i32 1, ptr %_12, align 4
; invoke core::ops::range::RangeInclusive<Idx>::new
  invoke void @"_ZN4core3ops5range25RangeInclusive$LT$Idx$GT$3new17h64e0f9671a7dafc0E"(ptr sret([12 x i8]) align 4 %_16, i32 1, i32 %d)
          to label %bb7 unwind label %cleanup3

bb7:                                              ; preds = %bb6
; invoke <I as core::iter::traits::collect::IntoIterator>::into_iter
  invoke void @"_ZN63_$LT$I$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17h92d5d10c5a2dd3a7E"(ptr sret([12 x i8]) align 4 %_15, ptr align 4 %_16)
          to label %bb8 unwind label %cleanup3

bb8:                                              ; preds = %bb7
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %iter, ptr align 4 %_15, i64 12, i1 false)
  br label %bb9

bb9:                                              ; preds = %bb17, %bb8
; invoke core::iter::range::<impl core::iter::traits::iterator::Iterator for core::ops::range::RangeInclusive<A>>::next
  %11 = invoke { i32, i32 } @"_ZN4core4iter5range110_$LT$impl$u20$core..iter..traits..iterator..Iterator$u20$for$u20$core..ops..range..RangeInclusive$LT$A$GT$$GT$4next17h68898e1c092bc929E"(ptr align 4 %iter)
          to label %bb10 unwind label %cleanup3

bb10:                                             ; preds = %bb9
  %12 = extractvalue { i32, i32 } %11, 0
  %13 = extractvalue { i32, i32 } %11, 1
  store i32 %12, ptr %_18, align 4
  %14 = getelementptr inbounds i8, ptr %_18, i64 4
  store i32 %13, ptr %14, align 4
  %15 = load i32, ptr %_18, align 4
  %16 = getelementptr inbounds i8, ptr %_18, i64 4
  %17 = load i32, ptr %16, align 4
  %_20 = zext i32 %15 to i64
  %18 = trunc nuw i64 %_20 to i1
  br i1 %18, label %bb12, label %bb13

bb12:                                             ; preds = %bb10
  %19 = getelementptr inbounds i8, ptr %_18, i64 4
  %i = load i32, ptr %19, align 4
; invoke core::ops::range::RangeInclusive<Idx>::new
  invoke void @"_ZN4core3ops5range25RangeInclusive$LT$Idx$GT$3new17h64e0f9671a7dafc0E"(ptr sret([12 x i8]) align 4 %_23, i32 %i, i32 %s)
          to label %bb14 unwind label %cleanup3

bb13:                                             ; preds = %bb10
  %_79 = sext i32 %d to i64
; invoke <alloc::vec::Vec<T,A> as core::ops::index::Index<I>>::index
  %_77 = invoke align 8 ptr @"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17ha008607cd350cb27E"(ptr align 8 %mem, i64 %_79, ptr align 8 @alloc_7fd48b4810d5547f51677e14f794f2a4)
          to label %bb40 unwind label %cleanup3

bb40:                                             ; preds = %bb13
  %_80 = sext i32 %s to i64
; invoke <alloc::vec::Vec<T,A> as core::ops::index::Index<I>>::index
  %_76 = invoke align 4 ptr @"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h983206ce45d11c14E"(ptr align 8 %_77, i64 %_80, ptr align 8 @alloc_97d399a03a189396f4acc790d40e719f)
          to label %bb41 unwind label %cleanup3

bb41:                                             ; preds = %bb40
  %_0 = load i32, ptr %_76, align 4
; call core::ptr::drop_in_place<alloc::vec::Vec<alloc::vec::Vec<i32>>>
  call void @"_ZN4core3ptr70drop_in_place$LT$alloc..vec..Vec$LT$alloc..vec..Vec$LT$i32$GT$$GT$$GT$17h14bbc42e6e51dd72E"(ptr align 8 %mem)
  ret i32 %_0

bb14:                                             ; preds = %bb12
; invoke <I as core::iter::traits::collect::IntoIterator>::into_iter
  invoke void @"_ZN63_$LT$I$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17h92d5d10c5a2dd3a7E"(ptr sret([12 x i8]) align 4 %_22, ptr align 4 %_23)
          to label %bb15 unwind label %cleanup3

bb15:                                             ; preds = %bb14
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %iter1, ptr align 4 %_22, i64 12, i1 false)
  br label %bb16

bb16:                                             ; preds = %bb39, %bb30, %bb15
; invoke core::iter::range::<impl core::iter::traits::iterator::Iterator for core::ops::range::RangeInclusive<A>>::next
  %20 = invoke { i32, i32 } @"_ZN4core4iter5range110_$LT$impl$u20$core..iter..traits..iterator..Iterator$u20$for$u20$core..ops..range..RangeInclusive$LT$A$GT$$GT$4next17h68898e1c092bc929E"(ptr align 4 %iter1)
          to label %bb17 unwind label %cleanup3

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
  br i1 %27, label %bb18, label %bb9

bb18:                                             ; preds = %bb17
  %28 = getelementptr inbounds i8, ptr %_25, i64 4
  %j = load i32, ptr %28, align 4
  %_33 = sext i32 %i to i64
; invoke <alloc::vec::Vec<T,A> as core::ops::index::Index<I>>::index
  %_31 = invoke align 8 ptr @"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17ha008607cd350cb27E"(ptr align 8 %mem, i64 %_33, ptr align 8 @alloc_1c90723536eb01ea4c6e30fe61f3c144)
          to label %bb19 unwind label %cleanup3

bb19:                                             ; preds = %bb18
  %29 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %j, i32 1)
  %_36.0 = extractvalue { i32, i1 } %29, 0
  %_36.1 = extractvalue { i32, i1 } %29, 1
  br i1 %_36.1, label %panic4, label %bb20

bb20:                                             ; preds = %bb19
  %_34 = sext i32 %_36.0 to i64
; invoke <alloc::vec::Vec<T,A> as core::ops::index::Index<I>>::index
  %_30 = invoke align 4 ptr @"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h983206ce45d11c14E"(ptr align 8 %_31, i64 %_34, ptr align 8 @alloc_097f029744a4e9cec99b18c0f5b1c109)
          to label %bb21 unwind label %cleanup3

panic4:                                           ; preds = %bb19
; invoke core::panicking::panic_const::panic_const_sub_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_sub_overflow17h134cc1a7f93654deE(ptr align 8 @alloc_7e5a5f87469a13b28b4685a7050197d7) #24
          to label %unreachable unwind label %cleanup3

bb21:                                             ; preds = %bb20
  %_29 = load i32, ptr %_30, align 4
  %30 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %i, i32 1)
  %_43.0 = extractvalue { i32, i1 } %30, 0
  %_43.1 = extractvalue { i32, i1 } %30, 1
  br i1 %_43.1, label %panic5, label %bb22

bb22:                                             ; preds = %bb21
  %_41 = sext i32 %_43.0 to i64
; invoke <alloc::vec::Vec<T,A> as core::ops::index::Index<I>>::index
  %_39 = invoke align 8 ptr @"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17ha008607cd350cb27E"(ptr align 8 %mem, i64 %_41, ptr align 8 @alloc_fb9b5c60a2a1eb635c2abb8efc804f6f)
          to label %bb23 unwind label %cleanup3

panic5:                                           ; preds = %bb21
; invoke core::panicking::panic_const::panic_const_sub_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_sub_overflow17h134cc1a7f93654deE(ptr align 8 @alloc_6937c091444c041bbdf264a2d2787ee5) #24
          to label %unreachable unwind label %cleanup3

bb23:                                             ; preds = %bb22
  %31 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %j, i32 1)
  %_46.0 = extractvalue { i32, i1 } %31, 0
  %_46.1 = extractvalue { i32, i1 } %31, 1
  br i1 %_46.1, label %panic6, label %bb24

bb24:                                             ; preds = %bb23
  %_44 = sext i32 %_46.0 to i64
; invoke <alloc::vec::Vec<T,A> as core::ops::index::Index<I>>::index
  %_38 = invoke align 4 ptr @"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h983206ce45d11c14E"(ptr align 8 %_39, i64 %_44, ptr align 8 @alloc_09d648b1f10f476932d3409de2524a2b)
          to label %bb25 unwind label %cleanup3

panic6:                                           ; preds = %bb23
; invoke core::panicking::panic_const::panic_const_sub_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_sub_overflow17h134cc1a7f93654deE(ptr align 8 @alloc_e5986e0c3ce7666ab1f111df19bc44d1) #24
          to label %unreachable unwind label %cleanup3

bb25:                                             ; preds = %bb24
  %_37 = load i32, ptr %_38, align 4
  %32 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %_29, i32 %_37)
  %_47.0 = extractvalue { i32, i1 } %32, 0
  %_47.1 = extractvalue { i32, i1 } %32, 1
  br i1 %_47.1, label %panic7, label %bb26

bb26:                                             ; preds = %bb25
  %_51 = sext i32 %i to i64
; invoke <alloc::vec::Vec<T,A> as core::ops::index::IndexMut<I>>::index_mut
  %_49 = invoke align 8 ptr @"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h1656e61ce19526daE"(ptr align 8 %mem, i64 %_51, ptr align 8 @alloc_87944782b0d1b53e138c9a902f91aa2a)
          to label %bb27 unwind label %cleanup3

panic7:                                           ; preds = %bb25
; invoke core::panicking::panic_const::panic_const_add_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_6181aa29deadcdeabccaebce31f05f0d) #24
          to label %unreachable unwind label %cleanup3

bb27:                                             ; preds = %bb26
  %_52 = sext i32 %j to i64
; invoke <alloc::vec::Vec<T,A> as core::ops::index::IndexMut<I>>::index_mut
  %_48 = invoke align 4 ptr @"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h87e2763a11b831abE"(ptr align 8 %_49, i64 %_52, ptr align 8 @alloc_fd06b9c5674ae1c9e2c7b92d370707bb)
          to label %bb28 unwind label %cleanup3

bb28:                                             ; preds = %bb27
  store i32 %_47.0, ptr %_48, align 4
  %33 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %j, i32 %f)
  %_56.0 = extractvalue { i32, i1 } %33, 0
  %_56.1 = extractvalue { i32, i1 } %33, 1
  br i1 %_56.1, label %panic8, label %bb29

bb29:                                             ; preds = %bb28
  %34 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %_56.0, i32 1)
  %_57.0 = extractvalue { i32, i1 } %34, 0
  %_57.1 = extractvalue { i32, i1 } %34, 1
  br i1 %_57.1, label %panic9, label %bb30

panic8:                                           ; preds = %bb28
; invoke core::panicking::panic_const::panic_const_sub_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_sub_overflow17h134cc1a7f93654deE(ptr align 8 @alloc_3237c40f85ae7076fbc1a1a8aac69547) #24
          to label %unreachable unwind label %cleanup3

bb30:                                             ; preds = %bb29
  %_53 = icmp sge i32 %_57.0, 0
  br i1 %_53, label %bb31, label %bb16

panic9:                                           ; preds = %bb29
; invoke core::panicking::panic_const::panic_const_sub_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_sub_overflow17h134cc1a7f93654deE(ptr align 8 @alloc_3237c40f85ae7076fbc1a1a8aac69547) #24
          to label %unreachable unwind label %cleanup3

bb31:                                             ; preds = %bb30
  %35 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %i, i32 1)
  %_64.0 = extractvalue { i32, i1 } %35, 0
  %_64.1 = extractvalue { i32, i1 } %35, 1
  br i1 %_64.1, label %panic10, label %bb32

bb32:                                             ; preds = %bb31
  %_62 = sext i32 %_64.0 to i64
; invoke <alloc::vec::Vec<T,A> as core::ops::index::Index<I>>::index
  %_60 = invoke align 8 ptr @"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17ha008607cd350cb27E"(ptr align 8 %mem, i64 %_62, ptr align 8 @alloc_96590de966b1a8b343741ff351cdca11)
          to label %bb33 unwind label %cleanup3

panic10:                                          ; preds = %bb31
; invoke core::panicking::panic_const::panic_const_sub_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_sub_overflow17h134cc1a7f93654deE(ptr align 8 @alloc_0e52b0a9a28fa7d029b5597fabb69a31) #24
          to label %unreachable unwind label %cleanup3

bb33:                                             ; preds = %bb32
  %36 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %j, i32 %f)
  %_68.0 = extractvalue { i32, i1 } %36, 0
  %_68.1 = extractvalue { i32, i1 } %36, 1
  br i1 %_68.1, label %panic11, label %bb34

bb34:                                             ; preds = %bb33
  %37 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %_68.0, i32 1)
  %_69.0 = extractvalue { i32, i1 } %37, 0
  %_69.1 = extractvalue { i32, i1 } %37, 1
  br i1 %_69.1, label %panic12, label %bb35

panic11:                                          ; preds = %bb33
; invoke core::panicking::panic_const::panic_const_sub_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_sub_overflow17h134cc1a7f93654deE(ptr align 8 @alloc_3ddd1354be80f83626d10acb387c16fa) #24
          to label %unreachable unwind label %cleanup3

bb35:                                             ; preds = %bb34
  %_65 = sext i32 %_69.0 to i64
; invoke <alloc::vec::Vec<T,A> as core::ops::index::Index<I>>::index
  %_59 = invoke align 4 ptr @"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h983206ce45d11c14E"(ptr align 8 %_60, i64 %_65, ptr align 8 @alloc_0775f161b05850225c2c9f476e76260e)
          to label %bb36 unwind label %cleanup3

panic12:                                          ; preds = %bb34
; invoke core::panicking::panic_const::panic_const_sub_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_sub_overflow17h134cc1a7f93654deE(ptr align 8 @alloc_78c2b244ffb808cf80ed2277f5cacb32) #24
          to label %unreachable unwind label %cleanup3

bb36:                                             ; preds = %bb35
  %_58 = load i32, ptr %_59, align 4
  %_73 = sext i32 %i to i64
; invoke <alloc::vec::Vec<T,A> as core::ops::index::IndexMut<I>>::index_mut
  %_71 = invoke align 8 ptr @"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h1656e61ce19526daE"(ptr align 8 %mem, i64 %_73, ptr align 8 @alloc_8ef9c3ad4de16741a5cb13550d8a8277)
          to label %bb37 unwind label %cleanup3

bb37:                                             ; preds = %bb36
  %_74 = sext i32 %j to i64
; invoke <alloc::vec::Vec<T,A> as core::ops::index::IndexMut<I>>::index_mut
  %_70 = invoke align 4 ptr @"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h87e2763a11b831abE"(ptr align 8 %_71, i64 %_74, ptr align 8 @alloc_a636b71f01d028e62af66f041f36149c)
          to label %bb38 unwind label %cleanup3

bb38:                                             ; preds = %bb37
  %38 = load i32, ptr %_70, align 4
  %39 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %38, i32 %_58)
  %_75.0 = extractvalue { i32, i1 } %39, 0
  %_75.1 = extractvalue { i32, i1 } %39, 1
  br i1 %_75.1, label %panic13, label %bb39

bb39:                                             ; preds = %bb38
  store i32 %_75.0, ptr %_70, align 4
  br label %bb16

panic13:                                          ; preds = %bb38
; invoke core::panicking::panic_const::panic_const_sub_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_sub_overflow17h134cc1a7f93654deE(ptr align 8 @alloc_db243c5c8204d3d9667e1026b5949103) #24
          to label %unreachable unwind label %cleanup3

bb11:                                             ; No predecessors!
  unreachable

terminate:                                        ; preds = %bb45, %bb43
  %40 = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer
; call core::panicking::panic_in_cleanup
  call void @_ZN4core9panicking16panic_in_cleanup17h5f6bde45d17ae243E() #21
  unreachable

bb44:                                             ; preds = %bb45, %bb46, %bb43
  %41 = load ptr, ptr %0, align 8
  %42 = getelementptr inbounds i8, ptr %0, i64 8
  %43 = load i32, ptr %42, align 8
  %44 = insertvalue { ptr, i32 } poison, ptr %41, 0
  %45 = insertvalue { ptr, i32 } %44, i32 %43, 1
  resume { ptr, i32 } %45

bb45:                                             ; preds = %bb46
; invoke core::ptr::drop_in_place<alloc::vec::Vec<i32>>
  invoke void @"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17hf238ad059a02f545E"(ptr align 8 %_5) #22
          to label %bb44 unwind label %terminate
}

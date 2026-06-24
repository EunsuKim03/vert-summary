define i32 @f_gold(i32 %n, i32 %k) unnamed_addr #3 personality ptr @rust_eh_personality {
start:
  %0 = alloca [16 x i8], align 8
  %_101 = alloca [1 x i8], align 1
  %_60 = alloca [8 x i8], align 4
  %iter4 = alloca [12 x i8], align 4
  %_58 = alloca [12 x i8], align 4
  %_57 = alloca [12 x i8], align 4
  %_48 = alloca [8 x i8], align 4
  %iter3 = alloca [12 x i8], align 4
  %_46 = alloca [12 x i8], align 4
  %_45 = alloca [12 x i8], align 4
  %_41 = alloca [8 x i8], align 4
  %iter2 = alloca [12 x i8], align 4
  %_39 = alloca [12 x i8], align 4
  %_38 = alloca [12 x i8], align 4
  %_30 = alloca [8 x i8], align 4
  %iter1 = alloca [12 x i8], align 4
  %_28 = alloca [12 x i8], align 4
  %_27 = alloca [12 x i8], align 4
  %_15 = alloca [8 x i8], align 4
  %iter = alloca [12 x i8], align 4
  %_13 = alloca [12 x i8], align 4
  %_12 = alloca [12 x i8], align 4
  %_4 = alloca [24 x i8], align 8
  %egg_floor = alloca [24 x i8], align 8
  store i8 0, ptr %_101, align 1
  %_6 = sext i32 %k to i64
  %_7.0 = add i64 %_6, 1
  %_7.1 = icmp ult i64 %_7.0, %_6
  br i1 %_7.1, label %panic, label %bb1

bb1:                                              ; preds = %start
  store i8 1, ptr %_101, align 1
; call alloc::vec::from_elem
  call void @_ZN5alloc3vec9from_elem17h74544d21271e6d10E(ptr sret([24 x i8]) align 8 %_4, i32 0, i64 %_7.0)
  %_9 = sext i32 %n to i64
  %_10.0 = add i64 %_9, 1
  %_10.1 = icmp ult i64 %_10.0, %_9
  br i1 %_10.1, label %panic5, label %bb3

panic:                                            ; preds = %start
; call core::panicking::panic_const::panic_const_add_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_5af483fb9a368bca39d3dac2fd297ad1) #23
  unreachable

bb3:                                              ; preds = %bb1
  store i8 0, ptr %_101, align 1
; invoke alloc::vec::from_elem
  invoke void @_ZN5alloc3vec9from_elem17h6dd929fdba794efdE(ptr sret([24 x i8]) align 8 %egg_floor, ptr align 8 %_4, i64 %_10.0)
          to label %bb4 unwind label %cleanup

panic5:                                           ; preds = %bb1
; invoke core::panicking::panic_const::panic_const_add_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_166945332174085584474eff1103b6e1) #24
          to label %unreachable unwind label %cleanup

bb62:                                             ; preds = %cleanup
  %1 = load i8, ptr %_101, align 1
  %2 = trunc nuw i8 %1 to i1
  br i1 %2, label %bb61, label %bb60

cleanup:                                          ; preds = %bb3, %panic5
  %3 = landingpad { ptr, i32 }
          cleanup
  %4 = extractvalue { ptr, i32 } %3, 0
  %5 = extractvalue { ptr, i32 } %3, 1
  store ptr %4, ptr %0, align 8
  %6 = getelementptr inbounds i8, ptr %0, i64 8
  store i32 %5, ptr %6, align 8
  br label %bb62

unreachable:                                      ; preds = %panic10, %panic9, %panic8, %panic7, %panic5
  unreachable

bb4:                                              ; preds = %bb3
  store i8 0, ptr %_101, align 1
; invoke core::ops::range::RangeInclusive<Idx>::new
  invoke void @"_ZN4core3ops5range25RangeInclusive$LT$Idx$GT$3new17hfcdd93f52c1f7ac0E"(ptr sret([12 x i8]) align 4 %_13, i32 1, i32 %n)
          to label %bb5 unwind label %cleanup6

bb59:                                             ; preds = %cleanup6
; invoke core::ptr::drop_in_place<alloc::vec::Vec<alloc::vec::Vec<i32>>>
  invoke void @"_ZN4core3ptr70drop_in_place$LT$alloc..vec..Vec$LT$alloc..vec..Vec$LT$i32$GT$$GT$$GT$17hbabd58f46bec568aE"(ptr align 8 %egg_floor) #22
          to label %bb60 unwind label %terminate

cleanup6:                                         ; preds = %bb14, %bb13, %bb12, %bb10, %bb22, %bb20, %bb54, %bb53, %bb51, %bb50, %panic10, %bb48, %bb47, %panic9, %bb45, %bb44, %panic8, %bb42, %panic7, %bb39, %bb37, %bb36, %bb35, %bb34, %bb32, %bb30, %bb28, %bb56, %bb29, %bb26, %bb24, %bb21, %bb18, %bb16, %bb11, %bb7, %bb5, %bb4
  %7 = landingpad { ptr, i32 }
          cleanup
  %8 = extractvalue { ptr, i32 } %7, 0
  %9 = extractvalue { ptr, i32 } %7, 1
  store ptr %8, ptr %0, align 8
  %10 = getelementptr inbounds i8, ptr %0, i64 8
  store i32 %9, ptr %10, align 8
  br label %bb59

bb5:                                              ; preds = %bb4
; invoke <I as core::iter::traits::collect::IntoIterator>::into_iter
  invoke void @"_ZN63_$LT$I$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17h959e542023b7bcf7E"(ptr sret([12 x i8]) align 4 %_12, ptr align 4 %_13)
          to label %bb6 unwind label %cleanup6

bb6:                                              ; preds = %bb5
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %iter, ptr align 4 %_12, i64 12, i1 false)
  br label %bb7

bb7:                                              ; preds = %bb15, %bb6
; invoke core::iter::range::<impl core::iter::traits::iterator::Iterator for core::ops::range::RangeInclusive<A>>::next
  %11 = invoke { i32, i32 } @"_ZN4core4iter5range110_$LT$impl$u20$core..iter..traits..iterator..Iterator$u20$for$u20$core..ops..range..RangeInclusive$LT$A$GT$$GT$4next17h69838bdb0ec33d71E"(ptr align 4 %iter)
          to label %bb8 unwind label %cleanup6

bb8:                                              ; preds = %bb7
  %12 = extractvalue { i32, i32 } %11, 0
  %13 = extractvalue { i32, i32 } %11, 1
  store i32 %12, ptr %_15, align 4
  %14 = getelementptr inbounds i8, ptr %_15, i64 4
  store i32 %13, ptr %14, align 4
  %15 = load i32, ptr %_15, align 4
  %16 = getelementptr inbounds i8, ptr %_15, i64 4
  %17 = load i32, ptr %16, align 4
  %_17 = zext i32 %15 to i64
  %18 = trunc nuw i64 %_17 to i1
  br i1 %18, label %bb10, label %bb11

bb10:                                             ; preds = %bb8
  %19 = getelementptr inbounds i8, ptr %_15, i64 4
  %i12 = load i32, ptr %19, align 4
  %_22 = sext i32 %i12 to i64
; invoke <alloc::vec::Vec<T,A> as core::ops::index::IndexMut<I>>::index_mut
  %_20 = invoke align 8 ptr @"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h131a97b52f1eafc0E"(ptr align 8 %egg_floor, i64 %_22, ptr align 8 @alloc_a45a3ada32d02356006c6967e63029ea)
          to label %bb12 unwind label %cleanup6

bb11:                                             ; preds = %bb8
; invoke core::ops::range::RangeInclusive<Idx>::new
  invoke void @"_ZN4core3ops5range25RangeInclusive$LT$Idx$GT$3new17hfcdd93f52c1f7ac0E"(ptr sret([12 x i8]) align 4 %_28, i32 1, i32 %k)
          to label %bb16 unwind label %cleanup6

bb16:                                             ; preds = %bb11
; invoke <I as core::iter::traits::collect::IntoIterator>::into_iter
  invoke void @"_ZN63_$LT$I$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17h959e542023b7bcf7E"(ptr sret([12 x i8]) align 4 %_27, ptr align 4 %_28)
          to label %bb17 unwind label %cleanup6

bb17:                                             ; preds = %bb16
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %iter1, ptr align 4 %_27, i64 12, i1 false)
  br label %bb18

bb18:                                             ; preds = %bb23, %bb17
; invoke core::iter::range::<impl core::iter::traits::iterator::Iterator for core::ops::range::RangeInclusive<A>>::next
  %20 = invoke { i32, i32 } @"_ZN4core4iter5range110_$LT$impl$u20$core..iter..traits..iterator..Iterator$u20$for$u20$core..ops..range..RangeInclusive$LT$A$GT$$GT$4next17h69838bdb0ec33d71E"(ptr align 4 %iter1)
          to label %bb19 unwind label %cleanup6

bb19:                                             ; preds = %bb18
  %21 = extractvalue { i32, i32 } %20, 0
  %22 = extractvalue { i32, i32 } %20, 1
  store i32 %21, ptr %_30, align 4
  %23 = getelementptr inbounds i8, ptr %_30, i64 4
  store i32 %22, ptr %23, align 4
  %24 = load i32, ptr %_30, align 4
  %25 = getelementptr inbounds i8, ptr %_30, i64 4
  %26 = load i32, ptr %25, align 4
  %_32 = zext i32 %24 to i64
  %27 = trunc nuw i64 %_32 to i1
  br i1 %27, label %bb20, label %bb21

bb20:                                             ; preds = %bb19
  %28 = getelementptr inbounds i8, ptr %_30, i64 4
  %j11 = load i32, ptr %28, align 4
; invoke <alloc::vec::Vec<T,A> as core::ops::index::IndexMut<I>>::index_mut
  %_35 = invoke align 8 ptr @"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h131a97b52f1eafc0E"(ptr align 8 %egg_floor, i64 1, ptr align 8 @alloc_f4c1fc385b1e1b09c5d67512231de85e)
          to label %bb22 unwind label %cleanup6

bb21:                                             ; preds = %bb19
; invoke core::ops::range::RangeInclusive<Idx>::new
  invoke void @"_ZN4core3ops5range25RangeInclusive$LT$Idx$GT$3new17hfcdd93f52c1f7ac0E"(ptr sret([12 x i8]) align 4 %_39, i32 2, i32 %n)
          to label %bb24 unwind label %cleanup6

bb24:                                             ; preds = %bb21
; invoke <I as core::iter::traits::collect::IntoIterator>::into_iter
  invoke void @"_ZN63_$LT$I$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17h959e542023b7bcf7E"(ptr sret([12 x i8]) align 4 %_38, ptr align 4 %_39)
          to label %bb25 unwind label %cleanup6

bb25:                                             ; preds = %bb24
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %iter2, ptr align 4 %_38, i64 12, i1 false)
  br label %bb26

bb26:                                             ; preds = %bb33, %bb25
; invoke core::iter::range::<impl core::iter::traits::iterator::Iterator for core::ops::range::RangeInclusive<A>>::next
  %29 = invoke { i32, i32 } @"_ZN4core4iter5range110_$LT$impl$u20$core..iter..traits..iterator..Iterator$u20$for$u20$core..ops..range..RangeInclusive$LT$A$GT$$GT$4next17h69838bdb0ec33d71E"(ptr align 4 %iter2)
          to label %bb27 unwind label %cleanup6

bb27:                                             ; preds = %bb26
  %30 = extractvalue { i32, i32 } %29, 0
  %31 = extractvalue { i32, i32 } %29, 1
  store i32 %30, ptr %_41, align 4
  %32 = getelementptr inbounds i8, ptr %_41, i64 4
  store i32 %31, ptr %32, align 4
  %33 = load i32, ptr %_41, align 4
  %34 = getelementptr inbounds i8, ptr %_41, i64 4
  %35 = load i32, ptr %34, align 4
  %_43 = zext i32 %33 to i64
  %36 = trunc nuw i64 %_43 to i1
  br i1 %36, label %bb28, label %bb29

bb28:                                             ; preds = %bb27
  %37 = getelementptr inbounds i8, ptr %_41, i64 4
  %i = load i32, ptr %37, align 4
; invoke core::ops::range::RangeInclusive<Idx>::new
  invoke void @"_ZN4core3ops5range25RangeInclusive$LT$Idx$GT$3new17hfcdd93f52c1f7ac0E"(ptr sret([12 x i8]) align 4 %_46, i32 2, i32 %k)
          to label %bb30 unwind label %cleanup6

bb29:                                             ; preds = %bb27
  %_99 = sext i32 %n to i64
; invoke <alloc::vec::Vec<T,A> as core::ops::index::Index<I>>::index
  %_97 = invoke align 8 ptr @"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h5473dc7de86550eeE"(ptr align 8 %egg_floor, i64 %_99, ptr align 8 @alloc_fdcf2c6d2150b2fc9bae18ecd7fcd3ba)
          to label %bb56 unwind label %cleanup6

bb56:                                             ; preds = %bb29
  %_100 = sext i32 %k to i64
; invoke <alloc::vec::Vec<T,A> as core::ops::index::Index<I>>::index
  %_96 = invoke align 4 ptr @"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h047772fb7fd5bc53E"(ptr align 8 %_97, i64 %_100, ptr align 8 @alloc_2429a749cd708bad3bd715664c620beb)
          to label %bb57 unwind label %cleanup6

bb57:                                             ; preds = %bb56
  %_0 = load i32, ptr %_96, align 4
; call core::ptr::drop_in_place<alloc::vec::Vec<alloc::vec::Vec<i32>>>
  call void @"_ZN4core3ptr70drop_in_place$LT$alloc..vec..Vec$LT$alloc..vec..Vec$LT$i32$GT$$GT$$GT$17hbabd58f46bec568aE"(ptr align 8 %egg_floor)
  ret i32 %_0

bb30:                                             ; preds = %bb28
; invoke <I as core::iter::traits::collect::IntoIterator>::into_iter
  invoke void @"_ZN63_$LT$I$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17h959e542023b7bcf7E"(ptr sret([12 x i8]) align 4 %_45, ptr align 4 %_46)
          to label %bb31 unwind label %cleanup6

bb31:                                             ; preds = %bb30
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %iter3, ptr align 4 %_45, i64 12, i1 false)
  br label %bb32

bb32:                                             ; preds = %bb40, %bb31
; invoke core::iter::range::<impl core::iter::traits::iterator::Iterator for core::ops::range::RangeInclusive<A>>::next
  %38 = invoke { i32, i32 } @"_ZN4core4iter5range110_$LT$impl$u20$core..iter..traits..iterator..Iterator$u20$for$u20$core..ops..range..RangeInclusive$LT$A$GT$$GT$4next17h69838bdb0ec33d71E"(ptr align 4 %iter3)
          to label %bb33 unwind label %cleanup6

bb33:                                             ; preds = %bb32
  %39 = extractvalue { i32, i32 } %38, 0
  %40 = extractvalue { i32, i32 } %38, 1
  store i32 %39, ptr %_48, align 4
  %41 = getelementptr inbounds i8, ptr %_48, i64 4
  store i32 %40, ptr %41, align 4
  %42 = load i32, ptr %_48, align 4
  %43 = getelementptr inbounds i8, ptr %_48, i64 4
  %44 = load i32, ptr %43, align 4
  %_50 = zext i32 %42 to i64
  %45 = trunc nuw i64 %_50 to i1
  br i1 %45, label %bb34, label %bb26

bb34:                                             ; preds = %bb33
  %46 = getelementptr inbounds i8, ptr %_48, i64 4
  %j = load i32, ptr %46, align 4
  %_55 = sext i32 %i to i64
; invoke <alloc::vec::Vec<T,A> as core::ops::index::IndexMut<I>>::index_mut
  %_53 = invoke align 8 ptr @"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h131a97b52f1eafc0E"(ptr align 8 %egg_floor, i64 %_55, ptr align 8 @alloc_fc1b892186aa1294ed00c965fc9f7acd)
          to label %bb35 unwind label %cleanup6

bb35:                                             ; preds = %bb34
  %_56 = sext i32 %j to i64
; invoke <alloc::vec::Vec<T,A> as core::ops::index::IndexMut<I>>::index_mut
  %_52 = invoke align 4 ptr @"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17hac6dba241742212cE"(ptr align 8 %_53, i64 %_56, ptr align 8 @alloc_2f73a3f93ea74f024ba3d3d946c0327b)
          to label %bb36 unwind label %cleanup6

bb36:                                             ; preds = %bb35
  %47 = call i32 @llvm.fptosi.sat.i32.f32(float 0x7FF0000000000000)
  store i32 %47, ptr %_52, align 4
; invoke core::ops::range::RangeInclusive<Idx>::new
  invoke void @"_ZN4core3ops5range25RangeInclusive$LT$Idx$GT$3new17hfcdd93f52c1f7ac0E"(ptr sret([12 x i8]) align 4 %_58, i32 1, i32 %j)
          to label %bb37 unwind label %cleanup6

bb37:                                             ; preds = %bb36
; invoke <I as core::iter::traits::collect::IntoIterator>::into_iter
  invoke void @"_ZN63_$LT$I$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17h959e542023b7bcf7E"(ptr sret([12 x i8]) align 4 %_57, ptr align 4 %_58)
          to label %bb38 unwind label %cleanup6

bb38:                                             ; preds = %bb37
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %iter4, ptr align 4 %_57, i64 12, i1 false)
  br label %bb39

bb39:                                             ; preds = %bb55, %bb52, %bb38
; invoke core::iter::range::<impl core::iter::traits::iterator::Iterator for core::ops::range::RangeInclusive<A>>::next
  %48 = invoke { i32, i32 } @"_ZN4core4iter5range110_$LT$impl$u20$core..iter..traits..iterator..Iterator$u20$for$u20$core..ops..range..RangeInclusive$LT$A$GT$$GT$4next17h69838bdb0ec33d71E"(ptr align 4 %iter4)
          to label %bb40 unwind label %cleanup6

bb40:                                             ; preds = %bb39
  %49 = extractvalue { i32, i32 } %48, 0
  %50 = extractvalue { i32, i32 } %48, 1
  store i32 %49, ptr %_60, align 4
  %51 = getelementptr inbounds i8, ptr %_60, i64 4
  store i32 %50, ptr %51, align 4
  %52 = load i32, ptr %_60, align 4
  %53 = getelementptr inbounds i8, ptr %_60, i64 4
  %54 = load i32, ptr %53, align 4
  %_62 = zext i32 %52 to i64
  %55 = trunc nuw i64 %_62 to i1
  br i1 %55, label %bb41, label %bb32

bb41:                                             ; preds = %bb40
  %56 = getelementptr inbounds i8, ptr %_60, i64 4
  %x = load i32, ptr %56, align 4
  %_70 = sext i32 %i to i64
  %_71.0 = sub i64 %_70, 1
  %_71.1 = icmp ult i64 %_70, 1
  br i1 %_71.1, label %panic7, label %bb42

bb42:                                             ; preds = %bb41
; invoke <alloc::vec::Vec<T,A> as core::ops::index::Index<I>>::index
  %_67 = invoke align 8 ptr @"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h5473dc7de86550eeE"(ptr align 8 %egg_floor, i64 %_71.0, ptr align 8 @alloc_b911eee1ed79bf2f2ab75ea1bd163924)
          to label %bb43 unwind label %cleanup6

panic7:                                           ; preds = %bb41
; invoke core::panicking::panic_const::panic_const_sub_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_sub_overflow17h134cc1a7f93654deE(ptr align 8 @alloc_b33e00305d9e360717e23689abd46ff9) #24
          to label %unreachable unwind label %cleanup6

bb43:                                             ; preds = %bb42
  %57 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %x, i32 1)
  %_74.0 = extractvalue { i32, i1 } %57, 0
  %_74.1 = extractvalue { i32, i1 } %57, 1
  br i1 %_74.1, label %panic8, label %bb44

bb44:                                             ; preds = %bb43
  %_72 = sext i32 %_74.0 to i64
; invoke <alloc::vec::Vec<T,A> as core::ops::index::Index<I>>::index
  %_66 = invoke align 4 ptr @"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h047772fb7fd5bc53E"(ptr align 8 %_67, i64 %_72, ptr align 8 @alloc_4d7b73b0c4b699d0f47426473d564737)
          to label %bb45 unwind label %cleanup6

panic8:                                           ; preds = %bb43
; invoke core::panicking::panic_const::panic_const_sub_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_sub_overflow17h134cc1a7f93654deE(ptr align 8 @alloc_c8774822b7f2931d0eb965fa7b82ff19) #24
          to label %unreachable unwind label %cleanup6

bb45:                                             ; preds = %bb44
  %_65 = load i32, ptr %_66, align 4
  %_79 = sext i32 %i to i64
; invoke <alloc::vec::Vec<T,A> as core::ops::index::Index<I>>::index
  %_77 = invoke align 8 ptr @"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h5473dc7de86550eeE"(ptr align 8 %egg_floor, i64 %_79, ptr align 8 @alloc_2f5910b2496361c9938cbffac9cb9af1)
          to label %bb46 unwind label %cleanup6

bb46:                                             ; preds = %bb45
  %58 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %j, i32 %x)
  %_82.0 = extractvalue { i32, i1 } %58, 0
  %_82.1 = extractvalue { i32, i1 } %58, 1
  br i1 %_82.1, label %panic9, label %bb47

bb47:                                             ; preds = %bb46
  %_80 = sext i32 %_82.0 to i64
; invoke <alloc::vec::Vec<T,A> as core::ops::index::Index<I>>::index
  %_76 = invoke align 4 ptr @"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h047772fb7fd5bc53E"(ptr align 8 %_77, i64 %_80, ptr align 8 @alloc_eb67e84b433205304f18292273289147)
          to label %bb48 unwind label %cleanup6

panic9:                                           ; preds = %bb46
; invoke core::panicking::panic_const::panic_const_sub_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_sub_overflow17h134cc1a7f93654deE(ptr align 8 @alloc_3af6480c7d36320939b8ca8b218d009b) #24
          to label %unreachable unwind label %cleanup6

bb48:                                             ; preds = %bb47
  %_75 = load i32, ptr %_76, align 4
; invoke core::cmp::Ord::max
  %_64 = invoke i32 @_ZN4core3cmp3Ord3max17hb6ed5e7ef185c150E(i32 %_65, i32 %_75)
          to label %bb49 unwind label %cleanup6

bb49:                                             ; preds = %bb48
  %59 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 1, i32 %_64)
  %_83.0 = extractvalue { i32, i1 } %59, 0
  %_83.1 = extractvalue { i32, i1 } %59, 1
  br i1 %_83.1, label %panic10, label %bb50

bb50:                                             ; preds = %bb49
  %_89 = sext i32 %i to i64
; invoke <alloc::vec::Vec<T,A> as core::ops::index::Index<I>>::index
  %_87 = invoke align 8 ptr @"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h5473dc7de86550eeE"(ptr align 8 %egg_floor, i64 %_89, ptr align 8 @alloc_b4ed3681d3455f0be8e4aa3fae97bcca)
          to label %bb51 unwind label %cleanup6

panic10:                                          ; preds = %bb49
; invoke core::panicking::panic_const::panic_const_add_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_ead9320a0ab8e69848aac4930d26173c) #24
          to label %unreachable unwind label %cleanup6

bb51:                                             ; preds = %bb50
  %_90 = sext i32 %j to i64
; invoke <alloc::vec::Vec<T,A> as core::ops::index::Index<I>>::index
  %_86 = invoke align 4 ptr @"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h047772fb7fd5bc53E"(ptr align 8 %_87, i64 %_90, ptr align 8 @alloc_0a3293fb90ec7a21ca3ec3f6d8e1128f)
          to label %bb52 unwind label %cleanup6

bb52:                                             ; preds = %bb51
  %_85 = load i32, ptr %_86, align 4
  %_84 = icmp slt i32 %_83.0, %_85
  br i1 %_84, label %bb53, label %bb39

bb53:                                             ; preds = %bb52
  %_94 = sext i32 %i to i64
; invoke <alloc::vec::Vec<T,A> as core::ops::index::IndexMut<I>>::index_mut
  %_92 = invoke align 8 ptr @"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h131a97b52f1eafc0E"(ptr align 8 %egg_floor, i64 %_94, ptr align 8 @alloc_e6398d1c015a43b900a426b3d0050304)
          to label %bb54 unwind label %cleanup6

bb54:                                             ; preds = %bb53
  %_95 = sext i32 %j to i64
; invoke <alloc::vec::Vec<T,A> as core::ops::index::IndexMut<I>>::index_mut
  %_91 = invoke align 4 ptr @"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17hac6dba241742212cE"(ptr align 8 %_92, i64 %_95, ptr align 8 @alloc_44214bf0243c44e79de20f5fbf60d1fe)
          to label %bb55 unwind label %cleanup6

bb55:                                             ; preds = %bb54
  store i32 %_83.0, ptr %_91, align 4
  br label %bb39

bb22:                                             ; preds = %bb20
  %_37 = sext i32 %j11 to i64
; invoke <alloc::vec::Vec<T,A> as core::ops::index::IndexMut<I>>::index_mut
  %_34 = invoke align 4 ptr @"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17hac6dba241742212cE"(ptr align 8 %_35, i64 %_37, ptr align 8 @alloc_13ae6f97f744c199421ef8bc95f56e8a)
          to label %bb23 unwind label %cleanup6

bb23:                                             ; preds = %bb22
  store i32 %j11, ptr %_34, align 4
  br label %bb18

bb12:                                             ; preds = %bb10
; invoke <alloc::vec::Vec<T,A> as core::ops::index::IndexMut<I>>::index_mut
  %_19 = invoke align 4 ptr @"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17hac6dba241742212cE"(ptr align 8 %_20, i64 1, ptr align 8 @alloc_c1c7dccd1e4c49c1a9426c88282fb090)
          to label %bb13 unwind label %cleanup6

bb13:                                             ; preds = %bb12
  store i32 1, ptr %_19, align 4
  %_26 = sext i32 %i12 to i64
; invoke <alloc::vec::Vec<T,A> as core::ops::index::IndexMut<I>>::index_mut
  %_24 = invoke align 8 ptr @"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h131a97b52f1eafc0E"(ptr align 8 %egg_floor, i64 %_26, ptr align 8 @alloc_b1f7b8b4bf22f3b08eab99ed4865e487)
          to label %bb14 unwind label %cleanup6

bb14:                                             ; preds = %bb13
; invoke <alloc::vec::Vec<T,A> as core::ops::index::IndexMut<I>>::index_mut
  %_23 = invoke align 4 ptr @"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17hac6dba241742212cE"(ptr align 8 %_24, i64 0, ptr align 8 @alloc_2f348a379fb378620ae67469b6464b82)
          to label %bb15 unwind label %cleanup6

bb15:                                             ; preds = %bb14
  store i32 0, ptr %_23, align 4
  br label %bb7

bb9:                                              ; No predecessors!
  unreachable

terminate:                                        ; preds = %bb61, %bb59
  %60 = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer
; call core::panicking::panic_in_cleanup
  call void @_ZN4core9panicking16panic_in_cleanup17h5f6bde45d17ae243E() #21
  unreachable

bb60:                                             ; preds = %bb61, %bb62, %bb59
  %61 = load ptr, ptr %0, align 8
  %62 = getelementptr inbounds i8, ptr %0, i64 8
  %63 = load i32, ptr %62, align 8
  %64 = insertvalue { ptr, i32 } poison, ptr %61, 0
  %65 = insertvalue { ptr, i32 } %64, i32 %63, 1
  resume { ptr, i32 } %65

bb61:                                             ; preds = %bb62
; invoke core::ptr::drop_in_place<alloc::vec::Vec<i32>>
  invoke void @"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17h2d9035506b21a83eE"(ptr align 8 %_4) #22
          to label %bb60 unwind label %terminate
}

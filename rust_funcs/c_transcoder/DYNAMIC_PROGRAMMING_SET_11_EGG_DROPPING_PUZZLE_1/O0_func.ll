define i32 @f_gold(i32 %n, i32 %k) unnamed_addr #3 personality ptr @rust_eh_personality {
start:
  %0 = alloca [16 x i8], align 8
  %_97 = alloca [1 x i8], align 1
  %_56 = alloca [8 x i8], align 4
  %iter4 = alloca [12 x i8], align 4
  %_54 = alloca [12 x i8], align 4
  %_53 = alloca [12 x i8], align 4
  %_44 = alloca [8 x i8], align 4
  %iter3 = alloca [12 x i8], align 4
  %_42 = alloca [12 x i8], align 4
  %_41 = alloca [12 x i8], align 4
  %_37 = alloca [8 x i8], align 4
  %iter2 = alloca [12 x i8], align 4
  %_35 = alloca [12 x i8], align 4
  %_34 = alloca [12 x i8], align 4
  %_26 = alloca [8 x i8], align 4
  %iter1 = alloca [12 x i8], align 4
  %_24 = alloca [12 x i8], align 4
  %_23 = alloca [12 x i8], align 4
  %_15 = alloca [8 x i8], align 4
  %iter = alloca [12 x i8], align 4
  %_13 = alloca [12 x i8], align 4
  %_12 = alloca [12 x i8], align 4
  %_4 = alloca [24 x i8], align 8
  %egg_floor = alloca [24 x i8], align 8
  store i8 0, ptr %_97, align 1
  %_6 = sext i32 %k to i64
  %_7.0 = add i64 %_6, 1
  %_7.1 = icmp ult i64 %_7.0, %_6
  br i1 %_7.1, label %panic, label %bb1

bb1:                                              ; preds = %start
  store i8 1, ptr %_97, align 1
; call alloc::vec::from_elem
  call void @_ZN5alloc3vec9from_elem17h74544d21271e6d10E(ptr sret([24 x i8]) align 8 %_4, i32 0, i64 %_7.0)
  %_9 = sext i32 %n to i64
  %_10.0 = add i64 %_9, 1
  %_10.1 = icmp ult i64 %_10.0, %_9
  br i1 %_10.1, label %panic5, label %bb3

panic:                                            ; preds = %start
; call core::panicking::panic_const::panic_const_add_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_99d2649210c7aec6dc3f781e8c528d1d) #23
  unreachable

bb3:                                              ; preds = %bb1
  store i8 0, ptr %_97, align 1
; invoke alloc::vec::from_elem
  invoke void @_ZN5alloc3vec9from_elem17h6dd929fdba794efdE(ptr sret([24 x i8]) align 8 %egg_floor, ptr align 8 %_4, i64 %_10.0)
          to label %bb4 unwind label %cleanup

panic5:                                           ; preds = %bb1
; invoke core::panicking::panic_const::panic_const_add_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_dac4ef2e7ea36fb19de9d79aca5a8279) #24
          to label %unreachable unwind label %cleanup

bb60:                                             ; preds = %cleanup
  %1 = load i8, ptr %_97, align 1
  %2 = trunc nuw i8 %1 to i1
  br i1 %2, label %bb59, label %bb58

cleanup:                                          ; preds = %bb3, %panic5
  %3 = landingpad { ptr, i32 }
          cleanup
  %4 = extractvalue { ptr, i32 } %3, 0
  %5 = extractvalue { ptr, i32 } %3, 1
  store ptr %4, ptr %0, align 8
  %6 = getelementptr inbounds i8, ptr %0, i64 8
  store i32 %5, ptr %6, align 8
  br label %bb60

unreachable:                                      ; preds = %panic10, %panic9, %panic8, %panic7, %panic5
  unreachable

bb4:                                              ; preds = %bb3
  store i8 0, ptr %_97, align 1
; invoke core::ops::range::RangeInclusive<Idx>::new
  invoke void @"_ZN4core3ops5range25RangeInclusive$LT$Idx$GT$3new17hfcdd93f52c1f7ac0E"(ptr sret([12 x i8]) align 4 %_13, i32 1, i32 %n)
          to label %bb5 unwind label %cleanup6

bb57:                                             ; preds = %cleanup6
; invoke core::ptr::drop_in_place<alloc::vec::Vec<alloc::vec::Vec<i32>>>
  invoke void @"_ZN4core3ptr70drop_in_place$LT$alloc..vec..Vec$LT$alloc..vec..Vec$LT$i32$GT$$GT$$GT$17hbabd58f46bec568aE"(ptr align 8 %egg_floor) #22
          to label %bb58 unwind label %terminate

cleanup6:                                         ; preds = %bb12, %bb10, %bb20, %bb18, %bb52, %bb51, %bb49, %bb48, %panic10, %bb46, %bb45, %panic9, %bb43, %bb42, %panic8, %bb40, %panic7, %bb37, %bb35, %bb34, %bb33, %bb32, %bb30, %bb28, %bb26, %bb54, %bb27, %bb24, %bb22, %bb19, %bb16, %bb14, %bb11, %bb7, %bb5, %bb4
  %7 = landingpad { ptr, i32 }
          cleanup
  %8 = extractvalue { ptr, i32 } %7, 0
  %9 = extractvalue { ptr, i32 } %7, 1
  store ptr %8, ptr %0, align 8
  %10 = getelementptr inbounds i8, ptr %0, i64 8
  store i32 %9, ptr %10, align 8
  br label %bb57

bb5:                                              ; preds = %bb4
; invoke <I as core::iter::traits::collect::IntoIterator>::into_iter
  invoke void @"_ZN63_$LT$I$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17h959e542023b7bcf7E"(ptr sret([12 x i8]) align 4 %_12, ptr align 4 %_13)
          to label %bb6 unwind label %cleanup6

bb6:                                              ; preds = %bb5
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %iter, ptr align 4 %_12, i64 12, i1 false)
  br label %bb7

bb7:                                              ; preds = %bb13, %bb6
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
  %_20 = invoke align 8 ptr @"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h131a97b52f1eafc0E"(ptr align 8 %egg_floor, i64 %_22, ptr align 8 @alloc_5703a26db8bc9ce61e1f1ea4fc9d51b8)
          to label %bb12 unwind label %cleanup6

bb11:                                             ; preds = %bb8
; invoke core::ops::range::RangeInclusive<Idx>::new
  invoke void @"_ZN4core3ops5range25RangeInclusive$LT$Idx$GT$3new17hfcdd93f52c1f7ac0E"(ptr sret([12 x i8]) align 4 %_24, i32 1, i32 %k)
          to label %bb14 unwind label %cleanup6

bb14:                                             ; preds = %bb11
; invoke <I as core::iter::traits::collect::IntoIterator>::into_iter
  invoke void @"_ZN63_$LT$I$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17h959e542023b7bcf7E"(ptr sret([12 x i8]) align 4 %_23, ptr align 4 %_24)
          to label %bb15 unwind label %cleanup6

bb15:                                             ; preds = %bb14
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %iter1, ptr align 4 %_23, i64 12, i1 false)
  br label %bb16

bb16:                                             ; preds = %bb21, %bb15
; invoke core::iter::range::<impl core::iter::traits::iterator::Iterator for core::ops::range::RangeInclusive<A>>::next
  %20 = invoke { i32, i32 } @"_ZN4core4iter5range110_$LT$impl$u20$core..iter..traits..iterator..Iterator$u20$for$u20$core..ops..range..RangeInclusive$LT$A$GT$$GT$4next17h69838bdb0ec33d71E"(ptr align 4 %iter1)
          to label %bb17 unwind label %cleanup6

bb17:                                             ; preds = %bb16
  %21 = extractvalue { i32, i32 } %20, 0
  %22 = extractvalue { i32, i32 } %20, 1
  store i32 %21, ptr %_26, align 4
  %23 = getelementptr inbounds i8, ptr %_26, i64 4
  store i32 %22, ptr %23, align 4
  %24 = load i32, ptr %_26, align 4
  %25 = getelementptr inbounds i8, ptr %_26, i64 4
  %26 = load i32, ptr %25, align 4
  %_28 = zext i32 %24 to i64
  %27 = trunc nuw i64 %_28 to i1
  br i1 %27, label %bb18, label %bb19

bb18:                                             ; preds = %bb17
  %28 = getelementptr inbounds i8, ptr %_26, i64 4
  %j11 = load i32, ptr %28, align 4
; invoke <alloc::vec::Vec<T,A> as core::ops::index::IndexMut<I>>::index_mut
  %_31 = invoke align 8 ptr @"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h131a97b52f1eafc0E"(ptr align 8 %egg_floor, i64 1, ptr align 8 @alloc_bfa1fe9798ef53d444f653cd4902de1e)
          to label %bb20 unwind label %cleanup6

bb19:                                             ; preds = %bb17
; invoke core::ops::range::RangeInclusive<Idx>::new
  invoke void @"_ZN4core3ops5range25RangeInclusive$LT$Idx$GT$3new17hfcdd93f52c1f7ac0E"(ptr sret([12 x i8]) align 4 %_35, i32 2, i32 %n)
          to label %bb22 unwind label %cleanup6

bb22:                                             ; preds = %bb19
; invoke <I as core::iter::traits::collect::IntoIterator>::into_iter
  invoke void @"_ZN63_$LT$I$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17h959e542023b7bcf7E"(ptr sret([12 x i8]) align 4 %_34, ptr align 4 %_35)
          to label %bb23 unwind label %cleanup6

bb23:                                             ; preds = %bb22
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %iter2, ptr align 4 %_34, i64 12, i1 false)
  br label %bb24

bb24:                                             ; preds = %bb31, %bb23
; invoke core::iter::range::<impl core::iter::traits::iterator::Iterator for core::ops::range::RangeInclusive<A>>::next
  %29 = invoke { i32, i32 } @"_ZN4core4iter5range110_$LT$impl$u20$core..iter..traits..iterator..Iterator$u20$for$u20$core..ops..range..RangeInclusive$LT$A$GT$$GT$4next17h69838bdb0ec33d71E"(ptr align 4 %iter2)
          to label %bb25 unwind label %cleanup6

bb25:                                             ; preds = %bb24
  %30 = extractvalue { i32, i32 } %29, 0
  %31 = extractvalue { i32, i32 } %29, 1
  store i32 %30, ptr %_37, align 4
  %32 = getelementptr inbounds i8, ptr %_37, i64 4
  store i32 %31, ptr %32, align 4
  %33 = load i32, ptr %_37, align 4
  %34 = getelementptr inbounds i8, ptr %_37, i64 4
  %35 = load i32, ptr %34, align 4
  %_39 = zext i32 %33 to i64
  %36 = trunc nuw i64 %_39 to i1
  br i1 %36, label %bb26, label %bb27

bb26:                                             ; preds = %bb25
  %37 = getelementptr inbounds i8, ptr %_37, i64 4
  %i = load i32, ptr %37, align 4
; invoke core::ops::range::RangeInclusive<Idx>::new
  invoke void @"_ZN4core3ops5range25RangeInclusive$LT$Idx$GT$3new17hfcdd93f52c1f7ac0E"(ptr sret([12 x i8]) align 4 %_42, i32 2, i32 %k)
          to label %bb28 unwind label %cleanup6

bb27:                                             ; preds = %bb25
  %_95 = sext i32 %n to i64
; invoke <alloc::vec::Vec<T,A> as core::ops::index::Index<I>>::index
  %_93 = invoke align 8 ptr @"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h5473dc7de86550eeE"(ptr align 8 %egg_floor, i64 %_95, ptr align 8 @alloc_979425176b9e4e936d365fbedae723fa)
          to label %bb54 unwind label %cleanup6

bb54:                                             ; preds = %bb27
  %_96 = sext i32 %k to i64
; invoke <alloc::vec::Vec<T,A> as core::ops::index::Index<I>>::index
  %_92 = invoke align 4 ptr @"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h047772fb7fd5bc53E"(ptr align 8 %_93, i64 %_96, ptr align 8 @alloc_e7bb9824e3ee364bf45d0b902cc723c3)
          to label %bb55 unwind label %cleanup6

bb55:                                             ; preds = %bb54
  %_0 = load i32, ptr %_92, align 4
; call core::ptr::drop_in_place<alloc::vec::Vec<alloc::vec::Vec<i32>>>
  call void @"_ZN4core3ptr70drop_in_place$LT$alloc..vec..Vec$LT$alloc..vec..Vec$LT$i32$GT$$GT$$GT$17hbabd58f46bec568aE"(ptr align 8 %egg_floor)
  ret i32 %_0

bb28:                                             ; preds = %bb26
; invoke <I as core::iter::traits::collect::IntoIterator>::into_iter
  invoke void @"_ZN63_$LT$I$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17h959e542023b7bcf7E"(ptr sret([12 x i8]) align 4 %_41, ptr align 4 %_42)
          to label %bb29 unwind label %cleanup6

bb29:                                             ; preds = %bb28
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %iter3, ptr align 4 %_41, i64 12, i1 false)
  br label %bb30

bb30:                                             ; preds = %bb38, %bb29
; invoke core::iter::range::<impl core::iter::traits::iterator::Iterator for core::ops::range::RangeInclusive<A>>::next
  %38 = invoke { i32, i32 } @"_ZN4core4iter5range110_$LT$impl$u20$core..iter..traits..iterator..Iterator$u20$for$u20$core..ops..range..RangeInclusive$LT$A$GT$$GT$4next17h69838bdb0ec33d71E"(ptr align 4 %iter3)
          to label %bb31 unwind label %cleanup6

bb31:                                             ; preds = %bb30
  %39 = extractvalue { i32, i32 } %38, 0
  %40 = extractvalue { i32, i32 } %38, 1
  store i32 %39, ptr %_44, align 4
  %41 = getelementptr inbounds i8, ptr %_44, i64 4
  store i32 %40, ptr %41, align 4
  %42 = load i32, ptr %_44, align 4
  %43 = getelementptr inbounds i8, ptr %_44, i64 4
  %44 = load i32, ptr %43, align 4
  %_46 = zext i32 %42 to i64
  %45 = trunc nuw i64 %_46 to i1
  br i1 %45, label %bb32, label %bb24

bb32:                                             ; preds = %bb31
  %46 = getelementptr inbounds i8, ptr %_44, i64 4
  %j = load i32, ptr %46, align 4
  %_51 = sext i32 %i to i64
; invoke <alloc::vec::Vec<T,A> as core::ops::index::IndexMut<I>>::index_mut
  %_49 = invoke align 8 ptr @"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h131a97b52f1eafc0E"(ptr align 8 %egg_floor, i64 %_51, ptr align 8 @alloc_6a0aa63816c39acff13056d09d596af5)
          to label %bb33 unwind label %cleanup6

bb33:                                             ; preds = %bb32
  %_52 = sext i32 %j to i64
; invoke <alloc::vec::Vec<T,A> as core::ops::index::IndexMut<I>>::index_mut
  %_48 = invoke align 4 ptr @"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17hac6dba241742212cE"(ptr align 8 %_49, i64 %_52, ptr align 8 @alloc_922e797aeef720d763533eb4ab0d8a96)
          to label %bb34 unwind label %cleanup6

bb34:                                             ; preds = %bb33
  %47 = call i32 @llvm.fptosi.sat.i32.f32(float 0x7FF0000000000000)
  store i32 %47, ptr %_48, align 4
; invoke core::ops::range::RangeInclusive<Idx>::new
  invoke void @"_ZN4core3ops5range25RangeInclusive$LT$Idx$GT$3new17hfcdd93f52c1f7ac0E"(ptr sret([12 x i8]) align 4 %_54, i32 1, i32 %j)
          to label %bb35 unwind label %cleanup6

bb35:                                             ; preds = %bb34
; invoke <I as core::iter::traits::collect::IntoIterator>::into_iter
  invoke void @"_ZN63_$LT$I$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17h959e542023b7bcf7E"(ptr sret([12 x i8]) align 4 %_53, ptr align 4 %_54)
          to label %bb36 unwind label %cleanup6

bb36:                                             ; preds = %bb35
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %iter4, ptr align 4 %_53, i64 12, i1 false)
  br label %bb37

bb37:                                             ; preds = %bb53, %bb50, %bb36
; invoke core::iter::range::<impl core::iter::traits::iterator::Iterator for core::ops::range::RangeInclusive<A>>::next
  %48 = invoke { i32, i32 } @"_ZN4core4iter5range110_$LT$impl$u20$core..iter..traits..iterator..Iterator$u20$for$u20$core..ops..range..RangeInclusive$LT$A$GT$$GT$4next17h69838bdb0ec33d71E"(ptr align 4 %iter4)
          to label %bb38 unwind label %cleanup6

bb38:                                             ; preds = %bb37
  %49 = extractvalue { i32, i32 } %48, 0
  %50 = extractvalue { i32, i32 } %48, 1
  store i32 %49, ptr %_56, align 4
  %51 = getelementptr inbounds i8, ptr %_56, i64 4
  store i32 %50, ptr %51, align 4
  %52 = load i32, ptr %_56, align 4
  %53 = getelementptr inbounds i8, ptr %_56, i64 4
  %54 = load i32, ptr %53, align 4
  %_58 = zext i32 %52 to i64
  %55 = trunc nuw i64 %_58 to i1
  br i1 %55, label %bb39, label %bb30

bb39:                                             ; preds = %bb38
  %56 = getelementptr inbounds i8, ptr %_56, i64 4
  %x = load i32, ptr %56, align 4
  %_66 = sext i32 %i to i64
  %_67.0 = sub i64 %_66, 1
  %_67.1 = icmp ult i64 %_66, 1
  br i1 %_67.1, label %panic7, label %bb40

bb40:                                             ; preds = %bb39
; invoke <alloc::vec::Vec<T,A> as core::ops::index::Index<I>>::index
  %_63 = invoke align 8 ptr @"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h5473dc7de86550eeE"(ptr align 8 %egg_floor, i64 %_67.0, ptr align 8 @alloc_657f197df126bcf32c674d9d668e890c)
          to label %bb41 unwind label %cleanup6

panic7:                                           ; preds = %bb39
; invoke core::panicking::panic_const::panic_const_sub_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_sub_overflow17h134cc1a7f93654deE(ptr align 8 @alloc_41fe113c5b9018627a759cdadea03ee1) #24
          to label %unreachable unwind label %cleanup6

bb41:                                             ; preds = %bb40
  %57 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %x, i32 1)
  %_70.0 = extractvalue { i32, i1 } %57, 0
  %_70.1 = extractvalue { i32, i1 } %57, 1
  br i1 %_70.1, label %panic8, label %bb42

bb42:                                             ; preds = %bb41
  %_68 = sext i32 %_70.0 to i64
; invoke <alloc::vec::Vec<T,A> as core::ops::index::Index<I>>::index
  %_62 = invoke align 4 ptr @"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h047772fb7fd5bc53E"(ptr align 8 %_63, i64 %_68, ptr align 8 @alloc_94aaeeae065667cd5c793bdc0798a67c)
          to label %bb43 unwind label %cleanup6

panic8:                                           ; preds = %bb41
; invoke core::panicking::panic_const::panic_const_sub_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_sub_overflow17h134cc1a7f93654deE(ptr align 8 @alloc_918679c12b8be8cfcd22af19bc5bda93) #24
          to label %unreachable unwind label %cleanup6

bb43:                                             ; preds = %bb42
  %_61 = load i32, ptr %_62, align 4
  %_75 = sext i32 %i to i64
; invoke <alloc::vec::Vec<T,A> as core::ops::index::Index<I>>::index
  %_73 = invoke align 8 ptr @"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h5473dc7de86550eeE"(ptr align 8 %egg_floor, i64 %_75, ptr align 8 @alloc_451929a80a7726c5067af1877cafc252)
          to label %bb44 unwind label %cleanup6

bb44:                                             ; preds = %bb43
  %58 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %j, i32 %x)
  %_78.0 = extractvalue { i32, i1 } %58, 0
  %_78.1 = extractvalue { i32, i1 } %58, 1
  br i1 %_78.1, label %panic9, label %bb45

bb45:                                             ; preds = %bb44
  %_76 = sext i32 %_78.0 to i64
; invoke <alloc::vec::Vec<T,A> as core::ops::index::Index<I>>::index
  %_72 = invoke align 4 ptr @"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h047772fb7fd5bc53E"(ptr align 8 %_73, i64 %_76, ptr align 8 @alloc_0c31d2bfb1bb6ba7b3f17241e4a35ddd)
          to label %bb46 unwind label %cleanup6

panic9:                                           ; preds = %bb44
; invoke core::panicking::panic_const::panic_const_sub_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_sub_overflow17h134cc1a7f93654deE(ptr align 8 @alloc_1f1371bd91b6fe434d79fcc85d6bc02a) #24
          to label %unreachable unwind label %cleanup6

bb46:                                             ; preds = %bb45
  %_71 = load i32, ptr %_72, align 4
; invoke core::cmp::Ord::max
  %_60 = invoke i32 @_ZN4core3cmp3Ord3max17hb6ed5e7ef185c150E(i32 %_61, i32 %_71)
          to label %bb47 unwind label %cleanup6

bb47:                                             ; preds = %bb46
  %59 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 1, i32 %_60)
  %_79.0 = extractvalue { i32, i1 } %59, 0
  %_79.1 = extractvalue { i32, i1 } %59, 1
  br i1 %_79.1, label %panic10, label %bb48

bb48:                                             ; preds = %bb47
  %_85 = sext i32 %i to i64
; invoke <alloc::vec::Vec<T,A> as core::ops::index::Index<I>>::index
  %_83 = invoke align 8 ptr @"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h5473dc7de86550eeE"(ptr align 8 %egg_floor, i64 %_85, ptr align 8 @alloc_ab1e7476d3a263fc6d258a3958c90694)
          to label %bb49 unwind label %cleanup6

panic10:                                          ; preds = %bb47
; invoke core::panicking::panic_const::panic_const_add_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_994ac7de7dc943f846073741d44a9007) #24
          to label %unreachable unwind label %cleanup6

bb49:                                             ; preds = %bb48
  %_86 = sext i32 %j to i64
; invoke <alloc::vec::Vec<T,A> as core::ops::index::Index<I>>::index
  %_82 = invoke align 4 ptr @"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h047772fb7fd5bc53E"(ptr align 8 %_83, i64 %_86, ptr align 8 @alloc_32c73f12a7be86413eb87fc0861dcc27)
          to label %bb50 unwind label %cleanup6

bb50:                                             ; preds = %bb49
  %_81 = load i32, ptr %_82, align 4
  %_80 = icmp slt i32 %_79.0, %_81
  br i1 %_80, label %bb51, label %bb37

bb51:                                             ; preds = %bb50
  %_90 = sext i32 %i to i64
; invoke <alloc::vec::Vec<T,A> as core::ops::index::IndexMut<I>>::index_mut
  %_88 = invoke align 8 ptr @"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h131a97b52f1eafc0E"(ptr align 8 %egg_floor, i64 %_90, ptr align 8 @alloc_cbe9610e4149fcdad29b188f5d66f4ae)
          to label %bb52 unwind label %cleanup6

bb52:                                             ; preds = %bb51
  %_91 = sext i32 %j to i64
; invoke <alloc::vec::Vec<T,A> as core::ops::index::IndexMut<I>>::index_mut
  %_87 = invoke align 4 ptr @"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17hac6dba241742212cE"(ptr align 8 %_88, i64 %_91, ptr align 8 @alloc_be65ab9375a3cba3e3ef7f4dfbdf8016)
          to label %bb53 unwind label %cleanup6

bb53:                                             ; preds = %bb52
  store i32 %_79.0, ptr %_87, align 4
  br label %bb37

bb20:                                             ; preds = %bb18
  %_33 = sext i32 %j11 to i64
; invoke <alloc::vec::Vec<T,A> as core::ops::index::IndexMut<I>>::index_mut
  %_30 = invoke align 4 ptr @"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17hac6dba241742212cE"(ptr align 8 %_31, i64 %_33, ptr align 8 @alloc_0e229f4cc200af877ee383e1d6d6508c)
          to label %bb21 unwind label %cleanup6

bb21:                                             ; preds = %bb20
  store i32 %j11, ptr %_30, align 4
  br label %bb16

bb12:                                             ; preds = %bb10
; invoke <alloc::vec::Vec<T,A> as core::ops::index::IndexMut<I>>::index_mut
  %_19 = invoke align 4 ptr @"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17hac6dba241742212cE"(ptr align 8 %_20, i64 1, ptr align 8 @alloc_e141c136a3b1e0d8b8320110c912c63b)
          to label %bb13 unwind label %cleanup6

bb13:                                             ; preds = %bb12
  store i32 1, ptr %_19, align 4
  br label %bb7

bb9:                                              ; No predecessors!
  unreachable

terminate:                                        ; preds = %bb59, %bb57
  %60 = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer
; call core::panicking::panic_in_cleanup
  call void @_ZN4core9panicking16panic_in_cleanup17h5f6bde45d17ae243E() #21
  unreachable

bb58:                                             ; preds = %bb59, %bb60, %bb57
  %61 = load ptr, ptr %0, align 8
  %62 = getelementptr inbounds i8, ptr %0, i64 8
  %63 = load i32, ptr %62, align 8
  %64 = insertvalue { ptr, i32 } poison, ptr %61, 0
  %65 = insertvalue { ptr, i32 } %64, i32 %63, 1
  resume { ptr, i32 } %65

bb59:                                             ; preds = %bb60
; invoke core::ptr::drop_in_place<alloc::vec::Vec<i32>>
  invoke void @"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17h2d9035506b21a83eE"(ptr align 8 %_4) #22
          to label %bb58 unwind label %terminate
}

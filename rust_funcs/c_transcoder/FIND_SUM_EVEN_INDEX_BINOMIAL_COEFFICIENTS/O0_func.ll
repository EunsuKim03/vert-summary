define i32 @f_gold(i32 %n) unnamed_addr #3 personality ptr @rust_eh_personality {
start:
  %0 = alloca [16 x i8], align 8
  %_72 = alloca [1 x i8], align 1
  %_61 = alloca [8 x i8], align 4
  %iter2 = alloca [24 x i8], align 8
  %_59 = alloca [12 x i8], align 4
  %_58 = alloca [24 x i8], align 8
  %_57 = alloca [24 x i8], align 8
  %sum = alloca [4 x i8], align 4
  %_21 = alloca [8 x i8], align 4
  %iter1 = alloca [12 x i8], align 4
  %_18 = alloca [12 x i8], align 4
  %_17 = alloca [12 x i8], align 4
  %_13 = alloca [8 x i8], align 4
  %iter = alloca [12 x i8], align 4
  %_11 = alloca [12 x i8], align 4
  %_10 = alloca [12 x i8], align 4
  %_3 = alloca [24 x i8], align 8
  %C = alloca [24 x i8], align 8
  store i8 0, ptr %_72, align 1
  %_5 = sext i32 %n to i64
  %_6.0 = add i64 %_5, 1
  %_6.1 = icmp ult i64 %_6.0, %_5
  br i1 %_6.1, label %panic, label %bb1

bb1:                                              ; preds = %start
  store i8 1, ptr %_72, align 1
; call alloc::vec::from_elem
  call void @_ZN5alloc3vec9from_elem17hf9783307e278dc0fE(ptr sret([24 x i8]) align 8 %_3, i32 0, i64 %_6.0)
  %_8 = sext i32 %n to i64
  %_9.0 = add i64 %_8, 1
  %_9.1 = icmp ult i64 %_9.0, %_8
  br i1 %_9.1, label %panic3, label %bb3

panic:                                            ; preds = %start
; call core::panicking::panic_const::panic_const_add_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_dec717c134ea7e5d3fd451ba5d9d85fb) #20
  unreachable

bb3:                                              ; preds = %bb1
  store i8 0, ptr %_72, align 1
; invoke alloc::vec::from_elem
  invoke void @_ZN5alloc3vec9from_elem17hdbe273451f3ecdf9E(ptr sret([24 x i8]) align 8 %C, ptr align 8 %_3, i64 %_9.0)
          to label %bb4 unwind label %cleanup

panic3:                                           ; preds = %bb1
; invoke core::panicking::panic_const::panic_const_add_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_1eb9d08853a5da59da8b267ac23c27f7) #24
          to label %unreachable unwind label %cleanup

bb47:                                             ; preds = %cleanup
  %1 = load i8, ptr %_72, align 1
  %2 = trunc nuw i8 %1 to i1
  br i1 %2, label %bb46, label %bb45

cleanup:                                          ; preds = %bb3, %panic3
  %3 = landingpad { ptr, i32 }
          cleanup
  %4 = extractvalue { ptr, i32 } %3, 0
  %5 = extractvalue { ptr, i32 } %3, 1
  store ptr %4, ptr %0, align 8
  %6 = getelementptr inbounds i8, ptr %0, i64 8
  store i32 %5, ptr %6, align 8
  br label %bb47

unreachable:                                      ; preds = %panic10, %panic9, %panic8, %panic7, %panic5, %panic3
  unreachable

bb4:                                              ; preds = %bb3
  store i8 0, ptr %_72, align 1
; invoke core::ops::range::RangeInclusive<Idx>::new
  invoke void @"_ZN4core3ops5range25RangeInclusive$LT$Idx$GT$3new17he1ae6c439b6bae97E"(ptr sret([12 x i8]) align 4 %_11, i32 0, i32 %n)
          to label %bb5 unwind label %cleanup4

bb44:                                             ; preds = %cleanup4
; invoke core::ptr::drop_in_place<alloc::vec::Vec<alloc::vec::Vec<i32>>>
  invoke void @"_ZN4core3ptr70drop_in_place$LT$alloc..vec..Vec$LT$alloc..vec..Vec$LT$i32$GT$$GT$$GT$17h70b6fc26fd496bc5E"(ptr align 8 %C) #23
          to label %bb45 unwind label %terminate

cleanup4:                                         ; preds = %bb20, %bb19, %bb31, %bb30, %panic10, %bb28, %bb27, %panic9, %bb25, %panic8, %bb23, %panic7, %bb15, %bb13, %bb12, %bb10, %panic5, %bb40, %bb38, %bb36, %bb34, %bb33, %bb11, %bb7, %bb5, %bb4
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
  invoke void @"_ZN63_$LT$I$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17h8a2f4d9b16528fb0E"(ptr sret([12 x i8]) align 4 %_10, ptr align 4 %_11)
          to label %bb6 unwind label %cleanup4

bb6:                                              ; preds = %bb5
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %iter, ptr align 4 %_10, i64 12, i1 false)
  br label %bb7

bb7:                                              ; preds = %bb16, %bb6
; invoke core::iter::range::<impl core::iter::traits::iterator::Iterator for core::ops::range::RangeInclusive<A>>::next
  %11 = invoke { i32, i32 } @"_ZN4core4iter5range110_$LT$impl$u20$core..iter..traits..iterator..Iterator$u20$for$u20$core..ops..range..RangeInclusive$LT$A$GT$$GT$4next17h21a7cd2b519cdad5E"(ptr align 4 %iter)
          to label %bb8 unwind label %cleanup4

bb8:                                              ; preds = %bb7
  %12 = extractvalue { i32, i32 } %11, 0
  %13 = extractvalue { i32, i32 } %11, 1
  store i32 %12, ptr %_13, align 4
  %14 = getelementptr inbounds i8, ptr %_13, i64 4
  store i32 %13, ptr %14, align 4
  %15 = load i32, ptr %_13, align 4
  %16 = getelementptr inbounds i8, ptr %_13, i64 4
  %17 = load i32, ptr %16, align 4
  %_15 = zext i32 %15 to i64
  %18 = trunc nuw i64 %_15 to i1
  br i1 %18, label %bb10, label %bb11

bb10:                                             ; preds = %bb8
  %19 = getelementptr inbounds i8, ptr %_13, i64 4
  %i6 = load i32, ptr %19, align 4
  %_19 = invoke i32 @min(i32 %i6, i32 %n)
          to label %bb12 unwind label %cleanup4

bb11:                                             ; preds = %bb8
  store i32 0, ptr %sum, align 4
; invoke core::ops::range::RangeInclusive<Idx>::new
  invoke void @"_ZN4core3ops5range25RangeInclusive$LT$Idx$GT$3new17he1ae6c439b6bae97E"(ptr sret([12 x i8]) align 4 %_59, i32 0, i32 %n)
          to label %bb33 unwind label %cleanup4

bb33:                                             ; preds = %bb11
; invoke core::iter::traits::iterator::Iterator::step_by
  invoke void @_ZN4core4iter6traits8iterator8Iterator7step_by17hfa6b24e3c1468f8fE(ptr sret([24 x i8]) align 8 %_58, ptr align 4 %_59, i64 2)
          to label %bb34 unwind label %cleanup4

bb34:                                             ; preds = %bb33
; invoke <I as core::iter::traits::collect::IntoIterator>::into_iter
  invoke void @"_ZN63_$LT$I$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17hc6d0dedd72c91ed7E"(ptr sret([24 x i8]) align 8 %_57, ptr align 8 %_58)
          to label %bb35 unwind label %cleanup4

bb35:                                             ; preds = %bb34
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %iter2, ptr align 8 %_57, i64 24, i1 false)
  br label %bb36

bb36:                                             ; preds = %bb42, %bb35
; invoke <core::iter::adapters::step_by::StepBy<I> as core::iter::traits::iterator::Iterator>::next
  %20 = invoke { i32, i32 } @"_ZN105_$LT$core..iter..adapters..step_by..StepBy$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h3fb9bb48cf6d89aeE"(ptr align 8 %iter2)
          to label %bb37 unwind label %cleanup4

bb37:                                             ; preds = %bb36
  %21 = extractvalue { i32, i32 } %20, 0
  %22 = extractvalue { i32, i32 } %20, 1
  store i32 %21, ptr %_61, align 4
  %23 = getelementptr inbounds i8, ptr %_61, i64 4
  store i32 %22, ptr %23, align 4
  %24 = load i32, ptr %_61, align 4
  %25 = getelementptr inbounds i8, ptr %_61, i64 4
  %26 = load i32, ptr %25, align 4
  %_63 = zext i32 %24 to i64
  %27 = trunc nuw i64 %_63 to i1
  br i1 %27, label %bb38, label %bb39

bb38:                                             ; preds = %bb37
  %28 = getelementptr inbounds i8, ptr %_61, i64 4
  %i = load i32, ptr %28, align 4
  %_69 = sext i32 %n to i64
; invoke <alloc::vec::Vec<T,A> as core::ops::index::Index<I>>::index
  %_67 = invoke align 8 ptr @"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17head2508ea6f5c11aE"(ptr align 8 %C, i64 %_69, ptr align 8 @alloc_349bac9be1a4ded99c3f3efb43fab200)
          to label %bb40 unwind label %cleanup4

bb39:                                             ; preds = %bb37
  %_0 = load i32, ptr %sum, align 4
; call core::ptr::drop_in_place<alloc::vec::Vec<alloc::vec::Vec<i32>>>
  call void @"_ZN4core3ptr70drop_in_place$LT$alloc..vec..Vec$LT$alloc..vec..Vec$LT$i32$GT$$GT$$GT$17h70b6fc26fd496bc5E"(ptr align 8 %C)
  ret i32 %_0

bb40:                                             ; preds = %bb38
  %_70 = sext i32 %i to i64
; invoke <alloc::vec::Vec<T,A> as core::ops::index::Index<I>>::index
  %_66 = invoke align 4 ptr @"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h5c837d69110fb5acE"(ptr align 8 %_67, i64 %_70, ptr align 8 @alloc_746f06f793be357c107ca0b7da1726ae)
          to label %bb41 unwind label %cleanup4

bb41:                                             ; preds = %bb40
  %_65 = load i32, ptr %_66, align 4
  %29 = load i32, ptr %sum, align 4
  %30 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %29, i32 %_65)
  %_71.0 = extractvalue { i32, i1 } %30, 0
  %_71.1 = extractvalue { i32, i1 } %30, 1
  br i1 %_71.1, label %panic5, label %bb42

bb42:                                             ; preds = %bb41
  store i32 %_71.0, ptr %sum, align 4
  br label %bb36

panic5:                                           ; preds = %bb41
; invoke core::panicking::panic_const::panic_const_add_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_f543525fac502a510399d8865bc6960d) #24
          to label %unreachable unwind label %cleanup4

bb12:                                             ; preds = %bb10
; invoke core::ops::range::RangeInclusive<Idx>::new
  invoke void @"_ZN4core3ops5range25RangeInclusive$LT$Idx$GT$3new17he1ae6c439b6bae97E"(ptr sret([12 x i8]) align 4 %_18, i32 0, i32 %_19)
          to label %bb13 unwind label %cleanup4

bb13:                                             ; preds = %bb12
; invoke <I as core::iter::traits::collect::IntoIterator>::into_iter
  invoke void @"_ZN63_$LT$I$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17h8a2f4d9b16528fb0E"(ptr sret([12 x i8]) align 4 %_17, ptr align 4 %_18)
          to label %bb14 unwind label %cleanup4

bb14:                                             ; preds = %bb13
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %iter1, ptr align 4 %_17, i64 12, i1 false)
  br label %bb15

bb15:                                             ; preds = %bb21, %bb32, %bb14
; invoke core::iter::range::<impl core::iter::traits::iterator::Iterator for core::ops::range::RangeInclusive<A>>::next
  %31 = invoke { i32, i32 } @"_ZN4core4iter5range110_$LT$impl$u20$core..iter..traits..iterator..Iterator$u20$for$u20$core..ops..range..RangeInclusive$LT$A$GT$$GT$4next17h21a7cd2b519cdad5E"(ptr align 4 %iter1)
          to label %bb16 unwind label %cleanup4

bb16:                                             ; preds = %bb15
  %32 = extractvalue { i32, i32 } %31, 0
  %33 = extractvalue { i32, i32 } %31, 1
  store i32 %32, ptr %_21, align 4
  %34 = getelementptr inbounds i8, ptr %_21, i64 4
  store i32 %33, ptr %34, align 4
  %35 = load i32, ptr %_21, align 4
  %36 = getelementptr inbounds i8, ptr %_21, i64 4
  %37 = load i32, ptr %36, align 4
  %_23 = zext i32 %35 to i64
  %38 = trunc nuw i64 %_23 to i1
  br i1 %38, label %bb17, label %bb7

bb17:                                             ; preds = %bb16
  %39 = getelementptr inbounds i8, ptr %_21, i64 4
  %j = load i32, ptr %39, align 4
  %_25 = icmp eq i32 %j, 0
  br i1 %_25, label %bb19, label %bb18

bb18:                                             ; preds = %bb17
  %_26 = icmp eq i32 %j, %i6
  br i1 %_26, label %bb19, label %bb22

bb19:                                             ; preds = %bb18, %bb17
  %_30 = sext i32 %i6 to i64
; invoke <alloc::vec::Vec<T,A> as core::ops::index::IndexMut<I>>::index_mut
  %_28 = invoke align 8 ptr @"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h33e411c01db5626cE"(ptr align 8 %C, i64 %_30, ptr align 8 @alloc_81debf332604faecc1c2234ac4984530)
          to label %bb20 unwind label %cleanup4

bb22:                                             ; preds = %bb18
  %40 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %i6, i32 1)
  %_38.0 = extractvalue { i32, i1 } %40, 0
  %_38.1 = extractvalue { i32, i1 } %40, 1
  br i1 %_38.1, label %panic7, label %bb23

bb23:                                             ; preds = %bb22
  %_36 = sext i32 %_38.0 to i64
; invoke <alloc::vec::Vec<T,A> as core::ops::index::Index<I>>::index
  %_34 = invoke align 8 ptr @"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17head2508ea6f5c11aE"(ptr align 8 %C, i64 %_36, ptr align 8 @alloc_9de5f56926cab21ad0a3645601351780)
          to label %bb24 unwind label %cleanup4

panic7:                                           ; preds = %bb22
; invoke core::panicking::panic_const::panic_const_sub_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_sub_overflow17h134cc1a7f93654deE(ptr align 8 @alloc_76a1cc19d0086e4e71780571572ab6ad) #24
          to label %unreachable unwind label %cleanup4

bb24:                                             ; preds = %bb23
  %41 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %j, i32 1)
  %_41.0 = extractvalue { i32, i1 } %41, 0
  %_41.1 = extractvalue { i32, i1 } %41, 1
  br i1 %_41.1, label %panic8, label %bb25

bb25:                                             ; preds = %bb24
  %_39 = sext i32 %_41.0 to i64
; invoke <alloc::vec::Vec<T,A> as core::ops::index::Index<I>>::index
  %_33 = invoke align 4 ptr @"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h5c837d69110fb5acE"(ptr align 8 %_34, i64 %_39, ptr align 8 @alloc_dc62ab5f77d3cccb08104bb2e59a0b0d)
          to label %bb26 unwind label %cleanup4

panic8:                                           ; preds = %bb24
; invoke core::panicking::panic_const::panic_const_sub_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_sub_overflow17h134cc1a7f93654deE(ptr align 8 @alloc_9c489adc4798431b2a61da3865ee2f7e) #24
          to label %unreachable unwind label %cleanup4

bb26:                                             ; preds = %bb25
  %_32 = load i32, ptr %_33, align 4
  %42 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %i6, i32 1)
  %_48.0 = extractvalue { i32, i1 } %42, 0
  %_48.1 = extractvalue { i32, i1 } %42, 1
  br i1 %_48.1, label %panic9, label %bb27

bb27:                                             ; preds = %bb26
  %_46 = sext i32 %_48.0 to i64
; invoke <alloc::vec::Vec<T,A> as core::ops::index::Index<I>>::index
  %_44 = invoke align 8 ptr @"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17head2508ea6f5c11aE"(ptr align 8 %C, i64 %_46, ptr align 8 @alloc_13dea6ee4a951e4108ce014dc0cc3bcf)
          to label %bb28 unwind label %cleanup4

panic9:                                           ; preds = %bb26
; invoke core::panicking::panic_const::panic_const_sub_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_sub_overflow17h134cc1a7f93654deE(ptr align 8 @alloc_1a6e4510cdf1cf150950ecad620b924c) #24
          to label %unreachable unwind label %cleanup4

bb28:                                             ; preds = %bb27
  %_49 = sext i32 %j to i64
; invoke <alloc::vec::Vec<T,A> as core::ops::index::Index<I>>::index
  %_43 = invoke align 4 ptr @"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h5c837d69110fb5acE"(ptr align 8 %_44, i64 %_49, ptr align 8 @alloc_ff92b3f7d579ab27636eb091b78e2d74)
          to label %bb29 unwind label %cleanup4

bb29:                                             ; preds = %bb28
  %_42 = load i32, ptr %_43, align 4
  %43 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %_32, i32 %_42)
  %_50.0 = extractvalue { i32, i1 } %43, 0
  %_50.1 = extractvalue { i32, i1 } %43, 1
  br i1 %_50.1, label %panic10, label %bb30

bb30:                                             ; preds = %bb29
  %_54 = sext i32 %i6 to i64
; invoke <alloc::vec::Vec<T,A> as core::ops::index::IndexMut<I>>::index_mut
  %_52 = invoke align 8 ptr @"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h33e411c01db5626cE"(ptr align 8 %C, i64 %_54, ptr align 8 @alloc_457eff48c84cf978d0fb8e5b25989d9f)
          to label %bb31 unwind label %cleanup4

panic10:                                          ; preds = %bb29
; invoke core::panicking::panic_const::panic_const_add_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_38c174fe048c34bb949db4c001759210) #24
          to label %unreachable unwind label %cleanup4

bb31:                                             ; preds = %bb30
  %_55 = sext i32 %j to i64
; invoke <alloc::vec::Vec<T,A> as core::ops::index::IndexMut<I>>::index_mut
  %_51 = invoke align 4 ptr @"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h66a5bcdc2d6cd77bE"(ptr align 8 %_52, i64 %_55, ptr align 8 @alloc_672fce10a529e373bfa05c708f305f51)
          to label %bb32 unwind label %cleanup4

bb32:                                             ; preds = %bb31
  store i32 %_50.0, ptr %_51, align 4
  br label %bb15

bb20:                                             ; preds = %bb19
  %_31 = sext i32 %j to i64
; invoke <alloc::vec::Vec<T,A> as core::ops::index::IndexMut<I>>::index_mut
  %_27 = invoke align 4 ptr @"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h66a5bcdc2d6cd77bE"(ptr align 8 %_28, i64 %_31, ptr align 8 @alloc_0cc6f4aeffdd5879548df92d6df4afe3)
          to label %bb21 unwind label %cleanup4

bb21:                                             ; preds = %bb20
  store i32 1, ptr %_27, align 4
  br label %bb15

bb9:                                              ; No predecessors!
  unreachable

terminate:                                        ; preds = %bb46, %bb44
  %44 = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer
; call core::panicking::panic_in_cleanup
  call void @_ZN4core9panicking16panic_in_cleanup17h5f6bde45d17ae243E() #22
  unreachable

bb45:                                             ; preds = %bb46, %bb47, %bb44
  %45 = load ptr, ptr %0, align 8
  %46 = getelementptr inbounds i8, ptr %0, i64 8
  %47 = load i32, ptr %46, align 8
  %48 = insertvalue { ptr, i32 } poison, ptr %45, 0
  %49 = insertvalue { ptr, i32 } %48, i32 %47, 1
  resume { ptr, i32 } %49

bb46:                                             ; preds = %bb47
; invoke core::ptr::drop_in_place<alloc::vec::Vec<i32>>
  invoke void @"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17h55df20722a92c698E"(ptr align 8 %_3) #23
          to label %bb45 unwind label %terminate
}

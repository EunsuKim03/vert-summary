define i32 @f_gold(i32 %n) unnamed_addr #3 personality ptr @rust_eh_personality {
start:
  %0 = alloca [16 x i8], align 8
  %_72 = alloca [1 x i8], align 1
  %_60 = alloca [8 x i8], align 4
  %iter2 = alloca [12 x i8], align 4
  %_58 = alloca [12 x i8], align 4
  %_57 = alloca [12 x i8], align 4
  %maxvalue = alloca [4 x i8], align 4
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
  call void @_ZN5alloc3vec9from_elem17h6df2ce29ad3e9a4eE(ptr sret([24 x i8]) align 8 %_3, i32 0, i64 %_6.0)
  %_8 = sext i32 %n to i64
  %_9.0 = add i64 %_8, 1
  %_9.1 = icmp ult i64 %_9.0, %_8
  br i1 %_9.1, label %panic3, label %bb3

panic:                                            ; preds = %start
; call core::panicking::panic_const::panic_const_add_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_a3a5fc53bfa9bb5482fc0796d8a81842) #23
  unreachable

bb3:                                              ; preds = %bb1
  store i8 0, ptr %_72, align 1
; invoke alloc::vec::from_elem
  invoke void @_ZN5alloc3vec9from_elem17h14b5f5cbe6dd6650E(ptr sret([24 x i8]) align 8 %C, ptr align 8 %_3, i64 %_9.0)
          to label %bb4 unwind label %cleanup

panic3:                                           ; preds = %bb1
; invoke core::panicking::panic_const::panic_const_add_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_e5d920b00c120ecf44104462037d8223) #24
          to label %unreachable unwind label %cleanup

bb46:                                             ; preds = %cleanup
  %1 = load i8, ptr %_72, align 1
  %2 = trunc nuw i8 %1 to i1
  br i1 %2, label %bb45, label %bb44

cleanup:                                          ; preds = %bb3, %panic3
  %3 = landingpad { ptr, i32 }
          cleanup
  %4 = extractvalue { ptr, i32 } %3, 0
  %5 = extractvalue { ptr, i32 } %3, 1
  store ptr %4, ptr %0, align 8
  %6 = getelementptr inbounds i8, ptr %0, i64 8
  store i32 %5, ptr %6, align 8
  br label %bb46

unreachable:                                      ; preds = %panic9, %panic8, %panic7, %panic6, %panic3
  unreachable

bb4:                                              ; preds = %bb3
  store i8 0, ptr %_72, align 1
; invoke core::ops::range::RangeInclusive<Idx>::new
  invoke void @"_ZN4core3ops5range25RangeInclusive$LT$Idx$GT$3new17hff408d5901433b83E"(ptr sret([12 x i8]) align 4 %_11, i32 0, i32 %n)
          to label %bb5 unwind label %cleanup4

bb43:                                             ; preds = %cleanup4
; invoke core::ptr::drop_in_place<alloc::vec::Vec<alloc::vec::Vec<i32>>>
  invoke void @"_ZN4core3ptr70drop_in_place$LT$alloc..vec..Vec$LT$alloc..vec..Vec$LT$i32$GT$$GT$$GT$17h3a8b9c85b5d7ee4aE"(ptr align 8 %C) #22
          to label %bb44 unwind label %terminate

cleanup4:                                         ; preds = %bb20, %bb19, %bb31, %bb30, %panic9, %bb28, %bb27, %panic8, %bb25, %panic7, %bb23, %panic6, %bb15, %bb13, %bb12, %bb10, %bb40, %bb39, %bb37, %bb35, %bb33, %bb11, %bb7, %bb5, %bb4
  %7 = landingpad { ptr, i32 }
          cleanup
  %8 = extractvalue { ptr, i32 } %7, 0
  %9 = extractvalue { ptr, i32 } %7, 1
  store ptr %8, ptr %0, align 8
  %10 = getelementptr inbounds i8, ptr %0, i64 8
  store i32 %9, ptr %10, align 8
  br label %bb43

bb5:                                              ; preds = %bb4
; invoke <I as core::iter::traits::collect::IntoIterator>::into_iter
  invoke void @"_ZN63_$LT$I$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17he5ae9098192376faE"(ptr sret([12 x i8]) align 4 %_10, ptr align 4 %_11)
          to label %bb6 unwind label %cleanup4

bb6:                                              ; preds = %bb5
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %iter, ptr align 4 %_10, i64 12, i1 false)
  br label %bb7

bb7:                                              ; preds = %bb16, %bb6
; invoke core::iter::range::<impl core::iter::traits::iterator::Iterator for core::ops::range::RangeInclusive<A>>::next
  %11 = invoke { i32, i32 } @"_ZN4core4iter5range110_$LT$impl$u20$core..iter..traits..iterator..Iterator$u20$for$u20$core..ops..range..RangeInclusive$LT$A$GT$$GT$4next17he4a309e31477d70aE"(ptr align 4 %iter)
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
  %i5 = load i32, ptr %19, align 4
  %_19 = invoke i32 @min(i32 %i5, i32 %n)
          to label %bb12 unwind label %cleanup4

bb11:                                             ; preds = %bb8
  store i32 0, ptr %maxvalue, align 4
; invoke core::ops::range::RangeInclusive<Idx>::new
  invoke void @"_ZN4core3ops5range25RangeInclusive$LT$Idx$GT$3new17hff408d5901433b83E"(ptr sret([12 x i8]) align 4 %_58, i32 0, i32 %n)
          to label %bb33 unwind label %cleanup4

bb33:                                             ; preds = %bb11
; invoke <I as core::iter::traits::collect::IntoIterator>::into_iter
  invoke void @"_ZN63_$LT$I$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17he5ae9098192376faE"(ptr sret([12 x i8]) align 4 %_57, ptr align 4 %_58)
          to label %bb34 unwind label %cleanup4

bb34:                                             ; preds = %bb33
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %iter2, ptr align 4 %_57, i64 12, i1 false)
  br label %bb35

bb35:                                             ; preds = %bb41, %bb34
; invoke core::iter::range::<impl core::iter::traits::iterator::Iterator for core::ops::range::RangeInclusive<A>>::next
  %20 = invoke { i32, i32 } @"_ZN4core4iter5range110_$LT$impl$u20$core..iter..traits..iterator..Iterator$u20$for$u20$core..ops..range..RangeInclusive$LT$A$GT$$GT$4next17he4a309e31477d70aE"(ptr align 4 %iter2)
          to label %bb36 unwind label %cleanup4

bb36:                                             ; preds = %bb35
  %21 = extractvalue { i32, i32 } %20, 0
  %22 = extractvalue { i32, i32 } %20, 1
  store i32 %21, ptr %_60, align 4
  %23 = getelementptr inbounds i8, ptr %_60, i64 4
  store i32 %22, ptr %23, align 4
  %24 = load i32, ptr %_60, align 4
  %25 = getelementptr inbounds i8, ptr %_60, i64 4
  %26 = load i32, ptr %25, align 4
  %_62 = zext i32 %24 to i64
  %27 = trunc nuw i64 %_62 to i1
  br i1 %27, label %bb37, label %bb38

bb37:                                             ; preds = %bb36
  %28 = getelementptr inbounds i8, ptr %_60, i64 4
  %i = load i32, ptr %28, align 4
  %_65 = load i32, ptr %maxvalue, align 4
  %_70 = sext i32 %n to i64
; invoke <alloc::vec::Vec<T,A> as core::ops::index::Index<I>>::index
  %_68 = invoke align 8 ptr @"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h5089ef636e9585e4E"(ptr align 8 %C, i64 %_70, ptr align 8 @alloc_0719b1c62200dc3665368639074463f3)
          to label %bb39 unwind label %cleanup4

bb38:                                             ; preds = %bb36
  %_0 = load i32, ptr %maxvalue, align 4
; call core::ptr::drop_in_place<alloc::vec::Vec<alloc::vec::Vec<i32>>>
  call void @"_ZN4core3ptr70drop_in_place$LT$alloc..vec..Vec$LT$alloc..vec..Vec$LT$i32$GT$$GT$$GT$17h3a8b9c85b5d7ee4aE"(ptr align 8 %C)
  ret i32 %_0

bb39:                                             ; preds = %bb37
  %_71 = sext i32 %i to i64
; invoke <alloc::vec::Vec<T,A> as core::ops::index::Index<I>>::index
  %_67 = invoke align 4 ptr @"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h15d643618ef514cbE"(ptr align 8 %_68, i64 %_71, ptr align 8 @alloc_aeecd04a1901008ef5ccf7ee9bc426e8)
          to label %bb40 unwind label %cleanup4

bb40:                                             ; preds = %bb39
  %_66 = load i32, ptr %_67, align 4
  %_64 = invoke i32 @max(i32 %_65, i32 %_66)
          to label %bb41 unwind label %cleanup4

bb41:                                             ; preds = %bb40
  store i32 %_64, ptr %maxvalue, align 4
  br label %bb35

bb12:                                             ; preds = %bb10
; invoke core::ops::range::RangeInclusive<Idx>::new
  invoke void @"_ZN4core3ops5range25RangeInclusive$LT$Idx$GT$3new17hff408d5901433b83E"(ptr sret([12 x i8]) align 4 %_18, i32 0, i32 %_19)
          to label %bb13 unwind label %cleanup4

bb13:                                             ; preds = %bb12
; invoke <I as core::iter::traits::collect::IntoIterator>::into_iter
  invoke void @"_ZN63_$LT$I$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17he5ae9098192376faE"(ptr sret([12 x i8]) align 4 %_17, ptr align 4 %_18)
          to label %bb14 unwind label %cleanup4

bb14:                                             ; preds = %bb13
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %iter1, ptr align 4 %_17, i64 12, i1 false)
  br label %bb15

bb15:                                             ; preds = %bb21, %bb32, %bb14
; invoke core::iter::range::<impl core::iter::traits::iterator::Iterator for core::ops::range::RangeInclusive<A>>::next
  %29 = invoke { i32, i32 } @"_ZN4core4iter5range110_$LT$impl$u20$core..iter..traits..iterator..Iterator$u20$for$u20$core..ops..range..RangeInclusive$LT$A$GT$$GT$4next17he4a309e31477d70aE"(ptr align 4 %iter1)
          to label %bb16 unwind label %cleanup4

bb16:                                             ; preds = %bb15
  %30 = extractvalue { i32, i32 } %29, 0
  %31 = extractvalue { i32, i32 } %29, 1
  store i32 %30, ptr %_21, align 4
  %32 = getelementptr inbounds i8, ptr %_21, i64 4
  store i32 %31, ptr %32, align 4
  %33 = load i32, ptr %_21, align 4
  %34 = getelementptr inbounds i8, ptr %_21, i64 4
  %35 = load i32, ptr %34, align 4
  %_23 = zext i32 %33 to i64
  %36 = trunc nuw i64 %_23 to i1
  br i1 %36, label %bb17, label %bb7

bb17:                                             ; preds = %bb16
  %37 = getelementptr inbounds i8, ptr %_21, i64 4
  %j = load i32, ptr %37, align 4
  %_25 = icmp eq i32 %j, 0
  br i1 %_25, label %bb19, label %bb18

bb18:                                             ; preds = %bb17
  %_26 = icmp eq i32 %j, %i5
  br i1 %_26, label %bb19, label %bb22

bb19:                                             ; preds = %bb18, %bb17
  %_30 = sext i32 %i5 to i64
; invoke <alloc::vec::Vec<T,A> as core::ops::index::IndexMut<I>>::index_mut
  %_28 = invoke align 8 ptr @"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17hc28fb23a363afff4E"(ptr align 8 %C, i64 %_30, ptr align 8 @alloc_e8cd1cd65325ec205ce03b837f733cbf)
          to label %bb20 unwind label %cleanup4

bb22:                                             ; preds = %bb18
  %38 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %i5, i32 1)
  %_38.0 = extractvalue { i32, i1 } %38, 0
  %_38.1 = extractvalue { i32, i1 } %38, 1
  br i1 %_38.1, label %panic6, label %bb23

bb23:                                             ; preds = %bb22
  %_36 = sext i32 %_38.0 to i64
; invoke <alloc::vec::Vec<T,A> as core::ops::index::Index<I>>::index
  %_34 = invoke align 8 ptr @"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h5089ef636e9585e4E"(ptr align 8 %C, i64 %_36, ptr align 8 @alloc_034bdef11666e215401f166f0a0cf654)
          to label %bb24 unwind label %cleanup4

panic6:                                           ; preds = %bb22
; invoke core::panicking::panic_const::panic_const_sub_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_sub_overflow17h134cc1a7f93654deE(ptr align 8 @alloc_1b305d86169405a9848e76fafeaf432e) #24
          to label %unreachable unwind label %cleanup4

bb24:                                             ; preds = %bb23
  %39 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %j, i32 1)
  %_41.0 = extractvalue { i32, i1 } %39, 0
  %_41.1 = extractvalue { i32, i1 } %39, 1
  br i1 %_41.1, label %panic7, label %bb25

bb25:                                             ; preds = %bb24
  %_39 = sext i32 %_41.0 to i64
; invoke <alloc::vec::Vec<T,A> as core::ops::index::Index<I>>::index
  %_33 = invoke align 4 ptr @"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h15d643618ef514cbE"(ptr align 8 %_34, i64 %_39, ptr align 8 @alloc_d24f4b462a2f0308d1a0604a477cea3d)
          to label %bb26 unwind label %cleanup4

panic7:                                           ; preds = %bb24
; invoke core::panicking::panic_const::panic_const_sub_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_sub_overflow17h134cc1a7f93654deE(ptr align 8 @alloc_e2bf3c1d05f82fd2bdf4a87d79847ecf) #24
          to label %unreachable unwind label %cleanup4

bb26:                                             ; preds = %bb25
  %_32 = load i32, ptr %_33, align 4
  %40 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %i5, i32 1)
  %_48.0 = extractvalue { i32, i1 } %40, 0
  %_48.1 = extractvalue { i32, i1 } %40, 1
  br i1 %_48.1, label %panic8, label %bb27

bb27:                                             ; preds = %bb26
  %_46 = sext i32 %_48.0 to i64
; invoke <alloc::vec::Vec<T,A> as core::ops::index::Index<I>>::index
  %_44 = invoke align 8 ptr @"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h5089ef636e9585e4E"(ptr align 8 %C, i64 %_46, ptr align 8 @alloc_64a57b63449152b756b16a67a906a4d1)
          to label %bb28 unwind label %cleanup4

panic8:                                           ; preds = %bb26
; invoke core::panicking::panic_const::panic_const_sub_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_sub_overflow17h134cc1a7f93654deE(ptr align 8 @alloc_73f23b3cd6b04b4767c94769c5a9bf71) #24
          to label %unreachable unwind label %cleanup4

bb28:                                             ; preds = %bb27
  %_49 = sext i32 %j to i64
; invoke <alloc::vec::Vec<T,A> as core::ops::index::Index<I>>::index
  %_43 = invoke align 4 ptr @"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h15d643618ef514cbE"(ptr align 8 %_44, i64 %_49, ptr align 8 @alloc_63bf37bd3bc104a7726a017abdd6371a)
          to label %bb29 unwind label %cleanup4

bb29:                                             ; preds = %bb28
  %_42 = load i32, ptr %_43, align 4
  %41 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %_32, i32 %_42)
  %_50.0 = extractvalue { i32, i1 } %41, 0
  %_50.1 = extractvalue { i32, i1 } %41, 1
  br i1 %_50.1, label %panic9, label %bb30

bb30:                                             ; preds = %bb29
  %_54 = sext i32 %i5 to i64
; invoke <alloc::vec::Vec<T,A> as core::ops::index::IndexMut<I>>::index_mut
  %_52 = invoke align 8 ptr @"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17hc28fb23a363afff4E"(ptr align 8 %C, i64 %_54, ptr align 8 @alloc_81dc4e09111c5797f703c9cc4fdd680e)
          to label %bb31 unwind label %cleanup4

panic9:                                           ; preds = %bb29
; invoke core::panicking::panic_const::panic_const_add_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_32805ab36719800f312847154bc8ccf7) #24
          to label %unreachable unwind label %cleanup4

bb31:                                             ; preds = %bb30
  %_55 = sext i32 %j to i64
; invoke <alloc::vec::Vec<T,A> as core::ops::index::IndexMut<I>>::index_mut
  %_51 = invoke align 4 ptr @"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17hdbc3c48ed40c3435E"(ptr align 8 %_52, i64 %_55, ptr align 8 @alloc_0d8d279fa383d0d8f4bf02ad84ee6c69)
          to label %bb32 unwind label %cleanup4

bb32:                                             ; preds = %bb31
  store i32 %_50.0, ptr %_51, align 4
  br label %bb15

bb20:                                             ; preds = %bb19
  %_31 = sext i32 %j to i64
; invoke <alloc::vec::Vec<T,A> as core::ops::index::IndexMut<I>>::index_mut
  %_27 = invoke align 4 ptr @"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17hdbc3c48ed40c3435E"(ptr align 8 %_28, i64 %_31, ptr align 8 @alloc_550008955f21cf3613134874f82b69a1)
          to label %bb21 unwind label %cleanup4

bb21:                                             ; preds = %bb20
  store i32 1, ptr %_27, align 4
  br label %bb15

bb9:                                              ; No predecessors!
  unreachable

terminate:                                        ; preds = %bb45, %bb43
  %42 = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer
; call core::panicking::panic_in_cleanup
  call void @_ZN4core9panicking16panic_in_cleanup17h5f6bde45d17ae243E() #21
  unreachable

bb44:                                             ; preds = %bb45, %bb46, %bb43
  %43 = load ptr, ptr %0, align 8
  %44 = getelementptr inbounds i8, ptr %0, i64 8
  %45 = load i32, ptr %44, align 8
  %46 = insertvalue { ptr, i32 } poison, ptr %43, 0
  %47 = insertvalue { ptr, i32 } %46, i32 %45, 1
  resume { ptr, i32 } %47

bb45:                                             ; preds = %bb46
; invoke core::ptr::drop_in_place<alloc::vec::Vec<i32>>
  invoke void @"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17h91c0f77914fce6b2E"(ptr align 8 %_3) #22
          to label %bb44 unwind label %terminate
}

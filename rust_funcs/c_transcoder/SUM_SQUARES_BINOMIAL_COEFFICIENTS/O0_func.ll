define i32 @f_gold(i32 %n) unnamed_addr #3 personality ptr @rust_eh_personality {
start:
  %0 = alloca [16 x i8], align 8
  %_79 = alloca [1 x i8], align 1
  %_60 = alloca [8 x i8], align 4
  %iter2 = alloca [12 x i8], align 4
  %_58 = alloca [12 x i8], align 4
  %_57 = alloca [12 x i8], align 4
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
  store i8 0, ptr %_79, align 1
  %_5 = sext i32 %n to i64
  %_6.0 = add i64 %_5, 1
  %_6.1 = icmp ult i64 %_6.0, %_5
  br i1 %_6.1, label %panic, label %bb1

bb1:                                              ; preds = %start
  store i8 1, ptr %_79, align 1
; call alloc::vec::from_elem
  call void @_ZN5alloc3vec9from_elem17h82a1d596f831a14dE(ptr sret([24 x i8]) align 8 %_3, i32 0, i64 %_6.0)
  %_8 = sext i32 %n to i64
  %_9.0 = add i64 %_8, 1
  %_9.1 = icmp ult i64 %_9.0, %_8
  br i1 %_9.1, label %panic3, label %bb3

panic:                                            ; preds = %start
; call core::panicking::panic_const::panic_const_add_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_3914de965c2ebe5ce53eb07093223bbf) #23
  unreachable

bb3:                                              ; preds = %bb1
  store i8 0, ptr %_79, align 1
; invoke alloc::vec::from_elem
  invoke void @_ZN5alloc3vec9from_elem17h7327b79e2a07cc55E(ptr sret([24 x i8]) align 8 %C, ptr align 8 %_3, i64 %_9.0)
          to label %bb4 unwind label %cleanup

panic3:                                           ; preds = %bb1
; invoke core::panicking::panic_const::panic_const_add_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_73dbf0155998737bd0313149337bbbe4) #24
          to label %unreachable unwind label %cleanup

bb49:                                             ; preds = %cleanup
  %1 = load i8, ptr %_79, align 1
  %2 = trunc nuw i8 %1 to i1
  br i1 %2, label %bb48, label %bb47

cleanup:                                          ; preds = %bb3, %panic3
  %3 = landingpad { ptr, i32 }
          cleanup
  %4 = extractvalue { ptr, i32 } %3, 0
  %5 = extractvalue { ptr, i32 } %3, 1
  store ptr %4, ptr %0, align 8
  %6 = getelementptr inbounds i8, ptr %0, i64 8
  store i32 %5, ptr %6, align 8
  br label %bb49

unreachable:                                      ; preds = %panic11, %panic10, %panic9, %panic8, %panic6, %panic5, %panic3
  unreachable

bb4:                                              ; preds = %bb3
  store i8 0, ptr %_79, align 1
; invoke core::ops::range::RangeInclusive<Idx>::new
  invoke void @"_ZN4core3ops5range25RangeInclusive$LT$Idx$GT$3new17h9c855b36d95a8eadE"(ptr sret([12 x i8]) align 4 %_11, i32 0, i32 %n)
          to label %bb5 unwind label %cleanup4

bb46:                                             ; preds = %cleanup4
; invoke core::ptr::drop_in_place<alloc::vec::Vec<alloc::vec::Vec<i32>>>
  invoke void @"_ZN4core3ptr70drop_in_place$LT$alloc..vec..Vec$LT$alloc..vec..Vec$LT$i32$GT$$GT$$GT$17hcd1cdc22f3194758E"(ptr align 8 %C) #22
          to label %bb47 unwind label %terminate

cleanup4:                                         ; preds = %bb20, %bb19, %bb31, %bb30, %panic11, %bb28, %bb27, %panic10, %bb25, %panic9, %bb23, %panic8, %bb15, %bb13, %bb12, %bb10, %panic6, %panic5, %bb41, %bb40, %bb39, %bb37, %bb35, %bb33, %bb11, %bb7, %bb5, %bb4
  %7 = landingpad { ptr, i32 }
          cleanup
  %8 = extractvalue { ptr, i32 } %7, 0
  %9 = extractvalue { ptr, i32 } %7, 1
  store ptr %8, ptr %0, align 8
  %10 = getelementptr inbounds i8, ptr %0, i64 8
  store i32 %9, ptr %10, align 8
  br label %bb46

bb5:                                              ; preds = %bb4
; invoke <I as core::iter::traits::collect::IntoIterator>::into_iter
  invoke void @"_ZN63_$LT$I$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17h769710a2d48c3c55E"(ptr sret([12 x i8]) align 4 %_10, ptr align 4 %_11)
          to label %bb6 unwind label %cleanup4

bb6:                                              ; preds = %bb5
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %iter, ptr align 4 %_10, i64 12, i1 false)
  br label %bb7

bb7:                                              ; preds = %bb16, %bb6
; invoke core::iter::range::<impl core::iter::traits::iterator::Iterator for core::ops::range::RangeInclusive<A>>::next
  %11 = invoke { i32, i32 } @"_ZN4core4iter5range110_$LT$impl$u20$core..iter..traits..iterator..Iterator$u20$for$u20$core..ops..range..RangeInclusive$LT$A$GT$$GT$4next17h342d930dc814d06fE"(ptr align 4 %iter)
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
  %i7 = load i32, ptr %19, align 4
  %_19 = invoke i32 @min(i32 %i7, i32 %n)
          to label %bb12 unwind label %cleanup4

bb11:                                             ; preds = %bb8
  store i32 0, ptr %sum, align 4
; invoke core::ops::range::RangeInclusive<Idx>::new
  invoke void @"_ZN4core3ops5range25RangeInclusive$LT$Idx$GT$3new17h9c855b36d95a8eadE"(ptr sret([12 x i8]) align 4 %_58, i32 0, i32 %n)
          to label %bb33 unwind label %cleanup4

bb33:                                             ; preds = %bb11
; invoke <I as core::iter::traits::collect::IntoIterator>::into_iter
  invoke void @"_ZN63_$LT$I$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17h769710a2d48c3c55E"(ptr sret([12 x i8]) align 4 %_57, ptr align 4 %_58)
          to label %bb34 unwind label %cleanup4

bb34:                                             ; preds = %bb33
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %iter2, ptr align 4 %_57, i64 12, i1 false)
  br label %bb35

bb35:                                             ; preds = %bb44, %bb34
; invoke core::iter::range::<impl core::iter::traits::iterator::Iterator for core::ops::range::RangeInclusive<A>>::next
  %20 = invoke { i32, i32 } @"_ZN4core4iter5range110_$LT$impl$u20$core..iter..traits..iterator..Iterator$u20$for$u20$core..ops..range..RangeInclusive$LT$A$GT$$GT$4next17h342d930dc814d06fE"(ptr align 4 %iter2)
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
  %_69 = sext i32 %n to i64
; invoke <alloc::vec::Vec<T,A> as core::ops::index::Index<I>>::index
  %_67 = invoke align 8 ptr @"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17ha65fc431cc4b82dcE"(ptr align 8 %C, i64 %_69, ptr align 8 @alloc_2324aca3385d4e6087aeb1708921e4ea)
          to label %bb39 unwind label %cleanup4

bb38:                                             ; preds = %bb36
  %_0 = load i32, ptr %sum, align 4
; call core::ptr::drop_in_place<alloc::vec::Vec<alloc::vec::Vec<i32>>>
  call void @"_ZN4core3ptr70drop_in_place$LT$alloc..vec..Vec$LT$alloc..vec..Vec$LT$i32$GT$$GT$$GT$17hcd1cdc22f3194758E"(ptr align 8 %C)
  ret i32 %_0

bb39:                                             ; preds = %bb37
  %_70 = sext i32 %i to i64
; invoke <alloc::vec::Vec<T,A> as core::ops::index::Index<I>>::index
  %_66 = invoke align 4 ptr @"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h6070f190e1048721E"(ptr align 8 %_67, i64 %_70, ptr align 8 @alloc_f663cc5345675fd91416ba7f64ce7662)
          to label %bb40 unwind label %cleanup4

bb40:                                             ; preds = %bb39
  %_65 = load i32, ptr %_66, align 4
  %_75 = sext i32 %n to i64
; invoke <alloc::vec::Vec<T,A> as core::ops::index::Index<I>>::index
  %_73 = invoke align 8 ptr @"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17ha65fc431cc4b82dcE"(ptr align 8 %C, i64 %_75, ptr align 8 @alloc_cd0a3271de270bfb044881feab83a3da)
          to label %bb41 unwind label %cleanup4

bb41:                                             ; preds = %bb40
  %_76 = sext i32 %i to i64
; invoke <alloc::vec::Vec<T,A> as core::ops::index::Index<I>>::index
  %_72 = invoke align 4 ptr @"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h6070f190e1048721E"(ptr align 8 %_73, i64 %_76, ptr align 8 @alloc_abc48b68251ea8c8aadd86326cc7c600)
          to label %bb42 unwind label %cleanup4

bb42:                                             ; preds = %bb41
  %_71 = load i32, ptr %_72, align 4
  %29 = call { i32, i1 } @llvm.smul.with.overflow.i32(i32 %_65, i32 %_71)
  %_77.0 = extractvalue { i32, i1 } %29, 0
  %_77.1 = extractvalue { i32, i1 } %29, 1
  br i1 %_77.1, label %panic5, label %bb43

bb43:                                             ; preds = %bb42
  %30 = load i32, ptr %sum, align 4
  %31 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %30, i32 %_77.0)
  %_78.0 = extractvalue { i32, i1 } %31, 0
  %_78.1 = extractvalue { i32, i1 } %31, 1
  br i1 %_78.1, label %panic6, label %bb44

panic5:                                           ; preds = %bb42
; invoke core::panicking::panic_const::panic_const_mul_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_mul_overflow17h554ac164c12099f8E(ptr align 8 @alloc_99ea8d51047b43814f427ccdb7ccbc97) #24
          to label %unreachable unwind label %cleanup4

bb44:                                             ; preds = %bb43
  store i32 %_78.0, ptr %sum, align 4
  br label %bb35

panic6:                                           ; preds = %bb43
; invoke core::panicking::panic_const::panic_const_add_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_d7751d120880d7caedb221528556bb50) #24
          to label %unreachable unwind label %cleanup4

bb12:                                             ; preds = %bb10
; invoke core::ops::range::RangeInclusive<Idx>::new
  invoke void @"_ZN4core3ops5range25RangeInclusive$LT$Idx$GT$3new17h9c855b36d95a8eadE"(ptr sret([12 x i8]) align 4 %_18, i32 0, i32 %_19)
          to label %bb13 unwind label %cleanup4

bb13:                                             ; preds = %bb12
; invoke <I as core::iter::traits::collect::IntoIterator>::into_iter
  invoke void @"_ZN63_$LT$I$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17h769710a2d48c3c55E"(ptr sret([12 x i8]) align 4 %_17, ptr align 4 %_18)
          to label %bb14 unwind label %cleanup4

bb14:                                             ; preds = %bb13
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %iter1, ptr align 4 %_17, i64 12, i1 false)
  br label %bb15

bb15:                                             ; preds = %bb21, %bb32, %bb14
; invoke core::iter::range::<impl core::iter::traits::iterator::Iterator for core::ops::range::RangeInclusive<A>>::next
  %32 = invoke { i32, i32 } @"_ZN4core4iter5range110_$LT$impl$u20$core..iter..traits..iterator..Iterator$u20$for$u20$core..ops..range..RangeInclusive$LT$A$GT$$GT$4next17h342d930dc814d06fE"(ptr align 4 %iter1)
          to label %bb16 unwind label %cleanup4

bb16:                                             ; preds = %bb15
  %33 = extractvalue { i32, i32 } %32, 0
  %34 = extractvalue { i32, i32 } %32, 1
  store i32 %33, ptr %_21, align 4
  %35 = getelementptr inbounds i8, ptr %_21, i64 4
  store i32 %34, ptr %35, align 4
  %36 = load i32, ptr %_21, align 4
  %37 = getelementptr inbounds i8, ptr %_21, i64 4
  %38 = load i32, ptr %37, align 4
  %_23 = zext i32 %36 to i64
  %39 = trunc nuw i64 %_23 to i1
  br i1 %39, label %bb17, label %bb7

bb17:                                             ; preds = %bb16
  %40 = getelementptr inbounds i8, ptr %_21, i64 4
  %j = load i32, ptr %40, align 4
  %_25 = icmp eq i32 %j, 0
  br i1 %_25, label %bb19, label %bb18

bb18:                                             ; preds = %bb17
  %_26 = icmp eq i32 %j, %i7
  br i1 %_26, label %bb19, label %bb22

bb19:                                             ; preds = %bb18, %bb17
  %_30 = sext i32 %i7 to i64
; invoke <alloc::vec::Vec<T,A> as core::ops::index::IndexMut<I>>::index_mut
  %_28 = invoke align 8 ptr @"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h65ea9fc550a4c6dbE"(ptr align 8 %C, i64 %_30, ptr align 8 @alloc_b5661f1d83db4e6e483c9878a56a6de1)
          to label %bb20 unwind label %cleanup4

bb22:                                             ; preds = %bb18
  %41 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %i7, i32 1)
  %_38.0 = extractvalue { i32, i1 } %41, 0
  %_38.1 = extractvalue { i32, i1 } %41, 1
  br i1 %_38.1, label %panic8, label %bb23

bb23:                                             ; preds = %bb22
  %_36 = sext i32 %_38.0 to i64
; invoke <alloc::vec::Vec<T,A> as core::ops::index::Index<I>>::index
  %_34 = invoke align 8 ptr @"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17ha65fc431cc4b82dcE"(ptr align 8 %C, i64 %_36, ptr align 8 @alloc_a62532a7183da3e35bb72aff9bcc15d3)
          to label %bb24 unwind label %cleanup4

panic8:                                           ; preds = %bb22
; invoke core::panicking::panic_const::panic_const_sub_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_sub_overflow17h134cc1a7f93654deE(ptr align 8 @alloc_6df574b6d22dcde5ecdc497cc6fe827b) #24
          to label %unreachable unwind label %cleanup4

bb24:                                             ; preds = %bb23
  %42 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %j, i32 1)
  %_41.0 = extractvalue { i32, i1 } %42, 0
  %_41.1 = extractvalue { i32, i1 } %42, 1
  br i1 %_41.1, label %panic9, label %bb25

bb25:                                             ; preds = %bb24
  %_39 = sext i32 %_41.0 to i64
; invoke <alloc::vec::Vec<T,A> as core::ops::index::Index<I>>::index
  %_33 = invoke align 4 ptr @"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h6070f190e1048721E"(ptr align 8 %_34, i64 %_39, ptr align 8 @alloc_0f2d7c7e9aac56eef12f6e34cb5b7301)
          to label %bb26 unwind label %cleanup4

panic9:                                           ; preds = %bb24
; invoke core::panicking::panic_const::panic_const_sub_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_sub_overflow17h134cc1a7f93654deE(ptr align 8 @alloc_6521cf2b77f175d83128fec62b082021) #24
          to label %unreachable unwind label %cleanup4

bb26:                                             ; preds = %bb25
  %_32 = load i32, ptr %_33, align 4
  %43 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %i7, i32 1)
  %_48.0 = extractvalue { i32, i1 } %43, 0
  %_48.1 = extractvalue { i32, i1 } %43, 1
  br i1 %_48.1, label %panic10, label %bb27

bb27:                                             ; preds = %bb26
  %_46 = sext i32 %_48.0 to i64
; invoke <alloc::vec::Vec<T,A> as core::ops::index::Index<I>>::index
  %_44 = invoke align 8 ptr @"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17ha65fc431cc4b82dcE"(ptr align 8 %C, i64 %_46, ptr align 8 @alloc_245dc040ffcd4e0245d2b69b359de911)
          to label %bb28 unwind label %cleanup4

panic10:                                          ; preds = %bb26
; invoke core::panicking::panic_const::panic_const_sub_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_sub_overflow17h134cc1a7f93654deE(ptr align 8 @alloc_03529332f987603c06ba0561963424be) #24
          to label %unreachable unwind label %cleanup4

bb28:                                             ; preds = %bb27
  %_49 = sext i32 %j to i64
; invoke <alloc::vec::Vec<T,A> as core::ops::index::Index<I>>::index
  %_43 = invoke align 4 ptr @"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h6070f190e1048721E"(ptr align 8 %_44, i64 %_49, ptr align 8 @alloc_09eb12c5d65a5ae46884ed32adc77d6f)
          to label %bb29 unwind label %cleanup4

bb29:                                             ; preds = %bb28
  %_42 = load i32, ptr %_43, align 4
  %44 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %_32, i32 %_42)
  %_50.0 = extractvalue { i32, i1 } %44, 0
  %_50.1 = extractvalue { i32, i1 } %44, 1
  br i1 %_50.1, label %panic11, label %bb30

bb30:                                             ; preds = %bb29
  %_54 = sext i32 %i7 to i64
; invoke <alloc::vec::Vec<T,A> as core::ops::index::IndexMut<I>>::index_mut
  %_52 = invoke align 8 ptr @"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h65ea9fc550a4c6dbE"(ptr align 8 %C, i64 %_54, ptr align 8 @alloc_03ddb4cbe688077e89751d4824349e6e)
          to label %bb31 unwind label %cleanup4

panic11:                                          ; preds = %bb29
; invoke core::panicking::panic_const::panic_const_add_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_43964ddb7a7b25525952e8db2938b7ae) #24
          to label %unreachable unwind label %cleanup4

bb31:                                             ; preds = %bb30
  %_55 = sext i32 %j to i64
; invoke <alloc::vec::Vec<T,A> as core::ops::index::IndexMut<I>>::index_mut
  %_51 = invoke align 4 ptr @"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h59b404f575336676E"(ptr align 8 %_52, i64 %_55, ptr align 8 @alloc_205d29945ba9b9649785641aa7743810)
          to label %bb32 unwind label %cleanup4

bb32:                                             ; preds = %bb31
  store i32 %_50.0, ptr %_51, align 4
  br label %bb15

bb20:                                             ; preds = %bb19
  %_31 = sext i32 %j to i64
; invoke <alloc::vec::Vec<T,A> as core::ops::index::IndexMut<I>>::index_mut
  %_27 = invoke align 4 ptr @"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h59b404f575336676E"(ptr align 8 %_28, i64 %_31, ptr align 8 @alloc_ea63d6990c1b8df77cbaf83b442a1189)
          to label %bb21 unwind label %cleanup4

bb21:                                             ; preds = %bb20
  store i32 1, ptr %_27, align 4
  br label %bb15

bb9:                                              ; No predecessors!
  unreachable

terminate:                                        ; preds = %bb48, %bb46
  %45 = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer
; call core::panicking::panic_in_cleanup
  call void @_ZN4core9panicking16panic_in_cleanup17h5f6bde45d17ae243E() #21
  unreachable

bb47:                                             ; preds = %bb48, %bb49, %bb46
  %46 = load ptr, ptr %0, align 8
  %47 = getelementptr inbounds i8, ptr %0, i64 8
  %48 = load i32, ptr %47, align 8
  %49 = insertvalue { ptr, i32 } poison, ptr %46, 0
  %50 = insertvalue { ptr, i32 } %49, i32 %48, 1
  resume { ptr, i32 } %50

bb48:                                             ; preds = %bb49
; invoke core::ptr::drop_in_place<alloc::vec::Vec<i32>>
  invoke void @"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17hb7d42ef6c8e8cd5eE"(ptr align 8 %_3) #22
          to label %bb47 unwind label %terminate
}

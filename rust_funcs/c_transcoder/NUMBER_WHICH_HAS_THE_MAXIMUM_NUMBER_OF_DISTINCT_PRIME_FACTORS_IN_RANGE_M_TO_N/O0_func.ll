define i32 @f_gold(i32 %m, i32 %n) unnamed_addr #3 personality ptr @rust_eh_personality {
start:
  %0 = alloca [16 x i8], align 8
  %_50 = alloca [8 x i8], align 4
  %iter2 = alloca [12 x i8], align 4
  %_48 = alloca [12 x i8], align 4
  %_47 = alloca [12 x i8], align 4
  %num = alloca [4 x i8], align 4
  %max = alloca [4 x i8], align 4
  %_31 = alloca [8 x i8], align 4
  %iter1 = alloca [12 x i8], align 4
  %_27 = alloca [12 x i8], align 4
  %_26 = alloca [12 x i8], align 4
  %_14 = alloca [8 x i8], align 4
  %iter = alloca [12 x i8], align 4
  %_12 = alloca [12 x i8], align 4
  %_11 = alloca [12 x i8], align 4
  %prime = alloca [24 x i8], align 8
  %factor_count = alloca [24 x i8], align 8
  %_5 = sext i32 %n to i64
  %_6.0 = add i64 %_5, 1
  %_6.1 = icmp ult i64 %_6.0, %_5
  br i1 %_6.1, label %panic, label %bb1

bb1:                                              ; preds = %start
; call alloc::vec::from_elem
  call void @_ZN5alloc3vec9from_elem17h789e35a860d1c192E(ptr sret([24 x i8]) align 8 %factor_count, i32 0, i64 %_6.0)
  %_9 = sext i32 %n to i64
  %_10.0 = add i64 %_9, 1
  %_10.1 = icmp ult i64 %_10.0, %_9
  br i1 %_10.1, label %panic3, label %bb3

panic:                                            ; preds = %start
; call core::panicking::panic_const::panic_const_add_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_8e49e5a6329e53e5bc7dd9c0453a33b5) #23
  unreachable

bb3:                                              ; preds = %bb1
; invoke alloc::vec::from_elem
  invoke void @_ZN5alloc3vec9from_elem17h789e35a860d1c192E(ptr sret([24 x i8]) align 8 %prime, i32 1, i64 %_10.0)
          to label %bb4 unwind label %cleanup

panic3:                                           ; preds = %bb1
; invoke core::panicking::panic_const::panic_const_add_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_540ca88c5e25226023f9fb7cc1e7d594) #24
          to label %unreachable unwind label %cleanup

bb37:                                             ; preds = %bb36, %cleanup
; invoke core::ptr::drop_in_place<alloc::vec::Vec<i32>>
  invoke void @"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17h409ec3f715008b54E"(ptr align 8 %factor_count) #22
          to label %bb38 unwind label %terminate

cleanup:                                          ; preds = %bb30, %bb3, %panic3
  %1 = landingpad { ptr, i32 }
          cleanup
  %2 = extractvalue { ptr, i32 } %1, 0
  %3 = extractvalue { ptr, i32 } %1, 1
  store ptr %2, ptr %0, align 8
  %4 = getelementptr inbounds i8, ptr %0, i64 8
  store i32 %3, ptr %4, align 8
  br label %bb37

unreachable:                                      ; preds = %panic7, %panic6, %panic3
  unreachable

bb4:                                              ; preds = %bb3
; invoke core::ops::range::RangeInclusive<Idx>::new
  invoke void @"_ZN4core3ops5range25RangeInclusive$LT$Idx$GT$3new17h1b82dfdce3cfaf87E"(ptr sret([12 x i8]) align 4 %_12, i32 2, i32 %n)
          to label %bb5 unwind label %cleanup4

bb36:                                             ; preds = %cleanup4
; invoke core::ptr::drop_in_place<alloc::vec::Vec<i32>>
  invoke void @"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17h409ec3f715008b54E"(ptr align 8 %prime) #22
          to label %bb37 unwind label %terminate

cleanup4:                                         ; preds = %bb22, %panic7, %bb20, %bb18, %bb16, %bb15, %panic6, %bb13, %bb10, %bb32, %bb29, %bb27, %bb25, %bb24, %bb11, %bb7, %bb5, %bb4
  %5 = landingpad { ptr, i32 }
          cleanup
  %6 = extractvalue { ptr, i32 } %5, 0
  %7 = extractvalue { ptr, i32 } %5, 1
  store ptr %6, ptr %0, align 8
  %8 = getelementptr inbounds i8, ptr %0, i64 8
  store i32 %7, ptr %8, align 8
  br label %bb36

bb5:                                              ; preds = %bb4
; invoke <I as core::iter::traits::collect::IntoIterator>::into_iter
  invoke void @"_ZN63_$LT$I$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17h3264a079ff29c306E"(ptr sret([12 x i8]) align 4 %_11, ptr align 4 %_12)
          to label %bb6 unwind label %cleanup4

bb6:                                              ; preds = %bb5
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %iter, ptr align 4 %_11, i64 12, i1 false)
  br label %bb7

bb7:                                              ; preds = %bb19, %bb12, %bb6
; invoke core::iter::range::<impl core::iter::traits::iterator::Iterator for core::ops::range::RangeInclusive<A>>::next
  %9 = invoke { i32, i32 } @"_ZN4core4iter5range110_$LT$impl$u20$core..iter..traits..iterator..Iterator$u20$for$u20$core..ops..range..RangeInclusive$LT$A$GT$$GT$4next17hdad15631eb4c4620E"(ptr align 4 %iter)
          to label %bb8 unwind label %cleanup4

bb8:                                              ; preds = %bb7
  %10 = extractvalue { i32, i32 } %9, 0
  %11 = extractvalue { i32, i32 } %9, 1
  store i32 %10, ptr %_14, align 4
  %12 = getelementptr inbounds i8, ptr %_14, i64 4
  store i32 %11, ptr %12, align 4
  %13 = load i32, ptr %_14, align 4
  %14 = getelementptr inbounds i8, ptr %_14, i64 4
  %15 = load i32, ptr %14, align 4
  %_16 = zext i32 %13 to i64
  %16 = trunc nuw i64 %_16 to i1
  br i1 %16, label %bb10, label %bb11

bb10:                                             ; preds = %bb8
  %17 = getelementptr inbounds i8, ptr %_14, i64 4
  %i5 = load i32, ptr %17, align 4
  %_22 = sext i32 %i5 to i64
; invoke <alloc::vec::Vec<T,A> as core::ops::index::Index<I>>::index
  %_20 = invoke align 4 ptr @"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h04492909abf0abf2E"(ptr align 8 %prime, i64 %_22, ptr align 8 @alloc_04de6b3fb62426340826b7a34f14fff3)
          to label %bb12 unwind label %cleanup4

bb11:                                             ; preds = %bb8
  %_45 = sext i32 %m to i64
; invoke <alloc::vec::Vec<T,A> as core::ops::index::Index<I>>::index
  %_43 = invoke align 4 ptr @"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h04492909abf0abf2E"(ptr align 8 %factor_count, i64 %_45, ptr align 8 @alloc_813134636ebe9806d8978bde45680097)
          to label %bb24 unwind label %cleanup4

bb24:                                             ; preds = %bb11
  %18 = load i32, ptr %_43, align 4
  store i32 %18, ptr %max, align 4
  store i32 %m, ptr %num, align 4
; invoke core::ops::range::RangeInclusive<Idx>::new
  invoke void @"_ZN4core3ops5range25RangeInclusive$LT$Idx$GT$3new17h1b82dfdce3cfaf87E"(ptr sret([12 x i8]) align 4 %_48, i32 %m, i32 %n)
          to label %bb25 unwind label %cleanup4

bb25:                                             ; preds = %bb24
; invoke <I as core::iter::traits::collect::IntoIterator>::into_iter
  invoke void @"_ZN63_$LT$I$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17h3264a079ff29c306E"(ptr sret([12 x i8]) align 4 %_47, ptr align 4 %_48)
          to label %bb26 unwind label %cleanup4

bb26:                                             ; preds = %bb25
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %iter2, ptr align 4 %_47, i64 12, i1 false)
  br label %bb27

bb27:                                             ; preds = %bb33, %bb31, %bb26
; invoke core::iter::range::<impl core::iter::traits::iterator::Iterator for core::ops::range::RangeInclusive<A>>::next
  %19 = invoke { i32, i32 } @"_ZN4core4iter5range110_$LT$impl$u20$core..iter..traits..iterator..Iterator$u20$for$u20$core..ops..range..RangeInclusive$LT$A$GT$$GT$4next17hdad15631eb4c4620E"(ptr align 4 %iter2)
          to label %bb28 unwind label %cleanup4

bb28:                                             ; preds = %bb27
  %20 = extractvalue { i32, i32 } %19, 0
  %21 = extractvalue { i32, i32 } %19, 1
  store i32 %20, ptr %_50, align 4
  %22 = getelementptr inbounds i8, ptr %_50, i64 4
  store i32 %21, ptr %22, align 4
  %23 = load i32, ptr %_50, align 4
  %24 = getelementptr inbounds i8, ptr %_50, i64 4
  %25 = load i32, ptr %24, align 4
  %_52 = zext i32 %23 to i64
  %26 = trunc nuw i64 %_52 to i1
  br i1 %26, label %bb29, label %bb30

bb29:                                             ; preds = %bb28
  %27 = getelementptr inbounds i8, ptr %_50, i64 4
  %i = load i32, ptr %27, align 4
  %_58 = sext i32 %i to i64
; invoke <alloc::vec::Vec<T,A> as core::ops::index::Index<I>>::index
  %_56 = invoke align 4 ptr @"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h04492909abf0abf2E"(ptr align 8 %factor_count, i64 %_58, ptr align 8 @alloc_60536c630c587d9c5698878b89b43b24)
          to label %bb31 unwind label %cleanup4

bb30:                                             ; preds = %bb28
  %_0 = load i32, ptr %num, align 4
; invoke core::ptr::drop_in_place<alloc::vec::Vec<i32>>
  invoke void @"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17h409ec3f715008b54E"(ptr align 8 %prime)
          to label %bb34 unwind label %cleanup

bb34:                                             ; preds = %bb30
; call core::ptr::drop_in_place<alloc::vec::Vec<i32>>
  call void @"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17h409ec3f715008b54E"(ptr align 8 %factor_count)
  ret i32 %_0

bb31:                                             ; preds = %bb29
  %_55 = load i32, ptr %_56, align 4
  %_59 = load i32, ptr %max, align 4
  %_54 = icmp sgt i32 %_55, %_59
  br i1 %_54, label %bb32, label %bb27

bb32:                                             ; preds = %bb31
  %_63 = sext i32 %i to i64
; invoke <alloc::vec::Vec<T,A> as core::ops::index::Index<I>>::index
  %_61 = invoke align 4 ptr @"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h04492909abf0abf2E"(ptr align 8 %factor_count, i64 %_63, ptr align 8 @alloc_6a929ca887141367b19be0f24f1cf2ff)
          to label %bb33 unwind label %cleanup4

bb33:                                             ; preds = %bb32
  %_60 = load i32, ptr %_61, align 4
  store i32 %_60, ptr %max, align 4
  store i32 %i, ptr %num, align 4
  br label %bb27

bb12:                                             ; preds = %bb10
  %_19 = load i32, ptr %_20, align 4
  %_18 = icmp eq i32 %_19, 1
  br i1 %_18, label %bb13, label %bb7

bb13:                                             ; preds = %bb12
  %_25 = sext i32 %i5 to i64
; invoke <alloc::vec::Vec<T,A> as core::ops::index::IndexMut<I>>::index_mut
  %_23 = invoke align 4 ptr @"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h97e84b61ddb1b938E"(ptr align 8 %factor_count, i64 %_25, ptr align 8 @alloc_1fe9a6507f7925a55194c83fb443ba70)
          to label %bb14 unwind label %cleanup4

bb14:                                             ; preds = %bb13
  store i32 1, ptr %_23, align 4
  %28 = call { i32, i1 } @llvm.smul.with.overflow.i32(i32 %i5, i32 2)
  %_29.0 = extractvalue { i32, i1 } %28, 0
  %_29.1 = extractvalue { i32, i1 } %28, 1
  br i1 %_29.1, label %panic6, label %bb15

bb15:                                             ; preds = %bb14
; invoke core::ops::range::RangeInclusive<Idx>::new
  invoke void @"_ZN4core3ops5range25RangeInclusive$LT$Idx$GT$3new17h1b82dfdce3cfaf87E"(ptr sret([12 x i8]) align 4 %_27, i32 %_29.0, i32 %n)
          to label %bb16 unwind label %cleanup4

panic6:                                           ; preds = %bb14
; invoke core::panicking::panic_const::panic_const_mul_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_mul_overflow17h554ac164c12099f8E(ptr align 8 @alloc_3290b3880314f69513a9ff6144079061) #24
          to label %unreachable unwind label %cleanup4

bb16:                                             ; preds = %bb15
; invoke <I as core::iter::traits::collect::IntoIterator>::into_iter
  invoke void @"_ZN63_$LT$I$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17h3264a079ff29c306E"(ptr sret([12 x i8]) align 4 %_26, ptr align 4 %_27)
          to label %bb17 unwind label %cleanup4

bb17:                                             ; preds = %bb16
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %iter1, ptr align 4 %_26, i64 12, i1 false)
  br label %bb18

bb18:                                             ; preds = %bb23, %bb17
; invoke core::iter::range::<impl core::iter::traits::iterator::Iterator for core::ops::range::RangeInclusive<A>>::next
  %29 = invoke { i32, i32 } @"_ZN4core4iter5range110_$LT$impl$u20$core..iter..traits..iterator..Iterator$u20$for$u20$core..ops..range..RangeInclusive$LT$A$GT$$GT$4next17hdad15631eb4c4620E"(ptr align 4 %iter1)
          to label %bb19 unwind label %cleanup4

bb19:                                             ; preds = %bb18
  %30 = extractvalue { i32, i32 } %29, 0
  %31 = extractvalue { i32, i32 } %29, 1
  store i32 %30, ptr %_31, align 4
  %32 = getelementptr inbounds i8, ptr %_31, i64 4
  store i32 %31, ptr %32, align 4
  %33 = load i32, ptr %_31, align 4
  %34 = getelementptr inbounds i8, ptr %_31, i64 4
  %35 = load i32, ptr %34, align 4
  %_33 = zext i32 %33 to i64
  %36 = trunc nuw i64 %_33 to i1
  br i1 %36, label %bb20, label %bb7

bb20:                                             ; preds = %bb19
  %37 = getelementptr inbounds i8, ptr %_31, i64 4
  %j = load i32, ptr %37, align 4
  %_37 = sext i32 %j to i64
; invoke <alloc::vec::Vec<T,A> as core::ops::index::IndexMut<I>>::index_mut
  %_35 = invoke align 4 ptr @"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h97e84b61ddb1b938E"(ptr align 8 %factor_count, i64 %_37, ptr align 8 @alloc_045be9f5b146948f3adf1859273ba112)
          to label %bb21 unwind label %cleanup4

bb21:                                             ; preds = %bb20
  %38 = load i32, ptr %_35, align 4
  %39 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %38, i32 1)
  %_38.0 = extractvalue { i32, i1 } %39, 0
  %_38.1 = extractvalue { i32, i1 } %39, 1
  br i1 %_38.1, label %panic7, label %bb22

bb22:                                             ; preds = %bb21
  store i32 %_38.0, ptr %_35, align 4
  %_41 = sext i32 %j to i64
; invoke <alloc::vec::Vec<T,A> as core::ops::index::IndexMut<I>>::index_mut
  %_39 = invoke align 4 ptr @"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h97e84b61ddb1b938E"(ptr align 8 %prime, i64 %_41, ptr align 8 @alloc_96242c1e50130553cb29628aff1d38e1)
          to label %bb23 unwind label %cleanup4

panic7:                                           ; preds = %bb21
; invoke core::panicking::panic_const::panic_const_add_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_a2dc0f0f97347b39f334920d90e79a43) #24
          to label %unreachable unwind label %cleanup4

bb23:                                             ; preds = %bb22
  store i32 0, ptr %_39, align 4
  br label %bb18

bb9:                                              ; No predecessors!
  unreachable

terminate:                                        ; preds = %bb37, %bb36
  %40 = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer
; call core::panicking::panic_in_cleanup
  call void @_ZN4core9panicking16panic_in_cleanup17h5f6bde45d17ae243E() #21
  unreachable

bb38:                                             ; preds = %bb37
  %41 = load ptr, ptr %0, align 8
  %42 = getelementptr inbounds i8, ptr %0, i64 8
  %43 = load i32, ptr %42, align 8
  %44 = insertvalue { ptr, i32 } poison, ptr %41, 0
  %45 = insertvalue { ptr, i32 } %44, i32 %43, 1
  resume { ptr, i32 } %45
}

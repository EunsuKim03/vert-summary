define i32 @f_gold(i32 %n) unnamed_addr #3 personality ptr @rust_eh_personality {
start:
  %0 = alloca [16 x i8], align 8
  %_39 = alloca [8 x i8], align 4
  %iter2 = alloca [12 x i8], align 4
  %_37 = alloca [12 x i8], align 4
  %_36 = alloca [12 x i8], align 4
  %sum = alloca [4 x i8], align 4
  %_28 = alloca [8 x i8], align 4
  %iter1 = alloca [12 x i8], align 4
  %_24 = alloca [12 x i8], align 4
  %_23 = alloca [12 x i8], align 4
  %_14 = alloca [8 x i8], align 4
  %iter = alloca [12 x i8], align 4
  %_12 = alloca [12 x i8], align 4
  %_11 = alloca [12 x i8], align 4
  %prime = alloca [24 x i8], align 8
  %_4 = sext i32 %n to i64
  %_5.0 = add i64 %_4, 1
  %_5.1 = icmp ult i64 %_5.0, %_4
  br i1 %_5.1, label %panic, label %bb1

bb1:                                              ; preds = %start
; call alloc::vec::from_elem
  call void @_ZN5alloc3vec9from_elem17h4e100b76871d0d17E(ptr sret([24 x i8]) align 8 %prime, i32 0, i64 %_5.0)
  br label %bb3

panic:                                            ; preds = %start
; call core::panicking::panic_const::panic_const_add_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_70b84470848a22e76dac7e910577a622) #23
  unreachable

bb3:                                              ; preds = %bb1
  %_9 = icmp eq i32 %n, -2147483648
  %_10 = and i1 false, %_9
  br i1 %_10, label %panic3, label %bb4

bb4:                                              ; preds = %bb3
  %max = sdiv i32 %n, 2
; invoke core::ops::range::RangeInclusive<Idx>::new
  invoke void @"_ZN4core3ops5range25RangeInclusive$LT$Idx$GT$3new17h23f07f5ca9e404faE"(ptr sret([12 x i8]) align 4 %_12, i32 2, i32 %max)
          to label %bb5 unwind label %cleanup

panic3:                                           ; preds = %bb3
; invoke core::panicking::panic_const::panic_const_div_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_div_overflow17hde5ac990ac871ee2E(ptr align 8 @alloc_72b1c95a8d75f6a1cda351a7943ee330) #24
          to label %unreachable unwind label %cleanup

bb34:                                             ; preds = %cleanup
; invoke core::ptr::drop_in_place<alloc::vec::Vec<i32>>
  invoke void @"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17h05f8a4e368c8d820E"(ptr align 8 %prime) #22
          to label %bb35 unwind label %terminate

cleanup:                                          ; preds = %bb19, %bb17, %bb15, %bb14, %panic7, %bb10, %panic5, %bb28, %panic4, %bb25, %bb23, %bb21, %bb11, %bb7, %bb5, %bb4, %panic3
  %1 = landingpad { ptr, i32 }
          cleanup
  %2 = extractvalue { ptr, i32 } %1, 0
  %3 = extractvalue { ptr, i32 } %1, 1
  store ptr %2, ptr %0, align 8
  %4 = getelementptr inbounds i8, ptr %0, i64 8
  store i32 %3, ptr %4, align 8
  br label %bb34

unreachable:                                      ; preds = %panic7, %panic5, %panic4, %panic3
  unreachable

bb5:                                              ; preds = %bb4
; invoke <I as core::iter::traits::collect::IntoIterator>::into_iter
  invoke void @"_ZN63_$LT$I$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17he21dca9d9d236ca4E"(ptr sret([12 x i8]) align 4 %_11, ptr align 4 %_12)
          to label %bb6 unwind label %cleanup

bb6:                                              ; preds = %bb5
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %iter, ptr align 4 %_11, i64 12, i1 false)
  br label %bb7

bb7:                                              ; preds = %bb18, %bb12, %bb6
; invoke core::iter::range::<impl core::iter::traits::iterator::Iterator for core::ops::range::RangeInclusive<A>>::next
  %5 = invoke { i32, i32 } @"_ZN4core4iter5range110_$LT$impl$u20$core..iter..traits..iterator..Iterator$u20$for$u20$core..ops..range..RangeInclusive$LT$A$GT$$GT$4next17h46f7c08cad1b0915E"(ptr align 4 %iter)
          to label %bb8 unwind label %cleanup

bb8:                                              ; preds = %bb7
  %6 = extractvalue { i32, i32 } %5, 0
  %7 = extractvalue { i32, i32 } %5, 1
  store i32 %6, ptr %_14, align 4
  %8 = getelementptr inbounds i8, ptr %_14, i64 4
  store i32 %7, ptr %8, align 4
  %9 = load i32, ptr %_14, align 4
  %10 = getelementptr inbounds i8, ptr %_14, i64 4
  %11 = load i32, ptr %10, align 4
  %_16 = zext i32 %9 to i64
  %12 = trunc nuw i64 %_16 to i1
  br i1 %12, label %bb10, label %bb11

bb10:                                             ; preds = %bb8
  %13 = getelementptr inbounds i8, ptr %_14, i64 4
  %p6 = load i32, ptr %13, align 4
  %_22 = sext i32 %p6 to i64
; invoke <alloc::vec::Vec<T,A> as core::ops::index::Index<I>>::index
  %_20 = invoke align 4 ptr @"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hcdb50729093d0f7dE"(ptr align 8 %prime, i64 %_22, ptr align 8 @alloc_25b2de8a79f2816955d11c4f7175923c)
          to label %bb12 unwind label %cleanup

bb11:                                             ; preds = %bb8
  store i32 0, ptr %sum, align 4
; invoke core::ops::range::RangeInclusive<Idx>::new
  invoke void @"_ZN4core3ops5range25RangeInclusive$LT$Idx$GT$3new17h23f07f5ca9e404faE"(ptr sret([12 x i8]) align 4 %_37, i32 2, i32 %n)
          to label %bb21 unwind label %cleanup

bb21:                                             ; preds = %bb11
; invoke <I as core::iter::traits::collect::IntoIterator>::into_iter
  invoke void @"_ZN63_$LT$I$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17he21dca9d9d236ca4E"(ptr sret([12 x i8]) align 4 %_36, ptr align 4 %_37)
          to label %bb22 unwind label %cleanup

bb22:                                             ; preds = %bb21
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %iter2, ptr align 4 %_36, i64 12, i1 false)
  br label %bb23

bb23:                                             ; preds = %bb30, %bb32, %bb22
; invoke core::iter::range::<impl core::iter::traits::iterator::Iterator for core::ops::range::RangeInclusive<A>>::next
  %14 = invoke { i32, i32 } @"_ZN4core4iter5range110_$LT$impl$u20$core..iter..traits..iterator..Iterator$u20$for$u20$core..ops..range..RangeInclusive$LT$A$GT$$GT$4next17h46f7c08cad1b0915E"(ptr align 4 %iter2)
          to label %bb24 unwind label %cleanup

bb24:                                             ; preds = %bb23
  %15 = extractvalue { i32, i32 } %14, 0
  %16 = extractvalue { i32, i32 } %14, 1
  store i32 %15, ptr %_39, align 4
  %17 = getelementptr inbounds i8, ptr %_39, i64 4
  store i32 %16, ptr %17, align 4
  %18 = load i32, ptr %_39, align 4
  %19 = getelementptr inbounds i8, ptr %_39, i64 4
  %20 = load i32, ptr %19, align 4
  %_41 = zext i32 %18 to i64
  %21 = trunc nuw i64 %_41 to i1
  br i1 %21, label %bb25, label %bb26

bb25:                                             ; preds = %bb24
  %22 = getelementptr inbounds i8, ptr %_39, i64 4
  %p = load i32, ptr %22, align 4
  %_47 = sext i32 %p to i64
; invoke <alloc::vec::Vec<T,A> as core::ops::index::Index<I>>::index
  %_45 = invoke align 4 ptr @"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hcdb50729093d0f7dE"(ptr align 8 %prime, i64 %_47, ptr align 8 @alloc_ea520f35a032612a4e0cbf3cb361d233)
          to label %bb27 unwind label %cleanup

bb26:                                             ; preds = %bb24
  %_0 = load i32, ptr %sum, align 4
; call core::ptr::drop_in_place<alloc::vec::Vec<i32>>
  call void @"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17h05f8a4e368c8d820E"(ptr align 8 %prime)
  ret i32 %_0

bb27:                                             ; preds = %bb25
  %_44 = load i32, ptr %_45, align 4
  %_43 = icmp sgt i32 %_44, 0
  br i1 %_43, label %bb28, label %bb31

bb31:                                             ; preds = %bb27
  %23 = load i32, ptr %sum, align 4
  %24 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %23, i32 %p)
  %_53.0 = extractvalue { i32, i1 } %24, 0
  %_53.1 = extractvalue { i32, i1 } %24, 1
  br i1 %_53.1, label %panic4, label %bb32

bb28:                                             ; preds = %bb27
  %_51 = sext i32 %p to i64
; invoke <alloc::vec::Vec<T,A> as core::ops::index::Index<I>>::index
  %_49 = invoke align 4 ptr @"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hcdb50729093d0f7dE"(ptr align 8 %prime, i64 %_51, ptr align 8 @alloc_38fe7eb9b5352de3077c9ef46880052d)
          to label %bb29 unwind label %cleanup

bb32:                                             ; preds = %bb31
  store i32 %_53.0, ptr %sum, align 4
  br label %bb23

panic4:                                           ; preds = %bb31
; invoke core::panicking::panic_const::panic_const_add_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_c4ce78750242813308e5194dc8eee322) #24
          to label %unreachable unwind label %cleanup

bb29:                                             ; preds = %bb28
  %_48 = load i32, ptr %_49, align 4
  %25 = load i32, ptr %sum, align 4
  %26 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %25, i32 %_48)
  %_52.0 = extractvalue { i32, i1 } %26, 0
  %_52.1 = extractvalue { i32, i1 } %26, 1
  br i1 %_52.1, label %panic5, label %bb30

bb30:                                             ; preds = %bb29
  store i32 %_52.0, ptr %sum, align 4
  br label %bb23

panic5:                                           ; preds = %bb29
; invoke core::panicking::panic_const::panic_const_add_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_bb42f9bcd74e2a5c8d6f8e85287e8f44) #24
          to label %unreachable unwind label %cleanup

bb12:                                             ; preds = %bb10
  %_19 = load i32, ptr %_20, align 4
  %_18 = icmp eq i32 %_19, 0
  br i1 %_18, label %bb13, label %bb7

bb13:                                             ; preds = %bb12
  %27 = call { i32, i1 } @llvm.smul.with.overflow.i32(i32 %p6, i32 2)
  %_26.0 = extractvalue { i32, i1 } %27, 0
  %_26.1 = extractvalue { i32, i1 } %27, 1
  br i1 %_26.1, label %panic7, label %bb14

bb14:                                             ; preds = %bb13
; invoke core::ops::range::RangeInclusive<Idx>::new
  invoke void @"_ZN4core3ops5range25RangeInclusive$LT$Idx$GT$3new17h23f07f5ca9e404faE"(ptr sret([12 x i8]) align 4 %_24, i32 %_26.0, i32 %n)
          to label %bb15 unwind label %cleanup

panic7:                                           ; preds = %bb13
; invoke core::panicking::panic_const::panic_const_mul_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_mul_overflow17h554ac164c12099f8E(ptr align 8 @alloc_d3204b8801b9e9346c14c92b8d68e017) #24
          to label %unreachable unwind label %cleanup

bb15:                                             ; preds = %bb14
; invoke <I as core::iter::traits::collect::IntoIterator>::into_iter
  invoke void @"_ZN63_$LT$I$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17he21dca9d9d236ca4E"(ptr sret([12 x i8]) align 4 %_23, ptr align 4 %_24)
          to label %bb16 unwind label %cleanup

bb16:                                             ; preds = %bb15
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %iter1, ptr align 4 %_23, i64 12, i1 false)
  br label %bb17

bb17:                                             ; preds = %bb20, %bb16
; invoke core::iter::range::<impl core::iter::traits::iterator::Iterator for core::ops::range::RangeInclusive<A>>::next
  %28 = invoke { i32, i32 } @"_ZN4core4iter5range110_$LT$impl$u20$core..iter..traits..iterator..Iterator$u20$for$u20$core..ops..range..RangeInclusive$LT$A$GT$$GT$4next17h46f7c08cad1b0915E"(ptr align 4 %iter1)
          to label %bb18 unwind label %cleanup

bb18:                                             ; preds = %bb17
  %29 = extractvalue { i32, i32 } %28, 0
  %30 = extractvalue { i32, i32 } %28, 1
  store i32 %29, ptr %_28, align 4
  %31 = getelementptr inbounds i8, ptr %_28, i64 4
  store i32 %30, ptr %31, align 4
  %32 = load i32, ptr %_28, align 4
  %33 = getelementptr inbounds i8, ptr %_28, i64 4
  %34 = load i32, ptr %33, align 4
  %_30 = zext i32 %32 to i64
  %35 = trunc nuw i64 %_30 to i1
  br i1 %35, label %bb19, label %bb7

bb19:                                             ; preds = %bb18
  %36 = getelementptr inbounds i8, ptr %_28, i64 4
  %i = load i32, ptr %36, align 4
  %_34 = sext i32 %i to i64
; invoke <alloc::vec::Vec<T,A> as core::ops::index::IndexMut<I>>::index_mut
  %_32 = invoke align 4 ptr @"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h420a255dad9bd33fE"(ptr align 8 %prime, i64 %_34, ptr align 8 @alloc_b4e92e8535cd8a33f2889c60c723be63)
          to label %bb20 unwind label %cleanup

bb20:                                             ; preds = %bb19
  store i32 %p6, ptr %_32, align 4
  br label %bb17

bb9:                                              ; No predecessors!
  unreachable

terminate:                                        ; preds = %bb34
  %37 = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer
; call core::panicking::panic_in_cleanup
  call void @_ZN4core9panicking16panic_in_cleanup17h5f6bde45d17ae243E() #21
  unreachable

bb35:                                             ; preds = %bb34
  %38 = load ptr, ptr %0, align 8
  %39 = getelementptr inbounds i8, ptr %0, i64 8
  %40 = load i32, ptr %39, align 8
  %41 = insertvalue { ptr, i32 } poison, ptr %38, 0
  %42 = insertvalue { ptr, i32 } %41, i32 %40, 1
  resume { ptr, i32 } %42
}

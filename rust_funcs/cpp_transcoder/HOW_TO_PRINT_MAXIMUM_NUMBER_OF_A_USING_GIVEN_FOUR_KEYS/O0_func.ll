define i32 @f_gold(i32 %N) unnamed_addr #3 personality ptr @rust_eh_personality {
start:
  %0 = alloca [16 x i8], align 8
  %_20 = alloca [8 x i8], align 4
  %iter1 = alloca [12 x i8], align 4
  %_18 = alloca [12 x i8], align 4
  %_17 = alloca [12 x i8], align 4
  %_8 = alloca [8 x i8], align 4
  %iter = alloca [12 x i8], align 4
  %_6 = alloca [12 x i8], align 4
  %_5 = alloca [12 x i8], align 4
  %screen = alloca [24 x i8], align 8
  %_0 = alloca [4 x i8], align 4
  %_2 = icmp sle i32 %N, 6
  br i1 %_2, label %bb1, label %bb2

bb2:                                              ; preds = %start
  %_4 = sext i32 %N to i64
; call alloc::vec::from_elem
  call void @_ZN5alloc3vec9from_elem17hb31d10cc0d65e6f7E(ptr sret([24 x i8]) align 8 %screen, i32 0, i64 %_4)
; invoke core::ops::range::RangeInclusive<Idx>::new
  invoke void @"_ZN4core3ops5range25RangeInclusive$LT$Idx$GT$3new17h55ff3c21c22b6d45E"(ptr sret([12 x i8]) align 4 %_6, i32 1, i32 6)
          to label %bb4 unwind label %cleanup

bb1:                                              ; preds = %start
  store i32 %N, ptr %_0, align 4
  br label %bb33

bb34:                                             ; preds = %cleanup
; invoke core::ptr::drop_in_place<alloc::vec::Vec<i32>>
  invoke void @"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17ha0b748e31f08ed93E"(ptr align 8 %screen) #22
          to label %bb35 unwind label %terminate

cleanup:                                          ; preds = %bb11, %panic9, %bb29, %panic7, %bb27, %panic6, %bb25, %panic5, %bb23, %panic4, %bb21, %panic3, %bb19, %panic2, %bb31, %panic, %bb15, %bb13, %bb10, %bb6, %bb4, %bb2
  %1 = landingpad { ptr, i32 }
          cleanup
  %2 = extractvalue { ptr, i32 } %1, 0
  %3 = extractvalue { ptr, i32 } %1, 1
  store ptr %2, ptr %0, align 8
  %4 = getelementptr inbounds i8, ptr %0, i64 8
  store i32 %3, ptr %4, align 8
  br label %bb34

bb4:                                              ; preds = %bb2
; invoke <I as core::iter::traits::collect::IntoIterator>::into_iter
  invoke void @"_ZN63_$LT$I$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17hfa4cc32a1d72ce6cE"(ptr sret([12 x i8]) align 4 %_5, ptr align 4 %_6)
          to label %bb5 unwind label %cleanup

bb5:                                              ; preds = %bb4
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %iter, ptr align 4 %_5, i64 12, i1 false)
  br label %bb6

bb6:                                              ; preds = %bb12, %bb5
; invoke core::iter::range::<impl core::iter::traits::iterator::Iterator for core::ops::range::RangeInclusive<A>>::next
  %5 = invoke { i32, i32 } @"_ZN4core4iter5range110_$LT$impl$u20$core..iter..traits..iterator..Iterator$u20$for$u20$core..ops..range..RangeInclusive$LT$A$GT$$GT$4next17h92bbe8af40bbbc69E"(ptr align 4 %iter)
          to label %bb7 unwind label %cleanup

bb7:                                              ; preds = %bb6
  %6 = extractvalue { i32, i32 } %5, 0
  %7 = extractvalue { i32, i32 } %5, 1
  store i32 %6, ptr %_8, align 4
  %8 = getelementptr inbounds i8, ptr %_8, i64 4
  store i32 %7, ptr %8, align 4
  %9 = load i32, ptr %_8, align 4
  %10 = getelementptr inbounds i8, ptr %_8, i64 4
  %11 = load i32, ptr %10, align 4
  %_10 = zext i32 %9 to i64
  %12 = trunc nuw i64 %_10 to i1
  br i1 %12, label %bb9, label %bb10

bb9:                                              ; preds = %bb7
  %13 = getelementptr inbounds i8, ptr %_8, i64 4
  %n8 = load i32, ptr %13, align 4
  %_15 = sext i32 %n8 to i64
  %_16.0 = sub i64 %_15, 1
  %_16.1 = icmp ult i64 %_15, 1
  br i1 %_16.1, label %panic9, label %bb11

bb10:                                             ; preds = %bb7
; invoke core::ops::range::RangeInclusive<Idx>::new
  invoke void @"_ZN4core3ops5range25RangeInclusive$LT$Idx$GT$3new17h55ff3c21c22b6d45E"(ptr sret([12 x i8]) align 4 %_18, i32 7, i32 %N)
          to label %bb13 unwind label %cleanup

bb13:                                             ; preds = %bb10
; invoke <I as core::iter::traits::collect::IntoIterator>::into_iter
  invoke void @"_ZN63_$LT$I$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17hfa4cc32a1d72ce6cE"(ptr sret([12 x i8]) align 4 %_17, ptr align 4 %_18)
          to label %bb14 unwind label %cleanup

bb14:                                             ; preds = %bb13
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %iter1, ptr align 4 %_17, i64 12, i1 false)
  br label %bb15

bb15:                                             ; preds = %bb30, %bb14
; invoke core::iter::range::<impl core::iter::traits::iterator::Iterator for core::ops::range::RangeInclusive<A>>::next
  %14 = invoke { i32, i32 } @"_ZN4core4iter5range110_$LT$impl$u20$core..iter..traits..iterator..Iterator$u20$for$u20$core..ops..range..RangeInclusive$LT$A$GT$$GT$4next17h92bbe8af40bbbc69E"(ptr align 4 %iter1)
          to label %bb16 unwind label %cleanup

bb16:                                             ; preds = %bb15
  %15 = extractvalue { i32, i32 } %14, 0
  %16 = extractvalue { i32, i32 } %14, 1
  store i32 %15, ptr %_20, align 4
  %17 = getelementptr inbounds i8, ptr %_20, i64 4
  store i32 %16, ptr %17, align 4
  %18 = load i32, ptr %_20, align 4
  %19 = getelementptr inbounds i8, ptr %_20, i64 4
  %20 = load i32, ptr %19, align 4
  %_22 = zext i32 %18 to i64
  %21 = trunc nuw i64 %_22 to i1
  br i1 %21, label %bb17, label %bb18

bb17:                                             ; preds = %bb16
  %22 = getelementptr inbounds i8, ptr %_20, i64 4
  %n = load i32, ptr %22, align 4
  %_30 = sext i32 %n to i64
  %_31.0 = sub i64 %_30, 4
  %_31.1 = icmp ult i64 %_30, 4
  br i1 %_31.1, label %panic2, label %bb19

bb18:                                             ; preds = %bb16
  %_56 = sext i32 %N to i64
  %_57.0 = sub i64 %_56, 1
  %_57.1 = icmp ult i64 %_56, 1
  br i1 %_57.1, label %panic, label %bb31

bb31:                                             ; preds = %bb18
; invoke <alloc::vec::Vec<T,A> as core::ops::index::Index<I>>::index
  %_53 = invoke align 4 ptr @"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hcfe89adab24421feE"(ptr align 8 %screen, i64 %_57.0, ptr align 8 @alloc_0ec7b04dc1d2add8cc7fed614d5cda21)
          to label %bb32 unwind label %cleanup

panic:                                            ; preds = %bb18
; invoke core::panicking::panic_const::panic_const_sub_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_sub_overflow17h134cc1a7f93654deE(ptr align 8 @alloc_698a4e66dbc85d5455ca484a73d6a644) #24
          to label %unreachable unwind label %cleanup

unreachable:                                      ; preds = %panic9, %panic7, %panic6, %panic5, %panic4, %panic3, %panic2, %panic
  unreachable

bb32:                                             ; preds = %bb31
  %23 = load i32, ptr %_53, align 4
  store i32 %23, ptr %_0, align 4
; call core::ptr::drop_in_place<alloc::vec::Vec<i32>>
  call void @"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17ha0b748e31f08ed93E"(ptr align 8 %screen)
  br label %bb33

bb33:                                             ; preds = %bb1, %bb32
  %24 = load i32, ptr %_0, align 4
  ret i32 %24

bb19:                                             ; preds = %bb17
; invoke <alloc::vec::Vec<T,A> as core::ops::index::Index<I>>::index
  %_27 = invoke align 4 ptr @"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hcfe89adab24421feE"(ptr align 8 %screen, i64 %_31.0, ptr align 8 @alloc_88e76d099370b8fafd758ae35432c62a)
          to label %bb20 unwind label %cleanup

panic2:                                           ; preds = %bb17
; invoke core::panicking::panic_const::panic_const_sub_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_sub_overflow17h134cc1a7f93654deE(ptr align 8 @alloc_83475d052746dddde14238c7b90af989) #24
          to label %unreachable unwind label %cleanup

bb20:                                             ; preds = %bb19
  %_26 = load i32, ptr %_27, align 4
  %_37 = sext i32 %n to i64
  %_38.0 = sub i64 %_37, 5
  %_38.1 = icmp ult i64 %_37, 5
  br i1 %_38.1, label %panic3, label %bb21

bb21:                                             ; preds = %bb20
; invoke <alloc::vec::Vec<T,A> as core::ops::index::Index<I>>::index
  %_34 = invoke align 4 ptr @"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hcfe89adab24421feE"(ptr align 8 %screen, i64 %_38.0, ptr align 8 @alloc_4deabeed6107d2b5c9e0ea6e5d43619d)
          to label %bb22 unwind label %cleanup

panic3:                                           ; preds = %bb20
; invoke core::panicking::panic_const::panic_const_sub_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_sub_overflow17h134cc1a7f93654deE(ptr align 8 @alloc_70f163fc810b02dda1ac632736668c59) #24
          to label %unreachable unwind label %cleanup

bb22:                                             ; preds = %bb21
  %_33 = load i32, ptr %_34, align 4
  %25 = call { i32, i1 } @llvm.smul.with.overflow.i32(i32 %_33, i32 3)
  %_39.0 = extractvalue { i32, i1 } %25, 0
  %_39.1 = extractvalue { i32, i1 } %25, 1
  br i1 %_39.1, label %panic4, label %bb23

bb23:                                             ; preds = %bb22
; invoke core::cmp::Ord::max
  %_25 = invoke i32 @_ZN4core3cmp3Ord3max17h8a784639c5d00a3dE(i32 %_26, i32 %_39.0)
          to label %bb24 unwind label %cleanup

panic4:                                           ; preds = %bb22
; invoke core::panicking::panic_const::panic_const_mul_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_mul_overflow17h554ac164c12099f8E(ptr align 8 @alloc_b227d0949bdfcfbf5a68dc11e3adad77) #24
          to label %unreachable unwind label %cleanup

bb24:                                             ; preds = %bb23
  %_45 = sext i32 %n to i64
  %_46.0 = sub i64 %_45, 6
  %_46.1 = icmp ult i64 %_45, 6
  br i1 %_46.1, label %panic5, label %bb25

bb25:                                             ; preds = %bb24
; invoke <alloc::vec::Vec<T,A> as core::ops::index::Index<I>>::index
  %_42 = invoke align 4 ptr @"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hcfe89adab24421feE"(ptr align 8 %screen, i64 %_46.0, ptr align 8 @alloc_1463077dae017cc7abe62bf266a5463e)
          to label %bb26 unwind label %cleanup

panic5:                                           ; preds = %bb24
; invoke core::panicking::panic_const::panic_const_sub_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_sub_overflow17h134cc1a7f93654deE(ptr align 8 @alloc_9eef48d9af937ab97412da1ec26c6197) #24
          to label %unreachable unwind label %cleanup

bb26:                                             ; preds = %bb25
  %_41 = load i32, ptr %_42, align 4
  %26 = call { i32, i1 } @llvm.smul.with.overflow.i32(i32 %_41, i32 4)
  %_47.0 = extractvalue { i32, i1 } %26, 0
  %_47.1 = extractvalue { i32, i1 } %26, 1
  br i1 %_47.1, label %panic6, label %bb27

bb27:                                             ; preds = %bb26
; invoke core::cmp::Ord::max
  %_24 = invoke i32 @_ZN4core3cmp3Ord3max17h8a784639c5d00a3dE(i32 %_25, i32 %_47.0)
          to label %bb28 unwind label %cleanup

panic6:                                           ; preds = %bb26
; invoke core::panicking::panic_const::panic_const_mul_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_mul_overflow17h554ac164c12099f8E(ptr align 8 @alloc_837f82a1db4d0f3969fa35c517221df4) #24
          to label %unreachable unwind label %cleanup

bb28:                                             ; preds = %bb27
  %_51 = sext i32 %n to i64
  %_52.0 = sub i64 %_51, 1
  %_52.1 = icmp ult i64 %_51, 1
  br i1 %_52.1, label %panic7, label %bb29

bb29:                                             ; preds = %bb28
; invoke <alloc::vec::Vec<T,A> as core::ops::index::IndexMut<I>>::index_mut
  %_48 = invoke align 4 ptr @"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h433d429f05fe3830E"(ptr align 8 %screen, i64 %_52.0, ptr align 8 @alloc_92b90247ce1b8cbfaf79b907e79892d3)
          to label %bb30 unwind label %cleanup

panic7:                                           ; preds = %bb28
; invoke core::panicking::panic_const::panic_const_sub_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_sub_overflow17h134cc1a7f93654deE(ptr align 8 @alloc_ea4a9d8742dd49f8ff608a9aeee77c3a) #24
          to label %unreachable unwind label %cleanup

bb30:                                             ; preds = %bb29
  store i32 %_24, ptr %_48, align 4
  br label %bb15

bb11:                                             ; preds = %bb9
; invoke <alloc::vec::Vec<T,A> as core::ops::index::IndexMut<I>>::index_mut
  %_12 = invoke align 4 ptr @"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h433d429f05fe3830E"(ptr align 8 %screen, i64 %_16.0, ptr align 8 @alloc_be2a14d9aefbe2300600e87fac885bc0)
          to label %bb12 unwind label %cleanup

panic9:                                           ; preds = %bb9
; invoke core::panicking::panic_const::panic_const_sub_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_sub_overflow17h134cc1a7f93654deE(ptr align 8 @alloc_9778495f71c3a25dc97e0d442552295e) #24
          to label %unreachable unwind label %cleanup

bb12:                                             ; preds = %bb11
  store i32 %n8, ptr %_12, align 4
  br label %bb6

bb8:                                              ; No predecessors!
  unreachable

terminate:                                        ; preds = %bb34
  %27 = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer
; call core::panicking::panic_in_cleanup
  call void @_ZN4core9panicking16panic_in_cleanup17h5f6bde45d17ae243E() #21
  unreachable

bb35:                                             ; preds = %bb34
  %28 = load ptr, ptr %0, align 8
  %29 = getelementptr inbounds i8, ptr %0, i64 8
  %30 = load i32, ptr %29, align 8
  %31 = insertvalue { ptr, i32 } poison, ptr %28, 0
  %32 = insertvalue { ptr, i32 } %31, i32 %30, 1
  resume { ptr, i32 } %32
}

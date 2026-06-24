define i32 @f_gold(i32 %n) unnamed_addr #3 personality ptr @rust_eh_personality {
start:
  %0 = alloca [16 x i8], align 8
  %_13 = alloca [8 x i8], align 4
  %iter = alloca [12 x i8], align 4
  %_11 = alloca [12 x i8], align 4
  %_10 = alloca [12 x i8], align 4
  %dp = alloca [24 x i8], align 8
  %_4 = sext i32 %n to i64
  %_5.0 = add i64 %_4, 1
  %_5.1 = icmp ult i64 %_5.0, %_4
  br i1 %_5.1, label %panic, label %bb1

bb1:                                              ; preds = %start
; call alloc::vec::from_elem
  call void @_ZN5alloc3vec9from_elem17h795d0474519039d2E(ptr sret([24 x i8]) align 8 %dp, i32 0, i64 %_5.0)
; invoke <alloc::vec::Vec<T,A> as core::ops::index::IndexMut<I>>::index_mut
  %_6 = invoke align 4 ptr @"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17hea41b10d17dc2ba3E"(ptr align 8 %dp, i64 0, ptr align 8 @alloc_38e51937ddea9b8638668272a6391c8d)
          to label %bb3 unwind label %cleanup

panic:                                            ; preds = %start
; call core::panicking::panic_const::panic_const_add_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_911f04b18d2c29f776baaae73302dd1a) #23
  unreachable

bb32:                                             ; preds = %cleanup
; invoke core::ptr::drop_in_place<alloc::vec::Vec<i32>>
  invoke void @"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17he4f936260bcd5e4dE"(ptr align 8 %dp) #22
          to label %bb33 unwind label %terminate

cleanup:                                          ; preds = %bb17, %bb16, %panic7, %bb28, %panic6, %bb26, %panic5, %panic4, %bb22, %panic3, %panic2, %panic1, %bb11, %bb7, %bb5, %bb4, %bb3, %bb1
  %1 = landingpad { ptr, i32 }
          cleanup
  %2 = extractvalue { ptr, i32 } %1, 0
  %3 = extractvalue { ptr, i32 } %1, 1
  store ptr %2, ptr %0, align 8
  %4 = getelementptr inbounds i8, ptr %0, i64 8
  store i32 %3, ptr %4, align 8
  br label %bb32

bb3:                                              ; preds = %bb1
  store i32 0, ptr %_6, align 4
; invoke <alloc::vec::Vec<T,A> as core::ops::index::IndexMut<I>>::index_mut
  %_8 = invoke align 4 ptr @"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17hea41b10d17dc2ba3E"(ptr align 8 %dp, i64 1, ptr align 8 @alloc_e054e18a003b5c7e9e231aba15aad393)
          to label %bb4 unwind label %cleanup

bb4:                                              ; preds = %bb3
  store i32 1, ptr %_8, align 4
; invoke core::ops::range::RangeInclusive<Idx>::new
  invoke void @"_ZN4core3ops5range25RangeInclusive$LT$Idx$GT$3new17h975429fb9dfd8df2E"(ptr sret([12 x i8]) align 4 %_11, i32 2, i32 %n)
          to label %bb5 unwind label %cleanup

bb5:                                              ; preds = %bb4
; invoke <I as core::iter::traits::collect::IntoIterator>::into_iter
  invoke void @"_ZN63_$LT$I$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17hbe64fe7dd8c0b0eaE"(ptr sret([12 x i8]) align 4 %_10, ptr align 4 %_11)
          to label %bb6 unwind label %cleanup

bb6:                                              ; preds = %bb5
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %iter, ptr align 4 %_10, i64 12, i1 false)
  br label %bb7

bb7:                                              ; preds = %bb18, %bb29, %bb6
; invoke core::iter::range::<impl core::iter::traits::iterator::Iterator for core::ops::range::RangeInclusive<A>>::next
  %5 = invoke { i32, i32 } @"_ZN4core4iter5range110_$LT$impl$u20$core..iter..traits..iterator..Iterator$u20$for$u20$core..ops..range..RangeInclusive$LT$A$GT$$GT$4next17h25089599ff36279dE"(ptr align 4 %iter)
          to label %bb8 unwind label %cleanup

bb8:                                              ; preds = %bb7
  %6 = extractvalue { i32, i32 } %5, 0
  %7 = extractvalue { i32, i32 } %5, 1
  store i32 %6, ptr %_13, align 4
  %8 = getelementptr inbounds i8, ptr %_13, i64 4
  store i32 %7, ptr %8, align 4
  %9 = load i32, ptr %_13, align 4
  %10 = getelementptr inbounds i8, ptr %_13, i64 4
  %11 = load i32, ptr %10, align 4
  %_15 = zext i32 %9 to i64
  %12 = trunc nuw i64 %_15 to i1
  br i1 %12, label %bb10, label %bb11

bb10:                                             ; preds = %bb8
  %13 = getelementptr inbounds i8, ptr %_13, i64 4
  %i = load i32, ptr %13, align 4
  br label %bb12

bb11:                                             ; preds = %bb8
  %_63 = sext i32 %n to i64
; invoke <alloc::vec::Vec<T,A> as core::ops::index::Index<I>>::index
  %_61 = invoke align 4 ptr @"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h4af2418217cec7baE"(ptr align 8 %dp, i64 %_63, ptr align 8 @alloc_c493aaaf51ff574bdb526a3f15ce1373)
          to label %bb30 unwind label %cleanup

bb30:                                             ; preds = %bb11
  %_0 = load i32, ptr %_61, align 4
; call core::ptr::drop_in_place<alloc::vec::Vec<i32>>
  call void @"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17he4f936260bcd5e4dE"(ptr align 8 %dp)
  ret i32 %_0

bb12:                                             ; preds = %bb10
  %_21 = icmp eq i32 %i, -2147483648
  %_22 = and i1 false, %_21
  br i1 %_22, label %panic1, label %bb13

bb13:                                             ; preds = %bb12
  %_18 = srem i32 %i, 2
  %_17 = icmp eq i32 %_18, 0
  br i1 %_17, label %bb14, label %bb19

panic1:                                           ; preds = %bb12
; invoke core::panicking::panic_const::panic_const_rem_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_rem_overflow17h4aab8182a78c82f8E(ptr align 8 @alloc_767b19026773160f57b4d8b23097f381) #24
          to label %unreachable unwind label %cleanup

unreachable:                                      ; preds = %panic7, %panic6, %panic5, %panic4, %panic3, %panic2, %panic1
  unreachable

bb19:                                             ; preds = %bb13
  %14 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %i, i32 1)
  %_41.0 = extractvalue { i32, i1 } %14, 0
  %_41.1 = extractvalue { i32, i1 } %14, 1
  br i1 %_41.1, label %panic2, label %bb20

bb14:                                             ; preds = %bb13
  br label %bb15

bb20:                                             ; preds = %bb19
  br label %bb21

panic2:                                           ; preds = %bb19
; invoke core::panicking::panic_const::panic_const_sub_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_sub_overflow17h134cc1a7f93654deE(ptr align 8 @alloc_01b1418c64f9cb36a144052fc4d82db4) #24
          to label %unreachable unwind label %cleanup

bb21:                                             ; preds = %bb20
  %_44 = icmp eq i32 %_41.0, -2147483648
  %_45 = and i1 false, %_44
  br i1 %_45, label %panic3, label %bb22

bb22:                                             ; preds = %bb21
  %_39 = sdiv i32 %_41.0, 2
  %_38 = sext i32 %_39 to i64
; invoke <alloc::vec::Vec<T,A> as core::ops::index::Index<I>>::index
  %_36 = invoke align 4 ptr @"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h4af2418217cec7baE"(ptr align 8 %dp, i64 %_38, ptr align 8 @alloc_55893ffccdae4df5905ed366a5f9f8e0)
          to label %bb23 unwind label %cleanup

panic3:                                           ; preds = %bb21
; invoke core::panicking::panic_const::panic_const_div_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_div_overflow17hde5ac990ac871ee2E(ptr align 8 @alloc_ba20f75f33f6568b7153fd910b40670c) #24
          to label %unreachable unwind label %cleanup

bb23:                                             ; preds = %bb22
  %_35 = load i32, ptr %_36, align 4
  %15 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %i, i32 1)
  %_52.0 = extractvalue { i32, i1 } %15, 0
  %_52.1 = extractvalue { i32, i1 } %15, 1
  br i1 %_52.1, label %panic4, label %bb24

bb24:                                             ; preds = %bb23
  br label %bb25

panic4:                                           ; preds = %bb23
; invoke core::panicking::panic_const::panic_const_add_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_a3c67ed03dbc5b816618115bc9d5e4c7) #24
          to label %unreachable unwind label %cleanup

bb25:                                             ; preds = %bb24
  %_55 = icmp eq i32 %_52.0, -2147483648
  %_56 = and i1 false, %_55
  br i1 %_56, label %panic5, label %bb26

bb26:                                             ; preds = %bb25
  %_50 = sdiv i32 %_52.0, 2
  %_49 = sext i32 %_50 to i64
; invoke <alloc::vec::Vec<T,A> as core::ops::index::Index<I>>::index
  %_47 = invoke align 4 ptr @"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h4af2418217cec7baE"(ptr align 8 %dp, i64 %_49, ptr align 8 @alloc_8c7d3b16a81a23a6e5691771cddd9724)
          to label %bb27 unwind label %cleanup

panic5:                                           ; preds = %bb25
; invoke core::panicking::panic_const::panic_const_div_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_div_overflow17hde5ac990ac871ee2E(ptr align 8 @alloc_5c0b5439cfcd54391384a86189366529) #24
          to label %unreachable unwind label %cleanup

bb27:                                             ; preds = %bb26
  %_46 = load i32, ptr %_47, align 4
  %16 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %_35, i32 %_46)
  %_57.0 = extractvalue { i32, i1 } %16, 0
  %_57.1 = extractvalue { i32, i1 } %16, 1
  br i1 %_57.1, label %panic6, label %bb28

bb28:                                             ; preds = %bb27
  %_60 = sext i32 %i to i64
; invoke <alloc::vec::Vec<T,A> as core::ops::index::IndexMut<I>>::index_mut
  %_58 = invoke align 4 ptr @"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17hea41b10d17dc2ba3E"(ptr align 8 %dp, i64 %_60, ptr align 8 @alloc_a08eaac8f8c9433607693024af499791)
          to label %bb29 unwind label %cleanup

panic6:                                           ; preds = %bb27
; invoke core::panicking::panic_const::panic_const_add_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_1b1803a713a8f90a423991d08110280e) #24
          to label %unreachable unwind label %cleanup

bb29:                                             ; preds = %bb28
  store i32 %_57.0, ptr %_58, align 4
  br label %bb7

bb15:                                             ; preds = %bb14
  %_30 = icmp eq i32 %i, -2147483648
  %_31 = and i1 false, %_30
  br i1 %_31, label %panic7, label %bb16

bb16:                                             ; preds = %bb15
  %_27 = sdiv i32 %i, 2
  %_26 = sext i32 %_27 to i64
; invoke <alloc::vec::Vec<T,A> as core::ops::index::Index<I>>::index
  %_24 = invoke align 4 ptr @"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h4af2418217cec7baE"(ptr align 8 %dp, i64 %_26, ptr align 8 @alloc_5e027637dc8f8219a82135c0784b87e0)
          to label %bb17 unwind label %cleanup

panic7:                                           ; preds = %bb15
; invoke core::panicking::panic_const::panic_const_div_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_div_overflow17hde5ac990ac871ee2E(ptr align 8 @alloc_112b758e7f793ca99dafcf041b87607e) #24
          to label %unreachable unwind label %cleanup

bb17:                                             ; preds = %bb16
  %_23 = load i32, ptr %_24, align 4
  %_34 = sext i32 %i to i64
; invoke <alloc::vec::Vec<T,A> as core::ops::index::IndexMut<I>>::index_mut
  %_32 = invoke align 4 ptr @"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17hea41b10d17dc2ba3E"(ptr align 8 %dp, i64 %_34, ptr align 8 @alloc_5f42f44ae3d677f60686498a4d140dd5)
          to label %bb18 unwind label %cleanup

bb18:                                             ; preds = %bb17
  store i32 %_23, ptr %_32, align 4
  br label %bb7

bb9:                                              ; No predecessors!
  unreachable

terminate:                                        ; preds = %bb32
  %17 = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer
; call core::panicking::panic_in_cleanup
  call void @_ZN4core9panicking16panic_in_cleanup17h5f6bde45d17ae243E() #21
  unreachable

bb33:                                             ; preds = %bb32
  %18 = load ptr, ptr %0, align 8
  %19 = getelementptr inbounds i8, ptr %0, i64 8
  %20 = load i32, ptr %19, align 8
  %21 = insertvalue { ptr, i32 } poison, ptr %18, 0
  %22 = insertvalue { ptr, i32 } %21, i32 %20, 1
  resume { ptr, i32 } %22
}

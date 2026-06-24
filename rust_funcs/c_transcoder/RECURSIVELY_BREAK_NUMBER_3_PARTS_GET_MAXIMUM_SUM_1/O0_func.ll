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
  call void @_ZN5alloc3vec9from_elem17h595e90c836f88ff4E(ptr sret([24 x i8]) align 8 %dp, i32 0, i64 %_5.0)
; invoke <alloc::vec::Vec<T,A> as core::ops::index::IndexMut<I>>::index_mut
  %_6 = invoke align 4 ptr @"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h685537449de069d6E"(ptr align 8 %dp, i64 0, ptr align 8 @alloc_9223545f54aadf0f6105a8a79f123363)
          to label %bb3 unwind label %cleanup

panic:                                            ; preds = %start
; call core::panicking::panic_const::panic_const_add_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_99e9ed1e6b15c558353c43d575eb8f02) #23
  unreachable

bb27:                                             ; preds = %cleanup
; invoke core::ptr::drop_in_place<alloc::vec::Vec<i32>>
  invoke void @"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17h5ac09ab4a3fc948fE"(ptr align 8 %dp) #22
          to label %bb28 unwind label %terminate

cleanup:                                          ; preds = %bb23, %panic5, %bb21, %bb20, %panic4, %panic3, %bb16, %panic2, %bb13, %panic1, %bb11, %bb7, %bb5, %bb4, %bb3, %bb1
  %1 = landingpad { ptr, i32 }
          cleanup
  %2 = extractvalue { ptr, i32 } %1, 0
  %3 = extractvalue { ptr, i32 } %1, 1
  store ptr %2, ptr %0, align 8
  %4 = getelementptr inbounds i8, ptr %0, i64 8
  store i32 %3, ptr %4, align 8
  br label %bb27

bb3:                                              ; preds = %bb1
  store i32 0, ptr %_6, align 4
; invoke <alloc::vec::Vec<T,A> as core::ops::index::IndexMut<I>>::index_mut
  %_8 = invoke align 4 ptr @"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h685537449de069d6E"(ptr align 8 %dp, i64 1, ptr align 8 @alloc_fa7e27c0b0a399256f6b186f7c8f367c)
          to label %bb4 unwind label %cleanup

bb4:                                              ; preds = %bb3
  store i32 1, ptr %_8, align 4
; invoke core::ops::range::RangeInclusive<Idx>::new
  invoke void @"_ZN4core3ops5range25RangeInclusive$LT$Idx$GT$3new17h3ae02d8c2092f00aE"(ptr sret([12 x i8]) align 4 %_11, i32 2, i32 %n)
          to label %bb5 unwind label %cleanup

bb5:                                              ; preds = %bb4
; invoke <I as core::iter::traits::collect::IntoIterator>::into_iter
  invoke void @"_ZN63_$LT$I$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17hb019bb63c33d8e5cE"(ptr sret([12 x i8]) align 4 %_10, ptr align 4 %_11)
          to label %bb6 unwind label %cleanup

bb6:                                              ; preds = %bb5
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %iter, ptr align 4 %_10, i64 12, i1 false)
  br label %bb7

bb7:                                              ; preds = %bb24, %bb6
; invoke core::iter::range::<impl core::iter::traits::iterator::Iterator for core::ops::range::RangeInclusive<A>>::next
  %5 = invoke { i32, i32 } @"_ZN4core4iter5range110_$LT$impl$u20$core..iter..traits..iterator..Iterator$u20$for$u20$core..ops..range..RangeInclusive$LT$A$GT$$GT$4next17hb0cfa241faee38abE"(ptr align 4 %iter)
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
  %_53 = sext i32 %n to i64
; invoke <alloc::vec::Vec<T,A> as core::ops::index::Index<I>>::index
  %_51 = invoke align 4 ptr @"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h77582b8ea5efe87fE"(ptr align 8 %dp, i64 %_53, ptr align 8 @alloc_deefcaa8e3985f2e125012c63042975b)
          to label %bb25 unwind label %cleanup

bb25:                                             ; preds = %bb11
  %_0 = load i32, ptr %_51, align 4
; call core::ptr::drop_in_place<alloc::vec::Vec<i32>>
  call void @"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17h5ac09ab4a3fc948fE"(ptr align 8 %dp)
  ret i32 %_0

bb12:                                             ; preds = %bb10
  %_25 = icmp eq i32 %i, -2147483648
  %_26 = and i1 false, %_25
  br i1 %_26, label %panic1, label %bb13

bb13:                                             ; preds = %bb12
  %_22 = sdiv i32 %i, 2
  %_21 = sext i32 %_22 to i64
; invoke <alloc::vec::Vec<T,A> as core::ops::index::Index<I>>::index
  %_19 = invoke align 4 ptr @"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h77582b8ea5efe87fE"(ptr align 8 %dp, i64 %_21, ptr align 8 @alloc_357b067c4d3bd77a239201a3a7e3f979)
          to label %bb14 unwind label %cleanup

panic1:                                           ; preds = %bb12
; invoke core::panicking::panic_const::panic_const_div_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_div_overflow17hde5ac990ac871ee2E(ptr align 8 @alloc_41e4a3753178a88cd613e4c96e8b6f8f) #24
          to label %unreachable unwind label %cleanup

unreachable:                                      ; preds = %panic5, %panic4, %panic3, %panic2, %panic1
  unreachable

bb14:                                             ; preds = %bb13
  %_18 = load i32, ptr %_19, align 4
  br label %bb15

bb15:                                             ; preds = %bb14
  %_34 = icmp eq i32 %i, -2147483648
  %_35 = and i1 false, %_34
  br i1 %_35, label %panic2, label %bb16

bb16:                                             ; preds = %bb15
  %_31 = sdiv i32 %i, 3
  %_30 = sext i32 %_31 to i64
; invoke <alloc::vec::Vec<T,A> as core::ops::index::Index<I>>::index
  %_28 = invoke align 4 ptr @"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h77582b8ea5efe87fE"(ptr align 8 %dp, i64 %_30, ptr align 8 @alloc_58f6ab914e688dd90307c923a8d80088)
          to label %bb17 unwind label %cleanup

panic2:                                           ; preds = %bb15
; invoke core::panicking::panic_const::panic_const_div_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_div_overflow17hde5ac990ac871ee2E(ptr align 8 @alloc_cb3dd00147368865c783e4bcc3f306bf) #24
          to label %unreachable unwind label %cleanup

bb17:                                             ; preds = %bb16
  %_27 = load i32, ptr %_28, align 4
  %14 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %_18, i32 %_27)
  %_36.0 = extractvalue { i32, i1 } %14, 0
  %_36.1 = extractvalue { i32, i1 } %14, 1
  br i1 %_36.1, label %panic3, label %bb18

bb18:                                             ; preds = %bb17
  br label %bb19

panic3:                                           ; preds = %bb17
; invoke core::panicking::panic_const::panic_const_add_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_1318fa118ac44fb1cebffc7cf67b7548) #24
          to label %unreachable unwind label %cleanup

bb19:                                             ; preds = %bb18
  %_45 = icmp eq i32 %i, -2147483648
  %_46 = and i1 false, %_45
  br i1 %_46, label %panic4, label %bb20

bb20:                                             ; preds = %bb19
  %_42 = sdiv i32 %i, 4
  %_41 = sext i32 %_42 to i64
; invoke <alloc::vec::Vec<T,A> as core::ops::index::Index<I>>::index
  %_39 = invoke align 4 ptr @"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h77582b8ea5efe87fE"(ptr align 8 %dp, i64 %_41, ptr align 8 @alloc_e24f4835243839a3c68864c798e1ea14)
          to label %bb21 unwind label %cleanup

panic4:                                           ; preds = %bb19
; invoke core::panicking::panic_const::panic_const_div_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_div_overflow17hde5ac990ac871ee2E(ptr align 8 @alloc_ca23d97af0fdd97ba6ebcb55bc106d57) #24
          to label %unreachable unwind label %cleanup

bb21:                                             ; preds = %bb20
  %_38 = load i32, ptr %_39, align 4
; invoke core::cmp::Ord::max
  %_37 = invoke i32 @_ZN4core3cmp3Ord3max17h4e46445f79a62d28E(i32 %_38, i32 %i)
          to label %bb22 unwind label %cleanup

bb22:                                             ; preds = %bb21
  %15 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %_36.0, i32 %_37)
  %_47.0 = extractvalue { i32, i1 } %15, 0
  %_47.1 = extractvalue { i32, i1 } %15, 1
  br i1 %_47.1, label %panic5, label %bb23

bb23:                                             ; preds = %bb22
  %_50 = sext i32 %i to i64
; invoke <alloc::vec::Vec<T,A> as core::ops::index::IndexMut<I>>::index_mut
  %_48 = invoke align 4 ptr @"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h685537449de069d6E"(ptr align 8 %dp, i64 %_50, ptr align 8 @alloc_8dd35b268850f0934cf864e75e425e00)
          to label %bb24 unwind label %cleanup

panic5:                                           ; preds = %bb22
; invoke core::panicking::panic_const::panic_const_add_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_1318fa118ac44fb1cebffc7cf67b7548) #24
          to label %unreachable unwind label %cleanup

bb24:                                             ; preds = %bb23
  store i32 %_47.0, ptr %_48, align 4
  br label %bb7

bb9:                                              ; No predecessors!
  unreachable

terminate:                                        ; preds = %bb27
  %16 = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer
; call core::panicking::panic_in_cleanup
  call void @_ZN4core9panicking16panic_in_cleanup17h5f6bde45d17ae243E() #21
  unreachable

bb28:                                             ; preds = %bb27
  %17 = load ptr, ptr %0, align 8
  %18 = getelementptr inbounds i8, ptr %0, i64 8
  %19 = load i32, ptr %18, align 8
  %20 = insertvalue { ptr, i32 } poison, ptr %17, 0
  %21 = insertvalue { ptr, i32 } %20, i32 %19, 1
  resume { ptr, i32 } %21
}

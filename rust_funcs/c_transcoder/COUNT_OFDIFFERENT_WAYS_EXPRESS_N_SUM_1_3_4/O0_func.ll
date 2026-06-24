define i32 @f_gold(i32 %n) unnamed_addr #3 personality ptr @rust_eh_personality {
start:
  %0 = alloca [16 x i8], align 8
  %_17 = alloca [8 x i8], align 4
  %iter = alloca [12 x i8], align 4
  %_15 = alloca [12 x i8], align 4
  %_14 = alloca [12 x i8], align 4
  %DP = alloca [24 x i8], align 8
  %_4 = sext i32 %n to i64
  %_5.0 = add i64 %_4, 1
  %_5.1 = icmp ult i64 %_5.0, %_4
  br i1 %_5.1, label %panic, label %bb1

bb1:                                              ; preds = %start
; call alloc::vec::from_elem
  call void @_ZN5alloc3vec9from_elem17h7d934dc8bef0558cE(ptr sret([24 x i8]) align 8 %DP, i32 0, i64 %_5.0)
; invoke <alloc::vec::Vec<T,A> as core::ops::index::IndexMut<I>>::index_mut
  %_6 = invoke align 4 ptr @"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17hc0964c457b74791aE"(ptr align 8 %DP, i64 0, ptr align 8 @alloc_c997f2eecd8e1a0504a1a60da4f67804)
          to label %bb3 unwind label %cleanup

panic:                                            ; preds = %start
; call core::panicking::panic_const::panic_const_add_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_56f5611f1b0ff764ee516d62f11f555f) #23
  unreachable

bb25:                                             ; preds = %cleanup
; invoke core::ptr::drop_in_place<alloc::vec::Vec<i32>>
  invoke void @"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17h5a73d4b1d587d495E"(ptr align 8 %DP) #22
          to label %bb26 unwind label %terminate

cleanup:                                          ; preds = %bb21, %panic5, %bb19, %panic4, %panic3, %bb16, %panic2, %bb14, %panic1, %bb13, %bb9, %bb7, %bb6, %bb5, %bb4, %bb3, %bb1
  %1 = landingpad { ptr, i32 }
          cleanup
  %2 = extractvalue { ptr, i32 } %1, 0
  %3 = extractvalue { ptr, i32 } %1, 1
  store ptr %2, ptr %0, align 8
  %4 = getelementptr inbounds i8, ptr %0, i64 8
  store i32 %3, ptr %4, align 8
  br label %bb25

bb3:                                              ; preds = %bb1
  store i32 1, ptr %_6, align 4
; invoke <alloc::vec::Vec<T,A> as core::ops::index::IndexMut<I>>::index_mut
  %_8 = invoke align 4 ptr @"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17hc0964c457b74791aE"(ptr align 8 %DP, i64 1, ptr align 8 @alloc_77d9a1f6b5b17d7ac36c30f1176117b1)
          to label %bb4 unwind label %cleanup

bb4:                                              ; preds = %bb3
  store i32 1, ptr %_8, align 4
; invoke <alloc::vec::Vec<T,A> as core::ops::index::IndexMut<I>>::index_mut
  %_10 = invoke align 4 ptr @"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17hc0964c457b74791aE"(ptr align 8 %DP, i64 2, ptr align 8 @alloc_53bef81a68d4726650d245e84f663a3c)
          to label %bb5 unwind label %cleanup

bb5:                                              ; preds = %bb4
  store i32 1, ptr %_10, align 4
; invoke <alloc::vec::Vec<T,A> as core::ops::index::IndexMut<I>>::index_mut
  %_12 = invoke align 4 ptr @"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17hc0964c457b74791aE"(ptr align 8 %DP, i64 3, ptr align 8 @alloc_21bc07919a72c59cfcb1612af9f263c3)
          to label %bb6 unwind label %cleanup

bb6:                                              ; preds = %bb5
  store i32 2, ptr %_12, align 4
; invoke core::ops::range::RangeInclusive<Idx>::new
  invoke void @"_ZN4core3ops5range25RangeInclusive$LT$Idx$GT$3new17ha4699490fd04f65eE"(ptr sret([12 x i8]) align 4 %_15, i32 4, i32 %n)
          to label %bb7 unwind label %cleanup

bb7:                                              ; preds = %bb6
; invoke <I as core::iter::traits::collect::IntoIterator>::into_iter
  invoke void @"_ZN63_$LT$I$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17hac4332ea5b01dba2E"(ptr sret([12 x i8]) align 4 %_14, ptr align 4 %_15)
          to label %bb8 unwind label %cleanup

bb8:                                              ; preds = %bb7
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %iter, ptr align 4 %_14, i64 12, i1 false)
  br label %bb9

bb9:                                              ; preds = %bb22, %bb8
; invoke core::iter::range::<impl core::iter::traits::iterator::Iterator for core::ops::range::RangeInclusive<A>>::next
  %5 = invoke { i32, i32 } @"_ZN4core4iter5range110_$LT$impl$u20$core..iter..traits..iterator..Iterator$u20$for$u20$core..ops..range..RangeInclusive$LT$A$GT$$GT$4next17ha1a5195ddcf7ebc7E"(ptr align 4 %iter)
          to label %bb10 unwind label %cleanup

bb10:                                             ; preds = %bb9
  %6 = extractvalue { i32, i32 } %5, 0
  %7 = extractvalue { i32, i32 } %5, 1
  store i32 %6, ptr %_17, align 4
  %8 = getelementptr inbounds i8, ptr %_17, i64 4
  store i32 %7, ptr %8, align 4
  %9 = load i32, ptr %_17, align 4
  %10 = getelementptr inbounds i8, ptr %_17, i64 4
  %11 = load i32, ptr %10, align 4
  %_19 = zext i32 %9 to i64
  %12 = trunc nuw i64 %_19 to i1
  br i1 %12, label %bb12, label %bb13

bb12:                                             ; preds = %bb10
  %13 = getelementptr inbounds i8, ptr %_17, i64 4
  %i = load i32, ptr %13, align 4
  %14 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %i, i32 1)
  %_27.0 = extractvalue { i32, i1 } %14, 0
  %_27.1 = extractvalue { i32, i1 } %14, 1
  br i1 %_27.1, label %panic1, label %bb14

bb13:                                             ; preds = %bb10
  %_47 = sext i32 %n to i64
; invoke <alloc::vec::Vec<T,A> as core::ops::index::Index<I>>::index
  %_45 = invoke align 4 ptr @"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h55c50bd9911d18c8E"(ptr align 8 %DP, i64 %_47, ptr align 8 @alloc_bce9bcae1cbd5a13268d56a1fedb2603)
          to label %bb23 unwind label %cleanup

bb23:                                             ; preds = %bb13
  %_0 = load i32, ptr %_45, align 4
; call core::ptr::drop_in_place<alloc::vec::Vec<i32>>
  call void @"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17h5a73d4b1d587d495E"(ptr align 8 %DP)
  ret i32 %_0

bb14:                                             ; preds = %bb12
  %_25 = sext i32 %_27.0 to i64
; invoke <alloc::vec::Vec<T,A> as core::ops::index::Index<I>>::index
  %_23 = invoke align 4 ptr @"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h55c50bd9911d18c8E"(ptr align 8 %DP, i64 %_25, ptr align 8 @alloc_6f01d87f29057f062333a9f6b088f6f2)
          to label %bb15 unwind label %cleanup

panic1:                                           ; preds = %bb12
; invoke core::panicking::panic_const::panic_const_sub_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_sub_overflow17h134cc1a7f93654deE(ptr align 8 @alloc_93a5abb0470032e55159ac8cd208df90) #24
          to label %unreachable unwind label %cleanup

unreachable:                                      ; preds = %panic5, %panic4, %panic3, %panic2, %panic1
  unreachable

bb15:                                             ; preds = %bb14
  %_22 = load i32, ptr %_23, align 4
  %15 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %i, i32 3)
  %_33.0 = extractvalue { i32, i1 } %15, 0
  %_33.1 = extractvalue { i32, i1 } %15, 1
  br i1 %_33.1, label %panic2, label %bb16

bb16:                                             ; preds = %bb15
  %_31 = sext i32 %_33.0 to i64
; invoke <alloc::vec::Vec<T,A> as core::ops::index::Index<I>>::index
  %_29 = invoke align 4 ptr @"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h55c50bd9911d18c8E"(ptr align 8 %DP, i64 %_31, ptr align 8 @alloc_e2d7efb284d25a5d0d1e4f24d887bfff)
          to label %bb17 unwind label %cleanup

panic2:                                           ; preds = %bb15
; invoke core::panicking::panic_const::panic_const_sub_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_sub_overflow17h134cc1a7f93654deE(ptr align 8 @alloc_44233a5c93d2b601bfd1bd5e9343cd38) #24
          to label %unreachable unwind label %cleanup

bb17:                                             ; preds = %bb16
  %_28 = load i32, ptr %_29, align 4
  %16 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %_22, i32 %_28)
  %_34.0 = extractvalue { i32, i1 } %16, 0
  %_34.1 = extractvalue { i32, i1 } %16, 1
  br i1 %_34.1, label %panic3, label %bb18

bb18:                                             ; preds = %bb17
  %17 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %i, i32 4)
  %_40.0 = extractvalue { i32, i1 } %17, 0
  %_40.1 = extractvalue { i32, i1 } %17, 1
  br i1 %_40.1, label %panic4, label %bb19

panic3:                                           ; preds = %bb17
; invoke core::panicking::panic_const::panic_const_add_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_5723eff4902bbe00189b0b7006a3dbd2) #24
          to label %unreachable unwind label %cleanup

bb19:                                             ; preds = %bb18
  %_38 = sext i32 %_40.0 to i64
; invoke <alloc::vec::Vec<T,A> as core::ops::index::Index<I>>::index
  %_36 = invoke align 4 ptr @"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h55c50bd9911d18c8E"(ptr align 8 %DP, i64 %_38, ptr align 8 @alloc_0f35713af3526b80b73edfedc1660bba)
          to label %bb20 unwind label %cleanup

panic4:                                           ; preds = %bb18
; invoke core::panicking::panic_const::panic_const_sub_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_sub_overflow17h134cc1a7f93654deE(ptr align 8 @alloc_bf01dc087e6bca2d8a3669f59f32c806) #24
          to label %unreachable unwind label %cleanup

bb20:                                             ; preds = %bb19
  %_35 = load i32, ptr %_36, align 4
  %18 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %_34.0, i32 %_35)
  %_41.0 = extractvalue { i32, i1 } %18, 0
  %_41.1 = extractvalue { i32, i1 } %18, 1
  br i1 %_41.1, label %panic5, label %bb21

bb21:                                             ; preds = %bb20
  %_44 = sext i32 %i to i64
; invoke <alloc::vec::Vec<T,A> as core::ops::index::IndexMut<I>>::index_mut
  %_42 = invoke align 4 ptr @"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17hc0964c457b74791aE"(ptr align 8 %DP, i64 %_44, ptr align 8 @alloc_409d76cbf7a5028498ccea9ee0b49a62)
          to label %bb22 unwind label %cleanup

panic5:                                           ; preds = %bb20
; invoke core::panicking::panic_const::panic_const_add_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_5723eff4902bbe00189b0b7006a3dbd2) #24
          to label %unreachable unwind label %cleanup

bb22:                                             ; preds = %bb21
  store i32 %_41.0, ptr %_42, align 4
  br label %bb9

bb11:                                             ; No predecessors!
  unreachable

terminate:                                        ; preds = %bb25
  %19 = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer
; call core::panicking::panic_in_cleanup
  call void @_ZN4core9panicking16panic_in_cleanup17h5f6bde45d17ae243E() #21
  unreachable

bb26:                                             ; preds = %bb25
  %20 = load ptr, ptr %0, align 8
  %21 = getelementptr inbounds i8, ptr %0, i64 8
  %22 = load i32, ptr %21, align 8
  %23 = insertvalue { ptr, i32 } poison, ptr %20, 0
  %24 = insertvalue { ptr, i32 } %23, i32 %22, 1
  resume { ptr, i32 } %24
}

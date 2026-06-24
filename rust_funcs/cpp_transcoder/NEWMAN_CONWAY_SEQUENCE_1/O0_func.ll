define i32 @f_gold(i32 %n) unnamed_addr #3 personality ptr @rust_eh_personality {
start:
  %0 = alloca [16 x i8], align 8
  %_15 = alloca [8 x i8], align 4
  %iter = alloca [12 x i8], align 4
  %_13 = alloca [12 x i8], align 4
  %_12 = alloca [12 x i8], align 4
  %f = alloca [24 x i8], align 8
  %_4 = sext i32 %n to i64
  %_5.0 = add i64 %_4, 1
  %_5.1 = icmp ult i64 %_5.0, %_4
  br i1 %_5.1, label %panic, label %bb1

bb1:                                              ; preds = %start
; call alloc::vec::from_elem
  call void @_ZN5alloc3vec9from_elem17h3dad1b62dc5664faE(ptr sret([24 x i8]) align 8 %f, i32 0, i64 %_5.0)
; invoke <alloc::vec::Vec<T,A> as core::ops::index::IndexMut<I>>::index_mut
  %_6 = invoke align 4 ptr @"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17hcc409bdc618de476E"(ptr align 8 %f, i64 0, ptr align 8 @alloc_d305fd6ae42b7cc5b36c5f69d1b26e13)
          to label %bb3 unwind label %cleanup

panic:                                            ; preds = %start
; call core::panicking::panic_const::panic_const_add_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_5fd5b4d275ee8d2bdc553160ea083d5f) #23
  unreachable

bb25:                                             ; preds = %cleanup
; invoke core::ptr::drop_in_place<alloc::vec::Vec<i32>>
  invoke void @"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17hf63835b4d4ae8829E"(ptr align 8 %f) #22
          to label %bb26 unwind label %terminate

cleanup:                                          ; preds = %bb21, %panic5, %bb19, %panic4, %bb17, %panic3, %bb15, %panic2, %bb13, %panic1, %bb12, %bb8, %bb6, %bb5, %bb4, %bb3, %bb1
  %1 = landingpad { ptr, i32 }
          cleanup
  %2 = extractvalue { ptr, i32 } %1, 0
  %3 = extractvalue { ptr, i32 } %1, 1
  store ptr %2, ptr %0, align 8
  %4 = getelementptr inbounds i8, ptr %0, i64 8
  store i32 %3, ptr %4, align 8
  br label %bb25

bb3:                                              ; preds = %bb1
  store i32 0, ptr %_6, align 4
; invoke <alloc::vec::Vec<T,A> as core::ops::index::IndexMut<I>>::index_mut
  %_8 = invoke align 4 ptr @"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17hcc409bdc618de476E"(ptr align 8 %f, i64 1, ptr align 8 @alloc_748d2d0292760bc0f8c42f5d08bc215f)
          to label %bb4 unwind label %cleanup

bb4:                                              ; preds = %bb3
  store i32 1, ptr %_8, align 4
; invoke <alloc::vec::Vec<T,A> as core::ops::index::IndexMut<I>>::index_mut
  %_10 = invoke align 4 ptr @"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17hcc409bdc618de476E"(ptr align 8 %f, i64 2, ptr align 8 @alloc_9d3cedabe7e362ec3d18b8aa55766726)
          to label %bb5 unwind label %cleanup

bb5:                                              ; preds = %bb4
  store i32 1, ptr %_10, align 4
; invoke core::ops::range::RangeInclusive<Idx>::new
  invoke void @"_ZN4core3ops5range25RangeInclusive$LT$Idx$GT$3new17h3153938f5918d251E"(ptr sret([12 x i8]) align 4 %_13, i32 3, i32 %n)
          to label %bb6 unwind label %cleanup

bb6:                                              ; preds = %bb5
; invoke <I as core::iter::traits::collect::IntoIterator>::into_iter
  invoke void @"_ZN63_$LT$I$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17h9d9b2308e0dc1bc1E"(ptr sret([12 x i8]) align 4 %_12, ptr align 4 %_13)
          to label %bb7 unwind label %cleanup

bb7:                                              ; preds = %bb6
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %iter, ptr align 4 %_12, i64 12, i1 false)
  br label %bb8

bb8:                                              ; preds = %bb22, %bb7
; invoke core::iter::range::<impl core::iter::traits::iterator::Iterator for core::ops::range::RangeInclusive<A>>::next
  %5 = invoke { i32, i32 } @"_ZN4core4iter5range110_$LT$impl$u20$core..iter..traits..iterator..Iterator$u20$for$u20$core..ops..range..RangeInclusive$LT$A$GT$$GT$4next17hea813ff2eb51926aE"(ptr align 4 %iter)
          to label %bb9 unwind label %cleanup

bb9:                                              ; preds = %bb8
  %6 = extractvalue { i32, i32 } %5, 0
  %7 = extractvalue { i32, i32 } %5, 1
  store i32 %6, ptr %_15, align 4
  %8 = getelementptr inbounds i8, ptr %_15, i64 4
  store i32 %7, ptr %8, align 4
  %9 = load i32, ptr %_15, align 4
  %10 = getelementptr inbounds i8, ptr %_15, i64 4
  %11 = load i32, ptr %10, align 4
  %_17 = zext i32 %9 to i64
  %12 = trunc nuw i64 %_17 to i1
  br i1 %12, label %bb11, label %bb12

bb11:                                             ; preds = %bb9
  %13 = getelementptr inbounds i8, ptr %_15, i64 4
  %i = load i32, ptr %13, align 4
  %_28 = sext i32 %i to i64
  %_29.0 = sub i64 %_28, 1
  %_29.1 = icmp ult i64 %_28, 1
  br i1 %_29.1, label %panic1, label %bb13

bb12:                                             ; preds = %bb9
  %_49 = sext i32 %n to i64
; invoke <alloc::vec::Vec<T,A> as core::ops::index::Index<I>>::index
  %_47 = invoke align 4 ptr @"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17ha855418e2a4442d0E"(ptr align 8 %f, i64 %_49, ptr align 8 @alloc_9233d2f71a5e0fdc66ab226ca72249f2)
          to label %bb23 unwind label %cleanup

bb23:                                             ; preds = %bb12
  %_0 = load i32, ptr %_47, align 4
; call core::ptr::drop_in_place<alloc::vec::Vec<i32>>
  call void @"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17hf63835b4d4ae8829E"(ptr align 8 %f)
  ret i32 %_0

bb13:                                             ; preds = %bb11
; invoke <alloc::vec::Vec<T,A> as core::ops::index::Index<I>>::index
  %_25 = invoke align 4 ptr @"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17ha855418e2a4442d0E"(ptr align 8 %f, i64 %_29.0, ptr align 8 @alloc_3c4cf701785916e97f450c453fbd749d)
          to label %bb14 unwind label %cleanup

panic1:                                           ; preds = %bb11
; invoke core::panicking::panic_const::panic_const_sub_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_sub_overflow17h134cc1a7f93654deE(ptr align 8 @alloc_79f6326b1fd5dee9dc19e0db6a7c3322) #24
          to label %unreachable unwind label %cleanup

unreachable:                                      ; preds = %panic5, %panic4, %panic3, %panic2, %panic1
  unreachable

bb14:                                             ; preds = %bb13
  %_24 = load i32, ptr %_25, align 4
  %14 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %_24, i32 1)
  %_30.0 = extractvalue { i32, i1 } %14, 0
  %_30.1 = extractvalue { i32, i1 } %14, 1
  br i1 %_30.1, label %panic2, label %bb15

bb15:                                             ; preds = %bb14
  %_22 = sext i32 %_30.0 to i64
; invoke <alloc::vec::Vec<T,A> as core::ops::index::Index<I>>::index
  %_20 = invoke align 4 ptr @"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17ha855418e2a4442d0E"(ptr align 8 %f, i64 %_22, ptr align 8 @alloc_34e2ee34688d966e4678a6cb854427bb)
          to label %bb16 unwind label %cleanup

panic2:                                           ; preds = %bb14
; invoke core::panicking::panic_const::panic_const_sub_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_sub_overflow17h134cc1a7f93654deE(ptr align 8 @alloc_bfec3b9c91cc79efeb3ba32b7e95b5c8) #24
          to label %unreachable unwind label %cleanup

bb16:                                             ; preds = %bb15
  %_19 = load i32, ptr %_20, align 4
  %_40 = sext i32 %i to i64
  %_41.0 = sub i64 %_40, 1
  %_41.1 = icmp ult i64 %_40, 1
  br i1 %_41.1, label %panic3, label %bb17

bb17:                                             ; preds = %bb16
; invoke <alloc::vec::Vec<T,A> as core::ops::index::Index<I>>::index
  %_37 = invoke align 4 ptr @"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17ha855418e2a4442d0E"(ptr align 8 %f, i64 %_41.0, ptr align 8 @alloc_a00211c173d7774750197a61ebd00577)
          to label %bb18 unwind label %cleanup

panic3:                                           ; preds = %bb16
; invoke core::panicking::panic_const::panic_const_sub_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_sub_overflow17h134cc1a7f93654deE(ptr align 8 @alloc_722bb95af0d728955079116c75e3735a) #24
          to label %unreachable unwind label %cleanup

bb18:                                             ; preds = %bb17
  %_36 = load i32, ptr %_37, align 4
  %15 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %i, i32 %_36)
  %_42.0 = extractvalue { i32, i1 } %15, 0
  %_42.1 = extractvalue { i32, i1 } %15, 1
  br i1 %_42.1, label %panic4, label %bb19

bb19:                                             ; preds = %bb18
  %_34 = sext i32 %_42.0 to i64
; invoke <alloc::vec::Vec<T,A> as core::ops::index::Index<I>>::index
  %_32 = invoke align 4 ptr @"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17ha855418e2a4442d0E"(ptr align 8 %f, i64 %_34, ptr align 8 @alloc_75d866a1ea296a542f2f7a56fda29a70)
          to label %bb20 unwind label %cleanup

panic4:                                           ; preds = %bb18
; invoke core::panicking::panic_const::panic_const_sub_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_sub_overflow17h134cc1a7f93654deE(ptr align 8 @alloc_20567c5926a9cbacf2af12b74db54687) #24
          to label %unreachable unwind label %cleanup

bb20:                                             ; preds = %bb19
  %_31 = load i32, ptr %_32, align 4
  %16 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %_19, i32 %_31)
  %_43.0 = extractvalue { i32, i1 } %16, 0
  %_43.1 = extractvalue { i32, i1 } %16, 1
  br i1 %_43.1, label %panic5, label %bb21

bb21:                                             ; preds = %bb20
  %_46 = sext i32 %i to i64
; invoke <alloc::vec::Vec<T,A> as core::ops::index::IndexMut<I>>::index_mut
  %_44 = invoke align 4 ptr @"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17hcc409bdc618de476E"(ptr align 8 %f, i64 %_46, ptr align 8 @alloc_37c4ea4a3590454b57b62644b919d197)
          to label %bb22 unwind label %cleanup

panic5:                                           ; preds = %bb20
; invoke core::panicking::panic_const::panic_const_add_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_323a9c3de955b4ccf55190a6e7ec52ac) #24
          to label %unreachable unwind label %cleanup

bb22:                                             ; preds = %bb21
  store i32 %_43.0, ptr %_44, align 4
  br label %bb8

bb10:                                             ; No predecessors!
  unreachable

terminate:                                        ; preds = %bb25
  %17 = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer
; call core::panicking::panic_in_cleanup
  call void @_ZN4core9panicking16panic_in_cleanup17h5f6bde45d17ae243E() #21
  unreachable

bb26:                                             ; preds = %bb25
  %18 = load ptr, ptr %0, align 8
  %19 = getelementptr inbounds i8, ptr %0, i64 8
  %20 = load i32, ptr %19, align 8
  %21 = insertvalue { ptr, i32 } poison, ptr %18, 0
  %22 = insertvalue { ptr, i32 } %21, i32 %20, 1
  resume { ptr, i32 } %22
}

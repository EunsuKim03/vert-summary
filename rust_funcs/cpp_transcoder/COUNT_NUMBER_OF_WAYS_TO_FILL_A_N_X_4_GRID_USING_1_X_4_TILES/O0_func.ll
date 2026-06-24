define i32 @f_gold(i32 %n) unnamed_addr #3 personality ptr @rust_eh_personality {
start:
  %0 = alloca [16 x i8], align 8
  %_9 = alloca [8 x i8], align 4
  %iter = alloca [12 x i8], align 4
  %_7 = alloca [12 x i8], align 4
  %_6 = alloca [12 x i8], align 4
  %dp = alloca [24 x i8], align 8
  %_4 = sext i32 %n to i64
  %_5.0 = add i64 %_4, 1
  %_5.1 = icmp ult i64 %_5.0, %_4
  br i1 %_5.1, label %panic, label %bb1

bb1:                                              ; preds = %start
; call alloc::vec::from_elem
  call void @_ZN5alloc3vec9from_elem17hfb3bb23a0bd14b2cE(ptr sret([24 x i8]) align 8 %dp, i32 0, i64 %_5.0)
; invoke core::ops::range::RangeInclusive<Idx>::new
  invoke void @"_ZN4core3ops5range25RangeInclusive$LT$Idx$GT$3new17he5550104edfe0ff5E"(ptr sret([12 x i8]) align 4 %_7, i32 1, i32 %n)
          to label %bb3 unwind label %cleanup

panic:                                            ; preds = %start
; call core::panicking::panic_const::panic_const_add_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_4064edbb4c4229011c389ace6f265a88) #23
  unreachable

bb25:                                             ; preds = %cleanup
; invoke core::ptr::drop_in_place<alloc::vec::Vec<i32>>
  invoke void @"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17h61601c8547d244c7E"(ptr align 8 %dp) #22
          to label %bb26 unwind label %terminate

cleanup:                                          ; preds = %bb11, %bb14, %bb21, %panic3, %bb19, %panic2, %bb17, %panic1, %bb9, %bb5, %bb3, %bb1
  %1 = landingpad { ptr, i32 }
          cleanup
  %2 = extractvalue { ptr, i32 } %1, 0
  %3 = extractvalue { ptr, i32 } %1, 1
  store ptr %2, ptr %0, align 8
  %4 = getelementptr inbounds i8, ptr %0, i64 8
  store i32 %3, ptr %4, align 8
  br label %bb25

bb3:                                              ; preds = %bb1
; invoke <I as core::iter::traits::collect::IntoIterator>::into_iter
  invoke void @"_ZN63_$LT$I$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17h92c8200c7745d1a4E"(ptr sret([12 x i8]) align 4 %_6, ptr align 4 %_7)
          to label %bb4 unwind label %cleanup

bb4:                                              ; preds = %bb3
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %iter, ptr align 4 %_6, i64 12, i1 false)
  br label %bb5

bb5:                                              ; preds = %bb12, %bb15, %bb22, %bb4
; invoke core::iter::range::<impl core::iter::traits::iterator::Iterator for core::ops::range::RangeInclusive<A>>::next
  %5 = invoke { i32, i32 } @"_ZN4core4iter5range110_$LT$impl$u20$core..iter..traits..iterator..Iterator$u20$for$u20$core..ops..range..RangeInclusive$LT$A$GT$$GT$4next17hb1efd051cbc37981E"(ptr align 4 %iter)
          to label %bb6 unwind label %cleanup

bb6:                                              ; preds = %bb5
  %6 = extractvalue { i32, i32 } %5, 0
  %7 = extractvalue { i32, i32 } %5, 1
  store i32 %6, ptr %_9, align 4
  %8 = getelementptr inbounds i8, ptr %_9, i64 4
  store i32 %7, ptr %8, align 4
  %9 = load i32, ptr %_9, align 4
  %10 = getelementptr inbounds i8, ptr %_9, i64 4
  %11 = load i32, ptr %10, align 4
  %_11 = zext i32 %9 to i64
  %12 = trunc nuw i64 %_11 to i1
  br i1 %12, label %bb8, label %bb9

bb8:                                              ; preds = %bb6
  %13 = getelementptr inbounds i8, ptr %_9, i64 4
  %i = load i32, ptr %13, align 4
  %_13 = icmp sge i32 %i, 1
  br i1 %_13, label %bb10, label %bb13

bb9:                                              ; preds = %bb6
  %_40 = sext i32 %n to i64
; invoke <alloc::vec::Vec<T,A> as core::ops::index::Index<I>>::index
  %_38 = invoke align 4 ptr @"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h548f64bde542527eE"(ptr align 8 %dp, i64 %_40, ptr align 8 @alloc_535b3c74b292a8e2ed5eb5291fef264d)
          to label %bb23 unwind label %cleanup

bb23:                                             ; preds = %bb9
  %_0 = load i32, ptr %_38, align 4
; call core::ptr::drop_in_place<alloc::vec::Vec<i32>>
  call void @"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17h61601c8547d244c7E"(ptr align 8 %dp)
  ret i32 %_0

bb13:                                             ; preds = %bb10, %bb8
  %_18 = icmp eq i32 %i, 4
  br i1 %_18, label %bb14, label %bb16

bb10:                                             ; preds = %bb8
  %_14 = icmp sle i32 %i, 3
  br i1 %_14, label %bb11, label %bb13

bb11:                                             ; preds = %bb10
  %_17 = sext i32 %i to i64
; invoke <alloc::vec::Vec<T,A> as core::ops::index::IndexMut<I>>::index_mut
  %_15 = invoke align 4 ptr @"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h42c784ee944673c1E"(ptr align 8 %dp, i64 %_17, ptr align 8 @alloc_b63afc33637afac3089a2315695067c0)
          to label %bb12 unwind label %cleanup

bb16:                                             ; preds = %bb13
  %14 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %i, i32 1)
  %_27.0 = extractvalue { i32, i1 } %14, 0
  %_27.1 = extractvalue { i32, i1 } %14, 1
  br i1 %_27.1, label %panic1, label %bb17

bb14:                                             ; preds = %bb13
  %_21 = sext i32 %i to i64
; invoke <alloc::vec::Vec<T,A> as core::ops::index::IndexMut<I>>::index_mut
  %_19 = invoke align 4 ptr @"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h42c784ee944673c1E"(ptr align 8 %dp, i64 %_21, ptr align 8 @alloc_f76119ecaba7716a6f14ef84b0e2959b)
          to label %bb15 unwind label %cleanup

bb17:                                             ; preds = %bb16
  %_25 = sext i32 %_27.0 to i64
; invoke <alloc::vec::Vec<T,A> as core::ops::index::Index<I>>::index
  %_23 = invoke align 4 ptr @"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h548f64bde542527eE"(ptr align 8 %dp, i64 %_25, ptr align 8 @alloc_10881ccc859e3258de391539356f325e)
          to label %bb18 unwind label %cleanup

panic1:                                           ; preds = %bb16
; invoke core::panicking::panic_const::panic_const_sub_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_sub_overflow17h134cc1a7f93654deE(ptr align 8 @alloc_5c6fb038add920cbe4a2ff27dcddab04) #24
          to label %unreachable unwind label %cleanup

unreachable:                                      ; preds = %panic3, %panic2, %panic1
  unreachable

bb18:                                             ; preds = %bb17
  %_22 = load i32, ptr %_23, align 4
  %15 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %i, i32 4)
  %_33.0 = extractvalue { i32, i1 } %15, 0
  %_33.1 = extractvalue { i32, i1 } %15, 1
  br i1 %_33.1, label %panic2, label %bb19

bb19:                                             ; preds = %bb18
  %_31 = sext i32 %_33.0 to i64
; invoke <alloc::vec::Vec<T,A> as core::ops::index::Index<I>>::index
  %_29 = invoke align 4 ptr @"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h548f64bde542527eE"(ptr align 8 %dp, i64 %_31, ptr align 8 @alloc_e74c771acfd85448820d7f271a98fe9e)
          to label %bb20 unwind label %cleanup

panic2:                                           ; preds = %bb18
; invoke core::panicking::panic_const::panic_const_sub_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_sub_overflow17h134cc1a7f93654deE(ptr align 8 @alloc_013bea4ad6f4e45d0404108f3572b5ab) #24
          to label %unreachable unwind label %cleanup

bb20:                                             ; preds = %bb19
  %_28 = load i32, ptr %_29, align 4
  %16 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %_22, i32 %_28)
  %_34.0 = extractvalue { i32, i1 } %16, 0
  %_34.1 = extractvalue { i32, i1 } %16, 1
  br i1 %_34.1, label %panic3, label %bb21

bb21:                                             ; preds = %bb20
  %_37 = sext i32 %i to i64
; invoke <alloc::vec::Vec<T,A> as core::ops::index::IndexMut<I>>::index_mut
  %_35 = invoke align 4 ptr @"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h42c784ee944673c1E"(ptr align 8 %dp, i64 %_37, ptr align 8 @alloc_326f159265fc5336de78a9ec999f12d7)
          to label %bb22 unwind label %cleanup

panic3:                                           ; preds = %bb20
; invoke core::panicking::panic_const::panic_const_add_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_6e7e5314ef7d6a5dcb932447e3229b71) #24
          to label %unreachable unwind label %cleanup

bb22:                                             ; preds = %bb21
  store i32 %_34.0, ptr %_35, align 4
  br label %bb5

bb15:                                             ; preds = %bb14
  store i32 2, ptr %_19, align 4
  br label %bb5

bb12:                                             ; preds = %bb11
  store i32 1, ptr %_15, align 4
  br label %bb5

bb7:                                              ; No predecessors!
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

define i32 @f_gold(i32 %n, i32 %m) unnamed_addr #3 personality ptr @rust_eh_personality {
start:
  %0 = alloca [16 x i8], align 8
  %_12 = alloca [8 x i8], align 4
  %iter = alloca [12 x i8], align 4
  %_10 = alloca [12 x i8], align 4
  %_9 = alloca [12 x i8], align 4
  %count = alloca [24 x i8], align 8
  %_5 = sext i32 %n to i64
  %_6.0 = add i64 %_5, 1
  %_6.1 = icmp ult i64 %_6.0, %_5
  br i1 %_6.1, label %panic, label %bb1

bb1:                                              ; preds = %start
; call alloc::vec::from_elem
  call void @_ZN5alloc3vec9from_elem17hfe80c6d97d2806e2E(ptr sret([24 x i8]) align 8 %count, i32 0, i64 %_6.0)
; invoke <alloc::vec::Vec<T,A> as core::ops::index::IndexMut<I>>::index_mut
  %_7 = invoke align 4 ptr @"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h5800685a2e95f50cE"(ptr align 8 %count, i64 0, ptr align 8 @alloc_17feba9e5c747866877ddf209c3b1bf8)
          to label %bb3 unwind label %cleanup

panic:                                            ; preds = %start
; call core::panicking::panic_const::panic_const_add_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_d2ebfbd0a73a74b0791ba2773008b992) #23
  unreachable

bb25:                                             ; preds = %cleanup
; invoke core::ptr::drop_in_place<alloc::vec::Vec<i32>>
  invoke void @"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17h70458dc47297d45cE"(ptr align 8 %count) #22
          to label %bb26 unwind label %terminate

cleanup:                                          ; preds = %bb16, %panic3, %bb14, %panic2, %bb12, %panic1, %bb19, %bb21, %bb10, %bb6, %bb4, %bb3, %bb1
  %1 = landingpad { ptr, i32 }
          cleanup
  %2 = extractvalue { ptr, i32 } %1, 0
  %3 = extractvalue { ptr, i32 } %1, 1
  store ptr %2, ptr %0, align 8
  %4 = getelementptr inbounds i8, ptr %0, i64 8
  store i32 %3, ptr %4, align 8
  br label %bb25

bb3:                                              ; preds = %bb1
  store i32 0, ptr %_7, align 4
; invoke core::ops::range::RangeInclusive<Idx>::new
  invoke void @"_ZN4core3ops5range25RangeInclusive$LT$Idx$GT$3new17h9b22e7e5413f5413E"(ptr sret([12 x i8]) align 4 %_10, i32 1, i32 %n)
          to label %bb4 unwind label %cleanup

bb4:                                              ; preds = %bb3
; invoke <I as core::iter::traits::collect::IntoIterator>::into_iter
  invoke void @"_ZN63_$LT$I$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17h0da10dbf9bd08b66E"(ptr sret([12 x i8]) align 4 %_9, ptr align 4 %_10)
          to label %bb5 unwind label %cleanup

bb5:                                              ; preds = %bb4
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %iter, ptr align 4 %_9, i64 12, i1 false)
  br label %bb6

bb6:                                              ; preds = %bb17, %bb20, %bb22, %bb5
; invoke core::iter::range::<impl core::iter::traits::iterator::Iterator for core::ops::range::RangeInclusive<A>>::next
  %5 = invoke { i32, i32 } @"_ZN4core4iter5range110_$LT$impl$u20$core..iter..traits..iterator..Iterator$u20$for$u20$core..ops..range..RangeInclusive$LT$A$GT$$GT$4next17h96f6ccd854e12c53E"(ptr align 4 %iter)
          to label %bb7 unwind label %cleanup

bb7:                                              ; preds = %bb6
  %6 = extractvalue { i32, i32 } %5, 0
  %7 = extractvalue { i32, i32 } %5, 1
  store i32 %6, ptr %_12, align 4
  %8 = getelementptr inbounds i8, ptr %_12, i64 4
  store i32 %7, ptr %8, align 4
  %9 = load i32, ptr %_12, align 4
  %10 = getelementptr inbounds i8, ptr %_12, i64 4
  %11 = load i32, ptr %10, align 4
  %_14 = zext i32 %9 to i64
  %12 = trunc nuw i64 %_14 to i1
  br i1 %12, label %bb9, label %bb10

bb9:                                              ; preds = %bb7
  %13 = getelementptr inbounds i8, ptr %_12, i64 4
  %i = load i32, ptr %13, align 4
  %_16 = icmp sgt i32 %i, %m
  br i1 %_16, label %bb11, label %bb18

bb10:                                             ; preds = %bb7
  %_42 = sext i32 %n to i64
; invoke <alloc::vec::Vec<T,A> as core::ops::index::Index<I>>::index
  %_40 = invoke align 4 ptr @"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h0d4c1b47b12054eeE"(ptr align 8 %count, i64 %_42, ptr align 8 @alloc_e18aae0091d832da94693ec54f2b2acc)
          to label %bb23 unwind label %cleanup

bb23:                                             ; preds = %bb10
  %_0 = load i32, ptr %_40, align 4
; call core::ptr::drop_in_place<alloc::vec::Vec<i32>>
  call void @"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17h70458dc47297d45cE"(ptr align 8 %count)
  ret i32 %_0

bb18:                                             ; preds = %bb9
  %_33 = icmp slt i32 %i, %m
  br i1 %_33, label %bb19, label %bb21

bb11:                                             ; preds = %bb9
  %14 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %i, i32 1)
  %_22.0 = extractvalue { i32, i1 } %14, 0
  %_22.1 = extractvalue { i32, i1 } %14, 1
  br i1 %_22.1, label %panic1, label %bb12

bb21:                                             ; preds = %bb18
  %_39 = sext i32 %i to i64
; invoke <alloc::vec::Vec<T,A> as core::ops::index::IndexMut<I>>::index_mut
  %_37 = invoke align 4 ptr @"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h5800685a2e95f50cE"(ptr align 8 %count, i64 %_39, ptr align 8 @alloc_adfbe15e800a6b24977f68575484c4ab)
          to label %bb22 unwind label %cleanup

bb19:                                             ; preds = %bb18
  %_36 = sext i32 %i to i64
; invoke <alloc::vec::Vec<T,A> as core::ops::index::IndexMut<I>>::index_mut
  %_34 = invoke align 4 ptr @"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h5800685a2e95f50cE"(ptr align 8 %count, i64 %_36, ptr align 8 @alloc_c5a5ed330c6d020bd4ec74d680b601b0)
          to label %bb20 unwind label %cleanup

bb22:                                             ; preds = %bb21
  store i32 2, ptr %_37, align 4
  br label %bb6

bb20:                                             ; preds = %bb19
  store i32 1, ptr %_34, align 4
  br label %bb6

bb12:                                             ; preds = %bb11
  %_20 = sext i32 %_22.0 to i64
; invoke <alloc::vec::Vec<T,A> as core::ops::index::Index<I>>::index
  %_18 = invoke align 4 ptr @"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h0d4c1b47b12054eeE"(ptr align 8 %count, i64 %_20, ptr align 8 @alloc_5cfb1e4cd9c0d545e06049de1e5db50b)
          to label %bb13 unwind label %cleanup

panic1:                                           ; preds = %bb11
; invoke core::panicking::panic_const::panic_const_sub_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_sub_overflow17h134cc1a7f93654deE(ptr align 8 @alloc_0872ca5d43882236ad929620646c487c) #24
          to label %unreachable unwind label %cleanup

unreachable:                                      ; preds = %panic3, %panic2, %panic1
  unreachable

bb13:                                             ; preds = %bb12
  %_17 = load i32, ptr %_18, align 4
  %15 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %i, i32 %m)
  %_28.0 = extractvalue { i32, i1 } %15, 0
  %_28.1 = extractvalue { i32, i1 } %15, 1
  br i1 %_28.1, label %panic2, label %bb14

bb14:                                             ; preds = %bb13
  %_26 = sext i32 %_28.0 to i64
; invoke <alloc::vec::Vec<T,A> as core::ops::index::Index<I>>::index
  %_24 = invoke align 4 ptr @"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h0d4c1b47b12054eeE"(ptr align 8 %count, i64 %_26, ptr align 8 @alloc_3f88f3858a8318a73712c8a3c19ebe21)
          to label %bb15 unwind label %cleanup

panic2:                                           ; preds = %bb13
; invoke core::panicking::panic_const::panic_const_sub_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_sub_overflow17h134cc1a7f93654deE(ptr align 8 @alloc_d8a99dafea40f67188e35d2dbecf3e8f) #24
          to label %unreachable unwind label %cleanup

bb15:                                             ; preds = %bb14
  %_23 = load i32, ptr %_24, align 4
  %16 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %_17, i32 %_23)
  %_29.0 = extractvalue { i32, i1 } %16, 0
  %_29.1 = extractvalue { i32, i1 } %16, 1
  br i1 %_29.1, label %panic3, label %bb16

bb16:                                             ; preds = %bb15
  %_32 = sext i32 %i to i64
; invoke <alloc::vec::Vec<T,A> as core::ops::index::IndexMut<I>>::index_mut
  %_30 = invoke align 4 ptr @"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h5800685a2e95f50cE"(ptr align 8 %count, i64 %_32, ptr align 8 @alloc_edcff0fcfa69f0d44ee48e539d23354d)
          to label %bb17 unwind label %cleanup

panic3:                                           ; preds = %bb15
; invoke core::panicking::panic_const::panic_const_add_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_2f40f34b41e517de576edbc9b4afb47c) #24
          to label %unreachable unwind label %cleanup

bb17:                                             ; preds = %bb16
  store i32 %_29.0, ptr %_30, align 4
  br label %bb6

bb8:                                              ; No predecessors!
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

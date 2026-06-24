define i32 @f_gold(i32 %n) unnamed_addr #3 personality ptr @rust_eh_personality {
start:
  %0 = alloca [16 x i8], align 8
  %_18 = alloca [8 x i8], align 4
  %iter1 = alloca [12 x i8], align 4
  %_16 = alloca [12 x i8], align 4
  %_15 = alloca [12 x i8], align 4
  %_11 = alloca [8 x i8], align 4
  %iter = alloca [12 x i8], align 4
  %_9 = alloca [12 x i8], align 4
  %_8 = alloca [12 x i8], align 4
  %table = alloca [24 x i8], align 8
  %_4 = sext i32 %n to i64
  %_5.0 = add i64 %_4, 1
  %_5.1 = icmp ult i64 %_5.0, %_4
  br i1 %_5.1, label %panic, label %bb1

bb1:                                              ; preds = %start
; call alloc::vec::from_elem
  call void @_ZN5alloc3vec9from_elem17h6b4933821f1eb344E(ptr sret([24 x i8]) align 8 %table, i32 0, i64 %_5.0)
; invoke <alloc::vec::Vec<T,A> as core::ops::index::IndexMut<I>>::index_mut
  %_6 = invoke align 4 ptr @"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h0776b1f818ff7bc6E"(ptr align 8 %table, i64 0, ptr align 8 @alloc_ba7b89a02b596be26738d6b12ac4b47e)
          to label %bb3 unwind label %cleanup

panic:                                            ; preds = %start
; call core::panicking::panic_const::panic_const_add_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_116c1ba7e8950db2a5517c0101b21727) #23
  unreachable

bb22:                                             ; preds = %cleanup
; invoke core::ptr::drop_in_place<alloc::vec::Vec<i32>>
  invoke void @"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17h60771aaf13dc2d3bE"(ptr align 8 %table) #22
          to label %bb23 unwind label %terminate

cleanup:                                          ; preds = %panic3, %bb17, %bb16, %panic2, %bb13, %bb11, %bb9, %bb10, %bb6, %bb4, %bb3, %bb1
  %1 = landingpad { ptr, i32 }
          cleanup
  %2 = extractvalue { ptr, i32 } %1, 0
  %3 = extractvalue { ptr, i32 } %1, 1
  store ptr %2, ptr %0, align 8
  %4 = getelementptr inbounds i8, ptr %0, i64 8
  store i32 %3, ptr %4, align 8
  br label %bb22

bb3:                                              ; preds = %bb1
  store i32 1, ptr %_6, align 4
; invoke core::ops::range::RangeInclusive<Idx>::new
  invoke void @"_ZN4core3ops5range25RangeInclusive$LT$Idx$GT$3new17hf1b401ff223b665aE"(ptr sret([12 x i8]) align 4 %_9, i32 1, i32 %n)
          to label %bb4 unwind label %cleanup

bb4:                                              ; preds = %bb3
; invoke <I as core::iter::traits::collect::IntoIterator>::into_iter
  invoke void @"_ZN63_$LT$I$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17h451e5785ffe9c308E"(ptr sret([12 x i8]) align 4 %_8, ptr align 4 %_9)
          to label %bb5 unwind label %cleanup

bb5:                                              ; preds = %bb4
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %iter, ptr align 4 %_8, i64 12, i1 false)
  br label %bb6

bb6:                                              ; preds = %bb14, %bb5
; invoke core::iter::range::<impl core::iter::traits::iterator::Iterator for core::ops::range::RangeInclusive<A>>::next
  %5 = invoke { i32, i32 } @"_ZN4core4iter5range110_$LT$impl$u20$core..iter..traits..iterator..Iterator$u20$for$u20$core..ops..range..RangeInclusive$LT$A$GT$$GT$4next17hff9aafae978cdb82E"(ptr align 4 %iter)
          to label %bb7 unwind label %cleanup

bb7:                                              ; preds = %bb6
  %6 = extractvalue { i32, i32 } %5, 0
  %7 = extractvalue { i32, i32 } %5, 1
  store i32 %6, ptr %_11, align 4
  %8 = getelementptr inbounds i8, ptr %_11, i64 4
  store i32 %7, ptr %8, align 4
  %9 = load i32, ptr %_11, align 4
  %10 = getelementptr inbounds i8, ptr %_11, i64 4
  %11 = load i32, ptr %10, align 4
  %_13 = zext i32 %9 to i64
  %12 = trunc nuw i64 %_13 to i1
  br i1 %12, label %bb9, label %bb10

bb9:                                              ; preds = %bb7
  %13 = getelementptr inbounds i8, ptr %_11, i64 4
  %i = load i32, ptr %13, align 4
; invoke core::ops::range::RangeInclusive<Idx>::new
  invoke void @"_ZN4core3ops5range25RangeInclusive$LT$Idx$GT$3new17hf1b401ff223b665aE"(ptr sret([12 x i8]) align 4 %_16, i32 %i, i32 %n)
          to label %bb11 unwind label %cleanup

bb10:                                             ; preds = %bb7
  %_34 = sext i32 %n to i64
; invoke <alloc::vec::Vec<T,A> as core::ops::index::Index<I>>::index
  %_32 = invoke align 4 ptr @"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hd85c9c050aa711cfE"(ptr align 8 %table, i64 %_34, ptr align 8 @alloc_a89279eca10d763b375081b3ce383be9)
          to label %bb20 unwind label %cleanup

bb20:                                             ; preds = %bb10
  %_0 = load i32, ptr %_32, align 4
; call core::ptr::drop_in_place<alloc::vec::Vec<i32>>
  call void @"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17h60771aaf13dc2d3bE"(ptr align 8 %table)
  ret i32 %_0

bb11:                                             ; preds = %bb9
; invoke <I as core::iter::traits::collect::IntoIterator>::into_iter
  invoke void @"_ZN63_$LT$I$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17h451e5785ffe9c308E"(ptr sret([12 x i8]) align 4 %_15, ptr align 4 %_16)
          to label %bb12 unwind label %cleanup

bb12:                                             ; preds = %bb11
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %iter1, ptr align 4 %_15, i64 12, i1 false)
  br label %bb13

bb13:                                             ; preds = %bb19, %bb12
; invoke core::iter::range::<impl core::iter::traits::iterator::Iterator for core::ops::range::RangeInclusive<A>>::next
  %14 = invoke { i32, i32 } @"_ZN4core4iter5range110_$LT$impl$u20$core..iter..traits..iterator..Iterator$u20$for$u20$core..ops..range..RangeInclusive$LT$A$GT$$GT$4next17hff9aafae978cdb82E"(ptr align 4 %iter1)
          to label %bb14 unwind label %cleanup

bb14:                                             ; preds = %bb13
  %15 = extractvalue { i32, i32 } %14, 0
  %16 = extractvalue { i32, i32 } %14, 1
  store i32 %15, ptr %_18, align 4
  %17 = getelementptr inbounds i8, ptr %_18, i64 4
  store i32 %16, ptr %17, align 4
  %18 = load i32, ptr %_18, align 4
  %19 = getelementptr inbounds i8, ptr %_18, i64 4
  %20 = load i32, ptr %19, align 4
  %_20 = zext i32 %18 to i64
  %21 = trunc nuw i64 %_20 to i1
  br i1 %21, label %bb15, label %bb6

bb15:                                             ; preds = %bb14
  %22 = getelementptr inbounds i8, ptr %_18, i64 4
  %j = load i32, ptr %22, align 4
  %23 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %j, i32 %i)
  %_27.0 = extractvalue { i32, i1 } %23, 0
  %_27.1 = extractvalue { i32, i1 } %23, 1
  br i1 %_27.1, label %panic2, label %bb16

bb16:                                             ; preds = %bb15
  %_25 = sext i32 %_27.0 to i64
; invoke <alloc::vec::Vec<T,A> as core::ops::index::Index<I>>::index
  %_23 = invoke align 4 ptr @"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hd85c9c050aa711cfE"(ptr align 8 %table, i64 %_25, ptr align 8 @alloc_8adb672ab69616c54652515da4c039df)
          to label %bb17 unwind label %cleanup

panic2:                                           ; preds = %bb15
; invoke core::panicking::panic_const::panic_const_sub_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_sub_overflow17h134cc1a7f93654deE(ptr align 8 @alloc_193632146d12d9e0c7eea655020c58c7) #24
          to label %unreachable unwind label %cleanup

unreachable:                                      ; preds = %panic3, %panic2
  unreachable

bb17:                                             ; preds = %bb16
  %_22 = load i32, ptr %_23, align 4
  %_30 = sext i32 %j to i64
; invoke <alloc::vec::Vec<T,A> as core::ops::index::IndexMut<I>>::index_mut
  %_28 = invoke align 4 ptr @"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h0776b1f818ff7bc6E"(ptr align 8 %table, i64 %_30, ptr align 8 @alloc_30d3186cf66eef713f35ce35fc16fac4)
          to label %bb18 unwind label %cleanup

bb18:                                             ; preds = %bb17
  %24 = load i32, ptr %_28, align 4
  %25 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %24, i32 %_22)
  %_31.0 = extractvalue { i32, i1 } %25, 0
  %_31.1 = extractvalue { i32, i1 } %25, 1
  br i1 %_31.1, label %panic3, label %bb19

bb19:                                             ; preds = %bb18
  store i32 %_31.0, ptr %_28, align 4
  br label %bb13

panic3:                                           ; preds = %bb18
; invoke core::panicking::panic_const::panic_const_add_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_b686c80bb8a22516784a1564810664dd) #24
          to label %unreachable unwind label %cleanup

bb8:                                              ; No predecessors!
  unreachable

terminate:                                        ; preds = %bb22
  %26 = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer
; call core::panicking::panic_in_cleanup
  call void @_ZN4core9panicking16panic_in_cleanup17h5f6bde45d17ae243E() #21
  unreachable

bb23:                                             ; preds = %bb22
  %27 = load ptr, ptr %0, align 8
  %28 = getelementptr inbounds i8, ptr %0, i64 8
  %29 = load i32, ptr %28, align 8
  %30 = insertvalue { ptr, i32 } poison, ptr %27, 0
  %31 = insertvalue { ptr, i32 } %30, i32 %29, 1
  resume { ptr, i32 } %31
}

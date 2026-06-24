define i32 @f_gold(i32 %n) unnamed_addr #3 personality ptr @rust_eh_personality {
start:
  %0 = alloca [16 x i8], align 8
  %_18 = alloca [8 x i8], align 4
  %iter1 = alloca [12 x i8], align 4
  %_16 = alloca [12 x i8], align 4
  %_15 = alloca [12 x i8], align 4
  %_11 = alloca [8 x i8], align 4
  %iter = alloca [8 x i8], align 4
  %table = alloca [24 x i8], align 8
  %_4 = sext i32 %n to i64
  %_5.0 = add i64 %_4, 1
  %_5.1 = icmp ult i64 %_5.0, %_4
  br i1 %_5.1, label %panic, label %bb1

bb1:                                              ; preds = %start
; call alloc::vec::from_elem
  call void @_ZN5alloc3vec9from_elem17h6b4933821f1eb344E(ptr sret([24 x i8]) align 8 %table, i32 0, i64 %_5.0)
; invoke <alloc::vec::Vec<T,A> as core::ops::index::IndexMut<I>>::index_mut
  %_6 = invoke align 4 ptr @"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h0776b1f818ff7bc6E"(ptr align 8 %table, i64 0, ptr align 8 @alloc_f6fbebde63c15a91de2463eecd111fee)
          to label %bb3 unwind label %cleanup

panic:                                            ; preds = %start
; call core::panicking::panic_const::panic_const_add_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_4820795286647c98bec031f2bcb0d019) #23
  unreachable

bb21:                                             ; preds = %cleanup
; invoke core::ptr::drop_in_place<alloc::vec::Vec<i32>>
  invoke void @"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17h60771aaf13dc2d3bE"(ptr align 8 %table) #22
          to label %bb22 unwind label %terminate

cleanup:                                          ; preds = %panic3, %bb16, %bb15, %panic2, %bb12, %bb10, %bb8, %bb9, %bb5, %bb3, %bb1
  %1 = landingpad { ptr, i32 }
          cleanup
  %2 = extractvalue { ptr, i32 } %1, 0
  %3 = extractvalue { ptr, i32 } %1, 1
  store ptr %2, ptr %0, align 8
  %4 = getelementptr inbounds i8, ptr %0, i64 8
  store i32 %3, ptr %4, align 8
  br label %bb21

bb3:                                              ; preds = %bb1
  store i32 1, ptr %_6, align 4
; invoke <I as core::iter::traits::collect::IntoIterator>::into_iter
  %5 = invoke { i32, i32 } @"_ZN63_$LT$I$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17hc16944e51f528a17E"(i32 1, i32 %n)
          to label %bb4 unwind label %cleanup

bb4:                                              ; preds = %bb3
  %_8.0 = extractvalue { i32, i32 } %5, 0
  %_8.1 = extractvalue { i32, i32 } %5, 1
  store i32 %_8.0, ptr %iter, align 4
  %6 = getelementptr inbounds i8, ptr %iter, i64 4
  store i32 %_8.1, ptr %6, align 4
  br label %bb5

bb5:                                              ; preds = %bb13, %bb4
; invoke core::iter::range::<impl core::iter::traits::iterator::Iterator for core::ops::range::Range<A>>::next
  %7 = invoke { i32, i32 } @"_ZN4core4iter5range101_$LT$impl$u20$core..iter..traits..iterator..Iterator$u20$for$u20$core..ops..range..Range$LT$A$GT$$GT$4next17hf09ccdce75a888e9E"(ptr align 4 %iter)
          to label %bb6 unwind label %cleanup

bb6:                                              ; preds = %bb5
  %8 = extractvalue { i32, i32 } %7, 0
  %9 = extractvalue { i32, i32 } %7, 1
  store i32 %8, ptr %_11, align 4
  %10 = getelementptr inbounds i8, ptr %_11, i64 4
  store i32 %9, ptr %10, align 4
  %11 = load i32, ptr %_11, align 4
  %12 = getelementptr inbounds i8, ptr %_11, i64 4
  %13 = load i32, ptr %12, align 4
  %_13 = zext i32 %11 to i64
  %14 = trunc nuw i64 %_13 to i1
  br i1 %14, label %bb8, label %bb9

bb8:                                              ; preds = %bb6
  %15 = getelementptr inbounds i8, ptr %_11, i64 4
  %i = load i32, ptr %15, align 4
; invoke core::ops::range::RangeInclusive<Idx>::new
  invoke void @"_ZN4core3ops5range25RangeInclusive$LT$Idx$GT$3new17hf1b401ff223b665aE"(ptr sret([12 x i8]) align 4 %_16, i32 %i, i32 %n)
          to label %bb10 unwind label %cleanup

bb9:                                              ; preds = %bb6
  %_34 = sext i32 %n to i64
; invoke <alloc::vec::Vec<T,A> as core::ops::index::Index<I>>::index
  %_32 = invoke align 4 ptr @"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hd85c9c050aa711cfE"(ptr align 8 %table, i64 %_34, ptr align 8 @alloc_7d395f208ce71b92e00f7b4fc3faa951)
          to label %bb19 unwind label %cleanup

bb19:                                             ; preds = %bb9
  %_0 = load i32, ptr %_32, align 4
; call core::ptr::drop_in_place<alloc::vec::Vec<i32>>
  call void @"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17h60771aaf13dc2d3bE"(ptr align 8 %table)
  ret i32 %_0

bb10:                                             ; preds = %bb8
; invoke <I as core::iter::traits::collect::IntoIterator>::into_iter
  invoke void @"_ZN63_$LT$I$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17h451e5785ffe9c308E"(ptr sret([12 x i8]) align 4 %_15, ptr align 4 %_16)
          to label %bb11 unwind label %cleanup

bb11:                                             ; preds = %bb10
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %iter1, ptr align 4 %_15, i64 12, i1 false)
  br label %bb12

bb12:                                             ; preds = %bb18, %bb11
; invoke core::iter::range::<impl core::iter::traits::iterator::Iterator for core::ops::range::RangeInclusive<A>>::next
  %16 = invoke { i32, i32 } @"_ZN4core4iter5range110_$LT$impl$u20$core..iter..traits..iterator..Iterator$u20$for$u20$core..ops..range..RangeInclusive$LT$A$GT$$GT$4next17hff9aafae978cdb82E"(ptr align 4 %iter1)
          to label %bb13 unwind label %cleanup

bb13:                                             ; preds = %bb12
  %17 = extractvalue { i32, i32 } %16, 0
  %18 = extractvalue { i32, i32 } %16, 1
  store i32 %17, ptr %_18, align 4
  %19 = getelementptr inbounds i8, ptr %_18, i64 4
  store i32 %18, ptr %19, align 4
  %20 = load i32, ptr %_18, align 4
  %21 = getelementptr inbounds i8, ptr %_18, i64 4
  %22 = load i32, ptr %21, align 4
  %_20 = zext i32 %20 to i64
  %23 = trunc nuw i64 %_20 to i1
  br i1 %23, label %bb14, label %bb5

bb14:                                             ; preds = %bb13
  %24 = getelementptr inbounds i8, ptr %_18, i64 4
  %j = load i32, ptr %24, align 4
  %25 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %j, i32 %i)
  %_27.0 = extractvalue { i32, i1 } %25, 0
  %_27.1 = extractvalue { i32, i1 } %25, 1
  br i1 %_27.1, label %panic2, label %bb15

bb15:                                             ; preds = %bb14
  %_25 = sext i32 %_27.0 to i64
; invoke <alloc::vec::Vec<T,A> as core::ops::index::Index<I>>::index
  %_23 = invoke align 4 ptr @"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hd85c9c050aa711cfE"(ptr align 8 %table, i64 %_25, ptr align 8 @alloc_71bfa8cb3503c2d119d68462338d825f)
          to label %bb16 unwind label %cleanup

panic2:                                           ; preds = %bb14
; invoke core::panicking::panic_const::panic_const_sub_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_sub_overflow17h134cc1a7f93654deE(ptr align 8 @alloc_e1e46436d0258ff85bf32d3892686afa) #24
          to label %unreachable unwind label %cleanup

unreachable:                                      ; preds = %panic3, %panic2
  unreachable

bb16:                                             ; preds = %bb15
  %_22 = load i32, ptr %_23, align 4
  %_30 = sext i32 %j to i64
; invoke <alloc::vec::Vec<T,A> as core::ops::index::IndexMut<I>>::index_mut
  %_28 = invoke align 4 ptr @"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h0776b1f818ff7bc6E"(ptr align 8 %table, i64 %_30, ptr align 8 @alloc_cfc8142fb27566ec0d6457b431b3fecd)
          to label %bb17 unwind label %cleanup

bb17:                                             ; preds = %bb16
  %26 = load i32, ptr %_28, align 4
  %27 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %26, i32 %_22)
  %_31.0 = extractvalue { i32, i1 } %27, 0
  %_31.1 = extractvalue { i32, i1 } %27, 1
  br i1 %_31.1, label %panic3, label %bb18

bb18:                                             ; preds = %bb17
  store i32 %_31.0, ptr %_28, align 4
  br label %bb12

panic3:                                           ; preds = %bb17
; invoke core::panicking::panic_const::panic_const_add_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_93988f1b55f9fc7c27c4e10ccb3d3019) #24
          to label %unreachable unwind label %cleanup

bb7:                                              ; No predecessors!
  unreachable

terminate:                                        ; preds = %bb21
  %28 = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer
; call core::panicking::panic_in_cleanup
  call void @_ZN4core9panicking16panic_in_cleanup17h5f6bde45d17ae243E() #21
  unreachable

bb22:                                             ; preds = %bb21
  %29 = load ptr, ptr %0, align 8
  %30 = getelementptr inbounds i8, ptr %0, i64 8
  %31 = load i32, ptr %30, align 8
  %32 = insertvalue { ptr, i32 } poison, ptr %29, 0
  %33 = insertvalue { ptr, i32 } %32, i32 %31, 1
  resume { ptr, i32 } %33
}

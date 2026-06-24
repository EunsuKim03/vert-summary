define i32 @f_gold(i32 %dist) unnamed_addr #3 personality ptr @rust_eh_personality {
start:
  %0 = alloca [16 x i8], align 8
  %_15 = alloca [8 x i8], align 4
  %iter = alloca [12 x i8], align 4
  %_13 = alloca [12 x i8], align 4
  %_12 = alloca [12 x i8], align 4
  %count = alloca [24 x i8], align 8
  %_4 = sext i32 %dist to i64
  %_5.0 = add i64 %_4, 1
  %_5.1 = icmp ult i64 %_5.0, %_4
  br i1 %_5.1, label %panic, label %bb1

bb1:                                              ; preds = %start
; call alloc::vec::from_elem
  call void @_ZN5alloc3vec9from_elem17h7749bf56e48ea3fbE(ptr sret([24 x i8]) align 8 %count, i32 1, i64 %_5.0)
; invoke <alloc::vec::Vec<T,A> as core::ops::index::IndexMut<I>>::index_mut
  %_6 = invoke align 4 ptr @"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17hb77dcf30b5ed4634E"(ptr align 8 %count, i64 0, ptr align 8 @alloc_a9055964c0dc76bdbc9f31c5f47fadbf)
          to label %bb3 unwind label %cleanup

panic:                                            ; preds = %start
; call core::panicking::panic_const::panic_const_add_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_c8e61ea5c8ed3dd39a9b32050e4d8ae0) #23
  unreachable

bb24:                                             ; preds = %cleanup
; invoke core::ptr::drop_in_place<alloc::vec::Vec<i32>>
  invoke void @"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17h75cffa468c071cc0E"(ptr align 8 %count) #22
          to label %bb25 unwind label %terminate

cleanup:                                          ; preds = %bb20, %panic5, %bb18, %panic4, %panic3, %bb15, %panic2, %bb13, %panic1, %bb12, %bb8, %bb6, %bb5, %bb4, %bb3, %bb1
  %1 = landingpad { ptr, i32 }
          cleanup
  %2 = extractvalue { ptr, i32 } %1, 0
  %3 = extractvalue { ptr, i32 } %1, 1
  store ptr %2, ptr %0, align 8
  %4 = getelementptr inbounds i8, ptr %0, i64 8
  store i32 %3, ptr %4, align 8
  br label %bb24

bb3:                                              ; preds = %bb1
  store i32 1, ptr %_6, align 4
; invoke <alloc::vec::Vec<T,A> as core::ops::index::IndexMut<I>>::index_mut
  %_8 = invoke align 4 ptr @"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17hb77dcf30b5ed4634E"(ptr align 8 %count, i64 1, ptr align 8 @alloc_d281e09a5d92d3d51a9d62fb9a5090a6)
          to label %bb4 unwind label %cleanup

bb4:                                              ; preds = %bb3
  store i32 1, ptr %_8, align 4
; invoke <alloc::vec::Vec<T,A> as core::ops::index::IndexMut<I>>::index_mut
  %_10 = invoke align 4 ptr @"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17hb77dcf30b5ed4634E"(ptr align 8 %count, i64 2, ptr align 8 @alloc_9d760bb5332ae279a7fcc04c73c3ab59)
          to label %bb5 unwind label %cleanup

bb5:                                              ; preds = %bb4
  store i32 2, ptr %_10, align 4
; invoke core::ops::range::RangeInclusive<Idx>::new
  invoke void @"_ZN4core3ops5range25RangeInclusive$LT$Idx$GT$3new17hbd91815ba4cde80eE"(ptr sret([12 x i8]) align 4 %_13, i32 3, i32 %dist)
          to label %bb6 unwind label %cleanup

bb6:                                              ; preds = %bb5
; invoke <I as core::iter::traits::collect::IntoIterator>::into_iter
  invoke void @"_ZN63_$LT$I$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17h99b0b160f30bd282E"(ptr sret([12 x i8]) align 4 %_12, ptr align 4 %_13)
          to label %bb7 unwind label %cleanup

bb7:                                              ; preds = %bb6
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %iter, ptr align 4 %_12, i64 12, i1 false)
  br label %bb8

bb8:                                              ; preds = %bb21, %bb7
; invoke core::iter::range::<impl core::iter::traits::iterator::Iterator for core::ops::range::RangeInclusive<A>>::next
  %5 = invoke { i32, i32 } @"_ZN4core4iter5range110_$LT$impl$u20$core..iter..traits..iterator..Iterator$u20$for$u20$core..ops..range..RangeInclusive$LT$A$GT$$GT$4next17h96768f2e1f4b250eE"(ptr align 4 %iter)
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
  %14 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %i, i32 1)
  %_25.0 = extractvalue { i32, i1 } %14, 0
  %_25.1 = extractvalue { i32, i1 } %14, 1
  br i1 %_25.1, label %panic1, label %bb13

bb12:                                             ; preds = %bb9
  %_45 = sext i32 %dist to i64
; invoke <alloc::vec::Vec<T,A> as core::ops::index::Index<I>>::index
  %_43 = invoke align 4 ptr @"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h95ede15ae33a152fE"(ptr align 8 %count, i64 %_45, ptr align 8 @alloc_ae0436a8a03dba606f6a948305022b70)
          to label %bb22 unwind label %cleanup

bb22:                                             ; preds = %bb12
  %_0 = load i32, ptr %_43, align 4
; call core::ptr::drop_in_place<alloc::vec::Vec<i32>>
  call void @"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17h75cffa468c071cc0E"(ptr align 8 %count)
  ret i32 %_0

bb13:                                             ; preds = %bb11
  %_23 = sext i32 %_25.0 to i64
; invoke <alloc::vec::Vec<T,A> as core::ops::index::Index<I>>::index
  %_21 = invoke align 4 ptr @"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h95ede15ae33a152fE"(ptr align 8 %count, i64 %_23, ptr align 8 @alloc_af1cb943c84e539b189e3e216142db84)
          to label %bb14 unwind label %cleanup

panic1:                                           ; preds = %bb11
; invoke core::panicking::panic_const::panic_const_sub_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_sub_overflow17h134cc1a7f93654deE(ptr align 8 @alloc_e67a1cb0eb5611cdc3d006fe583ae2ea) #24
          to label %unreachable unwind label %cleanup

unreachable:                                      ; preds = %panic5, %panic4, %panic3, %panic2, %panic1
  unreachable

bb14:                                             ; preds = %bb13
  %_20 = load i32, ptr %_21, align 4
  %15 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %i, i32 2)
  %_31.0 = extractvalue { i32, i1 } %15, 0
  %_31.1 = extractvalue { i32, i1 } %15, 1
  br i1 %_31.1, label %panic2, label %bb15

bb15:                                             ; preds = %bb14
  %_29 = sext i32 %_31.0 to i64
; invoke <alloc::vec::Vec<T,A> as core::ops::index::Index<I>>::index
  %_27 = invoke align 4 ptr @"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h95ede15ae33a152fE"(ptr align 8 %count, i64 %_29, ptr align 8 @alloc_687943ff8a4efddeeedbbcccc7f4697f)
          to label %bb16 unwind label %cleanup

panic2:                                           ; preds = %bb14
; invoke core::panicking::panic_const::panic_const_sub_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_sub_overflow17h134cc1a7f93654deE(ptr align 8 @alloc_ea2443a7c2bfe1fe0a9a9ad821f41edc) #24
          to label %unreachable unwind label %cleanup

bb16:                                             ; preds = %bb15
  %_26 = load i32, ptr %_27, align 4
  %16 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %_20, i32 %_26)
  %_32.0 = extractvalue { i32, i1 } %16, 0
  %_32.1 = extractvalue { i32, i1 } %16, 1
  br i1 %_32.1, label %panic3, label %bb17

bb17:                                             ; preds = %bb16
  %17 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %i, i32 3)
  %_38.0 = extractvalue { i32, i1 } %17, 0
  %_38.1 = extractvalue { i32, i1 } %17, 1
  br i1 %_38.1, label %panic4, label %bb18

panic3:                                           ; preds = %bb16
; invoke core::panicking::panic_const::panic_const_add_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_746d704a6bd1e60a612d16fa3df1da61) #24
          to label %unreachable unwind label %cleanup

bb18:                                             ; preds = %bb17
  %_36 = sext i32 %_38.0 to i64
; invoke <alloc::vec::Vec<T,A> as core::ops::index::Index<I>>::index
  %_34 = invoke align 4 ptr @"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h95ede15ae33a152fE"(ptr align 8 %count, i64 %_36, ptr align 8 @alloc_b42a0850d058b893e991cd82ce90aebe)
          to label %bb19 unwind label %cleanup

panic4:                                           ; preds = %bb17
; invoke core::panicking::panic_const::panic_const_sub_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_sub_overflow17h134cc1a7f93654deE(ptr align 8 @alloc_0b76f3381324bcdef41156e566681f47) #24
          to label %unreachable unwind label %cleanup

bb19:                                             ; preds = %bb18
  %_33 = load i32, ptr %_34, align 4
  %18 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %_32.0, i32 %_33)
  %_39.0 = extractvalue { i32, i1 } %18, 0
  %_39.1 = extractvalue { i32, i1 } %18, 1
  br i1 %_39.1, label %panic5, label %bb20

bb20:                                             ; preds = %bb19
  %_42 = sext i32 %i to i64
; invoke <alloc::vec::Vec<T,A> as core::ops::index::IndexMut<I>>::index_mut
  %_40 = invoke align 4 ptr @"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17hb77dcf30b5ed4634E"(ptr align 8 %count, i64 %_42, ptr align 8 @alloc_e14f4e5232a6b2544ab73ca9418b6225)
          to label %bb21 unwind label %cleanup

panic5:                                           ; preds = %bb19
; invoke core::panicking::panic_const::panic_const_add_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_746d704a6bd1e60a612d16fa3df1da61) #24
          to label %unreachable unwind label %cleanup

bb21:                                             ; preds = %bb20
  store i32 %_39.0, ptr %_40, align 4
  br label %bb8

bb10:                                             ; No predecessors!
  unreachable

terminate:                                        ; preds = %bb24
  %19 = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer
; call core::panicking::panic_in_cleanup
  call void @_ZN4core9panicking16panic_in_cleanup17h5f6bde45d17ae243E() #21
  unreachable

bb25:                                             ; preds = %bb24
  %20 = load ptr, ptr %0, align 8
  %21 = getelementptr inbounds i8, ptr %0, i64 8
  %22 = load i32, ptr %21, align 8
  %23 = insertvalue { ptr, i32 } poison, ptr %20, 0
  %24 = insertvalue { ptr, i32 } %23, i32 %22, 1
  resume { ptr, i32 } %24
}

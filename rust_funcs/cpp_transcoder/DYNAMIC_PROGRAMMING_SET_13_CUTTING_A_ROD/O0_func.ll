define i32 @f_gold(i64 %0, i32 %n) unnamed_addr #3 personality ptr @rust_eh_personality {
start:
  %1 = alloca [16 x i8], align 8
  %_18 = alloca [8 x i8], align 4
  %iter1 = alloca [8 x i8], align 4
  %max_val = alloca [4 x i8], align 4
  %_10 = alloca [8 x i8], align 4
  %iter = alloca [12 x i8], align 4
  %_8 = alloca [12 x i8], align 4
  %_7 = alloca [12 x i8], align 4
  %val = alloca [24 x i8], align 8
  %2 = alloca [8 x i8], align 8
  %price = alloca [8 x i8], align 4
  store i64 %0, ptr %2, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %price, ptr align 8 %2, i64 8, i1 false)
  %_5 = sext i32 %n to i64
  %_6.0 = add i64 %_5, 1
  %_6.1 = icmp ult i64 %_6.0, %_5
  br i1 %_6.1, label %panic, label %bb1

bb1:                                              ; preds = %start
; call alloc::vec::from_elem
  call void @_ZN5alloc3vec9from_elem17h2fd7266c52310399E(ptr sret([24 x i8]) align 8 %val, i32 0, i64 %_6.0)
; invoke core::ops::range::RangeInclusive<Idx>::new
  invoke void @"_ZN4core3ops5range25RangeInclusive$LT$Idx$GT$3new17h3ed0d148b6e7ade4E"(ptr sret([12 x i8]) align 4 %_8, i32 1, i32 %n)
          to label %bb3 unwind label %cleanup

panic:                                            ; preds = %start
; call core::panicking::panic_const::panic_const_add_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_a53a8558f148a560e4758df3856df539) #23
  unreachable

bb24:                                             ; preds = %cleanup
; invoke core::ptr::drop_in_place<alloc::vec::Vec<i32>>
  invoke void @"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17hffb5537e155b14c7E"(ptr align 8 %val) #22
          to label %bb25 unwind label %terminate

cleanup:                                          ; preds = %bb19, %panic5, %bb17, %panic4, %panic3, %panic2, %bb14, %bb11, %bb8, %bb9, %bb5, %bb3, %bb1
  %3 = landingpad { ptr, i32 }
          cleanup
  %4 = extractvalue { ptr, i32 } %3, 0
  %5 = extractvalue { ptr, i32 } %3, 1
  store ptr %4, ptr %1, align 8
  %6 = getelementptr inbounds i8, ptr %1, i64 8
  store i32 %5, ptr %6, align 8
  br label %bb24

bb3:                                              ; preds = %bb1
; invoke <I as core::iter::traits::collect::IntoIterator>::into_iter
  invoke void @"_ZN63_$LT$I$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17h14a34788d23bb32dE"(ptr sret([12 x i8]) align 4 %_7, ptr align 4 %_8)
          to label %bb4 unwind label %cleanup

bb4:                                              ; preds = %bb3
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %iter, ptr align 4 %_7, i64 12, i1 false)
  br label %bb5

bb5:                                              ; preds = %bb21, %bb4
; invoke core::iter::range::<impl core::iter::traits::iterator::Iterator for core::ops::range::RangeInclusive<A>>::next
  %7 = invoke { i32, i32 } @"_ZN4core4iter5range110_$LT$impl$u20$core..iter..traits..iterator..Iterator$u20$for$u20$core..ops..range..RangeInclusive$LT$A$GT$$GT$4next17hb6d9c79db6dda235E"(ptr align 4 %iter)
          to label %bb6 unwind label %cleanup

bb6:                                              ; preds = %bb5
  %8 = extractvalue { i32, i32 } %7, 0
  %9 = extractvalue { i32, i32 } %7, 1
  store i32 %8, ptr %_10, align 4
  %10 = getelementptr inbounds i8, ptr %_10, i64 4
  store i32 %9, ptr %10, align 4
  %11 = load i32, ptr %_10, align 4
  %12 = getelementptr inbounds i8, ptr %_10, i64 4
  %13 = load i32, ptr %12, align 4
  %_12 = zext i32 %11 to i64
  %14 = trunc nuw i64 %_12 to i1
  br i1 %14, label %bb8, label %bb9

bb8:                                              ; preds = %bb6
  %15 = getelementptr inbounds i8, ptr %_10, i64 4
  %i = load i32, ptr %15, align 4
  store i32 -2147483648, ptr %max_val, align 4
; invoke <I as core::iter::traits::collect::IntoIterator>::into_iter
  %16 = invoke { i32, i32 } @"_ZN63_$LT$I$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17hfd40fd97dcb55c31E"(i32 0, i32 %i)
          to label %bb10 unwind label %cleanup

bb9:                                              ; preds = %bb6
  %_43 = sext i32 %n to i64
; invoke <alloc::vec::Vec<T,A> as core::ops::index::Index<I>>::index
  %_41 = invoke align 4 ptr @"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h954da740c9960ee0E"(ptr align 8 %val, i64 %_43, ptr align 8 @alloc_05fc83869af20ca4ed9dd2e29b8401e3)
          to label %bb22 unwind label %cleanup

bb22:                                             ; preds = %bb9
  %_0 = load i32, ptr %_41, align 4
; call core::ptr::drop_in_place<alloc::vec::Vec<i32>>
  call void @"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17hffb5537e155b14c7E"(ptr align 8 %val)
  ret i32 %_0

bb10:                                             ; preds = %bb8
  %_15.0 = extractvalue { i32, i32 } %16, 0
  %_15.1 = extractvalue { i32, i32 } %16, 1
  store i32 %_15.0, ptr %iter1, align 4
  %17 = getelementptr inbounds i8, ptr %iter1, i64 4
  store i32 %_15.1, ptr %17, align 4
  br label %bb11

bb11:                                             ; preds = %bb20, %bb10
; invoke core::iter::range::<impl core::iter::traits::iterator::Iterator for core::ops::range::Range<A>>::next
  %18 = invoke { i32, i32 } @"_ZN4core4iter5range101_$LT$impl$u20$core..iter..traits..iterator..Iterator$u20$for$u20$core..ops..range..Range$LT$A$GT$$GT$4next17h8aa416d95f4c8ba6E"(ptr align 4 %iter1)
          to label %bb12 unwind label %cleanup

bb12:                                             ; preds = %bb11
  %19 = extractvalue { i32, i32 } %18, 0
  %20 = extractvalue { i32, i32 } %18, 1
  store i32 %19, ptr %_18, align 4
  %21 = getelementptr inbounds i8, ptr %_18, i64 4
  store i32 %20, ptr %21, align 4
  %22 = load i32, ptr %_18, align 4
  %23 = getelementptr inbounds i8, ptr %_18, i64 4
  %24 = load i32, ptr %23, align 4
  %_20 = zext i32 %22 to i64
  %25 = trunc nuw i64 %_20 to i1
  br i1 %25, label %bb13, label %bb14

bb13:                                             ; preds = %bb12
  %26 = getelementptr inbounds i8, ptr %_18, i64 4
  %j = load i32, ptr %26, align 4
  %_23 = load i32, ptr %max_val, align 4
  %_26 = sext i32 %j to i64
  %_27 = icmp ult i64 %_26, 2
  br i1 %_27, label %bb15, label %panic2

bb14:                                             ; preds = %bb12
  %_37 = load i32, ptr %max_val, align 4
  %_40 = sext i32 %i to i64
; invoke <alloc::vec::Vec<T,A> as core::ops::index::IndexMut<I>>::index_mut
  %_38 = invoke align 4 ptr @"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h28650b6844510c6eE"(ptr align 8 %val, i64 %_40, ptr align 8 @alloc_e7434a67513c3d4c5e0938bfcd75ae5a)
          to label %bb21 unwind label %cleanup

bb21:                                             ; preds = %bb14
  store i32 %_37, ptr %_38, align 4
  br label %bb5

bb15:                                             ; preds = %bb13
  %27 = getelementptr inbounds nuw i32, ptr %price, i64 %_26
  %_25 = load i32, ptr %27, align 4
  %28 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %i, i32 %j)
  %_34.0 = extractvalue { i32, i1 } %28, 0
  %_34.1 = extractvalue { i32, i1 } %28, 1
  br i1 %_34.1, label %panic3, label %bb16

panic2:                                           ; preds = %bb13
; invoke core::panicking::panic_bounds_check
  invoke void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 %_26, i64 2, ptr align 8 @alloc_ce2a01c253e942be7efc5c0d3deb76cf) #24
          to label %unreachable unwind label %cleanup

unreachable:                                      ; preds = %panic5, %panic4, %panic3, %panic2
  unreachable

bb16:                                             ; preds = %bb15
  %29 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %_34.0, i32 1)
  %_35.0 = extractvalue { i32, i1 } %29, 0
  %_35.1 = extractvalue { i32, i1 } %29, 1
  br i1 %_35.1, label %panic4, label %bb17

panic3:                                           ; preds = %bb15
; invoke core::panicking::panic_const::panic_const_sub_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_sub_overflow17h134cc1a7f93654deE(ptr align 8 @alloc_e50c1dd5faa0894955fdf287e29b8f48) #24
          to label %unreachable unwind label %cleanup

bb17:                                             ; preds = %bb16
  %_31 = sext i32 %_35.0 to i64
; invoke <alloc::vec::Vec<T,A> as core::ops::index::Index<I>>::index
  %_29 = invoke align 4 ptr @"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h954da740c9960ee0E"(ptr align 8 %val, i64 %_31, ptr align 8 @alloc_c1b296a7a6c36c4ddc20db6e413f4188)
          to label %bb18 unwind label %cleanup

panic4:                                           ; preds = %bb16
; invoke core::panicking::panic_const::panic_const_sub_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_sub_overflow17h134cc1a7f93654deE(ptr align 8 @alloc_2640cebaeef080bafdcad815b8949910) #24
          to label %unreachable unwind label %cleanup

bb18:                                             ; preds = %bb17
  %_28 = load i32, ptr %_29, align 4
  %30 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %_25, i32 %_28)
  %_36.0 = extractvalue { i32, i1 } %30, 0
  %_36.1 = extractvalue { i32, i1 } %30, 1
  br i1 %_36.1, label %panic5, label %bb19

bb19:                                             ; preds = %bb18
; invoke core::cmp::Ord::max
  %_22 = invoke i32 @_ZN4core3cmp3Ord3max17hbfeadfbbfde79954E(i32 %_23, i32 %_36.0)
          to label %bb20 unwind label %cleanup

panic5:                                           ; preds = %bb18
; invoke core::panicking::panic_const::panic_const_add_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_ce2a01c253e942be7efc5c0d3deb76cf) #24
          to label %unreachable unwind label %cleanup

bb20:                                             ; preds = %bb19
  store i32 %_22, ptr %max_val, align 4
  br label %bb11

bb7:                                              ; No predecessors!
  unreachable

terminate:                                        ; preds = %bb24
  %31 = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer
; call core::panicking::panic_in_cleanup
  call void @_ZN4core9panicking16panic_in_cleanup17h5f6bde45d17ae243E() #21
  unreachable

bb25:                                             ; preds = %bb24
  %32 = load ptr, ptr %1, align 8
  %33 = getelementptr inbounds i8, ptr %1, i64 8
  %34 = load i32, ptr %33, align 8
  %35 = insertvalue { ptr, i32 } poison, ptr %32, 0
  %36 = insertvalue { ptr, i32 } %35, i32 %34, 1
  resume { ptr, i32 } %36
}

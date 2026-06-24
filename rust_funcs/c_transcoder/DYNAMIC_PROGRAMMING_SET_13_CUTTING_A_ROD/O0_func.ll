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
  call void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_720932816e2fb171e26d8c12f25f6f75) #23
  unreachable

bb23:                                             ; preds = %cleanup
; invoke core::ptr::drop_in_place<alloc::vec::Vec<i32>>
  invoke void @"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17hffb5537e155b14c7E"(ptr align 8 %val) #22
          to label %bb24 unwind label %terminate

cleanup:                                          ; preds = %bb18, %bb17, %panic4, %panic3, %panic2, %bb14, %bb11, %bb8, %bb9, %bb5, %bb3, %bb1
  %3 = landingpad { ptr, i32 }
          cleanup
  %4 = extractvalue { ptr, i32 } %3, 0
  %5 = extractvalue { ptr, i32 } %3, 1
  store ptr %4, ptr %1, align 8
  %6 = getelementptr inbounds i8, ptr %1, i64 8
  store i32 %5, ptr %6, align 8
  br label %bb23

bb3:                                              ; preds = %bb1
; invoke <I as core::iter::traits::collect::IntoIterator>::into_iter
  invoke void @"_ZN63_$LT$I$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17h14a34788d23bb32dE"(ptr sret([12 x i8]) align 4 %_7, ptr align 4 %_8)
          to label %bb4 unwind label %cleanup

bb4:                                              ; preds = %bb3
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %iter, ptr align 4 %_7, i64 12, i1 false)
  br label %bb5

bb5:                                              ; preds = %bb20, %bb4
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
  store float 0xC7EFFFFFE0000000, ptr %max_val, align 4
; invoke <I as core::iter::traits::collect::IntoIterator>::into_iter
  %16 = invoke { i32, i32 } @"_ZN63_$LT$I$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17hfd40fd97dcb55c31E"(i32 0, i32 %i)
          to label %bb10 unwind label %cleanup

bb9:                                              ; preds = %bb6
  %_44 = sext i32 %n to i64
; invoke <alloc::vec::Vec<T,A> as core::ops::index::Index<I>>::index
  %_42 = invoke align 4 ptr @"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h954da740c9960ee0E"(ptr align 8 %val, i64 %_44, ptr align 8 @alloc_5fb15991ac085d5c660915e873f32ce1)
          to label %bb21 unwind label %cleanup

bb21:                                             ; preds = %bb9
  %_0 = load i32, ptr %_42, align 4
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

bb11:                                             ; preds = %bb19, %bb10
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
  %_23 = load float, ptr %max_val, align 4
  %_27 = sext i32 %j to i64
  %_28 = icmp ult i64 %_27, 2
  br i1 %_28, label %bb15, label %panic2

bb14:                                             ; preds = %bb12
  %_38 = load float, ptr %max_val, align 4
  %_41 = sext i32 %i to i64
; invoke <alloc::vec::Vec<T,A> as core::ops::index::IndexMut<I>>::index_mut
  %_39 = invoke align 4 ptr @"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h28650b6844510c6eE"(ptr align 8 %val, i64 %_41, ptr align 8 @alloc_ab422435833e3c1f88d176e2c851b613)
          to label %bb20 unwind label %cleanup

bb20:                                             ; preds = %bb14
  %27 = call i32 @llvm.fptosi.sat.i32.f32(float %_38)
  store i32 %27, ptr %_39, align 4
  br label %bb5

bb15:                                             ; preds = %bb13
  %28 = getelementptr inbounds nuw i32, ptr %price, i64 %_27
  %_26 = load i32, ptr %28, align 4
  %_25 = sitofp i32 %_26 to float
  %29 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %i, i32 %j)
  %_36.0 = extractvalue { i32, i1 } %29, 0
  %_36.1 = extractvalue { i32, i1 } %29, 1
  br i1 %_36.1, label %panic3, label %bb16

panic2:                                           ; preds = %bb13
; invoke core::panicking::panic_bounds_check
  invoke void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 %_27, i64 2, ptr align 8 @alloc_d50d65c1b59be38e4d2772219ca63592) #24
          to label %unreachable unwind label %cleanup

unreachable:                                      ; preds = %panic4, %panic3, %panic2
  unreachable

bb16:                                             ; preds = %bb15
  %30 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %_36.0, i32 1)
  %_37.0 = extractvalue { i32, i1 } %30, 0
  %_37.1 = extractvalue { i32, i1 } %30, 1
  br i1 %_37.1, label %panic4, label %bb17

panic3:                                           ; preds = %bb15
; invoke core::panicking::panic_const::panic_const_sub_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_sub_overflow17h134cc1a7f93654deE(ptr align 8 @alloc_bc20fc7c0870aba6c2cb2302ddb2370b) #24
          to label %unreachable unwind label %cleanup

bb17:                                             ; preds = %bb16
  %_33 = sext i32 %_37.0 to i64
; invoke <alloc::vec::Vec<T,A> as core::ops::index::Index<I>>::index
  %_31 = invoke align 4 ptr @"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h954da740c9960ee0E"(ptr align 8 %val, i64 %_33, ptr align 8 @alloc_307a07f8142ee9d5c77acc0dc7868fdf)
          to label %bb18 unwind label %cleanup

panic4:                                           ; preds = %bb16
; invoke core::panicking::panic_const::panic_const_sub_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_sub_overflow17h134cc1a7f93654deE(ptr align 8 @alloc_3d41dd1159cd44d96aa6a4ab9f57d7f1) #24
          to label %unreachable unwind label %cleanup

bb18:                                             ; preds = %bb17
  %_30 = load i32, ptr %_31, align 4
  %_29 = sitofp i32 %_30 to float
  %_24 = fadd float %_25, %_29
; invoke core::f32::<impl f32>::max
  %_22 = invoke float @"_ZN4core3f3221_$LT$impl$u20$f32$GT$3max17h2ab74da56f96f8ebE"(float %_23, float %_24)
          to label %bb19 unwind label %cleanup

bb19:                                             ; preds = %bb18
  store float %_22, ptr %max_val, align 4
  br label %bb11

bb7:                                              ; No predecessors!
  unreachable

terminate:                                        ; preds = %bb23
  %31 = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer
; call core::panicking::panic_in_cleanup
  call void @_ZN4core9panicking16panic_in_cleanup17h5f6bde45d17ae243E() #21
  unreachable

bb24:                                             ; preds = %bb23
  %32 = load ptr, ptr %1, align 8
  %33 = getelementptr inbounds i8, ptr %1, i64 8
  %34 = load i32, ptr %33, align 8
  %35 = insertvalue { ptr, i32 } poison, ptr %32, 0
  %36 = insertvalue { ptr, i32 } %35, i32 %34, 1
  resume { ptr, i32 } %36
}

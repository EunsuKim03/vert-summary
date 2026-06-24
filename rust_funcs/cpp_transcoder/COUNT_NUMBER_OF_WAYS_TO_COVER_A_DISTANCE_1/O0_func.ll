define i32 @f_gold(i32 %dist) unnamed_addr #3 {
start:
  %_6 = alloca [8 x i8], align 4
  %iter = alloca [12 x i8], align 4
  %_4 = alloca [12 x i8], align 4
  %_3 = alloca [12 x i8], align 4
  %count = alloca [16 x i8], align 4
  %0 = getelementptr inbounds nuw i32, ptr %count, i64 0
  store i32 1, ptr %0, align 4
  %1 = getelementptr inbounds nuw i32, ptr %count, i64 1
  store i32 1, ptr %1, align 4
  %2 = getelementptr inbounds nuw i32, ptr %count, i64 2
  store i32 2, ptr %2, align 4
  %3 = getelementptr inbounds nuw i32, ptr %count, i64 3
  store i32 0, ptr %3, align 4
; call core::ops::range::RangeInclusive<Idx>::new
  call void @"_ZN4core3ops5range25RangeInclusive$LT$Idx$GT$3new17hbd91815ba4cde80eE"(ptr sret([12 x i8]) align 4 %_4, i32 3, i32 %dist) #17
; call <I as core::iter::traits::collect::IntoIterator>::into_iter
  call void @"_ZN63_$LT$I$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17h99b0b160f30bd282E"(ptr sret([12 x i8]) align 4 %_3, ptr align 4 %_4) #17
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %iter, ptr align 4 %_3, i64 12, i1 false)
  br label %bb3

bb3:                                              ; preds = %bb16, %start
; call core::iter::range::<impl core::iter::traits::iterator::Iterator for core::ops::range::RangeInclusive<A>>::next
  %4 = call { i32, i32 } @"_ZN4core4iter5range110_$LT$impl$u20$core..iter..traits..iterator..Iterator$u20$for$u20$core..ops..range..RangeInclusive$LT$A$GT$$GT$4next17h96768f2e1f4b250eE"(ptr align 4 %iter) #17
  %5 = extractvalue { i32, i32 } %4, 0
  %6 = extractvalue { i32, i32 } %4, 1
  store i32 %5, ptr %_6, align 4
  %7 = getelementptr inbounds i8, ptr %_6, i64 4
  store i32 %6, ptr %7, align 4
  %8 = load i32, ptr %_6, align 4
  %9 = getelementptr inbounds i8, ptr %_6, i64 4
  %10 = load i32, ptr %9, align 4
  %_8 = zext i32 %8 to i64
  %11 = trunc nuw i64 %_8 to i1
  br i1 %11, label %bb6, label %bb7

bb6:                                              ; preds = %bb3
  %12 = getelementptr inbounds i8, ptr %_6, i64 4
  %i = load i32, ptr %12, align 4
  %13 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %i, i32 1)
  %_14.0 = extractvalue { i32, i1 } %13, 0
  %_14.1 = extractvalue { i32, i1 } %13, 1
  br i1 %_14.1, label %panic1, label %bb8

bb7:                                              ; preds = %bb3
  %_30 = sext i32 %dist to i64
  %_31 = icmp ult i64 %_30, 4
  br i1 %_31, label %bb17, label %panic

bb17:                                             ; preds = %bb7
  %14 = getelementptr inbounds nuw i32, ptr %count, i64 %_30
  %_0 = load i32, ptr %14, align 4
  ret i32 %_0

panic:                                            ; preds = %bb7
; call core::panicking::panic_bounds_check
  call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 %_30, i64 4, ptr align 8 @alloc_a1532442f12c3cdc3a36a61fe394730e) #22
  unreachable

bb8:                                              ; preds = %bb6
  %_12 = sext i32 %_14.0 to i64
  %_15 = icmp ult i64 %_12, 4
  br i1 %_15, label %bb9, label %panic2

panic1:                                           ; preds = %bb6
; call core::panicking::panic_const::panic_const_sub_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_sub_overflow17h134cc1a7f93654deE(ptr align 8 @alloc_1eb3416dd530b27259c145bbadcb9598) #22
  unreachable

bb9:                                              ; preds = %bb8
  %15 = getelementptr inbounds nuw i32, ptr %count, i64 %_12
  %_11 = load i32, ptr %15, align 4
  %16 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %i, i32 2)
  %_19.0 = extractvalue { i32, i1 } %16, 0
  %_19.1 = extractvalue { i32, i1 } %16, 1
  br i1 %_19.1, label %panic3, label %bb10

panic2:                                           ; preds = %bb8
; call core::panicking::panic_bounds_check
  call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 %_12, i64 4, ptr align 8 @alloc_ab9634c9265024aa97d2f12978cb09a8) #22
  unreachable

bb10:                                             ; preds = %bb9
  %_17 = sext i32 %_19.0 to i64
  %_20 = icmp ult i64 %_17, 4
  br i1 %_20, label %bb11, label %panic4

panic3:                                           ; preds = %bb9
; call core::panicking::panic_const::panic_const_sub_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_sub_overflow17h134cc1a7f93654deE(ptr align 8 @alloc_b3ce89b6bea54c37a01166346a8c7341) #22
  unreachable

bb11:                                             ; preds = %bb10
  %17 = getelementptr inbounds nuw i32, ptr %count, i64 %_17
  %_16 = load i32, ptr %17, align 4
  %18 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %_11, i32 %_16)
  %_21.0 = extractvalue { i32, i1 } %18, 0
  %_21.1 = extractvalue { i32, i1 } %18, 1
  br i1 %_21.1, label %panic5, label %bb12

panic4:                                           ; preds = %bb10
; call core::panicking::panic_bounds_check
  call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 %_17, i64 4, ptr align 8 @alloc_b6dcb6139c8e1176cc907b4b7a2a7adf) #22
  unreachable

bb12:                                             ; preds = %bb11
  %19 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %i, i32 3)
  %_25.0 = extractvalue { i32, i1 } %19, 0
  %_25.1 = extractvalue { i32, i1 } %19, 1
  br i1 %_25.1, label %panic6, label %bb13

panic5:                                           ; preds = %bb11
; call core::panicking::panic_const::panic_const_add_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_ab9634c9265024aa97d2f12978cb09a8) #22
  unreachable

bb13:                                             ; preds = %bb12
  %_23 = sext i32 %_25.0 to i64
  %_26 = icmp ult i64 %_23, 4
  br i1 %_26, label %bb14, label %panic7

panic6:                                           ; preds = %bb12
; call core::panicking::panic_const::panic_const_sub_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_sub_overflow17h134cc1a7f93654deE(ptr align 8 @alloc_c3143119d3ffb74b2569f1bea950eddb) #22
  unreachable

bb14:                                             ; preds = %bb13
  %20 = getelementptr inbounds nuw i32, ptr %count, i64 %_23
  %_22 = load i32, ptr %20, align 4
  %21 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %_21.0, i32 %_22)
  %_27.0 = extractvalue { i32, i1 } %21, 0
  %_27.1 = extractvalue { i32, i1 } %21, 1
  br i1 %_27.1, label %panic8, label %bb15

panic7:                                           ; preds = %bb13
; call core::panicking::panic_bounds_check
  call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 %_23, i64 4, ptr align 8 @alloc_aa93442ca41c8b0f86424bc53081ea29) #22
  unreachable

bb15:                                             ; preds = %bb14
  %_28 = sext i32 %i to i64
  %_29 = icmp ult i64 %_28, 4
  br i1 %_29, label %bb16, label %panic9

panic8:                                           ; preds = %bb14
; call core::panicking::panic_const::panic_const_add_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_ab9634c9265024aa97d2f12978cb09a8) #22
  unreachable

bb16:                                             ; preds = %bb15
  %22 = getelementptr inbounds nuw i32, ptr %count, i64 %_28
  store i32 %_27.0, ptr %22, align 4
  br label %bb3

panic9:                                           ; preds = %bb15
; call core::panicking::panic_bounds_check
  call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 %_28, i64 4, ptr align 8 @alloc_c9fbce978d254026e73af33fe1e36907) #22
  unreachable

bb5:                                              ; No predecessors!
  unreachable
}
